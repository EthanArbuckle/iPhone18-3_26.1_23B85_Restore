void sub_100021370(uint64_t a1)
{
  v6 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v7 = sub_10000D368(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000EDF0();
  sub_100022930();
  __chkstk_darwin(v10);
  sub_10002284C();
  v11 = type metadata accessor for Date();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000EDF0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v33 - v21;
  sub_1000215B4();
  if (!v2)
  {
    v33[5] = v1;
    v33[1] = a1;
    sub_10006A564(v4);
    if (sub_100022484(v4, 1, v11) == 1)
    {
      sub_100022560(v4, &unk_10009A8C0, &unk_100077D50);
    }

    else
    {
      v23 = *(v14 + 32);
      v24 = sub_10000D884();
      v25(v24);
      Date.init()();
      Date.distance(to:)();
      v27 = v26;
      v28 = *(v14 + 8);
      v28(v19, v11);
      sub_1000224AC();
      v29 = sub_10006A688();
      v28(v22, v11);
      if (v29 >= v27)
      {
        return;
      }
    }

    Date.init()();
    sub_100022A9C();
    sub_1000223E8(v30, v31, v32, v11);
    sub_10006A420(v3);
    sub_10001D85C();
  }
}

uint64_t sub_1000215B4()
{
  v1 = *sub_10001355C((v0 + 64), *(v0 + 88));
  result = sub_100057418();
  if ((result & 1) == 0)
  {
    type metadata accessor for RemotePairingError();
    sub_100022628(&qword_100099850, &type metadata accessor for RemotePairingError);
    sub_1000229C4();
    static RemotePairingError.unlockRequired.getter();
    return swift_willThrow();
  }

  return result;
}

void sub_100021650(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_10004FEF0(v2, v4);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v53 = a1;
    v8 = *(a1 + 24);
    sub_100013414(&qword_10009B0C0, &unk_100077550);
    sub_100022B4C();
    sub_100022B2C();
    sub_10000E8A4((*(a1 + 56) + 32 * v7), &v51);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  sub_100022560(&v51, &qword_100099A00, &qword_100077540);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10004FEF0(v9, v10);
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    v53 = a1;
    v14 = *(a1 + 24);
    sub_100013414(&qword_10009B0C0, &unk_100077550);
    sub_100022B4C();
    sub_100022B2C();
    sub_10000E8A4((*(a1 + 56) + 32 * v13), &v51);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  sub_100022560(&v51, &qword_100099A00, &qword_100077540);
  v15 = static os_log_type_t.default.getter();
  v16 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v15))
  {
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004C55C(v18, v19, a1, &v51);

    sub_100013414(&qword_100099A00, &qword_100077540);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000C600(v20, v21, &v53);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004C55C(v23, v24, a1, &v51);

    v25 = String.init<A>(describing:)();
    v27 = sub_10000C600(v25, v26, &v53);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v15, "Migrating storage class of keychain item (account=%s, service=%s)", v17, 0x16u);
    swift_arrayDestroy();
    sub_100015FBC();

    sub_100015FBC();
  }

  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v29;
  type metadata accessor for CFString(0);
  *(inited + 72) = v30;
  *(inited + 48) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v31 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100022AA8();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100022AA8();
  v33 = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = sub_10001ADC8();
  v36 = SecItemUpdate(v34, v35);

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    v40 = objc_allocWithZone(NSError);
    v41 = sub_1000228D8(v37, v39, v36);
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v42))
    {
      sub_10000D054();
      v43 = swift_slowAlloc();
      sub_10000CCCC();
      v44 = swift_slowAlloc();
      *&v51 = v44;
      *v43 = 136446210;
      v45 = v41;
      v46 = [v45 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000C600(v47, v49, &v51);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v16, v42, "Failed to migrate keychain item accessibility: %{public}s", v43, 0xCu);
      sub_10000CADC(v44);
      sub_100015FBC();

      sub_100015FBC();
    }

    swift_willThrow();
  }
}

void sub_100021B70()
{
  if (RPIdentity)
  {
    sub_10001E884();
    v1 = v0;
    v2 = sub_10004997C(v0);
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {
LABEL_12:

        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_10000D884();
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (CUPairedPeer.verify(authTag:data:type:)())
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100021CC0()
{
  v1 = *(v0 + 16);

  sub_10000CADC((v0 + 24));
  sub_10000CADC((v0 + 64));

  return v0;
}

uint64_t sub_100021CF8()
{
  sub_100021CC0();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t getEnumTagSinglePayload for SystemKeychainPairingManager.PeersChangedEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemKeychainPairingManager.PeersChangedEvent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100021EC8()
{
  result = qword_1000999D8;
  if (!qword_1000999D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999D8);
  }

  return result;
}

void sub_100022030(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002203C@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_1000221A8(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a4 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return result;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1000221A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_100022260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000222C4(void *a1)
{
  v1 = [a1 acl];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100022330(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100022390(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setSecretKey:isa];
}

unint64_t sub_100022420()
{
  result = qword_1000999F8;
  if (!qword_1000999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999F8);
  }

  return result;
}

unint64_t sub_1000224AC()
{
  result = qword_10009A8D0;
  if (!qword_10009A8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A8D0);
  }

  return result;
}

uint64_t sub_1000224F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013414(a2, a3);
  sub_10000CC04(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000225B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022670(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000226F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002273C()
{
  sub_10000EC4C(v1, v2);
  sub_10000EC4C(v3, v0);

  return sub_10000EC4C(v1, v2);
}

id sub_10002277C()
{

  return sub_10004FCC0(v1, v2, v0, 0);
}

BOOL sub_1000227CC()
{
  v4 = v1;
  v5 = *(v0 + 136);

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v2);
}

uint64_t sub_10002285C(uint64_t a1, uint64_t a2)
{
  *(v4 - 104) = v3;
  *(v4 - 128) = a1;
  *(v4 - 120) = a2;
  sub_10000E8A4((v4 - 128), (v2 + 96));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000228A0()
{
  v3 = *(*(*(v0 + 96) + 48) + 16 * v1 + 8);
}

id sub_1000228D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10004FCC0(a1, a2, a3, 0);
}

uint64_t sub_100022900()
{
  v2 = *(v1 + 8);
  result = *(v0 + 192);
  v4 = *(v0 + 152);
  return result;
}

double sub_100022910()
{
  result = 0.0;
  v2 = (v0 - 128);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

_OWORD *sub_1000229AC()
{

  return sub_10000E8A4((v0 - 240), (v0 - 160));
}

uint64_t sub_1000229C4()
{

  return swift_allocError();
}

_OWORD *sub_1000229DC()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_10000E8A4(v4, (v2 - 240));
}

_OWORD *sub_1000229F8()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_10000E8A4(v4, (v2 - 128));
}

uint64_t sub_100022A14()
{

  return swift_dynamicCast();
}

uint64_t sub_100022A30()
{

  return swift_dynamicCast();
}

id sub_100022A48(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100022A60()
{
  v2 = *(v0 + 160);

  return swift_beginAccess();
}

uint64_t sub_100022A84()
{
  v3 = *(v0 + 48);

  return sub_10000DF50(v3, v1);
}

void sub_100022AE8()
{
  v2 = *(*(v1 + 16) + 16);
  v3 = *(v0 + 192);
  v4 = *(v0 + 120);
}

uint64_t sub_100022AFC()
{
  result = *(v0 + 168);
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_100022B2C()
{
  v3 = *(*(*(v1 - 72) + 48) + 16 * v0 + 8);
}

BOOL sub_100022B4C()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100022B6C()
{

  return type metadata accessor for UUID();
}

uint64_t sub_100022B8C(uint64_t a1)
{
  *(v1 - 192) = a1;

  return __DataStorage._offset.getter();
}

uint64_t sub_100022BA4(unint64_t a1)
{
  v3 = static os_log_type_t.default.getter();
  v4 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v3);
  if (result)
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100024E88(a1);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C600(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v13 = v1[3];
    v14 = v1[4];
    sub_100024E88(v1[2]);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000C600(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v3, "DeviceInitiatedPairingService state changed %{public}s -> %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  return result;
}

unint64_t sub_100022D20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_100024E88(a1);
  sub_100022BA4(v5);
  sub_100024F84(v5);

  return sub_100024F84(a1);
}

void sub_100022DB0()
{
  sub_10000D060();
  v32 = v1;
  v33 = v0;
  v3 = v2;
  v31 = sub_100013414(&qword_100099B48, &qword_100077648);
  sub_10000CC04(v31);
  v5 = *(v4 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v6);
  v7 = sub_100013414(&qword_100099488, &unk_100077650);
  sub_10000CC04(v7);
  v9 = *(v8 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v10);
  v12 = (&v28 - v11);
  v13 = type metadata accessor for XPCDictionary();
  v14 = sub_10000CBBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000EDF0();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v28 - v23;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100024F24(v3, v12, &qword_100099488, &unk_100077650);
    v30 = *v12;
    (*(v16 + 32))(v24, v12 + *(v7 + 48), v13);
    XPCDictionary.entitlements.getter();
    sub_100024A1C();
    v29 = *(v16 + 8);
    v29(v21, v13);
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    sub_10000D090();
    v25 = swift_allocObject();
    v26 = v32;
    *(v25 + 16) = v33;
    *(v25 + 24) = v26;

    sub_100023274(v27, v30, sub_100024D34, v25);
    v29(v24, v13);
  }

  sub_1000135A0();
}

uint64_t sub_100023148(void (*a1)(char *))
{
  v2 = sub_100013414(&qword_100099B48, &qword_100077648);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  EmptyResponse.init()();
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_100022560(v5, &qword_100099B48, &qword_100077648);
}

uint64_t sub_100023210()
{
  v1 = *(*(v0 + 48) + 24);
  dispatch thunk of XPCConnection.activate()();
  static os_log_type_t.debug.getter();

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100023274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  swift_allocObject();

  v9 = sub_100041C64(a2, a3, a4);
  v10 = *(v5 + 40);
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  sub_10000CBD0();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v12 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;

  dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

  sub_100023594(v9);
}

uint64_t sub_1000233F4(uint64_t a1)
{
  v2 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100024F24(a1, v5, &unk_1000994A0, &unk_100077090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        static os_log_type_t.info.getter();
      }

      else
      {
        static os_log_type_t.error.getter();
      }

      os_log(_:dso:log:_:_:)();
      sub_100022560(v5, &unk_1000994A0, &unk_100077090);
      sub_100023D60();
    }
  }

  return result;
}

uint64_t sub_100023594(uint64_t a1)
{
  v2 = type metadata accessor for RemotePairingError();
  v3 = sub_10000CC04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v6 = type metadata accessor for BonjourBrowser.Mode();
  v7 = sub_10000CBBC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for BonjourService();
  v16 = sub_10000CBBC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v23 = v22 - v21;
  v48 = v1;
  v24 = v1[2];
  if (v24)
  {
    if (v24 == 1)
    {
      static RemotePairingError.invalidOperation.getter();
      sub_100024D84(&qword_100099850, &type metadata accessor for RemotePairingError);
      swift_allocError();
      sub_100024D84(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      Error<>.init(_:_:)();
      return swift_willThrow();
    }

    else
    {
      v34 = v1[3];
      v33 = v1[4];
      v49[0] = v1[2];

      sub_100024E88(v24);
      sub_10006480C(&v50, a1);

      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 64);
      v38 = (v35 + 63) >> 6;

      for (i = 0; v37; result = )
      {
        v40 = i;
LABEL_14:
        v41 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v42 = *(*(v34 + 56) + ((v40 << 9) | (8 * v41)));

        sub_100041E08();
      }

      while (1)
      {
        v40 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v40 >= v38)
        {

          sub_100022D20(v49[0], v34, v33);
        }

        v37 = *(v34 + 64 + 8 * v40);
        ++i;
        if (v37)
        {
          i = v40;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
    type metadata accessor for BonjourBrowser();
    (*(v18 + 104))(v23, enum case for BonjourService.pairableHost(_:), v15);
    [objc_allocWithZone(CUNetLinkManager) init];
    sub_100022260((v1 + 7), v49);
    (*(v9 + 104))(v14, enum case for BonjourBrowser.Mode.onDemand(_:), v6);
    v26 = BonjourBrowser.__allocating_init(service:includePeerToPeer:netLinkManager:pairingManager:mode:)();
    sub_10000CBD0();
    v27 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v28 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;

    dispatch thunk of BonjourBrowser.resultsChangedHandler.setter();

    sub_100013414(&unk_100099B70, &unk_100077678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077580;
    *(inited + 32) = a1;
    if (sub_10004997C(inited))
    {

      sub_100057B6C(inited);
      v32 = v31;
    }

    else
    {
      swift_setDeallocating();

      sub_100024D3C();
      v32 = &_swiftEmptySetSingleton;
    }

    type metadata accessor for UUID();
    type metadata accessor for DiscoveredPairableHost(0);
    sub_100025064();
    sub_100024D84(v43, v44);
    v45 = Dictionary.init(dictionaryLiteral:)();

    sub_100022D20(v32, v45, v26);
    v46 = v48[5];
    dispatch thunk of BonjourBrowser.start(queue:)();
  }

  return result;
}

uint64_t sub_100023B18()
{
  v0 = type metadata accessor for DiscoveredBonjourAdvert();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BonjourBrowser.Change.Kind();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    BonjourBrowser.Change.kind.getter();
    v11 = (*(v6 + 88))(v9, v5);
    if (v11 == enum case for BonjourBrowser.Change.Kind.addedOrUpdated(_:))
    {
      BonjourBrowser.Change.advert.getter();
      sub_10002403C();
    }

    else
    {
      if (v11 != enum case for BonjourBrowser.Change.Kind.lost(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      BonjourBrowser.Change.advert.getter();
      sub_100024658();
    }

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_100023D60()
{
  sub_10000D060();
  v1 = *(*(sub_100013414(&qword_100099B50, &qword_1000779B0) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v2);
  v4 = v27 - v3;
  v5 = sub_100013414(&qword_100099B60, &qword_100077668);
  v6 = sub_10000CC04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000EDF0();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  sub_100041DCC();
  v15 = v0[2];
  if (v15 >= 2)
  {
    v17 = v0[3];
    v16 = v0[4];
    v28 = v17;
    v29 = v15;

    sub_1000674F8();

    v18 = v29;
    if (sub_100023FFC(v29))
    {
      v27[1] = v18;
      v27[2] = v16;
      v27[3] = v0;
      dispatch thunk of BonjourBrowser.cancel()();
      while (*(v17 + 16))
      {
        v19 = *(v5 + 48);
        v20 = sub_100024DCC(v17);
        v22 = v21;
        v24 = v23;
        sub_100013414(&qword_100099B68, &qword_100077670);
        Dictionary._Variant.remove(at:)();
        sub_100024E0C(v20, v22, v24 & 1);
        sub_100024E18(v11, v14);
        v25 = *&v14[*(v5 + 48)];
        v26 = type metadata accessor for DiscoveredBonjourAdvert();
        sub_1000223E8(v4, 1, 1, v26);
        sub_10002A048();
        sub_100022560(v4, &qword_100099B50, &qword_1000779B0);
        sub_10002A750();
        sub_100022560(v14, &qword_100099B60, &qword_100077668);
        v17 = v28;
      }

      sub_100022D20(0, 0, 0);
    }

    else
    {

      sub_100022D20(v18, v17, v16);
    }
  }

  sub_1000135A0();
}

BOOL sub_100023FFC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_10002403C()
{
  sub_10000D060();
  v2 = v1;
  v78 = v3;
  v4 = type metadata accessor for DiscoveredBonjourAdvert();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = *(*(sub_100013414(&qword_100099B50, &qword_1000779B0) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v14);
  v16 = v73 - v15;
  v17 = type metadata accessor for UUID();
  v18 = sub_10000CBBC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000EDF0();
  __chkstk_darwin(v23);
  v27 = v73 - v26;
  if (v0[2] < 2uLL)
  {
    goto LABEL_2;
  }

  v76 = v25;
  v77 = v24;
  v29 = v0[3];
  v28 = v0[4];

  if (v28 == v2)
  {
    v74 = v0;
    v75 = v30;

    v32 = v78;
    DiscoveredBonjourAdvert.identifier.getter();
    v33 = sub_10004C624(v27, v29);
    v35 = *(v20 + 8);
    v34 = (v20 + 8);
    v36 = v27;
    v37 = v35;
    v35(v36, v77);
    if (v33)
    {
      (*(v7 + 16))(v16, v32, v4);
      sub_1000223E8(v16, 0, 1, v4);
      sub_10002A048();

      sub_100022560(v16, &qword_100099B50, &qword_1000779B0);

LABEL_2:
      sub_1000135A0();
      return;
    }

    v73[1] = v34;
    (*(v7 + 16))(v12, v32, v4);
    v38 = v74;
    sub_100022260((v74 + 7), v81);
    v39 = v38[5];
    v40 = type metadata accessor for DiscoveredPairableHost(0);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = v39;
    sub_100029D38();
    v45 = v44;
    v46 = static os_log_type_t.default.getter();
    v47 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v46))
    {
      v48 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      v81[0] = v73[0];
      *v48 = 136315138;
      v49 = *(v45 + 16);
      v50 = *(v45 + 24);

      v51 = sub_10000C600(v49, v50, v81);
      v52 = v29;
      v53 = v37;
      v54 = v51;

      *(v48 + 4) = v54;
      v37 = v53;
      v29 = v52;
      _os_log_impl(&_mh_execute_header, v47, v46, "Created new wirelessly pairable host: %s", v48, 0xCu);
      sub_10000CADC(v73[0]);
      sub_10000D8D4();
      sub_10000D8D4();
    }

    v73[0] = v28;
    v55 = v76;
    DiscoveredBonjourAdvert.identifier.getter();

    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v29;
    sub_100068FBC();
    v37(v55, v77);
    v78 = v81[0];
    if ((v75 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_100024D84(&unk_10009ADC0, type metadata accessor for PairableHostsBrowseRegistration);
      Set.Iterator.init(_cocoa:)();
      v57 = v81[0];
      v56 = v81[1];
      v58 = v81[2];
      v59 = v81[3];
      v60 = v81[4];
    }

    else
    {
      v61 = -1 << *(v75 + 32);
      v56 = v75 + 56;
      v58 = ~v61;
      v62 = -v61;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v60 = v63 & *(v75 + 56);
      v59 = 0;
    }

    if (v57 < 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v64 = v59;
      v65 = v60;
      v66 = v59;
      if (!v60)
      {
        break;
      }

LABEL_22:
      v67 = (v65 - 1) & v65;
      v68 = *(*(v57 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v65)))));

      if (!v68)
      {
LABEL_28:
        sub_1000134CC();
        v70 = v75;

        v71 = v78;

        v72 = v73[0];

        sub_100022D20(v70, v71, v72);

        goto LABEL_2;
      }

      while (1)
      {
        sub_100041E08();

        v59 = v66;
        v60 = v67;
        if ((v57 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_24:
        v69 = __CocoaSet.Iterator.next()();
        if (v69)
        {
          v79 = v69;
          type metadata accessor for PairableHostsBrowseRegistration();
          swift_dynamicCast();
          v66 = v59;
          v67 = v60;
          if (v80)
          {
            continue;
          }
        }

        goto LABEL_28;
      }
    }

    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v66 >= ((v58 + 64) >> 6))
      {
        goto LABEL_28;
      }

      v65 = *(v56 + 8 * v66);
      ++v64;
      if (v65)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1000135A0();
  }
}

void sub_100024658()
{
  sub_10000D060();
  v2 = v1;
  v3 = *(*(sub_100013414(&qword_100099B50, &qword_1000779B0) - 8) + 64);
  sub_10000D8B0();
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for UUID();
  v8 = sub_10000CBBC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v15 = v14 - v13;
  v16 = v0[2];
  if (v16 < 2)
  {
LABEL_2:
    sub_1000135A0();
    return;
  }

  v18 = v0[3];
  v17 = v0[4];
  v19 = v0[2];

  if (v17 == v2)
  {

    DiscoveredBonjourAdvert.identifier.getter();
    sub_100064018();
    if (v22)
    {
      v23 = v21;
      LODWORD(v40) = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      v24 = *(v18 + 24);
      sub_100013414(&qword_100099B58, &qword_100077660);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v40, v24);
      v25 = v41;
      v26 = v41[6];
      v39 = *(v10 + 8);
      v39(v26 + *(v10 + 72) * v23, v7);
      v38 = *(v25[7] + 8 * v23);
      type metadata accessor for DiscoveredPairableHost(0);
      sub_100025064();
      sub_100024D84(v27, v28);
      v40 = v25;
      v29 = v38;
      _NativeDictionary._delete(at:)();
      v39(v15, v7);
      v30 = static os_log_type_t.default.getter();
      v31 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v30))
      {
        v32 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v32 = 136315138;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);

        v35 = sub_10000C600(v34, v33, &v41);

        *(v32 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v31, v30, "Removing wireless pairing host %s because the wireless pairing advert was lost", v32, 0xCu);
        sub_10000CADC(v39);
        sub_10000D8D4();
        sub_10000D8D4();
      }

      v36 = type metadata accessor for DiscoveredBonjourAdvert();
      sub_1000223E8(v6, 1, 1, v36);
      sub_10002A048();
      sub_100022560(v6, &qword_100099B50, &qword_1000779B0);
      sub_10002A750();

      v37 = v40;

      sub_100022D20(v16, v37, v17);
    }

    else
    {
      (*(v10 + 8))(v15, v7);
    }

    goto LABEL_2;
  }

  sub_1000135A0();
}

uint64_t sub_100024A1C()
{
  v0 = type metadata accessor for RemotePairingError();
  v1 = sub_10000CC04(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = _RPIsAppleInternal();
    if ((result & 1) == 0)
    {
      sub_100024D84(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
      static Error<>.permissionDenied.getter();
      sub_100024D84(&qword_100099850, &type metadata accessor for RemotePairingError);
      swift_allocError();
      Error<>.init(_:_:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100024B90()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100024F84(*(v0 + 16));

  v3 = *(v0 + 48);

  sub_10000CADC((v0 + 56));
  return v0;
}

uint64_t sub_100024BCC()
{
  sub_100024B90();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100024C24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100024C3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024C50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024CA4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100024D04(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100024D3C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100024D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024DCC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100024E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100024E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_100099B60, &qword_100077668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024E88(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100024ED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100023B18();
}

uint64_t sub_100024EE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000D090();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100024F1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000233F4(a1);
}

uint64_t sub_100024F24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013414(a3, a4);
  sub_10000CC04(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100024F84(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100024FD4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100025014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002507C()
{
  *v1 = v0;
  v4 = *(v2 - 136);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002509C()
{
  v1 = v0;
  v2 = static os_log_type_t.info.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v1 + 24);
      }

      v8 = *(v1 + 24);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v2, "BT Peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

uint64_t sub_1000251A8()
{
  sub_10000D488();
  v1 = *(v0 + 24);
}

BOOL sub_1000251D8()
{
  v1 = *(v0 + 136);
  sub_10001E884();
  v3 = sub_10004997C(v2);

  return v3 != 0;
}

BOOL sub_100025318()
{
  if (!remotePairingIsEnabled())
  {
    static os_log_type_t.default.getter();
LABEL_10:
    os_log(_:dso:log:_:_:)();
    return 0;
  }

  if ((static Defaults.deviceAllowBluetoothDeviceDiscovery.getter() & 1) == 0 || !sub_1000251D8())
  {
LABEL_9:
    static os_log_type_t.error.getter();
    goto LABEL_10;
  }

  sub_10000D488();
  v1 = *(v0 + 24);

  v3 = sub_100061FD0(v2);

  if (v3 <= 0)
  {
    if (*(v0 + 128) != 1)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v4 = static os_log_type_t.error.getter();
  v5 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v4);
  if (!result)
  {
    return result;
  }

  v7 = sub_10000D030();
  *v7 = 134217984;
  v8 = *(v0 + 24);
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_1000272E0();
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  *(v7 + 4) = v9;

  _os_log_impl(&_mh_execute_header, v5, v4, "Rejecting incoming BT connection as we already have %ld BT peers", v7, 0xCu);
  sub_10000D8D4();
  return 0;
}

void sub_100025504(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ControlChannelConnection.Options.Device();
  v14 = sub_10000CBBC(v13);
  v49 = v15;
  v50 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v20 = v19 - v18;
  v21 = static os_log_type_t.default.getter();
  v22 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v21))
  {
    v23 = sub_10000D030();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = a1;
    *v24 = a1;
    v25 = a1;
    _os_log_impl(&_mh_execute_header, v22, v21, "Received new CBConnection from peer: %@", v23, 0xCu);
    sub_100027268(v24);
    sub_10000D8D4();
    sub_10000D8D4();
  }

  if (sub_100025318())
  {
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    v26 = type metadata accessor for BluetoothLEConnectionControlChannelTransport();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = a1;
    v52[3] = v26;
    v52[4] = &protocol witness table for BluetoothLEConnectionControlChannelTransport;
    v52[0] = BluetoothLEConnectionControlChannelTransport.init(connection:)();
    v30 = *(v2 + 40);
    (*(v49 + 16))(v12, v20, v50);
    (*(v7 + 104))(v12, enum case for ControlChannelConnection.Options.device(_:), v4);
    v31 = *(v2 + 136);
    v51[3] = type metadata accessor for SystemKeychainPairingManager();
    v51[4] = sub_10000D0E0(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager);
    v51[0] = v31;
    v32 = type metadata accessor for ControlChannelConnection();

    v33 = v30;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    v34 = *(v32 + 48);
    v35 = *(v32 + 52);
    swift_allocObject();
    v36 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    sub_100022260(v2 + 48, v52);
    dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
    sub_100022260(v2 + 88, v52);
    dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
    swift_beginAccess();

    sub_10006463C(v51, v36);
    swift_endAccess();

    sub_10002509C();
    sub_10000CBD0();
    v37 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v38 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v40 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v41 = swift_allocObject();
    swift_weakInit();

    sub_10000D090();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.start()();

    (*(v49 + 8))(v20, v50);
    sub_1000135A0();
  }

  else
  {
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v43))
    {
      v44 = sub_10000D030();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = a1;
      *v45 = a1;
      v46 = a1;
      _os_log_impl(&_mh_execute_header, v22, v43, "Rejecting bluetooth control channel connection from peer: %@", v44, 0xCu);
      sub_100027268(v45);
      sub_10000D8D4();
      sub_10000D8D4();
    }

    sub_1000135A0();

    sub_100025CEC(v47);
  }
}

uint64_t sub_100025A8C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_10000CE94();
      swift_endAccess();

      sub_10002509C();
    }
  }

  return result;
}

uint64_t sub_100025B54()
{
  v0 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v6)
      {
        v7 = v6;
        if ((sub_100069E94() & 1) == 0)
        {
          (*(v1 + 104))(v4, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v0);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v1 + 8))(v4, v0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100025CEC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BluetoothLEConnectionControlChannelTransport();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = BluetoothLEConnectionControlChannelTransport.init(connection:)();
  swift_beginAccess();

  sub_100064A30(&v13, v8);
  swift_endAccess();

  v9 = *(v2 + 40);
  sub_10000CBD0();
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v2;

  dispatch thunk of BluetoothLEConnectionControlChannelTransport.start(withTargetQueue:eventHandler:)();
}

uint64_t sub_100025E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = type metadata accessor for ControlChannelMessageEnvelope.Message();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlChannelConnection.PeerType();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlChannelMessageEnvelope();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ControlChannelMessage();
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlChannelTransportEvent();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v19 + 16))(v22, a1, v18);
    if ((*(v19 + 88))(v22, v18) == enum case for ControlChannelTransportEvent.transportStarted(_:))
    {
      v43 = v11;
      (*(v19 + 8))(v22, v18);
      v24 = static os_log_type_t.default.getter();
      v25 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v4;
        v28 = v14;
        v29 = v27;
        v52 = v27;
        *v26 = 136446210;
        v30 = dispatch thunk of BluetoothLEConnectionControlChannelTransport.id.getter();
        v32 = sub_10000C600(v30, v31, &v52);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v24, "Rejected peer connection %{public}s started. Will send connection rejected message", v26, 0xCu);
        sub_10000CADC(v29);
        v14 = v28;
        v4 = v42;
      }

      v33 = enum case for ControlChannelMessage.Event.connectionRejected(_:);
      v34 = type metadata accessor for ControlChannelMessage.Event();
      (*(*(v34 - 8) + 104))(v17, v33, v34);
      v35 = v49;
      (*(v14 + 104))(v17, enum case for ControlChannelMessage.event(_:), v49);
      (*(v44 + 104))(v46, enum case for ControlChannelConnection.PeerType.host(_:), v45);
      (*(v14 + 16))(v7, v17, v35);
      (*(v47 + 104))(v7, enum case for ControlChannelMessageEnvelope.Message.plain(_:), v4);
      v36 = v14;
      v37 = v48;
      ControlChannelMessageEnvelope.init(originatedBy:sequenceNumber:message:)();
      v38 = v51;
      v39 = *(v51 + 40);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v38;
      type metadata accessor for BluetoothLEConnectionControlChannelTransport();

      JSONDataBasedControlChannelTransport.send(message:invokingCompletionHandlerOn:completion:)();

      (*(v50 + 8))(v37, v43);
      (*(v36 + 8))(v17, v35);
    }

    else
    {

      return (*(v19 + 8))(v22, v18);
    }
  }

  return result;
}

