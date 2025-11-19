uint64_t sub_1000167B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100016960(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001A698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100016B1C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100016238(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10001A698(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100002E28(v23);

    return sub_100011300(a1, v23);
  }

  else
  {
    sub_100016AB0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100016AB0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011300(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100016B1C()
{
  v1 = v0;
  sub_100003400(&qword_10002D1D0, &qword_100022670);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000112A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011300(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100016CC0()
{
  v1 = v0;
  sub_100003400(&qword_10002D1D8, &qword_100022678);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

Swift::Bool __swiftcall writeNarrativeRequestToTempFile()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._object = 0x8000000100020710;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  return preferencesBoolValue(_:domain:)(v0, narrativeCertPrefDomain).value;
}

Swift::Int __swiftcall maxRetryAttempt()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._countAndFlagsBits = 0x797274655278614DLL;
  v0._object = 0xED0000746E756F43;
  v2 = preferencesIntegerValue(_:domain:)(v0, narrativeCertPrefDomain);
  if (v2.is_nil)
  {
    v2.value = 10;
  }

  return v2.value;
}

Swift::String __swiftcall narrativeEndpoint()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._countAndFlagsBits = 0x766974617272614ELL;
  v0._object = 0xEC0000004C525565;
  v3 = preferencesStringValue(_:domain:)(v0, narrativeCertPrefDomain);
  object = v3.value._object;
  countAndFlagsBits = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {
    countAndFlagsBits = 0xD000000000000023;
    object = 0x8000000100020860;
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Bool __swiftcall disableCertRefresh()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._object = 0x80000001000210A0;
  v0._countAndFlagsBits = 0xD000000000000012;
  return preferencesBoolValue(_:domain:)(v0, narrativeCertPrefDomain).value;
}

uint64_t sub_100017134()
{
  result = narrativecertdMachServiceName.getter();
  narrativeCertPrefDomain._countAndFlagsBits = result;
  narrativeCertPrefDomain._object = v1;
  return result;
}

Swift::String *narrativeCertPrefDomain.unsafeMutableAddressor()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  return &narrativeCertPrefDomain;
}

Swift::Int_optional __swiftcall preferencesIntegerValue(_:domain:)(Swift::String _, Swift::String domain)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyValue(v2, v3, kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFNumberGetTypeID())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    v9 = 1;
    goto LABEL_6;
  }

  type metadata accessor for CFNumber(0);
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastUnknownClassUnconditional();
  v7 = Int.init(truncating:)();
  swift_unknownObjectRelease();

  v8 = v7;
  v9 = 0;
LABEL_6:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Double_optional __swiftcall preferencesDoubleValue(_:domain:)(Swift::String _, Swift::String domain)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyValue(v2, v3, kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFNumberGetTypeID())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  type metadata accessor for CFNumber(0);
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastUnknownClassUnconditional();
  Double.init(truncating:)();
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v9;
LABEL_6:
  result.value = v5;
  result.is_nil = v10;
  return result;
}

Swift::Bool_optional __swiftcall preferencesBoolValue(_:domain:)(Swift::String _, Swift::String domain)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyValue(v2, v3, kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 == CFBooleanGetTypeID())
    {
      type metadata accessor for CFNumber(0);
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastUnknownClassUnconditional();
      v7 = Bool.init(truncating:)();
      swift_unknownObjectRelease();

      return (v7 & 1);
    }

    swift_unknownObjectRelease();
  }

  return 2;
}

