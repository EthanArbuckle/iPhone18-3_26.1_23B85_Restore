void sub_1001FC6D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001FC4A4();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(a3))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = sub_1001FC960();
  v10 = v9;
  NWProtocolFramer.Instance.writeOutput(data:)();
  sub_1000072CC(v8, v10);
  NWProtocolFramer.Instance.writeOutputNoCopy(length:)(a3);
  if (v11)
  {
    v12 = static os_log_type_t.error.getter();
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v13._object = 0x800000010030B7E0;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    v20 = v11;
    sub_1001A6C04(&unk_1003B6170);
    _print_unlocked<A, B>(_:_:)();
    v15 = v21;
    v14 = v22;
    static GKLog.match.getter();
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      v19 = sub_100005C3C(v15, v14, &v21);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v16, v12, "Nearby - %s", v17, 0xCu);
      sub_100005BE0(v18);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001FC960()
{
  v4 = Data.init(bytes:count:)();
  v0 = Data.init(bytes:count:)();
  v2 = v1;
  Data.append(_:)();
  sub_1000072CC(v0, v2);
  return v4;
}

uint64_t sub_1001FC9FC(uint64_t a1)
{
  __chkstk_darwin(a1);
  NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)();
  return 8;
}

uint64_t sub_1001FCBA8(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B5808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1001FCC10(uint64_t *result, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (result)
  {
    if (a2 - result < v4)
    {
      return 0;
    }

    v6 = *result;
LABEL_9:
    *v5 = v6;
    *(v5 + 8) = 0;
    return v4;
  }

  v6 = 0;
  if (v4 <= 0)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1001FCC54()
{
  result = qword_1003B66C8;
  if (!qword_1003B66C8)
  {
    type metadata accessor for PeerDiscoveryFramer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B66C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeerDiscoveryMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PeerDiscoveryMessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001FCE10()
{
  result = qword_1003B66D0;
  if (!qword_1003B66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B66D0);
  }

  return result;
}

BOOL sub_1001FCE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1001FCF50()
{
  result = sub_10024A08C(&off_10036AAD0);
  qword_1003B66D8 = result;
  return result;
}

id NetworkRequestEligibiltyChecker.init(hasAcknowledgedLatestGDPR:alwaysAllowedBagKeysObject:isAppDistributorThirdParty:isInDebugMode:isPreconnecting:)(char a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_1001FD144(a2, v16);
  if (v17)
  {
    sub_1001A6C04(&unk_1003B6BD0);
    if (swift_dynamicCast())
    {
      v11 = sub_1001D4A04(v14);
      v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_hasAcknowledgedLatestGDPR] = a1 & 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001FCBA8(v16);
  }

  v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_hasAcknowledgedLatestGDPR] = a1 & 1;
  if (qword_1003B54D8 != -1)
  {
    swift_once();
  }

LABEL_8:
  *&v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_alwaysAllowedBagKeys] = v11;
  v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_isAppDistributorThirdParty] = a3 & 1;
  v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_isInDebugMode] = a4 & 1;
  v5[OBJC_IVAR___GKNetworkRequestEligibilityChecker_isPreconnecting] = a5 & 1;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for NetworkRequestEligibiltyChecker();
  v12 = objc_msgSendSuper2(&v15, "init");
  sub_1001FCBA8(a2);
  return v12;
}

uint64_t sub_1001FD144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id NetworkRequestEligibiltyChecker.verifyEligibility(bagKey:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___GKNetworkRequestEligibilityChecker_isPreconnecting))
  {
    return 0;
  }

  v6 = *(v2 + OBJC_IVAR___GKNetworkRequestEligibilityChecker_alwaysAllowedBagKeys);
  if (!sub_1001FCE64(a1, a2, v6) && (*(v2 + OBJC_IVAR___GKNetworkRequestEligibilityChecker_hasAcknowledgedLatestGDPR) & 1) == 0)
  {
    return [objc_opt_self() gkPrivacyNoticeNotAcceptedError];
  }

  if (*(v2 + OBJC_IVAR___GKNetworkRequestEligibilityChecker_isAppDistributorThirdParty) == 1)
  {
    v7 = objc_opt_self();
    v8 = Dictionary.init(dictionaryLiteral:)();
    v9 = 37;
  }

  else
  {
    if (sub_1001FCE64(a1, a2, v6))
    {
      v10 = a1 == 0x692D7070612D6B67 && a2 == 0xEB0000000074696ELL;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    if (*(v2 + OBJC_IVAR___GKNetworkRequestEligibilityChecker_isInDebugMode) != 1)
    {
      return 0;
    }

    v7 = objc_opt_self();
    v8 = Dictionary.init(dictionaryLiteral:)();
    v9 = 38;
  }

  return sub_1001FD52C(v9, v8, v7);
}

id NetworkRequestEligibiltyChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkRequestEligibiltyChecker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FD52C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 userErrorForCode:a1 userInfo:isa];

  return v6;
}

