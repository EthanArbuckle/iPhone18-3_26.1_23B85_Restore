Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v9 = *(a2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = type metadata accessor for CAUVehicleTrait();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = *v5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v25, a2, v26);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
LABEL_8:
    v18 = *v3;
    if (v13)
    {
      v19 = *(v18 + 56);
      v20 = *(v19 + 8 * result);
      *(v19 + 8 * result) = a1;

      return _objc_release_x1();
    }

    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + 8 * result) = a1;
    v21 = *(v18 + 16);
    v11 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v11)
    {
      *(v18 + 16) = v22;
      return result;
    }

    goto LABEL_15;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    specialized _NativeDictionary.copy()();
    result = v15;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a2 & 1);
  v16 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v13 & 1) == (v17 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for CAUVehicleTrait();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CAUVehicleTrait();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for CAUVehicleTrait();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMR);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMR);
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
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
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

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v6, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v6, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR, type metadata accessor for CAFDAgent._CAFDConnectionProxy, type metadata accessor for CAFDAgent._CAFDConnectionProxy);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for CAFDAgent._CAFDConnectionProxy();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v6, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR, type metadata accessor for _CAFDSessionBoosted, type metadata accessor for _CAFDSessionBoosted);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for _CAFDSessionBoosted();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    specialized _NativeSet._delete(at:)(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  specialized _NativeSet._delete(at:)(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  v11 = v6;
  v12 = *v6;

  v13 = __CocoaSet.count.getter();
  v14 = swift_unknownObjectRetain();
  v15 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(v14, v13, a3, a4, a5);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = NSObject._rawHashValue(seed:)(v16);
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    a6(0);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v15 + 48) + 8 * v19);
  specialized _NativeSet._delete(at:)(v19);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for CAFDAgent._CAFDConnectionProxy, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR, type metadata accessor for CAFDAgent._CAFDConnectionProxy);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _CAFDSessionBoosted, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR, type metadata accessor for _CAFDSessionBoosted);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          specialized _NativeSet.resize(capacity:)(v29 + 1, a4, a5);
        }

        v30 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v27 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v27, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v37;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2);
}

void specialized CAFDAppLaunchManager.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLaunchManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000440D0, &v18);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s currentCar updated to %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar;
  v13 = *&v2[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar];
  if (v13)
  {
    [v13 unregisterObserver:v2];
  }

  v14 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  v15 = *&v2[v14];
  *&v2[v14] = &_swiftEmptySetSingleton;

  v16 = *&v2[v12];
  *&v2[v12] = a1;

  if (a1)
  {
    v17 = v5;
    [v17 registerObserver:v2];
    [v2 carDidUpdateAccessories:v17];
  }
}

uint64_t getEnumTagSinglePayload for CAFDAppLaunchManager.Application(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CAFDAppLaunchManager.Application(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application()
{
  result = lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application;
  if (!lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application);
  }

  return result;
}

uint64_t sub_10002BFAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C004()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *CAFDAgent.init(configuration:)(uint64_t a1)
{
  v37 = type metadata accessor for CAFDAgent.Configuration(0);
  v3 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections] = v11;
  outlined init with copy of CAFDAgent.Configuration(a1, &v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration]);
  v12 = type metadata accessor for CAFDAgent(0);
  v39.receiver = v1;
  v39.super_class = v12;
  v13 = objc_msgSendSuper2(&v39, "init");
  v14 = __chkstk_darwin(v13);
  *(&v34 - 2) = a1;
  *(&v34 - 1) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in CAFDAgent.init(configuration:);
  *(v15 + 24) = &v34 - 4;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ();
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_48_0;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();
  v18 = v13;

  v19 = [v17 listenerWithConfigurator:v16];
  _Block_release(v16);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v21 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener;
    v22 = *&v18[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener];
    *&v18[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener] = v19;

    (*(v7 + 16))(v10, a1, v6);
    outlined init with copy of CAFDAgent.Configuration(a1, v5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v35 = v6;
      v28 = v27;
      *v26 = 136315138;
      v29 = &v5[*(v37 + 36)];
      v37 = a1;
      aBlock[0] = v27;
      v30 = v7;
      v32 = *v29;
      v31 = v29[1];

      outlined destroy of CAFDAgent.Configuration(v5);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, aBlock);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "activating listener for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);

      (*(v30 + 8))(v36, v35);
      a1 = v37;
    }

    else
    {

      outlined destroy of CAFDAgent.Configuration(v5);
      (*(v7 + 8))(v10, v6);
    }

    result = *&v18[v21];
    if (result)
    {
      [result activate];

      outlined destroy of CAFDAgent.Configuration(a1);
      return v18;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in CAFDAgent.init(configuration:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAFDAgent.Configuration(0);
  v7 = (a2 + *(v6 + 36));
  v8 = *v7;
  v9 = v7[1];
  v10 = String._bridgeToObjectiveC()();
  [a1 setDomain:v10];

  v11 = (a2 + *(v6 + 40));
  v12 = *v11;
  v13 = v11[1];
  v14 = String._bridgeToObjectiveC()();
  [a1 setService:v14];

  return [a1 setDelegate:a3];
}

uint64_t CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFDAgent._CAFDConnectionProxy();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v16, "init");
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:);
  *(v8 + 24) = v7;
  v15[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15[3] = &block_descriptor_29;
  v9 = _Block_copy(v15);
  v10 = v6;
  v11 = v5;
  v12 = v10;
  v13 = a1;

  [v11 configureConnection:v9];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v6 = type metadata accessor for CAFDAgent.Configuration(0);
  [a1 setTargetQueue:*(v5 + v6[5])];
  [a1 setServiceQuality:*(v5 + v6[8])];
  [a1 setInterface:*(v5 + v6[6])];
  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:);
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v9[3] = &block_descriptor_35;
  v8 = _Block_copy(v9);

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void closure #1 in closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CAFDAgent.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      outlined init with copy of CAFDAgent.Configuration(v11 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration, v8);

      (*(v1 + 16))(v4, v8, v0);
      outlined destroy of CAFDAgent.Configuration(v8);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v10;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Connection invalidated %@", v16, 0xCu);
        outlined destroy of NSObject?(v17);
      }

      (*(v1 + 8))(v4, v0);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      CAFDAgent.remove(proxy:)(v10);
    }
  }
}

uint64_t CAFDAgent.remove(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  v14 = v2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v20[0] = *(v14 + *(type metadata accessor for CAFDAgent.Configuration(0) + 20));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAgent.remove(proxy:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_42_0;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t CAFDAgent._CAFDConnectionProxy.remote.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  v4 = *(v0 + OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100042870;
  *(v5 + 32) = v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 remoteTargetWithAssertionAttributes:isa];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    outlined init with take of Any(&v10, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

id CAFDAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id CAFDAgent._CAFDConnectionProxy.activate()(const char *a1, SEL *a2)
{
  v5 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CAFDAgent.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    outlined init with copy of CAFDAgent.Configuration(Strong + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration, v14);

    (*(v7 + 16))(v10, v14, v6);
    outlined destroy of CAFDAgent.Configuration(v14);
    v17 = v5;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = a2;
      v21 = a1;
      v22 = v20;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v17;
      *v23 = v17;
      v24 = v17;
      v25 = v21;
      a2 = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, v25, v22, 0xCu);
      outlined destroy of NSObject?(v23);
    }

    (*(v7 + 8))(v10, v6);
  }

  return [*&v5[OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection] *a2];
}

