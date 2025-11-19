char *sub_1001AB378(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1001AB41C(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100115F68(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1001AB378(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1001AB4DC(char a1)
{
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  type metadata accessor for CFString(0);
  v5 = v4;
  *(inited + 72) = v4;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  v7 = 0xD000000000000029;
  if (a1)
  {
    v7 = 0xD000000000000031;
    v8 = "v16@?0@NSError8";
  }

  else
  {
    v8 = "ngMetadataService";
  }

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v7;
  *(inited + 104) = v8 | 0x8000000000000000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  *(inited + 168) = v5;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v10 = kSecClassGenericPassword;
  v11 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v12 = sub_1000827F8(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1001AB660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001AB6A8()
{
  result = qword_1005960D0;
  if (!qword_1005960D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005960D0);
  }

  return result;
}

uint64_t sub_1001AB714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AB774(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001AB4DC(a3 & 1);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v13 = &type metadata for String;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_100085188(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10007FDF4(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

uint64_t sub_1001AB830(uint64_t a1)
{
  v2 = type metadata accessor for WiFiAwarePairedDevice();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v19 - v7;
  __chkstk_darwin();
  v10 = &v19 - v9;
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 1;
  }

  v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  result = sub_1001ABBF0(v14, v8, type metadata accessor for WiFiAwarePairedDevice);
  if (v13 == 1)
  {
LABEL_3:
    sub_1001ABCD0(v8, v10, type metadata accessor for WiFiAwarePairedDevice);
    sub_1001ABCD0(v10, v12, type metadata accessor for WiFiAwarePairedDevice);
    v16 = *&v12[*(v2 + 20)];
    sub_1001AB714(v12, type metadata accessor for WiFiAwarePairedDevice);
    result = v16 + 1;
    if (v16 != -1)
    {
      return result;
    }

    __break(1u);
    return 1;
  }

  v17 = 1;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    sub_1001ABBF0(v14 + *(v3 + 72) * v17, v6, type metadata accessor for WiFiAwarePairedDevice);
    if (*&v8[*(v2 + 20)] >= *&v6[*(v2 + 20)])
    {
      result = sub_1001AB714(v6, type metadata accessor for WiFiAwarePairedDevice);
    }

    else
    {
      sub_1001AB714(v8, type metadata accessor for WiFiAwarePairedDevice);
      result = sub_1001ABCD0(v6, v8, type metadata accessor for WiFiAwarePairedDevice);
    }

    ++v17;
    if (v18 == v13)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABAAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058F4E8, &qword_100492890);
    sub_1001AB660(a2, type metadata accessor for WiFiAwarePairedDevice);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001ABB48()
{
  result = qword_10058F510;
  if (!qword_10058F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F510);
  }

  return result;
}

unint64_t sub_1001ABB9C()
{
  result = qword_10058F518;
  if (!qword_10058F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F518);
  }

  return result;
}

uint64_t sub_1001ABBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1001ABC74(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return (static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + *(type metadata accessor for WiFiAwarePairedDevice() + 28)) == v4;
}

uint64_t sub_1001ABCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001ABD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1001ABE84(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1001176F4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1001ABD38(v6, a2, 0, type metadata accessor for PairedDeviceXPCDelegate);
  *v2 = v4;
  return result;
}

unint64_t sub_1001ABF5C()
{
  result = qword_10058F540[0];
  if (!qword_10058F540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10058F540);
  }

  return result;
}

void sub_1001ABFC4()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001AC158(319, &qword_10058F5C8, &type metadata accessor for AsyncStream);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001AC158(319, &qword_10058F5D0, &type metadata accessor for AsyncStream.Continuation);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1001AC158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PairedDevicesStoreEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001AC1D4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001AC258();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001AC258()
{
  if (!qword_10058F640)
  {
    sub_10005DD04(&unk_10058F648, &qword_1004B2140);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F640);
    }
  }
}

void sub_1001AC2BC()
{
  sub_1001AC330();
  if (v0 <= 0x3F)
  {
    sub_1001AC360();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_1001AC330()
{
  result = qword_10058F6F8;
  if (!qword_10058F6F8)
  {
    result = &type metadata for Int32;
    atomic_store(&type metadata for Int32, &qword_10058F6F8);
  }

  return result;
}

void sub_1001AC360()
{
  if (!qword_10058F700)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F700);
    }
  }
}

uint64_t sub_1001AC444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t NANBeacon.Metadata.channel.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result);
  *(v1 + 13) = BYTE5(result);
  return result;
}

uint64_t static NANDiscoveryBeaconTransmissionSchedule.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a2, a4);
  }

  else
  {
    return 0;
  }
}

void NANDiscoveryBeaconTransmissionSchedule.hash(into:)(uint64_t a1, Swift::UInt64 a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);

  NANAttribute.PublicAvailability.hash(into:)(a1, a3);
}

Swift::Int NANDiscoveryBeaconTransmissionSchedule.hashValue.getter(Swift::UInt64 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NANAttribute.PublicAvailability.hash(into:)(v5, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001AC71C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NANAttribute.PublicAvailability.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void sub_1001AC778(uint64_t a1)
{
  v3 = v1[1];
  Hasher._combine(_:)(*v1);

  NANAttribute.PublicAvailability.hash(into:)(a1, v3);
}

Swift::Int sub_1001AC7C4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NANAttribute.PublicAvailability.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1001AC81C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1001AC840(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a6 >> 29) & 0xF8)) & 0xFFC))
    {
      if (BYTE5(a2) <= 3u)
      {
        if (BYTE5(a2) == 2)
        {
          result = 0;
          if (BYTE5(a6) != 2)
          {
            return result;
          }

          goto LABEL_23;
        }

        if (BYTE5(a2) == 3)
        {
          result = 0;
          if (BYTE5(a6) != 3)
          {
            return result;
          }

          goto LABEL_23;
        }
      }

      else
      {
        switch(BYTE5(a2))
        {
          case 4u:
            result = 0;
            if (BYTE5(a6) != 4)
            {
              return result;
            }

            goto LABEL_23;
          case 5u:
            result = 0;
            if (BYTE5(a6) != 5)
            {
              return result;
            }

            goto LABEL_23;
          case 6u:
            result = 0;
            if (BYTE5(a6) != 6)
            {
              return result;
            }

            goto LABEL_23;
        }
      }

      if (BYTE5(a6) - 2 >= 5)
      {
        result = 0;
        if (((a6 >> 40) ^ (a2 >> 40)))
        {
          return result;
        }

LABEL_23:
        if (a3 == a7)
        {
          return a4 == a8;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1001AC950()
{
  result = qword_10058F768[0];
  if (!qword_10058F768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10058F768);
  }

  return result;
}

unint64_t sub_1001AC9A8()
{
  result = qword_10059A590;
  if (!qword_10059A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A590);
  }

  return result;
}

uint64_t sub_1001ACA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001ACA50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1001ACAB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001ACBE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_100033DA0();

  return OptionSet<>.init()(a1, WitnessTable, v3);
}

uint64_t sub_1001ACC50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet<>.contains(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACCB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet.union(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACD18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet.intersection(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACD80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet.symmetricDifference(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet<>.insert(_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001ACE54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet<>.remove(_:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACEBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return OptionSet<>.update(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1001ACF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_100033DA0();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1001AD010(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SetAlgebra<>.init(arrayLiteral:)(a1, a2, WitnessTable);
}

uint64_t sub_1001AD0CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for UInt8);
}

uint64_t sub_1001AD140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt8);
}

uint64_t sub_1001AD1B4(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_10004496C(v6, type metadata accessor for AWDLPeer.AdvertisedService))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_100044904(*(a1 + 48) + *(v3 + 72) * (v14 | (v13 << 6)), v6, type metadata accessor for AWDLPeer.AdvertisedService);
    v15 = *v6;
    v16 = v18 + *(type metadata accessor for AWDLPeer(0) + 76);
    sub_1001D5218(v15);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AWDLPeer.averageRSSIAcrossBands.getter()
{
  v1 = type metadata accessor for AWDLPeer(0);
  v2 = (v0 + *(v1 + 96));
  if (v2[8] == 1)
  {
    v2 = (v0 + *(v1 + 92));
    v3 = v2[8];
  }

  return *v2;
}

uint64_t AWDLPeer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AWDLPeer.macAddress.setter(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  result = type metadata accessor for AWDLPeer(0);
  v9 = (v1 + *(result + 20));
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  return result;
}

uint64_t AWDLPeer.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLPeer(0) + 24);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLPeer.numberOfActionFrames.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AWDLPeer.deprecatedElectionParameter.getter()
{
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 32));
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24) | (*(v1 + 25) << 8);
  return result;
}

__n128 AWDLPeer.electionParameter.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 36);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t AWDLPeer.serviceParameter.getter()
{
  v1 = v0 + *(type metadata accessor for AWDLPeer(0) + 40);
  v2 = *v1;
  sub_1001AD708(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_1001AD708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_10000AB0C(a3, a4);
  }

  return result;
}

uint64_t AWDLPeer.arpa.getter()
{
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 52));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];

  return v2;
}

__n128 AWDLPeer.nanSynchronization.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 60);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 AWDLPeer.realtimeGroup.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer(0) + 68);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t AWDLPeer.preferredChannels.getter()
{
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AWDLPeer.advertisedServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for AWDLPeer(0) + 80));
}

uint64_t AWDLPeer.infrastructureChannel.getter()
{
  v1 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = type metadata accessor for AWDLPeer(0);
  v5 = (v0 + *(v4 + 72));
  if (v5[1])
  {
    v6 = *v5;
  }

  else
  {
    sub_100012400(v0 + *(v4 + 56), v3, &qword_10058D450, &unk_100486D78);
    v7 = type metadata accessor for AWDLActionFrame.DataPathState(0);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_100016290(v3, &qword_10058D450, &unk_100486D78);
      v6 = 0x300000000;
    }

    else
    {
      v6 = *(v3 + 5) | (*(v3 + 12) << 32);
      sub_10004496C(v3, type metadata accessor for AWDLActionFrame.DataPathState);
    }
  }

  return v6 & 0xFFFFFFFFFFFFLL;
}

uint64_t AWDLPeer.supportsSimultaneousDualBand.getter()
{
  v1 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v4 + 56), v3, &qword_10058D450, &unk_100486D78);
  v5 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100016290(v3, &qword_10058D450, &unk_100486D78);
    return 0;
  }

  else
  {
    v6 = v3[84];
    sub_10004496C(v3, type metadata accessor for AWDLActionFrame.DataPathState);
  }

  return v6;
}

uint64_t AWDLPeer.supportsDFSProxy.getter()
{
  v1 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = type metadata accessor for AWDLPeer(0);
  sub_100012400(v0 + *(v4 + 56), v3, &qword_10058D450, &unk_100486D78);
  v5 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100016290(v3, &qword_10058D450, &unk_100486D78);
    return 0;
  }

  else
  {
    v6 = v3[85];
    sub_10004496C(v3, type metadata accessor for AWDLActionFrame.DataPathState);
  }

  return v6;
}

uint64_t AWDLPeer.AdvertisedService.service.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
}

__n128 AWDLPeer.AdvertisedService.service.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v6;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t AWDLPeer.AdvertisedService.datapathInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AWDLPeer.AdvertisedService(0) + 28);

  return sub_1001AEB14(a1, v3);
}

void AWDLPeer.AdvertisedService.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
}

BOOL static AWDLPeer.AdvertisedService.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  sub_10005E2E4();
  return !StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v2, v3, v4 | (v5 << 8), v6, v7, v8 | (v9 << 8));
}

Swift::Int AWDLPeer.AdvertisedService.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_1001AE1C0()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  String.lowercased()();
  String.hash(into:)();

  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t AWDLPeer.peerPresencePosted.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t AWDLPeer.needsToRecoverTrafficRegistrations.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t AWDLPeer.needsToRecoverResponderTrafficRegistrations.setter(char a1)
{
  result = type metadata accessor for AWDLPeer(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

double sub_1001AE490@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a2[1];
  v16 = *a2;
  v12 = v16;
  v14 = v9;
  v15 = *(a2 + 16);
  v10 = type metadata accessor for DNSRecords.SRV();
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1000836D4(&v16, v13);
  sub_100083730(&v14, v13);
  *a3 = v12;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7 & 1;
  *(a3 + 33) = v8;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  return result;
}

double sub_1001AE578@<D0>(void (*a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10005DC58(&qword_10058F3A0, &qword_100492310);
  a1(&v14, a2 + *(v4 + 64));
  result = *&v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v22;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  *a2 = v14;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;
  *(a2 + 72) = v13;
  *(a2 + 88) = v10;
  return result;
}

uint64_t sub_1001AE618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = type metadata accessor for DNSRecords.SRV();
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
}

void AWDLPeer.hash(into:)()
{
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 20));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

BOOL static AWDLPeer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AWDLPeer(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = a2 + v4;
  return *v5 == *v7 && v6 == *(v7 + 4);
}

Swift::Int AWDLPeer.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = (v0 + *(type metadata accessor for AWDLPeer(0) + 20));
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_1001AE8B8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = (v1 + *(a1 + 20));
  LOBYTE(a1) = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  Hasher._combine(_:)(*v3);
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_1001AE968(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  Hasher._combine(_:)(*v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_1001AE9F0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = (v2 + *(a2 + 20));
  LOBYTE(a2) = v4[1];
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  Hasher._combine(_:)(*v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

BOOL sub_1001AEA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = (a1 + v3);
  v5 = *(a1 + v3 + 4);
  v6 = a2 + v3;
  return *v4 == *v6 && v5 == *(v6 + 4);
}

uint64_t sub_1001AEB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AEB7C()
{
  result = qword_10058F800;
  if (!qword_10058F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F800);
  }

  return result;
}

uint64_t sub_1001AEC60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001AECA8()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v1 <= 0x3F)
    {
      sub_1001AF1C0(319, &qword_10058F880);
      if (v2 <= 0x3F)
      {
        sub_1001AF1C0(319, &qword_10058F888);
        if (v3 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058F890);
          if (v4 <= 0x3F)
          {
            sub_1001AF1C0(319, &qword_10058E820);
            if (v5 <= 0x3F)
            {
              sub_1001AF1C0(319, &qword_10058F898);
              if (v6 <= 0x3F)
              {
                sub_1001AF1C0(319, &qword_10058F8A0);
                if (v7 <= 0x3F)
                {
                  sub_1001AEF94();
                  if (v8 <= 0x3F)
                  {
                    sub_1001AF1C0(319, &qword_10058F8B0);
                    if (v9 <= 0x3F)
                    {
                      sub_1001AF1C0(319, &qword_10058F8B8);
                      if (v10 <= 0x3F)
                      {
                        sub_1001AF1C0(319, &qword_10058F8C0);
                        if (v11 <= 0x3F)
                        {
                          sub_1001AF1C0(319, &qword_10058F8C8);
                          if (v12 <= 0x3F)
                          {
                            sub_1001AEFEC();
                            if (v13 <= 0x3F)
                            {
                              sub_1001AF048();
                              if (v14 <= 0x3F)
                              {
                                sub_1001AF1C0(319, &qword_10058E828);
                                if (v15 <= 0x3F)
                                {
                                  sub_1001AF1C0(319, &unk_10058F8E8);
                                  if (v16 <= 0x3F)
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

void sub_1001AEF94()
{
  if (!qword_10058F8A8)
  {
    type metadata accessor for AWDLActionFrame.DataPathState(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F8A8);
    }
  }
}

void sub_1001AEFEC()
{
  if (!qword_10058F8D0)
  {
    sub_100033DA0();
    v0 = type metadata accessor for IDPool();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F8D0);
    }
  }
}

void sub_1001AF048()
{
  if (!qword_10058F8D8)
  {
    type metadata accessor for AWDLPeer.AdvertisedService(255);
    sub_1001AEC60(&qword_10058F8E0, type metadata accessor for AWDLPeer.AdvertisedService);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10058F8D8);
    }
  }
}

void sub_1001AF114()
{
  sub_1001AF1C0(319, &unk_10058F9E0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DNSRecords.SRV();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001AF1C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001AF20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DNSRecords.SRV() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1001AE618(a1, v6, a2);
}

uint64_t NANIntervalDuration.timeUnits.getter(unsigned __int8 a1)
{
  if (a1 <= 0x3Bu)
  {
    result = 1 << (a1 + 4);
  }

  else
  {
    result = 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t NANIntervalDuration.deprecatedAvailabilityMapSize.getter(unint64_t result)
{
  v1 = (result + 4) & 0x3F;
  if (result <= 0x3Bu && v1 == 63)
  {
    __break(1u);
  }

  else if (result <= 0x3Bu)
  {
    return 0x200uLL >> v1;
  }

  __break(1u);
  return result;
}

void NANIntervalDuration.description.getter(unsigned __int8 a1)
{
  if (a1 <= 0x3Bu)
  {
    v1 = 1 << (a1 + 4);
  }

  else
  {
    v1 = 0;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    NANTimeUnit.description.getter(v1);
  }
}

void sub_1001AF3E8()
{
  v1 = NANIntervalDuration.timeUnits.getter(*v0);

  NANTimeUnit.description.getter(v1);
}

unint64_t sub_1001AF418()
{
  result = qword_10058FA30;
  if (!qword_10058FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FA30);
  }

  return result;
}

unint64_t sub_1001AF47C()
{
  result = qword_10058FA38;
  if (!qword_10058FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FA38);
  }

  return result;
}

uint64_t NANSubscribe.Configuration.serviceInfo.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (qword_10058AB70 != -1)
  {
    v13 = v0[1];
    v14 = v0[2];
    swift_once();
  }

  v3 = String.lowercased()();
  v4 = String.lowercased()();
  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v7 = v0[3];
      goto LABEL_11;
    }
  }

  v7 = v0[3];
  NANGenericServiceProtocol.blob.getter(v7);
  if (v8 >> 60 != 15)
  {
    return 3;
  }

LABEL_11:
  v9 = *(v0 + *(type metadata accessor for NANSubscribe.Configuration() + 68));
  v10 = 2;
  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  NANGenericServiceProtocol.packetData(for:)(v11, v7);
  return v10;
}

uint64_t NANSubscribe.SubscribeType.description.getter(char a1)
{
  if (a1)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x65766973736170;
  }
}

CoreP2P::NANSubscribe::SubscribeType_optional __swiftcall NANSubscribe.SubscribeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539A8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANSubscribe_SubscribeType_active;
  }

  else
  {
    v4.value = CoreP2P_NANSubscribe_SubscribeType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AF6BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657669746361;
  }

  else
  {
    v4 = 0x65766973736170;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x657669746361;
  }

  else
  {
    v6 = 0x65766973736170;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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

Swift::Int sub_1001AF760()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AF7E0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001AF84C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AF8C8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539A8, *a1);

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

void sub_1001AF928(uint64_t *a1@<X8>)
{
  v2 = 0x65766973736170;
  if (*v1)
  {
    v2 = 0x657669746361;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001AFA14()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 0x65766973736170;
  }

  *v0;
  return result;
}

unint64_t NANSubscribe.DiscoveryMode.description.getter(unsigned __int8 a1)
{
  v1 = 0x69766544206C6C41;
  if (a1 == 2)
  {
    v1 = 0xD00000000000001ELL;
  }

  v2 = 0xD000000000000015;
  if (a1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t NANSubscribe.DiscoveryMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C626172696170;
  v2 = 0x6972696150796E61;
  if (a1 != 2)
  {
    v2 = 7105633;
  }

  if (a1)
  {
    v1 = 0x6E4F646572696170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1001AFB88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12NANSubscribeO13DiscoveryModeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001AFBB8(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000796C6E4FLL;
  v3 = 0x656C626172696170;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6972696150796E61;
  if (*v1 != 2)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E4F646572696170;
    v2 = 0xEA0000000000796CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

Swift::Int sub_1001AFC50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AFD1C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001AFDD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANSubscribe.Configuration.serviceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NANSubscribe.Configuration.queryPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration() + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NANSubscribe.Configuration.queryPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration() + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NANSubscribe.Configuration.awakeDWInterval.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterRx.getter()
{
  v1 = (v0 + *(type metadata accessor for NANSubscribe.Configuration() + 44));
  v2 = *(v1 + 1);
  v3 = *v1;

  return v3;
}

uint64_t NANSubscribe.Configuration.matchingFilterRx.setter(char a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANSubscribe.Configuration() + 44);
  v6 = *(v5 + 8);

  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterTx.getter()
{
  v1 = (v0 + *(type metadata accessor for NANSubscribe.Configuration() + 48));
  v2 = *(v1 + 1);
  v3 = *v1;

  return v3;
}

uint64_t NANSubscribe.Configuration.matchingFilterTx.setter(char a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANSubscribe.Configuration() + 48);
  v6 = *(v5 + 8);

  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANSubscribe.Configuration.matchingFilterCondition.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 52)) = a1 & 1;
  return result;
}

uint64_t NANSubscribe.Configuration.bloomFilter.getter()
{
  v1 = v0 + *(type metadata accessor for NANSubscribe.Configuration() + 56);
  v2 = *v1;
  sub_10011A008(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t NANSubscribe.Configuration.bloomFilter.setter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + *(type metadata accessor for NANSubscribe.Configuration() + 56);
  result = sub_10011A01C(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t NANSubscribe.Configuration.enableFastDiscovery.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.oweKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NANSubscribe.Configuration() + 64);

  return sub_1001B2234(v3, a1);
}

uint64_t NANSubscribe.Configuration.oweKeys.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NANSubscribe.Configuration() + 64);

  return sub_1001B2298(a1, v3);
}

uint64_t NANSubscribe.Configuration.multicastAddress.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  v4 = v1 + *(result + 72);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  return result;
}

uint64_t NANSubscribe.Configuration.allowedPairedDevicesUUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANSubscribe.Configuration() + 76));
}

uint64_t NANSubscribe.Configuration.allowedPairedDevicesUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANSubscribe.Configuration() + 76);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.multicastServiceType.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 80)) = a1 & 1;
  return result;
}