Swift::String_optional __swiftcall preferencesStringValue(_:domain:)(Swift::String _, Swift::String domain)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyValue(v2, v3, kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  type metadata accessor for CFString(0);
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastUnknownClassUnconditional();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v9;
  v11 = v7;
LABEL_6:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

Swift::OpaquePointer_optional __swiftcall preferencesDictionaryValue(_:domain:)(Swift::String _, Swift::String domain)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyValue(v2, v3, kCFPreferencesAnyUser, kCFPreferencesAnyHost);

  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFDictionaryGetTypeID())
  {
    swift_unknownObjectRelease();
LABEL_16:
    v11 = 0;
    goto LABEL_22;
  }

  type metadata accessor for CFDictionary(0);
  v14 = swift_dynamicCastUnknownClassUnconditional();
  v24 = NSDictionary.makeIterator()();
  type metadata accessor for NSDictionary.Iterator();
  sub_100017898();
  dispatch thunk of IteratorProtocol.next()();
  if (*(&v21 + 1))
  {
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v18[0] = v20;
      v18[1] = v21;
      v19[0] = v22;
      v19[1] = v23;
      sub_1000112A4(v18, v17);
      if (swift_dynamicCast())
      {
        sub_1000112A4(v19, v17);
        if (swift_dynamicCast())
        {
          sub_10001810C(v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100017B98(0, v7[2] + 1, 1, v7);
          }

          v9 = v7[2];
          v8 = v7[3];
          if (v9 >= v8 >> 1)
          {
            v7 = sub_100017B98((v8 > 1), v9 + 1, 1, v7);
          }

          v7[2] = v9 + 1;
          v10 = &v7[4 * v9];
          v10[4] = v15;
          v10[5] = v16;
          v10[6] = v15;
          v10[7] = v16;
          goto LABEL_7;
        }
      }

      sub_10001810C(v18);
LABEL_7:
      dispatch thunk of IteratorProtocol.next()();
      if (!*(&v21 + 1))
      {
        goto LABEL_18;
      }
    }
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_18:

  if (v7[2])
  {
    sub_100003400(&qword_10002D1D8, &qword_100022678);
    v12 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  *&v20 = v12;

  sub_100017D5C(v13, 1, &v20);

  v11 = v20;
LABEL_22:
  result.value._rawValue = v11;
  result.is_nil = v5;
  return result;
}

unint64_t sub_100017898()
{
  result = qword_10002D1E0;
  if (!qword_10002D1E0)
  {
    type metadata accessor for NSDictionary.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1E0);
  }

  return result;
}

Swift::Bool __swiftcall useNarrativeTestEndpoint()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._object = 0x8000000100021300;
  v0._countAndFlagsBits = 0xD000000000000018;
  return preferencesBoolValue(_:domain:)(v0, narrativeCertPrefDomain).value;
}

Swift::Int __swiftcall certRefreshActivityDelay()()
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v0._object = 0x8000000100021340;
  v0._countAndFlagsBits = 0xD000000000000018;
  v2 = preferencesIntegerValue(_:domain:)(v0, narrativeCertPrefDomain);
  if (v2.is_nil)
  {
    v2.value = sub_100017CD0(0x1EuLL) + 45;
  }

  return v2.value;
}