uint64_t sub_1001FD5B8()
{
  sub_1001A6C04(&qword_1003B6DB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = sub_10020D220();
  *(v0 + 32) = &type metadata for EntityCacheSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_1001FD620()
{
  sub_1001A6C04(&qword_1003B6BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = type metadata accessor for EntityCacheSchemaV1.CachedEntity();
  v2 = sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1001FD6DC()
{
  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B50, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006A48();
  sub_10020D0A4(v1, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1001FD820()
{
  swift_getKeyPath();
  sub_10020D2D4();
  sub_10020D0A4(v0, v1);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001FD8E0()
{
  swift_getKeyPath();
  sub_10020D2D4();
  sub_10020D0A4(v0, v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001FD980()
{
  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B50, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  sub_10020AD64();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1001FDA88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1001D09EC(*a1, v2);
  return sub_1001FDACC(v1, v2);
}

uint64_t sub_1001FDACC(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B50, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000072CC(a1, a2);
}

uint64_t sub_1001FDBB0()
{
  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  sub_10020ADD8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001FDC80()
{
  swift_getKeyPath();
  sub_10020D0A4(&qword_1003B6B50, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006A48();
  sub_10020D0A4(v0, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  sub_10020D350();
  sub_10020D0A4(v1, v2);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_1001FDD90(uint64_t a1)
{
  type metadata accessor for Date();
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_10020D50C();
  return sub_1001FDE70(v4);
}

uint64_t sub_1001FDE70(uint64_t a1)
{
  swift_getKeyPath();
  sub_10020D2D4();
  sub_10020D0A4(v2, v3);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  type metadata accessor for Date();
  sub_100005780();
  return (*(v4 + 8))(a1);
}

uint64_t sub_1001FDF50()
{
  swift_getKeyPath();
  sub_10020D2D4();
  sub_10020D0A4(v0, v1);
  sub_10020D350();
  sub_10020D0A4(v2, v3);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001FE004()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(78);
  v4._object = 0x800000010030BDB0;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_1001FD6C4();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A6469202CLL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_1001FD6D0();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x632065747962202CLL;
  v8._object = 0xEE00203A746E756FLL;
  String.append(_:)(v8);
  v9 = sub_1001FD980();
  v11 = v10;
  v12 = Data.count.getter();
  sub_1000072CC(v9, v11);
  v21[1] = v12;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x646568636163202CLL;
  v14._object = 0xED0000203A746120;
  String.append(_:)(v14);
  sub_1001FDC68();
  sub_10020D0A4(&qword_1003B6B70, &type metadata accessor for Date);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16 = *(v1 + 8);
  v16(v3, v0);
  v17._countAndFlagsBits = 0x657269707865202CLL;
  v17._object = 0xED0000203A746120;
  String.append(_:)(v17);
  sub_1001FDC74();
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v16(v3, v0);
  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v22;
}

BOOL sub_1001FE2CC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  static Date.now.getter();
  sub_1001FDC74();
  sub_10020D0A4(&qword_1003B6CF8, &type metadata accessor for Date);
  v7 = dispatch thunk of static Comparable.< infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t *sub_1001FE428(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t, uint64_t), unint64_t a4, uint64_t a5, unint64_t a6, char *a7, char *a8)
{
  v9 = v8;
  v28 = a8;
  v29 = a7;
  v30 = a5;
  v31 = a6;
  v25 = a3;
  v13 = *v8;
  v14 = type metadata accessor for Date();
  v26 = *(v14 - 8);
  __chkstk_darwin(v14);
  v27 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_1001A6C04(&qword_1003B6D60);
  v16 = sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  v32 = v13;
  v33 = v13;
  v34 = v16;
  v35 = v16;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100005668(v9 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  sub_100006454(v9 + 2, v9[5]);
  swift_getKeyPath();
  v32 = a1;
  v33 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v9 + 2, v9[5]);
  swift_getKeyPath();
  v32 = v25;
  v33 = a4;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v9 + 2, v9[5]);
  swift_getKeyPath();
  v18 = v30;
  v17 = v31;
  v32 = v30;
  v33 = v31;
  sub_1001D09EC(v30, v31);
  sub_10020ADD8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1000072CC(v18, v17);
  v20 = v26;
  v19 = v27;
  v25 = *(v26 + 16);
  v25(v27, v29, v14);
  sub_100006454(v9 + 2, v9[5]);
  swift_getKeyPath();
  v24 = sub_10020D0A4(&qword_1003B6B80, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21 = *(v20 + 8);
  v21(v19, v14);
  v22 = v28;
  v25(v19, v28, v14);
  sub_100006454(v9 + 2, v9[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1000072CC(v30, v31);
  v21(v22, v14);
  v21(v29, v14);
  v21(v19, v14);
  return v9;
}

uint64_t sub_1001FE8B8(__int128 *a1)
{
  swift_beginAccess();
  sub_100005BE0(v1 + 16);
  sub_10005671C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1001FE910()
{
  v20 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v20 - 8);
  v1 = v0;
  __chkstk_darwin(v20);
  v18 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A6C04(&qword_1003B6BA0);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002C3970;
  v19 = v4;
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = 0u;
  v25 = 0u;
  sub_1001A6C04(&qword_1003B6BA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002C3290;
  sub_1001A6C04(&qword_1003B6BB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002C3960;
  *(v7 + 32) = swift_getKeyPath();
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002C51A0;
  *(v8 + 32) = swift_getKeyPath();
  *(v8 + 40) = swift_getKeyPath();
  *(v6 + 40) = v8;
  v9 = sub_1001A6C04(&qword_1003B6BB8);
  swift_allocObject();
  v10 = v18;
  v11 = Schema.Index.init(_:)();
  *(&v22 + 1) = v9;
  v23 = sub_1001AC7E4(&qword_1003B6BC0, &qword_1003B6BB8);
  *&v21 = v11;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DF388();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 >= *(v12 + 24) >> 1)
  {
    sub_1001DF388();
    v13 = v16;
  }

  *(v13 + 16) = v14 + 1;
  (*(v1 + 32))(v13 + v19 + v14 * v3, v10, v20);
  *&v21 = v5;
  sub_1001E7284(v13);
  return v21;
}

uint64_t *sub_1001FEDA8(__int128 *a1)
{
  v1[5] = sub_1001A6C04(&qword_1003B6D60);
  sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100005668(v1 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100005BE0((v1 + 2));
  sub_10005671C(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1001FEEE4()
{
  sub_100005BE0(v0 + 16);
  v1 = OBJC_IVAR____TtCV14GameDaemonCoreP33_1FC4D10440B9DF42E57D244557C7E23B19EntityCacheSchemaV112CachedEntity___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for EntityCacheSchemaV1.CachedEntity()
{
  result = qword_1003B6768;
  if (!qword_1003B6768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FEFDC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001FF0D0()
{
  sub_10020D564();
  _StringGuts.grow(_:)(31);
  v1._countAndFlagsBits = 0x4564656863746546;
  v1._object = 0xEE0020797469746ELL;
  String.append(_:)(v1);
  sub_1001A6C04(&qword_1003B6C30);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x697078457369202CLL;
  v2._object = 0xED0000203A646572;
  String.append(_:)(v2);
  if (*(v0 + OBJC_IVAR___GKFetchedEntity_isExpired))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___GKFetchedEntity_isExpired))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  return v7;
}

id sub_1001FF1E8(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___GKFetchedEntity_entity] = a1;
  v2[OBJC_IVAR___GKFetchedEntity_isExpired] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_1001FF2E4()
{
  sub_1001A6C04(&unk_1003B62A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  *(v0 + 32) = sub_1001A7B44(0, &qword_1003B6D78);
  v1 = [objc_opt_self() secureCodedJsonTypes];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1001B2F38(*(v2 + 48) + 40 * (v9 | (v7 << 6)), &v19);
    sub_1001A6C04(&unk_1003B6D80);
    if ((swift_dynamicCast() & 1) != 0 && v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF450(0, v17[2] + 1, 1, v17);
        v17 = v13;
      }

      v11 = v17[2];
      v10 = v17[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v15 = v17[2];
        v16 = v11 + 1;
        sub_1001DF450(v10 > 1, v11 + 1, 1, v17);
        v11 = v15;
        v12 = v16;
        v17 = v14;
      }

      v17[2] = v12;
      v17[v11 + 4] = v18;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      *&v19 = v0;
      sub_1001E7380(v17);
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1001FF544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = type metadata accessor for Logger();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for URL();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = __chkstk_darwin(v11);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v64 = type metadata accessor for ModelConfiguration();
  v16 = *(v64 - 8);
  v17 = __chkstk_darwin(v64);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = &v54 - v19;
  if (a5)
  {

    ModelConfiguration.init(isStoredInMemoryOnly:)();
  }

  else
  {
    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() defaultManager];
    v24 = sub_10023DBD4(a1, a2, v21, v22, v23, v20);

    if (!v24)
    {
      sub_10020C524();
      swift_allocError();
      *v52 = 0x8000000000000000;
      return swift_willThrow();
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v60;
    v26 = v61;
    (*(v60 + 16))(v59, v15, v61);
    static ModelConfiguration.CloudKitDatabase.none.getter();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v25 + 8))(v15, v26);
  }

  type metadata accessor for ModelContainer();
  sub_1001A6C04(&qword_1003B6BC8);
  v27 = swift_allocObject();
  v62 = xmmword_1002C33A0;
  *(v27 + 16) = xmmword_1002C33A0;
  v28 = type metadata accessor for EntityCacheSchemaV1.CachedEntity();
  v29 = sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  sub_10020C578();
  sub_1001A6C04(&qword_1003B6C68);
  v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v62;
  v32 = *(v16 + 16);
  v33 = v31 + v30;
  v34 = v64;
  v32(v33, v65, v64);
  v35 = v63;
  ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v35)
  {
    return (*(v16 + 8))(v65, v34);
  }

  type metadata accessor for EntityCache();
  swift_allocObject();

  v63 = sub_100203014(v37);
  v38 = v58;
  static GKLog.cache.getter();
  v39 = v55;
  v32(v55, v65, v34);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *&v62 = swift_slowAlloc();
    v66 = v62;
    *v42 = 136315394;
    *(v42 + 4) = sub_100005C3C(0xD000000000000020, 0x800000010030C040, &v66);
    *(v42 + 12) = 2080;
    v43 = v59;
    v54 = v40;
    ModelConfiguration.url.getter();
    v44 = URL.absoluteString.getter();
    v46 = v45;
    (*(v60 + 8))(v43, v61);
    v47 = *(v16 + 8);
    v48 = v39;
    v49 = v64;
    v47(v48, v64);
    v50 = sub_100005C3C(v44, v46, &v66);

    *(v42 + 14) = v50;
    v51 = v54;
    _os_log_impl(&_mh_execute_header, v54, v41, "%s initialized at: %s", v42, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v58, v57);
    v47(v65, v49);
  }

  else
  {

    v53 = *(v16 + 8);
    v53(v39, v34);
    (*(v56 + 8))(v38, v57);
    v53(v65, v34);
  }

  return v63;
}

uint64_t sub_1001FFC7C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.cache.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005C3C(0xD000000000000020, 0x800000010030C040, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s is deinitializing", v8, 0xCu);
    sub_100005BE0(v9);
  }

  (*(v3 + 8))(v5, v2);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1001FFE2C()
{
  v0 = sub_1001FFC7C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1001FFE5C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B6C78);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for EntityCache();
  sub_10020D0A4(&qword_1003B6B40, type metadata accessor for EntityCache);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001FFFBC, v6, v5);
}

uint64_t sub_1001FFFBC()
{
  v34 = v0;
  v1 = v0[4];
  if (v1)
  {
    static GKLog.cache.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    if (v4)
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = sub_100005808();
      v33 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100005C3C(v8, v1, &v33);
      _os_log_impl(&_mh_execute_header, v2, v3, "Deleting entities for bagKey: %s", v9, 0xCu);
      sub_100005BE0(v10);
      sub_1000043D8();
      sub_1000047A4();
    }

    (*(v7 + 8))(v5, v6);
    v11 = v0[10];
    v12 = v0[3];
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v1;
    v0[2] = type metadata accessor for EntityCacheSchemaV1.CachedEntity();
    Predicate.init(_:)();
    v14 = sub_1001A6C04(&qword_1003B6C80);
    sub_1001A9674(v11, 0, 1, v14);
  }

  else
  {
    static GKLog.cache.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *swift_slowAlloc() = 0;
      sub_10020D470();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_1000043D8();
    }

    v22 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];

    (*(v24 + 8))(v23, v25);
    v26 = sub_1001A6C04(&qword_1003B6C80);
    sub_1001A9674(v22, 1, 1, v26);
  }

  sub_100005908();
  sub_10020D0A4(v27, v28);
  ModelActor.modelContext.getter();
  type metadata accessor for EntityCacheSchemaV1.CachedEntity();
  sub_10020D2D4();
  sub_10020D0A4(v29, v30);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  sub_1001B2DDC(v0[10], &qword_1003B6C78);

  sub_1000046F8();

  return v32();
}

uint64_t sub_100200394@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_1001A6C04(&qword_1003B6CA0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_1001A6C04(&qword_1003B6CA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_1001A6C04(&qword_1003B6CB0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_1001AC7E4(&qword_1003B6CC8, &qword_1003B6CA8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_1001A6C04(&qword_1003B6CB8);
  a3[4] = sub_10020CA84();
  sub_100005668(a3);
  sub_1001AC7E4(&qword_1003B6CD0, &qword_1003B6CB0);
  sub_1001AC7E4(&qword_1003B6CD8, &qword_1003B6CA0);
  v16 = v20;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100200720(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100200800;

  return sub_1001FFE5C(a1, v6);
}

uint64_t sub_100200800()
{
  sub_1001AFA50();
  sub_100005B68();
  sub_100004410();
  *v3 = v2;
  *v3 = *v1;

  sub_1000062BC();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v4 = sub_10020D2EC();
    v5(v4, v2);
  }

  else
  {
    v6 = sub_10020D2EC();
    v7(v6, 0);
  }

  _Block_release(v2[3]);
  sub_10000629C();

  return v8();
}

uint64_t sub_100200970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  sub_1001A6C04(&qword_1003B6C78);
  v5[21] = swift_task_alloc();
  v6 = sub_1001A6C04(&qword_1003B6D68);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for EntityCache();
  sub_10020D0A4(&qword_1003B6B40, type metadata accessor for EntityCache);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100200AD4, v8, v7);
}

uint64_t sub_100200AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  v60 = *(v16 + 200);
  v17 = *(v16 + 168);
  v18 = *(v16 + 152);
  v19 = *(v16 + 144);
  v61 = *(v16 + 128);
  v20 = sub_1001A6C04(&qword_1003B6C80);
  sub_1001A9674(v17, 1, 1, v20);
  v21 = type metadata accessor for EntityCacheSchemaV1.CachedEntity();
  sub_10020D2D4();
  sub_10020D0A4(v22, v23);
  FetchDescriptor.init(predicate:sortBy:)();
  v24 = swift_task_alloc();
  *(v24 + 16) = v61;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v16 + 112) = v21;
  *&v61 = v24;
  Predicate.init(_:)();
  sub_1001A9674(v17, 0, 1, v20);
  FetchDescriptor.predicate.setter();
  FetchDescriptor.fetchLimit.setter();
  sub_100005908();
  sub_10020D0A4(v25, v26);
  ModelActor.modelContext.getter();
  sub_10020D558();
  v27 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (!sub_1001E6E2C(v27))
  {
    (*(*(v16 + 184) + 8))(*(v16 + 192), *(v16 + 176));

LABEL_11:

    sub_10020D30C();
    sub_1001E41B8();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, v60, v61, *(&v61 + 1), a13, a14, a15, a16);
  }

  sub_1001D13A0(0, (v27 & 0xC000000000000001) == 0, v27);
  if ((v27 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  sub_1001A7B44(0, &qword_1003B6D70);
  if (qword_1003B54E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1001FD980();
  v30 = v29;
  sub_10020D558();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  sub_1000072CC(v28, v30);
  if (*(v16 + 72))
  {
    sub_100005C2C((v16 + 48), (v16 + 16));
    sub_1001A7AE8(v16 + 16, v16 + 80);
    sub_1001A6C04(&qword_1003B6C30);
    if (swift_dynamicCast())
    {
      v52 = *(v16 + 120);
      v53 = sub_1001FE2CC();
      v54 = objc_allocWithZone(type metadata accessor for FetchedEntity());
      sub_1001FF1E8(v52, v53);

      sub_100005BE0(v16 + 16);
      v55 = sub_100005540();
      v56(v55);
      goto LABEL_11;
    }

    sub_10020C524();
    v57 = sub_10020D5C8();
    *v59 = 0x8000000000000010;
    swift_willThrow();
    sub_100005BE0(v16 + 16);
  }

  else
  {
    sub_1001B2DDC(v16 + 48, &qword_1003B5808);
    sub_10020C524();
    v57 = sub_10020D5C8();
    *v58 = 0x8000000000000008;
    swift_willThrow();
  }

  v32 = *(v16 + 184);
  v31 = *(v16 + 192);
  v33 = *(v16 + 176);
  sub_10020C524();
  sub_10020D5C8();
  *v34 = v57;
  swift_willThrow();

  (*(v32 + 8))(v31, v33);

  sub_1000046F8();
  sub_1001E41B8();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v60, v61, *(&v61 + 1), a13, a14, a15, a16);
}

uint64_t sub_100200FD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_1001A6C04(&qword_1003B6CA0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_1001A6C04(&qword_1003B6CA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_1001A6C04(&qword_1003B6CB0);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_1001A6C04(&qword_1003B6CB8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = __chkstk_darwin(v16);
  v37 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v35 = *a1;
  v36 = v33 - v20;
  sub_1001AC7E4(&qword_1003B6CC8, &qword_1003B6CA8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  static PredicateExpressions.build_Arg<A>(_:)();
  v39 = sub_1001AC7E4(&qword_1003B6CD0, &qword_1003B6CB0);
  sub_1001AC7E4(&qword_1003B6CD8, &qword_1003B6CA0);
  v22 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = v37;
  v26 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_1001A6C04(&qword_1003B6CC0);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_10020CA00();
  sub_100005668(v28);
  sub_1001AC7E4(&qword_1003B6CE0, &qword_1003B6CB8);
  v29 = v36;
  v30 = v40;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_100201588(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100201684;

  return sub_100200970(v5, v7, v8, v10);
}

uint64_t sub_100201684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_10020D3D0();
  v13 = *v12;
  sub_100004410();
  *v14 = v13;

  sub_1000062BC();
  v16 = *(v15 + 24);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100005FBC();

    sub_10020D2EC();
    sub_1000063D0();
    v17();

    _Block_release(v16);
  }

  else
  {
    sub_10020D2EC();
    sub_10020D518();
    v18();
    _Block_release(v16);
  }

  sub_10000629C();
  sub_1001D185C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_10020181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = type metadata accessor for Logger();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B6C78);
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for EntityCache();
  sub_10020D0A4(&qword_1003B6B40, type metadata accessor for EntityCache);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100201A20, v11, v10);
}

uint64_t sub_100201A20()
{
  v1 = *(v0 + 64);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 72);
    v30 = *(v0 + 56);
    v33 = *(v0 + 48);
    v29 = *(v0 + 40);
    v32 = *(v0 + 32);
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    static Date.now.getter();
    v14 = *(v8 + 16);
    v14(v7, v5, v9);
    v14(v6, v10, v9);
    v15 = type metadata accessor for EntityCacheSchemaV1.CachedEntity();
    swift_allocObject();

    sub_1001D09EC(v11, v13);
    sub_1001FE428(v32, v29, v33, v30, v11, v13, v7, v6);
    sub_100005908();
    sub_10020D0A4(v16, v17);
    ModelActor.modelContext.getter();
    sub_10020D2D4();
    sub_10020D0A4(v18, v19);
    dispatch thunk of ModelContext.insert<A>(_:)();

    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    v23 = *(v0 + 152);
    v24 = *(v0 + 112);
    v34 = *(v0 + 48);
    v31 = *(v0 + 32);

    ModelActor.modelContext.getter();
    v25 = swift_task_alloc();
    *(v25 + 16) = v31;
    *(v25 + 32) = v34;
    *(v25 + 48) = v23;
    *(v0 + 24) = v15;
    Predicate.init(_:)();
    v26 = sub_1001A6C04(&qword_1003B6C80);
    sub_1001A9674(v24, 0, 1, v26);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    sub_1001B2DDC(*(v0 + 112), &qword_1003B6C78);

    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    sub_1000072CC(v11, v13);

    (*(*(v0 + 128) + 8))(*(v0 + 152), *(v0 + 120));
  }

  else
  {
    v20 = v4;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10020C524();
    sub_10020D5C8();
    *v22 = v21 | 0x4000000000000000;
    swift_willThrow();
  }

  sub_1000046F8();

  return v27();
}

uint64_t sub_1002020C0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v76 = a6;
  v68 = a5;
  v67 = a4;
  v61 = a3;
  v64 = a2;
  v82 = a7;
  v8 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v72 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001A6C04(&qword_1003B6C88);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  __chkstk_darwin(v10);
  v71 = v58 - v12;
  v73 = sub_1001A6C04(&qword_1003B6C90);
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = v58 - v13;
  v14 = sub_1001A6C04(&qword_1003B6C98);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v70 = v58 - v16;
  v86 = sub_1001A6C04(&qword_1003B6CA0);
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v18 = v58 - v17;
  v19 = sub_1001A6C04(&qword_1003B6CA8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v58 - v21;
  v23 = sub_1001A6C04(&qword_1003B6CB0);
  v88 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  v62 = sub_1001A6C04(&qword_1003B6CB8);
  v63 = *(v62 - 8);
  v26 = __chkstk_darwin(v62);
  v60 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v59 = v58 - v28;
  v66 = sub_1001A6C04(&qword_1003B6CC0);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v87 = v58 - v29;
  v30 = *a1;
  v31 = sub_1001AC7E4(&qword_1003B6CC8, &qword_1003B6CA8);
  v58[1] = v30;
  v83 = v31;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v32 = *(v20 + 8);
  v84 = v20 + 8;
  v85 = v32;
  v32(v22, v19);
  v90 = v64;
  v91 = v61;
  static PredicateExpressions.build_Arg<A>(_:)();
  v64 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v58[0] = sub_1001AC7E4(&qword_1003B6CD0, &qword_1003B6CB0);
  v61 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1001AC7E4(&qword_1003B6CD8, &qword_1003B6CA0);
  v33 = v23;
  v34 = v86;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35 = *(v89 + 8);
  v89 += 8;
  v35(v18, v34);
  v36 = *(v88 + 8);
  v88 += 8;
  v36(v25, v33);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v85(v22, v19);
  v90 = v67;
  v91 = v68;
  v37 = v18;
  static PredicateExpressions.build_Arg<A>(_:)();
  v38 = v60;
  v39 = v86;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35(v37, v39);
  v36(v25, v33);
  sub_1001AC7E4(&qword_1003B6CE0, &qword_1003B6CB8);
  v40 = v59;
  v41 = v62;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v42 = *(v63 + 8);
  v42(v38, v41);
  v42(v40, v41);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v43 = v65;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v85(v22, v19);
  type metadata accessor for Date();
  v44 = v71;
  static PredicateExpressions.build_Arg<A>(_:)();
  v46 = v74;
  v45 = v75;
  v47 = v72;
  (*(v74 + 104))(v72, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v75);
  sub_1001AC7E4(&qword_1003B6CE8, &qword_1003B6C90);
  sub_1001AC7E4(&qword_1003B6CF0, &qword_1003B6C88);
  sub_10020D0A4(&qword_1003B6CF8, &type metadata accessor for Date);
  v48 = v70;
  v49 = v44;
  v50 = v73;
  v51 = v78;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v46 + 8))(v47, v45);
  (*(v79 + 8))(v49, v51);
  (*(v77 + 8))(v43, v50);
  v52 = sub_1001A6C04(&qword_1003B6D00);
  v53 = v82;
  v82[3] = v52;
  v53[4] = sub_10020C974();
  sub_100005668(v53);
  sub_1001AC7E4(&qword_1003B6D50, &qword_1003B6CC0);
  sub_1001AC7E4(&qword_1003B6D58, &qword_1003B6C98);
  v54 = v87;
  v55 = v66;
  v56 = v80;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v81 + 8))(v48, v56);
  return (*(v69 + 8))(v54, v55);
}

uint64_t sub_100202C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v9 = type metadata accessor for Date();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[6] = v10;
  v6[7] = _Block_copy(a5);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v6[8] = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v6[9] = v15;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();

  v17 = swift_task_alloc();
  v6[10] = v17;
  *v17 = v6;
  v17[1] = sub_100202E00;

  return sub_10020181C(v11, v13, v14, v16, a3, v10);
}

uint64_t sub_100202E00()
{
  sub_100005B68();
  sub_100004410();
  *v3 = v2;
  sub_1000062BC();
  sub_1000062BC();
  v5 = *(v4 + 48);
  v6 = *(v2 + 40);
  v7 = *(v2 + 32);
  v8 = *v1;
  sub_100004410();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();

  sub_1000062BC();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v10 = sub_10020D2EC();
    v11(v10, v2);
  }

  else
  {
    v12 = sub_10020D2EC();
    v13(v12, 0);
  }

  _Block_release(*(v2 + 56));

  sub_10000629C();

  return v14();
}

void *sub_100203014(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = sub_10020D0A4(&qword_1003B6C70, &type metadata accessor for DefaultSerialModelExecutor);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a1;
  return v2;
}

uint64_t sub_1002030D0()
{
  v0 = type metadata accessor for EntityCache();
  v1 = sub_10020D0A4(&qword_1003B6B98, type metadata accessor for EntityCache);

  return ModelActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_10020317C(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_10020D430();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  v9 = sub_1001B6ACC();

  return sub_10028022C(v9, v10);
}

uint64_t sub_1002031F8(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v2[3] = v5;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1002032C8;

  return sub_100203144();
}

uint64_t sub_1002032C8()
{
  sub_100006B50();
  sub_1001AFA50();
  v2 = v0;
  v3 = *v1;
  sub_100004410();
  *v4 = v3;
  *v4 = *v1;

  if (v2)
  {
    v5 = _convertErrorToNSError(_:)();

    v6 = sub_10020D460();
    v7(v6, v5);
  }

  else
  {
    v8 = sub_10020D460();
    v9(v8, 0);
  }

  _Block_release(*(v3 + 16));
  sub_1001D18C4();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100203468(int a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100203554;

  return sub_10020342C();
}

uint64_t sub_100203554()
{
  sub_1001AFA50();
  sub_10020D3D0();
  v3 = *v2;
  sub_100004410();
  *v4 = v3;

  sub_1000062BC();
  v6 = *(v5 + 16);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100005FBC();

    sub_10020D2EC();
    sub_1000063D0();
    v7();

    _Block_release(v6);
  }

  else
  {
    sub_10020D2EC();
    sub_10020D518();
    v8();
    _Block_release(v6);
  }

  sub_10000629C();

  return v9();
}

uint64_t sub_100203714(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, void *a6, void *aBlock, int a8, uint64_t a9)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = v14;
  v15[7] = a1;
  v16 = a3;
  v17 = a4;
  swift_unknownObjectRetain();
  v18 = a6;

  return sub_10028022C(a9, v15);
}

uint64_t sub_1002037C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = type metadata accessor for Date();
  v5[2] = v7;
  v5[3] = *(v7 - 8);
  v5[4] = swift_task_alloc();
  v5[5] = _Block_copy(a5);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[7] = v9;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_task_alloc();
  v5[8] = v10;
  *v10 = v5;
  v10[1] = sub_100203938;

  return sub_100203144();
}

uint64_t sub_100203938()
{
  sub_100005B68();
  sub_100004410();
  *v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  *v3 = *v1;

  (*(v5 + 8))(v4, v6);

  sub_1000062BC();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v7 = sub_10020D2EC();
    v8(v7, v2);
  }

  else
  {
    v9 = sub_10020D2EC();
    v10(v9, 0);
  }

  _Block_release(*(v2 + 40));

  sub_10000629C();

  return v11();
}

unint64_t sub_100203B3C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(41);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6175676E616C202CLL;
  v9._object = 0xEC000000203A6567;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  return 0xD000000000000019;
}