uint64_t sub_100026420()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = static os_log_type_t.default.getter();
    v2 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      v5 = dispatch thunk of BluetoothLEConnectionControlChannelTransport.id.getter();
      v7 = sub_10000C600(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v2, v1, "Completed send of connection rejected message to rejected peer connection %{public}s. Invalidating", v3, 0xCu);
      sub_10000CADC(v4);
    }

    dispatch thunk of BluetoothLEConnectionControlChannelTransport.invalidate()();
    swift_beginAccess();
    sub_1000676B4();
    swift_endAccess();
  }

  return result;
}

void sub_10002658C()
{
  v1 = *v0;
  if (CBConnection)
  {
    v2 = v0[5];
    sub_10000CBD0();
    v3 = swift_allocObject();
    swift_weakInit();
    v12[4] = sub_100027250;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000499CC;
    v12[3] = &unk_10008F720;
    v4 = _Block_copy(v12);

    xpc_set_event_stream_handler("com.apple.bluetooth.connections", v2, v4);
    _Block_release(v4);
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    v6 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v5))
    {
      v7 = sub_10000D030();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000C600(v9, v10, v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "Not starting %s as CoreBluetooth is not available at runtime", v7, 0xCu);
      sub_10000CADC(v8);
      sub_10000D8D4();
      sub_10000D8D4();
    }
  }
}

uint64_t sub_100026750()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = static os_log_type_t.default.getter();
    v2 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v10 = v4;
      *v3 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_100099CE0, &qword_100077D90);
      v5 = String.init<A>(describing:)();
      v7 = sub_10000C600(v5, v6, &v10);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v2, v1, "Received CBConnection XPC event %s", v3, 0xCu);
      sub_10000CADC(v4);
    }

    objc_allocWithZone(CBConnection);
    v8 = swift_unknownObjectRetain();
    v9 = sub_100027184(v8);
    sub_100025504(v9);
  }

  return result;
}

void sub_1000269C8()
{
  v30 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = sub_10000CBBC(v30);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v29 = v7 - v6;
  if (*(v0 + 128))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    *(v0 + 128) = 1;
    sub_10000D488();
    v9 = *(v0 + 24);
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *(v0 + 24);
      }

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D270();
      sub_10000D0E0(v11, v12);
      Set.Iterator.init(_cocoa:)();
      v9 = v32;
      v13 = v33;
      v15 = v34;
      v14 = v35;
      v16 = v36;
    }

    else
    {
      v13 = v9 + 56;
      v17 = *(v9 + 56);
      v15 = ~(-1 << *(v9 + 32));
      sub_10000D89C();
      v16 = v18 & v19;

      v14 = 0;
    }

    v20 = (v15 + 64) >> 6;
    v28 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v21 = (v3 + 104);
    v22 = (v3 + 8);
    if (v9 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v23 = v14;
      v24 = v16;
      v25 = v14;
      if (!v16)
      {
        break;
      }

LABEL_15:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v9 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
LABEL_21:
        sub_1000134CC();
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v21)(v29, v28, v30);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v22)(v29, v30);
        v14 = v25;
        v16 = v26;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v25 = v14;
          v26 = v16;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100026CCC(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {

    v4 = sub_10000D030();
    *v4 = 134217984;
    sub_10000D488();
    v5 = *(v1 + 24);
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1000272E0();
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v5 + 16);
    }

    *(v4 + 4) = v6;

    _os_log_impl(&_mh_execute_header, a1, v3, "BluetoothControlChannelConnectionService state: connection count = %ld", v4, 0xCu);
    sub_10000D8D4();
  }

  sub_10000D488();
  v7 = *(v1 + 24);
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = *(v1 + 24);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D270();
    sub_10000D0E0(v9, v10);
    result = Set.Iterator.init(_cocoa:)();
    v7 = v36[4];
    v12 = v36[5];
    v13 = v36[6];
    v14 = v36[7];
    v15 = v36[8];
  }

  else
  {
    v12 = v7 + 56;
    v16 = *(v7 + 56);
    v13 = ~(-1 << *(v7 + 32));
    sub_10000D89C();
    v15 = v17 & v18;

    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000134CC();
    }

    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v22 = v14;
    v23 = v15;
    if (!v36[0])
    {
      return sub_1000134CC();
    }

LABEL_21:
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v25))
    {
      v26 = sub_10000D030();
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v26 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v27 = String.init<A>(describing:)();
      v34 = v23;
      v29 = v19;
      v30 = v12;
      v31 = v7;
      v32 = a1;
      v33 = sub_10000C600(v27, v28, v36);

      *(v26 + 4) = v33;
      a1 = v32;
      v7 = v31;
      v12 = v30;
      v19 = v29;
      _os_log_impl(&_mh_execute_header, a1, v25, "BluetoothControlChannelConnectionService control channel connection: %{public}s", v26, 0xCu);
      sub_10000CADC(v35);
      sub_10000D8D4();
      sub_10000D8D4();

      v14 = v22;
      v15 = v34;
    }

    else
    {

      v14 = v22;
      v15 = v23;
    }
  }

  v20 = v14;
  v21 = v15;
  v22 = v14;
  if (v15)
  {
LABEL_17:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v7 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
      return sub_1000134CC();
    }

    goto LABEL_21;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      return sub_1000134CC();
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027054()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_10000CADC((v0 + 48));
  sub_10000CADC((v0 + 88));
  v3 = *(v0 + 136);

  return v0;
}

uint64_t sub_10002709C()
{
  sub_100027054();

  return _swift_deallocClassInstance(v0, 144, 7);
}

id sub_100027184(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithXPCEventRepresentation:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100027260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100026420();
}

uint64_t sub_100027268(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009B0D0, qword_1000777A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000272D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100025A8C();
}

uint64_t sub_1000272D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100025B54();
}

uint64_t sub_1000272E0()
{
}

