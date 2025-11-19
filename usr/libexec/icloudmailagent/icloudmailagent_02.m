uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 < v22 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a6 & 1);
      v26 = *v8;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * v17;
    v30 = *v29;
    v31 = *(v29 + 16);
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3;
    *(v29 + 24) = a7;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 16 * v17);
  *v33 = a4;
  v33[1] = a5;
  v34 = v28[7] + 32 * v17;
  *v34 = a1;
  *(v34 + 8) = a2;
  *(v34 + 16) = a3;
  *(v34 + 24) = a7;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v17 = *v4;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMd, &_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v24;
        v28[1] = v23;
        v28[2] = v25;
        v28[3] = v26;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCypGMd, &_ss18_DictionaryStorageCySo8NSStringCypGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void specialized CategorizationManager.predictCommerceEmail(with:completion:)(void *a1, uint64_t a2, void *aBlock)
{
  v8 = &_swiftEmptyDictionarySingleton;
  _Block_copy(aBlock);
  v6 = objc_autoreleasePoolPush();
  specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(a2, a1, &v8, aBlock);
  objc_autoreleasePoolPop(v6);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(aBlock + 2))(aBlock, isa, 0);
}

void specialized CategorizationManager.isModelReady(completion:)(uint64_t a1, uint64_t a2)
{
  if (CategorizationManager.fetchNlp()())
  {
    v3 = dispatch thunk of MCCNLP.isModelPresetLoaded.getter();
    (*(a2 + 16))(a2, v3 & 1, 0);
  }

  else
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithDomain:v5 code:-1 userInfo:0];

    v7 = v6;
    v8 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v8);
  }
}

void specialized CategorizationManager.invokeModelDownload(completion:)(uint64_t a1, uint64_t a2)
{
  if (CategorizationManager.fetchNlp()())
  {
    dispatch thunk of MCCNLP.scheduleImmediateDownload()();
    v3 = dispatch thunk of MCCNLP.isModelPresetLoaded.getter();
    (*(a2 + 16))(a2, v3 & 1, 0);
  }

  else
  {
    v4 = objc_allocWithZone(NSError);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithDomain:v5 code:-1 userInfo:0];

    v7 = v6;
    v8 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v8);
  }
}

void specialized CategorizationManager.getIABCategoryID(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (CategorizationManager.fetchNlp()())
  {
    v9 = a5(a1, a2);
    (*(a4 + 16))(a4, v9, 0);
  }

  else
  {
    v10 = objc_allocWithZone(NSError);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithDomain:v11 code:-1 userInfo:0];

    v13 = v12;
    v14 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v14);
  }
}

void specialized CategorizationManager.isPersonalDomain(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CategorizationManager.fetchNlp()())
  {
    v5 = dispatch thunk of MCCNLP.isPersonalEmail(domain:)();
    (*(a4 + 16))(a4, v5 & 1, 0);
  }

  else
  {
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithDomain:v7 code:-1 userInfo:0];

    v9 = v8;
    v10 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v10);
  }
}

void specialized CategorizationManager.getBlackPearlVersion(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BlackPearlCategorizationVersion();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CategorizationManager.fetchNlp()())
  {
    dispatch thunk of MCCNLP.getBlackPearlCatVersion()();
    v13 = kBPCategorizationMajorVersionKey;
    v14 = BlackPearlCategorizationVersion.getMajorVersion()();
    v30 = &type metadata for Int;
    *&v29 = v14;
    outlined init with take of Any(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v13, isUniquelyReferenced_nonNull_native);
    v16 = v27;
    v17 = kBPCategorizationMinorVersionKey;
    v18 = BlackPearlCategorizationVersion.getMinorVersion()();
    v30 = &type metadata for Int;
    *&v29 = v18;
    outlined init with take of Any(&v29, v28);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v17, v19);
    v20 = v27;
    v21 = kBPCategorizationPatchVersionKey;
    v22 = BlackPearlCategorizationVersion.getPatchVersion()();
    v30 = &type metadata for Int;
    *&v29 = v22;
    outlined init with take of Any(&v29, v28);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v21, v23);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v8 = objc_allocWithZone(NSError);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithDomain:v9 code:-1 userInfo:0];

    v11 = v10;
    v26 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v26);

    v12 = v26;
  }
}

void specialized CategorizationManager.isCategorizationSupported(forLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocaleHelper();
  v4 = static LocaleHelper.isCategorizationSupported(forLocale:)();
  if (v4 == 2)
  {
    v5 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithDomain:v6 code:-1 userInfo:0];

    v8 = v7;
    v10 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v10);
  }

  else
  {
    v9 = *(a3 + 16);

    v9(a3, v4 & 1, 0);
  }
}

uint64_t lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OSTransactionHelper.makeTransaction()()
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v0 = v1;
    *(v1 + 16) = v4;
    if (one-time initialization token for rules == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.rules);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v0 + 16);

    _os_log_impl(&_mh_execute_header, v6, v7, "CategorizationManager transaction being created as %llu", v8, 0xCu);
  }

  else
  {
  }

  _StringGuts.grow(_:)(39);

  v12 = *(v0 + 16);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  String.utf8CString.getter();

  v10 = os_transaction_create();

  return v10;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
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