uint64_t sub_100203C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100203CA0()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100203CF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100203DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100203E68, v4, 0);
}

uint64_t sub_100203E68()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = v0[10];
    v4 = v0[11];

    v6 = sub_1001F761C();
    v8 = sub_1001B269C(v6, v7, v5, v4);
    if (v9)
    {
      v10 = v8;

      v11 = *(*(v2 + 56) + 8 * v10);
      swift_unknownObjectRetain();

      goto LABEL_6;
    }
  }

  v12 = v0[11];
  v13 = v0[12];
  type metadata accessor for EntityCache();
  LOBYTE(v13) = *(v13 + 112);

  sub_10020D50C();
  v11 = sub_1001FF544(v14, v15, v16, v12, v13);
  sub_1001F75EC();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v1 + 120);
  sub_1001B9FE4();
  *(v1 + 120) = v19;

  swift_endAccess();
LABEL_6:

  sub_1001D17DC();

  return v17(v11);
}

uint64_t sub_1002041FC(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1002042F8;

  return sub_100203DA0(v5, v7, v8, v10);
}

uint64_t sub_1002042F8()
{
  sub_100006B50();
  sub_1001AFA50();
  v2 = v1;
  sub_1000057F0();
  v4 = *(v3 + 24);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;

  v7 = sub_10020D480();
  v8(v7, v2);
  _Block_release(v4);
  swift_unknownObjectRelease();
  sub_1000046F8();
  sub_1001D18C4();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100204468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100204530, v4, 0);
}

uint64_t sub_100204530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1001F7394();
  a23 = v25;
  a24 = v26;
  sub_1001E4394();
  a22 = v24;
  v27 = v24[8];
  v28 = v24[7];
  sub_1001F75EC();
  v29 = sub_1001F761C();
  v31 = sub_10020B188(v29, v30, v28, v27);
  swift_endAccess();
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  static GKLog.cache.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v36 = v24[11];
  v35 = v24[12];
  v37 = v24[10];
  if (v34)
  {
    HIDWORD(a10) = v31 != 0;
    a12 = v24[10];
    v39 = v24[7];
    v38 = v24[8];
    v41 = v24[5];
    v40 = v24[6];
    v42 = swift_slowAlloc();
    a11 = v35;
    v43 = sub_100005808();
    a13 = v43;
    *v42 = 136315394;
    v44 = sub_100203B3C(v41, v40, v39, v38);
    v46 = sub_100005C3C(v44, v45, &a13);

    *(v42 + 4) = v46;
    *(v42 + 12) = 1024;
    *(v42 + 14) = HIDWORD(a10);
    _os_log_impl(&_mh_execute_header, v32, v33, "Deleted entity cache: %s (wasRemoved? %{BOOL}d)", v42, 0x12u);
    sub_100005BE0(v43);
    sub_1000043D8();
    sub_1000043D8();

    (*(v36 + 8))(a11, a12);
  }

  else
  {

    (*(v36 + 8))(v35, v37);
  }

  sub_1000046F8();
  sub_1001E41B8();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10020473C(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_10020D3C0();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  v12 = sub_1001B6ACC();

  return sub_10028022C(v12, v13);
}

uint64_t sub_1002047C0(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1002048BC;

  return sub_100204468(v5, v7, v8, v10);
}

uint64_t sub_1002048BC()
{
  sub_1000057FC();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  v5 = sub_10020D460();
  v6(v5);
  _Block_release(v2);
  sub_1000046F8();

  return v7();
}

uint64_t sub_100204A1C()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100204ADC, v0, 0);
}

uint64_t sub_100204ADC()
{
  sub_1000057FC();
  sub_1001F75EC();
  sub_1001A6C04(&qword_1003B6C38);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  static GKLog.cache.getter();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    sub_10020D470();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    sub_1000043D8();
  }

  v7 = sub_100005540();
  v8(v7);

  sub_1000046F8();

  return v9();
}

uint64_t sub_100204C80(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001EC758;

  return sub_100204A1C();
}