uint64_t CAFDAgent.add(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFDAgent._CAFDConnectionProxy.activate()();
  v14 = v2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v20[0] = *(v14 + *(type metadata accessor for CAFDAgent.Configuration(0) + 20));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAgent.add(proxy:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void closure #1 in CAFDAgent.remove(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = specialized Set._Variant.remove(_:)(a2);
    swift_endAccess();
  }
}

void closure #1 in CAFDAgent.add(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v6, a2);
    v5 = v6;
    swift_endAccess();
  }
}

void specialized CAFDAgent.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration];
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getObjectType();
    v9 = BSServiceConnectionHost.CAFDDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v28);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received connection %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  swift_getObjectType();
  v12 = [v4 remoteToken];
  v13 = &v3[*(type metadata accessor for CAFDAgent.Configuration(0) + 28)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v12 hasEntitlement:v16];

  if (v17)
  {
    v18 = objc_allocWithZone(type metadata accessor for CAFDAgent._CAFDConnectionProxy());
    v27 = CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(v2, v4);
    CAFDAgent.add(proxy:)(v27);
  }

  else
  {
    v19 = v4;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = BSServiceConnectionHost.CAFDDescription.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "connection %s does not have required entitlement", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    [v19 invalidate];
  }
}

uint64_t type metadata completion function for CAFDAgent()
{
  result = type metadata accessor for CAFDAgent.Configuration(319);
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

uint64_t type metadata accessor for CAFDAgent(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002DF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002E03C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for CAFDAgent.Configuration()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for BSServiceInterface, BSServiceInterface_ptr);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for BSServiceQuality, BSServiceQuality_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002E1E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t sub_10002E29C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t one-time initialization function for appClips()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appClips);
  __swift_project_value_buffer(v0, static Logger.appClips);
  return Logger.init(subsystem:category:)();
}

char *CAFDAppClipsDeclarationAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appClips);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "initializing app clips server", v7, 2u);
  }

  v8 = type metadata accessor for CAFDAsyncCarManager();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations] = &_swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager] = a1;
  v17.receiver = v9;
  v17.super_class = v8;
  v10 = a1;
  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_carManager] = objc_msgSendSuper2(&v17, "init");
  v11 = [objc_allocWithZone(CRAppClipsDeclarationAgent) init];
  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_agent] = v11;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFDAppClipsDeclarationAgent();
  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = *&v12[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_agent];
  v14 = v12;
  [v13 setAppClipDeclarer:v14];

  return v14;
}

uint64_t CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.appClips);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "received supportedAppClips call", v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a2;
  v16[6] = a3;
  v17 = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), v16);
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_carManager);
  v2 = swift_allocObject();
  v0[6] = v2;
  swift_unknownObjectWeakInit();
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgMd, &_s13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgMR);
  *v4 = v0;
  v4[1] = closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 7496035, 0xE300000000000000, partial apply for closure #1 in CAFDAsyncCarManager.car.getter, v2, v5);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

    return CAFDAsyncCar.automakerApps.getter();
  }

  else
  {
    v4 = *(v0 + 40);
    (*(v0 + 32))(0, 0);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

char *closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = *(v0 + 80);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v20 = *(v0 + 80) + 32;
  do
  {
    if (v5)
    {
      v6 = *(v0 + 80);
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v20 + 8 * v4);
    }

    v8 = v7;
    v9 = [v8 appClipIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  while (v2 != v4);
LABEL_15:
  v17 = *(v0 + 80);

  v18 = *(v0 + 40);
  (*(v0 + 32))(_swiftEmptyArrayStorage, 0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void closure #1 in CAFDAsyncCarManager.car.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager;
    v10 = [*(Strong + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager) currentCar];
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for CAFDAsyncCar();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations] = _swiftEmptyArrayStorage;
      *&v13[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car] = v11;
      v24.receiver = v13;
      v24.super_class = v12;
      v14 = v11;
      v25 = objc_msgSendSuper2(&v24, "init");
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (one-time initialization token for appClips != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.appClips);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "waiting on CAFCar", v18, 2u);
      }

      [*&v8[v9] registerObserver:v8];
      (*(v3 + 16))(v6, a1, v2);
      v19 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
      v20 = *&v8[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v19] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMR, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
        *&v8[v19] = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v20, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMR, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
      }

      v20[2] = v23 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v6, v2);
      *&v8[v19] = v20;
    }
  }

  else
  {
    v25 = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t CAFDAsyncCarManager.carManager(_:didUpdateCurrentCar:)(void *a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.appClips);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "CAFCar now available", v14, 2u);
  }

  [a1 unregisterObserver:v3];
  if (a2)
  {
    v15 = type metadata accessor for CAFDAsyncCar();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations] = &_swiftEmptyArrayStorage;
    *&v16[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car] = a2;
    v32.receiver = v16;
    v32.super_class = v15;
    v17 = a2;
    a2 = objc_msgSendSuper2(&v32, "init");
  }

  v18 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
  v19 = *(v3 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations);
  v20 = *(v19 + 16);
  if (v20)
  {
    v29 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
    v30 = v3;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v31 = v22;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    v28[1] = v19;

    do
    {
      v31(v10, v23, v6);
      v33 = a2;
      v25 = a2;
      CheckedContinuation.resume(returning:)();
      (*(v21 - 8))(v10, v6);
      v23 += v24;
      --v20;
    }

    while (v20);

    v18 = v29;
    v3 = v30;
  }

  else
  {
  }

  v26 = *(v3 + v18);
  *(v3 + v18) = &_swiftEmptyArrayStorage;
}

uint64_t CAFDAsyncCar.automakerApps.getter()
{
  *(v1 + 24) = v0;
  return _swift_task_switch(CAFDAsyncCar.automakerApps.getter, 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFCar, CAFCar_ptr);
  *v4 = v0;
  v4[1] = CAFDAsyncCar.automakerApps.getter;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x72756769666E6F63, 0xEF29287261436465, partial apply for closure #1 in CAFDAsyncCar.configuredCar(), v2, v5);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(CAFDAsyncCar.automakerApps.getter, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = [v1 automakerApps];

  if (v2)
  {
    v3 = [v2 automakerApps];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAutomakerApp, CAFAutomakerApp_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t closure #1 in CAFDAsyncCar.configuredCar()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v9 = *(a2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car);
  if ([v9 isConfigured])
  {
    v21[1] = v9;
    v10 = v9;
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for appClips != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.appClips);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "waiting on CAFCar configuration", v15, 2u);
    }

    [v9 registerObserver:a2];
    (*(v5 + 16))(v8, a1, v4);
    v16 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations;
    v17 = *(a2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMR, &_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
      *(a2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v17, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMR, &_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
    }

    v17[2] = v20 + 1;
    result = (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v8, v4);
    *(a2 + v16) = v17;
  }

  return result;
}

id CAFDAppClipsDeclarationAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void CAFDAsyncCar.carIsConfigured(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (one-time initialization token for appClips != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.appClips);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "CAFCar now configured", v12, 2u);
    }

    if (!a1)
    {
      break;
    }

    [a1 unregisterObserver:v2];
    v19 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations;
    v20 = v2;
    v13 = *(v2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations);
    v14 = *(v13 + 16);

    if (!v14)
    {
LABEL_9:

      v17 = *(v20 + v19);
      *(v20 + v19) = &_swiftEmptyArrayStorage;

      return;
    }

    v15 = 0;
    v2 = v5 + 16;
    while (v15 < *(v13 + 16))
    {
      (*(v5 + 16))(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15++, v4);
      v21 = a1;
      v16 = a1;
      CheckedContinuation.resume(returning:)();
      (*(v5 + 8))(v8, v4);
      if (v14 == v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_100030430()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100030B44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030C5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t sub_100030E04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void CAFDVehicleResourcesManager.assetVariantsAgent.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  CAFDVehicleResourcesManager.assetVariantsAgent.didset();
}

void CAFDVehicleResourcesManager.assetVariantsAgent.didset()
{
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.imageArchiveManager);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v4 + 4) = Strong;
    *v5 = Strong;
    _os_log_impl(&_mh_execute_header, oslog, v3, "assetVariantsAgent didSet %@", v4, 0xCu);
    outlined destroy of NSObject?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }
}

void (*CAFDVehicleResourcesManager.assetVariantsAgent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetVariantsAgent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CAFDVehicleResourcesManager.assetVariantsAgent.modify;
}

void CAFDVehicleResourcesManager.assetVariantsAgent.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v6 = *(v3 + 32);
    swift_endAccess();

    CAFDVehicleResourcesManager.assetVariantsAgent.didset();
  }

  free(v3);
}

id CAFDVehicleResourcesManager.init(carManager:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar] = 0;
  v3 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_carManager] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CAFDVehicleResourcesManager(0);
  v5 = a1;
  v6 = objc_msgSendSuper2(&v17, "init");
  v7 = one-time initialization token for imageArchiveManager;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.imageArchiveManager);
  v10 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "ImageArchiveManager initialized with %@", v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  [v10 registerObserver:{v8, v17.receiver, v17.super_class}];
  return v8;
}

id CAFDVehicleResourcesManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.imageArchiveManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ImageArchiveManager deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDVehicleResourcesManager(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

void CAFDVehicleResourcesManager.didUpdate(assetExtrasURL:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.imageArchiveManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001000443E0, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s assetExtrasURL updated to %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = *(v2 + OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL);
  *(v2 + OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL) = a1;

  if (a1)
  {
    v13 = v5;

    CAFDVehicleResourcesManager.getImageArchive()();
  }
}

void CAFDVehicleResourcesManager.getImageArchive()()
{
  v1 = v0;
  v2 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v117 = *(v2 - 8);
  v118 = v2;
  v3 = *(v117 + 64);
  __chkstk_darwin(v2);
  v113 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v116 = (&v105 - v11);
  v12 = __chkstk_darwin(v10);
  v115 = &v105 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v105 - v15;
  __chkstk_darwin(v14);
  v18 = &v105 - v17;
  v19 = type metadata accessor for URL.DirectoryHint();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL];
  if (v32)
  {
    v33 = *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar];
    if (v33)
    {
      v111 = v30;
      v112 = &v105 - v31;
      v114 = v32;
      v34 = [v33 vehicleResources];
      if (v34)
      {
        v35 = v34;
        v106 = v9;
        v36 = [v34 customImageArchive];

        v110 = v36;
        if (v36)
        {
          v109 = v1;
          v37 = [v114 url];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock = 0xD000000000000017;
          v121 = 0x8000000100044510;
          (*(v20 + 104))(v23, enum case for URL.DirectoryHint.inferFromPath(_:), v19);
          lazy protocol witness table accessor for type String and conformance String();
          URL.appending<A>(component:directoryHint:)();
          (*(v20 + 8))(v23, v19);
          v38 = *(v25 + 8);
          v108 = v25 + 8;
          v107 = v38;
          v38(v29, v111);
          v39 = [objc_opt_self() defaultManager];
          URL.path.getter();
          v40 = String._bridgeToObjectiveC()();

          v41 = [v39 fileExistsAtPath:v40];

          v43 = v117;
          v42 = v118;
          if (v41)
          {
            v44 = type metadata accessor for JSONDecoder();
            v45 = *(v44 + 48);
            v46 = *(v44 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            v48 = Data.init(contentsOf:options:)();
            v50 = v49;
            lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            outlined consume of Data._Representation(v48, v50);

            (*(v43 + 56))(v18, 0, 1, v42);
            v51 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
            v52 = v109;
            swift_beginAccess();
            outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v18, v52 + v51);
            swift_endAccess();
          }

          v53 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
          v54 = v109;
          swift_beginAccess();
          outlined init with copy of (AnyHashable, Any)(v54 + v53, v16, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          v55 = *(v43 + 48);
          v56 = v55(v16, 1, v42);
          outlined destroy of NSObject?(v16, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          if (v56 == 1)
          {
            goto LABEL_13;
          }

          v57 = [v110 identifier];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = v115;
          outlined init with copy of (AnyHashable, Any)(v54 + v53, v115, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          if (v55(v61, 1, v42))
          {
            outlined destroy of NSObject?(v61, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);

LABEL_13:
            v62 = v43;
            v63 = v110;
            v64 = [v110 identifier];
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v68 = *(v42 + 20);

            v69 = v116;
            static Date.now.getter();
            *v69 = v65;
            v69[1] = v67;
            (*(v62 + 56))(v69, 0, 1, v42);
            swift_beginAccess();
            outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v69, v54 + v53);
            swift_endAccess();
            if (one-time initialization token for imageArchiveManager != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for Logger();
            __swift_project_value_buffer(v70, static Logger.imageArchiveManager);

            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              aBlock = v74;
              *v73 = 136315138;
              *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &aBlock);
              _os_log_impl(&_mh_execute_header, v71, v72, "[getImageArchvie] firing customImageArchive getter for %s", v73, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v74);
            }

            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            v76[2] = v75;
            v76[3] = v65;
            v77 = v114;
            v76[4] = v67;
            v76[5] = v77;
            v124 = partial apply for closure #1 in CAFDVehicleResourcesManager.getImageArchive();
            v125 = v76;
            aBlock = _NSConcreteStackBlock;
            v121 = 1107296256;
            v122 = thunk for @escaping @callee_guaranteed (@guaranteed Data, @guaranteed Error?) -> ();
            v123 = &block_descriptor_4;
            v78 = _Block_copy(&aBlock);
            v79 = v114;

            [v63 getImageArchiveWithCompletion:v78];
            _Block_release(v78);

LABEL_18:
            v107(v112, v111);
            return;
          }

          v105 = v55;
          v80 = v113;
          outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v61, v113);
          outlined destroy of NSObject?(v61, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          countAndFlagsBits = v80->_countAndFlagsBits;
          object = v80->_object;

          outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v80, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
          if (v58 == countAndFlagsBits && v60 == object)
          {

            v42 = v118;
          }

          else
          {
            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v43 = v117;
            v42 = v118;
            if ((v83 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (one-time initialization token for imageArchiveManager != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          __swift_project_value_buffer(v84, static Logger.imageArchiveManager);
          v85 = v54;
          v86 = v110;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = v42;
            v90 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v119 = v118;
            *v90 = 136315394;
            v91 = v106;
            outlined init with copy of (AnyHashable, Any)(v109 + v53, v106, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
            if (v105(v91, 1, v89))
            {
              outlined destroy of NSObject?(v91, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
              v92 = 0xE300000000000000;
              v93 = 7104878;
            }

            else
            {
              v94 = v113;
              outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v91, v113);
              outlined destroy of NSObject?(v91, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
              aBlock = 0;
              v121 = 0xE000000000000000;
              _StringGuts.grow(_:)(23);

              aBlock = 0x3A657461443CLL;
              v121 = 0xE600000000000000;
              v95 = *(v89 + 20);
              type metadata accessor for Date();
              lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
              v96._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v96);

              v97._countAndFlagsBits = 0x6669746E65646920;
              v97._object = 0xEC0000003A726569;
              String.append(_:)(v97);
              String.append(_:)(*v94);
              v98._countAndFlagsBits = 62;
              v98._object = 0xE100000000000000;
              String.append(_:)(v98);
              v93 = aBlock;
              v92 = v121;
              outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v94, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
            }

            v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v119);

            *(v90 + 4) = v99;
            *(v90 + 12) = 2080;
            v100 = [v86 identifier];
            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = v102;

            v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v119);

            *(v90 + 14) = v104;
            _os_log_impl(&_mh_execute_header, v87, v88, "[getImageArchvie] archive up to date. archiveInfo:%s customImageArchive.identifier:%s", v90, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_18;
        }
      }

      v47 = v114;
    }
  }
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(23);

  v2 = *(type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0) + 20);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6669746E65646920;
  v4._object = 0xEC0000003A726569;
  String.append(_:)(v4);
  String.append(_:)(*v1);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x3A657461443CLL;
}

uint64_t closure #1 in CAFDVehicleResourcesManager.getImageArchive()(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v232 = a7;
  v239 = a6;
  v234 = a5;
  v237 = a2;
  v236 = a1;
  v227 = type metadata accessor for URL.DirectoryHint();
  v231 = *(v227 - 8);
  v8 = *(v231 + 64);
  __chkstk_darwin(v227);
  v226 = v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v228 = *(v10 - 8);
  v11 = v228[8];
  v12 = __chkstk_darwin(v10);
  v14 = v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v210 - v16;
  v18 = __chkstk_darwin(v15);
  v222 = v210 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v210 - v21;
  v23 = __chkstk_darwin(v20);
  v225 = v210 - v24;
  __chkstk_darwin(v23);
  v233 = v210 - v25;
  v235 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v238 = *(v235 - 8);
  v26 = *(v238 + 64);
  v27 = __chkstk_darwin(v235);
  v29 = v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = (v210 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v221 = v210 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = v210 - v37;
  __chkstk_darwin(v36);
  v40 = v210 - v39;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = result;
    v224 = v38;
    v217 = v17;
    v218 = v14;
    v219 = v22;
    v230 = v10;
    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    v44 = __swift_project_value_buffer(v43, static Logger.imageArchiveManager);
    v45 = v239;

    v46 = v42;
    v47 = v236;
    v48 = v237;
    outlined copy of Data._Representation(v236, v237);
    swift_errorRetain();
    v223 = v44;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    outlined consume of Data._Representation(v47, v48);

    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v216) = v50;
      v220 = v29;
      v51 = swift_slowAlloc();
      v242.super.isa = swift_slowAlloc();
      *v51 = 136315906;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v234, v45, &v242);
      *(v51 + 12) = 2080;
      v52 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
      swift_beginAccess();
      v229 = v46;
      outlined init with copy of (AnyHashable, Any)(v46 + v52, v40, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
      v53 = v235;
      if ((*(v238 + 48))(v40, 1, v235))
      {
        outlined destroy of NSObject?(v40, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
        v54 = 0xE500000000000000;
        v55 = 0x3E6C696E3CLL;
      }

      else
      {
        outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v40, v31);
        outlined destroy of NSObject?(v40, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
        v55 = *v31;
        v54 = v31[1];

        outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v31, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
      }

      v57 = 0x3E6C696E3CLL;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v242);

      *(v51 + 14) = v58;
      *(v51 + 22) = 2080;
      v59 = Data.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v242);

      *(v51 + 24) = v61;
      *(v51 + 32) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v57 = Error.localizedDescription.getter();
        v63 = v62;
      }

      else
      {
        v63 = 0xE500000000000000;
      }

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v63, &v242);

      *(v51 + 34) = v64;
      _os_log_impl(&_mh_execute_header, v49, v216, "[getImageArchvie] got identifier %s expecting identifier %s. imageArchive:%s  error:%s", v51, 0x2Au);
      swift_arrayDestroy();

      v56 = v220;
      v46 = v229;
    }

    else
    {

      v53 = v235;
      v56 = v29;
    }

    v65 = v232;
    v66 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
    swift_beginAccess();
    v67 = v224;
    outlined init with copy of (AnyHashable, Any)(v46 + v66, v224, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
    if ((*(v238 + 48))(v67, 1, v53) == 1)
    {

      return outlined destroy of NSObject?(v67, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
    }

    outlined init with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v67, v56);
    if ((*v56 != v234 || v56[1] != v239) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v129 = v56;
      return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v129, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    }

    v211 = v66;
    v229 = v46;
    v68 = [v65 url];
    v69 = v225;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CAUAssetLibrary();
    v240 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
    v241 = v70;
    LODWORD(v224) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v71 = v231;
    v72 = v231 + 104;
    v216 = *(v231 + 104);
    v73 = v65;
    v220 = v56;
    v74 = v226;
    v75 = v227;
    v216(v226);
    v215 = lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    v212 = *(v71 + 8);
    v212(v74, v75);

    v77 = v228 + 1;
    v76 = v228[1];
    v76(v69, v230);
    v78 = [v73 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v240 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
    v241 = v79;

    v80._countAndFlagsBits = 0x70756B6361622ELL;
    v80._object = 0xE700000000000000;
    String.append(_:)(v80);

    v210[1] = v72;
    (v216)(v74, v224, v75);
    v81 = v219;
    URL.appending<A>(component:directoryHint:)();
    v82 = v75;
    v231 = v71 + 8;
    v83 = v212;
    v212(v74, v82);
    v84 = v83;

    v85 = v69;
    v86 = v233;
    v87 = v81;
    v214 = v77;
    v213 = v76;
    v76(v85, v230);
    v88 = objc_opt_self();
    v89 = [v88 defaultManager];
    URL.path(percentEncoded:)(0);
    v90 = String._bridgeToObjectiveC()();

    LODWORD(v78) = [v89 fileExistsAtPath:v90];

    v91 = v222;
    if (v78)
    {
      v92 = [v88 defaultManager];
      URL.path(percentEncoded:)(0);
      v93 = String._bridgeToObjectiveC()();

      v94 = [v92 fileExistsAtPath:v93];

      if (v94)
      {
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "[getImageArchvie] destination and backup exist.  Removing backup...", v97, 2u);
        }

        v98 = [v88 defaultManager];
        URL._bridgeToObjectiveC()(v99);
        v101 = v100;
        v240 = 0;
        v102 = [v98 removeItemAtURL:v100 error:&v240];

        if (!v102)
        {
          v132 = v240;
          v131 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v127 = v230;
LABEL_34:
          v133 = v239;

          swift_errorRetain();
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v137 = v88;
            v138 = swift_slowAlloc();
            v139 = v131;
            v140 = swift_slowAlloc();
            v240 = v140;
            *v136 = 136315394;
            *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v234, v133, &v240);
            *(v136 + 12) = 2112;
            swift_errorRetain();
            v141 = _swift_stdlib_bridgeErrorToNSError();
            *(v136 + 14) = v141;
            *v138 = v141;
            _os_log_impl(&_mh_execute_header, v134, v135, "[getImageArchvie] failed to write identifier %s imageArchive to disk: %@", v136, 0x16u);
            outlined destroy of NSObject?(v138, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v88 = v137;

            __swift_destroy_boxed_opaque_existential_0(v140);
            v131 = v139;
            v86 = v233;
          }

          v142 = v221;
          (*(v238 + 56))(v221, 1, 1, v235);
          v143 = v229;
          v144 = v211;
          swift_beginAccess();
          outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v142, v143 + v144);
          swift_endAccess();
          v145 = [v88 defaultManager];
          URL.path(percentEncoded:)(0);
          v146 = String._bridgeToObjectiveC()();

          LODWORD(v142) = [v145 fileExistsAtPath:v146];

          if (v142)
          {
            v147 = [v88 defaultManager];
            URL.path(percentEncoded:)(0);
            v148 = String._bridgeToObjectiveC()();

            v149 = [v147 fileExistsAtPath:v148];

            if (v149)
            {
              v150 = Logger.logObject.getter();
              v151 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v150, v151))
              {
                v152 = swift_slowAlloc();
                *v152 = 0;
                _os_log_impl(&_mh_execute_header, v150, v151, "[getImageArchvie] (failure) destination and backup exist.  Removing destination...", v152, 2u);
              }

              v153 = [v88 defaultManager];
              URL._bridgeToObjectiveC()(v154);
              v156 = v155;
              v240 = 0;
              v157 = [v153 removeItemAtURL:v155 error:&v240];

              v158 = v240;
              if (!v157)
              {
                v239 = v131;
                goto LABEL_50;
              }

              v159 = v240;
            }
          }

          v160 = [v88 defaultManager];
          URL.path(percentEncoded:)(0);
          v161 = String._bridgeToObjectiveC()();

          v162 = [v160 fileExistsAtPath:v161];

          if (!v162)
          {
LABEL_47:

            v175 = v213;
            v213(v87, v127);
            v175(v86, v127);
LABEL_54:
            v129 = v220;
            return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v129, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
          }

          v239 = v131;
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&_mh_execute_header, v163, v164, "[getImageArchvie] (failure) backup exists.  moving to destination...", v165, 2u);
          }

          v166 = [v88 defaultManager];
          URL._bridgeToObjectiveC()(v167);
          v169 = v168;
          URL._bridgeToObjectiveC()(v170);
          v172 = v171;
          v240 = 0;
          v173 = [v166 moveItemAtURL:v169 toURL:v171 error:&v240];

          v158 = v240;
          if (v173)
          {
            v174 = v240;
            goto LABEL_47;
          }

