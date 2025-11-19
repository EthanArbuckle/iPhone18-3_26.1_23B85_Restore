unint64_t sub_1002DE8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_100595318, &qword_1004AF220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 38); ; i += 8)
    {
      v5 = *(i - 6);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1003E09BC(v5 | (v6 << 32) | (v7 << 40));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 8 * result;
      *v11 = v5;
      *(v11 + 4) = v6;
      *(v11 + 5) = v7;
      *(v3[7] + result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1002DE9CC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v10, v6, &qword_1005952A8, &qword_1004AF1A8);
      v12 = *v6;
      result = sub_1003E08F4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for NANAttribute(0);
      result = sub_1002E0034(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for NANAttribute);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1002DEBA4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005953C0, &unk_1004AF270);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(qword_1005953C8, &qword_1004B4E10);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v10, v6, &qword_1005953C0, &unk_1004AF270);
      v12 = *v6;
      result = sub_100085268(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for BrowseEndpoints(0);
      result = sub_1002E0034(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for BrowseEndpoints);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1002DED7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B220, &unk_1004B4DF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000102E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1002DEE78(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_100595378, &qword_1004AF248);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&unk_100595380, &unk_1004AF250);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v10, v6, &qword_100595378, &qword_1004AF248);
      result = sub_10002A440(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for NWEndpoint();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_1002DF098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_100595310, &unk_1004B07A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1003E08F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1003E08F4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1002DF1A8()
{
  swift_unknownObjectWeakAssign();

  sub_1002CFBB0();
}

uint64_t sub_1002DF1E0(void *a1, uint64_t a2)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + qword_100594ED8) = &_swiftEmptyDictionarySingleton;
  v13 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v14)
  {
    *(v2 + qword_100594ED0) = a2;

    Logger.init(subsystem:category:)();
    v17 = &OBJC_PROTOCOL___WiFiP2PSPITransactionResponderXPC;
    v18 = sub_100303CDC(a1, v7, v17);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DF3D4(char *a1, uint64_t a2)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v14)
  {
    *(v2 + qword_100594FC0) = a2;
    v17 = objc_opt_self();

    v18 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPCDelegate];
    [*&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setRemoteObjectInterface:v18];

    Logger.init(subsystem:category:)();
    v19 = &OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC;
    v20 = sub_100303CDC(a1, v7, v19);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DF668@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  return sub_1002CF878(a1, a2, a4, a3);
}

unint64_t sub_1002DF69C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  return sub_1002CF7FC(a1);
}

uint64_t sub_1002DF75C()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002DF7B4()
{
  v1 = *(v0 + 56);

  sub_10000EBB8(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1002DF82C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  return sub_1002D7D84(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

uint64_t sub_1002DF868(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002DF8D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    sub_1002DF8EC(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1002DF8EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a4;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return;
    }
  }

  else if (v10)
  {

    return;
  }

  sub_10000FF4C(a3, v8);

  sub_10000FF4C(a5, a6);
}

void sub_1002DF9AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    sub_10000BCEC(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1002DF9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DFA28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1002DFA90(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  sub_1002D547C(a1, a2);
}

unint64_t sub_1002DFAE0()
{
  result = qword_100595348;
  if (!qword_100595348)
  {
    sub_10005DD04(&qword_100595340, &qword_1004AF238);
    sub_1002DFB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595348);
  }

  return result;
}

unint64_t sub_1002DFB6C()
{
  result = qword_100595350;
  if (!qword_100595350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595350);
  }

  return result;
}

uint64_t sub_1002DFBF4(void (*a1)(void))
{
  v3 = *(v1 + 56);

  a1(*(v1 + 72));

  return _swift_deallocObject(v1, 80, 7);
}

uint64_t sub_1002DFC78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002D099C(v0 + v7, *(v0 + v8), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1002DFD50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[3] >> 62 == 1)
  {
    v3 = *a1;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1002DFDA4(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = [*(v1 + 64) options];
  v5 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 24);
  result = sub_1003E1CC8(v4, v3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1002DFE20(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_1002DA98C(a1, *(v1 + 56), *(v1 + 64));
}

unint64_t sub_1002DFE88(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_1002DAD60(a1, *(v1 + 56) | (*(v1 + 58) << 16));
}

uint64_t sub_1002DFEDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unownedRetain();
  v3 = v2;
  return v1;
}

uint64_t sub_1002DFF28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

void sub_1002DFF64(uint64_t a1, void *a2)
{
  if (a2)
  {
    swift_unownedRelease();
  }
}

uint64_t sub_1002E0034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E009C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002E00D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002E0120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002E022C()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v1 <= 0x3F)
    {
      sub_1002E0778(319, &qword_100595540, type metadata accessor for NANPeer.LastBeaconInformation);
      if (v2 <= 0x3F)
      {
        sub_1002E0ABC(319, &qword_100595548, &type metadata for NANAttribute.MasterIndication, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1002E0ABC(319, &qword_100595550, &type metadata for NANAttribute.Cluster, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002E0ABC(319, &qword_10058E800, &type metadata for CountryCode, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1002E0ABC(319, &qword_100595558, &type metadata for NANAttribute.ConnectionCapability, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1002E0ABC(319, &qword_100595560, &type metadata for NANAttribute.DeviceCapability, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1002E0ABC(319, &qword_100595568, &type metadata for NANAttribute.DeviceCapabilityExtension, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1002E0ABC(319, &qword_100595570, &type metadata for NANAttribute.DeviceLinkQoS, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_1002E0ABC(319, &qword_100595578, &type metadata for NANAttribute.DataCluster, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        sub_1002E0ABC(319, &qword_100595580, &type metadata for NANPeer.Availability, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
                        {
                          sub_1002E0ABC(319, &qword_100595588, &type metadata for NANAttribute.ExtendedWLANInfrastructure, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
                          {
                            sub_1002E0778(319, &qword_100595590, type metadata accessor for NANAttribute.CustomDeviceInformation);
                            if (v13 <= 0x3F)
                            {
                              sub_1002E0ABC(319, &qword_100595598, &type metadata for NANAttribute.PairingBootstrapping, &type metadata accessor for Optional);
                              if (v14 <= 0x3F)
                              {
                                sub_1002E0ABC(319, &qword_1005955A0, &type metadata for NANAttribute.PairingIdentityResolution, &type metadata accessor for Optional);
                                if (v15 <= 0x3F)
                                {
                                  sub_1002E0778(319, &qword_100593008, &type metadata accessor for UUID);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1002E0ABC(319, &qword_1005955A8, &type metadata for Bool, &type metadata accessor for Array);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1002E0ABC(319, &qword_1005955B0, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata accessor for Optional);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1002E07CC();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1002E0ABC(319, &unk_1005955C0, &type metadata for PHYCapabilities, &type metadata accessor for Optional);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1002E0ABC(319, &qword_10058E828, &type metadata for UInt32, &type metadata accessor for Optional);
                                            if (v21 <= 0x3F)
                                            {
                                              swift_cvw_initStructMetadataWithLayoutString();
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002E0778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002E07CC()
{
  if (!qword_1005955B8)
  {
    type metadata accessor for NANPeer.Service(255);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005955B8);
    }
  }
}

uint64_t sub_1002E0854(uint64_t a1, int a2)
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

uint64_t sub_1002E089C(uint64_t result, int a2, int a3)
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

uint64_t sub_1002E091C()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1002E09D4()
{
  sub_1002E0ABC(319, &qword_100595760, &type metadata for NANAttribute.ServiceDescriptorExtension, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1002E0B0C();
    if (v1 <= 0x3F)
    {
      sub_1002E0B70();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DispatchTime();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002E0ABC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002E0B0C()
{
  if (!qword_100595768)
  {
    sub_10005DD04(&qword_100595770, &unk_1004AF500);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100595768);
    }
  }
}

void sub_1002E0B70()
{
  if (!qword_100595778)
  {
    sub_1002E0BCC();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100595778);
    }
  }
}

unint64_t sub_1002E0BCC()
{
  result = qword_100595780;
  if (!qword_100595780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595780);
  }

  return result;
}

uint64_t sub_1002E0C88()
{
  result = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1002E0D0C()
{
  sub_1002E0D94();
  if (v0 <= 0x3F)
  {
    sub_1002E0DDC();
    if (v1 <= 0x3F)
    {
      sub_1002E0E0C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1002E0D94()
{
  if (!qword_1005958D0)
  {
    v0 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1005958D0);
    }
  }
}

ValueMetadata *sub_1002E0DDC()
{
  result = qword_1005958D8;
  if (!qword_1005958D8)
  {
    result = &type metadata for NANGenericServiceProtocol;
    atomic_store(&type metadata for NANGenericServiceProtocol, &qword_1005958D8);
  }

  return result;
}

ValueMetadata *sub_1002E0E0C()
{
  result = qword_1005958E0;
  if (!qword_1005958E0)
  {
    result = &type metadata for NANPMK;
    atomic_store(&type metadata for NANPMK, &qword_1005958E0);
  }

  return result;
}

BOOL sub_1002E0E3C()
{
  v1 = *(*(sub_10005DC58(&unk_100596880, &unk_1004B0F70) - 8) + 64);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = type metadata accessor for NANPeer(0);
  sub_100012400(v0 + *(v4 + 76), v3, &unk_100596880, &unk_1004B0F70);
  v5 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100016290(v3, &unk_100596880, &unk_1004B0F70);
  }

  else
  {
    v6 = *(v3 + 1);
    sub_1002E9098(v3, type metadata accessor for NANAttribute.CustomDeviceInformation);
    if ((*NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor() & ~v6) == 0)
    {
      return 0;
    }
  }

  v7 = *(v0 + *(v4 + 68) + 8);
  if (v7)
  {
    return *(v7 + 16) > 1uLL;
  }

  return 0;
}

Swift::Int sub_1002E0F98(uint64_t a1)
{
  Hasher.init(_seed:)();
  Channel.hash(into:)(&v6, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40));
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 2));
  Hasher._combine(_:)(*(v1 + 3));
  v3 = v1 + *(a1 + 32);
  v4 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_1002E1034(int a1, uint64_t a2)
{
  Channel.hash(into:)(a1, *v2 | (*(v2 + 4) << 32) | (*(v2 + 5) << 40));
  Hasher._combine(_:)(*(v2 + 1));
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(*(v2 + 3));
  v4 = v2 + *(a2 + 32);
  v5 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v5);
}

Swift::Int sub_1002E10AC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Channel.hash(into:)(&v7, *v2 | (*(v2 + 4) << 32) | (*(v2 + 5) << 40));
  Hasher._combine(_:)(*(v2 + 1));
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(*(v2 + 3));
  v4 = v2 + *(a2 + 32);
  v5 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

BOOL sub_1002E1190()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0) - 8) + 64);
  __chkstk_darwin();
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E90F8(v1, v16, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
    }

    sub_1002E9098(v16, v18);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002E9098(v16, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      return 0;
    }

    if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v19 = v1 + *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) + 20);
  DispatchTime.distance(to:)();
  (*(v3 + 8))(v6, v2);
  v20 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
  (*(v8 + 16))(v11, v20, v7);
  v21 = static DispatchTimeInterval.< infix(_:_:)();
  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v13, v7);
  return v21;
}

uint64_t sub_1002E1478()
{
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = v5;
    if (v5 == 5)
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = *(v0 + 72);
      if (v8 == 4)
      {
        v10 = v2;
        v11 = v3;
        v12 = v4;
        sub_1002E99FC(v2, v3, v4, v1);
        sub_100184290(v8, v7, v9);
        sub_1002E9A28(0, 0, 0, 255);
        v13 = v1 & 1;
        v14 = v10;
        v15 = v11;
        v16 = v12;
LABEL_11:
        sub_1002E9A28(v14, v15, v16, v13);
        v17 = 1;
        return v17 & 1;
      }

      v40 = v8;
      v41 = v7;
      v42 = v9;
      v43 = 1;
      v36 = v2;
      v37 = v3;
      v38 = v4;
      v39 = v1 & 1;
      sub_1002E99FC(v2, v3, v4, v1);
      sub_100184290(v8, v7, v9);
      sub_1002E99FC(v8, v7, v9, 1);
      v22 = sub_100206498();
      v23 = static Either<>.== infix(_:_:)(&v40, &v36, &type metadata for UInt8, &type metadata for NANServiceInfo, &protocol witness table for UInt8, v22);
      sub_1002E9A40(v36, v37, v38, v39);
      sub_1002E9A40(v40, v41, v42, v43);
      v24 = v8;
      v25 = v7;
      v26 = v9;
      v27 = 1;
    }

    else
    {
      v18 = *(v0 + 88);
      if ((v18 & 0x10000) != 0)
      {
        if (v5 == 4)
        {
          v28 = *(v0 + 120);
          v29 = v3;
          v30 = v4;
          sub_1002E99FC(v2, v3, v4, v1);
          sub_1002E9A28(0, 0, 0, 255);
          v13 = v1 & 1;
          v14 = v28;
          v15 = v29;
          v16 = v30;
          goto LABEL_11;
        }

        v19 = *(v0 + 104);
        v20 = *(v0 + 112);
        v31 = *(v0 + 120);
        v32 = v3;
        v33 = v4;
        sub_100184290(v5, v19, v20);
        v2 = v31;
        v3 = v32;
        v4 = v33;
        v21 = 1;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v6 = BYTE1(v18);
      }

      v40 = v6;
      v41 = v19;
      v42 = v20;
      v43 = v21;
      v36 = v2;
      v37 = v3;
      v38 = v4;
      v39 = v1 & 1;
      sub_1002E99FC(v2, v3, v4, v1);
      sub_1002E99FC(v6, v19, v20, v21);
      v34 = sub_100206498();
      v23 = static Either<>.== infix(_:_:)(&v40, &v36, &type metadata for UInt8, &type metadata for NANServiceInfo, &protocol witness table for UInt8, v34);
      sub_1002E9A40(v36, v37, v38, v39);
      sub_1002E9A40(v40, v41, v42, v43);
      v24 = v6;
      v25 = v19;
      v26 = v20;
      v27 = v21;
    }

    sub_1002E9A28(v24, v25, v26, v27);
    v17 = v23 ^ 1;
    return v17 & 1;
  }

  v17 = 0;
  return v17 & 1;
}

BOOL sub_1002E172C()
{
  v1 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_100596880, &unk_1004B0F70) - 8) + 64);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = type metadata accessor for NANPeer(0);
  sub_100012400(v0 + *(v9 + 76), v8, &unk_100596880, &unk_1004B0F70);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    return 0;
  }

  sub_1002E9160(v8, v5, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v10 = *v5;
  sub_1002E9098(v5, type metadata accessor for NANAttribute.CustomDeviceInformation);
  if (v10 < 4)
  {
    return 0;
  }

  if ((v10 & 0xFC) == 4)
  {
    return (v10 & 3) != 0;
  }

  return 1;
}

uint64_t sub_1002E18E0(uint8_t a1)
{
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v21 - v10;
  if (!v3)
  {
    return 0;
  }

  v12 = type metadata accessor for NANPeer(0);
  v13 = *(v1 + *(v12 + 92));
  if (*(v13 + 16) < a1)
  {
    return 0;
  }

  v21 = *(v12 + 92);
  v22 = v5;
  v14 = &qword_100491AB0;
  sub_100012400(v1 + *(v12 + 88), v11, &qword_10058F4D0, &qword_100491AB0);
  v15 = type metadata accessor for UUID();
  v16 = (*(*(v15 - 8) + 48))(v11, 1, v15);
  sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
  if (v16 == 1)
  {
    return 0;
  }

  if (*(v13 + 16) < a1)
  {
    __break(1u);
LABEL_14:
    result = sub_10046EC48(v13);
    v13 = result;
    goto LABEL_11;
  }

  v14 = (a1 - 1);
  if (*(v14 + v13 + 32))
  {
    return 0;
  }

  v16 = v1;
  (*(v22 + 16))(v8, v1, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 16777472;
    v20[4] = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "isPairedNow setting isPeerPairedOnDiscoveryResult[%hhu]", v20, 5u);
  }

  (*(v22 + 8))(v8, v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*(v13 + 16) < a1)
  {
    __break(1u);
  }

  else
  {
    result = 1;
    *(v14 + v13 + 32) = 1;
    *(v16 + v21) = v13;
  }

  return result;
}

char *sub_1002E1BB8()
{
  v1 = *(v0 + *(type metadata accessor for NANPeer(0) + 68) + 8);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
      v11 = *(*(v1 + 56) + v10);
      v12 = *(v11 + 16);
      v13 = *(v8 + 2);
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v15 = *(*(v1 + 56) + v10);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v14 > *(v8 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        result = sub_1003A74FC(result, v16, 1, v8);
        v8 = result;
      }

      v4 &= v4 - 1;
      if (*(v11 + 16))
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v12)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v8 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_32;
          }

          *(v8 + 2) = v19;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v20 = *(v8 + 2) + 1;
    v21 = 36;
    do
    {
      v1 = --v20 != 0;
      if (!v20)
      {
        break;
      }

      v22 = v8[v21];
      v21 += 56;
    }

    while (v22);
  }

  return v1;
}

char *sub_1002E1D94()
{
  v1 = *(v0 + *(type metadata accessor for NANPeer(0) + 68) + 8);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
      v11 = *(*(v1 + 56) + v10);
      v12 = *(v11 + 16);
      v13 = *(v8 + 2);
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v15 = *(*(v1 + 56) + v10);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v14 > *(v8 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        result = sub_1003A74FC(result, v16, 1, v8);
        v8 = result;
      }

      v4 &= v4 - 1;
      if (*(v11 + 16))
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v12)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v8 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_32;
          }

          *(v8 + 2) = v19;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v20 = *(v8 + 2) + 1;
    v21 = 36;
    do
    {
      v1 = --v20 != 0;
      if (!v20)
      {
        break;
      }

      v22 = v8[v21];
      v21 += 56;
    }

    while (v22 != 1);
  }

  return v1;
}

uint64_t sub_1002E1F74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v33 = a1 >> 24;
  v34 = HIDWORD(a1);
  v35 = a1 >> 40;
  Logger.init(subsystem:category:)();
  v6 = type metadata accessor for NANPeer(0);
  v7 = a2 + v6[7];
  v8 = WiFiAddress.defaultClusterID.unsafeMutableAddressor();
  v9 = v8[2];
  *v7 = *v8;
  *(v7 + 4) = v9;
  v10 = v6[8];
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  (*(*(BeaconInformation - 8) + 56))(a2 + v10, 1, 1, BeaconInformation);
  v12 = a2 + v6[9];
  *v12 = 0;
  *(v12 + 2) = 1;
  v13 = a2 + v6[10];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = a2 + v6[11];
  *v14 = 0;
  *(v14 + 2) = 1;
  v15 = a2 + v6[12];
  *v15 = 0;
  *(v15 + 2) = 1;
  v16 = a2 + v6[13];
  *v16 = 0;
  *(v16 + 8) = 0x1000000;
  *(a2 + v6[14]) = 0;
  v17 = a2 + v6[15];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = (a2 + v6[16]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a2 + v6[17];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = a2 + v6[18];
  *v20 = xmmword_1004AF460;
  *(v20 + 16) = 0;
  v21 = v6[19];
  v22 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
  v23 = a2 + v6[20];
  *v23 = 917504;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0;
  v24 = a2 + v6[21];
  *v24 = xmmword_100483C50;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v6[22];
  v26 = type metadata accessor for UUID();
  v27 = *(*(v26 - 8) + 56);
  v27(a2 + v25, 1, 1, v26);
  *(a2 + v6[25]) = 256;
  *(a2 + v6[26]) = &_swiftEmptyDictionarySingleton;
  v28 = a2 + v6[28];
  *v28 = 3;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  v29 = a2 + v6[29];
  *v29 = 0;
  *(v29 + 4) = 1;
  v27(a2 + v6[30], 1, 1, v26);
  v27(a2 + v6[31], 1, 1, v26);
  v30 = (a2 + v6[5]);
  *v30 = v2;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v33;
  v30[4] = v34;
  v30[5] = v35;
  type metadata accessor for P2PTimer();
  v31 = a2 + v6[6];
  variable initialization expression of AWDLPeer.lastUpdated();
  *(a2 + v6[27]) = 0;
  *(a2 + v6[24]) = 0;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 8;
  *(result + 32) = 0;
  *(a2 + v6[23]) = result;
  return result;
}

Swift::Int sub_1002E22E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v4, *(v1 + *(a1 + 20)) | (*(v1 + *(a1 + 20) + 2) << 16));
  return Hasher._finalize()();
}

Swift::Int sub_1002E2350(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(&v5, *(v2 + *(a2 + 20)) | (*(v2 + *(a2 + 20) + 2) << 16));
  return Hasher._finalize()();
}