uint64_t sub_100204D28()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100204DA0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_100005540();
  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100204E0C()
{
  sub_10020D564();
  _StringGuts.grow(_:)(56);
  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x800000010030BFD0;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_id));
  v2._countAndFlagsBits = 0x797469746E65202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  sub_1001A6C04(&qword_1003B6C30);
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x800000010030BFF0;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  if (*(v0 + OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_bagKeyOverride + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_bagKeyOverride);
    v5 = *(v0 + OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_bagKeyOverride + 8);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

id sub_100204F58()
{
  sub_1001F74F4();
  ObjectType = swift_getObjectType();
  v7 = &v1[OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_id];
  *v7 = v5;
  *(v7 + 1) = v4;
  *&v1[OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_entity] = v3;
  v8 = &v1[OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_bagKeyOverride];
  *v8 = v2;
  *(v8 + 1) = v0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_100204FD4()
{
  v1 = objc_allocWithZone(v0);

  swift_unknownObjectRetain();
  sub_10020D50C();
  return sub_100204F58();
}

id sub_1002050BC()
{
  v0 = objc_allocWithZone(sub_1001F74F4());

  swift_unknownObjectRetain();
  sub_10020D50C();
  return sub_100204F58();
}

uint64_t sub_1002052A0(char a1)
{
  type metadata accessor for EntityCacheProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = _swiftEmptyDictionarySingleton;
  return v2;
}

id sub_10020531C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  result = [a4 replyQueue];
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = v8;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a7;
    v17[8] = a8;
    v18 = v8;

    v19 = a4;

    sub_1002057D4(a5, a6, v16, &unk_1002C57C0, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100205434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return _swift_task_switch(sub_100205460, 0, 0);
}

uint64_t sub_100205460()
{
  sub_1001E4394();
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[24];
  v5 = v1[25];
  v12 = v1[23];
  v11 = v1[19];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[26] = isa;
  v7 = String._bridgeToObjectiveC()();
  v1[27] = v7;
  v1[14] = v4;
  v1[15] = v5;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10020D2CC;
  v1[13] = &unk_10036C750;
  v8 = _Block_copy(v3);
  v1[28] = v8;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_100205644;
  v9 = swift_continuation_init();
  v1[17] = sub_1001A6C04(&qword_1003B6C28);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100205740;
  v1[13] = &unk_10036C778;
  v1[14] = v9;
  [v11 createEntityWithRequest:isa bagKey:v7 clientProxy:v12 entityMaker:v8 completionHandler:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_100205644()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t *sub_100205740(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_100006454((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1001D1394(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1001D1354(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002057D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_1001A9674(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a3;
  v14[7] = a1;
  v14[8] = a2;

  v15 = a3;

  sub_1001D1C0C();
}

uint64_t sub_100205A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a2;
  v6[3] = a3;
  v12 = swift_allocObject();
  v6[6] = v12;
  *(v12 + 16) = a6;
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_100205B34;

  return sub_100205F10(a1, a2, a3, a4);
}

uint64_t sub_100205B34()
{
  sub_1001AFA50();
  v3 = v2;
  v5 = v4;
  sub_1000057F0();
  v7 = v6;
  sub_100006028();
  *v8 = v7;
  v9 = *v1;
  sub_100004410();
  *v10 = v9;
  v7[8] = v5;
  v7[9] = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = swift_task_alloc();
    v7[10] = v14;
    *v14 = v9;
    v14[1] = sub_100205CD0;
    v15 = sub_1001D1934(v7[2]);

    return sub_1002061C4(v15, v16, v5, v17, v18, v19, v3);
  }
}

uint64_t sub_100205CD0()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_100006028();
  *v6 = v5;
  v7 = *v1;
  sub_100004410();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  sub_1001B6A34();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100205DE0()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100205E3C()
{
  sub_100005528();

  sub_1001D17DC();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_100205EA8()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100205F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_100205F38, 0, 0);
}

uint64_t sub_100205F38()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_100206038;
  sub_1001B6A34();
  sub_1001D18C4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100206038()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_100006028();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100206168()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1002061C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v8 + 192) = a6;
  *(v8 + 200) = v7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  *(v8 + 168) = a7;
  *(v8 + 152) = a2;
  *(v8 + 160) = a3;
  *(v8 + 144) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1002062FC, 0, 0);
}

uint64_t sub_1002062FC()
{
  sub_100005528();
  *(v0 + 264) = (*(v0 + 184))(*(v0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1002063A0;
  v2 = sub_1001D1934(*(v0 + 176));

  return sub_100208868(v2);
}

uint64_t sub_1002063A0()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = v3;

  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020648C()
{
  v1 = v0[33];
  if (!*(v1 + OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_bagKeyOverride + 8))
  {
  }

  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];

  v6 = String._bridgeToObjectiveC()();
  v0[36] = v6;

  v7 = String._bridgeToObjectiveC()();
  v0[37] = v7;

  v8 = OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_entity;
  v0[38] = OBJC_IVAR____TtC14GameDaemonCore17GKCacheableEntity_entity;
  v9 = *(v1 + v8);
  v0[39] = v9;
  swift_unknownObjectRetain();
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v10 = *(v4 + 8);
  v10(v2, v5);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v0[40] = isa;
  v10(v3, v5);
  v0[2] = v0;
  v0[3] = sub_1002066C4;
  v12 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&unk_1003B6BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  sub_10020D368();
  v0[13] = v13;
  v0[14] = v12;
  [v14 storeWithBagKey:v6 id:v7 entity:v9 expiresAt:isa completionHandler:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002066C4()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002067C0()
{
  sub_100006B50();
  sub_1001AFA50();
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10020D490();

  sub_1001D17DC();
  sub_1001D18C4();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100206864()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[28];
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  static GKLog.cache.getter();
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v5 = v9;
    *(v10 + 12) = 2112;
    v11 = v9;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v12;
    v5[1] = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to cache entity: %@, error: %@", v10, 0x16u);
    sub_1001A6C04(&unk_1003B6180);
    swift_arrayDestroy();
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_10020D490();

  sub_1001D17DC();

  return v13(v8);
}

uint64_t sub_100206B2C(int a1, int a2, void *a3, void *aBlock, const void *a5, void *a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v10 = _Block_copy(aBlock);
  v6[4] = v10;
  v6[5] = _Block_copy(a5);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6[6] = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v6[7] = v13;
  _Block_copy(v10);
  v15 = a3;
  v16 = a6;
  v17 = swift_task_alloc();
  v6[8] = v17;
  *v17 = v6;
  v17[1] = sub_100206C8C;

  return sub_100205A48(v11, v12, v14, v15, v16, v10);
}

uint64_t sub_100206C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_10020D3D0();
  v13 = *v12;
  v14 = *(*v12 + 24);
  v15 = *(*v12 + 16);
  v16 = *v12;
  sub_100004410();
  *v17 = v16;

  v18 = *(v13 + 40);
  _Block_release(*(v13 + 32));

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100005FBC();

    sub_10020D480();
    sub_1000063D0();
    v19();

    _Block_release(v18);
  }

  else
  {
    sub_10020D480();
    sub_10020D518();
    v20();
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  sub_10000629C();
  sub_1001D185C();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

id sub_100206E58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  swift_getObjectType();
  result = [a5 replyQueue];
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    *(v19 + 24) = a1;
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;
    *(v19 + 48) = a4 & 1;
    *(v19 + 56) = a5;
    *(v19 + 64) = a8;
    *(v19 + 72) = a9;

    v20 = a5;

    v21 = v10;
    sub_1002057D4(a6, a7, v18, &unk_1002C5770, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100206F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a4;
  *(v8 + 184) = a6;
  *(v8 + 240) = a5;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  return _swift_task_switch(sub_100206FB0, 0, 0);
}

uint64_t sub_100206FB0()
{
  sub_1001E4394();
  if (v0[20])
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v0[26] = v1.super.isa;
  v3 = v0[24];
  v2 = v0[25];
  v10 = v0[23];
  v9 = *(v0 + 240);
  v8 = v0[19];
  v4 = String._bridgeToObjectiveC()();
  v0[27] = v4;
  v0[14] = v3;
  v0[15] = v2;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10020D2CC;
  v0[13] = &unk_10036C638;
  v5 = _Block_copy(v0 + 10);
  v0[28] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002071AC;
  v6 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&qword_1003B6C28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100205740;
  v0[13] = &unk_10036C660;
  v0[14] = v6;
  [v8 readEntityWithRequest:v1.super.isa bagKey:v4 includeStaleCacheData:v9 clientProxy:v10 entityMaker:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002071AC()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002072A8()
{
  sub_1000057FC();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  _Block_release(*(v0 + 224));

  v3 = sub_10020D30C();

  return v4(v3);
}

uint64_t sub_10020731C()
{
  sub_1001AFA50();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();
  _Block_release(v1);

  sub_1000046F8();

  return v4();
}

id sub_10020739C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

id sub_1002075A0()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = sub_1001B6ACC();
  v3 = v2(v1);

  return v3;
}

uint64_t sub_100207608()
{
  sub_100005528();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  *(v1 + 376) = v5;
  *(v1 + 160) = v6;
  *(v1 + 168) = v7;
  *(v1 + 152) = v8;
  *(v1 + 208) = swift_getObjectType();
  v9 = type metadata accessor for Logger();
  *(v1 + 216) = v9;
  *(v1 + 224) = *(v9 - 8);
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1002076E8()
{
  sub_100005528();
  sub_1002085A4(v0[19]);
  v0[31] = v1;
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_100207788;
  v4 = sub_1001D1934(v0[22]);

  return sub_100208868(v4);
}

uint64_t sub_100207788()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100207874()
{
  sub_1001D1970();
  sub_100005838();
  v1 = v0[34];
  v2 = String._bridgeToObjectiveC()();
  v0[35] = v2;
  v3 = String._bridgeToObjectiveC()();
  v0[36] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002079BC;
  v4 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&qword_1003B6BF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100208D74;
  v0[13] = &unk_10036C430;
  v0[14] = v4;
  [v1 fetchWithBagKey:v2 id:v3 completionHandler:v0 + 10];
  sub_1001D185C();

  return _swift_continuation_await(v5);
}

uint64_t sub_1002079BC()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100207AB8()
{
  sub_100006B50();
  sub_1001AFA50();
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v4 = *(v1 + 144);
  v5 = v4;
  sub_100005FBC();
  swift_unknownObjectRelease();

  if (v4)
  {
    if (*(v1 + 376) == 1)
    {

LABEL_8:

      swift_unknownObjectRetain();

      sub_1001D17DC();
      sub_1001D18C4();

      return v16(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    v6 = *(v0 + OBJC_IVAR___GKFetchedEntity_isExpired);

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(v1 + 304) = v4;
  v7 = swift_task_alloc();
  *(v1 + 312) = v7;
  *v7 = v1;
  sub_10020D31C(v7);
  sub_1001D18C4();

  return sub_100205F10(v8, v9, v10, v11);
}

uint64_t sub_100207BEC()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_100006028();
  *v6 = v5;
  *v6 = *v1;
  v5[40] = v7;
  v5[41] = v0;

  if (!v0)
  {
    v5[42] = v3;
  }

  sub_1001B6A34();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100207D00()
{
  sub_1001AFA50();
  v12 = *(v0 + 248);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = swift_allocObject();
  *(v0 + 344) = v3;
  *(v3 + 16) = v12;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_100207DFC;
  v5 = sub_1001D1934(*(v0 + 160));

  return sub_1002061C4(v5, v6, v7, v8, v9, v3, v10);
}

uint64_t sub_100207DFC()
{
  sub_100006B50();
  sub_1001AFA50();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 360) = v0;

  if (!v0)
  {
    *(v4 + 368) = v3;
  }

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100207F44()
{
  sub_100005528();

  v1 = sub_10020D30C();

  return v2(v1);
}

uint64_t sub_100207FB4()
{
  v24 = v0;
  v1 = v0[36];
  v2 = v0[35];
  swift_willThrow();
  swift_unknownObjectRelease();

  static GKLog.cache.getter();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_10020D538();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = v0[31];
    v5 = v0[32];
    v21 = v0[27];
    v22 = v0[30];
    v6 = v0[20];
    v19 = v0[21];
    v20 = v0[28];
    v7 = sub_100005808();
    v8 = sub_10020D4F4();
    v23[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100005C3C(v4, v5, v23);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100005C3C(v6, v19, v23);
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v1, "Failed to fetch entity ID: %s, bagKey: %s, from cache: %@", v7, 0x20u);
    sub_1001B2DDC(v8, &unk_1003B6180);
    sub_1000043D8();
    swift_arrayDestroy();
    sub_1000047A4();
    sub_1000043D8();

    (*(v20 + 8))(v22, v21);
  }

  else
  {
    v10 = v0[30];
    v11 = v0[27];
    v12 = v0[28];

    (*(v12 + 8))(v10, v11);
  }

  v0[38] = 0;
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v14 = sub_10020D31C(v13);

  return sub_100205F10(v14, v15, v16, v17);
}

uint64_t sub_100208224()
{
  v27 = v0;
  v2 = v0[38];
  v3 = _convertErrorToNSError(_:)();
  v4 = sub_100208DFC();
  v5 = v0[38];
  if ((v4 & 1) != 0 && v2)
  {
    static GKLog.cache.getter();

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_10020D538();

    if (os_log_type_enabled(v6, v1))
    {
      v24 = v0[27];
      v25 = v0[29];
      v22 = v0[21];
      v23 = v0[28];
      v21 = v0[20];
      v7 = sub_100005808();
      v8 = sub_10020D4F4();
      v26 = swift_slowAlloc();
      *v7 = 136315650;
      v9 = sub_1001F761C();
      v12 = sub_100005C3C(v9, v10, v11);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_100005C3C(v21, v22, &v26);
      *(v7 + 22) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v13;
      *v8 = v13;
      _os_log_impl(&_mh_execute_header, v6, v1, "Using cache fallback for entity ID: %s, bagKey: %s after request error: %@", v7, 0x20u);
      sub_1001B2DDC(v8, &unk_1003B6180);
      sub_1000043D8();
      swift_arrayDestroy();
      sub_1000043D8();
      sub_1000047A4();

      (*(v23 + 8))(v25, v24);
    }

    else
    {
      v17 = v0[28];
      v16 = v0[29];
      v18 = v0[27];

      (*(v17 + 8))(v16, v18);
    }

    swift_unknownObjectRetain();

    v19 = sub_10020D30C();

    return v20(v19);
  }

  else
  {

    swift_willThrow();

    sub_1000046F8();

    return v14();
  }
}

uint64_t sub_10020852C()
{
  sub_1000057FC();

  sub_1000046F8();

  return v1();
}

void sub_1002085A4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10026A6FC(a1);
    if (v1)
    {
      v2 = v1;
      v3 = sub_100209AEC(v1);
      v4 = *(v3 + 16);
      if (v4)
      {
        v24 = _swiftEmptyArrayStorage;
        sub_1001B16C8(0, v4, 0);
        v5 = 0;
        v6 = _swiftEmptyArrayStorage;
        v7 = (v3 + 40);
        v21 = v3;
        while (v5 < *(v3 + 16))
        {
          v9 = *(v7 - 1);
          v8 = *v7;
          v10 = *(v2 + 16);

          if (v10 && (v11 = sub_1001B247C(v9, v8), (v12 & 1) != 0))
          {
            sub_1001A7AE8(*(v2 + 56) + 32 * v11, v22);
            sub_100005C2C(v22, v23);
            *&v22[0] = 0;
            *(&v22[0] + 1) = 0xE000000000000000;
            v13._countAndFlagsBits = v9;
            v13._object = v8;
            String.append(_:)(v13);
            v14._countAndFlagsBits = 61;
            v14._object = 0xE100000000000000;
            String.append(_:)(v14);
            _print_unlocked<A, B>(_:_:)();
            v15 = *(&v22[0] + 1);
            v16 = *&v22[0];
            sub_100005BE0(v23);
          }

          else
          {
            *&v23[0] = v9;
            *(&v23[0] + 1) = v8;

            v17._countAndFlagsBits = 1818848829;
            v17._object = 0xE400000000000000;
            String.append(_:)(v17);

            v15 = *(&v23[0] + 1);
            v16 = *&v23[0];
          }

          v24 = v6;
          v19 = v6[2];
          v18 = v6[3];
          if (v19 >= v18 >> 1)
          {
            sub_1001B16C8(v18 > 1, v19 + 1, 1);
            v6 = v24;
          }

          ++v5;
          v6[2] = v19 + 1;
          v20 = &v6[2 * v19];
          v20[4] = v16;
          v20[5] = v15;
          v7 += 2;
          v3 = v21;
          if (v4 == v5)
          {

            goto LABEL_17;
          }
        }

        __break(1u);
      }

      else
      {

        v6 = _swiftEmptyArrayStorage;
LABEL_17:
        *&v23[0] = v6;
        sub_1001A6C04(&unk_1003B6BD0);
        sub_1001AC7E4(&qword_1003B5B00, &unk_1003B6BD0);
        BidirectionalCollection<>.joined(separator:)();
      }
    }

    else
    {
      Dictionary.description.getter();
    }
  }

  else
  {
  }
}

uint64_t sub_100208868(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100208928, 0, 0);
}

uint64_t sub_100208928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v11 = [*(v10 + 160) playerCredentialsForClientProxy:*(v10 + 152)];
  if (v11 && (v12 = v11, v13 = [v11 playerInternal], v12, v13))
  {
    v14 = [v13 playerID];

    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100005FBC();
    }

    *(v10 + 192) = v14;
    v15 = *(v10 + 152);
    v16 = [*(v10 + 160) entityCacheProvider];
    *(v10 + 200) = v16;
    v17 = sub_10020BD50(v15);
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();
      *(v10 + 208) = v19;

      *(v10 + 16) = v10;
      *(v10 + 56) = v10 + 144;
      *(v10 + 24) = sub_100208C2C;
      v20 = swift_continuation_init();
      *(v10 + 136) = sub_1001A6C04(&qword_1003B6BF0);
      *(v10 + 80) = _NSConcreteStackBlock;
      *(v10 + 88) = 1107296256;
      *(v10 + 96) = sub_10020A464;
      *(v10 + 104) = &unk_10036C3B8;
      *(v10 + 112) = v20;
      [v16 getCacheWithPlayerID:v14 language:v19 completionHandler:v10 + 80];
      sub_1001D185C();
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v17);
  }

  else
  {
    v22 = *(v10 + 152);
    static GKLog.cache.getter();
    v23 = v22;
    v24 = Logger.logObject.getter();
    LOBYTE(v22) = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v22))
    {
      v25 = *(v10 + 152);
      v26 = swift_slowAlloc();
      v27 = sub_10020D4F4();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      sub_10020D470();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_1001B2DDC(v27, &unk_1003B6180);
      sub_1000043D8();
      sub_1000043D8();
    }

    v34 = sub_100005540();
    v35(v34);
    type metadata accessor for NoopEntityCache();
    swift_initStaticObject();

    sub_10020D30C();
    sub_1001D185C();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }
}

uint64_t sub_100208C2C()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;
  sub_1001B6A34();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100208CFC()
{
  sub_1000057FC();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  swift_unknownObjectRelease();

  v3 = sub_10020D30C();

  return v4(v3);
}

uint64_t sub_100208D74(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001D1394(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1001D1354(v5, a2);
  }
}

uint64_t sub_100208DFC()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return [v0 gkIsNotConnectedToInternetError];
    }
  }

  if ([v0 code] == 3)
  {
    return 1;
  }

  return [v0 gkIsNotConnectedToInternetError];
}