uint64_t NANSubscribe.Configuration.timeoutAfterSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.discoveryMode.setter(char a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.channelInfo.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  v4 = v1 + *(result + 92);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  return result;
}

uint64_t NANSubscribe.Configuration.countryCode.setter(int a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  v4 = v1 + *(result + 96);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

unint64_t NANSubscribe.Configuration.multicastConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANSubscribe.Configuration() + 100));
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7) == 0;
  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | (v3 << 48) | v2;
}

uint64_t NANSubscribe.Configuration.multicastConfiguration.setter(uint64_t a1)
{
  result = type metadata accessor for NANSubscribe.Configuration();
  v4 = v1 + *(result + 100);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  *(v4 + 7) = HIBYTE(a1) & 1;
  return result;
}

void NANSubscribe.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher._combine(_:)(*v1);
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  String.lowercased()();
  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 24));
  *(v1 + 32);
  *(v1 + 32);
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 33));
  v16 = type metadata accessor for NANSubscribe.Configuration();
  (*(v10 + 16))(v13, v1 + v16[9], v9);
  v17 = (*(v10 + 88))(v13, v9);
  if (v17 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v10 + 96))(v13, v9);
    v18 = *v13;
    v19 = 1000000000;
LABEL_7:
    v20 = v18 * v19;
    v21 = (v18 * v19) >> 64 != (v18 * v19) >> 63;
    v22 = v18 <= 0;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (v22)
    {
      v23 = 0x8000000000000000;
    }

    if (v21)
    {
      v24 = v23;
    }

    else
    {
      v24 = v20;
    }

    goto LABEL_12;
  }

  if (v17 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v10 + 96))(v13, v9);
    v18 = *v13;
    v19 = 1000000;
    goto LABEL_7;
  }

  if (v17 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v10 + 96))(v13, v9);
    v18 = *v13;
    v19 = 1000;
    goto LABEL_7;
  }

  if (v17 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v10 + 96))(v13, v9);
    v24 = *v13;
  }

  else
  {
    if (v17 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v10 + 8))(v13, v9);
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v24);
  *(v1 + v16[10]);
  *(v1 + v16[10]);
  String.hash(into:)();

  NANMatchingFilter.hash(into:)(a1, *(v1 + v16[11]), *(v1 + v16[11] + 8));
  NANMatchingFilter.hash(into:)(a1, *(v1 + v16[12]), *(v1 + v16[12] + 8));
  *(v1 + v16[13]);
  *(v1 + v16[13]);
  String.hash(into:)();

  v25 = (v1 + v16[14]);
  v26 = *(v25 + 8);
  if ((v26 & 0xFF00) == 0x200)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v29 = *v25;
    v28 = v25[1];
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    Hasher._combine(_:)(v26);
    v27 = (v26 >> 8) & 1;
  }

  Hasher._combine(_:)(v27);
  Hasher._combine(_:)(*(v1 + v16[15]));
  v30 = v1 + v16[16];
  v31 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v33 = v32;
  Data.hash(into:)();
  sub_1000124C8(v31, v33);
  if (*(v2 + v16[17]) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v34 = (v2 + v16[18]);
  if (*(v34 + 6))
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v36 = *(v34 + 2);
    v37 = *v34;
    v38 = *v34 | (*(v34 + 2) << 32);
    v65 = v38 >> 8;
    v66 = (v38 >> 16);
    v67 = v38 >> 24;
    v35 = v36 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v37);
    Hasher._combine(_:)(v65);
    Hasher._combine(_:)(v66);
    Hasher._combine(_:)(v67);
    Hasher._combine(_:)(v36);
  }

  Hasher._combine(_:)(v35);
  v66 = v16;
  v67 = v2;
  v39 = *(v2 + v16[19]);
  if (v39)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v39 + 16));
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = v5 + 16;
      v42 = *(v5 + 16);
      v43 = v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v44 = *(v5 + 72);
      v45 = (v41 - 8);
      do
      {
        v46 = v41;
        v42(v8, v43, v4);
        sub_10001AC84(&unk_10058BB00, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v45)(v8, v4);
        v41 = v46;
        v43 += v44;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v48 = v66;
  v47 = v67;
  if (*(v67 + v66[20]))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v47 + v48[21]));
  *(v47 + v48[22]);
  String.hash(into:)();

  v49 = *(v47 + v48[23]) | (*(v47 + v48[23] + 4) << 32);
  if ((v49 & 0xFF00000000) == 0x300000000)
  {
    v50 = 0;
LABEL_32:
    Hasher._combine(_:)(v50);
    goto LABEL_33;
  }

  v53 = v49 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v49);
  Hasher._combine(_:)(0x801004u >> ((v49 >> 29) & 0xF8));
  if ((v49 >> 40) <= 3)
  {
    if (v53 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v53 != 3)
      {
        goto LABEL_53;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v53)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_53:
        Hasher._combine(_:)(2uLL);
        v50 = BYTE5(v49) & 1;
        goto LABEL_32;
    }
  }

LABEL_33:
  v51 = (v47 + v48[24]);
  if (v51[1])
  {
    LOBYTE(v52) = 0;
  }

  else
  {
    v54 = *v51;
    v52 = v54 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v54);
  }

  Hasher._combine(_:)(v52);
  v55 = (v47 + v48[25]);
  v56 = *(v55 + 7);
  if (*(v55 + 6))
  {
    LOBYTE(v57) = 0;
  }

  else
  {
    v58 = *(v55 + 2);
    v59 = *v55;
    v60 = *v55 | (*(v55 + 2) << 32);
    v61 = v60 >> 8;
    v62 = v60 >> 16;
    v63 = v60 >> 24;
    v57 = v58 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v59);
    Hasher._combine(_:)(v61);
    Hasher._combine(_:)(v62);
    Hasher._combine(_:)(v63);
    Hasher._combine(_:)(v58);
  }

  Hasher._combine(_:)(v57);
  Hasher._combine(_:)(v56);
}

Swift::Int NANSubscribe.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANSubscribe.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B1510()
{
  Hasher.init(_seed:)();
  NANSubscribe.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NANSubscribe.Configuration.init(instanceID:serviceName:serviceSpecificInfo:queryPeriod:enableFastDiscovery:authenticationType:multicastAddress:allowedPairedDevicesUUIDs:type:multicastServiceType:timeoutAfterSeconds:discoveryMode:channelInfo:countryCode:multicastConfiguration:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, __int16 a11, char a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, int a19, int a20, int a21, __int16 a22, char a23, char a24)
{
  v60 = a7;
  v57 = a3;
  v58 = a6;
  v53 = a4;
  v56 = a2;
  v66 = a19;
  v65 = a18;
  v64 = a17;
  v63 = a16;
  v61 = a15;
  v62 = a8;
  v54 = a14;
  v55 = a1;
  v59 = a13;
  v26 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = (&v53 - v29);
  v31 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin();
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init()();
  v67 = sub_100082620(_swiftEmptyArrayStorage);
  if (a5 >> 60 == 15)
  {
    v36 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
  }

  else
  {
    *v30 = v53;
    v30[1] = a5;
    v37 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
  }

  sub_1001B22FC(v30, v28);
  sub_100072F88(v28, 6);
  sub_1001B236C(v30);
  v38 = v67;
  v39 = type metadata accessor for NANSubscribe.Configuration();
  (*(v32 + 32))(a9 + v39[16], v35, v31);
  *a9 = v55;
  v40 = v57;
  *(a9 + 8) = v56;
  *(a9 + 16) = v40;
  *(a9 + 24) = v38;
  *(a9 + 32) = v54 & 1;
  v41 = v39[9];
  v42 = type metadata accessor for DispatchTimeInterval();
  result = (*(*(v42 - 8) + 32))(a9 + v41, v58, v42);
  *(a9 + v39[10]) = 1;
  v44 = a9 + v39[11];
  *v44 = 1;
  *(v44 + 8) = _swiftEmptyArrayStorage;
  v45 = a9 + v39[12];
  *v45 = 0;
  *(v45 + 8) = _swiftEmptyArrayStorage;
  *(a9 + v39[13]) = 0;
  v46 = a9 + v39[14];
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = 512;
  *(a9 + v39[15]) = v60 & 1;
  *(a9 + v39[17]) = v62 & 1;
  v47 = a9 + v39[18];
  *(v47 + 4) = a11;
  *v47 = a10;
  *(v47 + 6) = a12 & 1;
  *(a9 + v39[19]) = v59;
  *(a9 + v39[20]) = v61 & 1;
  *(a9 + v39[21]) = v63;
  *(a9 + v39[22]) = v64;
  v48 = a9 + v39[23];
  v49 = v65;
  *(v48 + 4) = WORD2(v65);
  *v48 = v49;
  v50 = a9 + v39[24];
  v51 = BYTE2(v66);
  *v50 = v66;
  *(v50 + 2) = v51 & 1;
  v52 = a9 + v39[25];
  *(v52 + 4) = a22;
  *v52 = a21;
  *(v52 + 6) = a23 & 1;
  *(v52 + 7) = a24 & 1;
  return result;
}

uint64_t NANSubscribe.DiscoveryMode.init(apiDiscoveryMode:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t type metadata accessor for NANSubscribe.Configuration()
{
  result = qword_10058FB18;
  if (!qword_10058FB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7CoreP2P12NANSubscribeO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = String.lowercased()();
  v9 = String.lowercased()();
  if (v8._countAndFlagsBits == v9._countAndFlagsBits && v8._object == v9._object)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((_s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
    return 0;
  }

  v12 = a2[32];
  if (a1[32])
  {
    v13 = 0x657669746361;
  }

  else
  {
    v13 = 0x65766973736170;
  }

  if (a1[32])
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (a2[32])
  {
    v15 = 0x657669746361;
  }

  else
  {
    v15 = 0x65766973736170;
  }

  if (a2[32])
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[33] != a2[33])
  {
    return 0;
  }

  v18 = type metadata accessor for NANSubscribe.Configuration();
  v19 = v18[9];
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10003051C(a1[v18[10]], a2[v18[10]]) & 1) == 0)
  {
    return 0;
  }

  v20 = v18[11];
  v21 = &a1[v20];
  v22 = *&a1[v20 + 8];
  v23 = &a2[v20];
  v24 = *(v23 + 1);
  if ((sub_1000B2BD8(*v21, *v23) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000BCCE0(v22, v24) & 1) == 0)
  {
    return 0;
  }

  v25 = v18[12];
  v26 = &a1[v25];
  v27 = *&a1[v25 + 8];
  v28 = &a2[v25];
  v29 = *(v28 + 1);
  if ((sub_1000B2BD8(*v26, *v28) & 1) == 0 || (sub_1000BCCE0(v27, v29) & 1) == 0)
  {
    return 0;
  }

  v30 = v18[13];
  v31 = a1[v30];
  v32 = a2[v30];
  if (v31)
  {
    v33 = 0x757145746F4E7874;
  }

  else
  {
    v33 = 0x526C617571457874;
  }

  if (v31)
  {
    v34 = 0xEC00000078526C61;
  }

  else
  {
    v34 = 0xE900000000000078;
  }

  if (v32)
  {
    v35 = 0x757145746F4E7874;
  }

  else
  {
    v35 = 0x526C617571457874;
  }

  if (v32)
  {
    v36 = 0xEC00000078526C61;
  }

  else
  {
    v36 = 0xE900000000000078;
  }

  if (v33 == v35 && v34 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v18[14];
  v40 = *&a1[v38];
  v39 = *&a1[v38 + 8];
  v41 = *&a1[v38 + 16];
  v42 = &a2[v38];
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = *(v42 + 8);
  v46 = v45 & 0xFF00;
  if ((v41 & 0xFF00) == 0x200)
  {
    if (v46 == 512)
    {
      sub_10011A008(v40, v39, v41);
      sub_10011A008(v44, v43, v45);
      goto LABEL_52;
    }

    goto LABEL_58;
  }

  if (v46 == 512)
  {
LABEL_58:
    sub_10011A008(v40, v39, v41);
    sub_10011A008(v44, v43, v45);
    sub_10011A01C(v40, v39, v41);
    v58 = v44;
    v59 = v43;
    v60 = v45;
LABEL_65:
    sub_10011A01C(v58, v59, v60);
    return 0;
  }

  sub_10011A008(v40, v39, v41);
  sub_10011A008(v44, v43, v45);
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v39, v44, v43) & 1) == 0)
  {
    sub_10011A01C(v44, v43, v45);
LABEL_64:
    v58 = v40;
    v59 = v39;
    v60 = v41;
    goto LABEL_65;
  }

  sub_10011A01C(v44, v43, v45);
  if (v41 != v45 || ((((v45 & 0x100) == 0) ^ ((v41 & 0x100) >> 8)) & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_52:
  sub_10011A01C(v40, v39, v41);
  if (a1[v18[15]] != a2[v18[15]])
  {
    return 0;
  }

  v47 = v18[16];
  v48 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v50 = v49;
  v51 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v53 = v52;
  v54 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v50, v51, v52);
  sub_1000124C8(v51, v53);
  sub_1000124C8(v48, v50);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

  v55 = v18[17];
  v56 = a1[v55];
  v57 = a2[v55];
  if (v56)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v62 = v18[18];
  v63 = &a1[v62];
  v64 = a1[v62 + 6];
  v65 = &a2[v62];
  v66 = v65[6];
  if (v64)
  {
    if ((v65[6] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v65[6])
    {
      return 0;
    }

    v67 = *v63 | (*(v63 + 2) << 32);
    v68 = *v65 | (*(v65 + 2) << 32);
    v69.i64[0] = 0xFFFFFFFFFFFFLL;
    v69.i64[1] = 0xFFFFFFFFFFFFLL;
    v70 = vandq_s8(vdupq_n_s64(v67), v69);
    v71 = vshlq_u64(v70, xmmword_1004817A0);
    v72 = vandq_s8(vdupq_n_s64(v68), v69);
    v73 = vshlq_u64(v72, xmmword_1004817A0);
    v74 = vshlq_u64(v72, xmmword_100481790);
    v109[0] = v67;
    *v70.i8 = vmovn_s64(vshlq_u64(v70, xmmword_100481790));
    *v71.i8 = vmovn_s64(v71);
    v71.i16[1] = v71.i16[2];
    v71.i16[2] = v70.i16[0];
    v71.i16[3] = v70.i16[2];
    *&v109[1] = vmovn_s16(v71).u32[0];
    v109[5] = BYTE5(v67);
    v108[0] = v68;
    *v70.i8 = vmovn_s64(v74);
    *v74.i8 = vmovn_s64(v73);
    v74.i16[1] = v74.i16[2];
    v74.i16[2] = v70.i16[0];
    v74.i16[3] = v70.i16[2];
    *&v108[1] = vmovn_s16(v74).u32[0];
    v108[5] = BYTE5(v68);
    if (*v109 != *v108 || *&v109[4] != *&v108[4])
    {
      return 0;
    }
  }

  v76 = v18[19];
  v77 = *&a1[v76];
  v78 = *&a2[v76];
  if (v77)
  {
    if (!v78)
    {
      return 0;
    }

    v79 = *&a2[v76];

    v80 = sub_1000BD0EC(v77, v78);

    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v81 = v18[20];
  v82 = a1[v81];
  v83 = a2[v81];
  if (v82)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  if (*&a1[v18[21]] != *&a2[v18[21]] || (sub_1000B2BDC(a1[v18[22]], a2[v18[22]]) & 1) == 0)
  {
    return 0;
  }

  v84 = v18[23];
  v85 = *&a1[v84] | (*&a1[v84 + 4] << 32);
  v86 = *&a2[v84] | (*&a2[v84 + 4] << 32);
  v87 = v86 & 0xFF00000000;
  if ((v85 & 0xFF00000000) != 0x300000000)
  {
    if (v87 == 0x300000000 || v85 != v86 || ((0x801004u >> ((v85 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v86 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v93 = v85 >> 40;
    v94 = v86 >> 40;
    if (v93 <= 3)
    {
      if (v93 == 2)
      {
        if (v94 != 2)
        {
          return 0;
        }

        goto LABEL_90;
      }

      if (v93 == 3)
      {
        if (v94 != 3)
        {
          return 0;
        }

        goto LABEL_90;
      }
    }

    else
    {
      switch(v93)
      {
        case 4:
          if (v94 != 4)
          {
            return 0;
          }

          goto LABEL_90;
        case 5:
          if (v94 != 5)
          {
            return 0;
          }

          goto LABEL_90;
        case 6:
          if (v94 != 6)
          {
            return 0;
          }

          goto LABEL_90;
      }
    }

    if (v94 - 2) < 5 || ((v94 ^ v93))
    {
      return 0;
    }

    goto LABEL_90;
  }

  if (v87 != 0x300000000)
  {
    return 0;
  }

LABEL_90:
  v88 = v18[24];
  v89 = &a1[v88];
  v90 = a1[v88 + 2];
  v91 = &a2[v88];
  v92 = a2[v88 + 2];
  if (v90)
  {
    if (v92)
    {
      goto LABEL_105;
    }

    return 0;
  }

  if (*v89 != *v91)
  {
    LOBYTE(v92) = 1;
  }

  if (v92)
  {
    return 0;
  }

LABEL_105:
  v95 = v18[25];
  v96 = *&a1[v95 + 4];
  v97 = *&a1[v95];
  v98 = a1[v95 + 6];
  v99 = a1[v95 + 7];
  v100 = &a2[v95];
  v101 = *&a2[v95 + 4];
  v102 = *v100;
  v103 = v100[6];
  v104 = v100[7];
  if (v99)
  {
    v105 = 0x100000000000000;
  }

  else
  {
    v105 = 0;
  }

  v106 = v103;
  if (v104)
  {
    v107 = 0x100000000000000;
  }

  else
  {
    v107 = 0;
  }

  return sub_10008A4E4(v105 | (v98 << 48) | v97 | (v96 << 32), v107 | (v106 << 48) | v102 | (v101 << 32));
}

unint64_t _s7CoreP2P12NANSubscribeO13DiscoveryModeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553928, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001B2234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B2298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B22FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BB48, &unk_100483040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B236C(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB48, &unk_100483040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B23D8()
{
  result = qword_10058FA40;
  if (!qword_10058FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FA40);
  }

  return result;
}

unint64_t sub_1001B2430()
{
  result = qword_10058FA48;
  if (!qword_10058FA48)
  {
    sub_10005DD04(&qword_10058FA50, &qword_100493338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FA48);
  }

  return result;
}

unint64_t sub_1001B2498()
{
  result = qword_10058FA58;
  if (!qword_10058FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FA58);
  }

  return result;
}

uint64_t sub_1001B24EC(uint64_t a1)
{
  result = sub_10001AC84(&qword_10058FA60, type metadata accessor for NANSubscribe.Configuration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B2550(uint64_t a1)
{
  *(a1 + 8) = sub_10001AC84(&qword_10058FAA8, type metadata accessor for NANSubscribe.Configuration);
  result = sub_10001AC84(&qword_10058FAB0, type metadata accessor for NANSubscribe.Configuration);
  *(a1 + 16) = result;
  return result;
}

void sub_1001B2674()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    sub_1001AF1C0(319, &qword_10058FB28);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OWEKeys();
      if (v2 <= 0x3F)
      {
        sub_1001AF1C0(319, &qword_10058FB30);
        if (v3 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058E810);
          if (v4 <= 0x3F)
          {
            sub_1001B2880();
            if (v5 <= 0x3F)
            {
              sub_1001AF1C0(319, &unk_10058FB48);
              if (v6 <= 0x3F)
              {
                sub_1001AF1C0(319, &qword_10058E808);
                if (v7 <= 0x3F)
                {
                  sub_1001AF1C0(319, &qword_10058E800);
                  if (v8 <= 0x3F)
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

void sub_1001B2880()
{
  if (!qword_10058FB38)
  {
    sub_10005DD04(&qword_10058FB40, &qword_1004934E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058FB38);
    }
  }
}

unint64_t sub_1001B28E4()
{
  result = qword_10058FBC8;
  if (!qword_10058FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FBC8);
  }

  return result;
}

uint64_t sub_1001B293C()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_10058FBD0);
  sub_100037644(v0, qword_10058FBD0);
  return Logger.init(subsystem:category:)();
}

uint64_t static WAAnalytics.samplePeerStats(macAddress:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  v11 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 sharedClientWithIdentifier:v15];

  if (v16)
  {
    v44 = v10 + 16;
    v45 = a1 >> 8;
    v47 = a1 >> 16;
    v48 = a1 >> 24;
    v49 = HIDWORD(a1);
    v50 = a2;
    v46 = a1 >> 40;
    [v16 registerMessageGroup:3 andReply:0];
    v17 = dispatch_semaphore_create(0);
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100480F40;
    *(v18 + 32) = v11;
    *(v18 + 40) = v13;
    v19 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = swift_allocObject();
    *(v21 + 16) = v10;
    *(v21 + 24) = a1;
    *(v21 + 25) = v45;
    v22 = v48;
    *(v21 + 26) = v47;
    *(v21 + 27) = v22;
    *(v21 + 28) = v49;
    *(v21 + 29) = v46;
    *(v21 + 32) = v17;
    aBlock[4] = sub_1001B3C44;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001B3474;
    aBlock[3] = &unk_100567128;
    v23 = _Block_copy(aBlock);
    v49 = v10;

    v24 = v17;

    [v19 triggerQueryForNWActivityWithPeers:isa andReply:v23];
    _Block_release(v23);

    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = v52;
    v26 = *(v51 + 8);
    v26(v7, v52);
    OS_dispatch_semaphore.wait(timeout:)();
    v26(v9, v25);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v27 = v19;
      if (qword_10058A888 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100037644(v28, qword_10058FBD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        v33 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
        v35 = sub_100002320(v33, v34, aBlock);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "[WAAnalytics] Timeout waiting for WiFi analytics query for %s", v31, 0xCu);
        sub_100002A00(v32);
      }

      v36 = v50;
      *v50 = 0u;
      v36[1] = 0u;
    }

    else
    {

      v42 = v44;
      swift_beginAccess();
      sub_1001B3C5C(v42, v50);
    }
  }

  else
  {

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100037644(v37, qword_10058FBD0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "[WAAnalytics] Error failed to create waclient", v40, 2u);
    }

    *a2 = 0u;
    a2[1] = 0u;
  }
}

Swift::Int sub_1001B2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    swift_beginAccess();
    sub_1001B3D28(a1, a3 + 16);
    swift_beginAccess();
    sub_1001B3C5C(a3 + 16, v35);
    if (v35[3])
    {
      sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
      if (swift_dynamicCast())
      {
        v18 = *(v33 + 16);

        if (!v18)
        {
          if (qword_10058A888 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100037644(v19, qword_10058FBD0);
          v6 = Logger.logObject.getter();
          v20 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v6, v20))
          {
            goto LABEL_20;
          }

          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v35[0] = v22;
          *v21 = 136315138;
          v23 = WiFiAddress.description.getter(a4 & 0xFFFFFFFFFFFFLL);
          v25 = sub_100002320(v23, v24, v35);

          *(v21 + 4) = v25;
          v26 = "[WAAnalytics] Empty Sample %s";
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
    }

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100037644(v27, qword_10058FBD0);
    v6 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v28 = WiFiAddress.description.getter(a4 & 0xFFFFFFFFFFFFLL);
    v30 = sub_100002320(v28, v29, v35);

    *(v21 + 4) = v30;
    v26 = "[WAAnalytics] Success Sampling %s";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v6, v20, v26, v21, 0xCu);
    sub_100002A00(v22);

    goto LABEL_20;
  }

  swift_errorRetain();
  if (qword_10058A888 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100037644(v5, qword_10058FBD0);
  sub_1001B3C5C(a1, v35);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    sub_1001B3C5C(v35, v32);
    sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
    v14 = sub_100002320(v11, v13, &v34);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "[WAAnalytics] Error from triggerQueryForNWActivity: %s: %@", v8, 0x16u);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v10);

LABEL_20:

    return OS_dispatch_semaphore.signal()();
  }

  sub_100016290(v35, &qword_10058BA80, &qword_1004818C0);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001B3474(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_100085188(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_100016290(v11, &qword_10058BA80, &qword_1004818C0);
}

uint64_t static WAAnalytics.peerStatsDictionary(earlyData:laterData:)(uint64_t a1, uint64_t a2)
{
  sub_100002B30(a2, v58);
  sub_1001B3CCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v57[0];
  sub_100002B30(a1, v58);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_9:
    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100037644(v12, qword_10058FBD0);
    sub_100002B30(a1, v58);
    sub_100002B30(a2, v57);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v15 = 136315394;
      sub_100002B30(v58, v55);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100002A00(v58);
      v19 = sub_100002320(v16, v18, &v56);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_100002B30(v57, v55);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_100002A00(v57);
      v23 = sub_100002320(v20, v22, &v56);

      *(v15 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "[WAAnalytics] Failed to cast NSDictionary early %s and later %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100002A00(v57);
      sub_100002A00(v58);
    }

    return 0;
  }

  v5 = v57[0];
  v58[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  v6 = v58[0];
  if (!v58[0])
  {
LABEL_16:
    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100037644(v24, qword_10058FBD0);
    v25 = v57[0];
    v26 = v57[0];
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = v25;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_100002320(v32, v34, v58);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v36 = v26;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100002320(v38, v40, v58);

      *(v29 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "[WAAnalytics] Failed to form swift dict %s and later %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  v58[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (!v58[0])
  {

    goto LABEL_16;
  }

  if (*(v6 + 16))
  {
    v7 = objc_allocWithZone(type metadata accessor for WANWActivityTransform());
    v8 = WANWActivityTransform.init(later:early:)();
    v9 = dispatch thunk of WANWActivityTransform.getTransformedMeasurementForP2PMetrics()();
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100037644(v51, qword_10058FBD0);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "[WAAnalytics] Failed getTransformedMeasurementForP2PMetrics ", v54, 2u);
    }
  }

  else
  {

    if (qword_10058A888 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100037644(v42, qword_10058FBD0);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58[0] = v46;
      *v45 = 136315138;
      v47 = Dictionary.description.getter();
      v49 = v48;

      v50 = sub_100002320(v47, v49, v58);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "[WAAnalytics] later sample is empty %s", v45, 0xCu);
      sub_100002A00(v46);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1001B3C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B3CCC()
{
  result = qword_10058CBB8;
  if (!qword_10058CBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058CBB8);
  }

  return result;
}

uint64_t sub_1001B3D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3D9C()
{
  result = type metadata accessor for DispatchTime();
  qword_10059B510 = result;
  *algn_10059B518 = &off_100567170;
  return result;
}

uint64_t sub_1001B3E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t P2PTimer.handler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler + 8);

  return v1;
}

uint64_t P2PTimer.__allocating_init(deadlineAfter:on:repeating:leeway:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v48 = a1;
  v49 = a4;
  v46 = a2;
  v47 = a3;
  v7 = type metadata accessor for DispatchTime();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v41 - v11;
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 48);
  v18 = *(v6 + 52);
  v19 = swift_allocObject();
  sub_10001C2F0();
  v50 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v13 + 8))(v16, v12);
  *(v19 + 16) = v20;
  swift_getObjectType();
  v21 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v22 = v41;
  v23 = v48;
  + infix(_:_:)();
  v24 = v43;
  v25 = *(v42 + 8);
  v25(v10, v43);
  v26 = v47;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v25(v22, v24);
  v27 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v28 = type metadata accessor for DispatchTimeInterval();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v30(v19 + v27, v23, v28);
  v31 = v46;
  *(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v46;
  v30(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v26, v28);
  v30(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v49, v28);
  v32 = (v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v33 = v45;
  *v32 = v44;
  v32[1] = v33;
  v34 = qword_10059B510;
  v35 = *algn_10059B518;
  v36 = *(*algn_10059B518 + 16);
  v37 = v31;

  v36(v19, v34, v35);
  v38 = *(v19 + 16);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v39 = *(v29 + 8);
  v39(v49, v28);
  v39(v47, v28);
  v39(v48, v28);
  return v19;
}

uint64_t P2PTimer.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);

  v6(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v5);
  v6(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v5);
  v7 = *(v1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler + 8);

  return v1;
}