LABEL_50:
          v176 = v158;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v177 = v228[2];
          v178 = v217;
          v177(v217, v86, v127);
          v179 = v218;
          v177(v218, v87, v127);
          swift_errorRetain();
          v180 = Logger.logObject.getter();
          v181 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v180, v181))
          {
            v182 = v180;
            v183 = swift_slowAlloc();
            v238 = swift_slowAlloc();
            *v183 = 67109634;
            v184 = [v88 defaultManager];
            LODWORD(v237) = v181;
            URL.path(percentEncoded:)(0);
            v185 = String._bridgeToObjectiveC()();

            v186 = [v184 fileExistsAtPath:v185];

            v187 = v88;
            v188 = v213;
            v213(v178, v230);
            *(v183 + 4) = v186;
            *(v183 + 8) = 1024;
            v189 = [v187 defaultManager];
            URL.path(percentEncoded:)(0);
            v190 = String._bridgeToObjectiveC()();

            v191 = [v189 fileExistsAtPath:v190];

            v127 = v230;
            v188(v179, v230);
            *(v183 + 10) = v191;
            *(v183 + 14) = 2112;
            swift_errorRetain();
            v192 = _swift_stdlib_bridgeErrorToNSError();
            *(v183 + 16) = v192;
            v193 = v238;
            *v238 = v192;
            _os_log_impl(&_mh_execute_header, v182, v237, "[getImageArchvie] failed to handle restoring backup (destination=%{BOOL}d backup=%{BOOL}d): %@", v183, 0x18u);
            outlined destroy of NSObject?(v193, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            v180 = v182;
            v86 = v233;
          }

          else
          {
            v188 = v213;
            v213(v179, v127);
            v188(v178, v127);
          }

          v188(v219, v127);
          v188(v86, v127);
          goto LABEL_54;
        }

        v103 = v240;
      }
    }

    v104 = [v88 defaultManager];
    URL.path(percentEncoded:)(0);
    v105 = String._bridgeToObjectiveC()();

    v106 = [v104 fileExistsAtPath:v105];

    if (v106)
    {
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "[getImageArchvie] destination exists.  backing up and removing...", v109, 2u);
      }

      v110 = [v88 defaultManager];
      URL._bridgeToObjectiveC()(v111);
      v113 = v112;
      URL._bridgeToObjectiveC()(v114);
      v116 = v115;
      v240 = 0;
      v117 = [v110 moveItemAtURL:v113 toURL:v115 error:&v240];

      if (!v117)
      {
        v130 = v240;
        v131 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v127 = v230;
LABEL_32:
        v86 = v233;
        goto LABEL_34;
      }

      v118 = v240;
      v86 = v233;
    }

    specialized CAFDVehicleResourcesManager.receive(imageArchive:destination:)(v236, v237, v86);
    v237 = v88;
    v119 = type metadata accessor for JSONEncoder();
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v122 = [v232 url];
    v123 = v225;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v240 = 0xD000000000000017;
    v241 = 0x8000000100044510;
    v124 = v226;
    v125 = v227;
    (v216)(v226, v224, v227);
    URL.appending<A>(component:directoryHint:)();
    v84(v124, v125);
    v126 = v123;
    v127 = v230;
    v128 = v213;
    v213(v126, v230);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    JSONEncoder.encode<A>(_:toFile:)();
    v128(v91, v127);

    v194 = [v237 defaultManager];
    v195 = v219;
    URL.path(percentEncoded:)(0);
    v196 = String._bridgeToObjectiveC()();

    v197 = [v194 fileExistsAtPath:v196];

    if (!v197)
    {

      v128(v195, v127);
      v128(v86, v127);
      goto LABEL_54;
    }

    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.error.getter();
    v200 = os_log_type_enabled(v198, v199);
    v201 = v220;
    if (v200)
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v198, v199, "[getImageArchvie] Removing backup...", v202, 2u);
    }

    v88 = v237;
    v203 = [v237 defaultManager];
    v87 = v219;
    URL._bridgeToObjectiveC()(&v242);
    v205 = v204;
    v240 = 0;
    v206 = [v203 removeItemAtURL:v204 error:&v240];

    if (v206)
    {
      v207 = v240;

      v208 = v213;
      v213(v87, v127);
      v208(v233, v127);
      v129 = v201;
      return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v129, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    }

    v209 = v240;
    v131 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_32;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = a3;
  v6(v8, v10, a3);

  outlined consume of Data._Representation(v8, v10);
}