char *sub_100017A8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003400(&qword_10002D120, &qword_100022600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017B98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003400(&qword_10002CD90, &qword_100021F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003400(&qword_10002CD98, &qword_100021F08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100017CD0(unint64_t result)
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

uint64_t sub_100017D5C(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10001A698(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000164F0(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10001A698(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100016CC0();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100003400(&qword_10002CD80, &unk_100021EF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100021390;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_10001A698(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1000164F0(v32, 1);
        v33 = *a3;
        v28 = sub_10001A698(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10001810C(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002D1E8, &qword_1000226B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018174(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100018174(v6, a2, a3);
  }

  return result;
}

__n128 sub_100018218(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100018224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001826C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000182C8()
{
  _StringGuts.grow(_:)(71);
  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001000213B0;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x67617373656D202CLL;
  v2._object = 0xEB00000000203A65;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x80000001000213E0;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  if (v0[3]._object)
  {
    countAndFlagsBits = v0[3]._countAndFlagsBits;
    object = v0[3]._object;
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  String.append(_:)(v6);

  return 0;
}

__n128 sub_1000183D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000183F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100018440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000184A0()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x5F74736575716572;
  v4 = 0x6D5F6E69616D6F64;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100018548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001857C(uint64_t a1)
{
  v2 = sub_100018BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000185B8(uint64_t a1)
{
  v2 = sub_100018BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000185F4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100018810(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100018648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5F74736575716572 && a2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D5F6E69616D6F64 && a2 == 0xEE00656761737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100021400 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100018810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003400(&qword_10002D1F0, &qword_1000227E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100003448(a1, a1[3]);
  sub_100018BEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002E28(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v28 = v13;
  LOBYTE(v37[0]) = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  LOBYTE(v37[0]) = 3;
  *&v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v26 + 1) = v16;
  sub_100003400(&qword_10002D200, &qword_1000227E8);
  v38 = 4;
  sub_100018C40();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = v39;
  v18 = v30;
  v17 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v28;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  v21 = *(&v26 + 1);
  v35 = v26;
  v36 = v39;
  sub_100018D18(&v32, v37);
  sub_100002E28(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v18;
  v37[4] = v27;
  v37[5] = v20;
  v37[6] = v26;
  v37[7] = v21;
  v37[8] = v25;
  result = sub_10000AF78(v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_100018BEC()
{
  result = qword_10002D1F8;
  if (!qword_10002D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1F8);
  }

  return result;
}

unint64_t sub_100018C40()
{
  result = qword_10002D208;
  if (!qword_10002D208)
  {
    sub_100003658(&qword_10002D200, &qword_1000227E8);
    sub_100018CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D208);
  }

  return result;
}

unint64_t sub_100018CC4()
{
  result = qword_10002D210;
  if (!qword_10002D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D210);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeCertResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NarrativeCertResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100018EA4()
{
  result = qword_10002D218;
  if (!qword_10002D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D218);
  }

  return result;
}

unint64_t sub_100018EFC()
{
  result = qword_10002D220;
  if (!qword_10002D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D220);
  }

  return result;
}

unint64_t sub_100018F54()
{
  result = qword_10002D228;
  if (!qword_10002D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D228);
  }

  return result;
}

uint64_t sub_100018FA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D230);
  sub_100002AD8(v0, qword_10002D230);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

void *sub_10001900C()
{
  v1 = v0;
  v21[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v21[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v0[2] = narrativecertdMachServiceName.getter();
  v0[3] = v8;
  sub_10000AE38();
  static DispatchQoS.unspecified.getter();
  v21[1] = &_swiftEmptyArrayStorage;
  sub_10001D294(&qword_10002D018, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003400(&qword_10002D020, &unk_100022370);
  sub_10001D2DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21[0]);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002AD8(v9, qword_10002D230);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Initializing narrativecertd", v12, 2u);
  }

  v13 = v1[2];
  v14 = v1[3];
  v15 = objc_allocWithZone(NSXPCListener);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithMachServiceName:v16];

  v1[5] = v17;
  v18 = [objc_allocWithZone(type metadata accessor for NarrativeCertXPCDelegate()) init];
  v1[6] = v18;
  [v1[5] setDelegate:v18];
  v19 = v1[6];
  swift_weakAssign();
  [v1[5] resume];
  return v1;
}

uint64_t sub_1000193EC(int a1, int a2, void *aBlock, uint64_t (*a4)(void), const char *a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  _Block_copy(v9);

  sub_10001B988(v10, v9, a4, a5, a6);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_1000194B4(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_1000195FC(void *a1)
{
  v11 = 0;
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10001A014;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10001A02C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019F40;
  aBlock[3] = &unk_100029A68;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

void sub_10001975C(void *a1, void **a2)
{
  v4 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  if (v4)
  {
    if (qword_10002CB18 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002AD8(v5, qword_10002D230);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      v11 = NarrativeCert.keychainLabel.getter();
      v13 = sub_10001A0F0(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "NarrativeIdentity for %{public}s already exists", v9, 0xCu);
      sub_100002E28(v10);
    }

    v14 = *a2;
    *a2 = 0;
  }

  else
  {
    sub_10000B540();
    v15 = *a2;
    *a2 = 0;

    if (qword_10002CB18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002AD8(v16, qword_10002D230);
    v17 = a1;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446210;
      v21 = NarrativeCert.keychainLabel.getter();
      v23 = sub_10001A0F0(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Successfully created NarrativeIdentity for %{public}s", v19, 0xCu);
      sub_100002E28(v20);

      return;
    }

    v14 = oslog;
  }
}

uint64_t sub_100019F68()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100019FDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A02C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001A054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A094(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10001A0F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10001A0F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001A1BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000112A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002E28(v11);
  return v7;
}

unint64_t sub_10001A1BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001A2C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001A2C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001A314(a1, a2);
  sub_10001A444(&off_100028E80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001A314(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001A530(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001A530(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001A444(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10001A5A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001A530(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003400(&qword_10002D380, &unk_100022970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A5A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003400(&qword_10002D380, &unk_100022970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10001A698(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001A808(a1, a2, v6);
}

unint64_t sub_10001A710(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10001D294(&unk_10002D390, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001A8C0(a1, v4);
}

unint64_t sub_10001A7C4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001A9CC(a1, v4);
}

unint64_t sub_10001A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001A8C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10001D294(&unk_10002D390, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001A9CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001D1E4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001D240(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001AA94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003400(&qword_10002D1D8, &qword_100022678);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001A698(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_10001ABA8()
{
  v0 = static SupportedNarrativeIdentities.allCases.getter();
  v59 = *(v0 + 16);
  v60 = v0;
  if (v59)
  {
    v1 = 0;
    v2 = 0;
    while (1)
    {
      if (v1 >= *(v60 + 16))
      {
        __break(1u);
        return;
      }

      v3 = *(v60 + 8 * v1 + 32);
      v4 = SupportedNarrativeIdentities.rawValue.getter();
      v5 = NarrativeCert.domain.getter();

      v6 = SupportedNarrativeIdentities.rawValue.getter();
      v7 = NarrativeCert.identityType.getter();

      v8 = objc_allocWithZone(type metadata accessor for NarrativeCert());
      v9 = NarrativeCert.init(domain:identityType:)();
      v10 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
      if (!v10)
      {
        if (qword_10002CB18 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100002AD8(v24, qword_10002D230);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v57 = v9;
          v27 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v27 = 136446466;
          v28 = NarrativeDomain.rawValue.getter();
          v30 = sub_10001A0F0(v28, v29, &v61);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2082;
          v31 = NarrativeIdentityType.rawValue.getter();
          v33 = sub_10001A0F0(v31, v32, &v61);

          *(v27 + 14) = v33;
          _os_log_impl(&_mh_execute_header, v25, v26, "No refs detected for domain: %{public}s, identityType: %{public}s", v27, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_4;
      }

      v11 = v10;
      if (qword_10002CB18 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100002AD8(v12, qword_10002D230);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v56 = v9;
        v58 = v2;
        v15 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v15 = 136446466;
        v16 = NarrativeDomain.rawValue.getter();
        v18 = v1;
        v19 = sub_10001A0F0(v16, v17, &v61);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v20 = NarrativeIdentityType.rawValue.getter();
        v22 = sub_10001A0F0(v20, v21, &v61);

        *(v15 + 14) = v22;
        v1 = v18;
        _os_log_impl(&_mh_execute_header, v13, v14, "Reregistering xpc activity for domain: %{public}s, identityType: %{public}s", v15, 0x16u);
        swift_arrayDestroy();

        v9 = v56;
        v2 = v58;
      }

      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v7 == 2)
          {
            v23 = sub_1000079CC(2);
            goto LABEL_44;
          }

          v46 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v52))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            v49 = v52;
            v50 = v46;
            v51 = "Unsupported acdc identity type";
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v5 == 3)
        {
          if (v7 == 1)
          {
            v34 = dispatch thunk of NarrativeRefs.certRef.getter();
            v35 = sub_100005C48();

            if (v35)
            {
              v23 = sub_1000060E0(1, v35);
              goto LABEL_44;
            }

            v46 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v46, v55))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              v49 = v55;
              v50 = v46;
              v51 = "Unable to parse Aquaria SANs from certificate. Failed to re-register refresh activity.";
LABEL_50:
              _os_log_impl(&_mh_execute_header, v50, v49, v51, v48, 2u);
            }
          }

          else
          {
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              v49 = v47;
              v50 = v46;
              v51 = "Unsupported aquaria identity type";
              goto LABEL_50;
            }
          }

LABEL_51:

LABEL_52:
          goto LABEL_4;
        }
      }

      else
      {
        if (!v5)
        {
          if (v7 == 2)
          {
            v45 = 2;
          }

          else if (v7 == 1)
          {
            v45 = 1;
          }

          else
          {
            if (v7)
            {
              v46 = Logger.logObject.getter();
              v54 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v46, v54))
              {
                v48 = swift_slowAlloc();
                *v48 = 0;
                v49 = v54;
                v50 = v46;
                v51 = "Unsupported example identity type";
                goto LABEL_50;
              }

              goto LABEL_51;
            }

            v45 = 0;
          }

          v23 = sub_1000118BC(v45, 0);
          goto LABEL_44;
        }

        if (v5 == 1)
        {
          if (v7 == 1)
          {
            v23 = sub_100008868(1);
            goto LABEL_44;
          }

          if (v7)
          {
            v46 = Logger.logObject.getter();
            v53 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v46, v53))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              v49 = v53;
              v50 = v46;
              v51 = "Unsupported adb identity type";
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          v23 = sub_100008868(0);
LABEL_44:
          v36 = v23;
          sub_10001D9E8();
LABEL_45:

          goto LABEL_52;
        }
      }

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_45;
      }

      v38 = swift_slowAlloc();
      v39 = v9;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v38 = 136446210;
      v41 = NarrativeDomain.rawValue.getter();
      v43 = v11;
      v44 = sub_10001A0F0(v41, v42, &v61);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unsupported domain: %{public}s", v38, 0xCu);
      sub_100002E28(v40);

LABEL_4:
      if (v59 == ++v1)
      {

        return;
      }
    }
  }
}

unint64_t sub_10001B444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003400(&qword_10002D1D0, &qword_100022670);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001B918(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001A698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011300(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_10001B554(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002D100, &qword_1000225E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001B5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003400(&qword_10002D388, &qword_100022980);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10001A710(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_10001B6B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 4)
  {
    v6 = -5;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 3)
  {
    v7 = -4;
  }

  else
  {
    v7 = v6;
  }

  v8 = -1;
  v9 = -2;
  if (a3 != 1)
  {
    v9 = -3;
  }

  if (a3)
  {
    v8 = v9;
  }

  if (a3 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022440;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  sub_100006A64(a1, a2, a3);
  v13 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  sub_10001B444(inited);
  swift_setDeallocating();
  sub_10001B554(inited + 32);
  v15 = objc_allocWithZone(NSError);
  v16 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithDomain:v16 code:v10 userInfo:isa];

  return v18;
}

uint64_t sub_10001B918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002D100, &qword_1000225E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10001B988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4, uint64_t a5)
{
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002AD8(v9, qword_10002D230);
  v10 = Logger.logObject.getter();
  v11 = a3();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 2u);
  }

  v13 = sub_1000118BC(a5, 0);
  v14 = sub_1000195FC(v13);
  (*(a2 + 16))(a2, v14);
}

void sub_10001BAD4(uint64_t a1, uint64_t a2)
{
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002AD8(v3, qword_10002D230);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "configureAdbPlatformIdentity XPC received", v6, 2u);
  }

  v7 = sub_100008868(0);
  v8 = sub_1000195FC(v7);
  (*(a2 + 16))(a2, v8);
}

void sub_10001C094(uint64_t a1, uint64_t a2)
{
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002AD8(v3, qword_10002D230);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "configureAdbHostIdentity XPC received", v6, 2u);
  }

  v7 = sub_100008868(1);
  v8 = sub_1000195FC(v7);
  (*(a2 + 16))(a2, v8);
}

void sub_10001C654(uint64_t a1, uint64_t a2)
{
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002AD8(v3, qword_10002D230);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "configureAcdcActorIdentity XPC received", v6, 2u);
  }

  v7 = sub_1000079CC(2);
  v8 = sub_1000195FC(v7);
  (*(a2 + 16))(a2, v8);
}

void sub_10001CC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10002CB18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002AD8(v5, qword_10002D230);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "configureAquariaHostIdentity XPC received", v8, 2u);
  }

  v9 = sub_1000060E0(1, a1);
  v10 = sub_1000195FC(v9);
  (*(a3 + 16))(a3, v10);
}

uint64_t sub_10001D294(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001D2DC()
{
  result = qword_10002D028;
  if (!qword_10002D028)
  {
    sub_100003658(&qword_10002D020, &unk_100022370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D028);
  }

  return result;
}

uint64_t sub_10001D340(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_10001D35C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001D370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001D3B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001D3FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001D424()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D3A0);
  sub_100002AD8(v0, qword_10002D3A0);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

id sub_10001D540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeCertXPCDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001D5A8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_10001D5F4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10001D604(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001D624(void *a1)
{
  if (qword_10002CB20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002AD8(v2, qword_10002D3A0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [v3 processIdentifier];

    _os_log_impl(&_mh_execute_header, v4, v5, "New connection incoming from %d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 valueForEntitlement:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  sub_10001D910(v18, &v16);
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v15)
    {
      v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP16libnarrativecert24NarrativeCertXPCProtocol_];
      [v3 setExportedInterface:v9];

      [v3 setExportedObject:swift_weakLoadStrong()];

      [v3 resume];
      v10 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10001D980(&v16);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Missing required entitlement: com.apple.private.narrativecertd.configure", v13, 2u);
  }

  v10 = 0;
LABEL_17:
  sub_10001D980(v18);
  return v10;
}

uint64_t sub_10001D910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002CD88, "H\t");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D980(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002CD88, "H\t");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DEA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D4B0);
  sub_100002AD8(v0, qword_10002D4B0);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10001DF1C(_xpc_activity_s *a1, void *a2, double a3)
{
  if (qword_10002CB28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002AD8(v6, qword_10002D4B0);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v65 = v11;
    *v10 = 136446210;
    v12 = NarrativeCert.keychainLabel.getter();
    v14 = sub_10001A0F0(v12, v13, &v65);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Refresh activity for %{public}s activated", v10, 0xCu);
    sub_100002E28(v11);
  }

  state = xpc_activity_get_state(a1);
  v16 = v7;
  oslog = Logger.logObject.getter();
  if (state != 2)
  {
    if (state)
    {
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 134218242;
        *(v42 + 4) = state;
        *(v42 + 12) = 2082;
        v44 = NarrativeCert.keychainLabel.getter();
        v46 = sub_10001A0F0(v44, v45, &v65);

        *(v42 + 14) = v46;
        _os_log_impl(&_mh_execute_header, oslog, v41, "Unexpected state %ld for %{public}s refresh activity", v42, 0x16u);
        sub_100002E28(v43);
        goto LABEL_17;
      }
    }

    else
    {
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v65 = v19;
        *v18 = 136446210;
        v20 = NarrativeCert.keychainLabel.getter();
        v22 = sub_10001A0F0(v20, v21, &v65);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, oslog, v17, "Refresh check-in for %{public}s", v18, 0xCu);
        sub_100002E28(v19);
LABEL_17:

        v40 = oslog;
        goto LABEL_18;
      }
    }

    goto LABEL_25;
  }

  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v65 = v25;
    *v24 = 136446210;
    v26 = NarrativeCert.keychainLabel.getter();
    v28 = sub_10001A0F0(v26, v27, &v65);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, oslog, v23, "Running refresh activity for %{public}s", v24, 0xCu);
    sub_100002E28(v25);
  }

  v29 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  oslog = v29;
  if (!v29)
  {
    v47 = v16;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v51;
      *v50 = 136446210;
      v52 = NarrativeCert.keychainLabel.getter();
      v54 = sub_10001A0F0(v52, v53, &v65);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error: Refresh called for %{public}s, but no refs found! Fetching new refs anyway.", v50, 0xCu);
      sub_100002E28(v51);
    }

    goto LABEL_22;
  }

  v63 = v29;
  v30 = dispatch thunk of NarrativeRefs.certRef.getter();
  v31 = sub_10001E944(a3);

  if (v31)
  {
LABEL_22:
    sub_10000B540();
    v55 = v16;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v65 = v59;
      *v58 = 136446210;
      v60 = NarrativeCert.keychainLabel.getter();
      v62 = sub_10001A0F0(v60, v61, &v65);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "Successfully refreshed identity for %{public}s", v58, 0xCu);
      sub_100002E28(v59);
    }

    sub_10001F064();
LABEL_25:
    v40 = oslog;
    goto LABEL_26;
  }

  v32 = v16;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v65 = v36;
    *v35 = 136446210;
    v37 = NarrativeCert.keychainLabel.getter();
    v39 = sub_10001A0F0(v37, v38, &v65);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Refresh activity for %{public}s ran, but cert not due for refresh.", v35, 0xCu);
    sub_100002E28(v36);

    v40 = v63;
    goto LABEL_18;
  }

  v40 = v63;