uint64_t sub_1001B4430(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  v4 = *(a3 + 16);
  swift_beginAccess();
  *(a3 + 16) = 0;
}

uint64_t P2PTimer.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[0] = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = v2;
  v16 = v2 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval;
  (*(v12 + 104))(v15, enum case for DispatchTimeInterval.never(_:), v11);

  v17 = static DispatchTimeInterval.== infix(_:_:)();
  (*(v12 + 8))(v15, v11);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100480F40;
  if (v17)
  {
    *(v18 + 32) = 0x656E696C64616564;
    *(v18 + 40) = 0xE800000000000000;
    v16 = v2 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  }

  else
  {
    *(v18 + 32) = 0x6E69746165706572;
    *(v18 + 40) = 0xE900000000000067;
  }

  *(v18 + 72) = v11;
  v19 = sub_1000297D4((v18 + 48));
  (*(v12 + 16))(v19, v16, v11);
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  type metadata accessor for P2PTimer();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t _s7CoreP2P0B6PTimerC5async5after2on7executey8Dispatch0H12TimeIntervalO_So17OS_dispatch_queueCyyctFZ_0(char *a1, void *a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a2;
  v67 = type metadata accessor for DispatchTime();
  v64 = *(v67 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin();
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v55 - v9;
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v11 = *(v10 - 8);
  v56 = v10;
  ObjectType = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin();
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v55 - v20;
  __chkstk_darwin();
  v23 = &v55 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v63 = v24 + 16;
  v25 = v16[2];
  v69 = v23;
  v58 = v25;
  v59 = v16 + 2;
  v25(v23, a1, v15);
  v26 = swift_allocObject();
  *(v26 + 2) = v68;
  *(v26 + 3) = a4;
  v60 = v26;
  *(v26 + 4) = v24;
  v68 = v16;
  v27 = v16[13];
  v65 = v21;
  v27(v21, enum case for DispatchTimeInterval.never(_:), v15);
  *v19 = 100;
  v62 = v19;
  v55 = v15;
  v27(v19, enum case for DispatchTimeInterval.milliseconds(_:), v15);
  v28 = type metadata accessor for P2PTimer();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  sub_10001C2F0();
  v71 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags);

  v66 = v24;

  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  v32 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(ObjectType + 8))(v14, v32);
  *(v31 + 16) = v33;
  ObjectType = swift_getObjectType();
  v34 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v34 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v35 = v61;
  v36 = v69;
  + infix(_:_:)();
  v37 = *(v64 + 8);
  v38 = v67;
  v37(v8, v67);
  v39 = v65;
  v40 = v62;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v37(v35, v38);
  v41 = v36;
  v42 = v55;
  v43 = v58;
  v58(v31 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter, v41, v55);
  v44 = v70;
  *(v31 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v70;
  v43(v31 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v39, v42);
  v43(v31 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v40, v42);
  v45 = (v31 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v46 = v60;
  *v45 = sub_1001B4EC8;
  v45[1] = v46;
  v48 = qword_10059B510;
  v47 = *algn_10059B518;
  v49 = *(*algn_10059B518 + 16);
  v50 = v44;

  v49(v31, v48, v47);
  v51 = *(v31 + 16);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v52 = v68[1];
  v52(v40, v42);
  v52(v39, v42);
  v52(v69, v42);
  swift_beginAccess();
  v53 = *(v66 + 16);
  *(v66 + 16) = v31;
}

uint64_t sub_1001B4E0C()
{
  result = type metadata accessor for DispatchTimeInterval();
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

BOOL sub_1001B4ED4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1001B4F04(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (byte_1004938DA[v6] != byte_1004938DA[a1]);
  return v4 != 0;
}

__int16 *CountryCode.unknown.unsafeMutableAddressor()
{
  if (qword_10058A898 != -1)
  {
    swift_once();
  }

  return &static CountryCode.unknown;
}

uint64_t CountryCode.code.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100483520;
  *(v4 + 32) = v1;
  *(v4 + 33) = v2;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960);
  v5 = String.init<A>(bytes:encoding:)();
  v7 = v6;

  if (v7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B50DC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t CountryCode.data.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100483520;
  *(v3 + 32) = v1;
  *(v3 + 33) = v2;
  v4 = sub_10002D874(v3);

  return v4;
}

uint64_t CountryCode.description.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (qword_10058A8A8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.austria == v1 && HIBYTE(static CountryCode.austria) == v2)
  {
    v7 = 0x697274737541;
    return v7 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A8B0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.belgium == v1 && HIBYTE(static CountryCode.belgium) == v2)
  {
    return 0x6D7569676C6542;
  }

  if (qword_10058A8B8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.czechRepublic == v1 && HIBYTE(static CountryCode.czechRepublic) == v2)
  {
    return 0x6552206863657A43;
  }

  if (qword_10058A8C0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.cyprus == v1 && HIBYTE(static CountryCode.cyprus) == v2)
  {
    return 0x737572707943;
  }

  if (qword_10058A8C8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.denmark == v1 && HIBYTE(static CountryCode.denmark) == v2)
  {
    return 0x6B72616D6E6544;
  }

  if (qword_10058A8D0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.estonia == v1 && HIBYTE(static CountryCode.estonia) == v2)
  {
    v8 = 1869902661;
LABEL_34:
    v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x696E00000000;
    return v7 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A8D8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.finland == v1 && HIBYTE(static CountryCode.finland) == v2)
  {
    return 0x646E616C6E6946;
  }

  if (qword_10058A8E0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.france == v1 && HIBYTE(static CountryCode.france) == v2)
  {
    return 0x65636E617246;
  }

  if (qword_10058A8E8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.germany == v1 && HIBYTE(static CountryCode.germany) == v2)
  {
    return 0x796E616D726547;
  }

  if (qword_10058A8F0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.greece == v1 && HIBYTE(static CountryCode.greece) == v2)
  {
    return 0x656365657247;
  }

  if (qword_10058A8F8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.hungary == v1 && HIBYTE(static CountryCode.hungary) == v2)
  {
    return 0x797261676E7548;
  }

  if (qword_10058A900 != -1)
  {
    swift_once();
  }

  if (static CountryCode.italy == v1 && HIBYTE(static CountryCode.italy) == v2)
  {
    return 0x796C617449;
  }

  if (qword_10058A908 != -1)
  {
    swift_once();
  }

  if (static CountryCode.ireland == v1 && HIBYTE(static CountryCode.ireland) == v2)
  {
    return 0x646E616C657249;
  }

  if (qword_10058A910 != -1)
  {
    swift_once();
  }

  if (static CountryCode.latvia == v1 && HIBYTE(static CountryCode.latvia) == v2)
  {
    return 0x61697674614CLL;
  }

  if (qword_10058A918 != -1)
  {
    swift_once();
  }

  if (static CountryCode.lithuania == v1 && HIBYTE(static CountryCode.lithuania) == v2)
  {
    return 0x696E61756874694CLL;
  }

  if (qword_10058A920 != -1)
  {
    swift_once();
  }

  if (static CountryCode.luxembourg == v1 && HIBYTE(static CountryCode.luxembourg) == v2)
  {
    return 0x756F626D6578754CLL;
  }

  if (qword_10058A928 != -1)
  {
    swift_once();
  }

  if (static CountryCode.malta == v1 && HIBYTE(static CountryCode.malta) == v2)
  {
    return 0x61746C614DLL;
  }

  if (qword_10058A930 != -1)
  {
    swift_once();
  }

  if (static CountryCode.netherlands == v1 && HIBYTE(static CountryCode.netherlands) == v2)
  {
    return 0x616C72656874654ELL;
  }

  if (qword_10058A938 != -1)
  {
    swift_once();
  }

  if (static CountryCode.poland == v1 && HIBYTE(static CountryCode.poland) == v2)
  {
    return 0x646E616C6F50;
  }

  if (qword_10058A940 != -1)
  {
    swift_once();
  }

  if (static CountryCode.portugal == v1 && HIBYTE(static CountryCode.portugal) == v2)
  {
    return 0x6C61677574726F50;
  }

  if (qword_10058A948 != -1)
  {
    swift_once();
  }

  if (static CountryCode.slovakRepublic == v1 && HIBYTE(static CountryCode.slovakRepublic) == v2)
  {
    return 0x52206B61766F6C53;
  }

  if (qword_10058A950 != -1)
  {
    swift_once();
  }

  if (static CountryCode.slovenia == v1 && HIBYTE(static CountryCode.slovenia) == v2)
  {
    return 0x61696E65766F6C53;
  }

  if (qword_10058A958 != -1)
  {
    swift_once();
  }

  if (static CountryCode.spain == v1 && HIBYTE(static CountryCode.spain) == v2)
  {
    return 0x6E69617053;
  }

  if (qword_10058A960 != -1)
  {
    swift_once();
  }

  if (static CountryCode.sweden == v1 && HIBYTE(static CountryCode.sweden) == v2)
  {
    return 0x6E6564657753;
  }

  if (qword_10058A968 != -1)
  {
    swift_once();
  }

  if (static CountryCode.uk == v1 && HIBYTE(static CountryCode.uk) == v2)
  {
    return 19285;
  }

  if (qword_10058A970 != -1)
  {
    swift_once();
  }

  if (static CountryCode.iceland == v1 && HIBYTE(static CountryCode.iceland) == v2)
  {
    return 0x646E616C656349;
  }

  if (qword_10058A978 != -1)
  {
    swift_once();
  }

  if (static CountryCode.liechthenstein == v1 && HIBYTE(static CountryCode.liechthenstein) == v2)
  {
    return 0x656874686365694CLL;
  }

  if (qword_10058A980 != -1)
  {
    swift_once();
  }

  if (static CountryCode.norway == v1 && HIBYTE(static CountryCode.norway) == v2)
  {
    return 0x796177726F4ELL;
  }

  if (qword_10058A988 != -1)
  {
    swift_once();
  }

  if (static CountryCode.switzerland == v1 && HIBYTE(static CountryCode.switzerland) == v2)
  {
    return 0x6C72657A74697753;
  }

  if (qword_10058A990 != -1)
  {
    swift_once();
  }

  if (static CountryCode.bulgaria == v1 && HIBYTE(static CountryCode.bulgaria) == v2)
  {
    return 0x61697261676C7542;
  }

  if (qword_10058A998 != -1)
  {
    swift_once();
  }

  if (static CountryCode.turkey == v1 && HIBYTE(static CountryCode.turkey) == v2)
  {
    return 0x79656B727554;
  }

  if (qword_10058A9A0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.romania == v1 && HIBYTE(static CountryCode.romania) == v2)
  {
    v8 = 1634561874;
    goto LABEL_34;
  }

  if (qword_10058A9A8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.russia == v1 && HIBYTE(static CountryCode.russia) == v2)
  {
    return 0x616973737552;
  }

  if (qword_10058A9B0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.croatia == v1 && HIBYTE(static CountryCode.croatia) == v2)
  {
    v7 = 0x6974616F7243;
    return v7 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
  }

  if (qword_10058A9B8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.serbia == v1 && HIBYTE(static CountryCode.serbia) == v2)
  {
    return 0x616962726553;
  }

  if (qword_10058A9C0 != -1)
  {
    swift_once();
  }

  if (static CountryCode.southAfrica == v1 && HIBYTE(static CountryCode.southAfrica) == v2)
  {
    return 0x6641206874756F53;
  }

  if (qword_10058A9C8 != -1)
  {
    swift_once();
  }

  if (static CountryCode.usa == v1 && byte_10059B595 == v2)
  {
    return 0xD000000000000018;
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100483520;
  *(v9 + 32) = v1;
  *(v9 + 33) = v2;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_10000CADC(&qword_10058D470, &qword_10058D358, &unk_100486960);
  v10 = String.init<A>(bytes:encoding:)();
  v12 = v11;

  if (v12)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

__int16 *CountryCode.austria.unsafeMutableAddressor()
{
  if (qword_10058A8A8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.austria;
}

__int16 *CountryCode.belgium.unsafeMutableAddressor()
{
  if (qword_10058A8B0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.belgium;
}

__int16 *CountryCode.czechRepublic.unsafeMutableAddressor()
{
  if (qword_10058A8B8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.czechRepublic;
}

__int16 *CountryCode.cyprus.unsafeMutableAddressor()
{
  if (qword_10058A8C0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.cyprus;
}

__int16 *CountryCode.denmark.unsafeMutableAddressor()
{
  if (qword_10058A8C8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.denmark;
}

__int16 *CountryCode.estonia.unsafeMutableAddressor()
{
  if (qword_10058A8D0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.estonia;
}

__int16 *CountryCode.finland.unsafeMutableAddressor()
{
  if (qword_10058A8D8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.finland;
}

__int16 *CountryCode.france.unsafeMutableAddressor()
{
  if (qword_10058A8E0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.france;
}

__int16 *CountryCode.germany.unsafeMutableAddressor()
{
  if (qword_10058A8E8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.germany;
}

__int16 *CountryCode.greece.unsafeMutableAddressor()
{
  if (qword_10058A8F0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.greece;
}

__int16 *CountryCode.hungary.unsafeMutableAddressor()
{
  if (qword_10058A8F8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.hungary;
}

__int16 *CountryCode.italy.unsafeMutableAddressor()
{
  if (qword_10058A900 != -1)
  {
    swift_once();
  }

  return &static CountryCode.italy;
}

__int16 *CountryCode.ireland.unsafeMutableAddressor()
{
  if (qword_10058A908 != -1)
  {
    swift_once();
  }

  return &static CountryCode.ireland;
}

__int16 *CountryCode.latvia.unsafeMutableAddressor()
{
  if (qword_10058A910 != -1)
  {
    swift_once();
  }

  return &static CountryCode.latvia;
}

__int16 *CountryCode.lithuania.unsafeMutableAddressor()
{
  if (qword_10058A918 != -1)
  {
    swift_once();
  }

  return &static CountryCode.lithuania;
}

__int16 *CountryCode.luxembourg.unsafeMutableAddressor()
{
  if (qword_10058A920 != -1)
  {
    swift_once();
  }

  return &static CountryCode.luxembourg;
}

__int16 *CountryCode.malta.unsafeMutableAddressor()
{
  if (qword_10058A928 != -1)
  {
    swift_once();
  }

  return &static CountryCode.malta;
}

__int16 *CountryCode.netherlands.unsafeMutableAddressor()
{
  if (qword_10058A930 != -1)
  {
    swift_once();
  }

  return &static CountryCode.netherlands;
}

__int16 *CountryCode.poland.unsafeMutableAddressor()
{
  if (qword_10058A938 != -1)
  {
    swift_once();
  }

  return &static CountryCode.poland;
}

__int16 *CountryCode.portugal.unsafeMutableAddressor()
{
  if (qword_10058A940 != -1)
  {
    swift_once();
  }

  return &static CountryCode.portugal;
}

__int16 *CountryCode.slovakRepublic.unsafeMutableAddressor()
{
  if (qword_10058A948 != -1)
  {
    swift_once();
  }

  return &static CountryCode.slovakRepublic;
}

__int16 *CountryCode.slovenia.unsafeMutableAddressor()
{
  if (qword_10058A950 != -1)
  {
    swift_once();
  }

  return &static CountryCode.slovenia;
}

__int16 *CountryCode.spain.unsafeMutableAddressor()
{
  if (qword_10058A958 != -1)
  {
    swift_once();
  }

  return &static CountryCode.spain;
}

__int16 *CountryCode.sweden.unsafeMutableAddressor()
{
  if (qword_10058A960 != -1)
  {
    swift_once();
  }

  return &static CountryCode.sweden;
}

__int16 *CountryCode.uk.unsafeMutableAddressor()
{
  if (qword_10058A968 != -1)
  {
    swift_once();
  }

  return &static CountryCode.uk;
}

__int16 *CountryCode.iceland.unsafeMutableAddressor()
{
  if (qword_10058A970 != -1)
  {
    swift_once();
  }

  return &static CountryCode.iceland;
}

__int16 *CountryCode.liechthenstein.unsafeMutableAddressor()
{
  if (qword_10058A978 != -1)
  {
    swift_once();
  }

  return &static CountryCode.liechthenstein;
}

__int16 *CountryCode.norway.unsafeMutableAddressor()
{
  if (qword_10058A980 != -1)
  {
    swift_once();
  }

  return &static CountryCode.norway;
}

__int16 *CountryCode.switzerland.unsafeMutableAddressor()
{
  if (qword_10058A988 != -1)
  {
    swift_once();
  }

  return &static CountryCode.switzerland;
}

__int16 *CountryCode.bulgaria.unsafeMutableAddressor()
{
  if (qword_10058A990 != -1)
  {
    swift_once();
  }

  return &static CountryCode.bulgaria;
}

__int16 *CountryCode.turkey.unsafeMutableAddressor()
{
  if (qword_10058A998 != -1)
  {
    swift_once();
  }

  return &static CountryCode.turkey;
}

__int16 *CountryCode.romania.unsafeMutableAddressor()
{
  if (qword_10058A9A0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.romania;
}

__int16 *CountryCode.russia.unsafeMutableAddressor()
{
  if (qword_10058A9A8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.russia;
}

__int16 *CountryCode.croatia.unsafeMutableAddressor()
{
  if (qword_10058A9B0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.croatia;
}

__int16 *CountryCode.serbia.unsafeMutableAddressor()
{
  if (qword_10058A9B8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.serbia;
}

__int16 *CountryCode.southAfrica.unsafeMutableAddressor()
{
  if (qword_10058A9C0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.southAfrica;
}

char *CountryCode.usa.unsafeMutableAddressor()
{
  if (qword_10058A9C8 != -1)
  {
    swift_once();
  }

  return &static CountryCode.usa;
}

uint64_t CountryCode.customMirror.getter(__int16 a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v13 = a1;
  v12 = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

CoreP2P::CountryCode __swiftcall CountryCode.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v3 = String.count.getter();
  if (v3 != 2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return v3;
  }

  LOWORD(v3) = sub_100170360(countAndFlagsBits, object);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = Character.asciiValue.getter();

  if ((v5 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  LOWORD(v3) = sub_1001B50DC(countAndFlagsBits, object);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = Character.asciiValue.getter();

  if ((v7 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  LOWORD(v3) = v5 | (v7 << 8);
  return v3;
}

__int16 *CountryCode.unknownETSI.unsafeMutableAddressor()
{
  if (qword_10058A8A0 != -1)
  {
    swift_once();
  }

  return &static CountryCode.unknownETSI;
}

uint64_t sub_1001B7988(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = String.count.getter();
  if (result == 2)
  {
    String.subscript.getter();
    v8 = Character.asciiValue.getter();

    if ((v8 & 0x100) == 0)
    {
      result = sub_1001B50DC(a2, 0xE200000000000000);
      if (v9)
      {
        v10 = Character.asciiValue.getter();

        if ((v10 & 0x100) == 0)
        {
          *a3 = v8;
          *a4 = v10;
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B7A5C(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a2 = v4;
    a3 = v5;
  }

  return *a2 | (*a3 << 8);
}

BOOL CountryCode.isETSI.getter(__int16 a1)
{
  if (qword_10058A9D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = off_10058FD60 + 33;
  v2 = *(off_10058FD60 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v4 = *(v1 - 1);
    v1 += 2;
  }

  while (v4 != a1 || v3 != HIBYTE(a1));
  return v2 != 0;
}

uint64_t sub_1001B7B4C()
{
  sub_10005DC58(&qword_10058FDB0, &qword_1004938D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1004935B0;
  if (qword_10058A8A0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 32) = static CountryCode.unknownETSI;
  if (qword_10058A8A8 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  *(result + 34) = static CountryCode.austria;
  if (qword_10058A8B0 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  *(result + 36) = static CountryCode.belgium;
  if (qword_10058A8B8 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  *(result + 38) = static CountryCode.czechRepublic;
  if (qword_10058A8C0 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  *(result + 40) = static CountryCode.cyprus;
  if (qword_10058A8C8 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  *(result + 42) = static CountryCode.denmark;
  if (qword_10058A8D0 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  *(result + 44) = static CountryCode.estonia;
  if (qword_10058A8D8 != -1)
  {
    v8 = result;
    swift_once();
    result = v8;
  }

  *(result + 46) = static CountryCode.finland;
  if (qword_10058A8E0 != -1)
  {
    v9 = result;
    swift_once();
    result = v9;
  }

  *(result + 48) = static CountryCode.france;
  if (qword_10058A8E8 != -1)
  {
    v10 = result;
    swift_once();
    result = v10;
  }

  *(result + 50) = static CountryCode.germany;
  if (qword_10058A8F0 != -1)
  {
    v11 = result;
    swift_once();
    result = v11;
  }

  *(result + 52) = static CountryCode.greece;
  if (qword_10058A8F8 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  *(result + 54) = static CountryCode.hungary;
  if (qword_10058A900 != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  *(result + 56) = static CountryCode.italy;
  if (qword_10058A908 != -1)
  {
    v14 = result;
    swift_once();
    result = v14;
  }

  *(result + 58) = static CountryCode.ireland;
  if (qword_10058A910 != -1)
  {
    v15 = result;
    swift_once();
    result = v15;
  }

  *(result + 60) = static CountryCode.latvia;
  if (qword_10058A918 != -1)
  {
    v16 = result;
    swift_once();
    result = v16;
  }

  *(result + 62) = static CountryCode.lithuania;
  if (qword_10058A920 != -1)
  {
    v17 = result;
    swift_once();
    result = v17;
  }

  *(result + 64) = static CountryCode.luxembourg;
  if (qword_10058A928 != -1)
  {
    v18 = result;
    swift_once();
    result = v18;
  }

  *(result + 66) = static CountryCode.malta;
  if (qword_10058A930 != -1)
  {
    v19 = result;
    swift_once();
    result = v19;
  }

  *(result + 68) = static CountryCode.netherlands;
  if (qword_10058A938 != -1)
  {
    v20 = result;
    swift_once();
    result = v20;
  }

  *(result + 70) = static CountryCode.poland;
  if (qword_10058A940 != -1)
  {
    v21 = result;
    swift_once();
    result = v21;
  }

  *(result + 72) = static CountryCode.portugal;
  if (qword_10058A948 != -1)
  {
    v22 = result;
    swift_once();
    result = v22;
  }

  *(result + 74) = static CountryCode.slovakRepublic;
  if (qword_10058A950 != -1)
  {
    v23 = result;
    swift_once();
    result = v23;
  }

  *(result + 76) = static CountryCode.slovenia;
  if (qword_10058A958 != -1)
  {
    v24 = result;
    swift_once();
    result = v24;
  }

  *(result + 78) = static CountryCode.spain;
  if (qword_10058A960 != -1)
  {
    v25 = result;
    swift_once();
    result = v25;
  }

  *(result + 80) = static CountryCode.sweden;
  if (qword_10058A968 != -1)
  {
    v26 = result;
    swift_once();
    result = v26;
  }

  *(result + 82) = static CountryCode.uk;
  if (qword_10058A970 != -1)
  {
    v27 = result;
    swift_once();
    result = v27;
  }

  *(result + 84) = static CountryCode.iceland;
  if (qword_10058A978 != -1)
  {
    v28 = result;
    swift_once();
    result = v28;
  }

  *(result + 86) = static CountryCode.liechthenstein;
  if (qword_10058A980 != -1)
  {
    v29 = result;
    swift_once();
    result = v29;
  }

  *(result + 88) = static CountryCode.norway;
  if (qword_10058A988 != -1)
  {
    v30 = result;
    swift_once();
    result = v30;
  }

  *(result + 90) = static CountryCode.switzerland;
  if (qword_10058A990 != -1)
  {
    v31 = result;
    swift_once();
    result = v31;
  }

  *(result + 92) = static CountryCode.bulgaria;
  if (qword_10058A998 != -1)
  {
    v32 = result;
    swift_once();
    result = v32;
  }

  *(result + 94) = static CountryCode.turkey;
  if (qword_10058A9A0 != -1)
  {
    v33 = result;
    swift_once();
    result = v33;
  }

  *(result + 96) = static CountryCode.romania;
  if (qword_10058A9A8 != -1)
  {
    v34 = result;
    swift_once();
    result = v34;
  }

  *(result + 98) = static CountryCode.russia;
  if (qword_10058A9B0 != -1)
  {
    v35 = result;
    swift_once();
    result = v35;
  }

  *(result + 100) = static CountryCode.croatia;
  if (qword_10058A9B8 != -1)
  {
    v36 = result;
    swift_once();
    result = v36;
  }

  *(result + 102) = static CountryCode.serbia;
  if (qword_10058A9C0 != -1)
  {
    v37 = result;
    swift_once();
    result = v37;
  }

  *(result + 104) = static CountryCode.southAfrica;
  off_10058FD60 = result;
  return result;
}

uint64_t sub_1001B8698()
{
  if (*v0)
  {
    result = 0x7942646E6F636573;
  }

  else
  {
    result = 0x7479427473726966;
  }

  *v0;
  return result;
}

uint64_t sub_1001B86DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7479427473726966 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7942646E6F636573 && a2 == 0xEA00000000006574)
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

uint64_t sub_1001B87C8(uint64_t a1)
{
  v2 = sub_1001B8CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8804(uint64_t a1)
{
  v2 = sub_1001B8CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CountryCode.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_10058FD68, &qword_1004935C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001B8CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001B89D8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1001B8D18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001B8A28()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v12 = *v0;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001B8C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = String.count.getter();
  if (result == 2)
  {
    result = sub_100170360(v4, v3);
    if (v6)
    {
      v7 = Character.asciiValue.getter();

      if ((v7 & 0x100) == 0)
      {
        result = sub_1001B50DC(v4, v3);
        if (v8)
        {
          v9 = Character.asciiValue.getter();

          if ((v9 & 0x100) == 0)
          {

            *a2 = v7;
            a2[1] = v9;
            return result;
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001B8CC4()
{
  result = qword_10058FD70;
  if (!qword_10058FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD70);
  }

  return result;
}

uint64_t sub_1001B8D18(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_10058FDA8, &qword_1004938C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-v7];
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001B8CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v13[15] = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[14] = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100002A00(a1);
    return v10 | (v11 << 8);
  }

  return v2;
}

unint64_t sub_1001B8EC4()
{
  result = qword_10058FD78;
  if (!qword_10058FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD78);
  }

  return result;
}

unint64_t sub_1001B8F1C()
{
  result = qword_10058FD80;
  if (!qword_10058FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD80);
  }

  return result;
}

unint64_t sub_1001B8F80()
{
  result = qword_10058FD88;
  if (!qword_10058FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD88);
  }

  return result;
}

unint64_t sub_1001B9010()
{
  result = qword_10058FD90;
  if (!qword_10058FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD90);
  }

  return result;
}

unint64_t sub_1001B9068()
{
  result = qword_10058FD98;
  if (!qword_10058FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FD98);
  }

  return result;
}

unint64_t sub_1001B90C0()
{
  result = qword_10058FDA0;
  if (!qword_10058FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FDA0);
  }

  return result;
}

void *sub_1001B9118(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000DD514(a1[2], 0);
  v4 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  v5 = sub_1000DD9A8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_1000E290C();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1001B91E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10002A440(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196404();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v22 = *(v15 - 8);
    sub_1001D6B5C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for NANPairedDeviceSharedAssociation);
    sub_100193868(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t AppleKeychain.__allocating_init(accessGroup:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AppleKeychain.init(accessGroup:view:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_1001B93E4()
{
  v1 = 0;
  v2 = v0[1];
  v3 = v2 + 56;
  do
  {
    if (v2 && *(v2 + 16) && (v5 = *(v2 + 40), v6 = static Hasher._hash(seed:_:)(), v7 = -1 << *(v2 + 32), v8 = v6 & ~v7, ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      while (*(*(v2 + 48) + 8 * v8) != v1)
      {
        v8 = (v8 + 1) & v9;
        if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v10 = *v0;
      if (!*(*v0 + 16) || (v11 = *(v10 + 40), v12 = static Hasher._hash(seed:_:)(), v13 = -1 << *(v10 + 32), v14 = v12 & ~v13, ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0))
      {
LABEL_14:
        sub_100159BA0(&v17, v1);
        return v1;
      }

      v15 = ~v13;
      while (*(*(v10 + 48) + 8 * v14) != v1)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  while (!__CFADD__(v1++, 1));
  return 0;
}

uint64_t sub_1001B9528()
{
  v1 = 0;
  v2 = v0[1];
  v3 = v2 + 56;
  if (v2)
  {
    goto LABEL_2;
  }

LABEL_7:
  v9 = *v0;
  if (*(*v0 + 16) && (v10 = *(v9 + 40), v11 = static Hasher._hash(seed:bytes:count:)(), v12 = -1 << *(v9 + 32), v13 = v11 & ~v12, ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
  {
    v14 = ~v12;
    while (v1 != *(*(v9 + 48) + v13))
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    while (v1 != 255)
    {
      ++v1;
      if (!v2)
      {
        goto LABEL_7;
      }

LABEL_2:
      if (!*(v2 + 16))
      {
        goto LABEL_7;
      }

      v4 = *(v2 + 40);
      v5 = static Hasher._hash(seed:bytes:count:)();
      v6 = -1 << *(v2 + 32);
      v7 = v5 & ~v6;
      if (((*(v3 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }

      v8 = ~v6;
      while (v1 != *(*(v2 + 48) + v7))
      {
        v7 = (v7 + 1) & v8;
        if (((*(v3 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    LOBYTE(v1) = 0;
    v15 = 1;
  }

  else
  {
LABEL_16:
    sub_10015A268(v17, v1);
    v15 = 0;
  }

  return v1 | (v15 << 8);
}

uint64_t sub_1001B9684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5 + *(type metadata accessor for LongTermPairingKeys(0) + 20);
  if ((*(a5 + 128))(v14, a2, a3, a4, a5))
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 16))(v13, v14, v15);
    v16 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
    v17 = type metadata accessor for SymmetricKey();
    (*(*(v17 - 8) + 16))(&v13[v16], v14 + v16, v17);
    v18 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
    v19 = &v13[v10[5]];
    v20 = v14 + *(v18 + 20);
    P256.Signing.PrivateKey.publicKey.getter();
    v21 = &v13[v10[6]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = v10[7];
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
    v24 = (*(a5 + 136))(v13, a2, a3, 1, a4, a5);
    sub_1001D46E4(v13, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1001B98B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a3;
  v76 = a6;
  v89 = type metadata accessor for UUID();
  v79 = *(v89 - 8);
  v10 = *(v79 + 64);
  __chkstk_darwin();
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  v12 = *(v84 + 64);
  __chkstk_darwin();
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v71 - v14;
  v15 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_10005DC58(&qword_10058FEC8, &qword_100493978) - 8) + 64);
  __chkstk_darwin();
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v71 - v23;
  v77 = type metadata accessor for LongTermPairingKeys(0);
  v75 = *(v77 - 8);
  v25 = *(v75 + 64);
  __chkstk_darwin();
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v28 = *(a5 + 120);
  v83 = a2;
  v78 = a1;
  v29 = a4;
  v30 = a4;
  v31 = a5;
  v32 = v28(v24, a2, v86, v30, a5);
  sub_100012400(v24, v22, &qword_10058FEC8, &qword_100493978);
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {

    (*(*(v29 - 8) + 8))(v78, v29);
    sub_100016290(v24, &qword_10058FEC8, &qword_100493978);
    sub_100016290(v22, &qword_10058FEC8, &qword_100493978);
    v33 = type metadata accessor for Logger();
    (*(*(v33 - 8) + 8))(v27, v33);
    return (*(v75 + 56))(v76, 1, 1, v77);
  }

  sub_1001D6B5C(v22, v19, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v35 = v77;
  sub_1001D45C0(v19, &v27[*(v77 + 20)], type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v91[3] = v29;
  v91[4] = v31;
  v36 = sub_1000297D4(v91);
  v72 = *(v29 - 8);
  v37 = *(v72 + 16);
  v74 = v29;
  v37(v36, v78, v29);
  type metadata accessor for LongTermPairingKeys.PairedDevices();
  swift_allocObject();
  v38 = sub_1001BF7F4(v83, v86, v91);
  v39 = *(v35 + 24);
  v73 = v27;
  *&v27[v39] = v38;
  v40 = v85;
  v41 = v24;
  v83 = *(v32 + 16);
  if (!v83)
  {
LABEL_18:

    (*(v72 + 8))(v78, v74);
    sub_1001D46E4(v19, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    sub_100016290(v41, &qword_10058FEC8, &qword_100493978);
    v69 = v73;
    v70 = v76;
    sub_1001D45C0(v73, v76, type metadata accessor for LongTermPairingKeys);
    (*(v75 + 56))(v70, 0, 1, v77);
    return sub_1001D46E4(v69, type metadata accessor for LongTermPairingKeys);
  }

  v42 = v38;
  v43 = 0;
  v82 = v32 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
  v86 = (v79 + 16);
  v80 = v32;
  v81 = (v79 + 8);
  while (v43 < *(v32 + 16))
  {
    v45 = v19;
    v46 = v41;
    v47 = *(v84 + 72);
    v48 = v87;
    sub_1001D45C0(v82 + v47 * v43, v87, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v49 = *v86;
    (*v86)(v40, v48, v89);
    swift_beginAccess();
    sub_1001D45C0(v48, v88, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v50 = *(v42 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v42 + 16);
    v52 = v90;
    *(v42 + 16) = 0x8000000000000000;
    v53 = sub_10002A440(v40);
    v55 = v52[2];
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      goto LABEL_21;
    }

    v59 = v54;
    if (v52[3] < v58)
    {
      sub_10018FDE8(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_10002A440(v40);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v61 = v90;
      if (v59)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v68 = v53;
    sub_100196DF0();
    v53 = v68;
    v61 = v90;
    if (v59)
    {
LABEL_5:
      sub_1001D7894(v88, v61[7] + v53 * v47, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      (*v81)(v40, v89);
      goto LABEL_6;
    }

LABEL_14:
    v61[(v53 >> 6) + 8] |= 1 << v53;
    v62 = v79;
    v63 = v53;
    v64 = v89;
    v49(v61[6] + *(v79 + 72) * v53, v85, v89);
    sub_1001D6B5C(v88, v61[7] + v63 * v47, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v65 = *(v62 + 8);
    v40 = v85;
    v65(v85, v64);
    v66 = v61[2];
    v57 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v57)
    {
      goto LABEL_22;
    }

    v61[2] = v67;
LABEL_6:
    ++v43;
    v44 = *(v42 + 16);
    *(v42 + 16) = v61;

    swift_endAccess();
    sub_1001D46E4(v87, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v41 = v46;
    v19 = v45;
    v32 = v80;
    if (v83 == v43)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t LongTermPairingKeys.init(myIdentity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Logger.init(subsystem:category:)();
  v4 = type metadata accessor for LongTermPairingKeys(0);
  sub_1001D45C0(a1, a2 + *(v4 + 20), type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  type metadata accessor for LongTermPairingKeys.PairedDevices();
  v5 = swift_allocObject();
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  *(v5 + 88) = 1;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  result = sub_1001D46E4(a1, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  *(a2 + *(v4 + 24)) = v5;
  return result;
}

uint64_t LongTermPairingKeys.PrivateIdentity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymmetricKeySize();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  if (qword_10058A9E0 != -1)
  {
    swift_once();
  }

  v7 = sub_100037644(v2, qword_10058FDC8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1 + *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  SymmetricKey.init(size:)();
  v9 = a1 + *(type metadata accessor for LongTermPairingKeys.PrivateIdentity(0) + 20);
  return P256.Signing.PrivateKey.init(compactRepresentable:)();
}

uint64_t LongTermPairingKeys.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for LongTermPairingKeys(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  sub_1001D45C0(v1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys);
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100480F40;
  strcpy((v13 + 32), "pairedDevices");
  *(v13 + 46) = -4864;
  v14 = *(v1 + *(v10 + 24));
  *(v13 + 72) = type metadata accessor for LongTermPairingKeys.PairedDevices();
  *(v13 + 48) = v14;
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001BA620()
{
  result = sub_10016FD40(0xD000000000000020, 0x80000001004BAED0);
  qword_10058FDB8 = result;
  unk_10058FDC0 = v1;
  return result;
}

uint64_t sub_1001BA65C()
{
  v0 = type metadata accessor for SymmetricKeySize();
  sub_100068888(v0, qword_10058FDC8);
  sub_100037644(v0, qword_10058FDC8);
  return static SymmetricKeySize.bits256.getter();
}

uint64_t sub_1001BA6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = type metadata accessor for SymmetricKey();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LongTermPairingKeys.Identity(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  v15 = v45;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v15)
  {
    return sub_100002A00(a1);
  }

  v37 = v9;
  v45 = v5;
  v17 = v40;
  v16 = v41;
  v18 = v44;
  sub_100031694(v43, v44);
  v19 = UnkeyedDecodingContainer.decodeData(with:)(16, v18);
  v21 = v20;
  sub_1002A5C4C(v19, v20, v42);
  sub_1000124C8(v19, v21);
  v23 = v37;
  UUID.init(uuid:)();
  v24 = *(v39 + 32);
  v36 = v13;
  v24(v13, v23, v6);
  if (qword_10058A9E0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for SymmetricKeySize();
  sub_100037644(v25, qword_10058FDC8);
  v26 = SymmetricKeySize.bitCount.getter() / 8;
  v27 = v44;
  sub_100031694(v43, v44);
  v28 = UnkeyedDecodingContainer.decodeData(with:)(v26, v27);
  v29 = v16;
  v30 = v38;
  v31 = v45;
  v42[0] = v28;
  v42[1] = v32;
  SymmetricKey.init<A>(data:)();
  v33 = *(v10 + 20);
  v34 = v36;
  (*(v30 + 32))(&v36[v33], v31, v17);
  sub_100002A00(v43);
  sub_1001D45C0(v34, v29, type metadata accessor for LongTermPairingKeys.Identity);
  sub_100002A00(a1);
  return sub_1001D46E4(v34, type metadata accessor for LongTermPairingKeys.Identity);
}

uint64_t sub_1001BAA9C(void *a1)
{
  v1 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = sub_1001BAB54();
  v5 = v2;
  sub_100031694(v6, v6[3]);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v4, v5);
  return sub_100002A00(v6);
}

unint64_t sub_1001BAB54()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v19 = UUID.uuid.getter();
  v20 = v7;
  v8 = sub_10004F3B0(&v19, v21);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = v1 + *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v12 = v19;
  v13 = v20;
  v22 = v8;
  v23 = v10;
  v21[1] = &type metadata for Data;
  v21[2] = &protocol witness table for Data;
  v14 = sub_100029B34(&v19, &type metadata for Data);
  v15 = *v14;
  v16 = v14[1];
  sub_10000AB0C(v8, v10);
  sub_10000AB0C(v12, v13);
  sub_100178A18(v15, v16);
  sub_1000124C8(v12, v13);
  sub_1000124C8(v8, v10);
  sub_100002A00(&v19);
  return v22;
}

uint64_t LongTermPairingKeys.PrivateIdentity.publicIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  v5 = type metadata accessor for SymmetricKey();
  (*(*(v5 - 8) + 16))(a1 + v4, v1 + v4, v5);
  v6 = *(type metadata accessor for LongTermPairingKeys.PrivateIdentity(0) + 20);
  v7 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v8 = a1 + v7[5];
  P256.Signing.PrivateKey.publicKey.getter();
  v9 = (a1 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v7[7];
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

uint64_t sub_1001BAEE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(v8 + 16))(v11, v3 + *(v12 + 20), v7);
  if (qword_10058A9D8 != -1)
  {
    swift_once();
  }

  v13 = qword_10058FDB8;
  v14 = unk_10058FDC0;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
LABEL_12:
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v16) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v16 = v16;
    goto LABEL_12;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  v16 = BYTE6(a2);
LABEL_15:
  v35 = v8;
  v36 = v7;
  *&v37 = v16;
  v20 = sub_10004F3B0(&v37, &v37 + 8);
  v22 = v21;
  *&v40 = v13;
  *(&v40 + 1) = v14;
  v34 = v11;
  v38 = &type metadata for Data;
  v39 = &protocol witness table for Data;
  *&v37 = v20;
  *(&v37 + 1) = v21;
  v23 = sub_100029B34(&v37, &type metadata for Data);
  v24 = a3;
  v25 = *v23;
  v26 = v23[1];
  sub_10000AB0C(v13, v14);
  sub_10000AB0C(v20, v22);
  sub_100178A18(v25, v26);
  sub_1000124C8(v20, v22);
  sub_100002A00(&v37);
  v27 = v40;
  v41 = v40;
  v38 = &type metadata for Data;
  v39 = &protocol witness table for Data;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v28 = sub_100029B34(&v37, &type metadata for Data);
  v29 = *v28;
  v30 = v28[1];
  sub_10000AB0C(v27, *(&v27 + 1));
  sub_10000AB0C(a1, a2);
  sub_100178A18(v29, v30);
  sub_1000124C8(v27, *(&v27 + 1));
  sub_100002A00(&v37);
  v37 = v41;
  sub_1000BA0A4();
  v31 = v34;
  P256.Signing.PrivateKey.signature<A>(for:)();
  sub_1000124C8(v37, *(&v37 + 1));
  (*(v35 + 8))(v31, v36);
  v32 = type metadata accessor for P256.Signing.ECDSASignature();
  return (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
}

uint64_t sub_1001BB248()
{
  if (*v0)
  {
    result = 0x4B676E696E676973;
  }

  else
  {
    result = 0x797469746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1001BB288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B676E696E676973 && a2 == 0xEA00000000007965)
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

uint64_t sub_1001BB36C(uint64_t a1)
{
  v2 = sub_1001D4648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB3A8(uint64_t a1)
{
  v2 = sub_1001D4648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LongTermPairingKeys.PrivateIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for P256.Signing.PrivateKey();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LongTermPairingKeys.Identity(0);
  v7 = *(*(v30 - 8) + 64);
  __chkstk_darwin();
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10005DC58(&qword_10058FE08, &qword_100493910);
  v28 = *(v32 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin();
  v11 = &v25 - v10;
  v12 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001D4648();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v25 = a1;
  v17 = v15;
  v18 = v28;
  v19 = v29;
  v34 = 0;
  sub_1001D469C(&qword_10058FE18, type metadata accessor for LongTermPairingKeys.Identity);
  v20 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1001D6B5C(v20, v17, type metadata accessor for LongTermPairingKeys.Identity);
  v33 = 1;
  sub_1001D469C(&qword_10058FE20, &type metadata accessor for P256.Signing.PrivateKey);
  v21 = v6;
  v22 = v19;
  v23 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v11, v23);
  (*(v26 + 32))(v17 + *(v12 + 20), v21, v22);
  sub_1001D45C0(v17, v27, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  sub_100002A00(v25);
  return sub_1001D46E4(v17, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
}

unint64_t LongTermPairingKeys.PublicIdentity.rawRepresentation.getter()
{
  v1 = sub_1001BAB54();
  v3 = v2;
  v4 = v0 + *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) + 20);
  v5 = P256.Signing.PublicKey.rawRepresentation.getter();
  v7 = v6;
  v13 = v1;
  v14 = v3;
  v12[3] = &type metadata for Data;
  v12[4] = &protocol witness table for Data;
  v12[0] = v5;
  v12[1] = v6;
  v8 = sub_100029B34(v12, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_10000AB0C(v1, v3);
  sub_10000AB0C(v5, v7);
  sub_100178A18(v9, v10);
  sub_1000124C8(v5, v7);
  sub_1000124C8(v1, v3);
  sub_100002A00(v12);
  return v13;
}

uint64_t LongTermPairingKeys.PublicIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LongTermPairingKeys.Identity(0);
  v8 = *(*(v26 - 8) + 64);
  __chkstk_darwin();
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 24)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = *(v12 + 28);
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v30 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_100016290(&v14[v30], &qword_10058FE28, &unk_1004B2430);
  }

  else
  {
    v23 = v4;
    sub_100031694(v28, v29);
    sub_1001D469C(&qword_10058FE18, type metadata accessor for LongTermPairingKeys.Identity);
    v20 = v27;
    UnkeyedDecodingContainer.inferredDecode<A>()();
    sub_1001D6B5C(v20, v14, type metadata accessor for LongTermPairingKeys.Identity);
    sub_100031694(v28, v29);
    sub_1001D469C(&qword_10058FE30, &type metadata accessor for P256.Signing.PublicKey);
    v21 = v23;
    UnkeyedDecodingContainer.inferredDecode<A>()();
    (*(v24 + 32))(&v14[*(v10 + 20)], v7, v21);
    sub_100002A00(v28);
    sub_1001D45C0(v14, v25, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    sub_100002A00(a1);
    return sub_1001D46E4(v14, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  }
}

uint64_t sub_1001BBCE0(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = sub_1001BAB54();
  v8 = v7;
  v9 = *(a2(0) + 20);
  v10 = a3();
  v12 = v11;
  *&v20 = v6;
  *(&v20 + 1) = v8;
  v18 = &type metadata for Data;
  v19 = &protocol witness table for Data;
  v17[0] = v10;
  v17[1] = v11;
  v13 = sub_100029B34(v17, &type metadata for Data);
  v14 = *v13;
  v15 = v13[1];
  sub_10000AB0C(v6, v8);
  sub_10000AB0C(v10, v12);
  sub_100178A18(v14, v15);
  sub_1000124C8(v10, v12);
  sub_1000124C8(v6, v8);
  sub_100002A00(v17);
  *v17 = v20;
  sub_100031694(v21, v21[3]);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v17[0], v17[1]);
  return sub_100002A00(v21);
}

uint64_t LongTermPairingKeys.PublicIdentity.description.getter()
{
  v1 = (v0 + *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) + 24));
  if (v1[1])
  {
    v9 = *v1;
    v10 = v1[1];
    swift_bridgeObjectRetain_n();
    v2._countAndFlagsBits = 2108704;
    v2._object = 0xE300000000000000;
    String.append(_:)(v2);

    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  v4 = UUID.uuidString.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v3;
}

uint64_t LongTermPairingKeys.PublicIdentity.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v14 - v8;
  v10 = *(*(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8) + 64);
  __chkstk_darwin();
  sub_1001D45C0(v1, v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t sub_1001BC174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  (*(v8 + 16))(v11, v3 + *(v12 + 20), v7);
  if (qword_10058A9D8 != -1)
  {
    swift_once();
  }

  v13 = qword_10058FDB8;
  v14 = unk_10058FDC0;
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v18 = *(a2 + 16);
    v17 = *(a2 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
LABEL_12:
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v16) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
    }

    v16 = v16;
    goto LABEL_12;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  v16 = BYTE6(a3);
LABEL_15:
  *&v36 = v16;
  v20 = sub_10004F3B0(&v36, &v36 + 8);
  v22 = v21;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  v34 = v11;
  v33 = a1;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  *&v36 = v20;
  *(&v36 + 1) = v21;
  v23 = sub_100029B34(&v36, &type metadata for Data);
  v35 = v7;
  v25 = *v23;
  v24 = v23[1];
  sub_10000AB0C(v13, v14);
  sub_10000AB0C(v20, v22);
  sub_100178A18(v25, v24);
  sub_1000124C8(v20, v22);
  sub_100002A00(&v36);
  v27 = *(&v39 + 1);
  v26 = v39;
  v40 = v39;
  v37 = &type metadata for Data;
  v38 = &protocol witness table for Data;
  *&v36 = a2;
  *(&v36 + 1) = a3;
  v28 = sub_100029B34(&v36, &type metadata for Data);
  v29 = *v28;
  v30 = v28[1];
  sub_10000AB0C(v26, v27);
  sub_10000AB0C(a2, a3);
  sub_100178A18(v29, v30);
  sub_1000124C8(v26, v27);
  sub_100002A00(&v36);
  v36 = v40;
  sub_1000BA0A4();
  v31 = v34;
  LOBYTE(v27) = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
  sub_1000124C8(v36, *(&v36 + 1));
  (*(v8 + 8))(v31, v35);
  return v27 & 1;
}

uint64_t sub_1001BC49C(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v10 = v15 - v9;
  v11 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  sub_1001D45C0(v1, v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v15[1] = _swiftEmptyArrayStorage;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001BC6E4(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&qword_100590868, &qword_100493E68) - 8) + 64);
  __chkstk_darwin();
  v4 = v17 - v3;
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NANGenericServiceProtocol.packetData(for:)(1, a1);
  if (v11 >> 60 != 15)
  {
    v17[2] = result;
    v17[3] = v11;
    v12 = result;
    v13 = v11;
    v14 = *(type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0) + 24);
    v15 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_10000AB0C(v12, v13);
    sub_1000BA0A4();
    static AES.GCM.seal<A>(_:using:nonce:)();
    sub_100016290(v4, &qword_100590868, &qword_100493E68);
    v16 = AES.GCM.SealedBox.combined.getter();
    sub_100017554(v12, v13);
    sub_100017554(v12, v13);
    (*(v6 + 8))(v9, v5);
    return v16;
  }

  return result;
}

uint64_t sub_1001BC944(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1000124C8(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1001D469C(&qword_100590858, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_100029B34(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_10002D950(v15, v14, &v28);
  sub_100002A00(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t sub_1001BCC54(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v153 = a3;
  v156 = a2;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v142 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v126 - v7;
  v139 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v8 = *(*(v139 - 8) + 64);
  __chkstk_darwin();
  v143 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v140 = &v126 - v11;
  v12 = *(*(sub_10005DC58(&qword_100590868, &qword_100493E68) - 8) + 64);
  __chkstk_darwin();
  v148 = &v126 - v13;
  v146 = type metadata accessor for AES.GCM.SealedBox();
  v145 = *(v146 - 8);
  v14 = *(v145 + 64);
  __chkstk_darwin();
  v147 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v150 = *(v151 - 8);
  v16 = *(v150 + 64);
  __chkstk_darwin();
  v149 = &v126 - v17;
  v152 = type metadata accessor for P256.Signing.ECDSASignature();
  v154 = *(v152 - 8);
  v18 = *(v154 + 64);
  __chkstk_darwin();
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v155 = *(v21 - 8);
  v22 = *(v155 + 64);
  __chkstk_darwin();
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(sub_10005DC58(&qword_100590860, &qword_100493E60) - 8) + 64);
  __chkstk_darwin();
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v126 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin();
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  (*(v31 + 16))(v34, a1, v30);
  *&v162 = UUID.uuid.getter();
  *(&v162 + 1) = v36;
  v37 = sub_10004F3B0(&v162, v163);
  v38 = v34;
  v40 = v39;
  (*(v31 + 8))(v38, v30);
  v41 = v37;
  sub_10000AB0C(v37, v40);
  v157 = sub_1000D4CB4(v37, v40);
  v43 = v42;
  v132 = v24;
  v133 = v27;
  v134 = v29;
  v131 = v20;
  v135 = v35;
  v136 = v21;
  v138 = v41;
  v137 = v40;
  v44 = sub_100033AA8(_swiftEmptyArrayStorage);
  v45 = type metadata accessor for BinaryEncoder();
  v46 = swift_allocObject();
  v130 = xmmword_100480A90;
  *(v46 + 16) = xmmword_100480A90;
  *(v46 + 32) = v44;
  v164 = v45;
  v47 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v165 = v47;
  *&v162 = v46;

  v48 = v157;
  sub_100142A80(&v162, v157, v43);
  v128 = v47;
  v129 = v45;
  sub_1000124C8(v48, v43);
  sub_100002A00(&v162);
  swift_beginAccess();
  v50 = *(v46 + 16);
  v51 = *(v46 + 24);
  sub_10000AB0C(v50, v51);

  v52 = v132;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v53 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v55 = v54;
  (*(v155 + 8))(v52, v136);
  v56 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v58 = v57;
  v160 = v53;
  v161 = v55;
  v164 = &type metadata for Data;
  v165 = &protocol witness table for Data;
  *&v162 = v56;
  *(&v162 + 1) = v57;
  v59 = sub_100029B34(&v162, &type metadata for Data);
  v60 = *v59;
  v61 = v59[1];
  sub_10000AB0C(v53, v55);
  sub_10000AB0C(v56, v58);
  sub_100178A18(v60, v61);
  sub_1000124C8(v56, v58);
  sub_1000124C8(v53, v55);
  sub_100002A00(&v162);
  v62 = v160;
  v63 = v161;
  v64 = v134;
  sub_1001BAEE4(v160, v161, v134);
  sub_1000124C8(v62, v63);
  v65 = v133;
  sub_100012400(v64, v133, &qword_100590860, &qword_100493E60);
  v66 = v154;
  v67 = v152;
  if ((*(v154 + 48))(v65, 1, v152) == 1)
  {
    sub_100016290(v64, &qword_100590860, &qword_100493E60);
    v68 = v50;
    v69 = v51;
LABEL_3:
    sub_1000124C8(v68, v69);
    sub_1000124C8(v138, v137);
    return 0;
  }

  v157 = v50;
  v70 = v131;
  (*(v66 + 32))(v131, v65, v67);
  v71 = P256.Signing.ECDSASignature.rawRepresentation.getter();
  v73 = sub_1000D4CB4(v71, v72);
  v75 = v74;
  v127 = v51;
  (*(v66 + 8))(v70, v67);
  sub_100016290(v64, &qword_100590860, &qword_100493E60);
  v76 = sub_100033AA8(_swiftEmptyArrayStorage);
  v77 = v129;
  v78 = swift_allocObject();
  *(v78 + 16) = v130;
  *(v78 + 32) = v76;
  v164 = v77;
  v165 = v128;
  *&v162 = v78;

  sub_100142A80(&v162, v73, v75);
  sub_1000124C8(v73, v75);
  sub_100002A00(&v162);
  swift_beginAccess();
  v79 = *(v78 + 16);
  v80 = *(v78 + 24);
  sub_10000AB0C(v79, v80);

  *&v162 = v138;
  *(&v162 + 1) = v137;
  LODWORD(v73) = *(type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0) + 20);
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256);
  v81 = sub_1000BA0A4();
  v82 = v149;
  static HMAC.authenticationCode<A>(for:using:)();
  v83 = v151;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v150 + 8))(v82, v83);
  v84 = sub_1000D4CB4(v162, *(&v162 + 1));
  v86 = v85;
  v153 = v81;
  v154 = v80;
  v87 = sub_100033AA8(_swiftEmptyArrayStorage);
  v88 = v129;
  v89 = swift_allocObject();
  *(v89 + 16) = v130;
  *(v89 + 32) = v87;
  v164 = v88;
  v165 = v128;
  *&v162 = v89;

  sub_100142A80(&v162, v84, v86);
  sub_1000124C8(v84, v86);
  sub_100002A00(&v162);
  swift_beginAccess();
  v91 = *(v89 + 16);
  v90 = *(v89 + 24);
  sub_10000AB0C(v91, v90);

  v92 = v157;
  v93 = v127;
  *&v158 = v157;
  *(&v158 + 1) = v127;
  v164 = &type metadata for Data;
  v165 = &protocol witness table for Data;
  v94 = v79;
  *&v162 = v79;
  v95 = v154;
  *(&v162 + 1) = v154;
  v96 = sub_100029B34(&v162, &type metadata for Data);
  v97 = *v96;
  v98 = v96[1];
  sub_10000AB0C(v92, v93);
  sub_10000AB0C(v94, v95);
  sub_100178A18(v97, v98);
  sub_100002A00(&v162);
  v99 = v158;
  v159 = v158;
  v164 = &type metadata for Data;
  v165 = &protocol witness table for Data;
  *&v162 = v91;
  *(&v162 + 1) = v90;
  v100 = sub_100029B34(&v162, &type metadata for Data);
  v101 = *v100;
  v102 = v100[1];
  v152 = v90;
  sub_10000AB0C(v91, v90);
  sub_10000AB0C(v99, *(&v99 + 1));
  sub_100178A18(v101, v102);
  sub_1000124C8(v99, *(&v99 + 1));
  sub_100002A00(&v162);
  v162 = v159;
  v103 = type metadata accessor for AES.GCM.Nonce();
  v104 = v148;
  (*(*(v103 - 8) + 56))(v148, 1, 1, v103);
  v105 = v147;
  static AES.GCM.seal<A>(_:using:nonce:)();
  v151 = v91;
  sub_100016290(v104, &qword_100590868, &qword_100493E68);
  sub_1000124C8(v162, *(&v162 + 1));
  v153 = AES.GCM.SealedBox.combined.getter();
  v107 = v106;
  (*(v145 + 8))(v105, v146);
  v150 = v107;
  if (v107 >> 60 == 15)
  {
    sub_1000124C8(v151, v152);
    sub_1000124C8(v94, v154);
    v68 = v157;
    v69 = v127;
    goto LABEL_3;
  }

  v108 = sub_100082620(_swiftEmptyArrayStorage);
  v149 = v94;
  v109 = v108;
  *&v162 = v108;
  v110 = v140;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  (*(v155 + 56))(v110, 0, 1, v136);
  v111 = v143;
  sub_1000CB960(v109, v143);
  v112 = v139;
  sub_1000D1274(v110, v111 + *(v139 + 24));
  v156 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes;
  v113 = v144;
  sub_1001D45C0(v111, v144, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v114 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  v115 = *(v114 - 8);
  v116 = *(v115 + 56);
  v155 = v115 + 56;
  (v116)(v113, 0, 1, v114);
  v148 = v116;
  v117 = v142;
  sub_100012400(v113, v142, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v117, 7);
  sub_100016290(v113, &qword_10058BB48, &unk_100483040);
  sub_100016290(v110, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v111, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v118 = v162;
  v119 = v153;
  v120 = v150;
  sub_10000AB0C(v153, v150);
  sub_1000CB960(v118, v111);
  v121 = v111 + *(v112 + 32);
  sub_100017554(*v121, *(v121 + 8));
  *v121 = v119;
  *(v121 + 8) = v120;
  sub_1001D45C0(v111, v113, v156);
  swift_storeEnumTagMultiPayload();
  (v116)(v113, 0, 1, v114);
  sub_100012400(v113, v117, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v117, 7);
  sub_100016290(v113, &qword_10058BB48, &unk_100483040);
  sub_1001D46E4(v111, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v122 = sub_1001BC6E4(v141);
  v124 = v123;
  sub_1000CB960(v162, v111);
  v125 = v111 + *(v112 + 36);
  sub_100017554(*v125, *(v125 + 8));
  *v125 = v122;
  *(v125 + 8) = v124;
  sub_1001D45C0(v111, v113, v156);
  swift_storeEnumTagMultiPayload();
  (v148)(v113, 0, 1, v114);
  sub_100012400(v113, v117, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v117, 7);
  sub_100017554(v153, v150);
  sub_1000124C8(v151, v152);
  sub_1000124C8(v149, v154);
  sub_1000124C8(v157, v127);
  sub_1000124C8(v138, v137);
  sub_100016290(v113, &qword_10058BB48, &unk_100483040);
  sub_1001D46E4(v111, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v162;
}

uint64_t sub_1001BDF68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v99 = v5;
  v100 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v92 - v10;
  v12 = *(*(sub_10005DC58(&qword_100590860, &qword_100493E60) - 8) + 64);
  __chkstk_darwin();
  v14 = &v92 - v13;
  v15 = type metadata accessor for P256.Signing.ECDSASignature();
  v101 = *(v15 - 8);
  v16 = *(v101 + 64);
  __chkstk_darwin();
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AES.GCM.SealedBox();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v105 = *(v24 - 8);
  v106 = v24;
  v25 = *(v105 + 64);
  __chkstk_darwin();
  v104 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(a1, a2);
  sub_1001BC944(a1, a2);
  v97 = v14;
  v94 = v9;
  v96 = v18;
  v27 = v101;
  v95 = v11;
  v98 = v15;
  v28 = static AES.GCM.open(_:using:)();
  v30 = v29;
  (*(v20 + 8))(v23, v19);
  sub_10000AB0C(v28, v30);
  v31 = v28;
  v32 = sub_100033AA8(_swiftEmptyArrayStorage);
  v33 = type metadata accessor for BinaryDecoder();
  v34 = swift_allocObject();
  v35 = v30;
  v36 = v34;
  v37 = 0;
  v34[5] = &_swiftEmptyDictionarySingleton;
  v93 = v31;
  v34[2] = v31;
  v34[3] = v35;
  v92 = v35;
  v38 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v38 == 2)
    {
      v37 = *(v93 + 16);
    }
  }

  else if (v38)
  {
    v37 = v93;
  }

  v34[4] = v37;
  swift_beginAccess();
  v36[5] = v32;
  v39 = v36[3];
  v40 = v39 >> 62;
  v41 = v36[2];
  v102 = v41 >> 32;
  v42 = BYTE6(v39);
  v43 = _swiftEmptyArrayStorage;
  while (1)
  {
    v44 = v36[4];
    if (v40 > 1)
    {
      break;
    }

    v45 = v42;
    if (v40)
    {
      v45 = v102;
    }

LABEL_12:
    if (v44 >= v45)
    {
      goto LABEL_20;
    }

LABEL_15:
    v107[3] = v33;
    v107[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    v107[0] = v36;

    v46 = sub_1001427AC(v107);
    v48 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1001178F8(0, v43[2] + 1, 1, v43);
    }

    v49 = v43;
    v51 = v43[2];
    v50 = v43[3];
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v101 = v51;
      v49 = sub_1001178F8((v50 > 1), v51 + 1, 1, v49);
      v51 = v101;
    }

    v49[2] = v52;
    v43 = v49;
    v53 = &v49[2 * v51];
    v53[4] = v46;
    v53[5] = v48;
  }

  if (v40 == 2)
  {
    v45 = *(v41 + 24);
    goto LABEL_12;
  }

  if (v44 < 0)
  {
    goto LABEL_15;
  }

LABEL_20:

  if (!v43[2])
  {
    goto LABEL_32;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2BC8(v43);
    v43 = result;
    v55 = *(result + 16);
    if (!v55)
    {
      goto LABEL_42;
    }

LABEL_23:
    v56 = &v43[2 * v55 + 2];
    v58 = *v56;
    v57 = v56[1];
    v43[2] = v55 - 1;
    if (v55 == 1)
    {
      sub_1000124C8(v58, v57);
      v63 = v97;
      (*(v27 + 56))(v97, 1, 1, v98);
LABEL_26:

      sub_100016290(v63, &qword_100590860, &qword_100493E60);
LABEL_33:
      v76 = v103;
LABEL_34:
      v78 = v105;
      v77 = v106;
      v79 = v104;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Failed to process authentication message because parsing failed", v82, 2u);

        sub_1000124C8(v93, v92);
      }

      else
      {
        sub_1000124C8(v93, v92);
      }

      (*(v78 + 8))(v79, v77);
      v83 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
      return (*(*(v83 - 8) + 56))(v76, 1, 1, v83);
    }

    v59 = v55 - 2;
    v60 = &v43[2 * v55];
    v61 = *v60;
    v62 = v60[1];
    v43[2] = v59;
    v63 = v97;
    sub_1001BEB98(v61, v62, v97);
    sub_1000124C8(v61, v62);
    v64 = v98;
    v65 = (*(v27 + 48))(v63, 1, v98);
    if (v65 == 1)
    {
      sub_1000124C8(v58, v57);
      goto LABEL_26;
    }

    v66 = v63;
    v67 = *(v27 + 32);
    v68 = v96;
    v67(v96, v66, v64);
    v69 = v68;
    v70 = v43;
    v71 = v43[2];
    if (v71)
    {
      v72 = v71 - 1;
      v73 = &v43[2 * v72 + 4];
      v74 = *v73;
      v75 = v73[1];
      v70[2] = v72;
      sub_1002A5C4C(v74, v75, v107);
      v102 = v67;
      sub_1000124C8(v74, v75);
      v84 = v94;
      UUID.init(uuid:)();
      v86 = v99;
      v85 = v100;
      v101 = *(v100 + 32);
      (v101)(v95, v84, v99);
      v87 = v70[2];

      v76 = v103;
      if (!v87)
      {
        (*(v105 + 8))(v104, v106);
        sub_1000124C8(v93, v92);
        v88 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
        v89 = v76;
        v90 = *(v88 + 48);
        v91 = (v89 + *(v88 + 64));
        (v101)(v89, v95, v86);
        (v102)(v89 + v90, v96, v98);
        *v91 = v58;
        v91[1] = v57;
        return (*(*(v88 - 8) + 56))(v89, 0, 1, v88);
      }

      sub_1000124C8(v58, v57);
      (*(v85 + 8))(v95, v86);
      (*(v27 + 8))(v96, v98);
      goto LABEL_34;
    }

    (*(v27 + 8))(v69, v64);
    sub_1000124C8(v58, v57);
LABEL_32:

    goto LABEL_33;
  }

  v55 = v43[2];
  if (v55)
  {
    goto LABEL_23;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1001BEB98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = type metadata accessor for P256.Signing.ECDSASignature();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB0C(a1, a2);
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  v12 = type metadata accessor for BinaryDecoder();
  v13 = swift_allocObject();
  v14 = 0;
  v13[5] = &_swiftEmptyDictionarySingleton;
  v13[2] = a1;
  v13[3] = a2;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v14 = *(a1 + 16);
    }
  }

  else if (v15)
  {
    v14 = a1;
  }

  v13[4] = v14;
  swift_beginAccess();
  v13[5] = v11;
  v21[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v21[4] = sub_1000325F0();
  v21[0] = v13;
  v16 = *sub_100031694(v21, &type metadata for BinaryDecoder.UnkeyedContainer);
  v20[3] = v12;
  v20[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v20[0] = v16;

  P256.Signing.ECDSASignature.init(from:)(v20, v10);
  if (!v3)
  {
    v17 = v22;
    (*(v7 + 32))(v22, v10, v6);
    (*(v7 + 56))(v17, 0, 1, v6);
  }

  return sub_100002A00(v21);
}

uint64_t sub_1001BEDC4()
{
  v0 = type metadata accessor for SymmetricKeySize();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SymmetricKeySize.bits256.getter();
  v5 = SymmetricKeySize.bitCount.getter();
  result = (*(v1 + 8))(v4, v0);
  qword_10058FDE0 = v5 / 8;
  return result;
}

uint64_t sub_1001BEEA4()
{
  result = sub_10016FD40(0xD000000000000016, 0x80000001004BAF00);
  qword_10058FDE8 = result;
  unk_10058FDF0 = v1;
  return result;
}

uint64_t sub_1001BEEE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a5;
  v67 = a6;
  v64 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  v10 = *(*(v64 - 8) + 64);
  __chkstk_darwin();
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v63 - v13;
  v69 = type metadata accessor for SymmetricKey();
  v14 = *(v69 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v63 - v18;
  __chkstk_darwin();
  v21 = &v63 - v20;
  __chkstk_darwin();
  v23 = (&v63 - v22);
  v74 = a1;
  v75 = a2;
  sub_10000AB0C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v74 = a3;
  v75 = a4;
  if (qword_10058A9F0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v72 = qword_10058FDE8;
    v73 = qword_10058FDF0;
    result = sub_10000AB0C(qword_10058FDE8, qword_10058FDF0);
    if (qword_10058A9E8 != -1)
    {
      result = swift_once();
    }

    v25 = qword_10058FDE0;
    v26 = 6 * qword_10058FDE0;
    if ((qword_10058FDE0 * 6) >> 64 != (6 * qword_10058FDE0) >> 63)
    {
      break;
    }

    v68 = v19;
    v63 = v12;
    type metadata accessor for SHA256();
    sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256);
    sub_1000BA0A4();
    v12 = &type metadata for Data;
    static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
    sub_1000124C8(v72, v73);
    v27 = *(v14 + 8);
    v28 = v21;
    v29 = v69;
    v27(v28, v69);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    result = (v27)(v23, v29);
    v70 = v75;
    v71 = v74;
    v30 = v75 >> 62;
    if ((v75 >> 62) > 1)
    {
      if (v30 != 2)
      {
        v19 = v68;
        if (v26)
        {
          goto LABEL_45;
        }

        i = 0;
        if (!v25)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      v33 = *(v71 + 16);
      v32 = *(v71 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }

    if (!v30)
    {
      v31 = BYTE6(v70);
LABEL_10:
      v19 = v68;
      if (v31 != v26)
      {
        goto LABEL_45;
      }

      goto LABEL_14;
    }

    v19 = v68;
    if (__OFSUB__(HIDWORD(v71), v71))
    {
      goto LABEL_73;
    }

    if (HIDWORD(v71) - v71 != v26)
    {
LABEL_45:
      sub_1000124C8(v71, v70);
      v57 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
      return (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
    }

LABEL_14:
    if (v30)
    {
      if (v30 != 2)
      {
        goto LABEL_61;
      }

      v26 = *(v71 + 16);
      for (i = *(v71 + 24); !v25; i = v71 >> 32)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        v26 = v71;
      }
    }

    else
    {
      v26 = 0;
      i = BYTE6(v70);
      if (!v25)
      {
        goto LABEL_60;
      }
    }

LABEL_17:
    v21 = 0;
    v36 = v26;
    while (1)
    {
      v37 = i >= v36;
      if (v25 > 0)
      {
        v37 = v36 >= i;
      }

      if (v37)
      {
        break;
      }

      v34 = __OFADD__(v36, v25);
      v36 += v25;
      if (v34)
      {
        v36 = (v36 >> 63) ^ 0x8000000000000000;
      }

      v34 = __OFADD__(v21++, 1);
      if (v34)
      {
        __break(1u);
        break;
      }
    }

    v72 = _swiftEmptyArrayStorage;
    sub_1000C0748(0, v21, 0);
    v23 = v72;
    if (v21)
    {
      v38 = v26;
      while (1)
      {
        v39 = i >= v38;
        if (v25 > 0)
        {
          v39 = v38 >= i;
        }

        if (v39)
        {
          break;
        }

        if (__OFADD__(v38, v25))
        {
          v26 = ((v38 + v25) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v26 = v38 + v25;
        }

        if (__OFADD__(v38, v25))
        {
          goto LABEL_66;
        }

        if (v38 + v25 < v38)
        {
          goto LABEL_67;
        }

        v74 = Data._Representation.subscript.getter();
        v75 = v40;
        SymmetricKey.init<A>(data:)();
        v72 = v23;
        v42 = v23[2];
        v41 = v23[3];
        v12 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          sub_1000C0748(v41 > 1, v42 + 1, 1);
          v23 = v72;
        }

        v23[2] = v12;
        (*(v14 + 32))(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, v17, v69);
        v38 = v26;
        --v21;
        v19 = v68;
        if (!v21)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {
LABEL_39:
      v43 = i >= v26;
      if (v25 > 0)
      {
        v43 = v26 >= i;
      }

      if (v43)
      {
LABEL_42:
        if (v23[2] == 6)
        {
          v45 = *(v14 + 16);
          v44 = v14 + 16;
          v46 = v23 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
          v47 = v65;
          v48 = v69;
          v45(v65, v46, v69);
          v49 = v64;
          v50 = *(v44 + 56);
          v45((v47 + *(v64 + 20)), &v46[v50], v48);
          v45((v47 + v49[6]), &v46[2 * v50], v48);
          v51 = v49[7];
          v52 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
          (*(*(v52 - 8) + 56))(v47 + v51, 1, 1, v52);
          v53 = v63;
          v45(v63, &v46[3 * v50], v48);
          v45((v53 + v49[5]), &v46[4 * v50], v48);
          v45((v53 + v49[6]), &v46[5 * v50], v48);
          sub_1000124C8(v71, v70);

          sub_100012400(v66, v53 + v49[7], &qword_10058FE50, &unk_100493930);
          v54 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
          v55 = *(v54 + 48);
          v56 = v67;
          sub_1001D6B5C(v47, v67, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
          sub_1001D6B5C(v53, v56 + v55, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
          return (*(*(v54 - 8) + 56))(v56, 0, 1, v54);
        }

        else
        {
          v62 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
          (*(*(v62 - 8) + 56))(v67, 1, 1, v62);

          return sub_1000124C8(v71, v70);
        }
      }

      v17 = &protocol witness table for Data;
      while (1)
      {
        v12 = (__OFADD__(v26, v25) ? ((v26 + v25) >> 63) ^ 0x8000000000000000 : v26 + v25);
        if (__OFADD__(v26, v25))
        {
          break;
        }

        if (v26 + v25 < v26)
        {
          goto LABEL_69;
        }

        v74 = Data._Representation.subscript.getter();
        v75 = v58;
        SymmetricKey.init<A>(data:)();
        v72 = v23;
        v21 = v19;
        v60 = v23[2];
        v59 = v23[3];
        if (v60 >= v59 >> 1)
        {
          sub_1000C0748(v59 > 1, v60 + 1, 1);
          v23 = v72;
        }

        v23[2] = v60 + 1;
        (*(v14 + 32))(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v60, v21, v69);
        v61 = i >= v12;
        if (v25 > 0)
        {
          v61 = v12 >= i;
        }

        v26 = v12;
        v19 = v21;
        if (v61)
        {
          goto LABEL_42;
        }
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1001BF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  sub_100012400(a3, v4 + 40, &qword_100590850, &unk_100493E50);
  if (a2)
  {
    sub_100012400(v4 + 40, v13, &qword_100590850, &unk_100493E50);
    v7 = v14;
    if (v14)
    {
      v8 = v15;
      sub_100029B34(v13, v14);
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = *(v8 + 104);

      v11 = v10(sub_1001D7920, v9, v7, v8);

      sub_100016290(a3, &qword_100590850, &unk_100493E50);

      sub_100002A00(v13);
    }

    else
    {
      sub_100016290(a3, &qword_100590850, &unk_100493E50);
      sub_100016290(v13, &qword_100590850, &unk_100493E50);
      v11 = 0;
    }

    *(v4 + 80) = v11;
    *(v4 + 88) = v7 == 0;
  }

  else
  {
    sub_100016290(a3, &qword_100590850, &unk_100493E50);
  }

  return v4;
}

uint64_t sub_1001BF9B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001BFB10();
  }

  return result;
}

uint64_t sub_1001BFA14()
{
  v1 = v0;
  if ((*(v0 + 88) & 1) == 0)
  {
    v2 = *(v0 + 80);
    sub_100012400((v1 + 5), v9, &qword_100590850, &unk_100493E50);
    v3 = v10;
    if (v10)
    {
      v4 = v11;
      sub_100029B34(v9, v10);
      (*(v4 + 112))(v2, v3, v4);
      sub_100002A00(v9);
    }

    else
    {
      sub_100016290(v9, &qword_100590850, &unk_100493E50);
    }
  }

  v5 = v1[2];

  v6 = v1[4];

  sub_100016290((v1 + 5), &qword_100590850, &unk_100493E50);
  v7 = v1[13];
  sub_100010520(v1[12]);
  return swift_deallocClassInstance();
}

uint64_t sub_1001BFB10()
{
  v1 = v0;
  v2 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v90 = (&v81 - v3);
  v96 = type metadata accessor for UUID();
  v83 = *(v96 - 8);
  v4 = *(v83 + 64);
  __chkstk_darwin();
  v95 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v81 - v6;
  v89 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v94 = *(v89 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin();
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = (&v81 - v10);
  __chkstk_darwin();
  v92 = &v81 - v11;
  __chkstk_darwin();
  v13 = &v81 - v12;
  v14 = *(*(sub_10005DC58(&qword_100590840, &qword_100493E40) - 8) + 64);
  __chkstk_darwin();
  v16 = &v81 - v15;
  v17 = sub_10005DC58(&qword_100590848, &qword_100493E48);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = &v81 - v22;
  v23 = v0[4];
  if (!v23)
  {
    goto LABEL_18;
  }

  v84 = v7;
  v24 = v1[3];
  sub_100012400((v1 + 5), v99, &qword_100590850, &unk_100493E50);
  v25 = v100;
  if (!v100)
  {
    sub_100016290(v99, &qword_100590850, &unk_100493E50);
LABEL_18:
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_19;
  }

  v81 = v21;
  v26 = v101;
  sub_100029B34(v99, v100);
  v27 = *(v17 + 48);
  *&v16[v27] = (*(v26 + 120))(v16, v24, v23, v25, v26);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100002A00(v99);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_19:
    sub_100016290(v16, &qword_100590840, &qword_100493E40);
    return 0;
  }

  v28 = v82;
  sub_10001CEA8(v16, v82, &qword_100590848, &qword_100493E48);
  v29 = v28;
  v30 = v81;
  sub_100012400(v29, v81, &qword_100590848, &qword_100493E48);
  v31 = *(v30 + *(v17 + 48));
  v32 = *(v31 + 16);
  swift_beginAccess();
  v88 = v32;
  if (!v32)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_23:

    sub_100016290(v81, &qword_10058FEC8, &qword_100493978);
    v49 = v35[2];
    if (v49)
    {
      v50 = 0;
      v51 = v35 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v90 = (v83 + 8);
      v91 = (v83 + 16);
      v88 = v51;
      v89 = v35;
      while (1)
      {
        if (v50 >= v35[2])
        {
          goto LABEL_43;
        }

        v53 = *(v94 + 72);
        v54 = v92;
        sub_1001D45C0(&v51[v53 * v50], v92, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v55 = *v91;
        v56 = v95;
        (*v91)(v95, v54, v96);
        swift_beginAccess();
        sub_1001D45C0(v54, v93, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        v57 = v1[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v1[2];
        v59 = v97;
        v1[2] = 0x8000000000000000;
        v60 = sub_10002A440(v56);
        v62 = v59[2];
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(v62, v63);
        v65 = v62 + v63;
        if (v64)
        {
          goto LABEL_44;
        }

        v66 = v61;
        if (v59[3] < v65)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v77 = v60;
        sub_100196DF0();
        v60 = v77;
        v68 = v97;
        if ((v66 & 1) == 0)
        {
LABEL_34:
          v69 = v49;
          v70 = v1;
          v68[(v60 >> 6) + 8] |= 1 << v60;
          v71 = v83;
          v72 = v60;
          v73 = v95;
          v74 = v96;
          v55(v68[6] + *(v83 + 72) * v60, v95, v96);
          sub_1001D6B5C(v93, v68[7] + v72 * v53, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          (*(v71 + 8))(v73, v74);
          v75 = v68[2];
          v64 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v64)
          {
            goto LABEL_45;
          }

          v68[2] = v76;
          v1 = v70;
          v49 = v69;
          v51 = v88;
          v35 = v89;
          goto LABEL_26;
        }

LABEL_25:
        sub_1001D7894(v93, v68[7] + v60 * v53, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v90)(v95, v96);
LABEL_26:
        ++v50;
        v52 = v1[2];
        v1[2] = v68;

        swift_endAccess();
        sub_1001D46E4(v92, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        if (v49 == v50)
        {
          v78 = v1[12];
          if (v78)
          {
            v79 = v1[13];

            v78(v80);
            sub_100010520(v78);
          }

          sub_100016290(v82, &qword_100590848, &qword_100493E48);
          return v35;
        }
      }

      sub_10018FDE8(v65, isUniquelyReferenced_nonNull_native);
      v60 = sub_10002A440(v95);
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_46;
      }

LABEL_33:
      v68 = v97;
      if ((v66 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    sub_100016290(v82, &qword_100590848, &qword_100493E48);

    return 0;
  }

  v33 = 0;
  v85 = (v83 + 8);
  v86 = (v83 + 16);
  v34 = (v94 + 56);
  v35 = _swiftEmptyArrayStorage;
  v36 = v84;
  v87 = v31;
  while (v33 < *(v31 + 16))
  {
    v38 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v39 = *(v94 + 72);
    sub_1001D45C0(v31 + v38 + v39 * v33, v13, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*v86)(v36, v13, v96);
    v40 = v1[2];
    if (!*(v40 + 16))
    {
      goto LABEL_12;
    }

    v41 = v1[2];

    v42 = sub_10002A440(v36);
    if ((v43 & 1) == 0)
    {

LABEL_12:
      (*v85)(v36, v96);
      v44 = v90;
      (*v34)(v90, 1, 1, v89);
      sub_100016290(v44, &qword_10058FE50, &unk_100493930);
      sub_1001D6B5C(v13, v91, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v35;
      if ((v45 & 1) == 0)
      {
        sub_1000C078C(0, v35[2] + 1, 1);
        v35 = v98;
      }

      v47 = v35[2];
      v46 = v35[3];
      if (v47 >= v46 >> 1)
      {
        sub_1000C078C(v46 > 1, v47 + 1, 1);
        v35 = v98;
      }

      v35[2] = v47 + 1;
      sub_1001D6B5C(v91, v35 + v38 + v47 * v39, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v36 = v84;
      goto LABEL_7;
    }

    v37 = v90;
    sub_1001D45C0(*(v40 + 56) + v42 * v39, v90, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*v85)(v36, v96);

    (*v34)(v37, 0, 1, v89);
    sub_100016290(v37, &qword_10058FE50, &unk_100493930);
    sub_1001D46E4(v13, type metadata accessor for LongTermPairingKeys.PublicIdentity);
LABEL_7:
    ++v33;
    v31 = v87;
    if (v88 == v33)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C0584@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v38 = a3;
  v41 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v37 - v8;
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v37 - v14;
  swift_beginAccess();
  v37 = v3;
  v15 = *(v3 + 16);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = *(v3 + 16);
  result = swift_bridgeObjectRetain_n();
  v22 = 0;
  if (!v18)
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {

        v24 = 1;
        v25 = v40;
        goto LABEL_12;
      }

      v18 = *(v15 + 64 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v23 = v22;
LABEL_8:
    sub_1001D45C0(*(v15 + 56) + *(v4 + 72) * (__clz(__rbit64(v18)) | (v23 << 6)), v11, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    sub_1001D6B5C(v11, v9, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    if (v42(v9))
    {
      break;
    }

    v18 &= v18 - 1;
    result = sub_1001D46E4(v9, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v22 = v23;
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v25 = v40;
  sub_1001D6B5C(v9, v40, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v24 = 0;
LABEL_12:
  v26 = *(v4 + 56);
  v27 = v41;
  v26(v25, v24, 1, v41);

  v28 = *(v4 + 48);
  if (v28(v25, 1, v27) == 1)
  {
    result = sub_1001BFB10();
    if (result)
    {
      v29 = result;
      v30 = *(result + 16);
      if (v30)
      {
        v31 = 0;
        while (v31 < *(v29 + 16))
        {
          sub_1001D45C0(v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31, v7, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          if (v42(v7))
          {

            v33 = v39;
            sub_1001D6B5C(v7, v39, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            v32 = 0;
            v27 = v41;
            goto LABEL_24;
          }

          ++v31;
          result = sub_1001D46E4(v7, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          if (v30 == v31)
          {
            goto LABEL_19;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

LABEL_19:

      v32 = 1;
      v27 = v41;
      v33 = v39;
LABEL_24:
      v25 = v40;
    }

    else
    {
      v32 = 1;
      v33 = v39;
    }

    v26(v33, v32, 1, v27);
    v35 = v28(v25, 1, v27);
    v34 = v38;
    if (v35 != 1)
    {
      sub_100016290(v25, &qword_10058FE50, &unk_100493930);
    }
  }

  else
  {
    v33 = v39;
    sub_1001D6B5C(v25, v39, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v26(v33, 0, 1, v27);
    v34 = v38;
  }

  if (v28(v33, 1, v27) == 1)
  {
    sub_100016290(v33, &qword_10058FE50, &unk_100493930);
    v36 = 1;
  }

  else
  {
    sub_1001D6B5C(v33, v34, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v36 = 0;
  }

  return (v26)(v34, v36, 1, v27);
}

uint64_t sub_1001C0AC8()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[5] = v1;
  swift_beginAccess();
  v12[1] = *(v1 + 16);
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  type metadata accessor for LongTermPairingKeys.PairedDevices();

  sub_10005DC58(&qword_100590830, &qword_100493E38);
  sub_10000CADC(&qword_100590838, &qword_100590830, &qword_100493E38);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001C0CDC()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = *(*(v1 + 16) + 16);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v2._countAndFlagsBits = 0x7365636976656420;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  return v5;
}

uint64_t LongTermPairingKeys.updatedPairedDevicesHandler.getter()
{
  v1 = *(*(v0 + *(type metadata accessor for LongTermPairingKeys(0) + 24)) + 96);
  sub_10001F89C(v1);
  return v1;
}

uint64_t LongTermPairingKeys.updatedPairedDevicesHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for LongTermPairingKeys(0) + 24));
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;

  return sub_100010520(v6);
}

uint64_t (*LongTermPairingKeys.updatedPairedDevicesHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + *(type metadata accessor for LongTermPairingKeys(0) + 24));
  a1[2] = v3;
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  *a1 = v4;
  a1[1] = v5;
  sub_10001F89C(v4);
  return sub_1001C0E78;
}

uint64_t sub_1001C0E78(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = *a1;
  *(v2 + 104) = v3;
  if (a2)
  {
    sub_10001F89C(v4);
    sub_100010520(v5);
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return sub_100010520(v7);
}

uint64_t sub_1001C0EEC()
{
  result = sub_10016FD40(0xD000000000000017, 0x80000001004BAF20);
  qword_10058FDF8 = result;
  unk_10058FE00 = v1;
  return result;
}

uint64_t LongTermPairingKeys.authenticationToken(using:on:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(type metadata accessor for LongTermPairingKeys(0) + 20);
  v10 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v11 = sub_1001D67A4(v9 + v10, v8, a2 & 0xFFFFFFFFFFFFLL);
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t LongTermPairingKeys.authenticationRequest(forPeer:with:using:on:myServiceSpecificInfo:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v153 = a5;
  v156 = a4;
  v161 = a3;
  v167 = a1;
  v171 = a6;
  v8 = *(*(sub_10005DC58(&qword_10058FE38, &qword_100493918) - 8) + 64);
  __chkstk_darwin();
  v158 = &v135 - v9;
  v152 = sub_10005DC58(&qword_10058FE40, &qword_100493920);
  v10 = *(*(v152 - 8) + 64);
  __chkstk_darwin();
  v151 = &v135 - v11;
  v12 = *(*(type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0) - 8) + 64);
  __chkstk_darwin();
  v155 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v135 - v14;
  v15 = *(*(sub_10005DC58(&qword_10058FE48, &qword_100493928) - 8) + 64);
  __chkstk_darwin();
  v159 = &v135 - v16;
  v17 = type metadata accessor for SharedSecret();
  v163 = *(v17 - 8);
  v164 = v17;
  v18 = *(v163 + 64);
  __chkstk_darwin();
  v160 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v157 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v135 - v22;
  v24 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v165 = *(v24 - 8);
  v166 = v24;
  v25 = *(v165 + 64);
  __chkstk_darwin();
  v162 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v29 = &v135 - v28;
  v30 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin();
  v34 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v135 - v35;
  v36 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin();
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a2, v39);
  v40 = &v39[*(v36 + 28)];
  v41 = v40[1];
  v170 = *v40;
  sub_10005D67C(v170, v41);
  sub_1001D46E4(v39, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v169 = v41;
  if (v41 >> 60 == 15)
  {
LABEL_4:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Authentication request generation failed because no authentication token found", v44, 2u);
    }

    v45 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    return (*(*(v45 - 8) + 56))(v171, 1, 1, v45);
  }

  sub_1000CB960(a2, v39);
  sub_100012400(&v39[*(v36 + 24)], v29, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v39, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_100017554(v170, v169);
    sub_100016290(v29, &unk_100595C40, &qword_100499070);
    goto LABEL_4;
  }

  v47 = v30;
  v48 = v31;
  *&v141 = v34;
  v49 = v167;
  v50 = v167 >> 40;
  v51 = HIDWORD(v167);
  v52 = v167 >> 24;
  v53 = v167 >> 16;
  v150 = v48;
  v54 = *(v48 + 32);
  v55 = v167 >> 8;
  v56 = v168;
  v149 = v47;
  v54(v168, v29, v47);
  v57 = type metadata accessor for LongTermPairingKeys(0);
  v148 = &v135;
  v58 = *(v57 + 24);
  v147 = v6;
  v59 = *(v6 + v58);
  __chkstk_darwin();
  *(&v135 - 4) = v56;
  *(&v135 - 24) = v49;
  v142 = v55;
  *(&v135 - 23) = BYTE1(v49);
  v143 = v53;
  *(&v135 - 22) = BYTE2(v49);
  v144 = v52;
  *(&v135 - 21) = BYTE3(v49);
  v145 = v51;
  *(&v135 - 20) = BYTE4(v49);
  v146 = v50;
  *(&v135 - 19) = BYTE5(v49);
  v60 = v169;
  *(&v135 - 2) = v170;
  *(&v135 - 1) = v60;
  sub_1001C0584(sub_1001D6B44, (&v135 - 6), v23);
  if ((*(v165 + 48))(v23, 1, v166) == 1)
  {
    sub_100016290(v23, &qword_10058FE50, &unk_100493930);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Authentication request generation failed because no paired device matches the authentication token", v63, 2u);
    }

    sub_100017554(v170, v60);

    v64 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    (*(*(v64 - 8) + 56))(v171, 1, 1, v64);
    return (*(v150 + 8))(v56, v149);
  }

  v148 = v57;
  sub_1001D6B5C(v23, v162, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v65 = v159;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v66 = v65;
  LOBYTE(v65) = v156;
  v139 = v156 >> 40;
  v140 = HIDWORD(v156);
  v138 = v156 >> 24;
  v137 = v156 >> 16;
  v67 = v163;
  v68 = *(v163 + 56);
  v136 = v156 >> 8;
  v69 = v164;
  v68(v66, 0, 1, v164);
  (*(v67 + 32))(v160, v66, v69);
  v70 = v141;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v71 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v73 = v72;
  v74 = *(v150 + 8);
  v150 += 8;
  v159 = v74;
  (v74)(v70, v149);
  v75 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v77 = v76;
  v176 = v71;
  v177 = v73;
  v174 = &type metadata for Data;
  v175 = &protocol witness table for Data;
  v172 = v75;
  v173 = v76;
  v78 = sub_100029B34(&v172, &type metadata for Data);
  v79 = *v78;
  v80 = v78[1];
  sub_10000AB0C(v71, v73);
  sub_10000AB0C(v75, v77);
  sub_100178A18(v79, v80);
  sub_1000124C8(v75, v77);
  sub_1000124C8(v71, v73);
  sub_100002A00(&v172);
  v81 = v176;
  v82 = v177;
  SharedSecret.withUnsafeBytes<A>(_:)();
  v83 = v172;
  v84 = v173;
  v178 = v81;
  v179 = v82;
  v174 = &type metadata for Data;
  v175 = &protocol witness table for Data;
  v85 = sub_100029B34(&v172, &type metadata for Data);
  v86 = *v85;
  v87 = v85[1];
  sub_10000AB0C(v81, v82);
  sub_10000AB0C(v83, v84);
  sub_100178A18(v86, v87);
  sub_1000124C8(v83, v84);
  sub_1000124C8(v81, v82);
  sub_100002A00(&v172);
  v88 = v178;
  v89 = v179;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v90 = swift_allocObject();
  v141 = xmmword_1004817D0;
  *(v90 + 16) = xmmword_1004817D0;
  *(v90 + 32) = v65;
  *(v90 + 33) = v136;
  *(v90 + 34) = v137;
  *(v90 + 35) = v138;
  *(v90 + 36) = v140;
  *(v90 + 37) = v139;
  v91 = sub_10002D874(v90);
  v93 = v92;

  v94 = swift_allocObject();
  *(v94 + 16) = v141;
  *(v94 + 32) = v167;
  *(v94 + 33) = v142;
  *(v94 + 34) = v143;
  *(v94 + 35) = v144;
  *(v94 + 36) = v145;
  *(v94 + 37) = v146;
  v95 = sub_10002D874(v94);
  v97 = v96;

  v176 = v91;
  v177 = v93;
  v174 = &type metadata for Data;
  v175 = &protocol witness table for Data;
  v172 = v95;
  v173 = v97;
  v98 = sub_100029B34(&v172, &type metadata for Data);
  v99 = *v98;
  v100 = v98[1];
  sub_10000AB0C(v91, v93);
  sub_10000AB0C(v95, v97);
  sub_100178A18(v99, v100);
  sub_1000124C8(v95, v97);
  v101 = v162;
  sub_1000124C8(v91, v93);
  sub_100002A00(&v172);
  v102 = v176;
  v103 = v177;
  v104 = v157;
  sub_1001D45C0(v101, v157, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  (*(v165 + 56))(v104, 0, 1, v166);
  v105 = v158;
  sub_1001BEEE0(v88, v89, v102, v103, v104, v158);
  sub_1000124C8(v102, v103);
  sub_1000124C8(v88, v89);
  sub_100016290(v104, &qword_10058FE50, &unk_100493930);
  v106 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
  if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
  {
    sub_100016290(v105, &qword_10058FE38, &qword_100493918);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v169;
    if (v109)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Authentication request generation failed because authentication key derivation failed", v111, 2u);
    }

    sub_100017554(v170, v110);

    (*(v163 + 8))(v160, v164);
    sub_1001D46E4(v101, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v112 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    (*(*(v112 - 8) + 56))(v171, 1, 1, v112);
    v113 = v168;
    return (v159)(v113, v149);
  }

  v114 = *(v106 + 48);
  v115 = v152;
  v116 = *(v152 + 48);
  v117 = v151;
  sub_1001D6B5C(v105, v151, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v105 + v114, v117 + v116, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v118 = *(v115 + 48);
  v119 = v154;
  sub_1001D6B5C(v117, v154, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v120 = v117 + v118;
  v121 = v155;
  sub_1001D6B5C(v120, v155, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v122 = v168;
  v123 = sub_1001BCC54(v147 + *(v148 + 5), v161, v168, v153);
  v124 = v169;
  if (v123)
  {
    v125 = v123;
    sub_100017554(v170, v169);
    sub_1001D46E4(v119, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v163 + 8))(v160, v164);
    sub_1001D46E4(v101, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v126 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    v127 = *(v126 + 48);
    v128 = v171;
    sub_1001D6B5C(v121, v171, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    *(v128 + v127) = v125;
    (*(*(v126 - 8) + 56))(v128, 0, 1, v126);
    v113 = v122;
    return (v159)(v113, v149);
  }

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.error.getter();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v149;
  if (v131)
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v129, v130, "Authentication request generation failed because encrypting the request failed", v133, 2u);
  }

  sub_100017554(v170, v124);

  sub_1001D46E4(v121, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D46E4(v119, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  (*(v163 + 8))(v160, v164);
  sub_1001D46E4(v101, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v134 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
  (*(*(v134 - 8) + 56))(v171, 1, 1, v134);
  return (v159)(v122, v132);
}

unint64_t sub_1001C2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for LongTermPairingKeys.Identity(0);
  v11 = sub_1001D67A4(a1 + *(v10 + 20), a2, a3 & 0xFFFFFFFFFFFFLL);
  v13 = v12;
  LOBYTE(a5) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v12, a4, a5);
  sub_1000124C8(v11, v13);
  return a5 & 1;
}

uint64_t LongTermPairingKeys.authenticationResponse(forPeer:with:using:on:myServiceSpecificInfo:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), unint64_t a4, uint64_t a5)
{
  v222 = a5;
  v246 = a4;
  v247 = a3;
  v241 = a1;
  v220 = type metadata accessor for AES.GCM.SealedBox();
  v219 = *(v220 - 8);
  v6 = *(v219 + 64);
  __chkstk_darwin();
  v221 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v244 = *(v8 - 8);
  v245 = v8;
  v9 = *(v244 + 64);
  __chkstk_darwin();
  v228 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&qword_10058FE68, &qword_100493958) - 8) + 64);
  __chkstk_darwin();
  v231 = &v197 - v12;
  v226 = sub_10005DC58(&qword_10058FE70, &qword_100493960);
  v13 = *(*(v226 - 8) + 64);
  __chkstk_darwin();
  v227 = &v197 - v14;
  v234 = type metadata accessor for P256.Signing.ECDSASignature();
  v233 = *(v234 - 8);
  v15 = *(v233 + 64);
  __chkstk_darwin();
  v232 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for UUID();
  v237 = *(v236 - 8);
  v17 = *(v237 + 64);
  __chkstk_darwin();
  v223 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v235 = &v197 - v19;
  v20 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v225 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v239 = &v197 - v22;
  v23 = *(*(sub_10005DC58(&qword_10058FE38, &qword_100493918) - 8) + 64);
  __chkstk_darwin();
  v240 = (&v197 - v24);
  v230 = sub_10005DC58(&qword_10058FE40, &qword_100493920);
  v25 = *(*(v230 - 8) + 64);
  __chkstk_darwin();
  v229 = &v197 - v26;
  v224 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  v27 = *(*(v224 - 8) + 64);
  __chkstk_darwin();
  v242 = &v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v238 = &v197 - v29;
  v30 = *(*(sub_10005DC58(&qword_10058FE48, &qword_100493928) - 8) + 64);
  __chkstk_darwin();
  v32 = &v197 - v31;
  v33 = type metadata accessor for SharedSecret();
  v34 = *(v33 - 8);
  v249 = v33;
  v250 = v34;
  v35 = *(v34 + 64);
  __chkstk_darwin();
  v248 = &v197 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin();
  v40 = &v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v43 = &v197 - v42;
  v44 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin();
  v243 = &v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v197 - v48;
  sub_1000CB960(a2, v40);
  sub_100012400(&v40[*(v37 + 24)], v43, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v40, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_100016290(v43, &unk_100595C40, &qword_100499070);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Authentication response generation failed because no public key found", v52, 2u);
    }

    return 0;
  }

  (*(v45 + 32))(v49, v43, v44);
  sub_1000CB960(a2, v40);
  v53 = &v40[*(v37 + 32)];
  v54 = *v53;
  v55 = v53[1];
  sub_10005D67C(*v53, v55);
  sub_1001D46E4(v40, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v55 >> 60 == 15)
  {
    v56 = v49;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Authentication response generation failed because no encrypted signature found", v59, 2u);
    }

    (*(v45 + 8))(v56, v44);
    return 0;
  }

  v217 = v37;
  v218 = v54;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v198 = a2;
  v216 = v55;
  v211 = v246 >> 40;
  v210 = HIDWORD(v246);
  v209 = v246 >> 24;
  v208 = v246 >> 16;
  v207 = v246 >> 8;
  v61 = v241;
  v206 = v241 >> 40;
  v205 = HIDWORD(v241);
  v204 = v241 >> 24;
  v203 = v241 >> 16;
  v62 = v250;
  v63 = *(v250 + 56);
  v202 = v241 >> 8;
  v64 = v249;
  v63(v32, 0, 1, v249);
  (*(v62 + 32))(v248, v32, v64);
  v215 = v49;
  v65 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v67 = v66;
  v68 = v243;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v69 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v70 = v44;
  v72 = v71;
  v73 = *(v45 + 8);
  v213 = v70;
  v214 = v45 + 8;
  v212 = v73;
  v73(v68, v70);
  v256 = v65;
  v257 = v67;
  v254 = &type metadata for Data;
  v255 = &protocol witness table for Data;
  v252 = v69;
  v253 = v72;
  v74 = sub_100029B34(&v252, &type metadata for Data);
  v76 = *v74;
  v75 = v74[1];
  sub_10000AB0C(v65, v67);
  sub_10000AB0C(v69, v72);
  sub_100178A18(v76, v75);
  sub_1000124C8(v69, v72);
  sub_1000124C8(v65, v67);
  sub_100002A00(&v252);
  v77 = v256;
  v78 = v257;
  SharedSecret.withUnsafeBytes<A>(_:)();
  v79 = v252;
  v80 = v253;
  v258 = v77;
  v259 = v78;
  v254 = &type metadata for Data;
  v255 = &protocol witness table for Data;
  v81 = sub_100029B34(&v252, &type metadata for Data);
  v82 = *v81;
  v83 = v81[1];
  sub_10000AB0C(v77, v78);
  sub_10000AB0C(v79, v80);
  sub_100178A18(v82, v83);
  sub_1000124C8(v79, v80);
  sub_1000124C8(v77, v78);
  sub_100002A00(&v252);
  v201 = v258;
  v200 = v259;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v84 = swift_allocObject();
  v199 = xmmword_1004817D0;
  *(v84 + 16) = xmmword_1004817D0;
  *(v84 + 32) = v61;
  *(v84 + 33) = v202;
  *(v84 + 34) = v203;
  *(v84 + 35) = v204;
  *(v84 + 36) = v205;
  *(v84 + 37) = v206;
  v85 = sub_10002D874(v84);
  v87 = v86;

  v88 = swift_allocObject();
  *(v88 + 16) = v199;
  *(v88 + 32) = v246;
  *(v88 + 33) = v207;
  *(v88 + 34) = v208;
  *(v88 + 35) = v209;
  *(v88 + 36) = v210;
  *(v88 + 37) = v211;
  v89 = sub_10002D874(v88);
  v91 = v90;

  v256 = v85;
  v257 = v87;
  v254 = &type metadata for Data;
  v255 = &protocol witness table for Data;
  v252 = v89;
  v253 = v91;
  v92 = sub_100029B34(&v252, &type metadata for Data);
  v93 = *v92;
  v94 = v92[1];
  sub_10000AB0C(v85, v87);
  sub_10000AB0C(v89, v91);
  sub_100178A18(v93, v94);
  sub_1000124C8(v89, v91);
  sub_1000124C8(v85, v87);
  sub_100002A00(&v252);
  v95 = v256;
  v96 = v257;
  v97 = v239;
  (*(v244 + 56))(v239, 1, 1, v245);
  v98 = v240;
  v99 = v201;
  v100 = v200;
  sub_1001BEEE0(v201, v200, v95, v96, v97, v240);
  sub_1000124C8(v95, v96);
  sub_1000124C8(v99, v100);
  sub_100016290(v97, &qword_10058FE50, &unk_100493930);
  v101 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
  if ((*(*(v101 - 8) + 48))(v98, 1, v101) == 1)
  {
    sub_100016290(v98, &qword_10058FE38, &qword_100493918);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v216;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "Authentication response generation failed because authentication key derivation failed", v106, 2u);
    }

    sub_100017554(v218, v105);

LABEL_19:
    (*(v250 + 8))(v248, v249);
    v212(v215, v213);
    return 0;
  }

  v107 = *(v101 + 48);
  v108 = v230;
  v109 = *(v230 + 48);
  v110 = v229;
  sub_1001D6B5C(v98, v229, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v98 + v107, v110 + v109, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v111 = *(v108 + 48);
  v112 = v238;
  sub_1001D6B5C(v110, v238, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v110 + v111, v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v113 = v231;
  v114 = v218;
  v115 = v216;
  sub_1001BDF68(v218, v216, v231);
  v116 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
  if ((*(*(v116 - 8) + 48))(v113, 1, v116) == 1)
  {
    sub_100016290(v113, &qword_10058FE68, &qword_100493958);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Authentication response generation failed because authentication request parsing failed", v119, 2u);
    }

    sub_100017554(v114, v115);

    sub_1001D46E4(v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v112, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    goto LABEL_19;
  }

  v230 = 0;
  v239 = *(v116 + 48);
  v120 = (v113 + *(v116 + 64));
  v122 = *v120;
  v121 = v120[1];
  v246 = v122;
  v241 = v121;
  v123 = v226;
  v124 = *(v226 + 48);
  v125 = v227;
  v126 = &v227[*(v226 + 64)];
  v240 = *(v237 + 32);
  v127 = v236;
  (v240)(v227, v113, v236);
  v128 = *(v233 + 32);
  v129 = &v125[v124];
  v130 = v234;
  v128(v129, v113 + v239, v234);
  v131 = v241;
  *v126 = v246;
  v126[1] = v131;
  v132 = *(v123 + 48);
  v133 = &v125[*(v123 + 64)];
  v135 = *v133;
  v134 = v133[1];
  v246 = v135;
  v241 = v134;
  v136 = v235;
  (v240)(v235, v125, v127);
  v137 = &v125[v132];
  v138 = v232;
  v128(v232, v137, v130);
  v139 = type metadata accessor for LongTermPairingKeys(0);
  v140 = *(v251 + *(v139 + 24));
  __chkstk_darwin();
  v196 = v136;
  v141 = v225;
  sub_1001C0584(sub_1001D6BC4, (&v197 - 4), v225);
  if ((*(v244 + 48))(v141, 1, v245) == 1)
  {
    v142 = v246;
    v143 = v241;
    sub_100016290(v141, &qword_10058FE50, &unk_100493930);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&_mh_execute_header, v144, v145, "Authentication response generation failed because no paired device matches the authentication request", v146, 2u);
    }

    sub_1000124C8(v142, v143);
    sub_100017554(v218, v216);

    (*(v233 + 8))(v138, v234);
    sub_1001D46E4(v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v238, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v250 + 8))(v248, v249);
    v212(v215, v213);
    (*(v237 + 8))(v136, v236);
    return 0;
  }

  v245 = v139;
  sub_1001D6B5C(v141, v228, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v147 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v149 = v148;
  v150 = v243;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v151 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v153 = v152;
  v212(v150, v213);
  v258 = v147;
  v259 = v149;
  v254 = &type metadata for Data;
  v255 = &protocol witness table for Data;
  v252 = v151;
  v253 = v153;
  v154 = sub_100029B34(&v252, &type metadata for Data);
  v155 = *v154;
  v156 = v154[1];
  sub_10000AB0C(v147, v149);
  sub_10000AB0C(v151, v153);
  v157 = v230;
  sub_100178A18(v155, v156);
  sub_1000124C8(v151, v153);
  sub_1000124C8(v147, v149);
  sub_100002A00(&v252);
  v158 = v258;
  v159 = v259;
  LOBYTE(v153) = sub_1001BC174(v232, v258, v259);
  sub_1000124C8(v158, v159);
  v160 = v241;
  v252 = v246;
  v253 = v241;
  v161 = v237;
  v162 = v223;
  v163 = v236;
  (*(v237 + 16))(v223, v235, v236);
  v258 = UUID.uuid.getter();
  v259 = v164;
  v165 = sub_10004F3B0(&v258, &v260);
  v167 = v166;
  v168 = *(v161 + 8);
  v237 = v161 + 8;
  v168(v162, v163);
  v258 = v165;
  v259 = v167;
  v169 = *(v224 + 20);
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256);
  v196 = sub_1000BA0A4();
  v170 = v238;
  v171 = static HMAC.isValidAuthenticationCode<A, B>(_:authenticating:using:)();
  sub_1000124C8(v258, v259);
  if ((v153 & 1) == 0 || (v171 & 1) == 0)
  {
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "Authentication response generation failed because authentication request verification failed", v180, 2u);
    }

    sub_1000124C8(v246, v160);
    sub_100017554(v218, v216);

    sub_1001D46E4(v228, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v233 + 8))(v232, v234);
    sub_1001D46E4(v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v170, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v250 + 8))(v248, v249);
    v181 = v215;
    v182 = v213;
    goto LABEL_35;
  }

  v172 = sub_1001BCC54(v251 + *(v245 + 20), v247, v215, v222);
  if (!v172)
  {
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    v185 = os_log_type_enabled(v183, v184);
    v186 = v213;
    if (v185)
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&_mh_execute_header, v183, v184, "Authentication response generation failed because encrypting the response failed", v187, 2u);
    }

    sub_1000124C8(v246, v160);
    sub_100017554(v218, v216);

    sub_1001D46E4(v228, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v233 + 8))(v232, v234);
    sub_1001D46E4(v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v238, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v250 + 8))(v248, v249);
    v181 = v215;
    v182 = v186;
LABEL_35:
    v212(v181, v182);
    v168(v235, v163);
    return 0;
  }

  v173 = v160;
  v251 = v172;
  sub_1000CB960(v198, v40);
  v174 = &v40[*(v217 + 36)];
  v175 = *v174;
  v176 = v174[1];
  sub_10005D67C(*v174, v176);
  sub_1001D46E4(v40, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v177 = v213;
  if (v176 >> 60 != 15)
  {
    sub_10000AB0C(v175, v176);
    sub_10000AB0C(v175, v176);
    v188 = v221;
    sub_1001BC944(v175, v176);
    if (v157)
    {
    }

    else
    {
      v189 = *(v224 + 24);
      v190 = static AES.GCM.open(_:using:)();
      v191 = v188;
      v192 = v190;
      v194 = v193;
      (*(v219 + 8))(v191, v220);
      sub_1000D201C(v192, v194);
      v195 = v194;
      v170 = v238;
      sub_1000124C8(v192, v195);
    }

    sub_100017554(v175, v176);
    sub_100017554(v175, v176);
  }

  sub_1000124C8(v246, v173);
  sub_100017554(v218, v216);
  sub_1001D46E4(v228, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  (*(v233 + 8))(v232, v234);
  sub_1001D46E4(v242, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D46E4(v170, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  (*(v250 + 8))(v248, v249);
  v212(v215, v177);
  v168(v235, v236);
  return v251;
}

uint64_t LongTermPairingKeys.verifyAuthenticationResponse(forPeer:with:publisherKeys:using:extraServiceSpecificInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void *a5)
{
  v147 = a4;
  v161 = a2;
  v162 = a3;
  v142 = type metadata accessor for AES.GCM.SealedBox();
  v141 = *(v142 - 8);
  v6 = *(v141 + 64);
  __chkstk_darwin();
  v143 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&qword_10058FE68, &qword_100493958) - 8) + 64);
  __chkstk_darwin();
  v152 = &v132 - v9;
  v149 = sub_10005DC58(&qword_10058FE70, &qword_100493960);
  v10 = *(*(v149 - 8) + 64);
  __chkstk_darwin();
  v150 = &v132 - v11;
  v12 = type metadata accessor for P256.Signing.ECDSASignature();
  v154 = *(v12 - 8);
  v155 = v12;
  v13 = *(v154 + 64);
  __chkstk_darwin();
  v153 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v156 = v15;
  v157 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v146 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = &v132 - v19;
  v20 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v22 = &v132 - v21;
  v23 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v24 = *(v23 - 8);
  v159 = v23;
  v160 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v145 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v158 = &v132 - v27;
  v28 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin();
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v34 = &v132 - v33;
  v35 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin();
  v39 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a5;

  v144 = a5;
  *a5 = 0;
  v41 = v162;
  v148 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  sub_100012400(v41 + v148[7], v34, &qword_10058FE50, &unk_100493930);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_100016290(v34, &qword_10058FE50, &unk_100493930);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Authentication response verification failed because no paired device inforamtion was found", v44, 2u);
    }

    return 0;
  }

  sub_1001D6B5C(v34, v39, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v45 = v161;
  sub_1000CB960(v161, v31);
  v46 = &v31[*(v28 + 32)];
  v48 = *v46;
  v47 = v46[1];
  sub_10005D67C(*v46, v47);
  sub_1001D46E4(v31, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v49 = v39;
  if (v47 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_1000CB960(v45, v31);
  sub_100012400(&v31[*(v28 + 24)], v22, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v31, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v50 = v159;
  v51 = v160;
  if ((*(v160 + 48))(v22, 1, v159) == 1)
  {
    sub_100017554(v48, v47);
    sub_100016290(v22, &unk_100595C40, &qword_100499070);
LABEL_8:
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Authentication response verification failed because no encrypted signature or public key found", v54, 2u);
    }

LABEL_11:
    v55 = v49;
LABEL_12:
    sub_1001D46E4(v55, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    return 0;
  }

  (*(v51 + 32))(v158, v22, v50);
  v57 = v152;
  sub_1001BDF68(v48, v47, v152);
  v58 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    sub_100016290(v57, &qword_10058FE68, &qword_100493958);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Authentication response verification failed because authentication response parsing failed", v61, 2u);
    }

    sub_100017554(v48, v47);

    (*(v160 + 8))(v158, v50);
    goto LABEL_11;
  }

  v132 = v28;
  v138 = v48;
  v139 = v47;
  v134 = *(v58 + 48);
  v62 = (v57 + *(v58 + 64));
  v64 = *v62;
  v63 = v62[1];
  v137 = v64;
  v136 = v63;
  v65 = v149;
  v133 = *(v149 + 48);
  v66 = v150;
  v67 = &v150[*(v149 + 64)];
  v140 = v49;
  v135 = *(v157 + 32);
  v68 = v156;
  v135(v150, v57, v156);
  v69 = *(v154 + 32);
  v70 = v57 + v134;
  v71 = v155;
  v69(&v66[v133], v70, v155);
  v72 = v136;
  *v67 = v137;
  *(v67 + 1) = v72;
  v73 = v68;
  v74 = *(v65 + 48);
  v75 = &v66[*(v65 + 64)];
  v77 = *v75;
  v76 = v75[1];
  v149 = v77;
  v152 = v76;
  v78 = v151;
  v135(v151, v66, v73);
  v79 = v140;
  v80 = v153;
  v69(v153, &v66[v74], v71);
  v81 = v78;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v113 = v79;
    v114 = v149;
    v115 = v152;
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v159;
    if (v118)
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "Authentication response verification failed because identifiers did not match", v120, 2u);
    }

    sub_100017554(v138, v139);
    sub_1000124C8(v114, v115);

    (*(v154 + 8))(v80, v155);
    (*(v157 + 8))(v81, v156);
    (*(v160 + 8))(v158, v119);
    v55 = v113;
    goto LABEL_12;
  }

  v82 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v83 = v160;
  v85 = v84;
  v86 = v145;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v87 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v89 = v88;
  v90 = *(v83 + 8);
  v160 = v83 + 8;
  v150 = v90;
  (v90)(v86, v159);
  v167 = v82;
  v168 = v85;
  v165 = &type metadata for Data;
  v166 = &protocol witness table for Data;
  v163 = v87;
  v164 = v89;
  v91 = sub_100029B34(&v163, &type metadata for Data);
  v92 = *v91;
  v93 = v91[1];
  sub_10000AB0C(v82, v85);
  sub_10000AB0C(v87, v89);
  sub_100178A18(v92, v93);
  sub_1000124C8(v87, v89);
  sub_1000124C8(v82, v85);
  sub_100002A00(&v163);
  v94 = v167;
  v95 = v168;
  v96 = sub_1001BC174(v153, v167, v168);
  sub_1000124C8(v94, v95);
  v163 = v149;
  v164 = v152;
  v97 = v157;
  v98 = v146;
  (*(v157 + 16))(v146, v81, v156);
  v167 = UUID.uuid.getter();
  v168 = v99;
  v100 = v156;
  v101 = sub_10004F3B0(&v167, &v169);
  v103 = v102;
  v104 = *(v97 + 8);
  v157 = v97 + 8;
  v147 = v104;
  v104(v98, v100);
  v167 = v101;
  v168 = v103;
  v105 = v148[5];
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  v106 = static HMAC.isValidAuthenticationCode<A, B>(_:authenticating:using:)();
  sub_1000124C8(v167, v168);
  if ((v96 & 1) == 0 || (v106 & 1) == 0)
  {
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Authentication response verification failed", v123, 2u);
    }

    sub_100017554(v138, v139);
    sub_1000124C8(v149, v152);

    (*(v154 + 8))(v153, v155);
    v147(v151, v100);
    (v150)(v158, v159);
    v55 = v140;
    goto LABEL_12;
  }

  sub_1000CB960(v161, v31);
  v107 = &v31[*(v132 + 36)];
  v109 = *v107;
  v108 = v107[1];
  sub_10005D67C(*v107, v108);
  sub_1001D46E4(v31, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v108 >> 60 == 15)
  {
    sub_100017554(v138, v139);
    sub_1000124C8(v149, v152);
    v110 = 0;
    v111 = v159;
    v112 = v151;
  }

  else
  {
    sub_10000AB0C(v109, v108);
    sub_10000AB0C(v109, v108);
    v124 = v143;
    sub_1001BC944(v109, v108);
    v111 = v159;
    v125 = v152;
    v126 = v149;
    v127 = v148[6];
    v128 = static AES.GCM.open(_:using:)();
    v130 = v129;
    (*(v141 + 8))(v124, v142);
    v110 = sub_1000D201C(v128, v130);
    v131 = v130;
    v112 = v151;
    sub_1000124C8(v128, v131);
    sub_100017554(v109, v108);
    sub_100017554(v138, v139);
    sub_1000124C8(v126, v125);
    sub_100017554(v109, v108);
    v100 = v156;
  }

  (*(v154 + 8))(v153, v155);
  v147(v112, v100);
  (v150)(v158, v111);
  sub_1001D46E4(v140, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  *v144 = v110;
  return 1;
}