void CAFDVehicleResourcesManager.carDidUpdateAccessories(_:)(void *a1)
{
  v1 = [a1 vehicleResources];
  v2 = [v1 customImageArchive];

  if (v2)
  {

    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.imageArchiveManager);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s vehicleResources.customImageArchive found", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    CAFDVehicleResourcesManager.getImageArchive()();
  }

  else
  {
    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.imageArchiveManager);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s waiting for vehicleResources.customImageArchive", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMd, &_ss22KeyedEncodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0) + 20);
    v15[14] = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Date();
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v24);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMd, &_ss22KeyedDecodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMR);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v25);
  v9 = v19 - v8;
  v10 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v10;
  v16 = v23;
  v15 = v24;
  v27 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v19[1] = v17;
  v26 = 1;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v25);
  (*(v21 + 32))(v13 + *(v20 + 20), v6, v15);
  outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v13, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v13, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
}

uint64_t URL.isDirectory.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = NSURLIsDirectoryKey;
  v5 = NSURLIsDirectoryKey;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();

  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = URLResourceValues.isDirectory.getter();
  (*(v7 + 8))(v3, v6);
  return v8 & 1;
}

uint64_t specialized CAFDVehicleResourcesManager.receive(imageArchive:destination:)(void (*a1)(char *, uint64_t), char *a2, char *a3)
{
  v189 = a2;
  v179 = a3;
  v188 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v177 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v178 = &v170 - v7;
  v186 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v186 - 8);
  v9 = v8[8];
  __chkstk_darwin(v186);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for URL();
  v12 = *(v191 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v191);
  v176 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v175 = &v170 - v17;
  v18 = __chkstk_darwin(v16);
  v172 = &v170 - v19;
  v20 = __chkstk_darwin(v18);
  v171 = &v170 - v21;
  v22 = __chkstk_darwin(v20);
  v174 = &v170 - v23;
  v24 = __chkstk_darwin(v22);
  v173 = &v170 - v25;
  v26 = __chkstk_darwin(v24);
  v187 = &v170 - v27;
  v28 = __chkstk_darwin(v26);
  v194 = &v170 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v170 - v31;
  __chkstk_darwin(v30);
  v34 = &v170 - v33;
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  v37 = [v36 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v196 = 0xD000000000000019;
  v197 = 0x8000000100044550;
  LODWORD(v185) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v184 = v8[13];
  v38 = v186;
  v184(v11);
  v183 = lazy protocol witness table accessor for type String and conformance String();
  v193 = v34;
  URL.appending<A>(component:directoryHint:)();
  v39 = v8[1];
  v181 = v8 + 1;
  v182 = v39;
  (v39)(v11, v38);
  v192 = v12;
  v42 = *(v12 + 8);
  v40 = (v12 + 8);
  v41 = v42;
  v43 = v191;
  v42(v32, v191);
  v180 = v35;
  v44 = [v35 defaultManager];
  v45 = [v44 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CAUAssetLibrary();
  v196 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
  v197 = v46;
  (v184)(v11, v185, v38);
  v47 = v43;
  URL.appending<A>(component:directoryHint:)();
  v182(v11, v38);

  v183 = v32;
  v42(v32, v43);
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v48, static Logger.imageArchiveManager);
  v50 = v193;
  v51 = v187;
  v184 = *(v192 + 16);
  v185 = v192 + 16;
  (v184)(v187, v193, v47);
  v186 = v49;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v196 = v55;
    *v54 = 136315138;
    v56 = URL.path.getter();
    v57 = v51;
    v58 = v47;
    v59 = v41;
    v60 = v40;
    v62 = v61;
    v59(v57, v58);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v62, &v196);
    v40 = v60;
    v41 = v59;
    v47 = v58;

    *(v54 + 4) = v63;
    v64 = v193;
    _os_log_impl(&_mh_execute_header, v52, v53, "[getImageArchvie] writing archive to %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v64 = v50;

    v41(v51, v47);
  }

  v65 = v190;
  Data.write(to:options:)();
  v66 = v194;
  if (v65)
  {
    goto LABEL_32;
  }

  v67 = objc_opt_self();
  URL._bridgeToObjectiveC()(v68);
  v70 = v69;
  URL._bridgeToObjectiveC()(v71);
  v73 = v72;
  [v67 unarchive:v70 toLocation:v72];

  v74 = [v180 defaultManager];
  URL._bridgeToObjectiveC()(v75);
  v77 = v76;
  v196 = 0;
  v78 = [v74 contentsOfDirectoryAtURL:v76 includingPropertiesForKeys:0 options:0 error:&v196];

  v79 = v196;
  if (!v78)
  {
    goto LABEL_30;
  }

  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v79;

  v82 = *(v80 + 16);
  if (v82 != 1)
  {
    if (!v82)
    {

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "[getImageArchvie] No contents in archive", v85, 2u);
      }

      goto LABEL_29;
    }

    v89 = v175;
    v90 = v184;
    (v184)(v175, v66, v47);
    v91 = v176;
    v90(v176, v179, v47);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v192 = 0;
      v95 = v94;
      v190 = swift_slowAlloc();
      v196 = v190;
      *v95 = 136315394;
      LODWORD(v189) = v93;
      v96 = URL.path.getter();
      v97 = v89;
      v98 = v91;
      v99 = v96;
      v101 = v100;
      v41(v97, v47);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v196);

      *(v95 + 4) = v102;
      *(v95 + 12) = 2080;
      v103 = URL.path.getter();
      v105 = v104;
      v41(v98, v47);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v196);

      *(v95 + 14) = v106;
      _os_log_impl(&_mh_execute_header, v92, v189, "[getImageArchvie] move %s to %s", v95, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v41(v91, v47);
      v41(v89, v47);
    }

    v148 = [v180 defaultManager];
    URL._bridgeToObjectiveC()(v149);
    v151 = v150;
    URL._bridgeToObjectiveC()(v152);
    v154 = v153;
    v196 = 0;
    v155 = [v148 moveItemAtURL:v151 toURL:v153 error:&v196];

    if (v155)
    {
      v156 = v196;
LABEL_29:
      v41(v66, v47);
      v157 = v193;
      return (v41)(v157, v47);
    }

LABEL_30:
    v158 = v196;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_31:
    v64 = v193;