uint64_t sub_100027300(void *a1)
{
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_10000CBBC(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10000CBDC();
  sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100028174(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  *(v1 + 32) = OS_os_log.init(subsystem:category:)();
  *(v1 + 16) = a1;
  type metadata accessor for UUID();
  v14 = a1;
  sub_100013414(&unk_100099DC0, &unk_100077860);
  sub_100028174(&unk_10009BE40, &type metadata accessor for UUID);
  *(v1 + 40) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 50) = 0;
  *(v1 + 48) = 2;
  sub_100027634();

  return v1;
}

uint64_t sub_100027634()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v22 = type metadata accessor for DispatchQoS();
  v10 = sub_10000CBBC(v22);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v17 = v16 - v15;
  static os_log_type_t.default.getter();
  v18 = *(v0 + 32);
  os_log(_:dso:log:_:_:)();
  v21 = *(v0 + 24);
  aBlock[4] = sub_100028104;
  v24 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F8D8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100028174(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v4 + 8))(v9, v1);
  (*(v12 + 8))(v17, v22);
}

uint64_t sub_1000278D4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v32);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC())
  {
    v8 = lockdown_wifi_sync_enabled();
    v9 = lockdown_wifi_debug_enabled();
    v10 = lockdown_wifi_pairing_enabled();
    if (v9)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v8;
    if (v10)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 | v13;
  }

  else
  {
    v14 = 3;
  }

  v15 = static os_log_type_t.default.getter();
  v16 = *(a1 + 32);
  LODWORD(v17) = HIWORD(v14);
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    BYTE2(v33) = BYTE2(v14);
    LOWORD(v33) = v14;
    v20 = String.init<A>(describing:)();
    v28 = a1;
    v17 = sub_10000C600(v20, v21, aBlock);
    a1 = v28;

    *(v18 + 4) = v17;
    LOBYTE(v17) = BYTE2(v14);
    _os_log_impl(&_mh_execute_header, v16, v15, "Received updated wireless configuration from lockdown: %{public}s", v18, 0xCu);
    sub_10000CADC(v19);
  }

  v22 = *(a1 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 26) = v17;
  *(v23 + 24) = v14;
  aBlock[4] = sub_10002810C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F928;
  v24 = _Block_copy(aBlock);

  v25 = v29;
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100028174(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v3 + 8))(v26, v2);
  (*(v30 + 8))(v25, v32);
}

uint64_t sub_100027CDC(uint64_t a1, int a2)
{
  swift_beginAccess();
  *(a1 + 50) = BYTE2(a2);
  *(a1 + 48) = a2;
  v4 = *(a1 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v5 = *(a1 + 40);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(a1 + 40);

  for (i = 0; v8; result = )
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v5 + 56) + ((v13 << 10) | (16 * v14));
    v17 = *v15;
    v16 = *(v15 + 8);

    v17(v18);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++i;
    if (v8)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100027E04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = sub_10000CBBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v16 = v15 - v14;
  UUID.init()();
  (*(v11 + 16))(v16, a3, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();

  v18 = *(v4 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + 40);
  sub_100068D98();
  *(v4 + 40) = v20;
  (*(v11 + 8))(v16, v8);
  swift_endAccess();
  v19 = *(v4 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_100027F7C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();
  return *(v1 + 48) | (*(v1 + 50) << 16);
}

uint64_t sub_100027FCC()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_100028004()
{
  sub_100027FCC();

  return _swift_deallocClassInstance(v0, 51, 7);
}

uint64_t sub_10002805C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_100028070(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000280B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015E90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for LockdownWirelessConfigurationState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LockdownWirelessConfigurationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LockdownWirelessConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_100028308(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028324(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100028380(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AtomicCounter();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = AtomicCounter.init()();
  *a2 = result;
  return result;
}

uint64_t sub_1000283C0()
{
  v1 = type metadata accessor for DiscoveredPairableHost.State(0);
  v2 = sub_10000CC04(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v7 = v6 - v5;
  sub_10002ED74(v0, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
      v10 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v11 = *(v7 + v10[12]);

      v12 = *(v7 + v10[16]);

      v13 = *(v7 + v10[20] + 8);

      goto LABEL_3;
    case 4:
      return result;
    default:
LABEL_3:
      v14 = type metadata accessor for DiscoveredBonjourAdvert();
      sub_10000CC04(v14);
      (*(v15 + 8))(v7);
      result = 1;
      break;
  }

  return result;
}

void sub_10002890C(uint64_t a1)
{
  v3 = type metadata accessor for DiscoveredPairableHost.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = static os_log_type_t.default.getter();
  v11 = qword_10009CED0;
  sub_10002ED74(a1, v9);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136446722;
    *(v12 + 4) = sub_10000C600(*(v1 + 16), *(v1 + 24), &v22);
    *(v12 + 12) = 2082;
    sub_10002ED74(v9, v7);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10002EDD8(v9);
    v16 = sub_10000C600(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    v17 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    swift_beginAccess();
    sub_10002ED74(v1 + v17, v7);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000C600(v18, v19, &v22);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s: State changed from %{public}s -> %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002EDD8(v9);
  }

  sub_10002D260();
}

uint64_t sub_100028B40(uint64_t a1)
{
  v3 = type metadata accessor for DiscoveredPairableHost.State(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  sub_10002ED74(v1 + v8, v7);
  swift_beginAccess();
  sub_10002F51C(a1, v1 + v8);
  swift_endAccess();
  sub_10002890C(v7);
  sub_10002EDD8(a1);
  return sub_10002EDD8(v7);
}

uint64_t sub_100028C10()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener;
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener);
  }

  else
  {
    v2 = sub_100028CA0(v0, *v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100028CA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemXPCListenerConnection();
  static SystemXPCConnection.anonymousListenerConnection(targetQueue:)();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(a1 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue);
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;

  dispatch thunk of SystemXPCListenerConnection.setPeerConnectionHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
  return v4;
}

uint64_t sub_100028D84(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v30 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_100024F24(a1, v5, &qword_10009A170, &qword_1000779C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100022560(v5, &qword_10009A170, &qword_1000779C0);
      v8 = static os_log_type_t.error.getter();
      v9 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v8))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v30 = v11;
        *v10 = 136446210;
        v12 = *(v7 + 16);
        v13 = *(v7 + 24);

        v14 = sub_10000C600(v12, v13, &v30);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s: Received error from host listener", v10, 0xCu);
        sub_10000CADC(v11);
      }
    }

    else
    {
      v15 = *v5;
      type metadata accessor for SystemXPCPeerConnection();
      v16 = swift_dynamicCastClassUnconditional();

      dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
      v17 = v30;
      swift_beginAccess();

      sub_100064C00(&v32, v16);
      swift_endAccess();

      v30 = 0;
      v31 = 0xE000000000000000;

      _StringGuts.grow(_:)(39);

      v30 = 0xD000000000000018;
      v31 = 0x800000010007DA90;
      v18._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 46;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = *(v7 + 16);
      v21 = *(v7 + 24);

      v22._countAndFlagsBits = v20;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0x2E746E65696C632ELL;
      v23._object = 0xE800000000000000;
      String.append(_:)(v23);
      LODWORD(v32) = v17;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      String.utf8CString.getter();

      v25 = os_transaction_create();

      swift_beginAccess();
      if (v25)
      {
        sub_10002EF5C();
      }

      else
      {
        sub_1000685C0(v16);

        swift_unknownObjectRelease();
      }

      swift_endAccess();
      v26 = *(v7 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue);
      dispatch thunk of XPCConnection.setTargetQueue(_:)();

      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v28;

      dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

      dispatch thunk of XPCConnection.activate()();
    }
  }

  return result;
}

uint64_t sub_100029248@<X0>(_xpc_connection_s *a1@<X0>, _DWORD *a2@<X8>)
{
  result = xpc_connection_get_pid(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100029278(uint64_t a1)
{
  v2 = type metadata accessor for XPCDictionary();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25[-1] - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v14 = Strong;
  sub_100024F24(a1, v10, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_100029670();
    v25[0] = v14;
    dispatch thunk of CodableDispatcher.dispatch(encodedData:context:completion:)();

    (*(v3 + 8))(v6, v2);
  }

  dispatch thunk of XPCConnection.cancel()();
  swift_beginAccess();
  sub_100067860();
  swift_endAccess();

  swift_beginAccess();
  sub_1000685C0(v14);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_10002D8FC();
  v15 = static os_log_type_t.default.getter();
  v16 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v15))
  {
    v17 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *(v12 + 16);
    v19 = *(v12 + 24);

    v20 = sub_10000C600(v18, v19, v25);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v24 = v14;
    type metadata accessor for SystemXPCPeerConnection();

    v21 = String.init<A>(describing:)();
    v23 = sub_10000C600(v21, v22, v25);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s: Releasing usage assertions owned by disconnected peer %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100022560(v10, &unk_1000994A0, &unk_100077090);
}

uint64_t sub_100029670()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher;
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher);
  }

  else
  {
    v2 = sub_1000296D8();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000296D8()
{
  v0 = type metadata accessor for XPCReplyProviding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static XPCReplyProviding.passthrough.getter();
  v2 = sub_100013414(&qword_10009A110, &qword_1000779B8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = XPCMessageDispatcher.init(xpcReplyProviding:inboundObserver:outboundObserver:)();
  type metadata accessor for RemotePairingErrorCodingWrapper();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AttemptPairingPinCommand();
  type metadata accessor for EmptyResponse();
  sub_10002EF04(&qword_10009A118, &type metadata accessor for AttemptPairingPinCommand);
  sub_10002EF04(&qword_10009A120, &type metadata accessor for AttemptPairingPinCommand);
  sub_10002EF04(&qword_10009A128, &type metadata accessor for EmptyResponse);
  sub_10002EF04(&qword_10009A130, &type metadata accessor for EmptyResponse);
  sub_10002EF04(&qword_10009A138, &type metadata accessor for RemotePairingErrorCodingWrapper);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for CancelPairingCommand();
  sub_10002EF04(&qword_10009A140, &type metadata accessor for CancelPairingCommand);
  sub_10002EF04(&qword_10009A148, &type metadata accessor for CancelPairingCommand);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for InitiatePairingWithHostCommand();
  type metadata accessor for PairableHostInfo();
  sub_10002EF04(&qword_10009A150, &type metadata accessor for InitiatePairingWithHostCommand);
  sub_10002EF04(&qword_10009A158, &type metadata accessor for InitiatePairingWithHostCommand);
  sub_10002EF04(&qword_10009A160, &type metadata accessor for PairableHostInfo);
  sub_10002EF04(&qword_10009A168, &type metadata accessor for PairableHostInfo);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  return v5;
}

uint64_t sub_100029B78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = AttemptPairingPinCommand.pinAttempt.getter();
    sub_10002A95C(v4, v5, v3);
    if (v2)
    {
    }
  }

  return EmptyResponse.init()();
}

uint64_t sub_100029C30(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return EmptyResponse.init()();
  }

  sub_10002AE58(v3);

  if (!v2)
  {
    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_100029CBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002B69C();
  }

  return result;
}

void sub_100029D38()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_10000D618();
  if (sub_10004997C(_swiftEmptyArrayStorage))
  {
    sub_1000579D4(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers] = v15;
  v16 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__transactions;
  type metadata accessor for SystemXPCPeerConnection();
  sub_100013414(&qword_10009A180, &unk_1000779D0);
  sub_10000CC20();
  sub_10002EF04(v17, v18);
  *&v0[v16] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener] = 0;
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher] = 0;
  strcpy(&v30, "pairablehost-");
  HIWORD(v30) = -4864;
  if (qword_100098E68 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20 = *(&v30 + 1);
  *(v0 + 2) = v30;
  *(v0 + 3) = v20;
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue] = v4;
  v21 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  v22 = type metadata accessor for DiscoveredBonjourAdvert();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v2[v21], v8, v22);
  type metadata accessor for DiscoveredPairableHost.State(0);
  swift_storeEnumTagMultiPayload();
  v24 = v4;
  v25 = DiscoveredBonjourAdvert.userAssignedName.getter();
  v27 = 0x6E776F6E6B6E55;
  if (v26)
  {
    v27 = v25;
  }

  v28 = 0xE700000000000000;
  if (v26)
  {
    v28 = v26;
  }

  *(v2 + 4) = v27;
  *(v2 + 5) = v28;
  *(v2 + 6) = DiscoveredBonjourAdvert.model.getter();
  *(v2 + 7) = v29;
  DiscoveredBonjourAdvert.identifier.getter();

  (*(v23 + 8))(v8, v22);
  (*(v12 + 32))(&v2[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID], v1, v9);
  sub_100010E18(v6, &v2[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager]);
  sub_1000135A0();
}

void sub_10002A048()
{
  sub_10000D060();
  v2 = v1;
  v3 = type metadata accessor for DiscoveredPairableHost.State(0);
  v4 = sub_10000CC04(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000EDF0();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v13 = sub_100013414(&qword_100099B50, &qword_1000779B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v37 - v15;
  v17 = type metadata accessor for DiscoveredBonjourAdvert();
  v18 = sub_10000CBBC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000CBDC();
  v25 = (v24 - v23);
  v27 = v26;
  sub_100024F24(v2, v16, &qword_100099B50, &qword_1000779B0);
  if (sub_100022484(v16, 1, v27) != 1)
  {
    (*(v20 + 32))(v25, v16, v27);
    v28 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    sub_10002F598();
    swift_beginAccess();
    sub_10002ED74(v0 + v28, v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        v32 = sub_100013414(&unk_10009A0C0, &unk_100077998);
        v33 = sub_10000D900(v32);
        v34(v33);
        *(&qword_1000779B0 + v9) = v28;
        v35 = v37[2];
        *&v16[v9] = v37[3];
        v36 = v37[1];
        *v25 = v35;
        *(v25 + 1) = v36;
        sub_10000EB0C();
        swift_storeEnumTagMultiPayload();

        sub_100028B40(v9);

        v31 = *(v20 + 8);
        v31(v37[4], v27);
        goto LABEL_6;
      case 4u:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      default:
        v29 = sub_10000CD04();
        v30(v29);
        sub_10000EB0C();
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v9);
        v31 = *(v20 + 8);
        v31(v25, v27);
LABEL_6:
        v31(v12, v27);
        goto LABEL_7;
    }
  }

  sub_100022560(v16, &qword_100099B50, &qword_1000779B0);
  sub_10000EB0C();
  swift_storeEnumTagMultiPayload();
  sub_100028B40(v9);
LABEL_7:
  sub_1000135A0();
}

uint64_t sub_10002A3F0()
{
  if (qword_100098E60 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();

  sub_100028C10();
  SystemXPCListenerConnection.createEndpoint()();

  __chkstk_darwin(v0);
  type metadata accessor for PairableHostInfo();
  dispatch thunk of XPCEndpoint.withUnsafeUnderlyingEndpoint<A>(_:)();
}

uint64_t sub_10002A4F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v24[2] = a3;
  v24[0] = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DiscoveredPairableHost.State(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  swift_beginAccess();
  sub_10002ED74(a2 + v17, v16);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v18 = type metadata accessor for DiscoveredBonjourAdvert();
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  else
  {
    sub_10002EDD8(v16);
  }

  (*(v6 + 16))(v9, a2 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID, v5);
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v22 = a2[7];
  sub_10002ED74(a2 + v17, v14);

  sub_1000283C0();
  sub_10002EDD8(v14);
  swift_unknownObjectRetain();
  return PairableHostInfo.init(identifier:name:model:available:paired:monotonicIdentifier:endpoint:)();
}

uint64_t sub_10002A750()
{
  v1 = v0;
  sub_100028C10();
  dispatch thunk of XPCConnection.cancel()();

  v2 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000CC20();
    sub_10002EF04(v4, v5);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
  }

  else
  {
    v7 = v3 + 56;
    v11 = *(v3 + 56);
    v8 = ~(-1 << *(v3 + 32));
    sub_10000D89C();
    v10 = v12 & v13;

    v9 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      return sub_1000134CC();
    }

    while (1)
    {
      dispatch thunk of XPCConnection.cancel()();

      v9 = v16;
      v10 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for SystemXPCPeerConnection();
        swift_dynamicCast();
        v16 = v9;
        v17 = v10;
        if (v19)
        {
          continue;
        }
      }

      return sub_1000134CC();
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      return sub_1000134CC();
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = type metadata accessor for RemotePairingError();
  v6 = sub_10000CC04(v52);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v51 = v10 - v9;
  v11 = sub_10002F608();
  v12 = type metadata accessor for DiscoveredPairableHost.State(v11);
  v13 = sub_10000CC04(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000EDF0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v4 + v22, v21);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v23 = sub_100013414(&unk_10009A0C0, &unk_100077998);
    v24 = *&v21[v23[12]];
    v25 = *&v21[v23[16]];
    v26 = *&v21[v23[20] + 8];

    v27 = type metadata accessor for XPCConnection();
    if (static XPCConnection.== infix(_:_:)())
    {
      sub_100022994();
      dispatch thunk of ControlChannelConnection.attempt(pairingPIN:)();
    }

    else
    {
      v49 = v24;
      v50 = v25;
      v37 = static os_log_type_t.error.getter();
      v38 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v37))
      {
        sub_10000CCCC();
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v27 = 136446722;
        *(v27 + 4) = sub_10000C600(*(v4 + 16), *(v4 + 24), &v54);
        *(v27 + 12) = 2082;
        v53 = a3;
        type metadata accessor for SystemXPCPeerConnection();

        v39 = String.init<A>(describing:)();
        v41 = sub_10000C600(v39, v40, &v54);

        *(v27 + 14) = v41;
        *(v27 + 22) = 2082;
        v53 = v50;

        v42 = String.init<A>(describing:)();
        v44 = sub_10000C600(v42, v43, &v54);

        *(v27 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v38, v37, "%{public}s: Received PIN challenge from peer %{public}s but pairing was initiated by %{public}s", v27, 0x20u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      static RemotePairingError.invalidOperation.getter();
      sub_10002F5C0();
      sub_10002EF04(v45, v27);
      sub_10002F614();
      swift_allocError();
      sub_10000D294();
      sub_10002EF04(v46, v27);
      sub_10002F62C();
      swift_willThrow();
    }

    v47 = type metadata accessor for DiscoveredBonjourAdvert();
    sub_10000CC04(v47);
    return (*(v48 + 8))(v21);
  }

  else
  {
    v28 = static os_log_type_t.error.getter();
    v29 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v28))
    {
      sub_10002F620();
      v30 = swift_slowAlloc();
      sub_10002F65C();
      v54 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10000C600(*(v4 + 16), *(v4 + 24), &v54);
      *(v30 + 12) = 2082;
      sub_10002ED74(v4 + v22, v18);
      v31 = String.init<A>(describing:)();
      v12 = v32;
      v33 = sub_10000C600(v31, v32, &v54);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: Invalid state to attempt PIN pairing: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    static RemotePairingError.invalidOperation.getter();
    sub_10002F5C0();
    sub_10002EF04(v34, v12);
    sub_10002F614();
    swift_allocError();
    sub_10000D294();
    sub_10002EF04(v35, v12);
    sub_10002F62C();
    swift_willThrow();
    return sub_10002EDD8(v21);
  }
}