id sub_100208EE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);
  v6 = objc_allocWithZone(type metadata accessor for GKCacheableEntity());
  return sub_100204F58();
}

uint64_t sub_100209020(uint64_t a1, int a2, int a3, void *a4, void *aBlock, const void *a6, void *a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v12 = _Block_copy(aBlock);
  v7[4] = _Block_copy(a6);
  if (a1)
  {
    a1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7[5] = a1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7[6] = v13;
  v14 = swift_allocObject();
  v7[7] = v14;
  *(v14 + 16) = v12;
  v15 = a4;
  a7;
  v16 = swift_task_alloc();
  v7[8] = v16;
  *v16 = v7;
  v16[1] = sub_1002091A0;

  return sub_100207608();
}

uint64_t sub_1002091A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  sub_10020D3D0();
  v13 = *v12;
  v14 = *(*v12 + 24);
  v15 = *(*v12 + 16);
  v16 = *v12;
  sub_100004410();
  *v17 = v16;

  sub_1000062BC();
  v18 = *(v13 + 32);

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100005FBC();

    sub_10020D2EC();
    sub_1000063D0();
    v19();

    _Block_release(v18);
  }

  else
  {
    sub_10020D2EC();
    sub_10020D518();
    v20();
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  sub_10000629C();
  sub_10020D590();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_100209368()
{
  sub_100005528();
  v2 = v1;
  v0[18] = v3;
  v0[19] = v4;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1002093FC;

  return sub_100208868(v2);
}

uint64_t sub_1002093FC()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002094E8()
{
  sub_100006B50();
  sub_1001AFA50();
  if (v0[19])
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  v0[22] = v1;
  v2 = v0[21];
  v0[2] = v0;
  v0[3] = sub_10020960C;
  v3 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&unk_1003B6BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  sub_10020D368();
  v0[13] = v4;
  v0[14] = v3;
  [v2 deleteWithBagKey:v1 completionHandler:v0 + 10];
  sub_1001D18C4();

  return _swift_continuation_await(v5);
}

uint64_t sub_10020960C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100209708()
{
  sub_100005528();
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();

  sub_1000046F8();

  return v2();
}

uint64_t sub_100209768()
{
  sub_1000057FC();
  v1 = *(v0 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_1000046F8();

  return v2();
}

uint64_t sub_100209874(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100209970;

  return sub_100209368();
}

uint64_t sub_100209970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_100005B68();
  sub_100004410();
  *v13 = v12;
  v14 = *(v12 + 24);
  v15 = *(v12 + 16);
  *v13 = *v11;

  sub_1000062BC();
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v16 = sub_10020D2EC();
    v17(v16, v12);
  }

  else
  {
    v18 = sub_10020D2EC();
    v19(v18, 0);
  }

  _Block_release(*(v12 + 32));
  sub_10000629C();
  sub_1001D185C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_100209AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1001DFD08(*(a1 + 16), 0);
  v4 = sub_1002678EC(&v6, v3 + 4, v1, a1);

  sub_10000838C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_10020B350(&v6);
  return v6;
}

uint64_t sub_100209C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100209CD0(uint64_t result, int a2, int a3)
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

unint64_t sub_100209D44()
{
  result = qword_1003B6B38;
  if (!qword_1003B6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6B38);
  }

  return result;
}

uint64_t sub_100209DE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[16] = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[25] = v12;
  *v12 = v8;
  v12[1] = sub_100209F90;

  return v14();
}