LABEL_32:
    v41(v66, v47);
    v157 = v64;
    return (v41)(v157, v47);
  }

  v86 = v192;
  v189 = ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v190 = v40;
  v87 = v178;
  (v184)(v178, &v189[v80], v47);
  (*(v86 + 56))(v87, 0, 1, v47);
  v88 = v177;
  outlined init with copy of (AnyHashable, Any)(v87, v177, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v86 + 48))(v88, 1, v47) == 1)
  {
    outlined destroy of NSObject?(v87, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of NSObject?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v107 = v173;
    (*(v86 + 32))(v173, v88, v47);
    v108 = URL.isDirectory.getter();
    v41(v107, v47);
    outlined destroy of NSObject?(v87, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v108)
    {
      if (!*(v80 + 16))
      {
        __break(1u);
      }

      v109 = v174;
      v110 = v184;
      (v184)(v174, &v189[v80], v47);

      v111 = v171;
      v110(v171, v109, v47);
      v112 = v172;
      v110(v172, v179, v47);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v192 = 0;
        v116 = v115;
        v189 = swift_slowAlloc();
        v196 = v189;
        *v116 = 136315394;
        LODWORD(v188) = v114;
        v117 = URL.path.getter();
        v118 = v111;
        v119 = v112;
        v120 = v113;
        v121 = v117;
        v123 = v122;
        v41(v118, v47);
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v196);

        *(v116 + 4) = v124;
        *(v116 + 12) = 2080;
        v125 = URL.path.getter();
        v127 = v126;
        v41(v119, v47);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v196);

        *(v116 + 14) = v128;
        _os_log_impl(&_mh_execute_header, v120, v188, "[getImageArchvie] move %s to %s", v116, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v41(v112, v47);
        v41(v111, v47);
      }

      v160 = [v180 defaultManager];
      URL._bridgeToObjectiveC()(v161);
      v163 = v162;
      URL._bridgeToObjectiveC()(v164);
      v166 = v165;
      v196 = 0;
      v167 = [v160 moveItemAtURL:v163 toURL:v165 error:&v196];

      if (v167)
      {
        v168 = v196;
        v41(v174, v47);
        goto LABEL_29;
      }

      v169 = v196;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v41(v174, v47);
      goto LABEL_31;
    }
  }

  v188 = v41;

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v129, v130))
  {
    LODWORD(v187) = v130;
    v192 = 0;
    v131 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v196 = v182;
    v186 = v131;
    *v131 = 136315138;
    v195 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v132 = v195;
    v133 = v183;
    (v184)(v183, &v189[v80], v47);
    v134 = URL.path.getter();
    v136 = v135;
    v137 = v188;
    v188(v133, v47);
    v195 = v132;
    v139 = v132[2];
    v138 = v132[3];
    if (v139 >= v138 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1);
      v132 = v195;
    }

    v132[2] = v139 + 1;
    v140 = &v132[2 * v139];
    v140[4] = v134;
    v140[5] = v136;

    v141 = Array.description.getter();
    v143 = v142;

    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &v196);

    v145 = v186;
    *(v186 + 4) = v144;
    _os_log_impl(&_mh_execute_header, v129, v187, "[getImageArchvie] unexpected contents in archive: %s", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);

    v146 = v191;
    v137(v194, v191);
    return (v137)(v193, v146);
  }

  else
  {

    v159 = v188;
    v188(v66, v47);
    return v159(v193, v47);
  }
}

void specialized CAFDVehicleResourcesManager.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.imageArchiveManager);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000440D0, &v23);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = a1;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s currentCar updated to %@", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  v16 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar;
  v17 = *&v2[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar];
  if (v17)
  {
    [v17 unregisterObserver:v2];
  }

  v18 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
  swift_beginAccess();
  outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v7, &v2[v19]);
  swift_endAccess();
  v20 = *&v2[v16];
  *&v2[v16] = a1;

  if (a1)
  {
    v21 = v9;
    [v21 registerObserver:v2];
    [v2 carDidUpdateAccessories:v21];
  }
}

void type metadata completion function for CAFDVehicleResourcesManager()
{
  type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo?()
{
  if (!lazy cache variable for type metadata for CAFDVehicleResourcesManager.CustomImageArchiveInfo?)
  {
    type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CAFDVehicleResourcesManager.CustomImageArchiveInfo?);
    }
  }
}

uint64_t sub_1000365B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for CAFDVehicleResourcesManager.CustomImageArchiveInfo()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t sub_100036998()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000369D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id CAFDFramework.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDFramework.init(carManager:)(a1);

  return v4;
}

id CAFDFramework.init(carManager:)(void *a1)
{
  v2 = specialized CAFDFramework.init(carManager:)(a1);

  return v2;
}

id CAFDFramework.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.DaemonFramework.framework.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "deinit CAFDFramework", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for CAFDFramework();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id specialized CAFDFramework.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.DaemonFramework.framework.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "init CAFDFramework", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  *&v2[OBJC_IVAR____TtC13caraccessoryd13CAFDFramework_carManager] = a1;
  v12 = objc_allocWithZone(LNDaemonConnectionListener);
  v13 = a1;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithBundleIdentifier:v14];

  *&v2[OBJC_IVAR____TtC13caraccessoryd13CAFDFramework_linkdConnectionListener] = v15;
  v16 = type metadata accessor for CAFDFramework();
  v18.receiver = v2;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "init");
}

id _CAFDSessionBoosted.init(connection:agent:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v31[2] = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  UUID.init()();
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_connection] = a1;
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent] = a2;
  v31[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  aBlock = 0;
  v37 = 0xE000000000000000;
  v14 = a1;
  v35 = a2;
  _StringGuts.grow(_:)(41);

  aBlock = 0xD000000000000027;
  v37 = 0x8000000100044870;
  v43 = [v14 processIdentifier];
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_workQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = type metadata accessor for _CAFDSessionBoosted();
  v42.receiver = v3;
  v42.super_class = v16;
  v17 = objc_msgSendSuper2(&v42, "init");
  v18 = CRSessionBoostServiceInterface();
  [v14 setExportedInterface:v18];

  v19 = CRSessionBoostClientInterface();
  [v14 setRemoteObjectInterface:v19];

  [v14 setExportedObject:v17];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = partial apply for closure #1 in _CAFDSessionBoosted.init(connection:agent:);
  v41 = v20;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v39 = &block_descriptor_32;
  v21 = _Block_copy(&aBlock);

  [v14 setInterruptionHandler:v21];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = partial apply for closure #2 in _CAFDSessionBoosted.init(connection:agent:);
  v41 = v22;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v39 = &block_descriptor_36_0;
  v23 = _Block_copy(&aBlock);

  [v14 setInvalidationHandler:v23];
  _Block_release(v23);
  [v14 activate];
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.sessionBoost);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v17;
    *v28 = v17;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v25, v26, "[XPC Proxy] connection ready for %@", v27, 0xCu);
    outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return v17;
}

void closure #1 in _CAFDSessionBoosted.init(connection:agent:)(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sessionBoost);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v12 = *&v6[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent];
    CAFDSessionBoostServiceAgent.remove(connection:)(v6);
  }
}

unint64_t _CAFDSessionBoosted.description.getter()
{
  _StringGuts.grow(_:)(41);

  [*(v0 + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_connection) processIdentifier];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000018;
}