uint64_t sub_10002AE58(uint64_t a1)
{
  v104 = a1;
  v3 = v1;
  v4 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v5 = sub_10000CBBC(v4);
  v101 = v6;
  v102 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v100 = v10 - v9;
  sub_10002F608();
  v99 = type metadata accessor for POSIXError();
  v11 = sub_10000CBBC(v99);
  v97 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v95 = v16 - v15;
  sub_10002F608();
  v98 = type metadata accessor for PairingOutcome();
  v17 = sub_10000CBBC(v98);
  v96 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000CBDC();
  v23 = (v22 - v21);
  v107 = type metadata accessor for RemotePairingError();
  v24 = sub_10000CC04(v107);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10000CBDC();
  v106 = v28 - v27;
  sub_10002F608();
  v29 = type metadata accessor for DiscoveredBonjourAdvert();
  v30 = sub_10000CBBC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_10000CBDC();
  sub_10000D618();
  v35 = type metadata accessor for DiscoveredPairableHost.State(0);
  v36 = sub_10000CC04(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10000EDF0();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v89 - v43;
  v45 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  v105 = v3;
  sub_10002ED74(v3 + v45, v44);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v46 = sub_100013414(&unk_10009A0C0, &unk_100077998);
    v47 = *&v44[v46[12]];
    v48 = *&v44[v46[16]];
    v49 = &v44[v46[20]];
    v51 = *v49;
    v50 = *(v49 + 1);
    v90 = v51;
    v91 = v50;
    v52 = *(v32 + 32);
    v53 = sub_100022994();
    v54(v53);
    type metadata accessor for XPCConnection();
    v94 = v48;
    v55 = static XPCConnection.== infix(_:_:)();
    v92 = v47;
    v93 = v29;
    if (v55)
    {
      LODWORD(v109) = 89;
      sub_10004FD70(_swiftEmptyArrayStorage);
      sub_10002F5A8();
      sub_10002EF04(v56, v57);
      v58 = v95;
      v59 = v99;
      _BridgedStoredNSError.init(_:userInfo:)();
      v60 = POSIXError._nsError.getter();
      (*(v97 + 8))(v58, v59);
      *v23 = v60;
      v61 = v96;
      v62 = v98;
      (*(v96 + 104))(v23, enum case for PairingOutcome.failure(_:), v98);
      v90(v23);
      (*(v61 + 8))(v23, v62);
      (*(v32 + 16))(v41, v2, v93);
      swift_storeEnumTagMultiPayload();
      sub_100028B40(v41);
      v64 = v100;
      v63 = v101;
      v65 = v102;
      (*(v101 + 104))(v100, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v102);
      dispatch thunk of ControlChannelConnection.invalidate(for:)();

      (*(v63 + 8))(v64, v65);
      v66 = *(v32 + 8);
      v67 = sub_100022994();
      return v68(v67);
    }

    else
    {
      v78 = v32;
      v103 = v2;
      v79 = static os_log_type_t.error.getter();
      v80 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v79))
      {
        sub_10000CCCC();
        v47 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v47 = 136446722;
        *(v47 + 4) = sub_10000C600(*(v105 + 16), *(v105 + 24), &v109);
        *(v47 + 12) = 2082;
        v108 = v104;
        type metadata accessor for SystemXPCPeerConnection();

        v81 = String.init<A>(describing:)();
        v83 = sub_10000C600(v81, v82, &v109);

        *(v47 + 14) = v83;
        *(v47 + 22) = 2082;
        v108 = v94;

        v84 = String.init<A>(describing:)();
        v86 = sub_10000C600(v84, v85, &v109);

        *(v47 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v80, v79, "%{public}s: Received PIN challenge from peer %{public}s but pairing was initiated by %{public}s", v47, 0x20u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      static RemotePairingError.invalidOperation.getter();
      sub_10002F5D8();
      sub_10002EF04(v87, v47);
      sub_10002F614();
      swift_allocError();
      sub_10000D294();
      sub_10002EF04(v88, v47);
      sub_10000D380();
      swift_willThrow();

      return (*(v78 + 8))(v103, v93);
    }
  }

  else
  {
    v70 = static os_log_type_t.error.getter();
    v71 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v70))
    {
      sub_10002F620();
      v3 = swift_slowAlloc();
      sub_10002F65C();
      v109 = swift_slowAlloc();
      *v3 = 136446466;
      v72 = v105;
      *(v3 + 4) = sub_10000C600(*(v105 + 16), *(v105 + 24), &v109);
      *(v3 + 12) = 2082;
      sub_10002ED74(v72 + v45, v41);
      v73 = String.init<A>(describing:)();
      v75 = sub_10000C600(v73, v74, &v109);

      *(v3 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v71, v70, "%{public}s: Invalid state to handle pairing cancellation: %{public}s", v3, 0x16u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    static RemotePairingError.invalidOperation.getter();
    sub_10002F5D8();
    sub_10002EF04(v76, v3);
    sub_10002F614();
    swift_allocError();
    sub_10000D294();
    sub_10002EF04(v77, v3);
    sub_10000D380();
    swift_willThrow();
    return sub_10002EDD8(v44);
  }
}

void sub_10002B69C()
{
  sub_10000D060();
  v2 = v0;
  v70 = v3;
  v71 = v4;
  v6 = v5;
  v67 = sub_100013414(&unk_10009A100, &qword_1000779A8);
  v7 = sub_10000CC04(v67);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000D4A0();
  v10 = type metadata accessor for DiscoveredBonjourAdvert();
  v11 = sub_10000CBBC(v10);
  v68 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v63 = v16 - v15;
  sub_10002F608();
  v69 = type metadata accessor for RemotePairingError();
  v17 = sub_10000CC04(v69);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000CBDC();
  v66 = v21 - v20;
  v22 = sub_10002F608();
  v23 = type metadata accessor for DiscoveredPairableHost.State(v22);
  v24 = sub_10000CC04(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10000EDF0();
  v64 = v27 - v28;
  __chkstk_darwin(v29);
  v31 = &v61 - v30;
  v32 = static os_log_type_t.default.getter();
  v33 = qword_10009CED0;
  if (sub_10002F68C(v32))
  {
    sub_10002F620();
    v34 = swift_slowAlloc();
    v65 = v10;
    v35 = v34;
    sub_10002F65C();
    v62 = swift_slowAlloc();
    v73[0] = v62;
    *v35 = 136446466;
    *(v35 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v73);
    *(v35 + 12) = 2082;
    v72[0] = v6;
    type metadata accessor for SystemXPCPeerConnection();

    v36 = String.init<A>(describing:)();
    v38 = sub_10000C600(v36, v37, v73);
    v2 = v0;

    *(v35 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s: Received request to wirelessly pair from peer: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    sub_100015FBC();

    v10 = v65;
    sub_100015FBC();
  }

  v39 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v2 + v39, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v40 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v63 = v39;
      v41 = v40;
      v42 = *&v31[*(v40 + 48)];

      v43 = *&v31[*(v41 + 64)];

      v44 = *&v31[*(v41 + 80) + 8];

      (*(v68 + 8))(v31, v10);
      static RemotePairingError.pairingFailed.getter();
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError);
      sub_10002F614();
      v45 = swift_allocError();
      sub_10000D294();
      sub_10002EF04(v46, &type metadata accessor for RemotePairingError);
      v39 = v63;
      Error<>.init(_:_:)();
      goto LABEL_6;
    case 3u:
      v63 = v39;
      static RemotePairingError.pairingFailed.getter();
      v62 = v1;
      v65 = v10;
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError);
      sub_10002F614();
      v45 = swift_allocError();
      sub_10000D294();
      sub_10002EF04(v54, &type metadata accessor for RemotePairingError);
      v1 = v62;
      v39 = v63;
      v55 = v68;
      Error<>.init(_:_:)();
      swift_willThrow();
      (*(v55 + 8))(v31, v65);
      goto LABEL_9;
    case 4u:
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError);
      sub_10002F614();
      v45 = swift_allocError();
      static RemotePairingError.deviceNotFound.getter();
LABEL_6:
      swift_willThrow();
LABEL_9:
      v56 = static os_log_type_t.error.getter();
      if (sub_10002F68C(v56))
      {
        sub_10002F620();
        v57 = swift_slowAlloc();
        sub_10002F65C();
        v72[0] = swift_slowAlloc();
        *v57 = 136446466;
        *(v57 + 4) = sub_10000C600(*(v2 + 16), *(v2 + 24), v72);
        *(v57 + 12) = 2082;
        sub_10002ED74(v2 + v39, v64);
        sub_100022994();
        v58 = String.init<A>(describing:)();
        v60 = sub_10000C600(v58, v59, v72);

        *(v57 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v33, v56, "%{public}s: Invalid state to handle pairing initiation request: %{public}s", v57, 0x16u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      *v1 = v45;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v70(v1);

      sub_100022560(v1, &unk_10009A100, &qword_1000779A8);
      break;
    default:
      v47 = v68;
      v48 = v63;
      (*(v68 + 32))(v63, v31, v10);
      sub_10000CBD0();
      v49 = swift_allocObject();
      swift_weakInit();
      v50 = v6;
      v51 = swift_allocObject();
      v52 = v70;
      v53 = v71;
      v51[2] = v49;
      v51[3] = v52;
      v51[4] = v53;
      v51[5] = v50;

      sub_10002DE7C();

      (*(v47 + 8))(v48, v10);

      break;
  }

  sub_1000135A0();
}

uint64_t sub_10002BDEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v70 = a4;
  v64 = type metadata accessor for DeviceServiceEvent();
  v61 = *(v64 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v64);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PairingChallengeEvent();
  v67 = *(v71 - 8);
  v9 = *(v67 + 64);
  v10 = __chkstk_darwin(v71);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v68 = sub_100013414(&unk_10009A100, &qword_1000779A8);
  v17 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v69 = (&v54 - v18);
  v19 = type metadata accessor for PairingOutcome();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v54 - v26;
  __chkstk_darwin(v25);
  v29 = &v54 - v28;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v66 = a3;
    v57 = v14;
    v72 = result;
    v31 = static os_log_type_t.default.getter();
    v32 = qword_10009CED0;
    v33 = *(v20 + 16);
    v65 = a1;
    v34 = a1;
    v35 = v33;
    v33(v29, v34, v19);
    v59 = v31;
    if (os_log_type_enabled(v32, v31))
    {
      v36 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v73[0] = v55;
      *v36 = 136446466;
      v58 = v16;
      v56 = v35;
      v37 = *(v72 + 16);
      v38 = *(v72 + 24);

      v39 = sub_10000C600(v37, v38, v73);
      v35 = v56;

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v35(v27, v29, v19);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      (*(v20 + 8))(v29, v19);
      v43 = sub_10000C600(v40, v42, v73);

      *(v36 + 14) = v43;
      v16 = v58;
      _os_log_impl(&_mh_execute_header, v32, v59, "%{public}s: Received pairing outcome %{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v20 + 8))(v29, v19);
    }

    v35(v24, v65, v19);
    v44 = (*(v20 + 88))(v24, v19);
    v45 = v66;
    if (v44 == enum case for PairingOutcome.failure(_:))
    {
      (*(v20 + 96))(v24, v19);
      v46 = *v24;
      v47 = v69;
      *v69 = v46;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v45(v47);

LABEL_7:

      return sub_100022560(v47, &unk_10009A100, &qword_1000779A8);
    }

    if (v44 == enum case for PairingOutcome.challenge(_:))
    {
      (*(v20 + 96))(v24, v19);
      v48 = *v24;
      v49 = *(v24 + 1);
      v50 = v24[16];
      PairingChallengeEvent.init(lastAttemptIncorrect:throttleSeconds:)();
      v51 = v62;
      (*(v67 + 16))(v62, v16, v71);
      v52 = v61 + 104;
      v53 = v64;
      (*(v61 + 104))(v51, enum case for DeviceServiceEvent.pairingChallenge(_:), v64);
      sub_10002EF04(&unk_10009ADD0, &type metadata accessor for DeviceServiceEvent);
      sub_10002EF04(&unk_10009A0F0, &type metadata accessor for DeviceServiceEvent);
      XPCConnection.send<A>(value:)();

      (*(v52 - 96))(v51, v53);
      return (*(v67 + 8))(v16, v71);
    }

    if (v44 == enum case for PairingOutcome.success(_:))
    {
      v47 = v69;
      sub_10002A3F0();
      swift_storeEnumTagMultiPayload();
      v45(v47);
      goto LABEL_7;
    }

    if (v44 == enum case for PairingOutcome.awaitingUserConsent(_:))
    {
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void sub_10002C764()
{
  sub_10000D060();
  v3 = v2;
  v26 = v4;
  v27 = v5;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DiscoveredPairableHost.State(0);
  v11 = sub_10000CC04(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_10000D618();
  v14 = static os_log_type_t.default.getter();
  v15 = qword_10009CED0;
  if (sub_10002F68C(v14))
  {
    v16 = swift_slowAlloc();
    sub_10000CCCC();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), &v28);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s: Initating pairing", v16, 0xCu);
    sub_10000CADC(v17);
    sub_100015FBC();

    sub_100015FBC();
  }

  v18 = sub_100013414(&unk_10009A0C0, &unk_100077998);
  v19 = v18[12];
  v20 = v18[16];
  v21 = (v1 + v18[20]);
  v22 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CC04(v22);
  (*(v23 + 16))(v1, v26);
  *(v1 + v19) = v7;
  *(v1 + v20) = v9;
  *v21 = v27;
  v21[1] = v3;
  sub_100022994();
  swift_storeEnumTagMultiPayload();

  sub_100028B40(v1);
  sub_10000CBD0();
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v7;

  dispatch thunk of ControlChannelConnection.initiatePairing(withOptions:pairingOutcomeHandler:)();

  sub_1000135A0();
}

uint64_t sub_10002C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v84 = a1;
  v3 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v81 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PairingOutcome();
  v85 = *(v6 - 8);
  v7 = *(v85 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v69[-v11];
  v13 = type metadata accessor for DiscoveredPairableHost.State(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v69[-v18];
  v20 = type metadata accessor for DiscoveredBonjourAdvert();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v80 = v21;
    v27 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    swift_beginAccess();
    sub_10002ED74(v26 + v27, v19);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v77 = v17;
      v78 = v10;
      v79 = v6;
      v28 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v29 = *&v19[v28[12]];
      v30 = *&v19[v28[16]];

      v31 = &v19[v28[20]];
      v33 = *v31;
      v32 = v31[1];
      v34 = v80;
      (*(v80 + 32))(v24, v19, v20);
      if (v29 != v86)
      {
        (*(v34 + 8))(v24, v20);
      }

      v74 = v33;
      v75 = v29;
      v76 = v20;
      v35 = v85;
      v36 = v79;
      (*(v85 + 16))(v12, v84, v79);
      v37 = (*(v35 + 88))(v12, v36);
      v38 = v37;
      if (v37 == enum case for PairingOutcome.failure(_:))
      {
        (*(v35 + 96))(v12, v36);
        v39 = *v12;
        v40 = v80;
        v41 = *(v80 + 16);
        v42 = v77;
        v73 = v24;
        v41(v77, v24, v76);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v42);
        v43 = v78;
        *v78 = v39;
        (*(v35 + 104))(v43, v38, v36);
        swift_errorRetain();
        v74(v43);
        (*(v35 + 8))(v43, v36);
        v45 = v81;
        v44 = v82;
        v46 = v83;
        (*(v82 + 104))(v81, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v83);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v44 + 8))(v45, v46);
        return (*(v40 + 8))(v73, v76);
      }

      v47 = v24;
      v48 = v77;
      v49 = v78;
      if (v37 == enum case for PairingOutcome.challenge(_:))
      {
        v50 = v79;
        (*(v35 + 96))(v12, v79);
        v51 = *(v12 + 1);
        v52 = v12[16];
        *v49 = *v12;
        v49[1] = v51;
        *(v49 + 16) = v52;
        (*(v35 + 104))(v49, v38, v50);
        v74(v49);

        (*(v35 + 8))(v49, v50);
        return (*(v80 + 8))(v47, v76);
      }

      if (v37 == enum case for PairingOutcome.success(_:))
      {
        LODWORD(v84) = v37;
        v53 = static os_log_type_t.default.getter();
        v54 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v53))
        {
          v55 = swift_slowAlloc();
          v71 = v55;
          v72 = swift_slowAlloc();
          v87 = v72;
          *v55 = 136446210;
          v57 = *(v26 + 16);
          v56 = *(v26 + 24);

          v58 = sub_10000C600(v57, v56, &v87);
          v70 = v53;
          v59 = v58;
          v35 = v85;

          v60 = v71;
          *(v71 + 1) = v59;
          _os_log_impl(&_mh_execute_header, v54, v70, "%{public}s: Successfully wirelessly paired with host", v60, 0xCu);
          sub_10000CADC(v72);
        }

        v61 = v80;
        v62 = v76;
        (*(v80 + 16))(v48, v47, v76);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v48);
        v63 = v79;
        (*(v35 + 104))(v49, v84, v79);
        v74(v49);
        (*(v35 + 8))(v49, v63);
        v65 = v81;
        v64 = v82;
        v66 = v83;
        (*(v82 + 104))(v81, enum case for ControlChannelConnection.InvalidationReason.devicePaired(_:), v83);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v64 + 8))(v65, v66);
        return (*(v61 + 8))(v47, v62);
      }

      else
      {
        v67 = v74;
        if (v37 == enum case for PairingOutcome.awaitingUserConsent(_:))
        {
          v68 = v79;
          (*(v35 + 104))(v78, v37, v79);
          v67(v49);

          (*(v35 + 8))(v49, v68);
          return (*(v80 + 8))(v47, v76);
        }

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    else
    {

      return sub_10002EDD8(v19);
    }
  }

  return result;
}