uint64_t sub_1002E23CC(uint64_t a1, uint64_t a2)
{
  v459 = a2;
  v453 = type metadata accessor for Logger();
  v3 = *(v453 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v445 = &v443 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = &v443 - v6;
  __chkstk_darwin();
  v449 = &v443 - v7;
  v8 = *(*(sub_10005DC58(&unk_100596880, &unk_1004B0F70) - 8) + 64);
  __chkstk_darwin();
  v452 = &v443 - v9;
  v470 = type metadata accessor for DispatchTime();
  v10 = *(v470 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v469 = &v443 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = type metadata accessor for NANPeer.Service(0);
  v13 = *(v478 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v486 = (&v443 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v448 = &v443 - v16;
  v472 = type metadata accessor for NANAttribute(0);
  v466 = *(v472 - 8);
  v17 = *(v466 + 64);
  __chkstk_darwin();
  v474 = &v443 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10005DC58(&qword_100595928, &qword_1004AF668);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v465 = (&v443 - v22);
  v23 = *(*(sub_10005DC58(&qword_100595930, &qword_1004AF670) - 8) + 64);
  __chkstk_darwin();
  v473 = &v443 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v477 = (&v443 - v25);
  v460 = 0;
  v457 = 0;
  v458 = 0;
  v455 = 0;
  v456 = 0;
  v454 = 0;
  v26 = 0;
  v462 = 0;
  v27 = 0;
  v28 = *(a1 + 16);
  v475 = (v20 + 48);
  v476 = (v20 + 56);
  v450 = (v3 + 16);
  v451 = (v3 + 8);
  v485 = v13;
  v29 = (v13 + 48);
  v30 = v19;
  v467 = v29;
  v468 = (v10 + 40);
  v463 = _swiftEmptyArrayStorage;
  v461 = &_swiftEmptyDictionarySingleton;
  *&v31 = 136315394;
  v447 = v31;
  v464 = a1;
  v481 = v19;
  v471 = v28;
  v32 = v28 == 0;
  if (v28)
  {
    goto LABEL_7;
  }

LABEL_6:
  v36 = 1;
  v480 = v28;
  v38 = v473;
  v37 = v474;
  while (1)
  {
    (*v476)(v38, v36, 1, v30);
    v44 = v38;
    v45 = v477;
    sub_10001CEA8(v44, v477, &qword_100595930, &qword_1004AF670);
    if ((*v475)(v45, 1, v30) == 1)
    {
      v54 = type metadata accessor for NANPeer(0);
      v417 = v493 + *(v54 + 72);
      if ((*(v417 + 12) << 32 == 0x300000000) | v454 & 1)
      {
        goto LABEL_227;
      }

      *v417 = xmmword_1004AF460;
      *(v417 + 16) = 0;
      if (!*(v459 + 16))
      {
        goto LABEL_227;
      }

      v418 = sub_1003E08F4(30);
      if ((v419 & 1) == 0)
      {
        goto LABEL_227;
      }

      v420 = *(*(v459 + 56) + 8 * v418);
      v421 = 1 << *(v420 + 32);
      v422 = -1;
      if (v421 < 64)
      {
        v422 = ~(-1 << v421);
      }

      v423 = v422 & *(v420 + 64);
      v424 = (v421 + 63) >> 6;
      v425 = *(*(v459 + 56) + 8 * v418);
      swift_bridgeObjectRetain_n();
      for (i = 0; v423; v27 = v427)
      {
        v427 = v27;
        v428 = i;
LABEL_221:
        v429 = __clz(__rbit64(v423));
        v423 &= v423 - 1;
        v430 = *(v420 + 56) + ((v428 << 10) | (16 * v429));
        v432 = *v430;
        v431 = *(v430 + 8);

        v432(v433);
      }

      while (1)
      {
        v428 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_249;
        }

        if (v428 >= v424)
        {
          goto LABEL_226;
        }

        v423 = *(v420 + 64 + 8 * v428);
        ++i;
        if (v423)
        {
          v427 = v27;
          i = v428;
          goto LABEL_221;
        }
      }
    }

    v46 = v45;
    v47 = *v45;
    sub_1002E9160(v46 + *(v30 + 48), v37, type metadata accessor for NANAttribute);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v33 = *v37;
        v34 = *(type metadata accessor for NANPeer(0) + 36);
        goto LABEL_4;
      case 1u:
        v165 = v37;
        v166 = *v37;
        v167 = v27;
        v168 = *(v165 + 1);
        v169 = v493 + *(type metadata accessor for NANPeer(0) + 40);
        *v169 = v166;
        *(v169 + 8) = v168;
        v27 = v167;
        *(v169 + 16) = 0;
        goto LABEL_5;
      case 2u:
      case 0x23u:
        v483 = *v37;
        v48 = *(type metadata accessor for NANPeer(0) + 104);
        v49 = v493;
        v50 = *(v493 + v48);
        v51 = v27;
        v52 = -1 << *(v50 + 32);

        v27 = v51;
        v53 = _HashTable.startBucket.getter();
        v54 = *(v50 + 36);
        v55 = v485;

        *&v492 = v48;
        v56 = *(v49 + v48);
        v57 = v54;
        if (v54 != *(v56 + 36))
        {
          goto LABEL_236;
        }

        v479 = (v483 + 40);
        while (2)
        {
          if (v53 == 1 << *(v56 + 32))
          {

            a1 = v464;
            goto LABEL_5;
          }

          v58 = *(v483 + 16);

          if (!v58)
          {
LABEL_72:

            v80 = *(v493 + v492);

            v81 = sub_1002E9018(v53, v57, 0, v80);
            v54 = v82;
            v83 = v57;
            v85 = v84;

            sub_10002BEB8(v53, v83, 0);
            if (v85)
            {
              goto LABEL_256;
            }

            v53 = v81;
            v57 = v54;
            goto LABEL_14;
          }

          v490 = 1 << v53;
          *&v491 = v53 >> 6;
          v59 = v479;
          v488 = v57;
          v489 = v53;
LABEL_21:
          if ((v53 & 0x8000000000000000) == 0)
          {
            v60 = *(v493 + v492);
            if (v53 < 1 << *(v60 + 32))
            {
              if ((*(v60 + 8 * v491 + 64) & v490) == 0)
              {
                goto LABEL_224;
              }

              if (*(v60 + 36) != v57)
              {
                goto LABEL_225;
              }

              v61 = *(v59 - 1);
              v62 = *v59;
              v63 = *(v60 + 56);
              v487 = *(v55 + 72) * v53;
              v64 = v486;
              sub_1002E90F8(v63 + v487, v486, type metadata accessor for NANPeer.Service);
              v65 = *v64;
              v54 = v64[1];
              sub_10000AB0C(v61, v62);
              sub_10000AB0C(v65, v54);
              sub_1002E9098(v64, type metadata accessor for NANPeer.Service);
              v66 = v62 >> 62;
              v67 = v54 >> 62;
              if (v62 >> 62 == 3)
              {
                v68 = 0;
                if (!v61 && v62 == 0xC000000000000000 && v54 >> 62 == 3)
                {
                  v68 = 0;
                  if (!v65 && v54 == 0xC000000000000000)
                  {
                    sub_1000124C8(0, 0xC000000000000000);
                    v86 = 0;
                    v87 = 0xC000000000000000;
LABEL_75:
                    sub_1000124C8(v86, v87);
LABEL_76:

                    v54 = *(v493 + v492);
                    *(v493 + v492) = 0x8000000000000000;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v89 = v489;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      *&v499 = v54;
                      sub_10046BD28();
                      v54 = v499;
                    }

                    if (v89 >= 1 << *(v54 + 32))
                    {
                      goto LABEL_243;
                    }

                    if ((*(v54 + 8 * v491 + 64) & v490) == 0)
                    {
                      goto LABEL_244;
                    }

                    v90 = v488;
                    if (*(v54 + 36) == v488)
                    {
                      v91 = v27;
                      v92 = *(v54 + 56) + v487;
                      type metadata accessor for P2PTimer();
                      v93 = v469;
                      variable initialization expression of AWDLPeer.lastUpdated();
                      v94 = v92 + *(v478 + 32);
                      v27 = v91;
                      (*v468)(v94, v93, v470);
                      *(v493 + v492) = v54;

                      v53 = sub_1002E9018(v89, v90, 0, v54);
                      v57 = v95;
                      v97 = v96;

                      if (v97)
                      {
LABEL_256:
                        __break(1u);
                      }

LABEL_14:
                      v55 = v485;
                      v30 = v481;
                      v56 = *(v493 + v492);
                      if (*(v56 + 36) != v57)
                      {
                        goto LABEL_236;
                      }

                      continue;
                    }

LABEL_245:
                    __break(1u);
LABEL_246:
                    __break(1u);
                    goto LABEL_247;
                  }
                }

LABEL_42:
                if (v67 <= 1)
                {
                  goto LABEL_43;
                }

LABEL_48:
                if (v67 == 2)
                {
                  v74 = *(v65 + 16);
                  v73 = *(v65 + 24);
                  v71 = __OFSUB__(v73, v74);
                  v72 = v73 - v74;
                  if (v71)
                  {
                    __break(1u);
LABEL_235:
                    __break(1u);
LABEL_236:
                    __break(1u);
LABEL_237:
                    __break(1u);
LABEL_238:
                    __break(1u);
LABEL_239:
                    __break(1u);
LABEL_240:
                    __break(1u);
LABEL_241:
                    __break(1u);
LABEL_242:
                    __break(1u);
LABEL_243:
                    __break(1u);
LABEL_244:
                    __break(1u);
                    goto LABEL_245;
                  }

                  goto LABEL_50;
                }

                if (!v68)
                {
                  goto LABEL_74;
                }

LABEL_19:
                sub_1000124C8(v65, v54);
                sub_1000124C8(v61, v62);
LABEL_20:
                v59 += 2;
                --v58;
                v57 = v488;
                v53 = v489;
                if (!v58)
                {
                  goto LABEL_72;
                }

                goto LABEL_21;
              }

              if (v66 > 1)
              {
                if (v66 == 2)
                {
                  v70 = *(v61 + 16);
                  v69 = *(v61 + 24);
                  v71 = __OFSUB__(v69, v70);
                  v68 = v69 - v70;
                  if (v71)
                  {
                    goto LABEL_237;
                  }

                  goto LABEL_42;
                }

                v68 = 0;
                if (v67 <= 1)
                {
                  goto LABEL_43;
                }

                goto LABEL_48;
              }

              if (v66)
              {
                LODWORD(v68) = HIDWORD(v61) - v61;
                if (__OFSUB__(HIDWORD(v61), v61))
                {
                  goto LABEL_238;
                }

                v68 = v68;
                goto LABEL_42;
              }

              v68 = BYTE6(v62);
              if (v67 > 1)
              {
                goto LABEL_48;
              }

LABEL_43:
              if (v67)
              {
                LODWORD(v72) = HIDWORD(v65) - v65;
                if (__OFSUB__(HIDWORD(v65), v65))
                {
                  goto LABEL_235;
                }

                v72 = v72;
              }

              else
              {
                v72 = BYTE6(v54);
              }

LABEL_50:
              if (v68 != v72)
              {
                goto LABEL_19;
              }

              if (v68 < 1)
              {
LABEL_74:
                sub_1000124C8(v65, v54);
                v86 = v61;
                v87 = v62;
                goto LABEL_75;
              }

              if (v66 > 1)
              {
                if (v66 != 2)
                {
                  *(&v499 + 6) = 0;
                  *&v499 = 0;
                  sub_10000AB0C(v65, v54);
LABEL_67:
                  sub_100031E04(&v499, v65, v54, v498);
                  sub_1000124C8(v65, v54);
                  sub_1000124C8(v65, v54);
                  sub_1000124C8(v61, v62);
                  if (v498[0])
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_20;
                }

                v484 = v27;
                v75 = *(v61 + 16);
                v482 = *(v61 + 24);
                sub_10000AB0C(v65, v54);
                v76 = __DataStorage._bytes.getter();
                if (v76)
                {
                  v77 = __DataStorage._offset.getter();
                  if (__OFSUB__(v75, v77))
                  {
                    goto LABEL_241;
                  }

                  v76 += v75 - v77;
                }

                if (__OFSUB__(v482, v75))
                {
                  goto LABEL_240;
                }
              }

              else
              {
                if (!v66)
                {
                  *&v499 = v61;
                  WORD4(v499) = v62;
                  BYTE10(v499) = BYTE2(v62);
                  BYTE11(v499) = BYTE3(v62);
                  BYTE12(v499) = BYTE4(v62);
                  BYTE13(v499) = BYTE5(v62);
                  sub_10000AB0C(v65, v54);
                  v55 = v485;
                  goto LABEL_67;
                }

                v484 = v27;
                if (v61 >> 32 < v61)
                {
                  goto LABEL_239;
                }

                sub_10000AB0C(v65, v54);
                v78 = __DataStorage._bytes.getter();
                if (v78)
                {
                  v482 = v78;
                  v79 = __DataStorage._offset.getter();
                  if (__OFSUB__(v61, v79))
                  {
                    goto LABEL_242;
                  }

                  v76 = v61 - v79 + v482;
                }

                else
                {
                  v76 = 0;
                }
              }

              __DataStorage._length.getter();
              v27 = v484;
              sub_100031E04(v76, v65, v54, &v499);
              sub_1000124C8(v65, v54);
              sub_1000124C8(v65, v54);
              sub_1000124C8(v61, v62);
              v55 = v485;
              if (v499)
              {
                goto LABEL_76;
              }

              goto LABEL_20;
            }
          }

          break;
        }

        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:

LABEL_227:
        if (v462)
        {
          v434 = *(v460 + 16);
          if (v434)
          {
            v435 = *(v54 + 104);
            v436 = (v460 + 33);
            do
            {
              v437 = *(v436 - 1);
              v438 = sub_10040D118(&v499, *v436);
              if (!(*v467)(v439, 1, v478))
              {
                sub_10046F340(v498, v437);
              }

              (v438)(&v499, 0);
              v436 += 2;
              --v434;
            }

            while (v434);
          }
        }

        v440 = v493;
        sub_1002E4D04(v463, v464, v459);

        type metadata accessor for P2PTimer();
        v441 = v469;
        variable initialization expression of AWDLPeer.lastUpdated();
        (*v468)(v440 + *(v54 + 24), v441, v470);
        sub_100010520(v458);
        return sub_100010520(v456);
      case 3u:
        v113 = *(v37 + 3);
        v520 = *(v37 + 2);
        v521 = v113;
        v522 = *(v37 + 4);
        v114 = *(v37 + 1);
        v518 = *v37;
        v519 = v114;
        v115 = NANAttribute.ServiceDescriptor.Control.type.getter(BYTE2(v114));
        v116 = v519;
        v484 = v27;
        if (v115 == 2)
        {
          v117 = v461;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          *&v499 = v117;
          v119 = sub_10007CCC8(v116);
          v121 = v117[2];
          v122 = (v120 & 1) == 0;
          v71 = __OFADD__(v121, v122);
          v123 = v121 + v122;
          if (v71)
          {
            goto LABEL_250;
          }

          v124 = v120;
          if (v117[3] >= v123)
          {
            if ((v118 & 1) == 0)
            {
              v416 = v119;
              sub_10046BF5C();
              v119 = v416;
            }
          }

          else
          {
            sub_1003118D0(v123, v118);
            v119 = sub_10007CCC8(v116);
            if ((v124 & 1) != (v125 & 1))
            {
              goto LABEL_258;
            }
          }

          v303 = v499;
          v461 = v499;
          if (v124)
          {
            *(*(v499 + 56) + v119) = 1;
          }

          else
          {
            *(v499 + 8 * (v119 >> 6) + 64) |= 1 << v119;
            *(v303[6] + v119) = v116;
            *(v303[7] + v119) = 1;
            v308 = v303[2];
            v71 = __OFADD__(v308, 1);
            v309 = v308 + 1;
            if (v71)
            {
              goto LABEL_253;
            }

            v303[2] = v309;
          }

          v310 = swift_allocObject();
          v311 = v521;
          v310[3] = v520;
          v310[4] = v311;
          v310[5] = v522;
          v312 = v519;
          v310[1] = v518;
          v310[2] = v312;
          sub_10028676C(&v518, &v499);
          sub_10028676C(&v518, &v499);
          sub_100010520(v456);
          v230 = type metadata accessor for NANPeer(0);
          v313 = *(v230 + 104);
          v314 = v493;
          v315 = *(v493 + v313);
          v316 = swift_isUniquelyReferenced_nonNull_native();
          *&v499 = *(v314 + v313);
          v317 = v499;
          *(v314 + v313) = 0x8000000000000000;
          v319 = sub_10007CCC8(v116);
          v320 = *(v317 + 16);
          v321 = (v318 & 1) == 0;
          v322 = v320 + v321;
          if (__OFADD__(v320, v321))
          {
            goto LABEL_252;
          }

          v323 = v318;
          if (*(v317 + 24) >= v322)
          {
            if ((v316 & 1) == 0)
            {
              sub_10046BD28();
              v317 = v499;
            }
          }

          else
          {
            sub_100311584(v322, v316);
            v317 = v499;
            v324 = sub_10007CCC8(v116);
            if ((v323 & 1) != (v325 & 1))
            {
LABEL_257:
              sub_100197EB4(&v518);
LABEL_258:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v319 = v324;
          }

          v341 = v493;
          v342 = *(v493 + v313);
          *(v493 + v313) = v317;

          v343 = *(v341 + v313);
          if (v323)
          {
            sub_100197EB4(&v518);
            v344 = *(v485 + 72) * v319;
          }

          else
          {
            v345 = v448;
            *(v448 + 10) = 0;
            *(v345 + 88) = 0;
            *(v345 + 96) = 5;
            *(v345 + 104) = 0u;
            *(v345 + 120) = 0u;
            *(v345 + 136) = 0;
            *(v345 + 144) = -1;
            *(v345 + 152) = &_swiftEmptySetSingleton;
            v346 = v521;
            *(v345 + 32) = v520;
            *(v345 + 48) = v346;
            *(v345 + 64) = v522;
            v347 = v519;
            *v345 = v518;
            *(v345 + 16) = v347;
            sub_10028676C(&v518, &v499);
            sub_1002EA068(0, 0, 5, 0, 0);
            *(v345 + 80) = 0;
            *(v345 + 88) = 0;
            *(v345 + 96) = 5;
            type metadata accessor for P2PTimer();
            *(v345 + 104) = 0;
            *(v345 + 112) = 0;
            v348 = v345 + *(v478 + 32);
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_100197EB4(&v518);
            v343[(v319 >> 6) + 8] |= 1 << v319;
            *(v343[6] + v319) = v116;
            v344 = *(v485 + 72) * v319;
            sub_1002E9160(v345, v343[7] + v344, type metadata accessor for NANPeer.Service);
            v349 = v343[2];
            v71 = __OFADD__(v349, 1);
            v350 = v349 + 1;
            if (v71)
            {
              goto LABEL_255;
            }

            v343[2] = v350;
          }

          v351 = v343[7];
          type metadata accessor for P2PTimer();
          v352 = v469;
          variable initialization expression of AWDLPeer.lastUpdated();
          v340 = v478;
          (*v468)(v351 + *(v478 + 32) + v344, v352, v470);
          v455 = v310;
          v456 = sub_1002EA100;
        }

        else
        {
          v227 = swift_allocObject();
          v228 = v521;
          v227[3] = v520;
          v227[4] = v228;
          v227[5] = v522;
          v229 = v519;
          v227[1] = v518;
          v227[2] = v229;
          sub_10028676C(&v518, &v499);
          sub_10028676C(&v518, &v499);
          sub_100010520(v458);
          v230 = type metadata accessor for NANPeer(0);
          v231 = v493;
          v232 = *(v230 + 104);
          v233 = *(v493 + v232);
          v234 = swift_isUniquelyReferenced_nonNull_native();
          *&v499 = *(v231 + v232);
          v235 = v499;
          *(v231 + v232) = 0x8000000000000000;
          v237 = sub_10007CCC8(v116);
          v238 = *(v235 + 16);
          v239 = (v236 & 1) == 0;
          v240 = v238 + v239;
          if (__OFADD__(v238, v239))
          {
            goto LABEL_251;
          }

          v241 = v236;
          if (*(v235 + 24) >= v240)
          {
            if ((v234 & 1) == 0)
            {
              sub_10046BD28();
              v235 = v499;
            }
          }

          else
          {
            sub_100311584(v240, v234);
            v235 = v499;
            v242 = sub_10007CCC8(v116);
            if ((v241 & 1) != (v243 & 1))
            {
              goto LABEL_257;
            }

            v237 = v242;
          }

          v304 = v493;
          v305 = *(v493 + v232);
          *(v493 + v232) = v235;

          v306 = *(v304 + v232);
          if (v241)
          {
            sub_100197EB4(&v518);
            v307 = *(v485 + 72) * v237;
          }

          else
          {
            v326 = v448;
            *(v448 + 10) = 0;
            *(v326 + 88) = 0;
            *(v326 + 96) = 5;
            *(v326 + 104) = 0u;
            *(v326 + 120) = 0u;
            *(v326 + 136) = 0;
            *(v326 + 144) = -1;
            *(v326 + 152) = &_swiftEmptySetSingleton;
            v327 = v521;
            *(v326 + 32) = v520;
            *(v326 + 48) = v327;
            *(v326 + 64) = v522;
            v328 = v519;
            *v326 = v518;
            *(v326 + 16) = v328;
            sub_10028676C(&v518, &v499);
            sub_1002EA068(0, 0, 5, 0, 0);
            *(v326 + 80) = 0;
            *(v326 + 88) = 0;
            *(v326 + 96) = 5;
            type metadata accessor for P2PTimer();
            *(v326 + 104) = 0;
            *(v326 + 112) = 0;
            v329 = v326 + *(v478 + 32);
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_100197EB4(&v518);
            v306[(v237 >> 6) + 8] |= 1 << v237;
            *(v306[6] + v237) = v116;
            v307 = *(v485 + 72) * v237;
            sub_1002E9160(v326, v306[7] + v307, type metadata accessor for NANPeer.Service);
            v330 = v306[2];
            v71 = __OFADD__(v330, 1);
            v331 = v330 + 1;
            if (v71)
            {
              goto LABEL_254;
            }

            v306[2] = v331;
          }

          v332 = (v306[7] + v307);
          v499 = *v332;
          v333 = v332[1];
          v334 = v332[2];
          v335 = v332[4];
          v502 = v332[3];
          v503 = v335;
          v500 = v333;
          v501 = v334;
          v336 = v519;
          v337 = v520;
          v338 = v522;
          v332[3] = v521;
          v332[4] = v338;
          v332[2] = v337;
          *v332 = v518;
          v332[1] = v336;
          sub_10028676C(&v518, v498);
          sub_100197EB4(&v499);
          type metadata accessor for P2PTimer();
          v339 = v469;
          variable initialization expression of AWDLPeer.lastUpdated();
          v340 = v478;
          (*v468)(v332 + *(v478 + 32), v339, v470);
          v457 = v227;
          v458 = sub_1002EA554;
        }

        v353 = v519;
        type metadata accessor for NANPeer(0);
        v354 = v493 + *(v230 + 104);
        v355 = sub_10040D118(&v499, v353);
        v357 = v356;
        v358 = (*v467)(v356, 1, v340);
        a1 = v464;
        v27 = v484;
        if (!v358)
        {
          v359 = *(v357 + 152);

          *(v357 + 152) = &_swiftEmptySetSingleton;
        }

        (v355)(&v499, 0);
        sub_100197EB4(&v518);
        v30 = v481;
        goto LABEL_5;
      case 4u:
        v33 = *v37;
        v34 = *(type metadata accessor for NANPeer(0) + 48);
        goto LABEL_4;
      case 0xBu:
        v33 = *v37;
        v34 = *(type metadata accessor for NANPeer(0) + 44);
LABEL_4:
        v35 = v493 + v34;
        *v35 = v33;
        *(v35 + 2) = 0;
        goto LABEL_5;
      case 0xEu:
        *&v501 = *(v37 + 4);
        v170 = *(v37 + 1);
        v499 = *v37;
        v500 = v170;
        v171 = v499;
        v172 = v461;
        v173 = v467 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (!v461[2] || (v174 = sub_10007CCC8(v499), (v175 & 1) == 0) || (*(v172[7] + v174) & 1) == 0)
        {
          v176 = type metadata accessor for NANPeer(0);
          v224 = v493 + *(v176 + 104);
          v178 = sub_10040D118(v505, v171);
          v226 = v225;
          v181 = *v467;
          v182 = v478;
          if ((*v467)(v225, 1, v478))
          {
            v183 = v505;
            goto LABEL_128;
          }

          v482 = v173;
          LODWORD(v483) = v171;
          v487 = v181;
          v288 = v501;
          v290 = *(v226 + 80);
          v289 = *(v226 + 88);
          v291 = *(v226 + 96);
          v292 = *(v226 + 104);
          v293 = *(v226 + 112);
          v294 = v500;
          *(v226 + 80) = v499;
          *(v226 + 96) = v294;
          *(v226 + 112) = v288;
          sub_100197F08(&v499, v498);
          sub_100197F08(&v499, v498);
          sub_1002EA048(v290, v289, v291, v292, v293);
          *&v492 = v289;
          v489 = v293;
          v490 = v292;
          sub_1002EA068(v290, v289, v291, v292, v293);
          *&v491 = v291;
          v295 = v291;
          v484 = v27;
          v488 = v178;
          if (v291 == 5)
          {
LABEL_154:
            v296 = *(v226 + 56);
            v297 = *(v226 + 64);
            v298 = *(v226 + 72);
            v299 = v296;
            v479 = v176;
            v444 = v290;
            if (v296 == 4)
            {
              v299 = 0;
              v300 = 0;
              v301 = 0;
              v302 = -1;
            }

            else
            {
              v302 = 1;
              v300 = v297;
              v301 = v298;
            }

            v181 = v487;
            LOBYTE(v171) = v483;
            v396 = *(v226 + 120);
            v397 = *(v226 + 128);
            v398 = *(v226 + 136);
            *(v226 + 120) = v299;
            *(v226 + 128) = v300;
            *(v226 + 136) = v301;
            v399 = *(v226 + 144);
            *(v226 + 144) = v302;
            sub_100184290(v296, v297, v298);
            sub_1002E9A28(v396, v397, v398, v399);
            a1 = v464;
            v176 = v479;
            v290 = v444;
          }

          else
          {
            v362 = BYTE1(v492);
            if ((v492 & 0x10000) != 0)
            {
              if (v291 == 4)
              {
                goto LABEL_154;
              }

              v400 = v176;
              v401 = *(v226 + 120);
              v402 = *(v226 + 128);
              v403 = *(v226 + 136);
              v405 = v489;
              v404 = v490;
              *(v226 + 120) = v295;
              *(v226 + 128) = v404;
              *(v226 + 136) = v405;
              v406 = *(v226 + 144);
              *(v226 + 144) = 1;
              v498[0] = v290;
              v498[1] = v492;
              v498[2] = v491;
              v498[3] = v404;
              v498[4] = v405;
              sub_100197F08(v498, &v504);
              v363 = v401;
              v364 = v402;
              v176 = v400;
              v365 = v403;
              v366 = v406;
            }

            else
            {
              v363 = *(v226 + 120);
              v364 = *(v226 + 128);
              v365 = *(v226 + 136);
              *(v226 + 128) = 0;
              *(v226 + 136) = 0;
              *(v226 + 120) = v362;
              v366 = *(v226 + 144);
              *(v226 + 144) = 0;
            }

            sub_1002E9A28(v363, v364, v365, v366);
            v181 = v487;
            LOBYTE(v171) = v483;
            a1 = v464;
          }

          type metadata accessor for P2PTimer();
          v407 = v469;
          variable initialization expression of AWDLPeer.lastUpdated();
          sub_1002EA068(v290, v492, v491, v490, v489);
          sub_100277A14(&v499);
          v182 = v478;
          (*v468)(v226 + *(v478 + 32), v407, v470);
          (v488)(v505, 0);
          v27 = v484;
          goto LABEL_204;
        }

        v176 = type metadata accessor for NANPeer(0);
        v177 = v493 + *(v176 + 104);
        v178 = sub_10040D118(v498, v171);
        v180 = v179;
        v181 = *v467;
        v182 = v478;
        if ((*v467)(v179, 1, v478))
        {
          v183 = v498;
LABEL_128:
          (v178)(v183, 0);
          goto LABEL_204;
        }

        type metadata accessor for P2PTimer();
        v484 = v27;
        v413 = v469;
        *&v492 = v178;
        variable initialization expression of AWDLPeer.lastUpdated();
        v414 = v413;
        v27 = v484;
        (*v468)(v180 + *(v182 + 32), v414, v470);
        (v492)(v498, 0);
LABEL_204:
        type metadata accessor for NANPeer(0);
        v408 = v493 + *(v176 + 104);
        v409 = sub_10040D118(v498, v171);
        v411 = v410;
        if (!v181(v410, 1, v182))
        {
          v412 = *(v411 + 152);

          *(v411 + 152) = &_swiftEmptySetSingleton;
        }

        (v409)(v498, 0);
        v30 = v481;
        sub_100277A14(&v499);
LABEL_5:
        v28 = v471;
        v26 = v480;
        v32 = v480 >= v471;
        if (v480 == v471)
        {
          goto LABEL_6;
        }

LABEL_7:
        if (v32)
        {
          goto LABEL_246;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          goto LABEL_256;
        }

        v40 = v465;
        v41 = a1 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v26;
        v42 = *(v30 + 48);
        *v465 = v26;
        sub_1002E90F8(v41, v40 + v42, type metadata accessor for NANAttribute);
        v43 = v40;
        v38 = v473;
        sub_10001CEA8(v43, v473, &qword_100595928, &qword_1004AF668);
        v36 = 0;
        v480 = v39;
        v37 = v474;
        break;
      case 0xFu:
        v201 = v37;
        v202 = *v37;
        v203 = v27;
        v204 = *(v201 + 4);
        v205 = v201[10];
        v206 = v493 + *(type metadata accessor for NANPeer(0) + 52);
        *v206 = v202;
        *(v206 + 10) = v205;
        *(v206 + 8) = v204;
        v27 = v203;
        *(v206 + 11) = 0;
        goto LABEL_5;
      case 0x11u:
        sub_1002E9098(v37, type metadata accessor for NANAttribute);
        v197 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v463 = sub_100116640(0, *(v463 + 2) + 1, 1, v463);
        }

        v199 = *(v463 + 2);
        v198 = *(v463 + 3);
        v28 = v471;
        v26 = v480;
        if (v199 >= v198 >> 1)
        {
          v415 = sub_100116640((v198 > 1), v199 + 1, 1, v463);
          v26 = v480;
          v463 = v415;
          v28 = v471;
        }

        v200 = v463;
        *(v463 + 2) = v199 + 1;
        *&v200[8 * v199 + 32] = v47;
        v27 = v197;
        v32 = v26 >= v28;
        if (v26 == v28)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      case 0x14u:
        v111 = *v37 | (*(v37 + 1) << 16);
        v112 = v493 + *(type metadata accessor for NANPeer(0) + 60);
        *v112 = v111;
        *(v112 + 4) = 0;
        goto LABEL_5;
      case 0x19u:
        v132 = *(v37 + 1);
        LODWORD(v444) = *(v37 + 8);
        v133 = *(v37 + 3);
        *&v492 = *(v37 + 5);
        LODWORD(v479) = *(v37 + 24);
        v134 = *(v37 + 7);
        v135 = *(v37 + 9);
        v136 = *(v37 + 11);
        v137 = *(v37 + 13);
        v138 = type metadata accessor for NANPeer(0);
        v139 = (v493 + *(v138 + 20));
        v140 = *v139;
        v141 = v139[1];
        v142 = v139[2];
        v143 = v139[3];
        v144 = v139[4];
        v145 = v139[5];
        v483 = v142;
        v484 = v27;
        v489 = v144;
        v490 = v145;
        v487 = v143;
        v488 = v140;
        v482 = v141;
        *&v491 = v138;
        if (v136)
        {
          v146 = *(v37 + 48);
          v147 = v493;

          LODWORD(v492) = v146;
          NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter(v136, &v494);
          v148 = v495;
          if ((v495 & 2) != 0)
          {
            v149 = 1026;
          }

          else
          {
            v149 = 770;
          }

          v150 = apple80211_he_capability.maxMCS_maxNSS.getter();
          v152 = 1282;
          if ((v148 & 4) == 0)
          {
            v152 = v149;
          }

          v153 = v147 + *(v491 + 112);
          *v153 = v152;
          *(v153 + 8) = v151;
          *(v153 + 16) = 0;
          *(v153 + 24) = v150;
          *(v153 + 32) = 0;
          v154 = v449;
          v155 = v453;
          (*v450)(v449, v147, v453);

          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v498[0] = swift_slowAlloc();
            *v158 = v447;
            v159 = WiFiAddress.description.getter(v488 | (v482 << 8) | (v483 << 16) | (v487 << 24) | (v489 << 32) | (v490 << 40));
            v161 = sub_100002320(v159, v160, v498);

            *(v158 + 4) = v161;
            *(v158 + 12) = 2080;
            NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter(v136, v496);

            v499 = v496[0];
            v500 = v496[1];
            *&v501 = v497;
            type metadata accessor for apple80211_he_capability(0);
            v162 = String.init<A>(describing:)();
            v164 = sub_100002320(v162, v163, v498);

            *(v158 + 14) = v164;
            _os_log_impl(&_mh_execute_header, v156, v157, "HE Cap (%s): %s", v158, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v451)(v154, v155);
          goto LABEL_158;
        }

        v261 = v444;
        v262 = v479;
        v263 = v492;
        if (v492)
        {

          v264 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(v263);
          v265 = NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(v263);
          v266 = NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(v263);
          v267 = NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(v263);
          NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(v263);
          LODWORD(v499) = 0;
          WORD2(v499) = v262;
          LODWORD(v444) = v262 >> 8;
          *(&v499 + 6) = v264;
          WORD5(v499) = v265;
          WORD6(v499) = v266;
          HIWORD(v499) = v267;
          apple80211_vht_capability.phyCapabilities.getter(v499, *(&v499 + 1), &v506);
          v268 = v507;
          v269 = v508;
          v270 = v509;
          v271 = v510 | (v511 << 8);
          v272 = v493 + *(v491 + 112);
          *v272 = v506;
          *(v272 + 8) = v268;
          *(v272 + 16) = v269;
          *(v272 + 24) = v270;
          *(v272 + 32) = v271;
          v273 = v446;
          v274 = v453;
          (*v450)(v446);

          v275 = Logger.logObject.getter();
          v276 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v275, v276))
          {
            v277 = swift_slowAlloc();
            *&v491 = swift_slowAlloc();
            v498[0] = v491;
            *v277 = v447;
            v278 = WiFiAddress.description.getter(v488 | (v482 << 8) | (v483 << 16) | (v487 << 24) | (v489 << 32) | (v490 << 40));
            LODWORD(v490) = v276;
            v280 = sub_100002320(v278, v279, v498);

            *(v277 + 4) = v280;
            *(v277 + 12) = 2080;
            v281 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(v263);
            LOWORD(v280) = NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(v263);
            v282 = NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(v263);
            v283 = NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(v263);
            v284 = NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(v263);

            LODWORD(v499) = 0;
            BYTE4(v499) = v262;
            BYTE5(v499) = v444;
            *(&v499 + 6) = v281;
            WORD5(v499) = v280;
            WORD6(v499) = v282;
            HIWORD(v499) = v283;
            LOWORD(v500) = v284;
            type metadata accessor for apple80211_vht_capability(0);
            v285 = String.init<A>(describing:)();
            v287 = sub_100002320(v285, v286, v498);

            *(v277 + 14) = v287;
            _os_log_impl(&_mh_execute_header, v275, v490, "VHT Cap (%s): %s", v277, 0x16u);
            swift_arrayDestroy();

            (*v451)(v446, v453);
          }

          else
          {

            (*v451)(v273, v274);
          }

LABEL_158:
          a1 = v464;
          goto LABEL_159;
        }

        swift_bridgeObjectRelease_n();
        a1 = v464;
        v367 = v453;
        if (v132)
        {

          v368 = v261;
          v369 = NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(v132, v261);
          apple80211_ht_capability.phyCapabilities.getter(v369, v370, v371, v372, &v512);
          v373 = v513;
          v374 = v514;
          v375 = v515;
          v376 = v516 | (v517 << 8);
          v377 = v493 + *(v491 + 112);
          *v377 = v512;
          *(v377 + 8) = v373;
          *(v377 + 16) = v374;
          *(v377 + 24) = v375;
          *(v377 + 32) = v376;
          v378 = v445;
          (*v450)(v445);

          v379 = Logger.logObject.getter();
          v380 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v379, v380))
          {
            v381 = swift_slowAlloc();
            v382 = v132;
            *&v492 = swift_slowAlloc();
            v498[0] = v492;
            *v381 = v447;
            v383 = WiFiAddress.description.getter(v488 | (v482 << 8) | (v483 << 16) | (v487 << 24) | (v489 << 32) | (v490 << 40));
            v385 = sub_100002320(v383, v384, v498);

            *(v381 + 4) = v385;
            *(v381 + 12) = 2080;
            v386 = NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(v382, v368);
            v388 = v387;
            v390 = v389;
            v392 = v391;

            *&v499 = v386;
            *(&v499 + 1) = v388;
            *&v500 = v390;
            a1 = v464;
            *(&v500 + 1) = v392;
            type metadata accessor for apple80211_ht_capability(0);
            v393 = String.init<A>(describing:)();
            v395 = sub_100002320(v393, v394, v498);

            *(v381 + 14) = v395;
            _os_log_impl(&_mh_execute_header, v379, v380, "HT Cap (%s): %s", v381, 0x16u);
            swift_arrayDestroy();

            (*v451)(v445, v367);
          }

          else
          {

            (*v451)(v378, v367);
          }
        }

        else
        {
        }