uint64_t sub_100209F90()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_100006028();
  *v6 = v5;
  v7 = *v1;
  sub_100004410();
  *v8 = v7;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  sub_1001B6A34();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  v19 = v17[27];
  sub_10020D3E0();
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v18;
  v20[4] = v19;
  v17[12] = sub_10020C334;
  v17[13] = v20;
  v17[8] = _NSConcreteStackBlock;
  v17[9] = 1107296256;
  v17[10] = sub_1001AA95C;
  v17[11] = &unk_10036C610;
  v21 = _Block_copy(v17 + 8);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v17[15] = _swiftEmptyArrayStorage;
  sub_10020D37C();
  sub_10020D0A4(v22, v23);
  v24 = sub_10020D558();
  v25 = sub_1001A6C04(v24);
  sub_10020D394(&qword_1003B6C20);
  sub_10020D404();
  sub_10020D4D0();
  _Block_release(v21);
  swift_unknownObjectRelease();
  v26 = sub_10020D544();
  v27(v26);
  (*(a12 + 8))(v25, a13);

  sub_1000046F8();
  sub_1001E41B8();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10020A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  sub_1001E4394();
  v19 = v17[26];
  sub_10020D3E0();
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v18;
  v20[4] = v19;
  v17[6] = sub_10020C2C8;
  v17[7] = v20;
  v17[2] = _NSConcreteStackBlock;
  v17[3] = 1107296256;
  v17[4] = sub_1001AA95C;
  v17[5] = &unk_10036C5C0;
  v21 = _Block_copy(v17 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v17[14] = _swiftEmptyArrayStorage;
  sub_10020D37C();
  sub_10020D0A4(v22, v23);
  v24 = sub_10020D558();
  v25 = sub_1001A6C04(v24);
  sub_10020D394(&qword_1003B6C20);
  sub_10020D404();
  sub_10020D4D0();
  _Block_release(v21);

  v26 = sub_10020D544();
  v27(v26);
  (*(a12 + 8))(v25, a13);

  sub_1000046F8();
  sub_1001E41B8();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_10020A408(void (*a1)(void, id))
{
  v2 = _convertErrorToNSError(_:)();
  a1(0, v2);
}

uint64_t sub_10020A464(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100006454((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();

  return sub_1001D1358(v3, a2);
}

void sub_10020A4B4(uint64_t a1, void *a2, Class isa, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1001A6C04(&unk_1003B6C00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - v12;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14 = String._bridgeToObjectiveC()();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_10020BFB8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020A798;
  aBlock[3] = &unk_10036C4D0;
  v17 = _Block_copy(aBlock);

  [a2 issueRequest:isa bagKey:v14 clientProxy:a6 handler:v17];
  _Block_release(v17);
}

id sub_10020A6CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_1001A6C04(&unk_1003B6C00);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a1)
  {

    sub_1001A6C04(&unk_1003B6C00);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v3 = objc_opt_self();
    result = sub_10020BDB4(3, 0xD000000000000021, 0x800000010030BED0, v3);
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10020A798(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v6(v7, a3, a4);
}

Swift::Int sub_10020A854()
{
  Hasher.init(_seed:)();
  sub_10020D0A4(&qword_1003B6B58, type metadata accessor for EntityCacheSchemaV1.CachedEntity);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_10020A90C(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10020AE7C(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001E07C4(v1 + 16, v3);
  return sub_10020A988;
}

void sub_10020A988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001E07C4(*a1, v2 + 40);
    sub_1001F75EC();
    sub_100005BE0(v3 + 16);
    sub_10005671C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_100005BE0(v2);
  }

  else
  {
    sub_1001F75EC();
    sub_100005BE0(v3 + 16);
    sub_10005671C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_10020AACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001FD6D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10020AAF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10020D0A4(&qword_1003B6B68, type metadata accessor for EntityCacheSchemaV1.CachedEntity);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_10020AD64()
{
  result = qword_1003B6B88;
  if (!qword_1003B6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6B88);
  }

  return result;
}

unint64_t sub_10020ADD8()
{
  result = qword_1003B6B90;
  if (!qword_1003B6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6B90);
  }

  return result;
}

void *sub_10020AE7C(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_10020AEB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10020AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = v5;
  v8 = sub_1001B247C(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v5;
  v12 = *(*v5 + 24);
  v13 = sub_1001F761C();
  sub_1001A6C04(v13);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);

  v14 = *(*(v16 + 56) + 8 * v10);
  a5(0);
  _NativeDictionary._delete(at:)();
  *v7 = v16;
  return v14;
}

uint64_t sub_10020B06C()
{
  v1 = v0;
  v2 = sub_1001B2608();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10020D524();
  v5 = sub_1001A6C04(&qword_1003B5D70);
  sub_10020D5A8(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  v13 = *(v20 + 48);
  v14 = type metadata accessor for NWEndpoint();
  sub_100005780();
  (*(v15 + 8))(v13 + *(v15 + 72) * v4, v14);
  v16 = *(*(v20 + 56) + 8 * v4);
  type metadata accessor for PeerConnection();
  sub_10020D0A4(&unk_1003B6DA0, &type metadata accessor for NWEndpoint);
  _NativeDictionary._delete(at:)();
  *v1 = v20;
  return v16;
}

uint64_t sub_10020B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_1001B269C(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v10 = *(*v4 + 24);
  sub_1001A6C04(&qword_1003B6C40);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

  v11 = *(*(v13 + 56) + 8 * v8);
  sub_1001A6C04(&qword_1003B6C48);
  sub_10020C4D0();
  _NativeDictionary._delete(at:)();
  *v5 = v13;
  return v11;
}

uint64_t sub_10020B280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1001B247C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10020D524();
  v7 = sub_1001A6C04(&unk_1003B8250);
  sub_10020D5A8(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);

  v15 = *(*(v19 + 56) + 8 * v6);
  sub_1001A7B44(0, &unk_1003B6D90);
  _NativeDictionary._delete(at:)();
  *v3 = v19;
  return v15;
}

Swift::Int sub_10020B350(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100236A60(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10020B3BC(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_10020B3BC(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10020B578(v7, v8, a1, v4);
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
    return sub_10020B4B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10020B4B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10020B578(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF478();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1001DF478();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10020BBAC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10020BA80(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_10020BA80(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100236808(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10020BBAC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10020BBAC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1000566DC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1000566DC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10020BD50(void *a1)
{
  v1 = [a1 language];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10020BDB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 userErrorForServerCode:a1 reason:v6];

  return v7;
}

uint64_t sub_10020BE28()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10020D4B8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  sub_100004510(v1);
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_10020D2FC();
  sub_100006C04();
  sub_10020D590();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

id sub_10020BFB8(uint64_t a1, uint64_t a2)
{
  sub_1001A6C04(&unk_1003B6C00);

  return sub_10020A6CC(a1, a2);
}

uint64_t sub_10020C06C()
{
  sub_10020D578();
  sub_100005838();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_10020C120;
  sub_1000047F0();
  sub_10020D590();

  return sub_100206F80(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020C120()
{
  sub_100005528();
  v2 = v1;
  sub_1000057F0();
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  sub_1001D17DC();

  return v5(v2);
}

uint64_t sub_10020C208()
{
  sub_10020D578();
  sub_100005838();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_100006C04();
  sub_10020D590();

  return sub_100209DE0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020C2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10020C2EC(void (*a1)(void))
{

  a1(*(v1 + 32));
  v3 = sub_10020D430();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10020C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_10020D450();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_100006C04();
  sub_1001D185C();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10020C428()
{
  sub_1001D1970();
  sub_100005838();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_10020D2B4;
  sub_1000047F0();
  sub_100006C04();
  sub_1001D185C();

  return sub_100205434(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10020C4D0()
{
  result = qword_1003B6C50;
  if (!qword_1003B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6C50);
  }

  return result;
}

unint64_t sub_10020C524()
{
  result = qword_1003B6C58;
  if (!qword_1003B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6C58);
  }

  return result;
}

unint64_t sub_10020C578()
{
  result = qword_1003B6C60;
  if (!qword_1003B6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6C60);
  }

  return result;
}

uint64_t sub_10020C5CC()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_1001B6ACC();

  return v4(v3);
}

uint64_t sub_10020C66C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10020D4B8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  sub_100004510(v1);
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020C6FC()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10020D4B8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  sub_100004510(v1);
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_10020D450();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_100006C04();
  sub_1001D185C();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10020C830()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10020D4B8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  sub_100004510(v1);
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020C8C0()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_10020D2FC();

  return v4(v3);
}

unint64_t sub_10020C974()
{
  result = qword_1003B6D08;
  if (!qword_1003B6D08)
  {
    sub_1001A6C4C(&qword_1003B6D00);
    sub_10020CA00();
    sub_10020CBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D08);
  }

  return result;
}

unint64_t sub_10020CA00()
{
  result = qword_1003B6D10;
  if (!qword_1003B6D10)
  {
    sub_1001A6C4C(&qword_1003B6CC0);
    sub_10020CA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D10);
  }

  return result;
}

unint64_t sub_10020CA84()
{
  result = qword_1003B6D18;
  if (!qword_1003B6D18)
  {
    sub_1001A6C4C(&qword_1003B6CB8);
    sub_10020CC50(&qword_1003B6D20, &qword_1003B6CB0);
    sub_10020CB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D18);
  }

  return result;
}

unint64_t sub_10020CB28()
{
  result = qword_1003B6D30;
  if (!qword_1003B6D30)
  {
    sub_1001A6C4C(&qword_1003B6CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D30);
  }

  return result;
}

unint64_t sub_10020CBAC()
{
  result = qword_1003B6D38;
  if (!qword_1003B6D38)
  {
    sub_1001A6C4C(&qword_1003B6C98);
    sub_10020CC50(&qword_1003B6D40, &qword_1003B6C90);
    sub_10020CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D38);
  }

  return result;
}

uint64_t sub_10020CC50(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(a2);
    sub_1001AC7E4(&qword_1003B6D28, &qword_1003B6CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10020CCE8()
{
  result = qword_1003B6D48;
  if (!qword_1003B6D48)
  {
    sub_1001A6C4C(&qword_1003B6C88);
    sub_10020D0A4(&qword_1003B6B78, &type metadata accessor for Date);
    sub_10020D0A4(&qword_1003B6B80, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6D48);
  }

  return result;
}

uint64_t sub_10020CDE4()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10020CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_10020D450();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_100006C04();
  sub_1001D185C();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10020CEE8()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10020D3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10020CF30()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10020D4B8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  sub_100004510(v1);
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10020CFC0()
{
  _Block_release(*(v0 + 24));

  v1 = sub_10020D430();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10020D000()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_10020D2FC();

  return v4(v3);
}

uint64_t sub_10020D0A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10020D0FC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10020D124(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10020D178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_10020D1D8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_10020D220()
{
  result = qword_1003B6DC0;
  if (!qword_1003B6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6DC0);
  }

  return result;
}

uint64_t sub_10020D394(unint64_t *a1)
{

  return sub_1001AC7E4(a1, v1);
}

uint64_t sub_10020D404()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10020D490()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_10020D4D0()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10020D4F4()
{

  return swift_slowAlloc();
}

BOOL sub_10020D5A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10020D5C8()
{

  return swift_allocError();
}

id GKGameInternal.subscriptions.getter()
{
  v1 = type metadata accessor for Profile.Subscriptions();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v13[1] = _swiftEmptyArrayStorage;
  sub_10020EDC4(&qword_1003B5998, &type metadata accessor for Profile.Subscriptions);
  sub_1001A6C04(&qword_1003B59A0);
  sub_10020ED70(&qword_1003B59A8, &qword_1003B59A0);
  sub_100005790();
  result = [v0 isArcadeGame];
  if (result)
  {
    static Profile.Subscriptions.arcade.getter();
    sub_1001AB988();
    v12 = *(v3 + 8);
    v12(v7, v1);
    return (v12)(v10, v1);
  }

  return result;
}

uint64_t GKGameInternal.servicesArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 artwork];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 templateURL];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B6954();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v7 = v6;

    return Artwork.init(templateURL:metadata:)(v7, v4, a1);
  }

  else
  {
    v9 = type metadata accessor for Artwork();

    return sub_1001A9674(a1, 1, 1, v9);
  }
}

uint64_t Artwork.init(templateURL:metadata:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  type metadata accessor for Logger();
  sub_1000043C4();
  v27 = v5;
  v28 = v4;
  __chkstk_darwin(v4);
  sub_100004820();
  v6 = sub_1001A6C04(&qword_1003B6DD0);
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Artwork.Size();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043F0();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = [a2 width];
  [v17 doubleValue];

  v18 = [a2 height];
  [v18 doubleValue];

  Artwork.Size.init(width:height:)();
  Ref<A>.init(templateURL:)();
  (*(v9 + 16))(v13, v16, v7);
  v19 = sub_1001AC844(a2, &selRef_backgroundColor);
  v28 = v20;
  v29 = v19;
  v21 = sub_1001AC844(a2, &selRef_textColor1);
  v26 = v22;
  v27 = v21;
  sub_1001AC844(a2, &selRef_textColor2);
  sub_1001AC844(a2, &selRef_textColor3);
  sub_1001AC844(a2, &selRef_textColor4);
  v23 = v30;
  Artwork.init(ref:sourceImageSize:backgroundColor:textColor1:textColor2:textColor3:textColor4:)();

  (*(v9 + 8))(v16, v7);
  v24 = type metadata accessor for Artwork();
  return sub_1001A9674(v23, 0, 1, v24);
}

id GKGameInternal.servicesCapabilities.getter()
{
  v1 = type metadata accessor for GameDescription.Capabilities();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v9 = sub_10020EDC4(&qword_1003B5980, &type metadata accessor for GameDescription.Capabilities);
  sub_1001A6C04(&qword_1003B5988);
  sub_10020ED70(&qword_1003B5990, &qword_1003B5988);
  sub_100005790();
  if ([v0 supportsAchievements] && objc_msgSend(v0, "numberOfAchievements"))
  {
    static GameDescription.Capabilities.achievements.getter();
    sub_10020EE24();
    v10 = sub_100004534();
    v9(v10);
    v11 = sub_10020EE40();
    v9(v11);
  }

  if ([v0 supportsLeaderboards] && objc_msgSend(v0, "numberOfLeaderboards"))
  {
    static GameDescription.Capabilities.leaderboards.getter();
    sub_10020EE24();
    v12 = sub_100004534();
    v9(v12);
    v13 = sub_10020EE40();
    v9(v13);
  }

  if ([v0 supportsLeaderboardSets])
  {
    static GameDescription.Capabilities.leaderboardSets.getter();
    sub_10020EE24();
    v14 = sub_100004534();
    v9(v14);
    v15 = sub_10020EE40();
    v9(v15);
  }

  if ([v0 supportsChallenges])
  {
    static GameDescription.Capabilities.challenges.getter();
    sub_10020EE24();
    v16 = sub_100004534();
    v9(v16);
    v17 = sub_10020EE40();
    v9(v17);
  }

  result = [v0 supportsLeaderboardChallenges];
  if (result)
  {
    static GameDescription.Capabilities.leaderboardChallenges.getter();
    sub_10020EE24();
    v19 = *(v3 + 8);
    v19(v7, v1);
    v20 = sub_10020EE40();
    return (v19)(v20);
  }

  return result;
}

uint64_t GKGameInternal.servicesCompatiblePlatforms.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001A6C04(&qword_1003B6DD8);
  __chkstk_darwin(v4 - 8);
  v6 = (&v58 - v5);
  v7 = type metadata accessor for GameDescription.CompatiblePlatforms();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043F0();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = __chkstk_darwin(v15);
  v65 = &v58 - v19;
  __chkstk_darwin(v18);
  v21 = &v58 - v20;
  v22 = [v2 compatiblePlatforms];
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_10020E534(v23);

  if (v24)
  {
    v59 = v21;
    v60 = v13;
    v67 = v6;
    v61 = v17;
    v62 = v9;
    v63 = a1;
    v25 = v24 + 56;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 56);
    v29 = (v26 + 63) >> 6;
    v64 = (v9 + 32);

    v31 = 0;
    v66 = _swiftEmptyArrayStorage;
    v32 = v7;
    while (1)
    {
      v33 = v31;
      if (!v28)
      {
        break;
      }

LABEL_9:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v24;
      v36 = (*(v24 + 48) + ((v31 << 10) | (16 * v34)));
      v38 = *v36;
      v37 = v36[1];

      v39 = v67;
      sub_10020E794(v38, v37);
      sub_1001A9674(v39, 0, 1, v32);
      v40 = *v64;
      (*v64)(v59, v39, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF534();
        v66 = v44;
      }

      v41 = v66[2];
      if (v41 >= v66[3] >> 1)
      {
        sub_1001DF534();
        v66 = v45;
      }

      v42 = v66;
      v66[2] = v41 + 1;
      v43 = v42 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v41;
      v7 = v32;
      result = v40(v43, v59, v32);
      v24 = v35;
    }

    while (1)
    {
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return result;
      }

      if (v31 >= v29)
      {
        break;
      }

      v28 = *(v25 + 8 * v31);
      ++v33;
      if (v28)
      {
        goto LABEL_9;
      }
    }

    sub_10020EE0C();
    sub_10020EDC4(v46, v47);
    v48 = v65;
    dispatch thunk of SetAlgebra.init()();
    v49 = v66[2];
    if (v49)
    {
      v59 = v24;
      v50 = v48;
      v51 = v61;
      v67 = *(v62 + 16);
      v52 = v66 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v53 = *(v62 + 72);
      v54 = (v62 + 8);
      v55 = v60;
      do
      {
        v67(v51, v52, v7);
        dispatch thunk of SetAlgebra.insert(_:)();
        (*v54)(v55, v7);
        v52 += v53;
        --v49;
      }

      while (v49);

      v48 = v50;
    }

    else
    {
    }

    return (*v64)(v63, v48, v7);
  }

  else
  {
    v68 = _swiftEmptyArrayStorage;
    sub_10020EE0C();
    sub_10020EDC4(v56, v57);
    sub_1001A6C04(&qword_1003B59C0);
    sub_10020ED70(&qword_1003B59C8, &qword_1003B59C0);
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }
}

uint64_t sub_10020E534(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B6388);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1001B2F38(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_10020EC00(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10020E794(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for GameDescription.CompatiblePlatforms();
  sub_1000043C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100004820();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006114();
  v11 = v11 && v10 == a2;
  if (v11)
  {

LABEL_18:

    static GameDescription.CompatiblePlatforms.iOS.getter();
LABEL_19:
    GameDescription.CompatiblePlatforms.rawValue.getter();
    (*(v8 + 8))(v2, v6);
    return GameDescription.CompatiblePlatforms.init(rawValue:)();
  }

  sub_100004804();
  sub_10020EE4C();
  if (v3)
  {
    goto LABEL_18;
  }

  v12 = a1 == 1684107369 && a2 == 0xE400000000000000;
  if (v12 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_18;
  }

  v13 = a1 == 0x656E6F687069 && a2 == 0xE600000000000000;
  if (v13 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_18;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006114();
  if (v11 && v15 == a2)
  {

LABEL_32:

    static GameDescription.CompatiblePlatforms.tvOS.getter();
    goto LABEL_19;
  }

  sub_100004804();
  sub_10020EE4C();
  if (v3)
  {
    goto LABEL_32;
  }

  v17 = a1 == 1936684660 && a2 == 0xE400000000000000;
  if (v17 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_32;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006114();
  if (v11 && v18 == a2)
  {

LABEL_45:

    static GameDescription.CompatiblePlatforms.macOS.getter();
    goto LABEL_19;
  }

  sub_100004804();
  sub_10020EE4C();
  if (v3)
  {
    goto LABEL_45;
  }

  v20 = a1 == 6513005 && a2 == 0xE300000000000000;
  if (v20 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_45;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006114();
  if (v11 && v21 == a2)
  {

LABEL_58:

    static GameDescription.CompatiblePlatforms.watchOS.getter();
    goto LABEL_19;
  }

  sub_100004804();
  sub_10020EE4C();
  if (v3)
  {
    goto LABEL_58;
  }

  v23 = a1 == 0x6863746177 && a2 == 0xE500000000000000;
  if (v23 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_58;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006114();
  if (v11 && v24 == a2)
  {

LABEL_71:

    static GameDescription.CompatiblePlatforms.visionOS.getter();
    goto LABEL_19;
  }

  sub_100004804();
  sub_10020EE4C();
  if (v3)
  {
    goto LABEL_71;
  }

  v26 = a1 == 0x447974696C616572 && a2 == 0xED00006563697665;
  if (v26 || (sub_100004804() & 1) != 0)
  {
    goto LABEL_71;
  }

  v27 = type metadata accessor for GameServicesError();
  sub_10020EDC4(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
  swift_allocError();
  v29 = v28;
  _StringGuts.grow(_:)(24);

  v30._countAndFlagsBits = a1;
  v30._object = a2;
  String.append(_:)(v30);

  *v29 = 0xD000000000000016;
  v29[1] = 0x800000010030C0B0;
  (*(*(v27 - 8) + 104))(v29, enum case for GameServicesError.illegalArgument(_:), v27);
  return swift_willThrow();
}

Swift::Int sub_10020EC00(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v7 = v5 + 56;
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = result & v8;
    v10 = (result & v8) >> 6;
    v11 = *(v7 + 8 * v10);
    v12 = 1 << (result & v8);
    if ((v12 & v11) == 0)
    {
      break;
    }

    v13 = (*(v5 + 48) + 16 * v9);
    v14 = *v13 == a1 && v13[1] == a2;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *v13 = a1;
      v13[1] = a2;
    }

    result = v9 + 1;
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v12 | v11;
    v15 = (*(v5 + 48) + 16 * v9);
    *v15 = a1;
    v15[1] = a2;
    v16 = *(v5 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v5 + 16) = v18;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10020ED70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020EDC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10020EE24()
{

  sub_1001AB174();
}

uint64_t sub_10020EE4C()
{
}

uint64_t sub_10020EE64(void *a1)
{
  sub_100006454(a1, a1[3]);
  v3 = dispatch thunk of MetricsFieldsBuilder.allMetricsFields.getter();
  sub_1001AFB10(0x65735573656D6167, 0xEB00000000644972, v3, &v8);

  v4 = v9;
  sub_1001FCBA8(&v8);
  if (v4 || (v9 = &type metadata for String, *&v8 = 0, *(&v8 + 1) = 0xE000000000000000, sub_10020F3F8(a1, a1[3]), dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)(), result = sub_100005BE0(&v8), !v1))
  {
    sub_100006454(a1, a1[3]);
    v5 = dispatch thunk of MetricsFieldsBuilder.allMetricsFields.getter();
    sub_1001AFB10(0xD000000000000010, 0x800000010030C110, v5, &v8);

    v6 = v9;
    result = sub_1001FCBA8(&v8);
    if (!v6)
    {
      v9 = &type metadata for String;
      *&v8 = 0;
      *(&v8 + 1) = 0xE000000000000000;
      sub_10020F3F8(a1, a1[3]);
      dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();
      return sub_100005BE0(&v8);
    }
  }

  return result;
}

uint64_t sub_10020F018()
{
  v1 = OBJC_IVAR____TtC14GameDaemonCore26GamesMappingFieldsProvider_category;
  v2 = type metadata accessor for MetricsFieldsProviderCategory();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for GamesMappingFieldsProvider()
{
  result = qword_1003B6E08;
  if (!qword_1003B6E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020F108()
{
  result = type metadata accessor for MetricsFieldsProviderCategory();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10020F1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10020F270;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t sub_10020F270()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10020F364@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14GameDaemonCore26GamesMappingFieldsProvider_category;
  v5 = type metadata accessor for MetricsFieldsProviderCategory();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10020F3F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10020F448()
{
  v0 = type metadata accessor for MetricsFieldInclusionRequest();
  sub_10020F4B4(v0, qword_1003C0A98);
  sub_10020F518(v0, qword_1003C0A98);
  return MetricsFieldInclusionRequest.init(rawValue:)();
}

uint64_t *sub_10020F4B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10020F518(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10020F550(uint64_t a1)
{
  result = sub_1001E6E2C(a1);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    sub_100211AF8();

    if (v1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10020F630()
{
  sub_1001A6C04(&qword_1003B6DB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = sub_100215C58();
  *(v0 + 32) = &type metadata for DeniedSuggestionSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_10020F694()
{
  sub_1001A6C04(&qword_1003B6BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  v2 = sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_10020F740()
{
  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70B8, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10020F894()
{
  swift_getKeyPath();
  sub_100006120();
  sub_100215ACC(v0, v1);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10020F954()
{
  swift_getKeyPath();
  sub_100006120();
  sub_100215ACC(v0, v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10020F9F4()
{
  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70B8, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  sub_100215ACC(&qword_1003B6B78, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10020FB2C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_10020FBF8(v4);
}

uint64_t sub_10020FBF8(uint64_t a1)
{
  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70B8, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_10020FCF8()
{
  swift_getKeyPath();
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  sub_100215ACC(&qword_1003B6B80, &type metadata accessor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10020FDD0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v10 = 0xD000000000000012;
  v11 = 0x800000010030C350;
  v4._countAndFlagsBits = sub_10020F728();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10020F734();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 2113568;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  sub_10020F9F4();
  sub_100215ACC(&qword_1003B6B70, &type metadata accessor for Date);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t *sub_10020FF8C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v7 = *v4;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = sub_1001A6C04(&qword_1003B70E8);
  v11 = sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  v22 = v7;
  v23 = v7;
  v24 = v11;
  v25 = v11;
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_100005668(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  if (a1)
  {
    v12 = 0x726579616C70;
  }

  else
  {
    v12 = 0x746361746E6F63;
  }

  if (a1)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  sub_100006454(v5 + 2, v5[5]);
  swift_getKeyPath();
  v22 = v12;
  v23 = v13;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v5 + 2, v5[5]);
  swift_getKeyPath();
  v22 = v19;
  v23 = v20;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v14 = v18;
  v15 = v21;
  (*(v9 + 16))(v18, v21, v8);
  sub_100006454(v5 + 2, v5[5]);
  swift_getKeyPath();
  sub_100215ACC(&qword_1003B6B80, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v16 = *(v9 + 8);
  v16(v15, v8);
  v16(v14, v8);
  return v5;
}

uint64_t sub_1002102E8()
{
  sub_1001A6C04(&qword_1003B6BA0);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C3280;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t *sub_10021049C(__int128 *a1)
{
  v1[5] = sub_1001A6C04(&qword_1003B70E8);
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100005668(v1 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100005BE0((v1 + 2));
  sub_10005671C(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1002105D8()
{
  sub_100005BE0(v0 + 16);
  v1 = OBJC_IVAR____TtCV14GameDaemonCoreP33_59C5B83A364DDF4FB01D7B31902CAB5424DeniedSuggestionSchemaV116DeniedSuggestion___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void *sub_1002106A4(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ModelConfiguration.GroupContainer();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for ModelConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = 1;
    ModelConfiguration.init(isStoredInMemoryOnly:)();
  }

  else
  {
    static ModelConfiguration.GroupContainer.identifier(_:)();
    static ModelConfiguration.CloudKitDatabase.none.getter();
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
    v13 = [objc_opt_self() defaultManager];
    ModelConfiguration.url.getter();
    URL.absoluteString.getter();
    (*(v3 + 8))(v5, v2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 fileExistsAtPath:v14];

    v12 = v15 ^ 1;
  }

  v16 = v29;
  *(v29 + 16) = v12;
  type metadata accessor for ModelContainer();
  sub_1001A6C04(&qword_1003B6BC8);
  v17 = swift_allocObject();
  v27 = xmmword_1002C33A0;
  *(v17 + 16) = xmmword_1002C33A0;
  v18 = type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  v19 = sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  sub_100215A78();
  sub_1001A6C04(&qword_1003B6C68);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  (*(v9 + 16))(v21 + v20, v11, v8);
  v22 = v28;
  v23 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v22)
  {
    (*(v9 + 8))(v11, v8);
    type metadata accessor for FriendSuggestionDenierStorage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16[5] = v23;
    type metadata accessor for ModelContext();
    swift_allocObject();

    ModelContext.init(_:)();
    type metadata accessor for DefaultSerialModelExecutor();
    swift_allocObject();
    v24 = DefaultSerialModelExecutor.init(modelContext:)();
    (*(v9 + 8))(v11, v8);
    v25 = sub_100215ACC(&qword_1003B6C70, &type metadata accessor for DefaultSerialModelExecutor);
    v16[3] = v24;
    v16[4] = v25;
  }

  return v16;
}

uint64_t sub_100210B7C(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B70F0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = sub_1001A6C04(&qword_1003B70F8);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_1001A6C04(&qword_1003B7100);
  sub_1001A9674(v4, 1, 1, v8);
  v9 = type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  v10 = sub_10020F728();
  v12 = v11;
  v19[1] = a1;
  v13 = sub_10020F734();
  v23 = v10;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v9;
  Predicate.init(_:)();

  sub_1001A9674(v4, 0, 1, v8);
  FetchDescriptor.predicate.setter();
  FetchDescriptor.fetchLimit.setter();
  v20 = v5;
  FetchDescriptor.includePendingChanges.setter();
  type metadata accessor for FriendSuggestionDenierStorage();
  sub_100215ACC(&qword_1003B70D8, type metadata accessor for FriendSuggestionDenierStorage);
  ModelActor.modelContext.getter();
  v15 = v21;
  v16 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v15)
  {
    goto LABEL_2;
  }

  v18 = v16;

  if (!v18)
  {
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.insert<A>(_:)();

    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
LABEL_2:
    (*(v22 + 8))(v7, v20);
  }

  return (*(v22 + 8))(v7, v20);
}

uint64_t sub_100210EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_1001A6C04(&qword_1003B6CA0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_1001A6C04(&qword_1003B7108);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_1001A6C04(&qword_1003B7110);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_1001A6C04(&qword_1003B7118);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = __chkstk_darwin(v16);
  v37 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v35 = *a1;
  v36 = v33 - v20;
  sub_1001AC7E4(&qword_1003B7120, &qword_1003B7108);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  static PredicateExpressions.build_Arg<A>(_:)();
  v39 = sub_1001AC7E4(&qword_1003B7128, &qword_1003B7110);
  sub_1001AC7E4(&qword_1003B6CD8, &qword_1003B6CA0);
  v22 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = v37;
  v26 = v45;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_1001A6C04(&qword_1003B7130);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1002157A0();
  sub_100005668(v28);
  sub_1001AC7E4(&qword_1003B7158, &qword_1003B7118);
  v29 = v36;
  v30 = v40;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_100211484(uint64_t a1)
{
  type metadata accessor for FriendSuggestionDenierStorage();
  sub_100215ACC(&qword_1003B70D8, type metadata accessor for FriendSuggestionDenierStorage);
  ModelActor.modelContext.getter();
  v2 = sub_1001E6E2C(a1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      ModelActor.modelContext.getter();
      dispatch thunk of ModelContext.save()();
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
    sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
    dispatch thunk of ModelContext.insert<A>(_:)();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100211628()
{
  v1 = sub_1001A6C04(&qword_1003B70F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  type metadata accessor for FriendSuggestionDenierStorage();
  sub_100215ACC(&qword_1003B70D8, type metadata accessor for FriendSuggestionDenierStorage);
  ModelActor.modelContext.getter();
  type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  v4 = sub_1001A6C04(&qword_1003B7100);
  sub_1001A9674(v3, 1, 1, v4);
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  sub_1001A974C(v3, &qword_1003B70F0);

  if (!v0)
  {
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
  }

  return result;
}

uint64_t sub_1002117E8()
{
  v1 = sub_1001A6C04(&qword_1003B70F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1001A6C04(&qword_1003B70F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1001A6C04(&qword_1003B7100);
  sub_1001A9674(v3, 1, 1, v8);
  type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v16 = &_swiftEmptySetSingleton;
  v17 = &_swiftEmptySetSingleton;
  type metadata accessor for FriendSuggestionDenierStorage();
  sub_100215ACC(&qword_1003B70D8, type metadata accessor for FriendSuggestionDenierStorage);
  v9 = ModelActor.modelContext.getter();
  v10 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v0)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v11 = v10;

    sub_10020F550(v11);

    v14 = v16;
    v13 = v17;
    v15 = objc_allocWithZone(type metadata accessor for FriendSuggestionDenyList());

    v9 = sub_100211F20(v13, v14);
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t sub_100211AF8()
{
  v0 = sub_10020F728();
  v2 = v1;
  v3 = v0 == 0x746361746E6F63 && v1 == 0xE700000000000000;
  if (v3 || (v4 = v0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v5 = sub_10020F734();
    v7 = v6;
    v8 = v5;
    v9 = v7;
LABEL_7:
    sub_1001E8870(v19, v8, v9);
  }

  if (v4 == 0x726579616C70 && v2 == 0xE600000000000000)
  {

    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_15:
    v16 = sub_10020F734();
    v18 = v17;
    v8 = v16;
    v9 = v18;
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v19, "Unknown kind: ");
  HIBYTE(v19[1]) = -18;
  v13._countAndFlagsBits = sub_10020F728();
  String.append(_:)(v13);

  v14 = v19[1];
  sub_100215470();
  swift_allocError();
  *v15 = v19[0];
  v15[1] = v14;
  v15[2] = 0;
  return swift_willThrow();
}

uint64_t sub_100211CC8()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100211CF0()
{
  v0 = sub_100211CC8();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100211D20()
{
  v0 = type metadata accessor for FriendSuggestionDenierStorage();
  v1 = sub_100215ACC(&qword_1003B70D8, type metadata accessor for FriendSuggestionDenierStorage);

  return ModelActor.unownedExecutor.getter(v0, v1);
}

id sub_100211DC4()
{
  v0 = objc_allocWithZone(type metadata accessor for FriendSuggestionDenyList());
  result = sub_100211F20(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  qword_1003C0AB8 = result;
  return result;
}

id sub_100211E04()
{
  if (qword_1003B54F0 != -1)
  {
    sub_100004838();
  }

  v1 = qword_1003C0AB8;

  return v1;
}

Class sub_100211EB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_100211F20(uint64_t a1, uint64_t a2)
{
  sub_100085ECC();
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___GKFriendSuggestionDenyList_contactIDs] = v3;
  *&v2[OBJC_IVAR___GKFriendSuggestionDenyList_playerIDs] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id FriendSuggestionDenier.init()()
{
  v1 = [objc_allocWithZone(GKContactDenier) init];
  v2 = [v0 initInMemory:0 legacyDenier:v1];

  return v2;
}

id FriendSuggestionDenier.init(inMemory:legacyDenier:)(char a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  type metadata accessor for FriendSuggestionDenierStorage();
  swift_allocObject();
  v7 = sub_1002106A4(a1);
  *&v3[OBJC_IVAR___GKFriendSuggestionDenier_storage] = v7;
  if (*(v7 + 16) == 1)
  {

    sub_100212258(a2, v7);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

uint64_t sub_100212258(void *a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 deniedContactIdentifiers];
  sub_100215960();
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1001E3B20(v12);
  static GKLog.general.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v13 + 16);

    _os_log_impl(&_mh_execute_header, v14, v15, "Importing %ld denied contact IDs", v16, 0xCu);
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  if (!*(v13 + 16))
  {
  }

  v17 = type metadata accessor for TaskPriority();
  sub_1001A9674(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;
  v18[5] = a2;
  v18[6] = a1;

  v19 = a1;
  sub_100212C20(0, 0, v6, &unk_1002C6030, v18);

  return sub_1001A974C(v6, &qword_1003B60F0);
}

uint64_t sub_10021254C()
{
  v1 = sub_100005540();
  v2 = sub_1001A6C04(v1);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_1001A9674(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_100212C20(0, 0, v4, &unk_1002C5FC8, v6);

  return sub_1001A974C(v4, &qword_1003B60F0);
}

uint64_t sub_100212648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;

  return FriendSuggestionDenier.deleteAll()();
}

uint64_t FriendSuggestionDenier.deleteAll()()
{
  sub_100005528();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  sub_100215D04(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10021279C()
{
  sub_1000057FC();
  v2 = *(*(v1 + 16) + OBJC_IVAR___GKFriendSuggestionDenier_storage);
  *(v1 + 64) = v2;
  if (v2)
  {
    type metadata accessor for FriendSuggestionDenierStorage();
    sub_100215CB4();
    sub_100215ACC(v3, v4);
    sub_100085ECC();

    sub_100005540();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4204();
    v5 = sub_1001E3D3C();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    static GKLog.general.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (sub_100006A60(v9))
    {
      *sub_100005B50() = 0;
      sub_100215CCC(&_mh_execute_header, v10, v11, "Can not clear deny list because storage has failed to initialize");
      sub_1000043D8();
    }

    sub_100215D2C();
    v12(v0);

    sub_1000046F8();

    return v13();
  }
}

uint64_t sub_1002128FC()
{
  sub_1000057FC();
  sub_100211628();
  *(v0 + 72) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100212980()
{
  sub_1000057FC();
  static GKLog.general.getter();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = sub_100005B50();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Friend suggestion deny list has been cleared", v2, 2u);
    sub_1000043D8();
  }

  else
  {
  }

  sub_100215D2C();
  v3(v0);

  sub_1000046F8();

  return v4();
}

uint64_t sub_100212A88()
{
  sub_1001AFA50();
  static GKLog.general.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to clear deny list: %@", v3, 0xCu);
    sub_1001A974C(v4, &unk_1003B6180);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_1000046F8();

  return v6();
}

uint64_t sub_100212C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1001AF7C0(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1001A969C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1001A974C(v11, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100212EFC()
{
  sub_100005528();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  type metadata accessor for Date();
  v1[5] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100212F88()
{
  sub_1000057FC();

  static Date.now.getter();
  type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  swift_allocObject();
  *(v0 + 48) = sub_1000062C8(0);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100215D18(v1);

  return sub_100213184(v2);
}

uint64_t sub_100213054()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {

    sub_1000046F8();

    return v9();
  }
}

uint64_t sub_100213184(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002131A4, 0, 0);
}

uint64_t sub_1002131A4()
{
  sub_1000057FC();
  v1 = *(*(v0 + 24) + OBJC_IVAR___GKFriendSuggestionDenier_storage);
  *(v0 + 32) = v1;
  if (v1)
  {
    type metadata accessor for FriendSuggestionDenierStorage();
    sub_100215CB4();
    sub_100215ACC(v2, v3);
    sub_100085ECC();

    sub_100005540();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4204();
    v4 = sub_1001E3D3C();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100215470();
    swift_allocError();
    *v7 = xmmword_1002C4A80;
    *(v7 + 16) = 0;
    swift_willThrow();
    sub_1000046F8();

    return v8();
  }
}

uint64_t sub_1002132C4()
{
  sub_1000057FC();
  sub_100210B7C(*(v0 + 16));
  *(v0 + 40) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10021334C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1002133A8()
{
  sub_1000057FC();
  v1 = *(v0 + 40);
  sub_100215470();
  swift_allocError();
  *v2 = 0;
  v2[1] = 0;
  v2[2] = v1;
  swift_willThrow();

  sub_1000046F8();

  return v3();
}

uint64_t sub_100213460(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100215CB0;

  return sub_100212EFC();
}

uint64_t sub_100213534()
{
  sub_100005528();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  type metadata accessor for Date();
  v1[5] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002135C0()
{
  sub_1000057FC();

  static Date.now.getter();
  type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  swift_allocObject();
  *(v0 + 48) = sub_1000062C8(1);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100215D18(v1);

  return sub_100213184(v2);
}

uint64_t sub_10021368C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {

    sub_1000046F8();

    return v9();
  }
}

uint64_t sub_1002137BC()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100213840(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_10020D430();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_10028022C(a6, v10);
}

uint64_t sub_1002138BC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100213990;

  return sub_100213534();
}

uint64_t sub_100213990()
{
  sub_1001AFA50();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100213B24()
{
  sub_100005528();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  sub_100215D04(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100213BDC()
{
  sub_1000057FC();
  v1 = *(v0[2] + OBJC_IVAR___GKFriendSuggestionDenier_storage);
  v0[7] = v1;
  if (v1)
  {
    type metadata accessor for FriendSuggestionDenierStorage();
    sub_100215CB4();
    sub_100215ACC(v2, v3);
    sub_100085ECC();

    sub_100005540();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4204();
    v4 = sub_1001E3D3C();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    static GKLog.general.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_100006A60(v8))
    {
      *sub_100005B50() = 0;
      sub_100215CCC(&_mh_execute_header, v9, v10, "Can not fetch deny list because storage has failed to initialize");
      sub_1000043D8();
    }

    v11 = v0[3];

    v12 = sub_100005540();
    v13(v12);
    if (qword_1003B54F0 != -1)
    {
      sub_100004838();
    }

    v14 = qword_1003C0AB8;
    sub_100085ECC();

    v15 = v0[1];

    return v15(v11);
  }
}

uint64_t sub_100213D74()
{
  sub_1000057FC();
  *(v0 + 64) = sub_1002117E8();
  *(v0 + 72) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100213DF8()
{
  sub_100005528();

  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100213E6C()
{
  sub_1001AFA50();
  static GKLog.general.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch deny list: %@", v3, 0xCu);
    sub_1001A974C(v4, &unk_1003B6180);
    sub_1000043D8();
    sub_1000043D8();
  }

  v6 = *(v0 + 24);

  v7 = sub_100005540();
  v8(v7);
  if (qword_1003B54F0 != -1)
  {
    sub_100004838();
  }

  v9 = qword_1003C0AB8;
  sub_100085ECC();

  v10 = *(v0 + 8);

  return v10(v6);
}

uint64_t sub_10021403C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002140E4;

  return sub_100213B24();
}

uint64_t sub_1002140E4()
{
  sub_1000057FC();
  v2 = v1;
  sub_1000057F0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100004410();
  *v7 = v6;

  (v4)[2](v4, v2);
  _Block_release(v4);

  sub_1000046F8();

  return v8();
}

uint64_t sub_10021424C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_1001F7598();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_10028022C(a5, v8);
}

uint64_t sub_1002142B4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10021435C;

  return FriendSuggestionDenier.deleteAll()();
}

uint64_t sub_10021435C()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v6();
}

uint64_t sub_100214480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002145AC, 0, 0);
}

uint64_t sub_1002145AC()
{
  sub_1001AFA50();
  v1 = v0[11];
  v2 = v0[2];
  static Date.now.getter();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v0[12] = sub_100254A90(sub_100215A58, v3, v2);
  v0[13] = 0;

  type metadata accessor for FriendSuggestionDenierStorage();
  sub_100215CB4();
  sub_100215ACC(v4, v5);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1001E4204();
  v6 = sub_1001E3D3C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002146A0()
{
  sub_1000057FC();
  v1 = v0[13];
  sub_100211484(v0[12]);
  v0[14] = v1;

  sub_1001B6A34();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100214730()
{
  sub_1001AFA50();
  static GKLog.general.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100006A60(v2))
  {
    *sub_100005B50() = 0;
    sub_100215CCC(&_mh_execute_header, v3, v4, "Clearing legacy denier after successfully importing from it");
    sub_1000043D8();
  }

  v5 = *(v0 + 32);

  v6 = sub_100005540();
  v7(v6);
  [v5 clearFriendSuggestionsDenyList];
  v8 = sub_100215CEC();
  v9(v8);

  sub_1000046F8();

  return v10();
}

uint64_t sub_100214834()
{
  sub_1001AFA50();
  static GKLog.general.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to import denied contact IDs: %@", v3, 0xCu);
    sub_1001A974C(v4, &unk_1003B6180);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v6 = sub_100215CEC();
  v7(v6);

  sub_1000046F8();

  return v8();
}

uint64_t *sub_1002149C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  (*(v11 + 16))(v8, a2);
  type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion();
  swift_allocObject();

  result = sub_10020FF8C(0, v10, v9, v8);
  *a3 = result;
  return result;
}

Swift::Int sub_100214AD4()
{
  Hasher.init(_seed:)();
  sub_100215ACC(&qword_1003B70C0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_100214B84(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10020AE7C(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001E07C4(v1 + 16, v3);
  return sub_100214C00;
}

void sub_100214C00(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001E07C4(*a1, v2 + 40);
    swift_beginAccess();
    sub_100005BE0(v3 + 16);
    sub_10005671C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_100005BE0(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100005BE0(v3 + 16);
    sub_10005671C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100214D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10020F734();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100214D80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100215ACC(&qword_1003B70D0, type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100214E00()
{
  sub_1000057FC();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100004400(v3);
  *v4 = v5;
  v4[1] = sub_1001AF540;

  return v7(v1);
}

uint64_t type metadata accessor for DeniedSuggestionSchemaV1.DeniedSuggestion()
{
  result = qword_1003B6EE0;
  if (!qword_1003B6EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100214F40()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100215270()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_1001F71B8(v1);

  return v4(v3);
}

uint64_t sub_100215300()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1001F7598();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100215338()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_1001F71B8(v1);

  return v4(v3);
}

uint64_t sub_1002153C8()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_100005540();

  return v4(v3);
}

unint64_t sub_100215470()
{
  result = qword_1003B70E0;
  if (!qword_1003B70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B70E0);
  }

  return result;
}

uint64_t sub_1002154C4()
{
  _Block_release(*(v0 + 24));

  v1 = sub_10020D430();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100215504()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_100005540();

  return v4(v3);
}

uint64_t sub_1002155AC()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  sub_1001AF9FC();

  return sub_100212648();
}

uint64_t sub_10021564C()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

uint64_t sub_1002156F0()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

unint64_t sub_1002157A0()
{
  result = qword_1003B7138;
  if (!qword_1003B7138)
  {
    sub_1001A6C4C(&qword_1003B7130);
    sub_100215824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7138);
  }

  return result;
}

unint64_t sub_100215824()
{
  result = qword_1003B7140;
  if (!qword_1003B7140)
  {
    sub_1001A6C4C(&qword_1003B7118);
    sub_1002158B0();
    sub_10020CB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7140);
  }

  return result;
}

unint64_t sub_1002158B0()
{
  result = qword_1003B7148;
  if (!qword_1003B7148)
  {
    sub_1001A6C4C(&qword_1003B7110);
    sub_1001AC7E4(&qword_1003B7150, &qword_1003B7108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7148);
  }

  return result;
}

unint64_t sub_100215960()
{
  result = qword_1003B6360;
  if (!qword_1003B6360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B6360);
  }

  return result;
}

uint64_t sub_1002159A4()
{
  sub_1001AFA50();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_100004400(v5);
  *v6 = v7;
  v6[1] = sub_1001AF9F8;
  v8 = sub_1001AF9FC();

  return sub_100214480(v8, v9, v1, v2, v3, v4);
}

unint64_t sub_100215A78()
{
  result = qword_1003B7160;
  if (!qword_1003B7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7160);
  }

  return result;
}

uint64_t sub_100215ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100215B24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for LibraryBagObserver.Configuration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100215B5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100215BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100215C18(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100215C58()
{
  result = qword_1003B7168;
  if (!qword_1003B7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7168);
  }

  return result;
}

void sub_100215CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100215D40()
{
  NWPathMonitor.cancel()();

  return _swift_deallocClassInstance(v0, 27, 7);
}

id MetricsIntBucketer.init(buckets:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (*(a1 + 16))
  {
    v5 = ObjectType;
    v9 = a1;

    sub_100216018(&v9);

    if (*(v9 + 16))
    {
      v6 = *(v9 + 32);
      sub_1002169C4(0, 1);
      *&v2[OBJC_IVAR___GKMetricsIntBucketer_firstBucket] = v6;
      *&v2[OBJC_IVAR___GKMetricsIntBucketer_buckets] = v9;
      v8.receiver = v2;
      v8.super_class = v5;
      return objc_msgSendSuper2(&v8, "init");
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

Swift::Int __swiftcall MetricsIntBucketer.clamp(_:)(Swift::Int a1)
{
  v2 = *(v1 + OBJC_IVAR___GKMetricsIntBucketer_firstBucket);
  if (v2 >= a1)
  {
    return *(v1 + OBJC_IVAR___GKMetricsIntBucketer_firstBucket);
  }

  v3 = *(v1 + OBJC_IVAR___GKMetricsIntBucketer_buckets);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  do
  {
    v6 = v2;
    if (!v4)
    {
      break;
    }

    v2 = *v5;
    if (*v5 == a1)
    {
      return a1;
    }

    ++v5;
    --v4;
  }

  while (v2 <= a1);
  return v6;
}

Swift::Int sub_100216018(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100236A74(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100216084(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100216084(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1002161D4(v7, v8, a1, v4);
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
    return sub_100216178(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100216178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1002161D4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF478();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1001DF478();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1002167A0((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_100216674(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_100216674(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100236808(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1002167A0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1002167A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1000566FC(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1000566FC(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_100216914(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = *v3;
  result = sub_1001E6DF0(*v3);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v6;
  if (__OFSUB__(a2, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1001E6E2C(v7);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001EB29C(result, 1);

  return sub_100216BD4(v6, a2, 1, a3);
}

uint64_t sub_1002169C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1001EB340(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1000566FC((v8 + 32 + 8 * a2), v9 - a2, (v8 + 32 + 8 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100216AA4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1001EB358(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_1001B1578(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100216BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for NWProtocolOptions();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_1000566FC((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}