void sub_10002D260()
{
  sub_10000D060();
  v1 = type metadata accessor for DeviceServiceEvent();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000EDF0();
  v47 = v7 - v8;
  v10 = __chkstk_darwin(v9);
  v50 = v45 - v11;
  __chkstk_darwin(v10);
  v13 = v45 - v12;
  v54 = v45 - v12;
  sub_10002A3F0();
  v14 = *(v4 + 104);
  v55 = v1;
  v14(v13, enum case for DeviceServiceEvent.pairableHostFound(_:), v1);
  v15 = static os_log_type_t.debug.getter();
  v16 = qword_10009CED0;
  v17 = sub_10002F68C(v15);
  v51 = v16;
  if (v17)
  {

    sub_10002F620();
    v18 = swift_slowAlloc();
    sub_10000CCCC();
    v19 = swift_slowAlloc();
    v58[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v58);
    *(v18 + 12) = 2048;
    v20 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
    sub_10000EB00();
    swift_beginAccess();
    v21 = *(v0 + v20);
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v22 = *(v0 + v20);
      }

      v23 = *(v0 + v20);

      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *(v21 + 16);
    }

    *(v18 + 14) = v24;

    _os_log_impl(&_mh_execute_header, v51, v15, "%{public}s: Publishing discovered host state changes to %ld peers", v18, 0x16u);
    sub_10000CADC(v19);
    sub_100015FBC();

    sub_100015FBC();
  }

  v25 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
  sub_10000EB00();
  swift_beginAccess();
  v26 = *(v0 + v25);
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (v26 < 0)
    {
      v27 = *(v0 + v25);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000CC20();
    sub_10002EF04(v28, v29);
    Set.Iterator.init(_cocoa:)();
    v26 = v58[0];
    v31 = v58[1];
    v32 = v58[2];
    v33 = v58[3];
    v34 = v58[4];
  }

  else
  {
    v31 = v26 + 56;
    v35 = *(v26 + 56);
    v32 = ~(-1 << *(v26 + 32));
    sub_10000D89C();
    v34 = v36 & v37;

    v33 = 0;
  }

  v45[1] = v32;
  v38 = (v32 + 64) >> 6;
  v48 = v4 + 16;
  v52 = (v4 + 8);
  *&v30 = 136315394;
  v46 = v30;
  v53 = v31;
  v49 = v26;
  while (v26 < 0)
  {
    v44 = __CocoaSet.Iterator.next()();
    if (!v44 || (v56 = v44, type metadata accessor for SystemXPCPeerConnection(), swift_dynamicCast(), v41 = v33, v42 = v34, !v57))
    {
LABEL_24:
      (*v52)(v54, v55);
      sub_1000134CC();
      sub_1000135A0();
      return;
    }

LABEL_23:
    sub_10002EF04(&unk_10009ADD0, &type metadata accessor for DeviceServiceEvent);
    sub_10002EF04(&unk_10009A0F0, &type metadata accessor for DeviceServiceEvent);
    XPCConnection.send<A>(value:)();

    v33 = v41;
    v34 = v42;
    v31 = v53;
  }

  v39 = v33;
  v40 = v34;
  v41 = v33;
  if (v34)
  {
LABEL_19:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v26 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));

    if (!v43)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
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
      goto LABEL_24;
    }

    v40 = *(v31 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_10002D8FC()
{
  sub_10000D060();
  v80 = v1;
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = sub_10000CBBC(v2);
  v79 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v78 = v8 - v7;
  sub_10002F608();
  v77 = type metadata accessor for POSIXError();
  v9 = sub_10000CBBC(v77);
  v75 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v73 = v14 - v13;
  sub_10002F608();
  v76 = type metadata accessor for PairingOutcome();
  v15 = sub_10000CBBC(v76);
  v74 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000CBDC();
  v21 = (v20 - v19);
  v22 = type metadata accessor for DiscoveredPairableHost.State(0);
  v23 = sub_10000CC04(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000EDF0();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v66 - v30;
  v32 = type metadata accessor for DiscoveredBonjourAdvert();
  v33 = sub_10000CBBC(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_10000CBDC();
  v40 = v39 - v38;
  v41 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  sub_10002ED74(v0 + v41, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v67 = v28;
      v68 = v0;
      v71 = v21;
      v72 = v2;
      v42 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v43 = *&v31[v42[12]];
      v44 = *&v31[v42[16]];
      v45 = &v31[v42[20]];
      v46 = *v45;
      v47 = *(v45 + 1);
      v69 = *(v35 + 32);
      v70 = v46;
      v69(v40, v31, v32);
      type metadata accessor for XPCConnection();
      if (static XPCConnection.== infix(_:_:)())
      {
        v66 = v47;
        v80 = v43;
        v48 = static os_log_type_t.default.getter();
        v49 = qword_10009CED0;
        if (sub_10002F68C(v48))
        {
          v50 = swift_slowAlloc();
          sub_10000CCCC();
          v51 = swift_slowAlloc();
          v81 = v51;
          *v50 = 136446210;
          *(v50 + 4) = sub_10000C600(*(v68 + 16), *(v68 + 24), &v81);

          _os_log_impl(&_mh_execute_header, v49, v48, "%{public}s: Cancelling pairing attempt because peer initiating pairing has disconnected", v50, 0xCu);
          sub_10000CADC(v51);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {
        }

        v52 = v67;
        v53 = sub_10000EB0C();
        (v69)(v53);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v52);
        LODWORD(v81) = 89;
        sub_10004FD70(_swiftEmptyArrayStorage);
        sub_10002F5A8();
        sub_10002EF04(v54, v55);
        _BridgedStoredNSError.init(_:userInfo:)();
        v56 = POSIXError._nsError.getter();
        v57 = *(v75 + 8);
        v58 = sub_10000EB0C();
        v59(v58);
        v60 = v71;
        *v71 = v56;
        v61 = v74;
        v62 = v76;
        (*(v74 + 104))(v60, enum case for PairingOutcome.failure(_:), v76);
        v70(v60);

        (*(v61 + 8))(v60, v62);
        v64 = v78;
        v63 = v79;
        v65 = v72;
        (*(v79 + 104))(v78, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v72);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v63 + 8))(v64, v65);
      }

      else
      {
        (*(v35 + 8))(v40, v32);
      }

      break;
    case 4u:
      break;
    default:
      (*(v35 + 8))(v31, v32);
      break;
  }

  sub_1000135A0();
}

void sub_10002DE7C()
{
  sub_10000D060();
  v37 = v2;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DiscoveredPairableHost.State(0);
  v9 = sub_10000CC04(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  sub_10000D4A0();
  v12 = type metadata accessor for ControlChannelConnection.Options();
  v13 = sub_10000CBBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v20 = v19 - v18;
  v21 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue);
  DiscoveredBonjourAdvert.createTransport(withTargetQueue:)();
  sub_100022260(v41, &v40);
  v22 = v21;
  ControlChannelConnection.Options.Host.init(attemptPairVerify:)();
  (*(v15 + 104))(v20, enum case for ControlChannelConnection.Options.host(_:), v12);
  sub_100022260(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager, &v39);
  v23 = type metadata accessor for ControlChannelConnection();
  static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
  sub_10000CBD0();
  v27 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;

  dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

  sub_10000CBD0();
  v29 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v26;

  dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

  v31 = sub_100013414(&unk_10009A0C0, &unk_100077998);
  v32 = v31[12];
  v33 = v31[16];
  v34 = (v1 + v31[20]);
  v35 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CC04(v35);
  (*(v36 + 16))(v1, v7);
  *(v1 + v32) = v26;
  *(v1 + v33) = v5;
  *v34 = v37;
  v34[1] = v38;
  swift_storeEnumTagMultiPayload();

  sub_100028B40(v1);
  dispatch thunk of ControlChannelConnection.start()();

  sub_10000CADC(v41);
  sub_1000135A0();
}

uint64_t sub_10002E1A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_10000EB00();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a2);
  }

  return result;
}

void sub_10002E218()
{
  sub_10000D060();
  v53 = v2;
  v3 = type metadata accessor for PairingOutcome();
  v4 = sub_10000CBBC(v3);
  v52 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v10 = (v9 - v8);
  v11 = type metadata accessor for DiscoveredBonjourAdvert();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10000D618();
  v17 = type metadata accessor for DiscoveredPairableHost.State(0);
  v18 = sub_10000CC04(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000EDF0();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  v27 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v0 + v27, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = v3;
      v38 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v39 = *&v26[v38[12]];
      v40 = *&v26[v38[16]];

      v41 = &v26[v38[20]];
      v42 = *(v41 + 1);
      v50 = *v41;
      (*(v14 + 32))(v1, v26, v11);
      if (v39 == v53)
      {
        (*(v14 + 16))(v23, v1, v11);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v23);
        type metadata accessor for RemotePairingError();
        sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError);
        sub_10002F614();
        v43 = swift_allocError();
        v53 = v42;
        v44 = v43;
        sub_10000D294();
        sub_10002EF04(v45, &type metadata accessor for RemotePairingError);
        static Error<>.unknown.getter();
        *v10 = v44;
        v46 = v52;
        (*(v52 + 104))(v10, enum case for PairingOutcome.failure(_:), v51);
        v50(v10);

        v47 = *(v46 + 8);
        v48 = sub_10000EB0C();
        v49(v48);
        (*(v14 + 8))(v1, v11);
      }

      else
      {
        (*(v14 + 8))(v1, v11);
      }

      goto LABEL_10;
    case 2u:
      v34 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v35 = *&v26[v34[12]];

      v36 = *&v26[v34[16]];

      v37 = *&v26[v34[20] + 8];

      goto LABEL_6;
    case 3u:
LABEL_6:
      (*(v14 + 8))(v26, v11);
      goto LABEL_10;
    case 4u:
      goto LABEL_3;
    default:
      (*(v14 + 8))(v26, v11);
LABEL_3:
      v28 = static os_log_type_t.error.getter();
      v29 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v28))
      {
        sub_10002F620();
        v30 = swift_slowAlloc();
        sub_10002F65C();
        v54[0] = swift_slowAlloc();
        *v30 = 136446466;
        *(v30 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v54);
        *(v30 + 12) = 2080;
        v31 = dispatch thunk of ControlChannelConnection.id.getter();
        v33 = sub_10000C600(v31, v32, v54);

        *(v30 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: Unexpectedly received control channel invalidation for %s while in state unavailable", v30, 0x16u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

LABEL_10:
      sub_1000135A0();
      return;
  }
}

void sub_10002E6D8()
{
  sub_10000D060();
  v3 = v2;
  v4 = type metadata accessor for DiscoveredPairableHost.State(0);
  v5 = sub_10000CC04(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  sub_10000D4A0();
  v8 = type metadata accessor for DiscoveredBonjourAdvert();
  v9 = sub_10000CBBC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v0 + v17, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_100013414(&unk_10009A0C0, &unk_100077998);
    v19 = *(v1 + v18[12]);
    v20 = *(v1 + v18[16]);
    v21 = (v1 + v18[20]);
    v23 = *v21;
    v22 = v21[1];
    (*(v11 + 32))(v16, v1, v8);
    if (v19 == v3)
    {
      sub_10002C764();
    }

    (*(v11 + 8))(v16, v8);
  }

  else
  {
    sub_10002EDD8(v1);
  }

  sub_1000135A0();
}

char *sub_10002E8A0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID;
  v5 = type metadata accessor for UUID();
  sub_10000CC04(v5);
  (*(v6 + 8))(&v0[v4]);
  sub_10000CADC(&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager]);

  sub_10002EDD8(&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state]);
  v7 = *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers];

  v8 = *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__transactions];

  v9 = *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener];

  v10 = *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher];

  return v0;
}