LABEL_159:
        v27 = v484;
        v30 = v481;
        goto LABEL_5;
      case 0x1Au:
        v127 = *v37;
        v126 = *(v37 + 1);
        v128 = *(v37 + 4);
        v129 = v493 + *(type metadata accessor for NANPeer(0) + 72);
        v130 = *(v129 + 8);
        v131 = v126 & 0xFF00000000;
        if ((v130 & 0xFF00000000) == 0x300000000)
        {
          if (v131 == 0x300000000)
          {
            goto LABEL_189;
          }
        }

        else if (v131 != 0x300000000 && static NANAttribute.ExtendedWLANInfrastructure.__derived_struct_equals(_:_:)(*v129, v130, *(v129 + 16), v127, v126, v128))
        {
          goto LABEL_189;
        }

        v244 = v459;
        if (*(v459 + 16))
        {
          v245 = v27;
          v246 = sub_1003E08F4(30);
          if (v247)
          {
            v490 = v127;
            LODWORD(v491) = v128;
            v248 = *(*(v244 + 56) + 8 * v246);
            v249 = v248 + 64;
            v250 = 1 << *(v248 + 32);
            if (v250 < 64)
            {
              v251 = ~(-1 << v250);
            }

            else
            {
              v251 = -1;
            }

            v252 = v251 & *(v248 + 64);
            v253 = (v250 + 63) >> 6;
            *&v492 = v248;
            swift_bridgeObjectRetain_n();
            v254 = 0;
            if (!v252)
            {
              goto LABEL_143;
            }

            while (1)
            {
              for (j = v254; ; v254 = j)
              {
                v256 = __clz(__rbit64(v252));
                v252 &= v252 - 1;
                v257 = *(v492 + 56) + ((j << 10) | (16 * v256));
                v259 = *v257;
                v258 = *(v257 + 8);

                v259(v260);

                if (v252)
                {
                  break;
                }

LABEL_143:
                v27 = v245;
                do
                {
                  j = v254 + 1;
                  if (__OFADD__(v254, 1))
                  {
                    goto LABEL_248;
                  }

                  if (j >= v253)
                  {

                    a1 = v464;
                    v30 = v481;
                    v128 = v491;
                    v127 = v490;
                    goto LABEL_189;
                  }

                  v252 = *(v249 + 8 * j);
                  ++v254;
                }

                while (!v252);
              }
            }
          }
        }

LABEL_189:
        *v129 = v127;
        *(v129 + 8) = v126;
        v454 = 1;
        *(v129 + 16) = v128;
        goto LABEL_5;
      case 0x1Eu:
        v106 = v37;
        v107 = *v37;
        v108 = v27;
        v109 = *(v106 + 1);

        v110 = (v493 + *(type metadata accessor for NANPeer(0) + 100));
        *v110 = v107;
        v110[1] = 0;
        v460 = v109;
        v462 = v109;
        goto LABEL_114;
      case 0x25u:
        v184 = *v37;
        v108 = v27;
        v185 = *(type metadata accessor for NANPeer(0) + 56);
        v186 = v493;
        v187 = *(v493 + v185);

        *(v186 + v185) = v184;
LABEL_114:
        v27 = v108;
        goto LABEL_5;
      case 0x26u:
        v188 = type metadata accessor for NANPeer(0);
        v189 = v37;
        v190 = (v493 + *(v188 + 84));
        v191 = *v190;
        v192 = v190[1];
        v193 = v190[2];
        v194 = v190[3];
        v195 = *v189;
        v491 = v189[1];
        v492 = v195;
        sub_1002E9FD4(v191, v192, v193, v194);
        v196 = v491;
        *v190 = v492;
        *(v190 + 1) = v196;
        goto LABEL_5;
      case 0x27u:
        v211 = v37;
        v212 = *(v37 + 4);
        v213 = v27;
        v214 = *(v211 + 20);
        v215 = v493 + *(type metadata accessor for NANPeer(0) + 80);
        v216 = *v215;
        v217 = *(v215 + 8);
        v218 = *(v215 + 16);
        v219 = *(v215 + 24);
        v220 = *(v215 + 32);
        v221 = *v211;
        v491 = *(v211 + 1);
        v492 = v221;
        v30 = v481;
        v222 = *(v215 + 40);
        sub_1002EA024(v216, v217, v218, v219, v220);
        v223 = v491;
        *v215 = v492;
        *(v215 + 16) = v223;
        *(v215 + 32) = v212;
        *(v215 + 40) = v214;
        v27 = v213;
        goto LABEL_5;
      case 0x28u:
        v207 = v37;
        v208 = *(type metadata accessor for NANPeer(0) + 76);
        v209 = v493;
        sub_100016290(v493 + v208, &unk_100596880, &unk_1004B0F70);
        sub_1002E9160(v207, v209 + v208, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v210 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
        (*(*(v210 - 8) + 56))(v209 + v208, 0, 1, v210);
        goto LABEL_5;
      case 0x29u:
        v98 = v37;
        v99 = v37[2];
        v100 = *(v98 + 1);
        v101 = *(v98 + 2);
        v102 = *v98;
        v103 = OUI.apple.unsafeMutableAddressor();
        if (static OUI.== infix(_:_:)(v102 | (v99 << 16), *v103 | (*(v103 + 2) << 16)))
        {
          type metadata accessor for BinaryDecoder();
          v104 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
          sub_10000AB0C(v100, v101);
          sub_1002E7D40(&qword_100597550, type metadata accessor for NANAttribute.CustomDeviceInformation);
          static BinaryDecoder.decode<A>(_:data:)(v104, v100, v101, v104);
          if (v27)
          {

            v105 = 1;
          }

          else
          {
            v105 = 0;
          }

          sub_1000124C8(v100, v101);
          sub_1000124C8(v100, v101);
          v360 = v452;
          (*(*(v104 - 1) + 56))(v452, v105, 1, v104);
          v361 = type metadata accessor for NANPeer(0);
          sub_1002E9F64(v360, v493 + *(v361 + 76));
          v27 = 0;
          v30 = v481;
        }

        else
        {
          sub_1000124C8(v100, v101);
          v30 = v481;
        }

        goto LABEL_5;
      default:
        sub_1002E9098(v37, type metadata accessor for NANAttribute);
        goto LABEL_5;
    }
  }
}