uint64_t _CAFDSessionBoosted.boostSession(for:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_workQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in _CAFDSessionBoosted.boostSession(for:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_21;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void closure #1 in _CAFDSessionBoosted.boostSession(for:)(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v39 = a2;
    v5 = OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent;
    p_cb = &OBJC_PROTOCOL___CAFDeepLinkSettingObserver.cb;
    v7 = [*(*(Strong + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent) + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus) currentSession];
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.sessionBoost);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v37 = v7;
      v38 = v5;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044770, &v40);
      *(v12 + 12) = 2080;
      v14 = 0xE800000000000000;
      v15 = 0x80000001000447B0;
      v16 = 0x8000000100044790;
      v17 = 0xD000000000000010;
      if (a2 != 3)
      {
        v17 = 0x556E6F6973736573;
        v16 = 0xEE00646574616470;
      }

      if (a2 == 2)
      {
        v17 = 0xD000000000000013;
      }

      else
      {
        v15 = v16;
      }

      if (a2)
      {
        v18 = 0xD000000000000013;
      }

      else
      {
        v18 = 0x6574617669746361;
      }

      if (a2)
      {
        v14 = 0x80000001000447D0;
      }

      if (a2 <= 1u)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      if (a2 <= 1u)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v40);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2112;
      *(v12 + 24) = v9;
      *v13 = v37;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s reason=%s currentSession=%@", v12, 0x20u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();

      v5 = v38;
      p_cb = (&OBJC_PROTOCOL___CAFDeepLinkSettingObserver + 64);
      if (v9)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (v9)
      {
LABEL_22:

        return;
      }
    }

    [*(*&v4[v5] + *(p_cb + 402)) waitForSessionInitialization];
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044770, &v40);
      *(v26 + 12) = 2080;
      v28 = 0xE800000000000000;
      v29 = 0x80000001000447B0;
      v30 = 0x8000000100044790;
      v31 = 0xD000000000000010;
      if (v39 != 3)
      {
        v31 = 0x556E6F6973736573;
        v30 = 0xEE00646574616470;
      }

      if (v39 == 2)
      {
        v31 = 0xD000000000000013;
      }

      else
      {
        v29 = v30;
      }

      if (v39)
      {
        v32 = 0xD000000000000013;
      }

      else
      {
        v32 = 0x6574617669746361;
      }

      if (v39)
      {
        v28 = 0x80000001000447D0;
      }

      if (v39 <= 1u)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31;
      }

      if (v39 <= 1u)
      {
        v34 = v28;
      }

      else
      {
        v34 = v29;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v40);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2112;
      v36 = [*(*&v4[v5] + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus) currentSession];
      *(v26 + 24) = v36;
      *v27 = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s reason=%s after waitForSessionInitialization currentSession=%@", v26, 0x20u);
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }
  }
}

id _CAFDSessionBoosted.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CAFDSessionBoosted();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall _CAFDSessionBoosted.activate()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574617669746361, 0xEA00000000002928, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(0);
}

Swift::Void __swiftcall _CAFDSessionBoosted.connectionAttempted()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000100044750, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(1);
}

Swift::Void __swiftcall _CAFDSessionBoosted.connectionRequested()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000100044730, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(2);
}

Swift::Void __swiftcall _CAFDSessionBoosted.sessionConnected()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044710, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(3);
}

Swift::Void __swiftcall _CAFDSessionBoosted.sessionDidUpdate()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001000446F0, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(4);
}

char *CAFDSessionBoostServiceAgent.init(sessionStatus:)(void *a1)
{
  v2 = v1;
  v30 = a1;
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v28 = OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue;
  v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v27[0] = "com.apple.caraccessoryd.artwork";
  v27[1] = v11;
  static DispatchQoS.userInteractive.getter();
  v32 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&v1[v28] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_connections] = &_swiftEmptySetSingleton;
  v12 = v30;
  *&v1[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus] = v30;
  v13 = objc_allocWithZone(NSXPCListener);
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 initWithMachServiceName:v15];

  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener] = v16;
  v17 = type metadata accessor for CAFDSessionBoostServiceAgent();
  v31.receiver = v2;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "init");
  v19 = one-time initialization token for sessionBoost;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.sessionBoost);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "CAFDSessionBoostServiceAgent init", v24, 2u);
  }

  v25 = OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener;
  [*&v20[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener] setDelegate:v20];
  [*&v20[v25] resume];

  return v20;
}

id CAFDSessionBoostServiceAgent.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sessionBoost);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CAFDSessionBoostServiceAgent deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDSessionBoostServiceAgent();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t CAFDSessionBoostServiceAgent.remove(connection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDSessionBoostServiceAgent.remove(connection:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in CAFDSessionBoostServiceAgent.remove(connection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sessionBoost);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "removing connection %@", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    swift_beginAccess();
    v12 = specialized Set._Variant.remove(_:)(v6);
    swift_endAccess();
  }
}

void closure #1 in CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_allocWithZone(type metadata accessor for _CAFDSessionBoosted());
    v5 = v4;
    v6 = _CAFDSessionBoosted.init(connection:agent:)(a2, v5);
    swift_beginAccess();
    v7 = v6;
    specialized Set._Variant.insert(_:)(&v9, v7);
    v8 = v9;
    swift_endAccess();
  }
}

uint64_t specialized CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.sessionBoost);
  v14 = a1;
  v42 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v11;
    v18 = v7;
    v19 = v4;
    v20 = v8;
    v21 = v2;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v14;
    *v23 = v14;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "[XPC] new connection from %@", v22, 0xCu);
    outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    v2 = v21;
    v8 = v20;
    v4 = v19;
    v7 = v18;
    v11 = v17;
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = [v14 valueForEntitlement:v25];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  aBlock = v48;
  v44 = v49;
  if (*(&v49 + 1))
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v27 = v47;
      if ([v47 BOOLValue])
      {
        v42 = *(v2 + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue);
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v14;
        v39 = v28;
        v45 = partial apply for closure #1 in CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:);
        v46 = v29;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v44 + 1) = &block_descriptor_28;
        v30 = _Block_copy(&aBlock);
        v31 = v14;

        static DispatchQoS.unspecified.getter();
        *&v48 = _swiftEmptyArrayStorage;
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*(v41 + 8))(v7, v4);
        (*(v40 + 8))(v11, v8);

        return 1;
      }
    }
  }

  else
  {
    outlined destroy of NSObject?(&aBlock, &_sypSgMd, _sypSgMR);
  }

  v33 = v14;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "[XPC] Rejecting connection without entitlement %@", v36, 0xCu);
    outlined destroy of NSObject?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return 0;
}

uint64_t type metadata accessor for _CAFDSessionBoosted()
{
  result = type metadata singleton initialization cache for _CAFDSessionBoosted;
  if (!type metadata singleton initialization cache for _CAFDSessionBoosted)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _CAFDSessionBoosted()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10003A200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003A2B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for sessionBoost()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sessionBoost);
  __swift_project_value_buffer(v0, static Logger.sessionBoost);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for imageArchiveManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.imageArchiveManager);
  __swift_project_value_buffer(v0, static Logger.imageArchiveManager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for appLaunchManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appLaunchManager);
  __swift_project_value_buffer(v0, static Logger.appLaunchManager);
  return Logger.init(subsystem:category:)();
}