uint64_t sub_10002E980()
{
  sub_10002E8A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10002EA00()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DiscoveredPairableHost.State(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002EB34(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002EB74()
{
  sub_10002EC00();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10002EC48();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_10002EC00()
{
  if (!qword_10009A078)
  {
    v0 = type metadata accessor for DiscoveredBonjourAdvert();
    if (!v1)
    {
      atomic_store(v0, &qword_10009A078);
    }
  }
}

void sub_10002EC48()
{
  if (!qword_10009A080[0])
  {
    __chkstk_darwin(0);
    type metadata accessor for DiscoveredBonjourAdvert();
    type metadata accessor for ControlChannelConnection();
    type metadata accessor for SystemXPCPeerConnection();
    sub_100015E90(&unk_100099DC0, &unk_100077860);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, qword_10009A080);
    }
  }
}

uint64_t sub_10002ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EDD8(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002EF4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100028D84(a1);
}

uint64_t sub_10002EF54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100029278(a1);
}

uint64_t sub_10002EF5C()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    v3 = *v0;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v1 = sub_10002EFF4(v3, result + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    result = sub_100068FD0();
    *v1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EFF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009A178, &qword_1000779C8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v17 = v3;
      type metadata accessor for SystemXPCPeerConnection();
      swift_dynamicCast();
      sub_100013414(&qword_10009A180, &unk_1000779D0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_10002F23C(v4 + 1, 1);
      }

      v2 = v19;
      v5 = *(v19 + 40);
      sub_10000CC20();
      sub_10002EF04(&unk_10009A0E0, v6);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = v19 + 64;
      v9 = -1 << *(v19 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v19 + 64 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v12 = __clz(__rbit64((-1 << v10) & ~*(v19 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v19 + 48) + 8 * v12) = v18;
      *(*(v19 + 56) + 8 * v12) = v17;
      ++*(v19 + 16);
    }

    v13 = 0;
    v14 = (63 - v9) >> 6;
    while (++v11 != v14 || (v13 & 1) == 0)
    {
      v15 = v11 == v14;
      if (v11 == v14)
      {
        v11 = 0;
      }

      v13 |= v15;
      v16 = *(v8 + 8 * v11);
      if (v16 != -1)
      {
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002F23C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100013414(&qword_10009A178, &qword_1000779C8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v32 = v3;
  v33 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_100066980(0, (v31 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v35 = (v13 - 1) & v13;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((v34 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    v22 = *(v8 + 40);
    type metadata accessor for SystemXPCPeerConnection();
    sub_10002EF04(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    v5 = v33;
    v13 = v35;
    if (!v35)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10002F51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F62C()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10002F668(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48));
  v4 = *(v1 + *(a1 + 64));
}

BOOL sub_10002F68C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002F6B0()
{
  v3 = 0;
  sysctlbyname("kern.bootargs", 0, &v3, 0, 0);
  v0 = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v3)
  {
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v1[2] = v0;
    bzero(v1 + 4, v0);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sysctlbyname("kern.bootargs", v1 + 4, &v3, 0, 0);
  return sub_10002F784(v1);
}

uint64_t sub_10002F784(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = static String._fromUTF8Repairing(_:)();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F80C()
{
  sub_10002F6B0();
  if (os_variant_allows_internal_security_policies())
  {
    v0 = &off_10008EAB0;
    v1 = 3;
    while (--v1)
    {
      v2 = v0 + 2;
      v6 = *(v0 - 1);
      v7 = *v0;
      swift_bridgeObjectRetain_n();
      v3._countAndFlagsBits = 12605;
      v3._object = 0xE200000000000000;
      String.append(_:)(v3);
      sub_10002F90C();
      v4 = StringProtocol.contains<A>(_:)();

      v0 = v2;
      if (v4)
      {

        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_10002F90C()
{
  result = qword_10009A188;
  if (!qword_10009A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A188);
  }

  return result;
}

uint64_t sub_10002F960(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for SystemXPCListenerConnection();
  v6 = a3;
  static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();

  v7 = swift_dynamicCastClassUnconditional();
  type metadata accessor for RemotePairingDeviceXPCServer();
  v8 = swift_allocObject();
  sub_10002FA0C(v7, a1, a2, v6);
  return v8;
}

void *sub_10002FA0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for XPCReplyProviding();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  static XPCReplyProviding.passthrough.getter();
  v11 = sub_100013414(&qword_10009A270, &unk_100077A40);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v4[2] = XPCMessageDispatcher.init(xpcReplyProviding:inboundObserver:outboundObserver:)();
  if (sub_10004997C(&_swiftEmptyArrayStorage))
  {
    sub_1000579D4(&_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = &_swiftEmptySetSingleton;
  }

  v4[4] = a4;
  v4[5] = v14;
  v4[3] = a1;
  sub_10000CBD0();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v17 = a4;

  dispatch thunk of SystemXPCListenerConnection.setPeerConnectionHandler(_:)();

  return v4;
}

uint64_t sub_10002FBB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v45 = a3;
  v6 = type metadata accessor for XPCError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v41 - v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100015EEC(a1, v20, &qword_10009A170, &qword_1000779C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = a4;
      (*(v7 + 32))(v16, v20, v6);
      v22 = static os_log_type_t.error.getter();
      v23 = qword_10009CED0;
      v24 = v7;
      v25 = *(v7 + 16);
      v25(v14, v16, v6);
      if (os_log_type_enabled(v23, v22))
      {
        v26 = swift_slowAlloc();
        v42 = v23;
        v27 = v26;
        v43 = swift_slowAlloc();
        v46[0] = v43;
        *v27 = 136315394;
        *(v27 + 4) = sub_10000C600(v45, v44, v46);
        *(v27 + 12) = 2080;
        v25(v11, v14, v6);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = *(v24 + 8);
        v31(v14, v6);
        v32 = sub_10000C600(v28, v30, v46);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v42, v22, "Failed to start %s with error: %s", v27, 0x16u);
        swift_arrayDestroy();

        return (v31)(v16, v6);
      }

      else
      {

        v40 = *(v24 + 8);
        v40(v14, v6);
        return (v40)(v16, v6);
      }
    }

    else
    {
      v33 = *v20;
      v34 = static os_log_type_t.debug.getter();
      v35 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v46[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_10000C600(v45, a4, v46);
        _os_log_impl(&_mh_execute_header, v35, v34, "Peer connected to %s XPC service", v36, 0xCu);
        sub_10000CADC(v37);
      }

      type metadata accessor for SystemXPCPeerConnection();
      v38 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();

      sub_100064C00(&v47, v38);
      swift_endAccess();

      v39 = swift_dynamicCastClassUnconditional();

      sub_100030090(v39);
    }
  }

  return result;
}

uint64_t sub_100030090(uint64_t a1)
{
  v3 = *(v1 + 32);
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  swift_beginAccess();

  sub_100064C00(&v8, a1);
  swift_endAccess();

  sub_10000CBD0();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

  return dispatch thunk of XPCConnection.activate()();
}

uint64_t sub_1000301BC(uint64_t a1)
{
  v51 = sub_100013414(&qword_100099488, &unk_100077650);
  v2 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v52 = (&v44 - v3);
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v44 - v11;
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_100015EEC(a1, v18, &unk_1000994A0, &unk_100077090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_beginAccess();
        sub_100067860();
        swift_endAccess();

        return sub_100030708(v18, &unk_1000994A0, &unk_100077090);
      }

      (*(v5 + 32))(v14, v18, v4);
      v23 = static os_log_type_t.debug.getter();
      v24 = qword_10009CED0;
      v25 = *(v5 + 16);
      v50 = v5 + 16;
      v25(v12, v14, v4);
      v49 = v23;
      v26 = v23;
      v27 = v24;
      if (os_log_type_enabled(v24, v26))
      {
        v28 = swift_slowAlloc();
        v46 = v28;
        v48 = swift_slowAlloc();
        v53 = v48;
        *v28 = 136315138;
        v25(v9, v12, v4);
        v29 = String.init<A>(describing:)();
        v47 = v25;
        v30 = v29;
        v32 = v31;
        v33 = *(v5 + 8);
        v45 = v27;
        v34 = v12;
        v35 = v33;
        v33(v34, v4);
        v36 = sub_10000C600(v30, v32, &v53);

        v37 = v45;
        v38 = v46;
        *(v46 + 1) = v36;
        _os_log_impl(&_mh_execute_header, v37, v49, "Received XPC event from local peer: %s", v38, 0xCu);
        sub_10000CADC(v48);

        v39 = v47;
      }

      else
      {
        v40 = v12;
        v35 = *(v5 + 8);
        v35(v40, v4);
        v39 = v25;
      }

      v41 = *(v20 + 16);
      v42 = v52;
      v43 = *(v51 + 48);
      *v52 = v22;
      v39(v42 + v43, v14, v4);

      dispatch thunk of CodableDispatcher.dispatch(encodedData:context:completion:)();

      sub_100030708(v42, &qword_100099488, &unk_100077650);
      v35(v14, v4);
    }
  }

  return result;
}

uint64_t sub_100030664()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_10003069C()
{
  sub_100030664();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100030700(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000301BC(a1);
}

uint64_t sub_100030708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013414(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100030768()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E0D0;
  v1._object = 0x800000010007E0B0;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A278 = v3;
}

void sub_10003088C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v9 = qword_10009CEF0;
  v13._object = 0x800000010007E060;
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000004BLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v13);

  *a4 = v12._countAndFlagsBits;
  *a5 = v12._object;
}

void sub_100030960()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E180;
  v1._countAndFlagsBits = 0xD000000000000068;
  v1._object = 0x800000010007E110;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000005DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2A8 = v3;
}

Swift::String *sub_100030A34()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v5._object = 0x800000010007E020;
  v1._object = 0x800000010007DFB0;
  v1._countAndFlagsBits = 0x1000000000000063;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000039;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5);

  result = swift_allocObject();
  result[1] = v3;
  qword_10009A2B8 = sub_100035FE4;
  unk_10009A2C0 = result;
  return result;
}

void sub_100030B2C()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E2D0;
  v1._object = 0x800000010007E2A0;
  v4._countAndFlagsBits = 0xD000000000000061;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2C8 = v3;
}

void sub_100030C00()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E390;
  v1._countAndFlagsBits = 0xD00000000000004CLL;
  v1._object = 0x800000010007E340;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000049;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2D8 = v3;
}

uint64_t sub_100030CD4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000687A4(a1);
  if (v7 || (result = sub_1000687A4(a1), v9))
  {

    v10 = static os_log_type_t.default.getter();
    v11 = qword_10009CED0;
    (*(v3 + 16))(v6, a1, v2);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = UUID.uuidString.getter();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_10000C600(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v10, "Ended promptless pairing session %{public}s", v12, 0xCu);
      sub_10000CADC(v13);
    }

    else
    {
      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void sub_100030ED8(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = static os_log_type_t.default.getter();
  v18 = qword_10009CED0;
  v19 = *(v10 + 16);
  if (a2)
  {
    v19(v16, a1, v9);
    if (os_log_type_enabled(v18, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = a1;
      v22 = v21;
      v40 = v21;
      *v20 = 136446210;
      v23 = UUID.uuidString.getter();
      v38 = a4;
      v25 = v24;
      (*(v10 + 8))(v16, v9);
      v26 = sub_10000C600(v23, v25, &v40);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v17, "Automation promptless pairing allowed by session %{public}s", v20, 0xCu);
      sub_10000CADC(v22);
    }

    else
    {
      (*(v10 + 8))(v16, v9);
    }

    v35 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *v5;
    sub_1000690D0();
    *v5 = v40;
  }

  else
  {
    v19(v14, a1, v9);
    if (os_log_type_enabled(v18, v17))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = a4;
      v29 = v28;
      v40 = v28;
      *v27 = 136446210;
      v30 = UUID.uuidString.getter();
      v37 = v5;
      v31 = v30;
      v33 = v32;
      (*(v10 + 8))(v14, v9);
      v5 = v37;
      v34 = sub_10000C600(v31, v33, &v40);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v18, v17, "Non-automation promptless pairing allowed by session %{public}s", v27, 0xCu);
      sub_10000CADC(v29);
    }

    else
    {
      (*(v10 + 8))(v14, v9);
    }

    v36 = v5[1];
    swift_isUniquelyReferenced_nonNull_native();
    v40 = v5[1];
    sub_1000690D0();
    v5[1] = v40;
  }
}

uint64_t sub_10003128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100013414(&qword_10009A4A8, &qword_100077B88);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  sub_10005B1E8(a1, &v33 - v11);
  v13 = sub_100013414(&qword_10009A4B0, &qword_100077B90);
  if (sub_100022484(v12, 1, v13) != 1)
  {
    v17 = &v12[*(v13 + 48)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v12, v20);
    v21 = sub_100013414(&qword_10009A498, &qword_100077B78);
    v22 = (a3 + *(v21 + 48));
    v23 = enum case for PermittedPromptlessPairingMode.automation(_:);
    v24 = type metadata accessor for PermittedPromptlessPairingMode();
    (*(*(v24 - 8) + 104))(a3, v23, v24);
    *v22 = v18;
    v22[1] = v19;
LABEL_6:
    v15 = a3;
    v16 = 0;
    v14 = v21;
    return sub_1000223E8(v15, v16, 1, v14);
  }

  sub_10003625C(v12);
  sub_10005B1E8(a2, v10);
  if (sub_100022484(v10, 1, v13) != 1)
  {
    v25 = &v10[*(v13 + 48)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 8))(v10, v28);
    v21 = sub_100013414(&qword_10009A498, &qword_100077B78);
    v29 = (a3 + *(v21 + 48));
    v30 = enum case for PermittedPromptlessPairingMode.nonAutomation(_:);
    v31 = type metadata accessor for PermittedPromptlessPairingMode();
    (*(*(v31 - 8) + 104))(a3, v30, v31);
    *v29 = v26;
    v29[1] = v27;
    goto LABEL_6;
  }

  sub_10003625C(v10);
  v14 = sub_100013414(&qword_10009A498, &qword_100077B78);
  v15 = a3;
  v16 = 1;
  return sub_1000223E8(v15, v16, 1, v14);
}

void sub_100031548()
{
  sub_10000D060();
  v1 = v0;
  v26 = v2;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = sub_10000CBBC(v3);
  v28 = v5;
  v29 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v25 = v9 - v8;
  sub_10002F608();
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v24);
  sub_10000CBDC();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_10000CBDC();
  sub_100035DCC();
  static DispatchQoS.userInitiated.getter();
  v30 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v31 = *(v12 + 104);
  v31(v16);
  sub_100036008(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100036538();
  sub_100035F9C(v19, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for UUID();
  sub_100036008(&unk_10009BE40, &type metadata accessor for UUID);
  v20 = sub_100036570();
  v21 = sub_100036570();
  *(v0 + 48) = v20;
  *(v0 + 56) = v21;
  *(v0 + 64) = [objc_allocWithZone(USBListener) init];
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 16) = v26;
  v27 = v26;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (v31)(v16, v30, v24);
  (*(v28 + 104))(v25, enum case for DispatchQoS.QoSClass.userInteractive(_:), v29);
  static OS_dispatch_queue.global(qos:)();
  (*(v28 + 8))(v25, v29);
  static DispatchQoS.unspecified.getter();
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (v31)(v16, v30, v24);
  v22 = *(v0 + 32);
  static DispatchQoS.unspecified.getter();
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v1 + 40) = v23;
  sub_1000135A0();
}

void sub_1000319E4()
{
  sub_10000D060();
  v1 = v0;
  v41 = v2;
  v42 = v3;
  v39 = v4;
  v6 = v5;
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_10000CBBC(v7);
  v44 = v9;
  v45 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for UUID();
  v16 = sub_10000CBBC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v22 = sub_10000CBBC(v43);
  v40 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10000CBDC();
  v28 = v27 - v26;
  dispatch_suspend(*(v1 + 40));
  v38 = *(v1 + 32);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v29 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v21, v6, v15);
  v30 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v31 = v30 + v20;
  v32 = (v30 + v20) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  (*(v18 + 32))(v33 + v30, v21, v15);
  *(v33 + v31) = v39;
  v34 = v33 + v32;
  v35 = v42;
  *(v34 + 8) = v41;
  *(v34 + 16) = v35;
  v46[4] = sub_100036414;
  v46[5] = v33;
  sub_10001ACF4();
  v46[1] = 1107296256;
  sub_10000EE28();
  v46[2] = v36;
  v46[3] = &unk_1000900B0;
  v37 = _Block_copy(v46);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v44 + 8))(v14, v45);
  (*(v40 + 8))(v28, v43);

  sub_1000135A0();
}

void sub_100031CD4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_100030ED8(a2, a3 & 1, a4, a5);
    swift_endAccess();
    v11 = *(v10 + 32);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 40);

    dispatch_resume(v13);
  }
}

void sub_100031DC8()
{
  sub_10000D060();
  v31 = v1;
  v2 = type metadata accessor for DispatchQoS();
  v3 = sub_10000CBBC(v2);
  v33 = v4;
  v34 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for UUID();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v17 = sub_10000CBBC(v32);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000CBDC();
  v24 = v23 - v22;
  dispatch_suspend(*(v0 + 40));
  v25 = *(v0 + 32);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v26 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, v31, v10);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  (*(v13 + 32))(v28 + v27, v16, v10);
  v35[4] = sub_100036384;
  v35[5] = v28;
  sub_10001ACF4();
  v35[1] = 1107296256;
  sub_10000EE28();
  v35[2] = v29;
  v35[3] = &unk_100090060;
  v30 = _Block_copy(v35);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v33 + 8))(v9, v34);
  (*(v19 + 8))(v24, v32);

  sub_1000135A0();
}

void sub_10003207C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_100030CD4(a2);
    swift_endAccess();
    v5 = *(v4 + 32);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + 40);

    dispatch_resume(v7);
  }
}

void sub_100032150()
{
  sub_10000D060();
  v1 = type metadata accessor for DispatchQoS();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v18 = v17 - v16;
  dispatch_suspend(*(v0 + 40));
  v19 = *(v0 + 32);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v20 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1000362C4;
  v23[5] = v20;
  sub_10001ACF4();
  v23[1] = 1107296256;
  sub_10000EE28();
  v23[2] = v21;
  v23[3] = &unk_100090010;
  v22 = _Block_copy(v23);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);

  sub_1000135A0();
}

void sub_100032334()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_100013414(&qword_10009A4B8, &qword_100077B98);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    swift_endAccess();
    v2 = *(v1 + 32);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + 40);

    dispatch_resume(v4);
  }
}

uint64_t sub_100032460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100013414(&qword_10009A498, &qword_100077B78);
  sub_1000223E8(a1, 1, 1, v3);
  v4 = *(v1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000361BC;
  *(v6 + 24) = v5;
  v10[4] = sub_1000361C4;
  v10[5] = v6;
  sub_100036518();
  v10[1] = 1107296256;
  v10[2] = sub_100032698;
  v10[3] = &unk_10008FFE8;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000325C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A4A0, &qword_100077B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  swift_beginAccess();
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);

  sub_10003128C(v9, v8, v7);

  return sub_1000361EC(v7, a1);
}

uint64_t sub_1000326C0()
{
  v1 = *(v0 + 64);
  sub_10000CBD0();
  v2 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1000361B4;
  v7[5] = v2;
  sub_100036518();
  v7[1] = 1107296256;
  v7[2] = sub_100050100;
  v7[3] = &unk_10008FF70;
  v3 = _Block_copy(v7);
  v4 = v1;

  v5 = [v4 addDisconnectHandler:v3];
  _Block_release(v3);

  if (v5 && [*(v0 + 64) startOnQueue:*(v0 + 16)])
  {
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    return 1;
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    return 0;
  }
}

uint64_t sub_100032848()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100032150();
  }

  static os_log_type_t.default.getter();
  return os_log(_:dso:log:_:_:)();
}