uint64_t sub_1002E4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v422 = type metadata accessor for NANAttribute(0);
  v7 = *(*(v422 - 8) + 64);
  __chkstk_darwin();
  v9 = &v377 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v377 - v10;
  __chkstk_darwin();
  v14 = &v377 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_21;
  }

  v18 = *(a1 + 32);
  v16 = a1 + 32;
  v17 = v18;
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v421 = *(a2 + 16);
  if (v17 >= v421)
  {
    goto LABEL_268;
  }

  v19 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v419 = *(v12 + 72);
  v420 = v19;
  sub_1002E90F8(v19 + v419 * v17, &v377 - v13, type metadata accessor for NANAttribute);
  if (swift_getEnumCaseMultiPayload() != 17)
  {
    v34 = v14;
    goto LABEL_17;
  }

  v411 = v9;
  v410 = a3;
  v20 = 0;
  v416 = *v14;
  v417 = v16;
  v21 = *(v14 + 1);
  v22 = *(v14 + 1);
  v418 = v15;
  while (v15 != v20)
  {
    v23 = *(v16 + 8 * v20);
    if (v23 >= v421)
    {
      __break(1u);
LABEL_265:

      goto LABEL_266;
    }

    sub_1002E90F8(v420 + v23 * v419, v11, type metadata accessor for NANAttribute);
    if (swift_getEnumCaseMultiPayload() != 17)
    {

      v34 = v11;
LABEL_17:
      sub_1002E9098(v34, type metadata accessor for NANAttribute);
LABEL_20:
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v15 = 0;
      goto LABEL_21;
    }

    if (!*(*(v11 + 1) + 16) || (v24 = *v11, v25 = *(v11 + 1), v23 != v17) && (v26 = NANAttribute.Availability.Control.mapID.getter(*(v11 + 1)), v26 == NANAttribute.Availability.Control.mapID.getter(v21)))
    {

LABEL_19:

      goto LABEL_20;
    }

    v27 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v25);
    v28 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v21);

    if (v27 == v28)
    {
      v20 = (v20 + 1);
      v29 = v24 == v416;
      v16 = v417;
      v15 = v418;
      if (v29)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v36 = (v3 + *(type metadata accessor for NANPeer(0) + 68));
  v37 = v36[1];
  if (v37)
  {
    v38 = v411;
    if (v416 == *v36)
    {
      goto LABEL_19;
    }

    v39 = *v36;
    v40 = v36[2];
    v383 = v36[3];
    v382 = v36[4];
    v41 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v21);
    v42 = *NANAttribute.Availability.Control.committedChange.unsafeMutableAddressor();
    v43 = *NANAttribute.Availability.Control.potentialChange.unsafeMutableAddressor();

    if (v42)
    {
      if ((v43 & ~v42) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (!v43)
    {
      goto LABEL_20;
    }

    v42 |= v43;
LABEL_31:
    if ((v42 & v41) == 0)
    {
      goto LABEL_20;
    }

    v377 = v40;
    v378 = v39;
    v379 = v37;
    v380 = v36;
    goto LABEL_33;
  }

  v379 = 0;
  v378 = *v36;
  v44 = v36[3];
  v377 = v36[2];
  v383 = v44;
  v380 = v36;
  v382 = v36[4];

  v38 = v411;
LABEL_33:
  v397 = 0;
  v396 = 0;
  v395 = 0;
  v388 = 0;
  v389 = 0;
  v394 = 0;
  v390 = 0;
  v15 = 0;
  v45 = 0;
  v46 = &_swiftEmptyDictionarySingleton;
  v387 = &_swiftEmptyDictionarySingleton;
  v400 = &_swiftEmptyDictionarySingleton;
  v399 = &_swiftEmptyDictionarySingleton;
  v47 = v410;
  v48 = v418;
  while (1)
  {
    if (v45 == v48)
    {
      goto LABEL_274;
    }

    v404 = v46;
    v398 = v45;
    v49 = *(v417 + 8 * v45);
    if (v49 >= v421)
    {
      goto LABEL_275;
    }

    sub_1002E90F8(v420 + v49 * v419, v38, type metadata accessor for NANAttribute);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      break;
    }

    sub_1002E9098(v38, type metadata accessor for NANAttribute);
LABEL_233:
    v45 = v398 + 1;
    v48 = v418;
    v46 = v404;
    if ((v398 + 1) == v418)
    {
      if (*(v47 + 16))
      {
        v334 = sub_1003E08F4(18);
        if (v335)
        {
          v336 = *(*(v47 + 56) + 8 * v334);
          v337 = 1 << *(v336 + 32);
          v338 = -1;
          if (v337 < 64)
          {
            v338 = ~(-1 << v337);
          }

          v339 = v338 & *(v336 + 64);
          v340 = (v337 + 63) >> 6;
          v341 = *(*(v47 + 56) + 8 * v334);
          swift_bridgeObjectRetain_n();
          v342 = 0;
          while (v339)
          {
            v343 = v342;
LABEL_244:
            v344 = __clz(__rbit64(v339));
            v339 &= v339 - 1;
            v345 = *(v336 + 56) + ((v343 << 10) | (16 * v344));
            v347 = *v345;
            v346 = *(v345 + 8);

            v347(v348);
          }

          while (1)
          {
            v343 = v342 + 1;
            if (__OFADD__(v342, 1))
            {
              goto LABEL_287;
            }

            if (v343 >= v340)
            {
              goto LABEL_265;
            }

            v339 = *(v336 + 64 + 8 * v343);
            ++v342;
            if (v339)
            {
              v342 = v343;
              goto LABEL_244;
            }
          }
        }
      }

LABEL_266:
      sub_1002EA11C(v378, v379);
      sub_100010520(v397);
      sub_100010520(v396);
      sub_100010520(v395);
      v374 = v380;
      v375 = v404;
      *v380 = v416;
      v374[1] = v375;
      v376 = v387;
      v374[2] = v400;
      v374[3] = v376;
      v374[4] = v399;
      goto LABEL_258;
    }
  }

  v50 = *(v38 + 8);
  v412 = NANAttribute.Availability.Control.mapID.getter(*(v38 + 2));
  v401 = *(v50 + 16);
  if (!v401)
  {
LABEL_232:

    goto LABEL_233;
  }

  v51 = 0;
  v403 = v50 + 32;
  v402 = v50;
  while (1)
  {
    if (v51 >= *(v50 + 16))
    {
      goto LABEL_271;
    }

    v409 = v15;
    v405 = v51;
    v58 = (v403 + 56 * v51);
    v59 = *(v58 + 1);
    v60 = *(v58 + 2);
    v61 = *(v58 + 3);
    v62 = *(v58 + 48);
    v63 = *(v58 + 5);
    v64 = *v58;
    sub_10005D4F4(v59, v60, v61);
    v415 = v63;

    v65 = (*NANAvailabilityEntry.Control.committed.unsafeMutableAddressor() & ~v64);
    v66 = *NANAvailabilityEntry.Control.potential.unsafeMutableAddressor();
    v67 = v66 & v64;
    v68 = *NANAvailabilityEntry.Control.conditional.unsafeMutableAddressor();
    v69 = v68 & v64;
    v406 = v59;
    v413 = v60;
    v414 = v61;
    sub_10005D4F4(v59, v60, v61);
    v408 = NANAvailabilityEntry.Control.usagePreference.getter(v64, v70);
    v407 = NANAvailabilityEntry.Control.rxNSS.getter(v64, &v430 + 4);
    v71 = NANAvailabilityEntry.Control.utilization.getter(v64, &v429);
    v72 = v71;
    if (!v65)
    {
      break;
    }

    v15 = v409;
    if (v67 != v66)
    {
      if (v69 != v68)
      {
LABEL_246:
        v349 = v406;
        v351 = v413;
        v350 = v414;
        sub_10002F75C(v406, v413, v414);

        sub_10002F75C(v349, v351, v350);

        v352 = &v427;
        goto LABEL_257;
      }

      if (!v62)
      {
        goto LABEL_247;
      }

      v129 = v406;
      if (*(v415 + 16) != 1)
      {
        goto LABEL_248;
      }

      v130 = *(v415 + 40);
      v131 = v392 & 0xFF000000FF00 | *(v415 + 32) | (*(v415 + 34) << 16) | (*(v415 + 36) << 32) | (*(v415 + 38) << 48);
      v132 = NANBitmap.Channel.channel.getter(v131, *&v71);
      if ((v132 & 0xFF00000000) == 0x300000000)
      {

        goto LABEL_255;
      }

      v133 = v132;
      v392 = v131;
      sub_100010520(v15);
      v134 = v399;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v426 = v134;
      v137 = sub_10002D078(v412);
      v138 = *(v134 + 2);
      v139 = (v136 & 1) == 0;
      v140 = v138 + v139;
      if (__OFADD__(v138, v139))
      {
        goto LABEL_276;
      }

      v141 = v136;
      if (*(v134 + 3) < v140)
      {
        sub_1003112AC(v140, isUniquelyReferenced_nonNull_native);
        v142 = sub_10002D078(v412);
        if ((v141 & 1) != (v143 & 1))
        {
          goto LABEL_294;
        }

        v137 = v142;
        v144 = v426;
        if (v141)
        {
          goto LABEL_133;
        }

LABEL_131:
        *&v144[8 * (v137 >> 6) + 64] |= 1 << v137;
        *(*(v144 + 6) + v137) = v412;
        *(*(v144 + 7) + 8 * v137) = _swiftEmptyArrayStorage;
        v208 = *(v144 + 2);
        v158 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v158)
        {
          goto LABEL_286;
        }

        *(v144 + 2) = v209;
        goto LABEL_133;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v144 = v426;
        if ((v136 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        sub_10046BB8C();
        v144 = v426;
        if ((v141 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

LABEL_133:
      v210 = *(v144 + 7);
      v211 = *(v210 + 8 * v137);
      v212 = swift_isUniquelyReferenced_nonNull_native();
      *(v210 + 8 * v137) = v211;
      if ((v212 & 1) == 0)
      {
        v211 = sub_1003A7518(0, *(v211 + 2) + 1, 1, v211);
        *(v210 + 8 * v137) = v211;
      }

      v399 = v144;
      v214 = *(v211 + 2);
      v213 = *(v211 + 3);
      if (v214 >= v213 >> 1)
      {
        *(v210 + 8 * v137) = sub_1003A7518((v213 > 1), v214 + 1, 1, v211);
      }

      v216 = v413;
      v215 = v414;
      sub_10002F75C(v129, v413, v414);

      v217 = *(v210 + 8 * v137);
      *(v217 + 16) = v214 + 1;
      v218 = v217 + 56 * v214;
      *(v218 + 32) = v133;
      *(v218 + 36) = BYTE4(v133);
      *(v218 + 37) = BYTE5(v133);
      *(v218 + 40) = v129;
      *(v218 + 48) = v216;
      *(v218 + 56) = v215;
      *(v218 + 64) = v408;
      *(v218 + 72) = v407;
      *(v218 + 80) = v72;
      v15 = sub_1002EA55C;
      goto LABEL_42;
    }

    v93 = v386;
    if (v69 == v68)
    {
      v94 = v406;
      if (v62)
      {
        if (*(v415 + 16))
        {
          v95 = *(v415 + 32);
          v96 = *(v415 + 34);
          v97 = *(v415 + 36);
          v98 = *(v415 + 40);
          v99 = *(v415 + 38);

          v100 = v384 & 0xFF000000FF00 | v95 | (v96 << 16) | (v97 << 32) | (v99 << 48);
          v102 = NANBitmap.Channel.channel.getter(v100, v101);
          if ((v102 & 0xFF00000000) == 0x300000000)
          {
            goto LABEL_262;
          }

          v103 = v102;
          sub_10005D4F4(v94, v413, v414);
          sub_100010520(v394);
          v104 = v399;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v424 = v104;
          v107 = sub_10002D078(v412);
          v108 = *(v104 + 2);
          v109 = (v106 & 1) == 0;
          v110 = v108 + v109;
          if (__OFADD__(v108, v109))
          {
            goto LABEL_282;
          }

          v111 = v106;
          if (*(v104 + 3) >= v110)
          {
            if ((v105 & 1) == 0)
            {
              sub_10046BB8C();
            }
          }

          else
          {
            sub_1003112AC(v110, v105);
            v112 = sub_10002D078(v412);
            if ((v111 & 1) != (v113 & 1))
            {
              goto LABEL_294;
            }

            v107 = v112;
          }

          v240 = v415;
          v241 = v424;
          if ((v111 & 1) == 0)
          {
            *&v424[8 * (v107 >> 6) + 64] |= 1 << v107;
            *(*(v241 + 6) + v107) = v412;
            *(*(v241 + 7) + 8 * v107) = _swiftEmptyArrayStorage;
            v242 = *(v241 + 2);
            v158 = __OFADD__(v242, 1);
            v243 = v242 + 1;
            if (v158)
            {
              goto LABEL_291;
            }

            *(v241 + 2) = v243;
          }

          v399 = v241;
          v244 = *(v241 + 7);
          v245 = *(v244 + 8 * v107);
          v246 = swift_isUniquelyReferenced_nonNull_native();
          *(v244 + 8 * v107) = v245;
          v384 = v100;
          if ((v246 & 1) == 0)
          {
            v245 = sub_1003A7518(0, *(v245 + 2) + 1, 1, v245);
            *(v244 + 8 * v107) = v245;
          }

          v248 = *(v245 + 2);
          v247 = *(v245 + 3);
          if (v248 >= v247 >> 1)
          {
            v245 = sub_1003A7518((v247 > 1), v248 + 1, 1, v245);
            *(v244 + 8 * v107) = v245;
          }

          v38 = v411;
          *(v245 + 2) = v248 + 1;
          v249 = &v245[56 * v248];
          *(v249 + 8) = v103;
          v249[36] = BYTE4(v103);
          v249[37] = BYTE5(v103);
          v251 = v413;
          v250 = v414;
          *(v249 + 5) = v94;
          *(v249 + 6) = v251;
          *(v249 + 7) = v250;
          v249[64] = v408;
          LODWORD(v250) = *&v423[3];
          *(v249 + 65) = *v423;
          *(v249 + 17) = v250;
          *(v249 + 9) = v407;
          *(v249 + 10) = v72;
          v252 = *(v240 + 16);
          if (!v252)
          {
            goto LABEL_283;
          }

          v253 = v15;
          v254 = swift_isUniquelyReferenced_nonNull_native();
          v426 = v240;
          if (!v254 || (v255 = v240, (v252 - 1) > *(v240 + 24) >> 1))
          {
            v255 = sub_100116D3C(v254, v252, 1, v240);
            v426 = v255;
          }

          sub_1003330FC(0, 1, 0);
          v257 = *(v255 + 2);
          if (v257)
          {
            v258 = (v255 + 40);
            v259 = _swiftEmptyArrayStorage;
            v260 = v381;
            do
            {
              v262 = *v258;
              v260 = v260 & 0xFF000000FF00 | *(v258 - 8) | (*(v258 - 3) << 16) | (*(v258 - 4) << 32) | (*(v258 - 1) << 48);
              v263 = NANBitmap.Channel.channel.getter(v260, v256);
              if ((v263 & 0xFF00000000) != 0x300000000)
              {
                v264 = v263;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v259 = sub_100011C2C(0, *(v259 + 2) + 1, 1, v259);
                }

                v266 = *(v259 + 2);
                v265 = *(v259 + 3);
                if (v266 >= v265 >> 1)
                {
                  v259 = sub_100011C2C((v265 > 1), v266 + 1, 1, v259);
                }

                *(v259 + 2) = v266 + 1;
                v261 = &v259[8 * v266];
                *(v261 + 8) = v264;
                v261[36] = BYTE4(v264);
                v261[37] = BYTE5(v264);
              }

              v258 += 10;
              --v257;
            }

            while (v257);

            sub_100010520(v390);
            v267 = v400;
            v268 = swift_isUniquelyReferenced_nonNull_native();
            v424 = v267;
            v269 = sub_10002D078(v412);
            v271 = v270;
            v272 = *(v267 + 2);
            v273 = (v270 & 1) == 0;
            if (__OFADD__(v272, v273))
            {
              goto LABEL_288;
            }

            v274 = v269;
            v275 = sub_1002E91C8(v268, v272 + v273);
            v276 = v424;
            v15 = v253;
            v400 = v424;
            if (v275)
            {
              v277 = sub_10002D078(v412);
              if ((v271 & 1) != (v278 & 1))
              {
                goto LABEL_294;
              }

              v274 = v277;
              v276 = v400;
            }

            v381 = v260;
            if ((v271 & 1) == 0)
            {
              sub_10002D508(v274, v412, _swiftEmptyArrayStorage, v276);
              v276 = v400;
            }

            v281 = *(v276 + 7);
            v282 = *(v281 + 8 * v274);
            v283 = swift_isUniquelyReferenced_nonNull_native();
            *(v281 + 8 * v274) = v282;
            if ((v283 & 1) == 0)
            {
              v282 = sub_1003A7678(0, *(v282 + 2) + 1, 1, v282);
              *(v281 + 8 * v274) = v282;
            }

            v285 = *(v282 + 2);
            v284 = *(v282 + 3);
            if (v285 >= v284 >> 1)
            {
              *(v281 + 8 * v274) = sub_1003A7678((v284 > 1), v285 + 1, 1, v282);
            }

            v287 = v413;
            v286 = v414;
            sub_10002F75C(v94, v413, v414);

            v288 = *(v281 + 8 * v274);
            *(v288 + 16) = v285 + 1;
            v289 = v288 + 56 * v285;
            *(v289 + 32) = v259;
            *(v289 + 40) = v94;
            *(v289 + 48) = v287;
            *(v289 + 56) = v286;
            *(v289 + 64) = v408;
            *(v289 + 72) = v407;
            *(v289 + 80) = v72;
            v390 = sub_1002EA55C;
            v38 = v411;
          }

          else
          {
            v280 = v413;
            v279 = v414;
            sub_10002F75C(v94, v413, v414);
            sub_10002F75C(v94, v280, v279);
          }

          v50 = v402;
          v394 = sub_1002EA55C;
          v47 = v410;
          goto LABEL_197;
        }

LABEL_262:

        v372 = v413;
        v371 = v414;
        sub_10002F75C(v94, v413, v414);

        sub_10002F75C(v94, v372, v371);

        v370 = &v428;
      }

      else
      {
        v369 = v413;
        v368 = v414;
        sub_10002F75C(v406, v413, v414);

        sub_10002F75C(v94, v369, v368);

        v370 = &v427;
      }

      v373 = *(v370 - 32);

      v32 = v394;
      sub_100010520(v397);
      sub_100010520(v396);
      sub_100010520(v395);
      v33 = v390;
      v30 = v388;
      v31 = v389;
      goto LABEL_21;
    }

    v145 = *(v415 + 16);
    v146 = v406;
    if ((v62 & 1) == 0)
    {
      v226 = v409;
      if (!v145)
      {
        v228 = _swiftEmptyArrayStorage;
LABEL_214:
        sub_100010520(v388);
        v312 = v387;
        v313 = swift_isUniquelyReferenced_nonNull_native();
        v426 = v312;
        v315 = sub_10002D078(v412);
        v316 = *(v312 + 2);
        v317 = (v314 & 1) == 0;
        v318 = v316 + v317;
        if (__OFADD__(v316, v317))
        {
          goto LABEL_290;
        }

        v319 = v314;
        v15 = v226;
        if (*(v312 + 3) >= v318)
        {
          if ((v313 & 1) == 0)
          {
            sub_10046BBA0();
          }
        }

        else
        {
          sub_1003112C0(v318, v313);
          v320 = sub_10002D078(v412);
          if ((v319 & 1) != (v321 & 1))
          {
            goto LABEL_294;
          }

          v315 = v320;
        }

        v322 = v426;
        if ((v319 & 1) == 0)
        {
          *&v426[8 * (v315 >> 6) + 64] |= 1 << v315;
          *(*(v322 + 6) + v315) = v412;
          *(*(v322 + 7) + 8 * v315) = _swiftEmptyArrayStorage;
          v323 = *(v322 + 2);
          v158 = __OFADD__(v323, 1);
          v324 = v323 + 1;
          if (v158)
          {
            goto LABEL_293;
          }

          *(v322 + 2) = v324;
        }

        v387 = v322;
        v325 = *(v322 + 7);
        v326 = *(v325 + 8 * v315);
        v327 = swift_isUniquelyReferenced_nonNull_native();
        *(v325 + 8 * v315) = v326;
        if ((v327 & 1) == 0)
        {
          v326 = sub_1003A765C(0, *(v326 + 2) + 1, 1, v326);
          *(v325 + 8 * v315) = v326;
        }

        v329 = *(v326 + 2);
        v328 = *(v326 + 3);
        if (v329 >= v328 >> 1)
        {
          *(v325 + 8 * v315) = sub_1003A765C((v328 > 1), v329 + 1, 1, v326);
        }

        v331 = v413;
        v330 = v414;
        sub_10002F75C(v146, v413, v414);

        v332 = *(v325 + 8 * v315);
        *(v332 + 16) = v329 + 1;
        v333 = v332 + 56 * v329;
        *(v333 + 32) = v228;
        *(v333 + 40) = v146;
        *(v333 + 48) = v331;
        *(v333 + 56) = v330;
        *(v333 + 64) = v408;
        *(v333 + 72) = v407;
        *(v333 + 80) = v72;
        v56 = &v420;
        goto LABEL_41;
      }

      v227 = (v415 + 32);
      v228 = _swiftEmptyArrayStorage;
      while (2)
      {
        v229 = *v227++;
        v230 = NANBitmap.Band.bands.getter(v229);
        v231 = *(v230 + 16);
        v232 = *(v228 + 2);
        v233 = v232 + v231;
        if (__OFADD__(v232, v231))
        {
          goto LABEL_269;
        }

        v234 = v230;
        v235 = swift_isUniquelyReferenced_nonNull_native();
        if (v235 && v233 <= *(v228 + 3) >> 1)
        {
          if (!*(v234 + 16))
          {
LABEL_147:

            if (v231)
            {
              goto LABEL_270;
            }

LABEL_148:
            if (!--v145)
            {
              goto LABEL_214;
            }

            continue;
          }
        }

        else
        {
          if (v232 <= v233)
          {
            v236 = v232 + v231;
          }

          else
          {
            v236 = v232;
          }

          v228 = sub_100116C3C(v235, v236, 1, v228);
          if (!*(v234 + 16))
          {
            goto LABEL_147;
          }
        }

        break;
      }

      v237 = *(v228 + 2);
      if ((*(v228 + 3) >> 1) - v237 < v231)
      {
        goto LABEL_272;
      }

      memcpy(&v228[v237 + 32], (v234 + 32), v231);

      if (v231)
      {
        v238 = *(v228 + 2);
        v158 = __OFADD__(v238, v231);
        v239 = v238 + v231;
        if (v158)
        {
          goto LABEL_273;
        }

        *(v228 + 2) = v239;
      }

      goto LABEL_148;
    }

    if (v145)
    {
      v147 = (v415 + 40);
      v148 = _swiftEmptyArrayStorage;
      do
      {
        v150 = *v147;
        v93 = v93 & 0xFF000000FF00 | *(v147 - 8) | (*(v147 - 3) << 16) | (*(v147 - 4) << 32) | (*(v147 - 1) << 48);
        v151 = NANBitmap.Channel.channel.getter(v93, *&v71);
        if ((v151 & 0xFF00000000) != 0x300000000)
        {
          v152 = v151;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_100011C2C(0, *(v148 + 2) + 1, 1, v148);
          }

          v154 = *(v148 + 2);
          v153 = *(v148 + 3);
          if (v154 >= v153 >> 1)
          {
            v148 = sub_100011C2C((v153 > 1), v154 + 1, 1, v148);
          }

          *(v148 + 2) = v154 + 1;
          v149 = &v148[8 * v154];
          *(v149 + 8) = v152;
          v149[36] = BYTE4(v152);
          v149[37] = BYTE5(v152);
        }

        v147 += 10;
        --v145;
      }

      while (v145);
    }

    else
    {
      v148 = _swiftEmptyArrayStorage;
    }

    sub_100010520(v389);
    v290 = v400;
    v291 = swift_isUniquelyReferenced_nonNull_native();
    v426 = v290;
    v293 = sub_10002D078(v412);
    v294 = *(v290 + 2);
    v295 = (v292 & 1) == 0;
    v296 = v294 + v295;
    if (__OFADD__(v294, v295))
    {
      goto LABEL_289;
    }

    v297 = v292;
    if (*(v290 + 3) >= v296)
    {
      if ((v291 & 1) == 0)
      {
        sub_10046BBB4();
      }
    }

    else
    {
      sub_1003112D4(v296, v291);
      v298 = sub_10002D078(v412);
      if ((v297 & 1) != (v299 & 1))
      {
        goto LABEL_294;
      }

      v293 = v298;
    }

    v300 = v426;
    if ((v297 & 1) == 0)
    {
      *&v426[8 * (v293 >> 6) + 64] |= 1 << v293;
      *(*(v300 + 6) + v293) = v412;
      *(*(v300 + 7) + 8 * v293) = _swiftEmptyArrayStorage;
      v301 = *(v300 + 2);
      v158 = __OFADD__(v301, 1);
      v302 = v301 + 1;
      if (v158)
      {
        goto LABEL_292;
      }

      *(v300 + 2) = v302;
    }

    v386 = v93;
    v400 = v300;
    v303 = *(v300 + 7);
    v304 = *(v303 + 8 * v293);
    v305 = swift_isUniquelyReferenced_nonNull_native();
    *(v303 + 8 * v293) = v304;
    if ((v305 & 1) == 0)
    {
      v304 = sub_1003A7678(0, *(v304 + 2) + 1, 1, v304);
      *(v303 + 8 * v293) = v304;
    }

    v307 = *(v304 + 2);
    v306 = *(v304 + 3);
    if (v307 >= v306 >> 1)
    {
      *(v303 + 8 * v293) = sub_1003A7678((v306 > 1), v307 + 1, 1, v304);
    }

    v309 = v413;
    v308 = v414;
    sub_10002F75C(v146, v413, v414);

    v310 = *(v303 + 8 * v293);
    *(v310 + 16) = v307 + 1;
    v311 = v310 + 56 * v307;
    *(v311 + 32) = v148;
    *(v311 + 40) = v146;
    *(v311 + 48) = v309;
    *(v311 + 56) = v308;
    *(v311 + 64) = v408;
    *(v311 + 72) = v407;
    *(v311 + 80) = v72;
    v56 = &v421;
LABEL_41:
    *(v56 - 32) = sub_1002EA55C;
LABEL_42:
    v47 = v410;
    v38 = v411;
    v57 = v405;
LABEL_43:
    v50 = v402;
LABEL_44:
    v51 = v57 + 1;
    if (v51 == v401)
    {
      goto LABEL_232;
    }
  }

  v15 = v409;
  if (v67 == v66)
  {
    if (v69 == v68)
    {
      goto LABEL_246;
    }

    if (!v62)
    {
      v356 = v406;
      v358 = v413;
      v357 = v414;
      sub_10002F75C(v406, v413, v414);

      sub_10002F75C(v356, v358, v357);

      v359 = &v427;
LABEL_252:
      v362 = *(v359 - 32);

      v33 = v390;
      v363 = v388;
      v31 = v389;
      sub_100010520(v397);
      sub_100010520(v396);
      sub_100010520(v395);
      v30 = v363;
      goto LABEL_259;
    }

    v73 = v406;
    if (!*(v415 + 16))
    {

LABEL_251:

      v361 = v413;
      v360 = v414;
      sub_10002F75C(v73, v413, v414);

      sub_10002F75C(v73, v361, v360);

      v359 = &v428;
      goto LABEL_252;
    }

    v74 = *(v415 + 32);
    v75 = *(v415 + 34);
    v76 = *(v415 + 36);
    v77 = *(v415 + 40);
    v78 = *(v415 + 38);

    v79 = v391 & 0xFF000000FF00 | v74 | (v75 << 16) | (v76 << 32) | (v78 << 48);
    v81 = NANBitmap.Channel.channel.getter(v79, v80);
    if ((v81 & 0xFF00000000) == 0x300000000)
    {
      goto LABEL_251;
    }

    v82 = v81;
    sub_10005D4F4(v73, v413, v414);
    sub_100010520(v396);
    v83 = v404;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v426 = v83;
    v86 = sub_10002D078(v412);
    v87 = *(v83 + 2);
    v88 = (v85 & 1) == 0;
    v89 = v87 + v88;
    if (__OFADD__(v87, v88))
    {
      goto LABEL_278;
    }

    v90 = v85;
    if (*(v83 + 3) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        sub_10046BBC8();
      }
    }

    else
    {
      sub_1003112E8(v89, v84);
      v91 = sub_10002D078(v412);
      if ((v90 & 1) != (v92 & 1))
      {
        goto LABEL_294;
      }

      v86 = v91;
    }

    v155 = v415;
    v156 = v426;
    if ((v90 & 1) == 0)
    {
      *&v426[8 * (v86 >> 6) + 64] |= 1 << v86;
      *(*(v156 + 6) + v86) = v412;
      *(*(v156 + 7) + 8 * v86) = _swiftEmptyArrayStorage;
      v157 = *(v156 + 2);
      v158 = __OFADD__(v157, 1);
      v159 = v157 + 1;
      if (v158)
      {
        goto LABEL_285;
      }

      *(v156 + 2) = v159;
    }

    v404 = v156;
    v160 = *(v156 + 7);
    v161 = *(v160 + 8 * v86);
    v162 = swift_isUniquelyReferenced_nonNull_native();
    *(v160 + 8 * v86) = v161;
    v391 = v79;
    if ((v162 & 1) == 0)
    {
      v161 = sub_1003A74FC(0, *(v161 + 2) + 1, 1, v161);
      *(v160 + 8 * v86) = v161;
    }

    v164 = *(v161 + 2);
    v163 = *(v161 + 3);
    if (v164 >= v163 >> 1)
    {
      v161 = sub_1003A74FC((v163 > 1), v164 + 1, 1, v161);
      *(v160 + 8 * v86) = v161;
    }

    v47 = v410;
    *(v161 + 2) = v164 + 1;
    v165 = &v161[56 * v164];
    *(v165 + 8) = v82;
    v165[36] = BYTE4(v82);
    v165[37] = BYTE5(v82);
    v167 = v413;
    v166 = v414;
    *(v165 + 5) = v73;
    *(v165 + 6) = v167;
    *(v165 + 7) = v166;
    v165[64] = v408;
    LODWORD(v166) = *(&v424 + 3);
    *(v165 + 65) = v424;
    *(v165 + 17) = v166;
    *(v165 + 9) = v407;
    *(v165 + 10) = v72;
    v168 = *(v155 + 16);
    if (!v168)
    {
      goto LABEL_279;
    }

    v169 = swift_isUniquelyReferenced_nonNull_native();
    if (!v169 || (v170 = v155, (v168 - 1) > *(v155 + 24) >> 1))
    {
      v170 = sub_100116D3C(v169, v168, 1, v155);
    }

    v171 = *(v170 + 2);
    memmove(v170 + 32, v170 + 42, 10 * v171 - 10);
    v173 = v171 - 1;
    *(v170 + 2) = v171 - 1;
    if (v171 == 1)
    {
      v220 = v413;
      v219 = v414;
      sub_10002F75C(v73, v413, v414);
      sub_10002F75C(v73, v220, v219);

      v396 = sub_1002EA55C;
      v38 = v411;
      v50 = v402;
LABEL_197:
      v57 = v405;
      goto LABEL_44;
    }

    if (v171 < 2)
    {
      goto LABEL_280;
    }

    v174 = v15;
    v175 = (v170 + 40);
    v176 = _swiftEmptyArrayStorage;
    v177 = v385;
    do
    {
      v179 = *v175;
      v177 = v177 & 0xFF000000FF00 | *(v175 - 8) | (*(v175 - 3) << 16) | (*(v175 - 4) << 32) | (*(v175 - 1) << 48);
      v180 = NANBitmap.Channel.channel.getter(v177, v172);
      if ((v180 & 0xFF00000000) != 0x300000000)
      {
        v181 = v180;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_100011C2C(0, *(v176 + 2) + 1, 1, v176);
        }

        v183 = *(v176 + 2);
        v182 = *(v176 + 3);
        if (v183 >= v182 >> 1)
        {
          v176 = sub_100011C2C((v182 > 1), v183 + 1, 1, v176);
        }

        *(v176 + 2) = v183 + 1;
        v178 = &v176[8 * v183];
        *(v178 + 8) = v181;
        v178[36] = BYTE4(v181);
        v178[37] = BYTE5(v181);
      }

      v175 += 10;
      --v173;
    }

    while (v173);
    v385 = v177;

    sub_100010520(v395);
    v184 = v400;
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v426 = v184;
    v186 = sub_10002D078(v412);
    v188 = v187;
    v189 = *(v184 + 2);
    v190 = (v187 & 1) == 0;
    if (__OFADD__(v189, v190))
    {
      goto LABEL_281;
    }

    v191 = v186;
    v192 = sub_1002E91C8(v185, v189 + v190);
    v193 = v426;
    v15 = v174;
    v400 = v426;
    if (v192)
    {
      v194 = sub_10002D078(v412);
      if ((v188 & 1) != (v195 & 1))
      {
        goto LABEL_294;
      }

      v191 = v194;
      v193 = v400;
    }

    if ((v188 & 1) == 0)
    {
      sub_10002D508(v191, v412, _swiftEmptyArrayStorage, v193);
      v193 = v400;
    }

    v221 = *(v193 + 7);
    v222 = *(v221 + 8 * v191);
    v223 = swift_isUniquelyReferenced_nonNull_native();
    *(v221 + 8 * v191) = v222;
    if ((v223 & 1) == 0)
    {
      v222 = sub_1003A7678(0, *(v222 + 2) + 1, 1, v222);
      *(v221 + 8 * v191) = v222;
    }

    v225 = *(v222 + 2);
    v224 = *(v222 + 3);
    if (v225 >= v224 >> 1)
    {
      *(v221 + 8 * v191) = sub_1003A7678((v224 > 1), v225 + 1, 1, v222);
    }

    v53 = v413;
    v52 = v414;
    sub_10002F75C(v73, v413, v414);

    v54 = *(v221 + 8 * v191);
    *(v54 + 16) = v225 + 1;
    v55 = v54 + 56 * v225;
    *(v55 + 32) = v176;
    *(v55 + 40) = v73;
    *(v55 + 48) = v53;
    *(v55 + 56) = v52;
    *(v55 + 64) = v408;
    *(v55 + 72) = v407;
    *(v55 + 80) = v72;
    v395 = sub_1002EA55C;
    v56 = &v425;
    goto LABEL_41;
  }

  if (v69 == v68)
  {
    goto LABEL_246;
  }

  if (!v62 || *(v415 + 16) != 1)
  {
LABEL_247:
    v129 = v406;
LABEL_248:
    v354 = v413;
    v353 = v414;
    sub_10002F75C(v129, v413, v414);

    sub_10002F75C(v129, v354, v353);

    v355 = &v427;
    goto LABEL_256;
  }

  v114 = *(v415 + 40);
  v115 = v393 & 0xFF000000FF00 | *(v415 + 32) | (*(v415 + 34) << 16) | (*(v415 + 36) << 32) | (*(v415 + 38) << 48);
  v116 = NANBitmap.Channel.channel.getter(v115, *&v71);
  if ((v116 & 0xFF00000000) != 0x300000000)
  {
    v117 = v116;
    v393 = v115;
    sub_100010520(v397);
    v118 = v404;
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v426 = v118;
    v121 = sub_10002D078(v412);
    v122 = *(v118 + 2);
    v123 = (v120 & 1) == 0;
    v124 = v122 + v123;
    if (__OFADD__(v122, v123))
    {
      goto LABEL_277;
    }

    v125 = v120;
    if (*(v118 + 3) < v124)
    {
      sub_1003112E8(v124, v119);
      v126 = sub_10002D078(v412);
      if ((v125 & 1) != (v127 & 1))
      {
        goto LABEL_294;
      }

      v121 = v126;
      v128 = v426;
      if (v125)
      {
        goto LABEL_124;
      }

LABEL_122:
      *&v128[8 * (v121 >> 6) + 64] |= 1 << v121;
      *(*(v128 + 6) + v121) = v412;
      *(*(v128 + 7) + 8 * v121) = _swiftEmptyArrayStorage;
      v196 = *(v128 + 2);
      v158 = __OFADD__(v196, 1);
      v197 = v196 + 1;
      if (v158)
      {
        goto LABEL_284;
      }

      *(v128 + 2) = v197;
      goto LABEL_124;
    }

    if (v119)
    {
      v128 = v426;
      if ((v120 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      sub_10046BBC8();
      v128 = v426;
      if ((v125 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

LABEL_124:
    v404 = v128;
    v198 = *(v128 + 7);
    v199 = *(v198 + 8 * v121);
    v200 = swift_isUniquelyReferenced_nonNull_native();
    *(v198 + 8 * v121) = v199;
    if ((v200 & 1) == 0)
    {
      v199 = sub_1003A74FC(0, *(v199 + 2) + 1, 1, v199);
      *(v198 + 8 * v121) = v199;
    }

    v202 = *(v199 + 2);
    v201 = *(v199 + 3);
    if (v202 >= v201 >> 1)
    {
      *(v198 + 8 * v121) = sub_1003A74FC((v201 > 1), v202 + 1, 1, v199);
    }

    v203 = v406;
    v204 = v413;
    v205 = v414;
    sub_10002F75C(v406, v413, v414);

    v206 = *(v198 + 8 * v121);
    *(v206 + 16) = v202 + 1;
    v207 = v206 + 56 * v202;
    *(v207 + 32) = v117;
    *(v207 + 36) = BYTE4(v117);
    *(v207 + 37) = BYTE5(v117);
    *(v207 + 40) = v203;
    *(v207 + 48) = v204;
    *(v207 + 56) = v205;
    *(v207 + 64) = v408;
    *(v207 + 72) = v407;
    *(v207 + 80) = v72;
    v397 = sub_1002EA55C;
    v47 = v410;
    v38 = v411;
    v57 = v405;
    v15 = v409;
    goto LABEL_43;
  }

  v129 = v406;
LABEL_255:
  v365 = v413;
  v364 = v414;
  sub_10002F75C(v129, v413, v414);

  sub_10002F75C(v129, v365, v364);

  v355 = &v428;
LABEL_256:
  v366 = *(v355 - 32);

  v352 = &v419;
LABEL_257:
  v367 = *(v352 - 32);

  sub_100010520(v397);
  sub_100010520(v396);
  sub_100010520(v395);
LABEL_258:
  v33 = v390;
  v30 = v388;
  v31 = v389;
LABEL_259:
  v32 = v394;
LABEL_21:
  sub_100010520(v30);
  sub_100010520(v31);
  sub_100010520(v32);
  sub_100010520(v33);
  return sub_100010520(v15);
}

uint64_t sub_1002E6FA4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 144) = -1;
  *(a2 + 136) = 0;
  *(a2 + 152) = &_swiftEmptySetSingleton;
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  sub_10028676C(a1, &v8);
  sub_1002EA068(0, 0, 5, 0, 0);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 5;
  type metadata accessor for P2PTimer();
  v5 = type metadata accessor for NANPeer.Service(0);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v6 = a2 + *(v5 + 32);
  return variable initialization expression of AWDLPeer.lastUpdated();
}

uint64_t sub_1002E7050@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NANPeer.Service(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v22 - v10);
  v12 = *(v2 + *(type metadata accessor for NANPeer(0) + 104));
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  v13 = sub_10007CCC8(a1);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1002E90F8(*(v12 + 56) + *(v6 + 72) * v13, v9, type metadata accessor for NANPeer.Service);
  sub_1002E9160(v9, v11, type metadata accessor for NANPeer.Service);
  v15 = *v11;
  v16 = v11[1];
  v17 = NANServiceName.hash.getter();
  v19 = v18;
  LOBYTE(v15) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v16, v17, v18);
  sub_1000124C8(v17, v19);
  if ((v15 & 1) == 0)
  {
    sub_1002E9098(v11, type metadata accessor for NANPeer.Service);
LABEL_6:
    v20 = 1;
    return (*(v6 + 56))(a2, v20, 1, v5);
  }

  sub_1002E9160(v11, a2, type metadata accessor for NANPeer.Service);
  v20 = 0;
  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1002E7248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = *(*(type metadata accessor for NANPeer.Service(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v21 - v8);
  result = type metadata accessor for NANPeer(0);
  v11 = *(v3 + *(result + 104));
  if (*(v11 + 16))
  {
    result = sub_10007CCC8(a3);
    if (v12)
    {
      v13 = result;
      v14 = *(v11 + 36);
      sub_1002CEDEC(v9, result, v14, 0, v11);
      v15 = *v9;
      v16 = v9[1];
      sub_10000AB0C(*v9, v16);
      sub_1002E9098(v9, type metadata accessor for NANPeer.Service);
      v17 = NANServiceName.hash.getter();
      v19 = v18;
      v20 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v16, v17, v18);
      sub_1000124C8(v15, v16);
      result = sub_1000124C8(v17, v19);
      if (v20)
      {
        sub_10046E8E4(v7, v13, v14);
        return sub_1002E9098(v7, type metadata accessor for NANPeer.Service);
      }
    }
  }

  return result;
}

void sub_1002E73E8()
{
  if (*(v0 + 16) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    v2 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  v3 = *(v0 + 40);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
}

void sub_1002E7488(int a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (v4 + 37);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 8;
      Channel.hash(into:)(a1, v7 | (v8 << 32) | (v9 << 40));
      --v5;
    }

    while (v5);
  }

  v10 = *(v2 + 32);
  v11 = *(v2 + 5);
  v12 = v2[6];
  if (*(v2 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *(v2 + 2);
    v14 = *(v2 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v14);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  v15 = 0.0;
  if (v12 != 0.0)
  {
    v15 = v12;
  }

  Hasher._combine(_:)(*&v15);
}

void sub_1002E7574()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(0x801004u >> (8 * v4));
      --v2;
    }

    while (v2);
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 5);
  v7 = v0[6];
  if (*(v0 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *(v0 + 2);
    v9 = *(v0 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  v10 = 0.0;
  if (v7 != 0.0)
  {
    v10 = v7;
  }

  Hasher._combine(_:)(*&v10);
}

void sub_1002E765C(int a1)
{
  Channel.hash(into:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40));
  v2 = *(v1 + 32);
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  if (*(v1 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = *(v1 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  v7 = 0.0;
  if (v4 != 0.0)
  {
    v7 = v4;
  }

  Hasher._combine(_:)(*&v7);
}

Swift::Int sub_1002E7724()
{
  Hasher.init(_seed:)();
  sub_1002E73E8();
  return Hasher._finalize()();
}

Swift::Int sub_1002E7768()
{
  Hasher.init(_seed:)();
  sub_1002E73E8();
  return Hasher._finalize()();
}

BOOL sub_1002E77A4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1002E9ABC(v7, v8);
}

Swift::Int sub_1002E7804(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002E7868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1002E7910(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *(a1 + 3);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  v13[2] = *(a1 + 5);
  v14[0] = v8;
  v10 = *(a2 + 5);
  v14[1] = v9;
  v14[2] = v10;
  return (a5(v5, v7) & 1) != 0 && sub_1002E9ABC(v13, v14);
}

Swift::Int sub_1002E7984()
{
  Hasher.init(_seed:)();
  sub_1002E765C(&v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002E79C4()
{
  Hasher.init(_seed:)();
  sub_1002E765C(&v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002E7A00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  sub_1002E97C0(v7, v1);
  sub_1002E9508(v7, v2);
  sub_1002E9228(v7, v3);
  sub_1002E97C0(v7, v4);
  return Hasher._finalize()();
}

void sub_1002E7A90(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  Hasher._combine(_:)(*v1);
  sub_1002E97C0(a1, v3);
  sub_1002E9508(a1, v4);
  sub_1002E9228(a1, v5);
  sub_1002E97C0(a1, v6);
}

Swift::Int sub_1002E7B04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  sub_1002E97C0(v7, v1);
  sub_1002E9508(v7, v2);
  sub_1002E9228(v7, v3);
  sub_1002E97C0(v7, v4);
  return Hasher._finalize()();
}

uint64_t sub_1002E7B90(uint64_t *a1, uint64_t *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = a1[2];
  if (sub_1002E7EC8(a1[1], a2[1], sub_1002E9DB4, sub_1002E9DEC) & 1) != 0 && (sub_1002E7D88(v7, v6, sub_100467AF8) & 1) != 0 && (sub_1002E7D88(v3, v5, sub_10046743C))
  {
    v8 = sub_1002E7EC8(v2, v4, sub_1002E9A54, sub_1002E9A8C);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1002E7CA4()
{
  result = qword_100595918;
  if (!qword_100595918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595918);
  }

  return result;
}

uint64_t sub_1002E7D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E7D88(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v6 << 6);
    v15 = *(*(v4 + 56) + 8 * v14);
    v16 = sub_10002D078(*(*(v4 + 48) + v14));
    if (v17)
    {
      v18 = *(*(a2 + 56) + 8 * v16);

      v20 = a3(v19, v15);

      if (v20)
      {
        continue;
      }
    }

    return 0;
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return 1;
    }

    v13 = *(v4 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E7EC8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), void (*a4)(__int128 *))
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v146 = (v7 + 63) >> 6;
  do
  {
LABEL_6:
    if (!v9)
    {
      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v5 >= v146)
        {
          return 1;
        }

        v12 = *(v6 + 8 * v5);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v150 = (v12 - 1) & v12;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
    }

    v10 = __clz(__rbit64(v9));
    v150 = (v9 - 1) & v9;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = a1;
    v15 = *(*(a1 + 56) + 8 * v13);
    v16 = a2;
    v17 = sub_10002D078(*(*(a1 + 48) + v13));
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = *(v19 + 16);
    if (v20 != *(v15 + 16))
    {
      return 0;
    }

    a2 = v16;
    if (v20)
    {
      v21 = v19 == v15;
    }

    else
    {
      v21 = 1;
    }

    a1 = v14;
    v9 = v150;
  }

  while (v21);
  v142 = v14;
  v143 = v16;
  v148 = a4;

  if (!*(v19 + 16))
  {
    goto LABEL_199;
  }

  v22 = 0;
  v147 = v20 - 1;
  v23 = 32;
  v145 = v15;
  while (1)
  {
    v24 = *(v19 + v23);
    v25 = *(v19 + v23 + 16);
    v26 = *(v19 + v23 + 32);
    v167 = *(v19 + v23 + 48);
    v165 = v25;
    v166 = v26;
    v164 = v24;
    if (v22 >= *(v15 + 16))
    {
      goto LABEL_200;
    }

    v28 = *(v15 + v23 + 16);
    v27 = *(v15 + v23 + 32);
    v29 = *(v15 + v23);
    v171 = *(v15 + v23 + 48);
    v169 = v28;
    v170 = v27;
    v168 = v29;
    if (v164 != v29 || (0x801004u >> (8 * BYTE4(v164))) != (0x801004u >> (8 * BYTE4(v168))))
    {
      goto LABEL_196;
    }

    if (BYTE5(v164) <= 3u)
    {
      if (BYTE5(v164) == 2)
      {
        if (BYTE5(v168) != 2)
        {
          goto LABEL_196;
        }

        goto LABEL_42;
      }

      if (BYTE5(v164) == 3)
      {
        if (BYTE5(v168) != 3)
        {
          goto LABEL_196;
        }

        goto LABEL_42;
      }
    }

    else
    {
      switch(BYTE5(v164))
      {
        case 4u:
          if (BYTE5(v168) != 4)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
        case 5u:
          if (BYTE5(v168) != 5)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
        case 6u:
          if (BYTE5(v168) != 6)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
      }
    }

    if (BYTE5(v168) - 2 < 5 || ((BYTE5(v168) ^ BYTE5(v164)) & 1) != 0)
    {
      goto LABEL_196;
    }

LABEL_42:
    v30 = *(&v164 + 1);
    v31 = v167;
    v32 = *(&v169 + 1);
    v33 = v171;
    v155 = *(&v164 + 1);
    v156 = v165;
    v151 = *(&v170 + 1);
    v152 = *(&v166 + 1);
    v153 = v170;
    v154 = v166;
    if (*(&v165 + 1) >> 60 == 15)
    {
      if (*(&v169 + 1) >> 60 != 15)
      {
        goto LABEL_193;
      }

      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      goto LABEL_185;
    }

    if (*(&v169 + 1) >> 60 == 15)
    {
LABEL_193:
      v121 = *(&v169 + 1);
      v122 = *(&v165 + 1);
      v123 = *(&v168 + 1);
      v124 = v165;
      v125 = v169;
      a3(&v164, &v161);
      a3(&v168, &v161);
      sub_10002F75C(v30, v124, v122);
      sub_10002F75C(v123, v125, v121);
LABEL_196:

      return 0;
    }

    if (WORD4(v164) != WORD4(v168))
    {
      goto LABEL_194;
    }

    v34 = *(&v165 + 1) >> 62;
    v35 = *(&v169 + 1) >> 62;
    if (*(&v165 + 1) >> 62 == 3)
    {
      v36 = 0;
      if (v165 == __PAIR128__(0xC000000000000000, 0) && *(&v169 + 1) >> 62 == 3)
      {
        v36 = 0;
        if (v169 == __PAIR128__(0xC000000000000000, 0))
        {
          v37 = *(&v168 + 1);
          a3(&v164, &v161);
          a3(&v168, &v161);
          a3(&v164, &v161);
          a3(&v168, &v161);
          v38 = v37;
          v39 = 0;
          v40 = 0xC000000000000000;
          goto LABEL_84;
        }
      }

LABEL_67:
      if (v35 <= 1)
      {
        goto LABEL_68;
      }

      goto LABEL_55;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
        v36 = BYTE14(v165);
        if (v35 <= 1)
        {
          goto LABEL_68;
        }

        goto LABEL_55;
      }

      LODWORD(v36) = DWORD1(v165) - v165;
      if (__OFSUB__(DWORD1(v165), v165))
      {
        goto LABEL_203;
      }

      v36 = v36;
      goto LABEL_67;
    }

    if (v34 == 2)
    {
      v46 = *(v165 + 16);
      v45 = *(v165 + 24);
      v43 = __OFSUB__(v45, v46);
      v36 = v45 - v46;
      if (v43)
      {
        goto LABEL_204;
      }

      goto LABEL_67;
    }

    v36 = 0;
    if (v35 <= 1)
    {
LABEL_68:
      if (v35)
      {
        LODWORD(v44) = DWORD1(v169) - v169;
        if (__OFSUB__(DWORD1(v169), v169))
        {
          goto LABEL_201;
        }

        v44 = v44;
      }

      else
      {
        v44 = BYTE14(v169);
      }

      goto LABEL_72;
    }

LABEL_55:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_194;
      }

LABEL_83:
      v54 = *(&v168 + 1);
      v55 = v169;
      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      v38 = v54;
      v40 = *(&v55 + 1);
      v39 = v55;
LABEL_84:
      sub_10002F75C(v38, v39, v40);
      v15 = v145;
      goto LABEL_185;
    }

    v42 = *(v169 + 16);
    v41 = *(v169 + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (v43)
    {
      goto LABEL_202;
    }

LABEL_72:
    if (v36 != v44)
    {
LABEL_194:
      v126 = v169;
      v127 = *(&v168 + 1);
      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      sub_10002F75C(v127, v126, v32);
LABEL_195:
      sub_10002F75C(v155, v156, *(&v156 + 1));
      v148(&v168);
      v148(&v164);
      goto LABEL_196;
    }

    if (v36 < 1)
    {
      goto LABEL_83;
    }

    v144 = v169;
    if (v34 <= 1)
    {
      if (!v34)
      {
        __s1[0] = v165;
        LODWORD(__s1[1]) = DWORD2(v165);
        WORD2(__s1[1]) = WORD6(v165);
        if (v35)
        {
          v140 = *(&v168 + 1);
          if (v35 == 1)
          {
            v133 = ((v169 >> 32) - v169);
            if (v169 >> 32 < v169)
            {
              goto LABEL_208;
            }

            v47 = v169;
            a3(&v164, &v161);
            a3(&v168, &v161);
            a3(&v164, &v161);
            a3(&v168, &v161);
            v48 = *(&v144 + 1);
            v49 = __DataStorage._bytes.getter();
            if (!v49)
            {
              goto LABEL_239;
            }

            v50 = v49;
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v47, v51))
            {
              goto LABEL_213;
            }

            v52 = (v47 - v51 + v50);
            v53 = __DataStorage._length.getter();
            if (!v52)
            {
              goto LABEL_238;
            }

LABEL_122:
            if (v53 >= v133)
            {
              v91 = v133;
            }

            else
            {
              v91 = v53;
            }

            v92 = v52;
          }

          else
          {
            v82 = *(v169 + 16);
            v138 = *(v169 + 24);
            v48 = *(&v169 + 1);
            a3(&v164, &v161);
            a3(&v168, &v161);
            a3(&v164, &v161);
            a3(&v168, &v161);
            v83 = __DataStorage._bytes.getter();
            if (v83)
            {
              v84 = v83;
              v85 = __DataStorage._offset.getter();
              if (__OFSUB__(v82, v85))
              {
                goto LABEL_218;
              }

              v86 = v82;
              v69 = (v82 - v85 + v84);
              v48 = *(&v144 + 1);
            }

            else
            {
              v86 = v82;
              v69 = 0;
            }

            v107 = &v138[-v86];
            if (__OFSUB__(v138, v86))
            {
              goto LABEL_210;
            }

            v108 = __DataStorage._length.getter();
            if (!v69)
            {
              goto LABEL_237;
            }

LABEL_143:
            if (v108 >= v107)
            {
              v91 = v107;
            }

            else
            {
              v91 = v108;
            }

            v92 = v69;
          }

          v72 = memcmp(__s1, v92, v91);
          v73 = v140;
LABEL_148:
          sub_10002F75C(v73, v144, v48);
          v15 = v145;
          if (v72)
          {
            goto LABEL_195;
          }

          goto LABEL_185;
        }

LABEL_100:
        __s2 = v169;
        v158 = DWORD2(v169);
        v159 = WORD6(v169);
        v48 = *(&v169 + 1);
        v70 = BYTE14(v169);
        v71 = *(&v168 + 1);
        a3(&v164, &v161);
        a3(&v168, &v161);
        a3(&v164, &v161);
        a3(&v168, &v161);
        v72 = memcmp(__s1, &__s2, v70);
        v73 = v71;
        goto LABEL_148;
      }

      v141 = *(&v168 + 1);
      v61 = v165;
      if (v165 > v165 >> 32)
      {
        goto LABEL_205;
      }

      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      v62 = __DataStorage._bytes.getter();
      if (v62)
      {
        v135 = v62;
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v61, v63))
        {
          goto LABEL_207;
        }

        v60 = &v135[v61 - v63];
      }

      else
      {
        v60 = 0;
      }

      __DataStorage._length.getter();
      if (v35 != 2)
      {
        v74 = *(&v144 + 1);
        v75 = v144;
        if (v35 != 1)
        {
          v161 = v144;
          v162 = DWORD2(v144);
          v163 = WORD6(v144);
          v15 = v145;
          if (!v60)
          {
            goto LABEL_232;
          }

          goto LABEL_135;
        }

        if (v144 >> 32 < v144)
        {
          goto LABEL_216;
        }

        v80 = __DataStorage._bytes.getter();
        if (v80)
        {
          v130 = v80;
          v81 = __DataStorage._offset.getter();
          if (__OFSUB__(v144, v81))
          {
            goto LABEL_223;
          }

          v79 = (v144 - v81 + v130);
        }

        else
        {
          v79 = 0;
        }

        v15 = v145;
        v119 = __DataStorage._length.getter();
        if (v119 >= (v144 >> 32) - v144)
        {
          v113 = (v144 >> 32) - v144;
        }

        else
        {
          v113 = v119;
        }

        v114 = v60;
        if (!v60)
        {
          goto LABEL_234;
        }

        if (!v79)
        {
          goto LABEL_233;
        }

LABEL_180:
        if (v114 == v79)
        {
LABEL_181:
          sub_10002F75C(v141, v144, *(&v144 + 1));
          goto LABEL_185;
        }

        v117 = v113;
        v118 = v79;
        goto LABEL_183;
      }

      v129 = *(v144 + 24);
      v132 = *(v144 + 16);
      v98 = __DataStorage._bytes.getter();
      v139 = v60;
      if (v98)
      {
        v99 = v98;
        v100 = __DataStorage._offset.getter();
        v101 = v132;
        if (__OFSUB__(v132, v100))
        {
          goto LABEL_221;
        }

        v97 = (v132 - v100 + v99);
      }

      else
      {
        v97 = 0;
        v101 = v132;
      }

      v115 = v129 - v101;
      if (__OFSUB__(v129, v101))
      {
        goto LABEL_217;
      }

      v116 = __DataStorage._length.getter();
      if (v116 >= v115)
      {
        v111 = v115;
      }

      else
      {
        v111 = v116;
      }

      if (!v139)
      {
        goto LABEL_236;
      }

      v15 = v145;
      if (!v97)
      {
        goto LABEL_235;
      }

      goto LABEL_172;
    }

    if (v34 != 2)
    {
      break;
    }

    v141 = *(&v168 + 1);
    v56 = *(v165 + 16);
    a3(&v164, &v161);
    a3(&v168, &v161);
    a3(&v164, &v161);
    a3(&v168, &v161);
    v57 = __DataStorage._bytes.getter();
    if (v57)
    {
      v134 = v56;
      v58 = v57;
      v59 = __DataStorage._offset.getter();
      if (__OFSUB__(v134, v59))
      {
        goto LABEL_206;
      }

      v60 = &v134[v58 - v59];
    }

    else
    {
      v60 = 0;
    }

    __DataStorage._length.getter();
    if (v35 != 2)
    {
      v74 = *(&v144 + 1);
      v75 = v144;
      if (v35 != 1)
      {
        v161 = v144;
        v162 = DWORD2(v144);
        v163 = WORD6(v144);
        v15 = v145;
        if (!v60)
        {
          goto LABEL_227;
        }

LABEL_135:
        v102 = memcmp(v60, &v161, BYTE6(v74));
        v103 = v74;
        v104 = v102;
        v105 = v141;
        v106 = v75;
        goto LABEL_184;
      }

      v137 = v60;
      if (v144 >> 32 < v144)
      {
        goto LABEL_211;
      }

      v76 = __DataStorage._bytes.getter();
      if (v76)
      {
        v77 = v76;
        v78 = __DataStorage._offset.getter();
        if (__OFSUB__(v144, v78))
        {
          goto LABEL_222;
        }

        v79 = (v144 - v78 + v77);
      }

      else
      {
        v79 = 0;
      }

      v15 = v145;
      v112 = __DataStorage._length.getter();
      if (v112 >= (v144 >> 32) - v144)
      {
        v113 = (v144 >> 32) - v144;
      }

      else
      {
        v113 = v112;
      }

      v114 = v137;
      if (!v137)
      {
        goto LABEL_229;
      }

      if (!v79)
      {
        goto LABEL_228;
      }

      goto LABEL_180;
    }

    v128 = *(v144 + 24);
    v131 = *(v144 + 16);
    v93 = __DataStorage._bytes.getter();
    v139 = v60;
    if (v93)
    {
      v94 = v93;
      v95 = __DataStorage._offset.getter();
      v96 = v131;
      if (__OFSUB__(v131, v95))
      {
        goto LABEL_220;
      }

      v97 = (v131 - v95 + v94);
    }

    else
    {
      v97 = 0;
      v96 = v131;
    }

    v109 = v128 - v96;
    if (__OFSUB__(v128, v96))
    {
      goto LABEL_215;
    }

    v110 = __DataStorage._length.getter();
    if (v110 >= v109)
    {
      v111 = v109;
    }

    else
    {
      v111 = v110;
    }

    if (!v139)
    {
      goto LABEL_231;
    }

    v15 = v145;
    if (!v97)
    {
      goto LABEL_230;
    }