uint64_t DeviceLockObserver.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v13 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(v0 + 24) = -1;
  LOBYTE(v16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, _s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 32) = CurrentValueSubject.init(_:)();
  v12[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = *(v0 + 32);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, _s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  *(v0 + 16) = Publisher.eraseToAnyPublisher()();
  *(v0 + 40) = 0;
  DeviceLockObserver.registerForLockStateNotifications()();
  DeviceLockObserver.updateLockedState()();
  return v0;
}

void DeviceLockObserver.registerForLockStateNotifications()()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = partial apply for closure #1 in DeviceLockObserver.registerForLockStateNotifications();
  v9[5] = v2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v9[3] = &block_descriptor_3;
  v3 = _Block_copy(v9);

  v4 = String.utf8CString.getter();
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + 24), v1, v3);
  swift_endAccess();

  _Block_release(v3);
  if (v1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sync);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not register for lock state notifications", v8, 2u);
    }
  }
}

uint64_t DeviceLockObserver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MCCAgentConnectionManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener;
  v2 = *&v0[OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener];
  if (v2)
  {
    v3 = v2;
    [v3 invalidate];
    [v3 setDelegate:0];

    v4 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for MCCAgentConnectionManager();
  return objc_msgSendSuper2(&v6, "dealloc");
}

id MCCAgentConnectionManager.start()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener;
  result = *(v0 + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
  if (result)
  {
    v3 = v0;
    result = [result serviceName];
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (one-time initialization token for agentConnectionManager != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.agentConnectionManager);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v15 = v12;
        *v11 = 136315138;
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v15);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Resuming XPC listener for Mach service %s...", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      else
      {
      }

      v14 = *(v3 + v1);
      if (v14)
      {
        [v14 setDelegate:v3];
        v14 = *(v3 + v1);
      }

      return [v14 resume];
    }
  }

  return result;
}

Swift::Bool __swiftcall MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v5 = specialized MCCAgentConnectionManager._hasValidEntitlementsOnConnection(_:)(shouldAcceptNewConnection.super.isa);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC15icloudmailagent25MCCAgentConnectionManager_secretAgentServiceListener);
    if (v6 && (type metadata accessor for NSXPCListener(), v7 = _.super.isa, v8 = v6, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) != 0))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:static MCCSecretAgentService.shared];
      v10 = objc_opt_self();
      v11 = [v10 XPCInterface];
      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v11];

      v12 = [v10 XPCInterface];
      [(objc_class *)shouldAcceptNewConnection.super.isa setRemoteObjectInterface:v12];

      v34 = closure #1 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:);
      v35 = 0;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v33 = &block_descriptor_4;
      v13 = _Block_copy(&v30);
      [(objc_class *)shouldAcceptNewConnection.super.isa setInterruptionHandler:v13];
      _Block_release(v13);
      v34 = closure #2 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:);
      v35 = 0;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v33 = &block_descriptor_9_0;
      v14 = _Block_copy(&v30);
      [(objc_class *)shouldAcceptNewConnection.super.isa setInvalidationHandler:v14];
      _Block_release(v14);
    }

    else
    {
      if (one-time initialization token for agentConnectionManager != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.agentConnectionManager);
      v23 = _.super.isa;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Fatal error! Unknown XPC listener: %@", v26, 0xCu);
        outlined destroy of TaskPriority?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }
    }

    [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  }

  else
  {
    if (one-time initialization token for agentConnectionManager != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.agentConnectionManager);
    v16 = shouldAcceptNewConnection.super.isa;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid entitlement on connection %@", v19, 0xCu);
      outlined destroy of TaskPriority?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }

  return v5 & 1;
}

void closure #1 in MCCAgentConnectionManager.listener(_:shouldAcceptNewConnection:)(const char *a1)
{
  if (one-time initialization token for agentConnectionManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.agentConnectionManager);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t specialized MCCAgentConnectionManager._hasValidEntitlementsOnConnection(_:)(void *a1)
{

  v2 = String._bridgeToObjectiveC()();

  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v5)
    {
      return 1;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v8, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

unint64_t type metadata accessor for NSXPCListener()
{
  result = lazy cache variable for type metadata for NSXPCListener;
  if (!lazy cache variable for type metadata for NSXPCListener)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSXPCListener);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall BlackPearlCategorizationVersion.getVersionString()()
{
  v0 = BlackPearlCategorizationVersion.getVersionString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlTreatmentId()()
{
  v0 = BlackPearlVersion.getBlackPearlTreatmentId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlExperimentId()()
{
  v0 = BlackPearlVersion.getBlackPearlExperimentId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutFactorPackId()()
{
  v0 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutId()()
{
  v0 = BlackPearlVersion.getBlackPearlRolloutId()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlSenderModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlSenderModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlBreakthroughVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlBreakthroughVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlTSModelVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlTSModelVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlFinalRuleVersion()()
{
  v0 = BlackPearlVersion.getBlackPearlFinalRuleVersion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}