void sub_1000328D0()
{
  v1 = v0;
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2;
    CFUserNotificationCancel(v3);
    v4 = *(v0 + 80);
    *(v0 + 80) = 0;

    v5 = *(v0 + 16);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  v6 = *(v1 + 88);
  if (v6)
  {
    v7 = v6;
    [v7 invalidate];
    v8 = *(v1 + 88);
    *(v1 + 88) = 0;

    v9 = *(v1 + 16);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  *(v1 + 72) = 0;
  v10 = *(v1 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_100032964()
{
  v1 = *(v0 + 72);
  if ((v1 & 1) == 0)
  {
    *(v0 + 72) = 1;
    v2 = *(v0 + 16);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  return v1 ^ 1u;
}

void sub_10003299C()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  isa = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PairingConsentCollectionOutcome();
  v14 = sub_10000CBBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v21 = (v20 - v19);
  if ((sub_100032964() & 1) == 0)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RemotePairingError();
    sub_1000364F0();
    sub_100036008(v29, v30);
    v31 = sub_100036550();
    static RemotePairingError.deviceIsAlreadyPairingWithHost.getter();
    *v21 = v31;
    v32 = sub_100036508();
    v33(v32);
    v4(v21);
LABEL_11:
    (*(v16 + 8))(v21, v13);
    goto LABEL_12;
  }

  v56 = v12;
  v57 = v10;
  v58 = v13;
  v22 = v4;
  v23 = *(v0 + 16);
  sub_10000CBD0();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v25[4] = v22;
  v25[5] = v2;

  v26 = v23;
  if ((sub_10002F80C() & 1) == 0)
  {
    v55 = v22;
    if ((os_variant_is_darwinos() & 1) == 0)
    {
      if (is_pairing_restricted_by_findMy())
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for RemotePairingError();
        sub_1000364F0();
        sub_100036008(v35, v36);
        v37 = sub_100036550();
        static RemotePairingError.findMyRejectedPairing.getter();
        *v21 = v37;
        v34 = &enum case for PairingConsentCollectionOutcome.rejected(_:);
LABEL_9:
        v38 = *v34;
        v39 = sub_100036508();
        v13 = v58;
        v40(v39);
        v41 = v21;
        v42 = v26;
LABEL_10:
        sub_100032FD0(v41, v42, v24, v55, v2);

        goto LABEL_11;
      }

      if (isa)
      {
        sub_100033424(isa);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      v54 = v26;
      if (v6 >> 60 == 15)
      {
        v43 = 0;
      }

      else
      {
        v43 = Data._bridgeToObjectiveC()().super.isa;
      }

      v44 = managed_configuration_allow_pairing(isa, v43);

      switch(v44)
      {
        case 0:
          type metadata accessor for RemotePairingError();
          sub_1000364F0();
          sub_100036008(v45, v46);
          v47 = sub_100036550();
          static RemotePairingError.managedConfigurationRejectedPairing.getter();
          *v21 = v47;
          v48 = &enum case for PairingConsentCollectionOutcome.rejected(_:);
          goto LABEL_22;
        case 1:
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v26 = v54;
          if (is_setup_complete())
          {
            v52 = sub_100036508();
            v53(v52);
            sub_100032FD0(v21, v54, v24, v22, v2);

            (*(v16 + 8))(v21, v58);

            sub_100033E80(v56, v57, v0, sub_100035E28, v25, v0);

            goto LABEL_12;
          }

          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          break;
        case 2:
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v48 = &enum case for PairingConsentCollectionOutcome.consentNotRequired(_:);
          goto LABEL_22;
        case 3:
          v48 = &enum case for PairingConsentCollectionOutcome.challengeRequired(_:);
LABEL_22:
          v49 = *v48;
          v50 = sub_100036508();
          v13 = v58;
          v51(v50);
          v41 = v21;
          v42 = v54;
          goto LABEL_10;
        default:

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
      }
    }

    v34 = &enum case for PairingConsentCollectionOutcome.consentNotRequired(_:);
    goto LABEL_9;
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v27 = sub_100036508();
  v28(v27);
  sub_100032FD0(v21, v26, v24, v22, v2);

  (*(v16 + 8))(v21, v58);
LABEL_12:
  sub_1000135A0();
}

uint64_t sub_100032FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v32 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PairingConsentCollectionOutcome();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = v27;
  *(v20 + v19) = v26;
  v22 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v21;
  v22[1] = v23;
  aBlock[4] = sub_100036118;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008FF48;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_100033394(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (PairingConsentCollectionOutcome.terminal.getter())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000328D0();
    }
  }

  return a3(a1);
}

uint64_t sub_100033424(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100013414(&qword_10009A470, &unk_100077B50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000CA80(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E8A4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E8A4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E8A4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000E8A4(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000336E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100013414(&qword_10009A470, &unk_100077B50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + 4 * v11);
    sub_10000CA80(*(a1 + 56) + 32 * v11, v33 + 8);
    LODWORD(v33[0]) = v12;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v12;
    swift_dynamicCast();
    sub_10000E8A4((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000E8A4(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000E8A4(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_10000E8A4(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_10003399C(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingConsentCollectionOutcome();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (a1)
  {
    os_log(_:dso:log:_:_:)();

    sub_10003500C(a4, a2, a3);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError);
    v13 = swift_allocError();
    static RemotePairingError.userRejectedPairing.getter();
    *v12 = v13;
    (*(v9 + 104))(v12, enum case for PairingConsentCollectionOutcome.rejected(_:), v8);
    a2(v12);
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100033B9C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for PairingConsentCollectionOutcome();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    swift_errorRetain();
    v11 = static os_log_type_t.default.getter();
    v12 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v11))
    {
      v13 = swift_slowAlloc();
      v23 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = a3;
      v16 = v15;
      v24 = a1;
      v25 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v17 = String.init<A>(describing:)();
      v19 = sub_10000C600(v17, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v11, "Rejecting pairing attempt as authentication policy evaluation failed with error: %s", v14, 0xCu);
      sub_10000CADC(v16);

      a2 = v23;
    }

    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError);
    v20 = swift_allocError();
    static RemotePairingError.failedToAuthenticateUser.getter();
    *v10 = v20;
    (*(v7 + 104))(v10, enum case for PairingConsentCollectionOutcome.rejected(_:), v6);
    a2(v10);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    (*(v7 + 104))(v10, enum case for PairingConsentCollectionOutcome.userConsented(_:), v6);
    a2(v10);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100033E80(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v80 = a3;
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  v19 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PairingConsentCollectionOutcome();
  v81 = *(v21 - 8);
  v82 = v21;
  v22 = *(v81 + 64);
  __chkstk_darwin(v21);
  v24 = (&v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  v83 = a4;
  v25[2] = a4;
  v25[3] = a5;
  v85 = a5;
  v26 = v25;
  v25[4] = a6;
  v84 = a6;
  if (!a2)
  {
    goto LABEL_8;
  }

  v27 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v27 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    String.count.getter();
    String.index(_:offsetBy:)();
    v86 = String.subscript.getter();
    v87 = v28;
    v88 = v29;
    v89 = v30;
    static CharacterSet.newlines.getter();
    sub_100035F48();
    v31 = StringProtocol.components(separatedBy:)();
    (*(v12 + 8))(v15, v11);

    v86 = v31;
    sub_100013414(&qword_10009B0B0, &unk_1000781C0);
    sub_100035F9C(&qword_10009A488, &qword_10009B0B0, &unk_1000781C0);
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    if (qword_100098E90 != -1)
    {
      swift_once();
    }

    v35 = qword_10009A2B8;
    sub_100013414(&qword_1000999F0, &unk_100077530);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100077360;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100022420();
    *(v36 + 32) = v32;
    *(v36 + 40) = v34;
    v37 = v35(v36);
    v39 = v38;
  }

  else
  {
LABEL_8:
    v40 = qword_100098E88;

    if (v40 != -1)
    {
      swift_once();
    }

    v39 = *(&xmmword_10009A2A8 + 1);
    v37 = xmmword_10009A2A8;
  }

  sub_100013414(&unk_10009A910, &unk_100077D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773A0;
  v86 = kCFUserNotificationAlertHeaderKey;
  v42 = kCFUserNotificationAlertHeaderKey;
  sub_100013414(&qword_10009A478, &qword_100077B60);
  sub_100035E40();
  AnyHashable.init<A>(_:)();
  if (qword_100098E70 != -1)
  {
    swift_once();
  }

  v43 = xmmword_10009A278;
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v43;
  v86 = kCFUserNotificationAlertMessageKey;
  v44 = kCFUserNotificationAlertMessageKey;

  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v37;
  *(inited + 152) = v39;
  v86 = kCFUserNotificationDefaultButtonTitleKey;
  v45 = kCFUserNotificationDefaultButtonTitleKey;
  AnyHashable.init<A>(_:)();
  if (qword_100098E80 != -1)
  {
    swift_once();
  }

  v46 = qword_10009A298;
  v47 = qword_10009A2A0;
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v46;
  *(inited + 224) = v47;
  v86 = kCFUserNotificationAlternateButtonTitleKey;
  v48 = kCFUserNotificationAlternateButtonTitleKey;

  AnyHashable.init<A>(_:)();
  if (qword_100098E78 != -1)
  {
    swift_once();
  }

  v50 = qword_10009A288;
  v49 = qword_10009A290;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v50;
  *(inited + 296) = v49;

  v51 = Dictionary.init(dictionaryLiteral:)();
  *&v94 = SBUserNotificationAlternateButtonPresentationStyleKey;
  v52 = SBUserNotificationAlternateButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  v95 = &type metadata for UInt32;
  LODWORD(v94) = 0;
  sub_10000E8A4(&v94, v93);
  swift_isUniquelyReferenced_nonNull_native();
  v92 = v51;
  sub_100068C84(v93, &v86);
  v53 = v92;
  sub_10002269C(&v86);
  *&v94 = SBUserNotificationDefaultButtonPresentationStyleKey;
  v54 = SBUserNotificationDefaultButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  v95 = &type metadata for UInt32;
  LODWORD(v94) = 2;
  sub_10000E8A4(&v94, v93);
  swift_isUniquelyReferenced_nonNull_native();
  v92 = v53;
  sub_100068C84(v93, &v86);
  sub_10002269C(&v86);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v56 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, isa);

  if (v56)
  {
    v57 = v80;
    if (*(v80 + 72))
    {
      v58 = *(v80 + 80);
      *(v80 + 80) = v56;
      v59 = v56;

      v60 = *(v57 + 16);
      OS_dispatch_queue.assertOnQueueHierarchy()();
      v83 = *(v57 + 24);
      v61 = swift_allocObject();
      v61[2] = v59;
      v61[3] = v57;
      v61[4] = sub_100035E34;
      v61[5] = v26;
      v90 = sub_100035F3C;
      v91 = v61;
      v86 = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_100050100;
      v89 = &unk_10008FDE0;
      v62 = _Block_copy(&v86);
      v63 = v59;

      v64 = v74;
      static DispatchQoS.unspecified.getter();
      *&v94 = _swiftEmptyArrayStorage;
      sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100013414(&unk_100099840, &unk_100077350);
      sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
      v65 = v76;
      v66 = v79;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v62);

      (*(v78 + 8))(v65, v66);
      (*(v75 + 8))(v64, v77);
    }

    else
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RemotePairingError();
      sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError);
      v70 = swift_allocError();
      static RemotePairingError.userRejectedPairing.getter();
      *v24 = v70;
      v72 = v81;
      v71 = v82;
      (*(v81 + 104))(v24, enum case for PairingConsentCollectionOutcome.rejected(_:), v82);
      v83(v24);
      (*(v72 + 8))(v24, v71);
    }
  }

  else
  {
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError);
    v67 = swift_allocError();
    static RemotePairingError.userRejectedPairing.getter();
    *v24 = v67;
    v69 = v81;
    v68 = v82;
    (*(v81 + 104))(v24, enum case for PairingConsentCollectionOutcome.rejected(_:), v82);
    v83(v24);
    (*(v69 + 8))(v24, v68);
  }
}

uint64_t sub_100034A90(__CFUserNotification *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = CFUserNotificationReceiveResponse(a1, 0.0, (v16 + 16));
  v21 = *(a2 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v17;
  *(v18 + 32) = v16;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  aBlock[4] = sub_100035FEC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008FE80;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_100034E3C(int a1, char a2, uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 16);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (a1)
  {
    v8 = static os_log_type_t.error.getter();
    v9 = qword_10009CED0;
    result = os_log_type_enabled(qword_10009CED0, v8);
    if (result)
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v9, v8, "Received invalid status code %d when reading response to trust prompt notification", v11, 8u);
    }
  }

  else
  {
    switch(a2 & 3)
    {
      case 1:
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v12 = 1;
        break;
      case 2:
        static os_log_type_t.fault.getter();
        goto LABEL_9;
      default:
        static os_log_type_t.default.getter();
LABEL_9:
        os_log(_:dso:log:_:_:)();
        v12 = 0;
        break;
    }

    return a3(v12);
  }

  return result;
}

void sub_10003500C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = type metadata accessor for POSIXError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingConsentCollectionOutcome();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  if (MKBGetDeviceLockState() == 3)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    (*(v12 + 104))(v15, enum case for PairingConsentCollectionOutcome.userConsented(_:), v11);
    a2(v15);
    (*(v12 + 8))(v15, v11);
LABEL_9:

    return;
  }

  v17 = [objc_allocWithZone(LAContext) init];
  v18 = v17;
  if (*(a1 + 72))
  {
    v19 = *(a1 + 88);
    *(a1 + 88) = v17;
    v20 = v17;

    v21 = *(a1 + 16);
    OS_dispatch_queue.assertOnQueueHierarchy()();
    sub_100013414(&qword_10009A490, &unk_100077B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077360;
    *(inited + 32) = 2;
    if (qword_100098EA0 != -1)
    {
      swift_once();
    }

    v23 = xmmword_10009A2D8;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v23;

    v33 = Dictionary.init(dictionaryLiteral:)();
    if (qword_100098E98 != -1)
    {
      swift_once();
    }

    v30 = &type metadata for String;
    aBlock = xmmword_10009A2C8;

    sub_10004C248(&aBlock, 1037);
    v24 = sub_1000336E8(v33);

    v25 = swift_allocObject();
    *(v25 + 16) = sub_100036000;
    *(v25 + 24) = v16;
    v31 = sub_100036050;
    v32 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v29 = sub_100035518;
    v30 = &unk_10008FEF8;
    v26 = _Block_copy(&aBlock);

    sub_10003607C(1013, v24, v26, v20);

    _Block_release(v26);
    goto LABEL_9;
  }

  LODWORD(aBlock) = 89;
  sub_10004FD70(_swiftEmptyArrayStorage);
  sub_100036008(&unk_10009AB20, &type metadata accessor for POSIXError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v27 = POSIXError._nsError.getter();
  (*(v7 + 8))(v10, v6);
  sub_100033B9C(v27, a2, a3);
}

uint64_t sub_100035518(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_1000355C4()
{
  sub_10000D060();
  v58 = v1;
  v59 = v2;
  v57 = v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_10000CBBC(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v64 = v10 - v9;
  sub_10002F608();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_10000CBBC(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v61 = v17 - v16;
  sub_10002F608();
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = sub_10000CBBC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000CBDC();
  v26 = (v25 - v24);
  v69 = type metadata accessor for DispatchTime();
  v27 = sub_10000CBBC(v69);
  v60 = v28;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v27);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v56 - v34;
  sub_10002F608();
  v68 = type metadata accessor for UUID();
  v36 = sub_10000CBBC(v68);
  v38 = v37;
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v36);
  v42 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v56 - v43;
  UUID.init()();
  v67 = v44;
  sub_1000319E4();
  if (([*(v0 + 64) active] & 1) == 0 && (sub_1000326C0() & 1) == 0)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
  }

  v59 = *(v0 + 16);
  static DispatchTime.now()();
  *v26 = 10;
  (*(v21 + 104))(v26, enum case for DispatchTimeInterval.seconds(_:), v18);
  v56 = v35;
  + infix(_:_:)();
  (*(v21 + 8))(v26, v18);
  v60 = *(v60 + 8);
  (v60)(v33, v69);
  sub_10000CBD0();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v68;
  (*(v38 + 16))(v42, v67, v68);
  v47 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  (*(v38 + 32))(v48 + v47, v42, v46);
  v71[4] = sub_100035E10;
  v71[5] = v48;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 1107296256;
  sub_10000EE28();
  v71[2] = v49;
  v71[3] = &unk_10008FD40;
  v50 = _Block_copy(v71);

  v51 = v61;
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100036538();
  sub_100035F9C(v52, &unk_100099840, &unk_100077350);
  v53 = v64;
  v54 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v56;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v50);
  (*(v65 + 8))(v53, v54);
  (*(v62 + 8))(v51, v63);
  (v60)(v55, v69);
  (*(v38 + 8))(v67, v68);

  sub_1000135A0();
}

uint64_t sub_100035B60()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100031DC8();
  }

  return result;
}

uint64_t sub_100035BC0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v0 + 88);
  return v0;
}

uint64_t sub_100035C24()
{
  sub_100035BC0();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100035C7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100035CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100035D34(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100035D40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100035D80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100035DCC()
{
  result = qword_10009A990;
  if (!qword_10009A990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A990);
  }

  return result;
}

unint64_t sub_100035E40()
{
  result = qword_10009A920;
  if (!qword_10009A920)
  {
    sub_100015E90(&qword_10009A478, &qword_100077B60);
    sub_100036008(&qword_100099080, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A920);
  }

  return result;
}

uint64_t sub_100035EF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100035F48()
{
  result = qword_10009A480;
  if (!qword_10009A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A480);
  }

  return result;
}

uint64_t sub_100035F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015E90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100036008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100036050(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

void sub_10003607C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 evaluatePolicy:a1 options:isa reply:a3];
}

uint64_t sub_100036118()
{
  v1 = *(type metadata accessor for PairingConsentCollectionOutcome() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100033394(v0 + v2, v4, v6);
}

uint64_t sub_1000361C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000361EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A4A0, &qword_100077B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003625C(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009A4A8, &qword_100077B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000362CC()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10003639C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100036414()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  sub_100031CD4(v4, (v0 + v2), v5, v7, v8);
}

uint64_t sub_100036550()
{

  return swift_allocError();
}

uint64_t sub_100036570()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100036590()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v99 = v5;
  v96 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v6 = sub_10000CBBC(v96);
  v103 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v95 = v11 - v10;
  sub_10002F608();
  v98 = type metadata accessor for UUID();
  v12 = sub_10000CBBC(v98);
  v94 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v83 = v17 - v16;
  v89 = sub_100013414(&qword_10009A8F8, &unk_100077D70);
  v18 = sub_10000CC04(v89);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v91 = &v79[-v21];
  v22 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v23 = sub_10000D368(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000EDF0();
  v90 = v26 - v27;
  v29 = __chkstk_darwin(v28);
  v84 = &v79[-v30];
  __chkstk_darwin(v29);
  v97 = &v79[-v31];
  sub_10002F608();
  v32 = type metadata accessor for ControlChannelConnection.State();
  v33 = sub_10000CBBC(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_10000CBDC();
  sub_100040074();
  v38 = (*(v2 + 16))(v4, v2);
  v39 = v38;
  if ((v38 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10003FFC8();
    sub_10000D128(v40, 255, v41);
    sub_10000D4B0();
    Set.Iterator.init(_cocoa:)();
    v39 = v106;
    v42 = v107;
    v43 = v108;
    v44 = v109;
    v45 = v110;
  }

  else
  {
    v44 = 0;
    v46 = -1 << *(v38 + 32);
    v42 = v38 + 56;
    v43 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v45 = v48 & *(v38 + 56);
  }

  v85 = v43;
  v49 = (v43 + 64) >> 6;
  v102 = v35 + 88;
  v101 = enum case for ControlChannelConnection.State.authenticated(_:);
  v100 = v35 + 8;
  v81 = (v94 + 32);
  v82 = (v94 + 8);
  LODWORD(v94) = enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:);
  v92 = (v103 + 8);
  v93 = (v103 + 104);
  v88 = v32;
  v87 = v0;
  v86 = v39;
  if (v39 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v50 = v44;
  v51 = v44;
  if (v45)
  {
LABEL_12:
    sub_100040048();
    v54 = v53 & v52;
    v56 = *(*(v39 + 48) + ((v51 << 9) | (8 * v55)));

    if (!v56)
    {
LABEL_40:
      sub_1000134CC();
      sub_1000135A0();
      return;
    }

    while (1)
    {
      v103 = v54;
      dispatch thunk of ControlChannelConnection.state.getter();
      v58 = sub_100040038();
      v60 = v59(v58);
      if (v60 == v101)
      {
        v61 = sub_100040038();
        v62(v61);
        v63 = v98;
        sub_100040018(v99);
        if (!v77)
        {
          v69 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
          if (v69)
          {
            v70 = v69;
            v71 = [v69 identifier];

            if (v71)
            {
              v72 = v84;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v73 = 0;
              v74 = v91;
            }

            else
            {
              v73 = 1;
              v74 = v91;
              v72 = v84;
            }

            sub_1000223E8(v72, v73, 1, v63);
            v75 = v97;
            v39 = &unk_100077D60;
            sub_10003DED0(v72, v97, &qword_1000999E8, &unk_100077D60);
          }

          else
          {
            v75 = v97;
            sub_1000223E8(v97, 1, 1, v63);
            v74 = v91;
            v39 = &unk_100077D60;
          }

          v76 = *(v89 + 48);
          sub_10003DE84(v75, v74, &qword_1000999E8, &unk_100077D60);
          sub_10003DE84(v99, &v74[v76], &qword_1000999E8, &unk_100077D60);
          sub_100040018(v74);
          if (v77)
          {
            sub_1000400E4(v75);
            sub_100040018(&v74[v76]);
            if (!v77)
            {

LABEL_37:
              sub_100040004();
              sub_100022560(v74, &qword_10009A8F8, &unk_100077D70);
              goto LABEL_21;
            }

            sub_1000400E4(v74);
            sub_100040004();
          }

          else
          {
            sub_10003DE84(v74, v90, &qword_1000999E8, &unk_100077D60);
            sub_100040018(&v74[v76]);
            if (v77)
            {

              sub_1000400E4(v97);
              (*v82)(v90, v63);
              goto LABEL_37;
            }

            (*v81)(v83, &v74[v76], v63);
            sub_10000D128(&qword_10009A900, 255, &type metadata accessor for UUID);
            v80 = dispatch thunk of static Equatable.== infix(_:_:)();
            v78 = *v82;
            (*v82)(v83, v63);
            sub_1000400E4(v97);
            v78(v90, v63);
            sub_1000400E4(v91);
            sub_100040004();
            if ((v80 & 1) == 0)
            {

              goto LABEL_21;
            }
          }
        }

        v65 = v95;
        v64 = v96;
        (*v93)(v95, v94, v96);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v92)(v65, v64);
      }

      else
      {

        v66 = sub_100040038();
        v68(v66, v67);
      }

LABEL_21:
      v44 = v51;
      v45 = v103;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v57 = __CocoaSet.Iterator.next()();
      if (v57)
      {
        v104 = v57;
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v51 = v44;
        v54 = v45;
        if (v105)
        {
          continue;
        }
      }

      goto LABEL_40;
    }
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {
      goto LABEL_40;
    }

    ++v50;
    if (*(v42 + 8 * v51))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100036D60()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for PairingConsentCollector();
    swift_allocObject();
    v4 = v3;
    sub_100031548();
    v1 = v5;
    v6 = *(v2 + 32);
    *(v2 + 32) = v5;
  }

  return v1;
}

uint64_t sub_100036DDC()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_1000388DC();
    v1 = sub_10003EDC0(v2, v3, 0);
    v4 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

void *sub_100036E54()
{
  v1 = type metadata accessor for InProcessIRKGenerator();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000EDF0();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if (*(v0 + 48))
  {
    v13 = *(v0 + 48);
  }

  else
  {
    InProcessIRKGenerator.init()();
    v14 = sub_1000388DC();
    (*(v4 + 16))(v9, v12, v1);
    v13 = sub_10003E034(v9, v14);
    (*(v4 + 8))(v12, v1);
    v15 = *(v0 + 48);
    *(v0 + 48) = v13;
  }

  return v13;
}

uint64_t sub_100036F94()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_1000388DC();

    v1 = sub_10003F1CC(v4, v2, v3, type metadata accessor for PairingManagementService, 112, sub_10003F2F4);
    v5 = *(v0 + 56);
    *(v0 + 56) = v1;
  }

  return v1;
}