LABEL_172:
    v114 = v139;
    if (v139 == v97)
    {
      goto LABEL_181;
    }

    v117 = v111;
    v118 = v97;
LABEL_183:
    v104 = memcmp(v114, v118, v117);
    v105 = v141;
    v103 = *(&v144 + 1);
    v106 = v144;
LABEL_184:
    sub_10002F75C(v105, v106, v103);
    if (v104)
    {
      goto LABEL_195;
    }

LABEL_185:
    sub_10002F75C(v155, v156, *(&v156 + 1));
    v148(&v168);
    v148(&v164);
    if (v154 != v153 || v152 != v151 || v31 != v33)
    {
      goto LABEL_196;
    }

    if (v147 == v22)
    {

      a4 = v148;
      a1 = v142;
      a2 = v143;
      v9 = v150;
      goto LABEL_6;
    }

    v23 += 56;
    if (++v22 >= *(v19 + 16))
    {
      goto LABEL_199;
    }
  }

  memset(__s1, 0, 14);
  if (!v35)
  {
    goto LABEL_100;
  }

  v140 = *(&v168 + 1);
  if (v35 == 2)
  {
    v64 = *(v169 + 16);
    v136 = *(v169 + 24);
    v48 = *(&v169 + 1);
    a3(&v164, &v161);
    a3(&v168, &v161);
    a3(&v164, &v161);
    a3(&v168, &v161);
    v65 = __DataStorage._bytes.getter();
    if (v65)
    {
      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v67))
      {
        goto LABEL_219;
      }

      v68 = v64;
      v69 = (v64 - v67 + v66);
      v48 = *(&v144 + 1);
    }

    else
    {
      v68 = v64;
      v69 = 0;
    }

    v107 = &v136[-v68];
    if (__OFSUB__(v136, v68))
    {
      goto LABEL_212;
    }

    v108 = __DataStorage._length.getter();
    if (!v69)
    {
      goto LABEL_226;
    }

    goto LABEL_143;
  }

  v133 = ((v169 >> 32) - v169);
  if (v169 >> 32 < v169)
  {
    goto LABEL_209;
  }

  v87 = v169;
  a3(&v164, &v161);
  a3(&v168, &v161);
  a3(&v164, &v161);
  a3(&v168, &v161);
  v48 = *(&v144 + 1);
  v88 = __DataStorage._bytes.getter();
  if (v88)
  {
    v89 = v88;
    v90 = __DataStorage._offset.getter();
    if (__OFSUB__(v87, v90))
    {
      goto LABEL_214;
    }

    v52 = (v87 - v90 + v89);
    v53 = __DataStorage._length.getter();
    if (!v52)
    {
      goto LABEL_225;
    }

    goto LABEL_122;
  }

  __DataStorage._length.getter();
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002E8EFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1003E09BC(*(*(v3 + 48) + 8 * v12) | (*(*(v3 + 48) + 8 * v12 + 4) << 32) | (*(*(v3 + 48) + 8 * v12 + 5) << 40));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E9018(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002E9098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E90F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E9160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E91C8(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_10046BBB4();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1003112D4(v4, v5);
  return 1;
}

void sub_1002E9228(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v28 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v30 = v2;
  v31 = a1;
  v29 = v7;
  while (v6)
  {
    v34 = v8;
LABEL_12:
    v13 = __clz(__rbit64(v6)) | (v9 << 6);
    v14 = *(*(v2 + 56) + 8 * v13);
    v40 = a1[2];
    v41 = a1[3];
    v42 = *(a1 + 8);
    v38 = *a1;
    v39 = a1[1];
    Hasher._combine(_:)(*(*(v2 + 48) + v13));
    v15 = *(v14 + 16);
    Hasher._combine(_:)(v15);
    v36 = v15;
    v10 = v2;
    v11 = v34;
    if (v15)
    {
      v32 = v6;
      v33 = v9;
      v35 = v14 + 32;

      v16 = 0;
      do
      {
        v18 = (v35 + 56 * v16);
        v20 = *v18;
        v19 = *(v18 + 1);
        v21 = *(v18 + 2);
        v22 = *(v18 + 3);
        v37 = *(v18 + 32);
        v23 = *(v18 + 5);
        v24 = v18[6];
        Hasher._combine(_:)(*(*v18 + 16));
        v25 = *(*&v20 + 16);
        if (v25)
        {
          v26 = (*&v20 + 32);
          do
          {
            v27 = *v26++;
            Hasher._combine(_:)(0x801004u >> (8 * v27));
            --v25;
          }

          while (v25);
        }

        if (v22 >> 60 == 15)
        {
          Hasher._combine(_:)(0);

          sub_10005D4F4(v19, v21, v22);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v19);

          sub_10005D4F4(v19, v21, v22);
          sub_10005D4F4(v19, v21, v22);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v37);
        Hasher._combine(_:)(v23);
        if (v24 == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = v24;
        }

        ++v16;
        Hasher._combine(_:)(*&v17);
        sub_10002F75C(v19, v21, v22);

        sub_10002F75C(v19, v21, v22);
      }

      while (v16 != v36);

      v10 = v30;
      a1 = v31;
      v9 = v33;
      v11 = v34;
      v7 = v29;
      v6 = v32;
    }

    v6 &= v6 - 1;
    v8 = Hasher._finalize()() ^ v11;
    v2 = v10;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v28 + 8 * v12);
    ++v9;
    if (v6)
    {
      v34 = v8;
      v9 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1002E9508(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v35 = v2;
  v36 = a1;
  v33 = v8;
  v34 = v4;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    v14 = *(*(v2 + 48) + v12);
    v15 = *(a1 + 48);
    v41[2] = *(a1 + 32);
    v41[3] = v15;
    v42 = *(a1 + 64);
    v16 = *(a1 + 16);
    v41[0] = *a1;
    v41[1] = v16;
    Hasher._combine(_:)(v14);
    v17 = *(v13 + 16);
    Hasher._combine(_:)(v17);
    v40 = v17;
    if (v17)
    {
      v37 = v7;
      v38 = v9;
      v39 = v13 + 32;

      v18 = 0;
      do
      {
        v20 = (v39 + 56 * v18);
        v22 = *v20;
        v21 = *(v20 + 1);
        v23 = *(v20 + 2);
        v24 = *(v20 + 3);
        v25 = *(v20 + 32);
        v26 = *(v20 + 5);
        v27 = v20[6];
        Hasher._combine(_:)(*(*v20 + 16));
        v28 = *(*&v22 + 16);
        if (v28)
        {
          v29 = (*&v22 + 37);
          do
          {
            v30 = *(v29 - 5);
            v31 = *(v29 - 1);
            v32 = *v29;
            v29 += 8;
            Channel.hash(into:)(v41, v30 | (v31 << 32) | (v32 << 40));
            --v28;
          }

          while (v28);
        }

        if (v24 >> 60 == 15)
        {
          Hasher._combine(_:)(0);

          sub_10005D4F4(v21, v23, v24);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v21);

          sub_10005D4F4(v21, v23, v24);
          sub_10005D4F4(v21, v23, v24);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v25);
        Hasher._combine(_:)(v26);
        if (v27 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v27;
        }

        ++v18;
        Hasher._combine(_:)(*&v19);
        sub_10002F75C(v21, v23, v24);

        sub_10002F75C(v21, v23, v24);
      }

      while (v18 != v40);

      v2 = v35;
      a1 = v36;
      v8 = v33;
      v4 = v34;
      v7 = v37;
      v9 = v38;
    }

    v7 &= v7 - 1;
    v9 ^= Hasher._finalize()();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1002E97C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v33 = v2;
  v34 = a1;
  v31 = v8;
  v32 = v4;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    v14 = *(*(v2 + 48) + v12);
    v15 = *(a1 + 48);
    v37[2] = *(a1 + 32);
    v37[3] = v15;
    v38 = *(a1 + 64);
    v16 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v16;
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(*(v13 + 16));
    v17 = *(v13 + 16);
    if (v17)
    {
      v35 = v7;
      v36 = v9;

      v18 = 0;
      do
      {
        v20 = v13;
        v21 = v13 + v18;
        v22 = *(v13 + v18 + 32);
        v23 = *(v13 + v18 + 36);
        v24 = *(v13 + v18 + 37);
        v25 = *(v13 + v18 + 40);
        v26 = *(v13 + v18 + 48);
        v27 = *(v13 + v18 + 56);
        v28 = *(v13 + v18 + 64);
        v29 = *(v21 + 72);
        v30 = *(v21 + 80);
        Channel.hash(into:)(v37, v22 | (v23 << 32) | (v24 << 40));
        if (v27 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v25);
          sub_10005D4F4(v25, v26, v27);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v28);
        Hasher._combine(_:)(v29);
        if (v30 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v30;
        }

        Hasher._combine(_:)(*&v19);
        sub_10002F75C(v25, v26, v27);
        v18 += 56;
        --v17;
        v13 = v20;
      }

      while (v17);

      v2 = v33;
      a1 = v34;
      v8 = v31;
      v4 = v32;
      v7 = v35;
      v9 = v36;
    }

    v7 &= v7 - 1;
    v9 ^= Hasher._finalize()();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1002E99FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E9A14(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1002E9A14(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return sub_10000AB0C(a2, a3);
  }

  return result;
}

uint64_t sub_1002E9A28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E9A40(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1002E9A40(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

BOOL sub_1002E9ABC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      if (*a1 == v7)
      {
        v9 = a1;
        sub_1002E9D7C(a1, v15);
        sub_1002E9D7C(a2, v15);
        v14 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5, v6, v8);
        sub_10002F75C(v7, v6, v8);
        if (v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002E9D7C(a1, v15);
        sub_1002E9D7C(a2, v15);
        sub_10002F75C(v7, v6, v8);
      }

      v11 = v4;
      v12 = v3;
      v13 = v5;
LABEL_14:
      sub_10002F75C(v11, v12, v13);
      return 0;
    }

LABEL_8:
    sub_1002E9D7C(a1, v15);
    sub_1002E9D7C(a2, v15);
    sub_10002F75C(v4, v3, v5);
    v11 = v7;
    v12 = v6;
    v13 = v8;
    goto LABEL_14;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v9 = a1;
  sub_1002E9D7C(a1, v15);
  sub_1002E9D7C(a2, v15);
LABEL_4:
  sub_10002F75C(v4, v3, v5);
  if (*(v9 + 24) == *(a2 + 24) && v9[4] == *(a2 + 32))
  {
    return *(v9 + 5) == *(a2 + 40);
  }

  return 0;
}

BOOL sub_1002E9C50(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((0x801004u >> (8 * *(a1 + 4))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 4))) & 0xFFC))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4u:
        if (v5 == 4)
        {
          goto LABEL_21;
        }

        return 0;
      case 5u:
        if (v5 == 5)
        {
          goto LABEL_21;
        }

        return 0;
      case 6u:
        if (v5 == 6)
        {
          goto LABEL_21;
        }

        return 0;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_19:
    if ((v5 - 2) >= 5 && ((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_21:
  v11 = v2;
  v12 = v3;
  v7 = *(a1 + 24);
  v10[0] = *(a1 + 8);
  v10[1] = v7;
  v10[2] = *(a1 + 40);
  v8 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v8;
  v9[2] = *(a2 + 40);
  return sub_1002E9ABC(v10, v9);
}

uint64_t sub_1002E9E1C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((0x801004u >> (8 * *(a1 + 4))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 4))) & 0xFFC))
  {
    return 0;
  }

  v3 = *(a1 + 5);
  v4 = *(a2 + 5);
  if (v3 <= 3)
  {
    if (v3 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if (v3 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v4 - 2) < 5 || ((v4 ^ v3))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 != 6)
  {
    goto LABEL_19;
  }

  if (v4 != 6)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(type metadata accessor for NANPeer.LastBeaconInformation(0) + 32);

  return static DispatchTime.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t sub_1002E9F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E9FD4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1000124C8(result, a2);

    return sub_1000124C8(a3, a4);
  }

  return result;
}