LABEL_26:

LABEL_18:
}

CFDateRef sub_10001E944(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v72[-v9];
  v11 = __chkstk_darwin(v8);
  v13 = &v72[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v72[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v72[-v18];
  __chkstk_darwin(v17);
  v21 = &v72[-v20];
  SecCertificateNotValidBefore();
  v23 = v22;
  SecCertificateNotValidAfter();
  v25 = v24;
  v26 = v23 + (v24 - v23) * a1;
  Current = CFAbsoluteTimeGetCurrent();
  result = CFDateCreate(kCFAllocatorDefault, v26);
  if (result)
  {
    v29 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = CFDateCreate(kCFAllocatorDefault, v25);
    if (result)
    {
      v30 = result;
      v31 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v21;
      if (v26 >= Current)
      {
        if (qword_10002CB28 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100002AD8(v52, qword_10002D4B0);
        v53 = v3[2];
        v53(v10, v19, v2);
        v54 = v7;
        v53(v7, v21, v2);
        v35 = v31;
        v55 = v76;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v77 = v74;
          *v58 = 136446722;
          v73 = v57;
          v59 = NarrativeCert.keychainLabel.getter();
          v61 = sub_10001A0F0(v59, v60, &v77);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2082;
          sub_10001F2B0();
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v35;
          v76 = v32;
          v64 = v63;
          v46 = v3[1];
          v46(v10, v2);
          v65 = sub_10001A0F0(v62, v64, &v77);

          *(v58 + 14) = v65;
          *(v58 + 22) = 2082;
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          v46(v54, v2);
          v69 = sub_10001A0F0(v66, v68, &v77);

          *(v58 + 24) = v69;
          _os_log_impl(&_mh_execute_header, v56, v73, "Refresh not due for %{public}s. Expiry: %{public}s, Refresh: %{public}s", v58, 0x20u);
          swift_arrayDestroy();

          goto LABEL_12;
        }

        v70 = v3[1];
        v70(v54, v2);
        v71 = v10;
      }

      else
      {
        if (qword_10002CB28 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100002AD8(v33, qword_10002D4B0);
        v34 = v3[2];
        v34(v16, v19, v2);
        v34(v13, v21, v2);
        v35 = v19;
        v36 = v76;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v77 = v74;
          *v39 = 136446722;
          v73 = v38;
          v40 = NarrativeCert.keychainLabel.getter();
          v42 = sub_10001A0F0(v40, v41, &v77);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2082;
          sub_10001F2B0();
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v35;
          v76 = v32;
          v45 = v44;
          v46 = v3[1];
          v46(v16, v2);
          v47 = sub_10001A0F0(v43, v45, &v77);

          *(v39 + 14) = v47;
          *(v39 + 22) = 2082;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          v46(v13, v2);
          v51 = sub_10001A0F0(v48, v50, &v77);

          *(v39 + 24) = v51;
          _os_log_impl(&_mh_execute_header, v37, v73, "Refresh due for %{public}s. Expiry: %{public}s, Refresh: %{public}s", v39, 0x20u);
          swift_arrayDestroy();

LABEL_12:
          v46(v75, v2);
          v46(v76, v2);
          return (v26 < Current);
        }

        v70 = v3[1];
        v70(v13, v2);
        v71 = v16;
      }

      v70(v71, v2);
      v70(v35, v2);
      v70(v32, v2);
      return (v26 < Current);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F064()
{
  if (qword_10002CB28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002AD8(v1, qword_10002D4B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = NarrativeCert.refreshedNotificationName.getter();
    v9 = sub_10001A0F0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Posting notification: %{public}s", v5, 0xCu);
    sub_100002E28(v6);
  }

  NarrativeCert.refreshedNotificationName.getter();
  v10 = String.utf8CString.getter();

  notify_post((v10 + 32));
}

uint64_t sub_10001F1F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001F254()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001F2B0()
{
  result = qword_10002D4D0;
  if (!qword_10002D4D0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D4D0);
  }

  return result;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}