void sub_100037040()
{
  sub_10000D060();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_100040074();
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10003FFB0();
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_10000CBBC(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v23 = v22 - v21;
  if (*(v0 + 64))
  {
    v24 = *(v0 + 64);
  }

  else
  {
    v49 = v19;
    v48 = v20;
    v50 = sub_100036E54();
    v51 = sub_100038058();
    v47 = *(v0 + 16);
    static DispatchQoS.userInitiated.getter();
    *&v59 = &_swiftEmptyArrayStorage;
    sub_10000EE3C();
    sub_10000D128(v25, 255, v26);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v6 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v27 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    v28 = *(v6 + 8);
    v29 = sub_100040164();
    v30(v29);
    (*(v12 + 8))(v1, v9);
    (*(v48 + 8))(v23, v49);
    v31 = v0;
    v32 = sub_1000388DC();
    v60 = type metadata accessor for RemotePairingDeviceService();
    v61 = sub_10000D128(&qword_10009A980, v33, type metadata accessor for RemotePairingDeviceService);
    *&v59 = v0;
    v57 = v60;
    sub_10000D554();
    v58 = sub_10000D128(v34, v35, type metadata accessor for RemotePairingDeviceService);
    *&v56 = v0;
    v36 = type metadata accessor for LockStateManager();
    v55[3] = v36;
    v55[4] = &off_100091068;
    v55[0] = v32;
    type metadata accessor for RSDService();
    v37 = swift_allocObject();
    sub_10003EA8C(v55, v36);
    sub_10000CC38();
    v39 = *(v38 + 64);
    __chkstk_darwin(v40);
    sub_10000CBDC();
    v43 = (v42 - v41);
    (*(v44 + 16))(v42 - v41);
    v45 = *v43;
    v53 = v36;
    v54 = &off_100091068;
    *&v52 = v45;
    *(v37 + 16) = 50;
    *(v37 + 24) = &_swiftEmptySetSingleton;
    sub_1000118F0(0, &qword_10009BE30, OS_remote_device_ptr);
    swift_retain_n();
    *(v37 + 32) = Dictionary.init(dictionaryLiteral:)();
    *(v37 + 176) = 0;
    *(v37 + 184) = v50;
    sub_100010E18(&v59, v37 + 88);
    sub_100010E18(&v56, v37 + 48);
    *(v37 + 168) = v51;
    *(v37 + 40) = v27;
    sub_100010E18(&v52, v37 + 128);
    sub_10000CADC(v55);
    v46 = *(v31 + 64);
    *(v31 + 64) = v37;
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037544()
{
  sub_10000D060();
  sub_100040098();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10003FFB0();
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = sub_10000CBBC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_100040144();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_10000CBBC(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000CBDC();
  sub_100040074();
  if (*(v0 + 72))
  {
    v22 = *(v0 + 72);
  }

  else
  {
    v34 = v21;
    v35 = v20;
    v36 = sub_100036E54();
    v33 = *(v0 + 16);
    static DispatchQoS.userInitiated.getter();
    sub_10000EE3C();
    sub_10000D128(v23, 255, v24);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100040068();
    sub_100028120(v25, v26, v27);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v4;
    (*(v7 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
    v29 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v7 + 8))(v1, v28);
    (*(v13 + 8))(v2, v10);
    (*(v34 + 8))(v3, v35);
    type metadata accessor for NetworkPairingService();
    v30 = swift_allocObject();
    v31 = sub_10003E688(v0, v36, v29, v30);
    v32 = *(v0 + 72);
    *(v0 + 72) = v31;
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037850()
{
  sub_10000D060();
  sub_100040098();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_100040144();
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_100040074();
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_10000CBBC(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v23 = v22 - v21;
  if (*(v0 + 80))
  {
    v24 = *(v0 + 80);
  }

  else
  {
    v40 = v20;
    v41 = v19;
    v43 = sub_100036E54();
    v42 = sub_100038058();
    v39 = *(v0 + 16);
    static DispatchQoS.userInitiated.getter();
    v44 = &_swiftEmptyArrayStorage;
    sub_10000EE3C();
    sub_10000D128(v25, 255, v26);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v3;
    (*(v6 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v28 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v6 + 8))(v1, v3);
    (*(v12 + 8))(v2, v9);
    (*(v40 + 8))(v23, v41);
    v29 = sub_1000388DC();
    v45 = type metadata accessor for LockStateManager();
    v46 = &off_100091068;
    v44 = v29;
    type metadata accessor for NetworkControlChannelService();
    v30 = swift_allocObject();
    sub_10003EA8C(&v44, v45);
    sub_10000CC38();
    v32 = *(v31 + 64);
    __chkstk_darwin(v33);
    sub_10003FFB0();
    (*(v34 + 16))(v27);
    v35 = *v27;

    v37 = sub_10003E71C(v36, v43, v42, v28, v35, v30);
    sub_10000CADC(&v44);
    v38 = *(v0 + 80);
    *(v0 + 80) = v37;
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037C2C()
{
  sub_10000D060();
  sub_100040098();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v19 = v18 - v17;
  v20 = type metadata accessor for DispatchQoS();
  v21 = sub_10000CBBC(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000CBDC();
  sub_100040074();
  if (*(v0 + 88))
  {
    v26 = *(v0 + 88);
  }

  else
  {
    v41 = v25;
    v42 = v24;
    swift_retain_n();
    v43 = sub_100036E54();
    v40 = *(v0 + 16);
    static DispatchQoS.userInitiated.getter();
    sub_10000EE3C();
    sub_10000D128(v27, 255, v28);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100040068();
    sub_100028120(v29, v30, v31);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v2;
    (*(v5 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v33 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v5 + 8))(v10, v32);
    (*(v14 + 8))(v19, v11);
    (*(v41 + 8))(v1, v42);
    type metadata accessor for BluetoothControlChannelConnectionService();
    v34 = swift_allocObject();
    v35 = type metadata accessor for RemotePairingDeviceService();
    *(v34 + 112) = v35;
    *(v34 + 120) = sub_10000D128(&qword_10009A980, v36, type metadata accessor for RemotePairingDeviceService);
    *(v34 + 88) = v0;
    *(v34 + 72) = v35;
    sub_10000D554();
    *(v34 + 80) = sub_10000D128(v37, v38, type metadata accessor for RemotePairingDeviceService);
    *(v34 + 48) = v0;
    *(v34 + 16) = 1;
    *(v34 + 24) = &_swiftEmptySetSingleton;
    *(v34 + 128) = 0;
    *(v34 + 136) = v43;
    *(v34 + 32) = &_swiftEmptySetSingleton;
    *(v34 + 40) = v33;
    v39 = *(v0 + 88);
    *(v0 + 88) = v34;
  }

  sub_1000135A0();
}

uint64_t sub_100037FC4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_100036E54();
    type metadata accessor for DeviceInitiatedPairingService();
    v4 = swift_allocObject();
    v1 = sub_10003EEEC(v2, v3, 0, v4);
    v5 = *(v0 + 96);
    *(v0 + 96) = v1;
  }

  return v1;
}

void *sub_100038058()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    v4 = type metadata accessor for XPCEventPublisher();
    type metadata accessor for AuxiliaryMetadataService();
    swift_allocObject();
    v5 = v3;
    v6 = sub_10004C75C(v5, v4, &off_100090AE8, 0);
    v7 = sub_100038170();
    v1 = sub_10003E2C0(v6, v5, v7, sub_100049AD8, 0, 0xD000000000000019, 0x800000010007EE20, 0xD00000000000002FLL, 0x800000010007E940);
    v8 = *(v2 + 104);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_100038170()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for LockdownStateService();
    swift_allocObject();
    v1 = sub_100027300(v3);
    v4 = *(v2 + 112);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1000381EC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_10003824C(v0);
    v2 = *(v0 + 120);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_10003824C(uint64_t a1)
{
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v46);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013414(&unk_10009A950, qword_100077DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773B0;
  sub_100037040();
  v17 = v16;
  *(inited + 56) = type metadata accessor for RSDService();
  *(inited + 64) = &off_100091830;
  *(inited + 32) = v17;
  sub_100037544();
  v19 = v18;
  *(inited + 96) = type metadata accessor for NetworkPairingService();
  *(inited + 104) = &off_1000912B0;
  *(inited + 72) = v19;
  sub_100037850();
  v21 = v20;
  *(inited + 136) = type metadata accessor for NetworkControlChannelService();
  *(inited + 144) = &off_1000904F0;
  *(inited + 112) = v21;
  if (sub_10006ACDC())
  {
    v45 = sub_100036E54();
    v44 = *(a1 + 16);
    v42 = "wn is not available";
    v41 = v14;
    static DispatchQoS.userInitiated.getter();
    *&v48 = &_swiftEmptyArrayStorage;
    v40 = sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    v43 = v11;
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v46;
    (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
    v23 = v41;
    v44 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v2 + 8))(v5, v22);
    (*(v7 + 8))(v10, v6);
    (*(v47 + 8))(v23, v43);
    v24 = sub_1000388DC();
    v25 = sub_10003F1CC(v45, v44, v24, type metadata accessor for LockdownControlChannelService, 88, sub_10003DFD0);
    sub_10005419C();
    v27 = v26;
    v28 = type metadata accessor for LockdownControlChannelService();
    v50 = &off_10008ECB0;
    v49 = v28;
    *&v48 = v25;
    *(v27 + 16) = 4;
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v29 = sub_100036E54();
    v30 = *(a1 + 16);
    v31 = type metadata accessor for DummyLockdownControlChannelService();
    swift_allocObject();
    v32 = sub_100012ED0(v29, v30);
    sub_10005419C();
    v27 = v33;
    v50 = &off_10008EC80;
    v49 = v31;
    *&v48 = v32;
    *(v33 + 16) = 4;
  }

  sub_100010E18(&v48, v27 + 152);
  if (static Defaults.deviceAllowBluetoothDeviceDiscovery.getter())
  {
    sub_100037C2C();
    v35 = v34;
    v36 = *(v27 + 16);
    if (v36 >= *(v27 + 24) >> 1)
    {
      sub_10005419C();
      v27 = v39;
    }

    v37 = type metadata accessor for BluetoothControlChannelConnectionService();
    v50 = &off_10008F6C8;
    v49 = v37;
    *&v48 = v35;
    *(v27 + 16) = v36 + 1;
    sub_100010E18(&v48, v27 + 40 * v36 + 32);
  }

  return v27;
}

uint64_t sub_10003885C()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    sub_1000118F0(0, &qword_100099830, OS_dispatch_source_ptr);
    v3 = *(v0 + 16);
    v1 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    v4 = *(v2 + 128);
    *(v2 + 128) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_1000388DC()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    v4 = type metadata accessor for LockStateManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v1 = sub_1000550A0(v3, 0xD000000000000024, 0x800000010007ED50, sub_100055080, 0);
    v7 = *(v2 + 136);
    *(v2 + 136) = v1;
    v8 = v3;
  }

  return v1;
}

void sub_100038990()
{
  sub_10000D060();
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = sub_10000CC04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v6 = type metadata accessor for DispatchQoS();
  v7 = sub_10000D368(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10003FFB0();
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CC38();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  sub_100040144();
  sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  v21 = *(v11 + 104);
  v21(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v20);
  static DispatchQoS.unspecified.getter();
  sub_10000EE3C();
  sub_10000D128(v15, 255, v16);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100040068();
  sub_100028120(v17, v18, v19);
  sub_100040130();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = sub_1000400A4();
  static DispatchQoS.unspecified.getter();
  sub_100040130();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(v0 + 24) = sub_1000400A4();
  bzero((v0 + 32), 0x90uLL);
  *(v0 + 176) = 1;
  sub_10003D8A8();
  sub_100040124();
  sub_1000135A0();
}

void sub_100038C28()
{
  sub_10000D060();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v21 = type metadata accessor for DispatchQoS();
  v11 = sub_10000CBBC(v21);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10003FFB0();
  v20 = *(v0 + 16);
  v22[4] = sub_10003FF74;
  v23 = v0;
  sub_10001ACF4();
  v22[1] = 1107296256;
  sub_10000EE28();
  v22[2] = v16;
  v22[3] = &unk_1000902F8;
  v17 = _Block_copy(v22);

  static DispatchQoS.unspecified.getter();
  sub_10000D94C();
  sub_10000D128(v18, 255, v19);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v10, v2);
  (*(v13 + 8))(v1, v21);

  sub_1000135A0();
}

void sub_100038E58()
{
  sub_10000D060();
  sub_100040098();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_10000CBBC(v10);
  v42 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v41 = v16 - v15;
  sub_1000388DC();
  sub_100055170();

  v17 = v0[17];

  sub_100055448();

  v18 = sub_100038058();
  sub_10000CBD0();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18[3];
  v21 = v18[4];
  v18[3] = sub_10003DFB8;
  v18[4] = v19;

  sub_10000FAC8(v20);

  v22 = sub_1000381EC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v40 = v10;
    v24 = v9;
    v25 = v4;
    v26 = v1;
    v27 = v22 + 32;
    do
    {
      sub_100022260(v27, v43);
      v28 = v45;
      sub_10001355C(v43, v44);
      v29 = *(v28 + 3);
      v30 = sub_100040164();
      v31(v30);
      sub_10000CADC(v43);
      v27 += 40;
      --v23;
    }

    while (v23);

    v1 = v26;
    v4 = v25;
    v9 = v24;
    v10 = v40;
  }

  else
  {
  }

  sub_100036DDC();
  sub_10005C570();

  v32 = v0[5];

  sub_10005B7F4();

  sub_100036F94();
  sub_1000143DC();

  sub_100037FC4();
  sub_100023210();

  v33 = v0[13];

  sub_100049B94();

  sub_1000398A0(0xD00000000000002ELL, 0x800000010007EC80);
  sub_1000398A0(0xD00000000000002BLL, 0x800000010007ECB0);
  sub_100036E54();
  sub_10000CBD0();
  v34 = swift_allocObject();
  swift_weakInit();

  sub_100020070(sub_10003DFC0, v34);

  v35 = SIG_IGN.getter();
  signal(15, v35);
  sub_10003885C();
  ObjectType = swift_getObjectType();
  sub_10000CBD0();
  v37 = swift_allocObject();
  swift_weakInit();
  v45 = sub_10003DFC8;
  v46 = v37;
  sub_10001ACF4();
  v43[1] = 1107296256;
  v43[2] = sub_100050100;
  v44 = &unk_100090280;
  v38 = _Block_copy(v43);

  j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_10001AC88(ObjectType);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v38);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v9, v1);
  (*(v42 + 8))(v41, v10);

  v39 = v0[16];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  sub_10003D394();
  sub_1000135A0();
}