uint64_t sub_1002EA024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((result & 0xFF0000) != 0xE0000)
  {
    return sub_1000449CC(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 != 5)
  {
    return sub_100184290(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 != 5)
  {
    return sub_1001842D0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA088()
{
  sub_1000124C8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  if (*(v0 + 66) != 255)
  {
    v2 = *(v0 + 64) | (*(v0 + 66) << 16);
    sub_1001842C4(*(v0 + 48), *(v0 + 56), v2, BYTE2(v2) & 1);
  }

  if (*(v0 + 72) != 4)
  {
    sub_1000124C8(*(v0 + 80), *(v0 + 88));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002EA11C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002EA180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002EA1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1002EA244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002EA28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002EA2E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002EA32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1002EA390()
{
  result = qword_100595938;
  if (!qword_100595938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595938);
  }

  return result;
}

unint64_t sub_1002EA3E8()
{
  result = qword_100595940;
  if (!qword_100595940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595940);
  }

  return result;
}

unint64_t sub_1002EA440()
{
  result = qword_100595948;
  if (!qword_100595948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595948);
  }

  return result;
}

unint64_t sub_1002EA498()
{
  result = qword_100595950;
  if (!qword_100595950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595950);
  }

  return result;
}

unint64_t sub_1002EA4F0()
{
  result = qword_100595958;
  if (!qword_100595958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595958);
  }

  return result;
}

uint64_t sub_1002EA56C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002EA5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002EA604(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a3;
  v4 = a2;
  if (a3)
  {
    v5 = *(a1 + 16);
    v6 = (v5 * 5) >> 64;
    v7 = 5 * v5;
    if (v6 != v7 >> 63)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = __OFADD__(v7, 7);
    v9 = v7 + 7;
    if (v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v9 < 0x208)
    {
      v10 = v9 >> 3;
      if (v10 <= 6)
      {
        v4 = 6;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = 64;
    }
  }

  v34 = HIBYTE(a3);
  if (HIBYTE(a3) != 4)
  {
LABEL_14:
    v14 = swift_slowAlloc();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v15 = v14;
      if (v4)
      {
        bzero(v14, v4);
      }

      v31 = v4;
      v16 = 1 << *(a1 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a1 + 56);
      v19 = (v16 + 63) >> 6;
      v32 = v3;

      v20 = 0;
      while (v18)
      {
        v21 = v20;
LABEL_25:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (*(a1 + 48) + 6 * (v22 | (v21 << 6)));
        v24 = sub_1002EA8A8(*v23 | (*(v23 + 1) << 16), v34, a1, a2, v32 & 1);
        v26 = v25;
        v27 = HIDWORD(v24);
        v28 = HIDWORD(v25);
        v36[0] = v24;
        v29 = sub_1002EADC0();
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v27;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v26;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v28;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          sub_1002AAFAC(v15, v31);

          return v34;
        }

        v18 = *(a1 + 56 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v11 = static NANBloomFilter.Index.allCases.getter();
  v12 = v11[2];
  if (v12)
  {
    v13 = sub_1002EAD34(v12);
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v13 >= v11[2])
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v34 = *(v11 + v13 + 32);

    goto LABEL_14;
  }

LABEL_34:

  __break(1u);
  return result;
}

uint64_t sub_1002EA8A8(uint64_t result, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = result;
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a3 + 16);
  v8 = (v7 * 5) >> 64;
  v9 = 5 * v7;
  if (v8 != v9 >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = __OFADD__(v9, 7);
  v11 = v9 + 7;
  if (!v10)
  {
    if (v11 > 0x207)
    {
      v12 = 512;
      goto LABEL_11;
    }

    v13 = v11 >> 3;
    if (v13 <= 6)
    {
      a4 = 6;
    }

    else
    {
      a4 = v13;
    }

LABEL_9:
    if ((a4 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      goto LABEL_16;
    }

    v12 = 8 * a4;
LABEL_11:
    v14 = WiFiAddress.data.getter(result & 0xFFFFFFFFFFFFLL);
    v16 = v15;
    v17 = sub_1002EAE14(4 * a2, v14, v15);
    result = sub_1000124C8(v14, v16);
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v12))
      {
        if (v12)
        {
          v18 = v17 % v12;
          v19 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v21 = v20;
          v22 = sub_1002EAE14((4 * a2) | 1u, v19, v20);
          sub_1000124C8(v19, v21);
          v23 = v22 % v12;
          v24 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v26 = v25;
          sub_1002EAE14((4 * a2) | 2, v24, v25);
          sub_1000124C8(v24, v26);
          v27 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v29 = v28;
          sub_1002EAE14((4 * a2) | 3, v27, v28);
          sub_1000124C8(v27, v29);
          return v18 | (v23 << 32);
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002EAA6C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = (*(a1 + 48) + 6 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v11 = *(v10 + 1);
    v12 = *v10;
    v5 &= v5 - 1;

    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = WiFiAddress.description.getter(v12 | (v11 << 16));
    String.append(_:)(v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);

      return 0xD000000000000016;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1002EABE0@<X0>(Swift::Int result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = result;
  *a4 = xmmword_100480A90;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_13;
  }

  v8 = v8;
LABEL_10:
  v12 = *(result + 16);
  result = v8 + v12;
  if (!__OFADD__(v8, v12))
  {
    Data._Representation.reserveCapacity(_:)(result);
    v18 = sub_10005DC58(&qword_10058D358, &unk_100486960);
    v19 = sub_1002EB000();
    v17[0] = v6;
    v13 = *(*sub_100029B34(v17, v18) + 16);

    Data._Representation.append(contentsOf:)();
    sub_100002A00(v17);
    v18 = &type metadata for Data;
    v19 = &protocol witness table for Data;
    v17[0] = a2;
    v17[1] = a3;
    v14 = sub_100029B34(v17, &type metadata for Data);
    v15 = *v14;
    v16 = v14[1];
    sub_10000AB0C(a2, a3);
    sub_100178A18(v15, v16);
    return sub_100002A00(v17);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1002EAD34(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002EADC0()
{
  result = qword_100595960;
  if (!qword_100595960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595960);
  }

  return result;
}

uint64_t sub_1002EAE14(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 32) = a1;
  sub_1002EABE0(v11, a2, a3, &v17);

  v12 = v17;
  if (*(&v17 + 1) >> 62 == 2)
  {
    v13 = *(v17 + 16);
  }

  sub_10000AB0C(v17, *(&v17 + 1));
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v17))
  {
    v14 = 0xFFFFLL;
  }

  else
  {
    v15 = -1;
    do
    {
      v15 = *(&off_100572AE8 + (v17 ^ v15) + 8) ^ (v15 >> 8);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (BYTE1(v17) != 1);
    v14 = v15;
  }

  sub_1000124C8(v12, *(&v12 + 1));
  (*(v7 + 8))(v10, v6);
  return v14;
}

unint64_t sub_1002EB000()
{
  result = qword_10059B0E0;
  if (!qword_10059B0E0)
  {
    sub_10005DD04(&qword_10058D358, &unk_100486960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059B0E0);
  }

  return result;
}

void sub_1002EB064()
{
  v0 = type metadata accessor for NANPublish.Configuration();
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      v5 = type metadata accessor for Logger();
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1002FD83C();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1002EB234()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = qword_100595988;
  swift_beginAccess();
  v8 = *(v0 + v3);
  v6 = *((v2 & v1) + 0x50);
  v7 = *((v2 & v1) + 0x58);
  _s8InstanceC21NANPublishClientProxyVMa();
  type metadata accessor for Array();

  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  swift_getWitnessTable();
  v4 = Sequence.compactMap<A>(_:)();

  return v4;
}

uint64_t sub_1002EB358()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(v2 + 0x50);
  v4 = *(v2 + 88);
  v5 = _s8InstanceC21NANPublishClientProxyVMa();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v26 - v14;
  v16 = qword_100595988;
  swift_beginAccess();
  v32 = *(v1 + v16);
  v30 = v3;
  v31 = v4;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.first(where:)();

  v17 = *(v12 + 48);
  if (v17(v11, 1, v5) == 1)
  {
    v18 = *(v29 + 8);
    v19 = v11;
    v20 = v28;
    v29 += 8;
    v18(v19, v28);
    v32 = *(v1 + v16);
    swift_getWitnessTable();
    v21 = v27;
    Collection.first.getter();
    if (v17(v21, 1, v5) == 1)
    {
      v18(v21, v20);
      return 0;
    }

    else
    {
      v22 = *(v21 + 1);
      v24 = *(v12 + 8);
      swift_unknownObjectRetain();
      v24(v21, v5);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
    v22 = *(v15 + 1);
    v23 = *(v12 + 8);
    swift_unknownObjectRetain();
    v23(v15, v5);
  }

  return v22;
}

uint64_t sub_1002EB6A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000796CLL;
  v3 = 0x6E4F646572696170;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6972696150796E61;
    }

    else
    {
      v5 = 7105633;
    }

    if (v4 == 1)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    v7 = a2;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v5 = 0x6E4F646572696170;
  v6 = 0xEA0000000000796CLL;
  v7 = a2;
  if (a2)
  {
LABEL_9:
    if (v7 == 1)
    {
      v3 = 0x6972696150796E61;
    }

    else
    {
      v3 = 7105633;
    }

    if (v7 == 1)
    {
      v2 = 0xEA0000000000676ELL;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

LABEL_15:
  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1002EB7AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x656D69746C616572;
    }

    else
    {
      v3 = 0x6E6574614C776F6CLL;
    }

    if (v2 == 1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEA00000000007963;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 0x656D69746C616572;
      }

      else
      {
        v6 = 0x6E6574614C776F6CLL;
      }

      if (v5 == 1)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xEA00000000007963;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6576697470616461;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE800000000000000;
  if (v3 != 0x6576697470616461)
  {
LABEL_21:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

uint64_t sub_1002EB8C0()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 80)) = 0;
  return result;
}

BOOL sub_1002EB914()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = qword_100595988;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *((v2 & v1) + 0x50);
  v6 = *((v2 & v1) + 0x58);
  _s8InstanceC21NANPublishClientProxyVMa();

  v7 = Array.count.getter();

  return v7 > 1;
}

uint64_t sub_1002EB9C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_10059B8C0;
  swift_beginAccess();
  v8 = *(v1 + v4);
  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  type metadata accessor for Dictionary();

  Dictionary.removeValue(forKey:)();

  return sub_1002EE678(v8);
}

uint64_t sub_1002EBAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B890;
  swift_beginAccess();
  return sub_1003013DC(v1 + v3, a1, type metadata accessor for NANPublish.Configuration);
}

uint64_t sub_1002EBB40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002EBB84();
  v3 = result;
  if (result)
  {
    result = swift_getObjectType();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_1002EBB84()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = _s8InstanceC21NANPublishClientProxyVMa();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = qword_100595988;
  swift_beginAccess();
  v14 = *(v0 + v9);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v10 = *(v3 - 8);
  if ((*(v10 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  else
  {
    v11 = *(v8 + 1);
    v12 = *(v10 + 8);
    swift_unknownObjectRetain();
    v12(v8, v3);
  }

  return v11;
}

uint64_t sub_1002EBD70(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for NANPublish.Configuration();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x50);
  v10 = *((v4 & v3) + 0x58);
  v11 = _s8InstanceC21NANPublishClientProxyVMa();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v30 - v16;
  sub_100012400(a1, v34, &qword_10058BA80, &qword_1004818C0);
  if (v35)
  {
    sub_10005DC58(&unk_100595B60, qword_1004AFC70);
    if (swift_dynamicCast())
    {
      v18 = v33;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_100016290(v34, &qword_10058BA80, &qword_1004818C0);
    v18 = 0;
  }

  v19 = v1 + qword_10059B890;
  swift_beginAccess();
  v20 = *(v19 + *(v5 + 84) + 24);
  v31 = v15;
  v32 = a1;
  v30 = v8;
  if (v20 == 1)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = 0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v23 = NANConstants.WiFiAwareExclusivePublishPrivileges.unsafeMutableAddressor();
  v24 = *v23;
  if (*(v1 + qword_10059B8C8 + 8))
  {
    v25 = *(v1 + qword_10059B8C8);
    v26 = *(v1 + qword_10059B8C8 + 8);
  }

  else
  {
    v26 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E75;
  }

  v27 = *v23;

  v22 = sub_1004478AC(v25, v26, v24);

LABEL_13:
  v28 = v30;
  sub_1003013DC(v19, v30, type metadata accessor for NANPublish.Configuration);
  *v17 = v22 & 1;
  *(v17 + 1) = v18;
  sub_10030129C(v28, &v17[*(v11 + 40)], type metadata accessor for NANPublish.Configuration);
  (*(v12 + 16))(v31, v17, v11);
  swift_beginAccess();
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Array.append(_:)();
  swift_endAccess();
  sub_1002EC180();
  swift_unknownObjectRelease();
  sub_100016290(v32, &qword_10058BA80, &qword_1004818C0);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1002EC180()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *(*(sub_10005DC58(&unk_100595BF0, &unk_1004AFCF8) - 8) + 64);
  __chkstk_darwin();
  v162 = &v134 - v5;
  v151 = type metadata accessor for DispatchTimeInterval();
  v150 = *(v151 - 8);
  v6 = *(v150 + 64);
  __chkstk_darwin();
  v155 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NANPublish.Configuration();
  v161 = *(v8 - 8);
  v9 = *(v161 + 64);
  __chkstk_darwin();
  v152 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v134 - v11;
  __chkstk_darwin();
  v149 = &v134 - v12;
  __chkstk_darwin();
  v148 = &v134 - v13;
  __chkstk_darwin();
  v157 = &v134 - v14;
  __chkstk_darwin();
  v153 = (&v134 - v15);
  __chkstk_darwin();
  v158 = &v134 - v16;
  v17 = *((v3 & v2) + 0x58);
  v160 = *((v3 & v2) + 0x50);
  v159 = v17;
  v18 = _s8InstanceC21NANPublishClientProxyVMa();
  v19 = type metadata accessor for Optional();
  v163 = *(v19 - 8);
  v164 = v19;
  v20 = v163[8];
  __chkstk_darwin();
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v134 - v23;
  __chkstk_darwin();
  v25 = &v134 - v24;
  __chkstk_darwin();
  v27 = &v134 - v26;
  v28 = qword_100595988;
  swift_beginAccess();
  *&v166 = *&v1[v28];
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v145 = v25;
    v165 = *&v1[v28];
    Collection.first.getter();
    v30 = *(v18 - 8);
    v146 = *(v30 + 48);
    if ((v146)(v27, 1, v18) == 1)
    {
      return (v163[1])(v27, v164);
    }

    v144 = v30 + 48;
    v147 = v8;
    v31 = *(v27 + 1);
    v32 = *(v30 + 8);
    swift_unknownObjectRetain();
    v142 = v30 + 8;
    result = v32(v27, v18);
    if (v31)
    {
      v141 = v32;
      swift_unknownObjectRelease();
      v33 = qword_10059B8A0;
      v34 = v1;
      v140 = v33;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v147;
      v143 = v34;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        v40 = *&v1[v28];

        v139 = Array.count.getter();

        *(v39 + 4) = v139;
        v41 = v143;

        _os_log_impl(&_mh_execute_header, v35, v36, "Publisher configuration changed(%ld)", v39, 0xCu);

        v42 = v41;
        v38 = v147;
      }

      else
      {

        v35 = v34;
        v42 = v34;
      }

      v43 = *&v1[v28];

      v44 = Array.count.getter();

      if (v44 < 2)
      {
        *&v166 = *&v1[v28];
        Collection.first.getter();
        if ((v146)(v22, 1, v18) == 1)
        {
          (v163[1])(v22, v164);
          v50 = &unk_10059B000;
          v51 = qword_10059B890;
          swift_beginAccess();
          v52 = v156;
          sub_1003013DC(v42 + v51, v156, type metadata accessor for NANPublish.Configuration);
        }

        else
        {
          v57 = v152;
          sub_1003013DC(&v22[*(v18 + 40)], v152, type metadata accessor for NANPublish.Configuration);
          (v141)(v22, v18);
          v52 = v156;
          sub_10030129C(v57, v156, type metadata accessor for NANPublish.Configuration);
          v50 = &unk_10059B000;
        }

        v58 = v42 + qword_10059B890;
        swift_beginAccess();
        sub_10030018C(v52, v58);
        swift_endAccess();
        if (*(v58 + v38[21] + 24))
        {
          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v59 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }

        v60 = v42 + qword_10059B8B8;
        v61 = *(&v42->isa + qword_10059B8B8);
        v62 = *(&v42[1].isa + qword_10059B8B8);
        v63 = *(&v42[2].isa + qword_10059B8B8);
        v64 = *(&v42[3].isa + qword_10059B8B8);
        v65 = *(&v42[4].isa + qword_10059B8B8);
        v66 = *(&v42[5].isa + qword_10059B8B8);
        v67 = *(&v42[6].isa + qword_10059B8B8);
        *v60 = 0u;
        *(v60 + 1) = 0u;
        *(v60 + 2) = 0u;
        *(v60 + 6) = 0;
        sub_100083690(v61, v62);
LABEL_42:
        v115 = v42 + v50[274];
        swift_beginAccess();
        v116 = *(v115 + 80);
        v117 = *(&v42->isa + qword_100595970);
        v118 = *(v115 + 78);
        swift_unownedRetainStrong();
        v119 = WiFiInterface.macAddress.getter();

        if (static WiFiAddress.!= infix(_:_:)(v118 | (v116 << 16), v119 & 0xFFFFFFFFFFFFLL) || (v120 = *(v115 + 86), v121 = *(v115 + 84), v122 = *sub_1002EEA34(), v123 = (*(v122 + 256))(), , static WiFiAddress.!= infix(_:_:)(v121 | (v120 << 16), v123 & 0xFFFFFFFFFFFFLL)))
        {
          swift_unownedRetainStrong();
          v124 = WiFiInterface.macAddress.getter();

          *(v115 + 78) = v124;
          *(v115 + 80) = BYTE2(v124);
          *(v115 + 81) = BYTE3(v124);
          *(v115 + 82) = BYTE4(v124);
          *(v115 + 83) = BYTE5(v124);
          v125 = *sub_1002EEA34();
          v126 = (*(v125 + 256))();

          *(v115 + 84) = v126;
          *(v115 + 86) = BYTE2(v126);
          *(v115 + 87) = BYTE3(v126);
          *(v115 + 88) = BYTE4(v126);
          *(v115 + 89) = BYTE5(v126);
        }

        v127 = static Duration.zero.getter();
        v129 = v128;
        v130 = (v42 + qword_1005959C0);
        swift_beginAccess();
        *v130 = v127;
        v130[1] = v129;
        v131 = v147;
        sub_1002EEB78(*(v115 + v147[30]));
        v132 = v162;
        sub_1003013DC(v115, v162, type metadata accessor for NANPublish.Configuration);
        (*(v161 + 56))(v132, 0, 1, v131);
        *(swift_allocObject() + 16) = v42;
        v133 = v42;
        sub_1002EF130(v132, sub_1003001F0);

        return sub_100016290(v132, &unk_100595BF0, &unk_1004AFCF8);
      }

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Multple xpcClientProxy found", v47, 2u);
      }

      *&v166 = *&v1[v28];
      __chkstk_darwin();

      WitnessTable = swift_getWitnessTable();
      v49 = v145;
      v156 = WitnessTable;
      Sequence.first(where:)();

      if ((v146)(v49, 1, v18) == 1)
      {
        (v163[1])(v49, v164);
        v50 = &unk_10059B000;
        v42 = v143;
        goto LABEL_42;
      }

      v53 = v153;
      sub_1003013DC(&v49[*(v18 + 40)], v153, type metadata accessor for NANPublish.Configuration);
      (v141)(v49, v18);
      v54 = v158;
      sub_10030129C(v53, v158, type metadata accessor for NANPublish.Configuration);
      v153 = &v134;
      *&v166 = *&v1[v28];
      __chkstk_darwin();

      v55 = v154;
      Sequence.first(where:)();

      if ((v146)(v55, 1, v18) == 1)
      {
        (v163[1])(v55, v164);
        v56 = v157;
        sub_1003013DC(v54, v157, type metadata accessor for NANPublish.Configuration);
      }

      else
      {
        v68 = v148;
        sub_1003013DC(&v55[*(v18 + 40)], v148, type metadata accessor for NANPublish.Configuration);
        (v141)(v55, v18);
        v56 = v157;
        sub_10030129C(v68, v157, type metadata accessor for NANPublish.Configuration);
      }

      v69 = v147;
      v42 = v143;
      v70 = v147[28];
      if (*&v54[v70])
      {
        v71 = *&v54[v70];
      }

      else
      {
        v71 = _swiftEmptyArrayStorage;
      }

      if (*(v56 + v70))
      {
        v72 = *(v56 + v70);
      }

      else
      {
        v72 = _swiftEmptyArrayStorage;
      }

      v73 = sub_1004749DC(v71);

      v74 = sub_1004749DC(v72);

      v164 = sub_1002EE6DC(v74, v73);
      v75 = v69[21];
      v76 = &v54[v75];
      v77 = *&v54[v75 + 16];
      v78 = *(v56 + v75 + 16);

      v79 = sub_100474B78(v77);

      v80 = sub_100474B78(v78);

      v81 = sub_1002EE8F8(v80, v79);
      LODWORD(v159) = v76[2];
      v82 = *(v81 + 16);
      v160 = *(v56 + 24);
      if (v82)
      {
        v163 = sub_1003675EC(v82, 0);
        v83 = sub_1003158A0(&v166, (v163 + 4), v82, v81);

        result = sub_1000E290C();
        if (v83 != v82)
        {
          __break(1u);
          goto LABEL_48;
        }

        v84 = v147;
        v56 = v157;
        v54 = v158;
      }

      else
      {

        v163 = _swiftEmptyArrayStorage;
        v84 = v147;
      }

      v85 = v164;
      v86 = v76[24];
      v87 = *v54;
      v88 = *(v54 + 2);
      v164 = *(v54 + 1);
      v89 = *(v54 + 3);
      v152 = v54[78];
      v148 = v54[79];
      v141 = *(v54 + 20);
      v146 = v54[84];
      v145 = v54[85];
      v142 = *(v54 + 86);
      (*(v150 + 16))(v155, &v54[v84[18]], v151);
      LODWORD(v156) = v54[77];
      LODWORD(v154) = v54[v84[20]];
      LODWORD(v153) = v54[v84[24]];
      sub_100012400(&v54[v84[22]], &v166, &unk_1005974B0, &qword_1004AFCF0);
      v90 = v84[26];
      LODWORD(v151) = *&v54[v84[25]];
      LODWORD(v150) = v54[v90];
      LODWORD(v144) = v54[72];
      v91 = (v56 + v84[27]);
      v140 = *(v91 + 2);
      v139 = *v91;
      v92 = *(v91 + 6);
      v93 = *(v85 + 16);
      if (!v93)
      {

        v100 = _swiftEmptyArrayStorage;
        v98 = v158;
        v99 = v88;
        goto LABEL_38;
      }

      v136 = *(v91 + 6);
      v137 = v86;
      v138 = v87;
      v94 = sub_1003674F0(v93, 0);
      v95 = *(type metadata accessor for UUID() - 8);
      v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v135 = v94;
      v97 = sub_1003155FC(&v165, &v94[v96], v93, v85);

      result = sub_1000E290C();
      if (v97 == v93)
      {
        v84 = v147;
        v42 = v143;
        v98 = v158;
        v87 = v138;
        v99 = v88;
        LOBYTE(v86) = v137;
        v92 = v136;
        v100 = v135;
LABEL_38:
        v101 = *(v98 + v84[29]);
        v102 = *(v98 + v84[30]);
        v103 = *(v98 + v84[31]);
        v104 = *(v98 + v84[32]) | (*(v98 + v84[32] + 4) << 32);
        v105 = *(v98 + v84[34]);
        v106 = v157;
        v107 = (v157 + v84[35]);
        v108 = *v107 | (*(v107 + 2) << 32);
        v109 = *(v107 + 6);
        LODWORD(v107) = *(v107 + 7);
        v110 = *(v98 + v84[33]) | (*(v98 + v84[33] + 2) << 16);
        LOBYTE(v165) = v109;
        v111 = v107 == 0;
        v112 = 0x100000000000000;
        if (v111)
        {
          v112 = 0;
        }

        v113 = v149;
        NANPublish.Configuration.init(instanceID:serviceName:serviceSpecificInfo:managementAddress:responderAddress:datapathConfiguration:announcementPeriod:furtherServiceDiscoveryFunction:enableFastDiscovery:authenticationType:internetSharingConfiguration:pairingBootstrappingMethod:pairingCachingSupported:publisherType:multicastAddress:allowedPairedDevicesUUIDs:multicastServiceType:timeoutAfterSeconds:pairingSetupMode:channelInfo:countryCode:gtkRequired:multicastConfiguration:)(v87, v164, v99, v89, v152 | (v148 << 8) | (v141 << 16), v146 | (v145 << 8) | (v142 << 16), (v159 << 16) | 0x200, v160, v149, v163, v86, v155, v156, v154, v153, &v166, v151, v150, v144, (v139 | (v140 << 32)) & 0xFFFFFFFFFFFFLL | (v92 << 48), v100, v101, v102, v103, v104, v110, v105, v112 | (v109 << 48) | v108);
        sub_100301450(v106, type metadata accessor for NANPublish.Configuration);
        sub_100301450(v98, type metadata accessor for NANPublish.Configuration);
        v50 = &unk_10059B000;
        v114 = qword_10059B890;
        swift_beginAccess();
        sub_10030018C(v113, v42 + v114);
        swift_endAccess();
        goto LABEL_42;
      }

LABEL_48:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002ED5D0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B8A0;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002ED648()
{
  v1 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v2 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v31 - v6 + 64;
  v8 = v0 + qword_10059B890;
  swift_beginAccess();
  v9 = type metadata accessor for NANPublish.Configuration();
  sub_100012400(&v8[*(v9 + 88)], v31, &unk_1005974B0, &qword_1004AFCF0);
  v10 = v32;
  if (v32 == 255)
  {
    return sub_100016290(v31, &unk_1005974B0, &qword_1004AFCF0);
  }

  result = sub_10020C758(v31);
  if (v10)
  {
    return result;
  }

  v30 = v4;
  _s17ResponderInstanceCMa();
  sub_10020CB70();
  if ((Dictionary.isEmpty.getter() & 1) != 0 && (v12 = qword_10059B8C0, swift_beginAccess(), v13 = *(v0 + v12), , v14 = Dictionary.isEmpty.getter(), , (v14 & 1) == 0))
  {
    sub_1002EDAD0();
  }

  else if ((Dictionary.isEmpty.getter() & 1) == 0)
  {
    v15 = qword_10059B8C0;
    swift_beginAccess();
    v16 = *(v0 + v15);

    v17 = Dictionary.isEmpty.getter();

    if (v17)
    {
      v18 = *(v0 + qword_100595970);
      swift_unownedRetainStrong();
      v19 = *(*v18 + 96);
      swift_beginAccess();
      (*(v30 + 16))(v7, v18 + v19, AssociatedTypeWitness);

      v20 = *(v0 + v15);

      v21 = Dictionary.count.getter();

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(*(AssociatedConformanceWitness + 8) + 16))(v21, AssociatedTypeWitness);
      (*(v30 + 8))(v7, AssociatedTypeWitness);
      return sub_1002EE150();
    }
  }

  v23 = *(v0 + qword_100595970);
  swift_unownedRetainStrong();
  v24 = *(*v23 + 96);
  swift_beginAccess();
  v25 = v30;
  (*(v30 + 16))(v7, v23 + v24, AssociatedTypeWitness);

  v26 = qword_10059B8C0;
  swift_beginAccess();
  v27 = *(v0 + v26);

  v28 = Dictionary.count.getter();

  v29 = swift_getAssociatedConformanceWitness();
  (*(*(v29 + 8) + 16))(v28, AssociatedTypeWitness);
  return (*(v25 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1002EDAD0()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *(v2 + 8);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  v11 = v0 + qword_10059B890;
  swift_beginAccess();
  v12 = type metadata accessor for NANPublish.Configuration();
  sub_100012400(&v11[*(v12 + 88)], v58, &unk_1005974B0, &qword_1004AFCF0);
  if (v60 == 255)
  {
    return sub_100016290(v58, &unk_1005974B0, &qword_1004AFCF0);
  }

  if (v60)
  {
    return sub_10020C758(v58);
  }

  v51 = v8;
  v14 = v58[1];
  v56 = v58[0];
  v50 = v59;
  v15 = sub_1002EEA34();
  (*(*v15 + 216))(1);

  v16 = sub_1002EEA34();
  v17 = (v16 + *(*v16 + 104));
  v18 = v17[1];
  v55 = *v17;

  v19 = v1;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v52 = v18;

  v22 = os_log_type_enabled(v20, v21);
  v53 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = v14;
    v25 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58[0] = v54;
    *v23 = 138412802;
    *(v23 + 4) = v19;
    *v25 = v1;
    *(v23 + 12) = 2080;
    v26 = v19;
    *(v23 + 14) = sub_100002320(v56, v24, v58);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_100002320(v55, v52, v58);
    _os_log_impl(&_mh_execute_header, v20, v21, "%@ is attempting to starting sharing internet from %s to %s", v23, 0x20u);
    sub_100016290(v25, &qword_10058B780, &qword_100480AC0);
    v14 = v24;

    swift_arrayDestroy();

    v10 = v53;
  }

  v27 = *&v19[qword_100595970];
  swift_unownedRetainStrong();
  v28 = *(*v27 + 96);
  swift_beginAccess();
  v29 = *(v57 + 16);
  v48 = v57 + 16;
  v49 = v29;
  v29(v10, v27 + v28, AssociatedTypeWitness);

  v30 = swift_allocObject();
  v54 = v30;
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v4;
  v31[3] = v2;
  v32 = v55;
  v33 = v56;
  v31[4] = v30;
  v31[5] = v33;
  v31[6] = v14;
  v31[7] = v32;
  v34 = v52;
  v31[8] = v52;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = v4;
  v36[3] = v2;
  v36[4] = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = *(AssociatedConformanceWitness + 8);
  v38 = *(v37 + 8);

  v45 = v37;
  v39 = v53;
  v38(v56, v14, v55, v34, v50, sub_1002FF618, v31, sub_1002FF8F4, v36, AssociatedTypeWitness, v45);
  v40 = v57;

  v41 = *(v40 + 8);
  v41(v39, AssociatedTypeWitness);

  swift_unownedRetainStrong();
  v42 = *(*v27 + 96);
  swift_beginAccess();
  v43 = v27 + v42;
  v44 = v51;
  v49(v51, v43, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 408))(1, AssociatedTypeWitness);
  return (v41)(v44, AssociatedTypeWitness);
}

uint64_t sub_1002EE150()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v40 = *(v2 + 0x58);
  v3 = *(v40 + 8);
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v37 - v9;
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v1;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ is attempting to stop sharing internet", v15, 0xCu);
    sub_100016290(v16, &qword_10058B780, &qword_100480AC0);
  }

  v18 = *(v12 + qword_100595970);
  swift_unownedRetainStrong();
  v19 = *(*v18 + 96);
  swift_beginAccess();
  v20 = v12;
  v21 = v6[2];
  v21(v11, v18 + v19, AssociatedTypeWitness);

  v22 = qword_10059B8C0;
  swift_beginAccess();
  v39 = v20;
  v23 = *(v20 + v22);
  _s17ResponderInstanceCMa();
  sub_10020CB70();

  v24 = Dictionary.count.getter();

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 <= 0xFF)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 416))(v24, AssociatedTypeWitness, AssociatedConformanceWitness);
    v27 = v6[1];
    v27(v11, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v28 = *(*v18 + 96);
    swift_beginAccess();
    v29 = v18 + v28;
    v30 = v37;
    v21(v37, v29, AssociatedTypeWitness);

    (*(*(AssociatedConformanceWitness + 8) + 24))(AssociatedTypeWitness);
    v27(v30, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v31 = *(*v18 + 96);
    swift_beginAccess();
    v32 = v18 + v31;
    v33 = v38;
    v21(v38, v32, AssociatedTypeWitness);

    (*(AssociatedConformanceWitness + 408))(0, AssociatedTypeWitness, AssociatedConformanceWitness);
    v27(v33, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v34 = v18 + *(*v18 + 760);
    swift_beginAccess();
    v35 = *(v34 + 8);
    *(v34 + 16) = 0;
    *v34 = 0;
    *(v34 + 8) = 0;

    v36 = sub_1002EEA34();
    (*(*v36 + 216))(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EE678(uint64_t a1)
{
  v3 = qword_10059B8C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1002ED648();
}

uint64_t sub_1002EE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v24 - v9;
  result = __chkstk_darwin();
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v26 = a2;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[2] = v5 + 32;
  v24[3] = v5 + 16;
  v24[1] = v5 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v5 + 16))(v13, *(v25 + 48) + *(v5 + 72) * (v23 | (v22 << 6)), v4);
      (*(v5 + 32))(v8, v13, v4);
      sub_10046EF10(v10, v8);
      result = (*(v5 + 8))(v10, v4);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return v26;
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EE8F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v19 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 56 * (v11 | (v10 << 6));
      v14 = *(v12 + 16);
      v13 = *(v12 + 32);
      v15 = *v12;
      v21 = *(v12 + 48);
      v20[1] = v14;
      v20[2] = v13;
      v20[0] = v15;
      sub_100300208(v20, v18);
      sub_10046ECC0(v18, v20);
      v16 = v18[3];
      v17 = v18[4];
      sub_1000124C8(v18[1], v18[2]);
      sub_100017554(v16, v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v19;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EEA34()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  v2 = type metadata accessor for NANPublish.Configuration();
  sub_100012400(v1 + *(v2 + 88), v9, &unk_1005974B0, &qword_1004AFCF0);
  v3 = v10;
  if (v10 == 255)
  {
    sub_100016290(v9, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(v9);
    if ((v3 & 1) == 0)
    {
      v4 = *(v0 + qword_100595970);
      swift_unownedRetainStrong();
      v5 = 480;
      goto LABEL_7;
    }
  }

  v6 = *(v1 + *(v2 + 84) + 2);
  v4 = *(v0 + qword_100595970);
  swift_unownedRetainStrong();
  if (v6 != 2)
  {
    return v4;
  }

  v5 = 472;
LABEL_7:
  v7 = *(v4 + *(*v4 + v5));

  result = v7;
  if (!v7)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_1002EEB78(unint64_t a1)
{
  v2 = v1;
  v38 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v33 - v9;
  __chkstk_darwin();
  v12 = (&v33 - v11);
  if (a1)
  {
    v13 = &v2[qword_1005959C0];
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    static Duration.+ infix(_:_:)();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v2[qword_1005959B8] = 0;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v34 = a1;
        *v12 = a1;
        v16 = *(v5 + 104);
        v16(v12, enum case for DispatchTimeInterval.seconds(_:), v4);
        v35 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v17 = swift_allocObject();
        v37 = 1000000000000000000 * a1;
        v18 = v17;
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        v36 = (a1 * 0xDE0B6B3A7640000uLL) >> 64;
        v20 = v19;
        v21 = v38;
        v19[2] = *(v38 + 80);
        v19[3] = *(v21 + 88);
        v19[4] = v18;
        v16(v10, enum case for DispatchTimeInterval.never(_:), v4);
        *v8 = 100;
        v16(v8, enum case for DispatchTimeInterval.milliseconds(_:), v4);
        v22 = type metadata accessor for P2PTimer();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v25 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v35, v10, v8, sub_1003002EC, v20);
        v26 = *&v2[qword_1005959B0];
        *&v2[qword_1005959B0] = v25;

        swift_beginAccess();
        static Duration.+= infix(_:_:)();
        swift_endAccess();
        v27 = v2;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v27;
          *v31 = v2;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v34;
          v32 = v27;
          _os_log_impl(&_mh_execute_header, v28, v29, "%@ timeout set to %lu seconds", v30, 0x16u);
          sub_100016290(v31, &qword_10058B780, &qword_100480AC0);
        }
      }
    }
  }
}