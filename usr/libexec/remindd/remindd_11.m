uint64_t sub_10015E2E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v31];

  if (!v9)
  {
    v21 = v31[0];
    _convertNSErrorToError(_:)();

LABEL_20:
    swift_willThrow();
    return sub_10001BBA0(a1, a2);
  }

  v10 = v31[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    goto LABEL_20;
  }

  if (!*(v28 + 16) || (v11 = sub_100005F4C(0xD000000000000012, 0x80000001007ED350), (v12 & 1) == 0) || (sub_100005EF0(*(v28 + 56) + 32 * v11, v31), sub_1000F5104(&unk_10093B300, &unk_100797780), (swift_dynamicCast() & 1) == 0))
  {

    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    swift_allocError();
    *v23 = 0xD000000000000012;
    v23[1] = 0x80000001007ED350;
    goto LABEL_20;
  }

  if (!*(v28 + 16) || (v13 = sub_100005F4C(0xD00000000000002BLL, 0x80000001007ED370), (v14 & 1) == 0) || (sub_100005EF0(*(v28 + 56) + 32 * v13, v31), sub_1000F5104(&qword_100939A08, &unk_100796A80), (swift_dynamicCast() & 1) == 0))
  {

    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    swift_allocError();
    *v24 = 0xD00000000000002BLL;
    v24[1] = 0x80000001007ED370;
    goto LABEL_20;
  }

  v27 = 0x80000001007ED3A0;
  if (!*(v28 + 16) || (v15 = sub_100005F4C(0xD00000000000001FLL, 0x80000001007ED3A0), (v16 & 1) == 0) || (sub_100005EF0(*(v28 + 56) + 32 * v15, v31), (swift_dynamicCast() & 1) == 0))
  {

    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    swift_allocError();
    v26 = 0xD00000000000001FLL;
LABEL_25:
    *v25 = v26;
    v25[1] = v27;
    goto LABEL_20;
  }

  v27 = 0x80000001007ED3C0;
  if (!*(v28 + 16) || (v17 = sub_100005F4C(0xD000000000000019, 0x80000001007ED3C0), (v18 & 1) == 0))
  {

    goto LABEL_28;
  }

  sub_100005EF0(*(v28 + 56) + 32 * v17, v31);

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:

    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    swift_allocError();
    v26 = 0xD000000000000019;
    goto LABEL_25;
  }

  sub_10015DE20(v28, v28, v28, v28, v29);
  result = sub_10001BBA0(a1, a2);
  if (!v3)
  {
    v20 = v29[1];
    *a3 = v29[0];
    *(a3 + 16) = v20;
    *(a3 + 32) = v30;
  }

  return result;
}

unint64_t sub_10015E960()
{
  result = qword_100939A18[0];
  if (!qword_100939A18[0])
  {
    sub_1000F514C(&qword_100939A10, &unk_100796A90);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100939A18);
  }

  return result;
}

void *assignWithCopy for RDSavedTemplateSection(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for RDSavedTemplateSection(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_10015EA44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015EA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10015EAE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10015EB00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10015EB2C(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_10015EB9C(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10015ECB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10015ECF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10015ECF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10015ED4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939BB0);
  v1 = sub_100006654(v0, qword_100939BB0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10015EE14(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10015F170(a1, v4, 0x40u, 0);

  return v5;
}

id sub_10015EEB8(uint64_t a1)
{
  v3 = [*v1 listObjectID];
  if (qword_1009365A8 != -1)
  {
    swift_once();
  }

  v4 = sub_10015F170(a1, v3, 1u, qword_100975240);

  return v4;
}

id sub_10015EF60()
{
  v2 = v1;
  v3 = [v0 listObjectID];
  v4 = sub_100596AB8(v3, 1u);
  type metadata accessor for REMCDListSection();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  v7 = NSManagedObjectContext.count<A>(for:)();
  if (!v1)
  {
    v8 = v7;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v2 storeProperty:v9 forKey:REMListSectionsDataViewFetchSectionsCountResultKey];

    v3 = v5;
    v5 = v9;
  }

  return v2;
}

NSString sub_10015F10C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMListSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1003B5350(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10015F170(uint64_t a1, unint64_t a2, unsigned __int8 a3, Class a4)
{
  v5 = v4;
  type metadata accessor for REMCDListSection();
  v9 = sub_100597524();
  sub_100597980();
  v10 = sub_100596AB8(a2, a3);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  sub_10003450C(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPropertiesToFetch:isa];

  v14 = Array._bridgeToObjectiveC()().super.isa;
  [v11 setRelationshipKeyPathsForPrefetching:v14];

  if (a4)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v11 setSortDescriptors:a4];

  v15 = NSManagedObjectContext.fetch<A>(_:)();
  v16 = v4;

  if (!v4)
  {
    if (qword_100935AE0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_100006654(v17, qword_100939BB0);
    v46 = v15;
    __chkstk_darwin(v18);
    sub_1000F5104(&qword_100939BC8, &unk_100796D40);
    sub_1000060C8(0, &qword_100939BD0, REMListSectionStorage_ptr);
    sub_10000CB90(&qword_100939BD8, &qword_100939BC8, &unk_100796D40);
    Sequence.map<A>(skippingError:_:)();
    if (v16)
    {
    }

    v46 = _swiftEmptyArrayStorage;
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v21 = v15 & 0xC000000000000001;
    v44 = _swiftEmptyArrayStorage;
    while (v19 != v20)
    {
      if (v21)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v22 = *(v15 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v25 = [v22 list];

      ++v20;
      if (v25)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v44 = v46;
        v20 = v24;
      }
    }

    v46 = v44;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    sub_10000CE28(&qword_100939BE0, &unk_100938880, off_1008D41A8);
    v27 = Sequence<>.unique()();

    v46 = _swiftEmptyDictionarySingleton;
    sub_100011D74(_swiftEmptyArrayStorage, v27, &v46);
    v45 = _swiftEmptyDictionarySingleton;
    v42 = sub_10002BE2C(_swiftEmptyArrayStorage, v27, &v45);

    v29 = 0;
    v43 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage;
    while (v19 != v29)
    {
      if (v21)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v30 = *(v15 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_35;
      }

      v33 = [v30 list];

      ++v29;
      if (v33)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v43 = v46;
        v29 = v32;
      }
    }

    v46 = v43;
    v35 = Sequence<>.unique()();

    v46 = v35;
    __chkstk_darwin(v36);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v37 = Sequence.map<A>(skippingError:_:)();

    v46 = v37;
    sub_100271FB4(v42);
    sub_1000F5104(&qword_10093F640, &qword_100796D50);
    sub_10000CB90(&qword_100939BE8, &qword_10093F640, &qword_100796D50);
    sub_10000CE28(&unk_100939BF0, &unk_10094F0C0, REMListStorage_ptr);
    Sequence<>.unique()();

    v38 = objc_allocWithZone(REMListSectionsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = Array._bridgeToObjectiveC()().super.isa;

    v41 = Array._bridgeToObjectiveC()().super.isa;

    v5 = [v38 initWithAccountStorages:v39 listStorages:v40 listSectionStorages:v41];
  }

  return v5;
}

void *sub_10015F9F0(unint64_t a1, id *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v13 = v8;
      sub_100170DAC(&v13, a2, &v12, &v14);

      if (v2)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = v15[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void sub_10015FB64(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_100411D58(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 debugDescription];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1000F5104(&qword_100939EA0, &qword_100797250);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_100010E34(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010E34(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_100010E34(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10015FECC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939C00);
  v1 = sub_100006654(v0, qword_100939C00);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10015FFC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCDebugPerformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001601F4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REMAccountSnapshotSummary();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40) != 1)
  {
    v11 = *(v1 + 8);
    v12 = *(*v1 + 16);
    if (v11 == v12)
    {
LABEL_9:
      *(v1 + 40) = 1;
      v17 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v4 + 16);
      v14 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11;
      *(v1 + 8) = v11 + 1;
      result = v13(v8, v14, v3);
      v15 = *(v1 + 24);
      v16 = *(v1 + 32);
      if (v16 == v15)
      {
        (*(v4 + 8))(v8, v3);
        goto LABEL_9;
      }

      v18 = *(v1 + 16);
      if (v15 >= v18)
      {
        if (v16 >= v18)
        {
          if (v16 < v15)
          {
            *(v1 + 32) = v16 + 1;
            v19 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
            v20 = *(v19 + 48);
            (*(v4 + 32))(a1, v8, v3);
            *(a1 + v20) = v16;
            return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
          }

LABEL_18:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v9 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 1, 1, v9);
}

void sub_100160490(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_100189E50;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100160994;
  v11[3] = &unk_1008E7EE8;
  v9 = _Block_copy(v11);
  v10 = a2;

  [a1 statusReportWithCompletionBlock:v9];
  _Block_release(v9);
}

void sub_100160590(uint64_t a1, dispatch_group_t group, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {

    dispatch_group_leave(group);
    return;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v54 = v9;
  v55 = v5;
  v56 = v10;
LABEL_7:
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    do
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }

      if (v12 >= v9)
      {

        dispatch_group_leave(group);
        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
    }

    while (!v8);
  }

  v57 = v12;
  v58 = (v8 - 1) & v8;
  v13 = __clz(__rbit64(v8)) | (v12 << 6);
  v14 = *(v10 + 56);
  v15 = (*(v10 + 48) + 16 * v13);
  v16 = v15[1];
  v60 = *v15;
  v17 = *(v14 + 8 * v13);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v63 = v16;

  v62 = v17;

  swift_beginAccess();
  v22 = 0;
  v23 = (v19 + 63) >> 6;
  v59 = v17 + 64;
  while (v21)
  {
LABEL_23:
    v27 = (v22 << 10) | (16 * __clz(__rbit64(v21)));
    v28 = (*(v62 + 48) + v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v62 + 56) + v27);
    v32 = v31[1];
    v64 = *v31;

    v65 = v32;

    _StringGuts.grow(_:)(16);

    v33._countAndFlagsBits = v60;
    v33._object = v63;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35._countAndFlagsBits = v29;
    v35._object = v30;
    String.append(_:)(v35);

    swift_beginAccess();
    v36 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(a3 + 16);
    v39 = a3;
    *(a3 + 16) = 0x8000000000000000;
    v41 = sub_100005F4C(0x7474697379626162, 0xEB000000002E7265);
    v42 = v38[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_40;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v40)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_100373664();
        if (v45)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_10036A8F0(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_100005F4C(0x7474697379626162, 0xEB000000002E7265);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_42;
      }

      v41 = v46;
      if (v45)
      {
LABEL_16:

        v24 = (v38[7] + 16 * v41);
        v25 = v24[1];
        *v24 = v64;
        v24[1] = v65;

        goto LABEL_17;
      }
    }

    v38[(v41 >> 6) + 8] |= 1 << v41;
    v48 = (v38[6] + 16 * v41);
    *v48 = 0x7474697379626162;
    v48[1] = 0xEB000000002E7265;
    v49 = (v38[7] + 16 * v41);
    *v49 = v64;
    v49[1] = v65;
    v50 = v38[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_41;
    }

    v38[2] = v52;
LABEL_17:
    v21 &= v21 - 1;
    a3 = v39;
    *(v39 + 16) = v38;
    swift_endAccess();
    *(a4 + 16) = 0;
    v18 = v59;
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      v10 = v56;
      v11 = v57;
      v9 = v54;
      v5 = v55;
      v8 = v58;
      goto LABEL_7;
    }

    v21 = *(v18 + 8 * v26);
    ++v22;
    if (v21)
    {
      v22 = v26;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100160994(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1000F5104(&unk_100945230, &qword_1007A2590);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

uint64_t sub_100160A40@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = *a2;
  v15 = _swiftEmptyDictionarySingleton;
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v13 = a3;
    a3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v6 + 8 * a3 + 32);
      }

      v9 = v8;
      v10 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v14 = v8;
      sub_10017C630(&v15, &v14, a1);

      if (v3)
      {
      }

      ++a3;
      if (v10 == i)
      {
        v12 = v15;
        a3 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyDictionarySingleton;
LABEL_15:

  *a3 = v12;
  return result;
}

void sub_100160FF0(uint64_t a1, void (*a2)(void, uint64_t, id), uint64_t a3, uint64_t a4)
{
  v6 = _convertErrorToNSError(_:)();
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: Failed testInitialSync {error: %@}", v11, 0xCu);
    sub_1000050A4(v12, &unk_100938E70, &unk_100797230);
  }

  v14 = objc_opt_self();
  v15 = v8;
  v16 = _convertErrorToNSError(_:)();

  v17 = [v14 errorSanitizedForXPCFromError:v16];
  swift_beginAccess();
  v18 = *(a4 + 16);

  v19 = v17;
  a2(0, v18, v17);
}

uint64_t sub_1001611EC(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);

  a2(a1, v7, 0);
}

void sub_100161264(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v105 = a4;
  v101 = a8;
  v102 = a7;
  v100 = a6;
  v103 = a5;
  v12 = type metadata accessor for Date();
  v104 = *(v12 - 8);
  v13 = *(v104 + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = &v92 - v15;
  v17 = sub_10000F8A4(a2, a3, 0);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];
  v20 = v106;
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v20)
  {

    return;
  }

  v22 = v21;
  v106 = 0;
  v23 = v13;
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (v22 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24 < 2)
    {
      v25 = v23;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_24:
    aBlock = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v79._countAndFlagsBits = 0xD000000000000034;
    v79._object = 0x80000001007EE6D0;
    String.append(_:)(v79);
    v113 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v80 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v81 = *(v22 + 8 * v80 + 32);
      }

      v82 = v81;
      ++v80;
      v83 = [v81 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v84 = v113[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v80);

    v85 = objc_opt_self();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v86 = Array.description.getter();
    v88 = v87;

    v89._countAndFlagsBits = v86;
    v89._object = v88;
    String.append(_:)(v89);

    v90._countAndFlagsBits = 125;
    v90._object = 0xE100000000000000;
    String.append(_:)(v90);
    v91 = String._bridgeToObjectiveC()();

    [v85 internalErrorWithDebugDescription:v91];

    goto LABEL_30;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v23;
  if (v24 >= 2)
  {
    goto LABEL_24;
  }

  if (!v24)
  {
LABEL_23:

    v77 = objc_opt_self();
    v78 = String._bridgeToObjectiveC()();
    [v77 internalErrorWithDebugDescription:v78];

LABEL_30:
    swift_willThrow();
    return;
  }

LABEL_6:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = *(v22 + 32);
  }

  v27 = [v26 remObjectID];
  if (!v27)
  {
    v40 = objc_opt_self();
    v41 = String._bridgeToObjectiveC()();
    [v40 internalErrorWithDebugDescription:v41];

    swift_willThrow();
    return;
  }

  v28 = v27;
  v29 = [v26 accountTypeHost];
  v30 = [v29 isCloudKit];

  if ((v30 & 1) == 0)
  {
    v42 = objc_opt_self();
    aBlock = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    aBlock = 0xD000000000000025;
    v108 = 0x80000001007EE730;
    v43 = [v28 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 125;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v42 internalErrorWithDebugDescription:v38];
    goto LABEL_15;
  }

  if ([v26 inactive])
  {
    v31 = objc_opt_self();
    aBlock = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    aBlock = 0xD000000000000020;
    v108 = 0x80000001007EE760;
    v32 = [v28 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 125;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v31 internalErrorWithDebugDescription:v38];
LABEL_15:
    v39;

    swift_willThrow();
    return;
  }

  v49 = *(v105 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v50 = [v49 cloudContext];
  if (!v50)
  {
    v74 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    v39 = [v74 internalErrorWithDebugDescription:v38];
    goto LABEL_15;
  }

  v51 = v50;
  if ([v49 supportsSyncingToCloudKit])
  {
    v105 = a9;
    [v51 setDisabled:1];
    Date.init()();
    v52 = v104;
    v53 = *(v104 + 16);
    v98 = v12;
    v53(v99, v16, v12);
    v54 = *(v52 + 80);
    v55 = v52;
    v96 = v28;
    v56 = (v54 + 24) & ~v54;
    v95 = (v25 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = v26;
    v93 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v51;
    v97 = v51;
    v61 = v59;
    *(v59 + 16) = v103;
    (*(v55 + 32))(v59 + v56, v99, v98);
    v62 = v94;
    *(v61 + v95) = a1;
    *(v61 + v62) = v106;
    *(v61 + v93) = v60;
    v63 = (v61 + v57);
    v64 = v101;
    v65 = v102;
    *v63 = v100;
    v63[1] = v65;
    v66 = v96;
    *(v61 + v92) = v96;
    v67 = (v61 + v58);
    v68 = v105;
    *v67 = v64;
    v67[1] = v68;
    v111 = sub_100189C20;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100019200;
    v110 = &unk_1008E7D30;
    v69 = _Block_copy(&aBlock);

    v70 = a1;
    v71 = v106;
    v72 = v97;

    v73 = v66;

    [v72 cancelEverythingWithCompletionHandler:v69];
    _Block_release(v69);

    (*(v104 + 8))(v16, v98);
  }

  else
  {
    v75 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    [v75 internalErrorWithDebugDescription:v76];

    swift_willThrow();
  }
}

void sub_100161C80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v41 = a8;
  v38 = a10;
  v39 = a6;
  v37 = a9;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100791300;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v21 = v20;
  (*(v15 + 8))(v18, v14);
  *(v19 + 56) = &type metadata for Double;
  *(v19 + 64) = &protocol witness table for Double;
  *(v19 + 32) = v21;
  v22 = String.init(format:_:)();
  v24 = v23;
  swift_beginAccess();
  v25 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002C72CC(v22, v24, 0xD00000000000001FLL, 0x80000001007EE7B0, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v43;
  swift_endAccess();
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a3;
  v27[4] = a1;
  v27[5] = a5;
  v28 = v40;
  v27[6] = v39;
  v27[7] = v28;
  v29 = v41;
  v30 = v37;
  v31 = v38;
  v27[8] = v41;
  v27[9] = v30;
  v27[10] = v31;
  aBlock[4] = sub_100189CF4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7D80;
  v32 = _Block_copy(aBlock);
  v33 = a4;
  v34 = a3;

  v35 = a5;

  v36 = v29;

  [v34 performBlock:v32];
  _Block_release(v32);
}

uint64_t sub_100161F4C(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void *a7, uint64_t a8, char *a9)
{
  v143 = a8;
  v142 = a7;
  v149 = a5;
  v150 = a6;
  v144 = a4;
  v146 = a3;
  v148 = a2;
  v10 = type metadata accessor for Date();
  v147 = *(v10 - 8);
  v11 = *(v147 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v15 = v125 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v125 - v17;
  __chkstk_darwin(v16);
  v20 = v125 - v19;
  KeyPath = swift_getKeyPath();
  v145 = a1;
  v22 = sub_1003922E4(KeyPath, a1);

  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  v23 = [objc_allocWithZone(NSFetchRequest) init];
  v24 = [swift_getObjCClassFromMetadata() entity];
  [v23 setEntity:v24];

  [v23 setAffectedStores:0];
  [v23 setPredicate:v22];
  v25 = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *(&v154 + 1) = v25;
  *&aBlock = v23;
  v26 = v23;
  throwingCast<A>(_:as:failureMessage:)();

  sub_10000607C(&aBlock);
  v138 = v15;
  v136 = v11;
  v137 = v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v18;
  v141 = v10;
  v28 = v152;
  v29 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v152];
  [v29 setResultType:2];
  Date.init()();
  *&aBlock = 0;
  v30 = [v148 executeRequest:v29 error:&aBlock];
  v31 = aBlock;
  if (!v30)
  {
    v38 = aBlock;
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v39;

    (*(v147 + 8))(v20, v141);
LABEL_2:
    v149(v40);
  }

  v32 = v30;
  v139 = v20;
  v33 = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *(&v154 + 1) = v33;
  *&aBlock = v32;
  v34 = sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
  v35 = v31;
  v36 = v32;
  throwingCast<A>(_:as:failureMessage:)();
  v37 = v147;
  v134 = v33;
  v135 = v34;
  sub_10000607C(&aBlock);
  v41 = v152;
  if ([v152 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v152, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v154 = 0u;
  }

  throwingCast<A>(_:as:failureMessage:)();
  v42 = v140;
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v131 = "prepare.cancelCloudKit.duration";
  *&aBlock = v151;
  v132 = v36;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v133 = 0;
  v44 = v43;
  v130 = v45;
  v46 = v146;
  swift_beginAccess();
  v47 = *(v46 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v152 = *(v46 + 16);
  *(v46 + 16) = 0x8000000000000000;
  sub_1002C72CC(v44, v130, 0xD00000000000001ELL, v131 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  *(v46 + 16) = v152;
  swift_endAccess();
  v130 = "prepare.deletedCDObjects.count";
  v127 = sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v49 = swift_allocObject();
  v128 = xmmword_100791300;
  *(v49 + 16) = xmmword_100791300;
  Date.init()();
  v131 = v41;
  v50 = v139;
  Date.timeIntervalSince(_:)();
  v52 = v51;
  v53 = *(v37 + 8);
  v54 = v42;
  v55 = v141;
  v53(v54, v141);
  *(v49 + 56) = &type metadata for Double;
  *(v49 + 64) = &protocol witness table for Double;
  *(v49 + 32) = v52;
  v56 = String.init(format:_:)();
  v129 = v57;
  swift_beginAccess();
  v58 = *(v46 + 16);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *&v152 = *(v46 + 16);
  *(v46 + 16) = 0x8000000000000000;
  sub_1002C72CC(v56, v129, 0xD00000000000001FLL, v130 | 0x8000000000000000, v59);
  *(v46 + 16) = v152;
  swift_endAccess();

  v60 = v37 + 8;
  v61 = v53;
  v53(v50, v55);
  sub_1000060C8(0, &qword_100939ED8, off_1008D41F8);
  v62 = [objc_allocWithZone(NSFetchRequest) init];
  v63 = [swift_getObjCClassFromMetadata() entity];
  [v62 setEntity:v63];

  [v62 setAffectedStores:0];
  [v62 setPredicate:0];
  *(&v154 + 1) = v25;
  *&aBlock = v62;
  v64 = v62;
  v40 = v133;
  throwingCast<A>(_:as:failureMessage:)();

  sub_10000607C(&aBlock);
  if (v40)
  {
    goto LABEL_2;
  }

  v65 = v140;
  v66 = v152;
  v67 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v152];
  [v67 setResultType:2];
  v68 = v138;
  Date.init()();
  *&aBlock = 0;
  v69 = [v148 executeRequest:v67 error:&aBlock];
  v70 = aBlock;
  if (!v69)
  {
    v74 = aBlock;
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v75;

    v61(v68, v141);
    goto LABEL_2;
  }

  *(&v154 + 1) = v134;
  *&aBlock = v69;
  v71 = v69;
  v72 = v70;
  v73 = v71;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&aBlock);
  v76 = v152;
  if ([v152 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v152, &aBlock);
  }

  else
  {
    aBlock = 0u;
    v154 = 0u;
  }

  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
  v126 = v61;
  v125[1] = v60;
  v139 = "prepare.deleteCDObject.duration";
  *&aBlock = v151;
  v77 = dispatch thunk of CustomStringConvertible.description.getter();
  v78 = v65;
  v80 = v79;
  v81 = v146;
  swift_beginAccess();
  v82 = *(v81 + 16);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  *&v152 = *(v81 + 16);
  *(v81 + 16) = 0x8000000000000000;
  sub_1002C72CC(v77, v80, 0xD000000000000020, v139 | 0x8000000000000000, v83);
  *(v81 + 16) = v152;
  swift_endAccess();
  v139 = "CloudState.count";
  v84 = swift_allocObject();
  *(v84 + 16) = v128;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v86 = v85;
  v87 = v141;
  v126(v78, v141);
  *(v84 + 56) = &type metadata for Double;
  *(v84 + 64) = &protocol witness table for Double;
  *(v84 + 32) = v86;
  v88 = String.init(format:_:)();
  v90 = v89;
  swift_beginAccess();
  v91 = *(v81 + 16);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *&v152 = *(v81 + 16);
  *(v81 + 16) = 0x8000000000000000;
  v93 = v126;
  sub_1002C72CC(v88, v90, 0xD000000000000023, v139 | 0x8000000000000000, v92);
  *(v81 + 16) = v152;
  swift_endAccess();

  v94 = v87;
  v95 = v148;

  v93(v138, v87);
  v96 = v145;
  [v145 setCkUserRecordName:0];
  [v96 setListIDsMergeableOrdering:0];
  [v96 setListIDsMergeableOrdering_v2:0];
  [v96 setCkServerChangeTokens:0];
  [v96 setCkSharedObjectOwnerNames:0];
  [v96 setLists:0];
  [v96 setReminders:0];
  *&aBlock = 0;
  v97 = [v95 save:&aBlock];
  v98 = aBlock;
  if (!v97)
  {
    v123 = aBlock;
    v124 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v124;
    goto LABEL_2;
  }

  v138 = a9;
  swift_beginAccess();
  v99 = v98;
  v100 = *(v81 + 16);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  *&v152 = *(v81 + 16);
  *(v81 + 16) = 0x8000000000000000;
  sub_1002C72CC(1702195828, 0xE400000000000000, 0xD00000000000001CLL, 0x80000001007EE870, v101);
  *(v81 + 16) = v152;
  swift_endAccess();
  [v144 setDisabled:0];
  v102 = v140;
  Date.init()();
  v139 = @"TestInitialSync";
  v103 = v147;
  (*(v147 + 16))(v137, v102, v94);
  v104 = (*(v103 + 80) + 24) & ~*(v103 + 80);
  v136 = (v136 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
  v109 = swift_allocObject();
  *(v109 + 16) = v81;
  (*(v103 + 32))(v109 + v104, v137, v94);
  v110 = v144;
  *(v109 + v136) = v144;
  v111 = (v109 + v105);
  v112 = v150;
  *v111 = v149;
  v111[1] = v112;
  v113 = v148;
  *(v109 + v106) = v148;
  v114 = v145;
  *(v109 + v107) = v145;
  v115 = v142;
  *(v109 + v108) = v142;
  v116 = (v109 + ((v108 + 15) & 0xFFFFFFFFFFFFFFF8));
  v117 = v138;
  *v116 = v143;
  v116[1] = v117;
  v155 = sub_100189D2C;
  v156 = v109;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v154 = sub_100042968;
  *(&v154 + 1) = &unk_1008E7DD0;
  v118 = _Block_copy(&aBlock);
  v119 = v114;

  v120 = v110;

  v121 = v113;
  v122 = v115;

  [v120 syncWithReason:v139 discretionary:0 completionHandler:v118];
  _Block_release(v118);
  return (v126)(v140, v141);
}

id sub_100162F68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

void sub_100162FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v84 = a7;
  v86 = a1;
  v87 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100791300;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  *(v20 + 56) = &type metadata for Double;
  *(v20 + 64) = &protocol witness table for Double;
  *(v20 + 32) = v22;
  v23 = String.init(format:_:)();
  v25 = v24;
  swift_beginAccess();
  v26 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002C72CC(v23, v25, 0xD000000000000012, 0x80000001007EE890, isUniquelyReferenced_nonNull_native);
  v92 = a2;
  *(a2 + 16) = v99;
  swift_endAccess();
  v28 = [a4 lastSyncMetrics];
  v88 = a6;
  v85 = a8;
  if (v28)
  {
    v29 = v28;
    v30 = [v28 dictionaryRepresentation];

    v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v32 = sub_10038E004(_swiftEmptyArrayStorage);
  }

  v33 = 0;
  v81 = a10;
  v82 = a9;
  v83 = a11;
  v34 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v32 + 64);
  v38 = (v35 + 63) >> 6;
  v89 = v38;
  v90 = v32;
  while (v37)
  {
LABEL_14:
    v42 = (v33 << 10) | (16 * __clz(__rbit64(v37)));
    v43 = (*(v32 + 48) + v42);
    v44 = *v43;
    v45 = v43[1];
    v46 = (*(v32 + 56) + v42);
    v47 = v46[1];
    v91 = *v46;
    aBlock = 0x2E636E7973;
    v94 = 0xE500000000000000;

    v48._countAndFlagsBits = v44;
    v48._object = v45;
    String.append(_:)(v48);

    v50 = aBlock;
    v49 = v94;
    v51 = v92;
    swift_beginAccess();
    v52 = *(v51 + 16);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v51 + 16);
    v54 = v99;
    *(v51 + 16) = 0x8000000000000000;
    v56 = sub_100005F4C(v50, v49);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if (v53)
      {
        v63 = v99;
        if (v55)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_100373664();
        v63 = v99;
        if (v60)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_10036A8F0(v59, v53);
      v61 = sub_100005F4C(v50, v49);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_31;
      }

      v56 = v61;
      v63 = v99;
      if (v60)
      {
LABEL_7:
        v39 = (v63[7] + 16 * v56);
        v40 = v39[1];
        *v39 = v91;
        v39[1] = v47;

        goto LABEL_8;
      }
    }

    v63[(v56 >> 6) + 8] |= 1 << v56;
    v64 = (v63[6] + 16 * v56);
    *v64 = v50;
    v64[1] = v49;
    v65 = (v63[7] + 16 * v56);
    *v65 = v91;
    v65[1] = v47;
    v66 = v63[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_30;
    }

    v63[2] = v68;
LABEL_8:
    v37 &= v37 - 1;
    *(v92 + 16) = v63;
    swift_endAccess();
    v38 = v89;
    v32 = v90;
  }

  while (1)
  {
    v41 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v41 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v41);
    ++v33;
    if (v37)
    {
      v33 = v41;
      goto LABEL_14;
    }
  }

  v69 = v86;
  if (v86)
  {
    swift_errorRetain();
    v87(v69);
  }

  else
  {
    v70 = swift_allocObject();
    v71 = v84;
    v72 = v85;
    v70[2] = v84;
    v70[3] = v72;
    v73 = v81;
    v74 = v82;
    v70[4] = v82;
    v70[5] = v73;
    v75 = v87;
    v76 = v88;
    v70[6] = v83;
    v70[7] = v75;
    v70[8] = v76;
    v97 = sub_100189E14;
    v98 = v70;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100019200;
    v96 = &unk_1008E7E20;
    v77 = _Block_copy(&aBlock);
    v78 = v71;
    v79 = v72;
    v80 = v74;

    [v78 performBlock:v77];
    _Block_release(v77);
  }
}

void sub_10016356C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v8 = _s10PredicatesOMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshObject:a2 mergeChanges:0];
  *v11 = a3;
  v11[8] = 2;
  swift_storeEnumTagMultiPayload();
  v12 = a3;
  v13 = sub_100043AA8();
  sub_100188054(v11, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  v16 = NSManagedObjectContext.count<A>(for:)();
  a4(v16);
}

void sub_100163774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

void sub_100163824(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100939C00);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDXPCDebugPerformer: Failed testReinitializeCloudKit {error: %@}", v8, 0xCu);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
    }

    v11 = objc_opt_self();
    v12 = v5;
    v13 = _convertErrorToNSError(_:)();

    v14 = [v11 errorSanitizedForXPCFromError:v13];
    v15 = v14;
    (a2)(v14);
  }

  else
  {
    a2();
  }
}

uint64_t sub_100163A2C(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v87 = a7;
  v17 = type metadata accessor for UUID();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  __chkstk_darwin(v17);
  v82 = v19;
  v84 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || !a2)
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100939C00);
    v33 = a3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "RDXPCDebugPerformer: testReinitializeCloudKit: Done ACAccont migration flags unset {acAccount: %@}", v36, 0xCu);
      sub_1000050A4(v37, &unk_100938E70, &unk_100797230);
    }
  }

  else
  {
    v86 = a5;
    swift_errorRetain();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100939C00);
    swift_errorRetain();
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      LODWORD(v80) = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v79 = v26;
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *v26 = v21;
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v27 = v21;
      v28 = Error.rem_errorDescription.getter();
      v30 = sub_10000668C(v28, v29, aBlock);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v80, "RDXPCDebugPerformer: testReinitializeCloudKit: ERROR unsetting ACAccount migration flags {acAccount: %@, error: %s}", v25, 0x16u);
      sub_1000050A4(v79, &unk_100938E70, &unk_100797230);

      sub_10000607C(v81);
    }

    swift_beginAccess();
    v31 = *(a4 + 16);
    *(a4 + 16) = a2;

    a5 = v86;
  }

  swift_beginAccess();
  v39 = *(a4 + 16);
  if (v39)
  {
    v40 = *(a4 + 16);
    swift_errorRetain();
    a5(v39);
  }

  v41 = v17;
  v42 = *(v87 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v43 = [v42 cloudContext];
  if (!v43)
  {
    v69 = objc_opt_self();
    v70 = String._bridgeToObjectiveC()();
    v71 = [v69 internalErrorWithDebugDescription:v70];

    swift_willThrow();
LABEL_26:
    swift_errorRetain();
    a5(v71);
  }

  v44 = v43;
  v45 = [v42 accountUtils];
  if (!v45)
  {
    v72 = objc_opt_self();
    v73 = String._bridgeToObjectiveC()();
    v71 = [v72 internalErrorWithDebugDescription:v73];

    swift_willThrow();
    goto LABEL_26;
  }

  v46 = v45;
  if (([v42 supportsSyncingToCloudKit] & 1) == 0)
  {
    v74 = objc_opt_self();
    v75 = String._bridgeToObjectiveC()();
    v71 = [v74 internalErrorWithDebugDescription:v75];

    swift_willThrow();

    goto LABEL_26;
  }

  [v44 setDisabled:1];
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v80 = v46;
  v81 = v44;
  v86 = a5;
  v87 = a6;
  v79 = a11;
  v77 = a10;
  v78 = a9;
  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_100939C00);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "RDXPCDebugPerformer: testReinitializeCloudKit: CloudKit disabled.", v50, 2u);
  }

  v51 = v84;
  v52 = v85;
  (*(v85 + 16))(v84, v83, v41);
  v53 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v54 = (v82 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v52 + 32))(v58 + v53, v51, v41);
  v59 = (v58 + v54);
  v60 = v87;
  *v59 = v86;
  v59[1] = v60;
  v61 = v81;
  *(v58 + v55) = v81;
  *(v58 + v56) = v80;
  v62 = v78;
  *(v58 + v57) = v78;
  v63 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
  v64 = v79;
  *v63 = v77;
  v63[1] = v64;
  aBlock[4] = sub_100189A7C;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7C18;
  v65 = _Block_copy(aBlock);

  v66 = v61;

  v67 = v62;

  [v66 cancelEverythingWithCompletionHandler:v65];
  _Block_release(v65);
}

void sub_1001642D0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100939C00);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: testReinitializeCloudKit: CloudKit cancelEverything completed.", v14, 2u);
  }

  v15 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v15 objectIDWithUUID:isa];

  v18 = [objc_allocWithZone(REMStore) init];
  v19 = [objc_allocWithZone(REMSaveRequest) initWithStore:v18];
  v41 = 0;
  v20 = [v18 fetchAccountWithObjectID:v17 error:&v41];
  if (!v20)
  {
    v36 = v41;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_14:

    swift_errorRetain();
    a2(v37);

    return;
  }

  v21 = v20;
  v22 = v41;
  v23 = [v19 updateAccount:v21];
  [v23 removeFromStore];
  v41 = 0;
  if (![v19 saveSynchronouslyWithError:&v41])
  {
    v38 = v41;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = v23;
    goto LABEL_14;
  }

  v24 = v41;

  [a4 setDisabled:0];
  v25 = v17;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "RDXPCDebugPerformer: testReinitializeCloudKit: REM account removed from DB. CloudKit re-enabled. {objectID: %@}", v28, 0xCu);
    sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v34 = qword_100974CB0;
  v35 = swift_allocObject();
  v35[2] = a7;
  v35[3] = a8;
  v35[4] = a2;
  v35[5] = a3;

  sub_1006B370C(v31, v33, 1, v34, sub_100189B80, v35);
}

uint64_t sub_10016474C(char a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v21 = a6;
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v15 = 136315906;
    *(v15 + 4) = sub_10000668C(a4, a5, &v22);
    *(v15 + 12) = 1024;
    *(v15 + 14) = a1 & 1;
    *(v15 + 18) = 1024;
    *(v15 + 20) = a2 & 1;
    *(v15 + 24) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v16 = Error.rem_errorDescription.getter();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_10000668C(v16, v18, &v22);

    *(v15 + 26) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: testReinitializeCloudKit: Completed updateState() for accountIdentifier: %s, didAddAccount: %{BOOL}d, didUpdateAccount: %{BOOL}d, updateAccountError: %s", v15, 0x22u);
    swift_arrayDestroy();

    a6 = v21;
  }

  else
  {
  }

  return a6(a3);
}

void sub_1001649E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v41[1] = a7;
  v44 = a3;
  v45 = a1;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100939C00);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v43 = a8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v41[0] = v15;
    v25 = a6;
    v26 = v24;
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10000668C(v45, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "RDXPCDebugPerformer: fireDebugNotification initiated with text: %s", v26, 0xCu);
    sub_10000607C(v27);

    a6 = v25;
    v15 = v41[0];
  }

  if (a4)
  {
    v28 = a4;
  }

  else
  {
    UUID.init()();
    v44 = UUID.uuidString.getter();
    v28 = v29;
    (*(v16 + 8))(v19, v15);
  }

  v30 = objc_allocWithZone(UNMutableNotificationContent);

  v31 = [v30 init];
  v32 = String._bridgeToObjectiveC()();
  [v31 setBody:v32];

  if (a6)
  {
    v33 = String._bridgeToObjectiveC()();
    [v31 setCategoryIdentifier:v33];
  }

  if (v43)
  {
    v34 = *(v42 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter);
    v35 = swift_allocObject();
    *(v35 + 16) = a10;
    *(v35 + 24) = a11;

    v36 = String._bridgeToObjectiveC()();

    v37 = String._bridgeToObjectiveC()();
    if (a9)
    {
      v50 = sub_100189954;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100042968;
      v49 = &unk_1008E7A88;
      v38 = _Block_copy(&aBlock);

      [v34 releaseNotificationWithIdentifier:v36 reference:v37 completion:v38];
    }

    else
    {
      v50 = sub_10018ADFC;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100042968;
      v49 = &unk_1008E7A38;
      v38 = _Block_copy(&aBlock);

      [v34 retainNotificationWithIdentifier:v36 reference:v37 content:v31 skipBanner:0 completion:v38];
    }

    _Block_release(v38);
  }

  else
  {
    v39 = *(v42 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter);
    v40 = swift_allocObject();
    *(v40 + 16) = a10;
    *(v40 + 24) = a11;

    sub_10052554C(v44, v28, v31, sub_10018ADFC, v40);
  }
}

uint64_t sub_100165098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939C00);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Debug: fetchGeofences", v17, 2u);
  }

  v18 = *(*&v3[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_100189948;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7998;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v9, v6);
  (*(v10 + 8))(v13, v25);
}

uint64_t sub_100165450(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager);
  v4 = sub_1005082D8();
  sub_10015FB64(v4);
  v6 = v5;

  a2(v6);
}

uint64_t sub_10016555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100939C00);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = v10;
    v24 = v7;
    v25 = v4;
    v26 = a2;
    v27 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000668C(v15, v17, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "RDXPCDebugPerformer: Debug: removeGeofence {UUID=%s}", v22, 0xCu);
    sub_10000607C(v27);
    a2 = v26;
    v4 = v25;
    v7 = v24;
    v10 = v34;

    a3 = v35;
  }

  v28 = *(*&v4[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v29 = swift_allocObject();
  v29[2] = v4;
  v29[3] = v15;
  v29[4] = v17;
  v29[5] = a2;
  v29[6] = a3;
  aBlock[4] = sub_10018989C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7920;
  v30 = _Block_copy(aBlock);
  v31 = v28;
  v32 = v4;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v38 + 8))(v10, v7);
  (*(v36 + 8))(v14, v37);
}

uint64_t sub_100165AD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v70 = a3;
  v67 = a2;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v66 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v66);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v65 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v62 = v26;
  __chkstk_darwin(v23);
  v28 = &v61 - v27;
  sub_100010364(a1, v17, &unk_100939D90, "8\n\r");
  v29 = *(v19 + 48);
  if (v29(v17, 1, v18) == 1)
  {
    UUID.init()();
    if (v29(v17, 1, v18) != 1)
    {
      sub_1000050A4(v17, &unk_100939D90, "8\n\r");
    }
  }

  else
  {
    (*(v19 + 32))(v28, v17, v18);
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100939C00);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v31 = *(v19 + 16);
  v31(v25, v28, v18);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61 = v18;
    v36 = v35;
    aBlock[0] = v35;
    *v34 = 68159234;
    *(v34 + 4) = 4;
    *(v34 + 8) = 2048;
    *(v34 + 10) = a4;
    *(v34 + 18) = 1040;
    *(v34 + 20) = 4;
    *(v34 + 24) = 2048;
    *(v34 + 26) = a5;
    *(v34 + 34) = 1040;
    *(v34 + 36) = 4;
    *(v34 + 40) = 2048;
    *(v34 + 42) = a6;
    *(v34 + 50) = 2080;
    v37 = UUID.uuidString.getter();
    v38 = v25;
    v40 = v39;
    v41 = *(v19 + 8);
    v63 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v41;
    v41(v38, v61);
    v42 = sub_10000668C(v37, v40, aBlock);

    *(v34 + 52) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "RDXPCDebugPerformer: Debug: addGeofence {center=(%.*f,%.*f), r=%.*f, UUID=%s}", v34, 0x3Cu);
    sub_10000607C(v36);
    v18 = v61;
  }

  else
  {

    v43 = *(v19 + 8);
    v63 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v43;
    v43(v25, v18);
  }

  v44 = v69;
  v45 = *(*&v69[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v46 = v65;
  v31(v65, v28, v18);
  v47 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v48 = v18;
  v49 = (v62 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = v28;
  v51 = swift_allocObject();
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  (*(v19 + 32))(v51 + v47, v46, v48);
  *(v51 + v49) = v44;
  v52 = (v51 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
  v53 = v70;
  *v52 = v67;
  v52[1] = v53;
  aBlock[4] = sub_1001897F8;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E78A8;
  v54 = _Block_copy(aBlock);
  v55 = v45;
  v56 = v44;

  v57 = v71;
  static DispatchQoS.unspecified.getter();
  v75 = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v58 = v73;
  v59 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);

  (*(v68 + 8))(v58, v59);
  (*(v72 + 8))(v57, v74);
  v64(v50, v48);
}

void sub_10016627C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  UUID.uuidString.getter();
  v12 = objc_allocWithZone(CLCircularRegion);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithCenter:v13 radius:a1 identifier:{a2, a3}];

  v16 = v14;
  [v16 setNotifyOnEntry:1];
  [v16 setNotifyOnExit:1];

  v15 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager);
  sub_1005077FC(v16);
  a6();
}

uint64_t sub_100166628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = CLLocationCoordinate2DMake(37.3318, 122.0312);
  v19 = objc_allocWithZone(CLCircularRegion);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithCenter:v20 radius:v18.latitude identifier:{v18.longitude, 100.0}];

  v22 = *(*&v7[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_queue);
  v23 = swift_allocObject();
  v23[2] = v7;
  v23[3] = v21;
  v23[4] = a3;
  v23[5] = a4;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v7;
  v27 = v21;

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v33 + 8))(v13, v10);
  (*(v31 + 8))(v17, v32);
}

void sub_100166C60(void *a1, void *a2, char a3)
{
  v6 = a2;
  v7 = sub_1005E2A38(v6);
  if (!v3)
  {
    v8 = v7;
    v9 = sub_100566030(v7, 0);
    if (v9)
    {
      v10 = v9;
      if ((a3 & 1) == 0)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v11;

        v12._object = 0x80000001007EE2C0;
        v12._countAndFlagsBits = 0xD000000000000038;
        String.append(_:)(v12);

        v13 = String._bridgeToObjectiveC()();

        [a1 setTransactionAuthor:{v13, v16, v17}];
      }

      v14 = objc_opt_self();
      v15 = String._bridgeToObjectiveC()();
      [v14 internalErrorWithDebugDescription:v15];

      swift_willThrow();
      v8 = v10;
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v6];
      swift_willThrow();
    }
  }
}

void sub_100166E14(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  a6(v11, a4, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_100166EB8(void *a1, void *a2, char a3, double a4)
{
  v8 = a2;
  v9 = sub_1005E4588(v8);
  if (!v4)
  {
    v10 = v9;
    v11 = sub_10056606C(v9, 0);
    v12 = v11;
    if (v11)
    {
      [v11 setDueDateResolutionTokenAsNonce:a4];
      if (a3)
      {
        [v12 updateChangeCount];
      }

      else
      {
        [v12 setCkDirtyFlags:0];
        v13 = [v12 trigger];
        if (v13)
        {
          v14 = v13;
          [v13 setCkDirtyFlags:0];
        }
      }

      if ([a1 hasChanges])
      {
        v34 = 0;
        if ([a1 save:&v34])
        {
          v15 = qword_100935AE8;
          v16 = v34;
          if (v15 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100006654(v17, qword_100939C00);
          v18 = v12;
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v19, v20))
          {
            v33 = v20;
            v21 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v21 = 136446466;
            v22 = [v18 remObjectID];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 description];

              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;
            }

            else
            {
              v27 = 0xE300000000000000;
              v25 = 7104878;
            }

            v29 = sub_10000668C(v25, v27, &v34);

            *(v21 + 4) = v29;
            *(v21 + 12) = 2082;
            v30 = Bool.yesno.getter();
            v32 = sub_10000668C(v30, v31, &v34);

            *(v21 + 14) = v32;
            _os_log_impl(&_mh_execute_header, v19, v33, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForAlarmID: Saved changes {alarmID: %{public}s, shouldSetDirtyFlags: %{public}s}", v21, 0x16u);
            swift_arrayDestroy();
          }
        }

        else
        {
          v28 = v34;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
      }
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v8];
      swift_willThrow();
    }
  }
}

void sub_10016729C(void *a1, void *a2, char a3, double a4)
{
  LOBYTE(v5) = a3;
  v8 = a2;
  v9 = sub_1005E2A38(v8);
  if (v4)
  {
    return;
  }

  v54 = v9;
  v10 = sub_100566030(v9, 0);
  if (!v10)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v8];
    swift_willThrow();
    v11 = v54;
LABEL_3:

    return;
  }

  v52 = v10;
  v12 = [v10 alarmStorage];
  if (!v12)
  {
LABEL_58:
    v47 = objc_opt_self();
    v48 = String._bridgeToObjectiveC()();
    v49 = [v47 internalErrorWithDebugDescription:v48];
LABEL_59:
    v49;

    swift_willThrow();
    v11 = v52;
    goto LABEL_3;
  }

  v55 = v12;
  v13 = v12;
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
  v14 = Sequence.elements<A>(ofType:)();

  if (v14 >> 62)
  {
    goto LABEL_56;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_57:

    goto LABEL_58;
  }

LABEL_9:
  v51 = a1;
  v53 = v5;
  v16 = 0;
  v55 = _swiftEmptyArrayStorage;
  v17 = &selRef_hack_willSaveHandled;
  v18 = &selRef_setPublicLinkLastModifiedDate_;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v19 = *(v14 + 8 * v16 + 32);
    }

    a1 = v19;
    v5 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_57;
      }

      goto LABEL_9;
    }

    if (([v19 v17[184]] & 1) != 0 || (objc_msgSend(a1, v18[133]) & 1) != 0 || (v20 = objc_msgSend(a1, "trigger")) == 0)
    {
    }

    else
    {
      v21 = v20;
      v22 = [v20 isTemporal];

      if (v22)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v55 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v17 = &selRef_hack_willSaveHandled;
      v18 = &selRef_setPublicLinkLastModifiedDate_;
    }

    ++v16;
  }

  while (v5 != v15);

  if (v55 < 0 || (v55 & 0x4000000000000000) != 0)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

  v14 = *(v55 + 16);
  if (!v14)
  {
LABEL_61:

    v50 = objc_opt_self();
    v48 = String._bridgeToObjectiveC()();
    v49 = [v50 internalErrorWithDebugDescription:v48];
    goto LABEL_59;
  }

LABEL_28:
  v24 = 0;
  v5 = &selRef_setPublicLinkLastModifiedDate_;
  do
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v55 + 16))
      {
        goto LABEL_55;
      }

      v25 = *(v55 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_54;
    }

    [v25 setDueDateResolutionTokenAsNonce:a4];
    if (v53)
    {
      [v26 updateChangeCount];
    }

    else
    {
      [v26 setCkDirtyFlags:0];
      v28 = [v26 trigger];
      if (v28)
      {
        a1 = v28;
        [v28 setCkDirtyFlags:0];
      }
    }

    ++v24;
  }

  while (v27 != v14);

  if (![v51 hasChanges])
  {

LABEL_47:
    return;
  }

  v55 = 0;
  if ([v51 save:&v55])
  {
    v29 = qword_100935AE8;
    v30 = v55;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100939C00);
    v32 = v52;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v35 = 136446722;
      v36 = [v32 remObjectID];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 description];

        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
      }

      else
      {
        v41 = 0xE300000000000000;
        v39 = 7104878;
      }

      v43 = sub_10000668C(v39, v41, &v55);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v14;
      *(v35 + 22) = 2082;
      v44 = Bool.yesno.getter();
      v46 = sub_10000668C(v44, v45, &v55);

      *(v35 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v33, v34, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForReminderID: Saved changes {reminderID: %{public}s, alarmsUpdated.count: %ld, shouldSetDirtyFlags: %{public}s}", v35, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_47;
  }

  v42 = v55;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_1001679D8(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, double a6, void (*a7)(id, uint64_t, id, void *, double))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a1;
  a7(v13, a4, v14, v12, a6);
  _Block_release(v12);
  _Block_release(v12);
}

uint64_t sub_100167B80(void *a1, int a2, id a3, uint64_t *a4)
{
  v5 = a1;
  v6 = [a3 stringFromContact:a1];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE500000000000000;
    v8 = 0x296C696E28;
  }

  v11 = [v5 phoneNumbers];
  sub_1000F5104(&unk_100939E80, &qword_100797248);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v10;
  v65 = a4;
  v63 = v8;
  v66 = v5;
  if (v13)
  {
    result = sub_100026EF4(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 value];
      v19 = [v18 stringValue];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_100026EF4((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v13 != v15);

    v5 = v66;
  }

  else
  {
  }

  v26 = [v5 emailAddresses];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v27;
  if (v27 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v27;
    if (v29)
    {
LABEL_19:
      v30 = v28;
      result = sub_100026EF4(0, v29 & ~(v29 >> 63), 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v31 = 0;
        v32 = v30;
        v67 = v30 & 0xC000000000000001;
        v33 = v30;
        do
        {
          if (v67)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v32 + 8 * v31 + 32);
          }

          v35 = v34;
          v36 = [v34 value];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v41 = _swiftEmptyArrayStorage[2];
          v40 = _swiftEmptyArrayStorage[3];
          if (v41 >= v40 >> 1)
          {
            sub_100026EF4((v40 > 1), v41 + 1, 1);
          }

          ++v31;
          _swiftEmptyArrayStorage[2] = v41 + 1;
          v42 = &_swiftEmptyArrayStorage[2 * v41];
          v42[4] = v37;
          v42[5] = v39;
          v32 = v33;
        }

        while (v29 != v31);

        v5 = v66;
        goto LABEL_31;
      }

LABEL_37:
      __break(1u);
      return result;
    }
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  v43 = [v5 identifier];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  _StringGuts.grow(_:)(41);

  v47._countAndFlagsBits = 0x6469202020200A3ALL;
  v47._object = 0xE90000000000003DLL;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v44;
  v48._object = v46;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0x6F6870202020200ALL;
  v49._object = 0xEC0000003D73656ELL;
  String.append(_:)(v49);
  v50 = Array.description.getter();
  v52 = v51;

  v53._countAndFlagsBits = v50;
  v53._object = v52;
  String.append(_:)(v53);

  v54._countAndFlagsBits = 0x616D65202020200ALL;
  v54._object = 0xEC0000003D736C69;
  String.append(_:)(v54);
  v55 = Array.description.getter();
  v57 = v56;

  v58._countAndFlagsBits = v55;
  v58._object = v57;
  String.append(_:)(v58);

  v59 = *v65;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v65 = v59;
  if ((result & 1) == 0)
  {
    result = sub_100365788(0, *(v59 + 16) + 1, 1, v59);
    v59 = result;
    *v65 = result;
  }

  v61 = *(v59 + 16);
  v60 = *(v59 + 24);
  if (v61 >= v60 >> 1)
  {
    result = sub_100365788((v60 > 1), v61 + 1, 1, v59);
    v59 = result;
    *v65 = result;
  }

  *(v59 + 16) = v61 + 1;
  v62 = v59 + 16 * v61;
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  return result;
}

void sub_1001680CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

void sub_1001681C4(void **a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 objectForKey:v5];

  v8 = *a1;
  *a1 = v7;
}

uint64_t sub_10016824C()
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939C00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDXPCDebugPerformer: Notifying stores did change for isolated store", v3, 2u);
  }

  v4 = _REMStoreChangedNotificationName;

  return notify_post(v4);
}

void sub_100168340(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSURL *a4@<X8>)
{
  URL._bridgeToObjectiveC()(a4);
  v8 = v7;
  [*(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL) setObject:a2 forKey:v7];
  [*(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL) setObject:a3 forKey:v8];
}

void sub_1001683D4(uint64_t a1)
{
  v1 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a1];
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1009752E8;
  if (qword_1009367E0 != -1)
  {
    v3 = qword_1009752E8;
    swift_once();
    v2 = v3;
  }

  sub_1003A9DBC(v1, v2, qword_1009752F0);
}

void sub_1001684CC(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100168548(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v75 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchTime();
  v72 = *(v82 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v82);
  v67 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = v63 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URL();
  v18 = *(v85 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v85);
  v83 = v20;
  v84 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v63 - v22;
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_100939C00);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "os_transaction INIT {name: com.apple.remindd.RDXPCDebugPerformer.destroyIsolatedStoreContainer}", v27, 2u);
  }

  v66 = os_transaction_create();
  v28 = objc_opt_self();
  v70 = a1;
  v29 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v14 + 8))(v17, v13);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v28 urlForIsolatedContainerWithIdentifier:v30];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v79;
  v33 = *&v79[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue];
  v34 = *(v18 + 16);
  v36 = v84;
  v35 = v85;
  v80 = v23;
  v34(v84, v23, v85);
  v37 = *(v18 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v69 = v18;
  v40 = *(v18 + 32);
  v39 = v18 + 32;
  v64 = v40;
  v40(v38 + ((v37 + 24) & ~v37), v36, v35);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1001894BC;
  *(v41 + 24) = v38;
  v65 = v38;
  v91 = sub_1000FDA90;
  v92 = v41;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_10000F160;
  v90 = &unk_1008E75B0;
  v42 = _Block_copy(&aBlock);
  v79 = v32;

  dispatch_sync(v33, v42);
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_9;
  }

  v63[1] = v39;
  isEscapingClosureAtFileLocation = ~v37;
  if (qword_100935D30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v63[0] = qword_100974CC8;
  v44 = v67;
  static DispatchTime.now()();
  + infix(_:_:)();
  v72 = *(v72 + 8);
  (v72)(v44, v82);
  v45 = v84;
  v46 = v85;
  v34(v84, v80, v85);
  v47 = (v37 + 32) & isEscapingClosureAtFileLocation;
  v48 = (v83 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v79;
  v52 = v70;
  *(v50 + 16) = v79;
  *(v50 + 24) = v52;
  v64(v50 + v47, v45, v46);
  v53 = (v50 + v48);
  v54 = v71;
  *v53 = v68;
  v53[1] = v54;
  *(v50 + v49) = v66;
  v91 = sub_100189520;
  v92 = v50;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_100019200;
  v90 = &unk_1008E7600;
  v55 = _Block_copy(&aBlock);
  v56 = v51;
  v57 = v52;

  swift_unknownObjectRetain();
  v58 = v73;
  static DispatchQoS.unspecified.getter();
  v86 = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v59 = v75;
  v60 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v61 = v81;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v55);
  swift_unknownObjectRelease();
  (*(v77 + 8))(v59, v60);
  (*(v74 + 8))(v58, v76);
  (v72)(v61, v82);
  (*(v69 + 8))(v80, v85);
}

void sub_100168EA0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  [v1 removeObjectForKey:v3];
}

void sub_100168F10(char *a1, void *a2, uint64_t *a3, void (*a4)(id), uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v68 - v13;
  v76 = 1;
  v15 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue];
  v16 = *(v9 + 16);
  v71 = a3;
  v68 = v16;
  (v16)(&v68 - v13, a3, v8, v12);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a1;
  v20 = *(v9 + 32);
  v70 = v8;
  v20(v19 + v17, v14, v8);
  *(v19 + v18) = &v76;
  v21 = swift_allocObject();
  v21[2] = sub_1001895C0;
  v21[3] = v19;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008E7678;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = a1;

  dispatch_sync(v15, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    v25 = [objc_opt_self() defaultManager];
    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    if (v76 == 1)
    {
      URL._bridgeToObjectiveC()(v76);
      v28 = v27;
      v29 = [v25 rem_fileExistsAtURL:v27];

      if (v29)
      {
        URL._bridgeToObjectiveC()(v30);
        v32 = v31;
        aBlock[0] = 0;
        v33 = [v25 removeItemAtURL:v31 error:aBlock];

        if (!v33)
        {
          v48 = aBlock[0];
          v49 = _convertNSErrorToError(_:)();

          swift_willThrow();
          aBlock[0] = v49;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          sub_1000060C8(0, &qword_100939E60, NSError_ptr);
          swift_dynamicCast();
          v50 = v75;
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_100006654(v51, qword_100939C00);
          v52 = v23;
          v53 = v50;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v77 = v58;
            *v56 = 136315394;
            v74 = v53;
            sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr);
            v59 = Error.rem_errorDescription.getter();
            v61 = sub_10000668C(v59, v60, &v77);

            *(v56 + 4) = v61;
            *(v56 + 12) = 2112;
            *(v56 + 14) = v52;
            *v57 = v52;
            v62 = v52;
            _os_log_impl(&_mh_execute_header, v54, v55, "RDXPCDebugPerformer: Failed to delete isolated container {error: %s, token: %@}", v56, 0x16u);
            sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

            sub_10000607C(v58);

            p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
          }

          v63 = v53;
          v73(v53);

LABEL_16:
          if (p_class_meths[349] == -1)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

        v34 = qword_100935AE8;
        v35 = aBlock[0];
        if (v34 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100006654(v36, qword_100939C00);
        v37 = v69;
        v68(v69, v71, v70);
        v38 = v23;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          aBlock[0] = v71;
          *v41 = 138412546;
          *(v41 + 4) = v38;
          *v42 = v38;
          *(v41 + 12) = 2080;
          v43 = v38;
          v44 = URL.absoluteString.getter();
          v46 = v45;
          (*(v9 + 8))(v37, v70);
          v47 = sub_10000668C(v44, v46, aBlock);

          *(v41 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "RDXPCDebugPerformer: Destroyed isolated container {token: %@, url: %s}", v41, 0x16u);
          sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

          sub_10000607C(v71);

          p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
        }

        else
        {

          (*(v9 + 8))(v37, v70);
        }
      }
    }

    v73(0);

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_17:
  v64 = type metadata accessor for Logger();
  sub_100006654(v64, qword_100939C00);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "os_transaction RELEASE {name: com.apple.remindd.RDXPCDebugPerformer.destroyIsolatedStoreContainer}", v67, 2u);
  }
}

void sub_100169744(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = v14;
    *v18 = 138412546;
    *(v18 + 4) = v13;
    *v19 = v13;
    *(v18 + 12) = 2112;
    v20 = v11;
    v21 = a3;
    v22 = v8;
    v23 = *&v43[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL];
    *(v18 + 14) = v23;
    v19[1] = v23;
    v24 = v13;
    v25 = v23;
    v8 = v22;
    a3 = v21;
    v11 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Request to destroy isolated container {token: %@, storeControllers: %@}", v18, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v14 = v43;

    v7 = v44;
  }

  v26 = *&v14[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL];
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = [v26 objectForKey:v28];

  if (v30)
  {

    (*(v8 + 16))(v11, a3, v7);
    v31 = v13;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v7;
      v36 = v35;
      v37 = swift_slowAlloc();
      v46 = v37;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v36 = v31;
      *(v34 + 12) = 2080;
      v38 = v31;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v8 + 8))(v11, v44);
      v42 = sub_10000668C(v39, v41, &v46);

      *(v34 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "RDXPCDebugPerformer: Destroying an isolated container that still has live references to it, skipping {token: %@, url: %s}", v34, 0x16u);
      sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

      sub_10000607C(v37);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    *v45 = 0;
  }
}

void sub_100169C0C(void (*a1)(void *, void))
{
  v2 = [objc_opt_self() sharedManager];
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v4 = [v2 stateString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = 4013373;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);

  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = [objc_opt_self() sharedManager];
  v10 = v9;
  if (v9 && (v11 = [v9 stateString]) != 0)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_100791300;
  if (v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v15)
  {
    v18 = v15;
  }

  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  sub_100271EA8(v16);
  v19 = sub_10003450C(inited);

  a1(v19, 0);
}

void sub_100169E64(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_100169F00(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for DebugPerformerMockDABabysittableAccount();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7reminddP33_A793612D66A4A6A32EDDE79136FC5A3839DebugPerformerMockDABabysittableAccount_accountID];
  *v8 = a1;
  v8[1] = a2;
  v20.receiver = v7;
  v20.super_class = v6;

  v9 = objc_msgSendSuper2(&v20, "init");
  v10 = [objc_opt_self() sharedBabysitter];
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = String._bridgeToObjectiveC()();
    [v11 registerAccount:v12 forOperationWithName:v13];
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939C00);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000668C(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Called registerBabysitter {waiterID: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  a3(0);
}

uint64_t sub_10016A210(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = [objc_opt_self() sharedBabysitter];
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    [v7 giveAccountWithIDAnotherChance:v8];
  }

  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100939C00);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10000668C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: Called resetBabysitter {waiterID: %s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  return a3(0);
}

void sub_10016A548(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    return;
  }

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 < 2)
    {
      if (v16)
      {
        goto LABEL_5;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_27:

    v39 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v39 internalErrorWithDebugDescription:v37];
    goto LABEL_28;
  }

  v34 = v15;
  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    goto LABEL_27;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v34;
  if (!v35)
  {
    goto LABEL_25;
  }

LABEL_5:
  v42 = 0;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

LABEL_26:
    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v36 internalErrorWithDebugDescription:v37];
LABEL_28:
    v38;

    swift_willThrow();
    return;
  }

  v20 = v19;
  if (![v19 markedForDeletion])
  {
    goto LABEL_18;
  }

  v21 = [v20 account];
  if (!v21)
  {
    goto LABEL_18;
  }

  v41 = v18;
  v22 = v21;
  v23 = [v21 identifier];

  if (v23)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
  }

  sub_100031B58(v11, v14, &unk_100939D90, "8\n\r");
  v24 = (*(v4 + 48))(v14, 1, v3);
  v18 = v41;
  if (v24)
  {
    sub_1000050A4(v14, &unk_100939D90, "8\n\r");
LABEL_18:
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 internalErrorWithDebugDescription:v26];
LABEL_19:
    v27;

    swift_willThrow();
    return;
  }

  (*(v4 + 16))(v7, v14, v3);
  sub_1000050A4(v14, &unk_100939D90, "8\n\r");
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v4 + 8))(v7, v3);
  v31 = [v20 newlyCreatedRecord];
  if (!v31)
  {

    v33 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    v27 = [v33 internalErrorWithDebugDescription:v26];
    goto LABEL_19;
  }

  v32 = v31;

  *a1 = v28;
  a1[1] = v30;
  a1[2] = v32;
}

uint64_t sub_10016AAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  if (!a2)
  {
    return a3(0);
  }

  v4 = objc_opt_self();
  swift_errorRetain();
  _StringGuts.grow(_:)(31);

  swift_getErrorValue();
  v5._countAndFlagsBits = Error.rem_errorDescription.getter();
  String.append(_:)(v5);

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 internalErrorWithDebugDescription:v6];

  a3(v7);
}

void sub_10016AC08(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10016AEE8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10016AFA8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v10 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(v12, a2, v13);
  swift_storeEnumTagMultiPayload();
  v14 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
    sub_100188054(v12, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

    v16 = v4;
    goto LABEL_15;
  }

  v17 = v15;
  sub_100188054(v12, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

  v25 = a4;
  v26 = a3;
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_5:
      if (v18 < 1)
      {
        __break(1u);
      }

      v19 = 0;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        [v20 markForDeletion];
        [v21 updateChangeCount];
      }

      while (v18 != v19);
    }
  }

  v27 = 0;
  if ([a1 save:&v27])
  {
    v22 = v27;
    return (v26)(0);
  }

  v24 = v27;
  v16 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a3 = v26;
LABEL_15:
  swift_errorRetain();
  a3(v16);
}

uint64_t sub_10016B578(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10016B818(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v42 = a3;
  v10 = type metadata accessor for Date();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 16))(v17, a2, v18);
  swift_storeEnumTagMultiPayload();
  v19 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    sub_100188054(v17, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

    v21 = v5;
    goto LABEL_15;
  }

  v36[1] = 0;
  v41 = v20;
  sub_100188054(v17, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);

  v22 = v41;
  v38 = a5;
  v39 = a4;
  v37 = a1;
  if (v41 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v41;
    v23 = v32;
    v24 = v40;
    if (v32)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v40;
    if (v23)
    {
LABEL_5:
      if (v23 < 1)
      {
        __break(1u);
      }

      v25 = 0;
      v26 = v22 & 0xC000000000000001;
      v27 = (v24 + 16);
      v28 = (v24 + 8);
      do
      {
        if (v26)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v22 + 8 * v25 + 32);
        }

        v30 = v29;
        ++v25;
        (*v27)(v13, v42, v10);
        Date.timeIntervalSinceReferenceDate.getter();
        [v30 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v31)];
        (*v28)(v13, v10);
        [v30 updateChangeCount];

        v22 = v41;
      }

      while (v23 != v25);
    }
  }

  v43 = 0;
  if ([v37 save:&v43])
  {
    v33 = v43;
    return (v39)(0);
  }

  v35 = v43;
  v21 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a4 = v39;
LABEL_15:
  swift_errorRetain();
  a4(v21);
}

void sub_10016BD98()
{
  v1 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater;
  if (!*(v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater))
  {
    v2 = v0;
    v3 = v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v3 + 8);
      v7 = *(v2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken);
      type metadata accessor for DebugPerformerManualHashtagLabelUpdaterDelegate();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v9 = v7;
      v10 = static OS_dispatch_queue.main.getter();
      v11 = *(v2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);

      v12 = sub_10020BECC(v10, v11, v5, v6, v8, &off_1008E6ED0);

      if ([objc_opt_self() isMainThread])
      {
        sub_1001F754C();

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = static OS_dispatch_queue.main.getter();
        v17 = swift_allocObject();
        *(v17 + 16) = sub_100189318;
        *(v17 + 24) = v12;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_10000F188;
        *(v18 + 24) = v17;
        aBlock[4] = sub_1000FDA90;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F160;
        aBlock[3] = &unk_1008E7268;
        v19 = _Block_copy(aBlock);

        dispatch_sync(v16, v19);

        swift_unknownObjectRelease();
        _Block_release(v19);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          return;
        }
      }

      v21 = *(v2 + v1);
      *(v2 + v1) = v12;
    }

    else
    {
      if (qword_100935AE8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_100939C00);
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "RDXPCDebugPerformer: Failed to set up manual hashtag label updater; missing xpcDaemon", v15, 2u);
      }
    }
  }
}

void sub_10016C150()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater);
  if (v1)
  {
    v2 = objc_opt_self();

    if ([v2 isMainThread])
    {
      v3 = sub_1001F96A4();
      sub_1001FA03C(v3, 0);
    }

    else
    {
      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v7 = static OS_dispatch_queue.main.getter();
      v8 = swift_allocObject();
      *(v8 + 16) = sub_100189310;
      *(v8 + 24) = v1;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100008D30;
      *(v9 + 24) = v8;
      aBlock[4] = sub_1000529DC;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008E71F0;
      v10 = _Block_copy(aBlock);

      dispatch_sync(v7, v10);

      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100939C00);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "RDXPCDebugPerformer: Failed to refresh hashtag labels; missing manualHashtagLabelUpdater", v6, 2u);
    }
  }
}

uint64_t sub_10016C434()
{
  v0 = sub_1001F96A4();
  sub_1001FA03C(v0, 0);
}

uint64_t sub_10016C4C0()
{
  v4[0] = 0xD000000000000036;
  v4[1] = 0x80000001007EDCB0;
  v4[3] = 0;
  v5[0] = 0;
  v4[2] = 0;
  *(v5 + 6) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  return sub_100014A64(v4, sub_1001892F4, &v3);
}

void sub_10016C6AC(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    v9 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100009DAC(a3, &v15);
    v11 = sub_1005564D4(v7, a3, 0, v9, ObjectType, v8);
    v12 = [objc_allocWithZone(REMStore) initWithDaemonController:v11];
    type metadata accessor for RDTemplateOperationQueue();
    sub_100586DF0(a1, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 internalErrorWithDebugDescription:v14];

    swift_willThrow();
  }
}

void sub_10016C860(double a1)
{
  *&v25 = 0xD000000000000035;
  *(&v25 + 1) = 0x80000001007EDC70;
  v27 = 0;
  v28[0] = 0;
  v26 = 0;
  *(v28 + 6) = 0;
  v3 = v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    v5 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    v7 = swift_unknownObjectRetain();
    v8 = sub_1005564D4(v7, &v25, 0, v5, ObjectType, v4);
    v9 = [objc_allocWithZone(REMStore) initWithDaemonController:v8];
    v10 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    sub_1000063E8();
    v11 = String._bridgeToObjectiveC()();

    oslog = [v10 newBackgroundContextWithAuthor:v11];

    sub_1000F5104(&unk_100939E10, &qword_1007970D0);
    sub_10016CBAC(oslog, v9, a1, &unk_1008E7138, &unk_1007970E0);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 internalErrorWithDebugDescription:v13];

    swift_willThrow();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100939C00);
    v16 = v14;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.rem_errorDescription.getter();
      v22 = sub_10000668C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v17, "RDXPCDebugPerformer: Failed to handle incomplete grocery operation queue items {error: %s}", v18, 0xCu);
      sub_10000607C(v19);

      return;
    }
  }
}

uint64_t sub_10016CBAC(void *a1, void *a2, double a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v36 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v36);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for DispatchTime();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v35 - v21;
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  v25[5] = a2;
  v26 = v37;
  v25[6] = v23;
  v25[7] = v26;
  v27 = a1;
  v28 = a2;
  v29 = v23;
  sub_1001955C4(0, 0, v22, v38, v25);

  result = static DispatchTime.now()();
  v31 = a3 * 1000.0;
  if (COERCE__INT64(fabs(a3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v31 < 9.22337204e18)
  {
    *v11 = v31;
    v32 = v36;
    (*(v8 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v36);
    + infix(_:_:)();
    (*(v8 + 8))(v11, v32);
    v33 = *(v12 + 8);
    v34 = v35;
    v33(v15, v35);
    OS_dispatch_group.wait(timeout:)();

    return (v33)(v18, v34);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10016CF50(double a1)
{
  *&v25 = 0xD000000000000040;
  *(&v25 + 1) = 0x80000001007EDC00;
  v27 = 0;
  v28[0] = 0;
  v26 = 0;
  *(v28 + 6) = 0;
  v3 = v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    v5 = type metadata accessor for RDDaemonController();
    ObjectType = swift_getObjectType();
    v7 = swift_unknownObjectRetain();
    v8 = sub_1005564D4(v7, &v25, 0, v5, ObjectType, v4);
    v9 = [objc_allocWithZone(REMStore) initWithDaemonController:v8];
    v10 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    sub_1000063E8();
    v11 = String._bridgeToObjectiveC()();

    oslog = [v10 newBackgroundContextWithAuthor:v11];

    sub_1000F5104(&unk_100936F40, &unk_100791B30);
    sub_10016CBAC(oslog, v9, a1, &unk_1008E70C0, &unk_1007970B0);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 internalErrorWithDebugDescription:v13];

    swift_willThrow();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100939C00);
    v16 = v14;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.rem_errorDescription.getter();
      v22 = sub_10000668C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v17, "RDXPCDebugPerformer: Failed to handle incomplete auto-categorization operation queue items {error: %s}", v18, 0xCu);
      sub_10000607C(v19);

      return;
    }
  }
}

uint64_t sub_10016D364(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() cancelledError];
  *(v9 + 56) = 1;
  v10 = objc_opt_self();

  v11 = [v10 sharedConfiguration];
  [v11 templatePublicLinkTTL];
  v13 = v12;

  v25 = v8;
  v26 = &off_1008E9260;
  *&v24 = v9;
  type metadata accessor for RDTemplateOperationCreateOrUpdateTemplatePublicLink();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_100054B6C(&v24, v14 + 32);
  *(v14 + 72) = 1;
  *(v14 + 80) = 1000;
  *(v14 + 88) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = a2;
  v17 = a3;

  v18 = [v10 sharedConfiguration];
  [v18 templatePublicLinkOperationTimeoutInterval];
  v20 = v19;

  sub_1005AA79C(a1, sub_10018ADF8, v15, v20);
}

uint64_t sub_10016D5DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RDPublicCloudDatabaseControllerMock();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() cancelledError];
  *(v9 + 56) = 1;
  v19 = v8;
  v20 = &off_1008E9260;
  *&v18 = v9;
  type metadata accessor for RDTemplateOperationRevokeTemplatePublicLink();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  sub_100054B6C(&v18, inited + 24);
  *(inited + 64) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = objc_opt_self();

  v13 = a2;

  v14 = [v12 sharedConfiguration];
  [v14 templatePublicLinkOperationTimeoutInterval];
  v16 = v15;

  sub_10012F9F0(a1, sub_100187DC0, v11, v16);

  swift_setDeallocating();

  sub_10000607C((inited + 24));
}

unint64_t sub_10016D790()
{
  _StringGuts.grow(_:)(35);

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  v0 = BidirectionalCollection<>.joined(separator:)();
  v2 = v1;

  v3._countAndFlagsBits = v0;
  v3._object = v2;
  String.append(_:)(v3);

  return 0xD000000000000021;
}

uint64_t sub_10016D898(char *a1, unint64_t a2, uint64_t a3, id *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v225 = a6;
  v226 = a5;
  v231 = a4;
  v237 = a3;
  v8 = sub_1000F5104(&qword_100939DC8, &qword_100796FF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v235 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v234 = &v219 - v12;
  v230 = type metadata accessor for URL();
  v242 = *(v230 - 8);
  v13 = *(v242 + 64);
  __chkstk_darwin(v230);
  v227 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v219 - v16;
  __chkstk_darwin(v18);
  v20 = &v219 - v19;
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v240 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v244 = &v219 - v25;
  __chkstk_darwin(v26);
  v247 = &v219 - v27;
  v28 = type metadata accessor for UUID();
  v252 = *(v28 - 8);
  v29 = *(v252 + 64);
  __chkstk_darwin(v28);
  v232 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v219 - v32;
  __chkstk_darwin(v33);
  v246 = &v219 - v34;
  __chkstk_darwin(v35);
  v37 = &v219 - v36;
  __chkstk_darwin(v38);
  v40 = &v219 - v39;
  if (a2 >> 62)
  {
    goto LABEL_100;
  }

  v41 = a2;
  v42 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  a2 = _swiftEmptyArrayStorage;
  v253 = v28;
  v229 = v17;
  v249 = v37;
  v239 = a1;
  v236 = v20;
  if (v42)
  {
    v255 = _swiftEmptyArrayStorage;
    sub_100253258(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v43 = 0;
    a2 = v255;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v41 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = [v44 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v255 = a2;
      v48 = *(a2 + 16);
      v47 = *(a2 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_100253258(v47 > 1, v48 + 1, 1);
        a2 = v255;
      }

      ++v43;
      *(a2 + 16) = v48 + 1;
      v49 = a2 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v48;
      v28 = v253;
      (*(v252 + 32))(v49, v40, v253);
    }

    while (v42 != v43);
  }

  v50 = v251;
  sub_1001843B4(a2);
  v17 = v247;
  if (v50)
  {
  }

  v238 = 0;
  a1 = v51;

  v53 = a1;
  v37 = *(a1 + 2);
  if (v37)
  {
    v228 = 0;
    v20 = 0;
    v220 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController;
    v40 = a1 + 32;
    v250 = (v252 + 48);
    v245 = (v252 + 32);
    v243 = (v252 + 56);
    v224 = (v242 + 8);
    v219 = (v252 + 16);
    v242 = v252 + 8;
    v54 = _swiftEmptyArrayStorage;
    v241 = v37;
    v248 = a1;
    while (1)
    {
      if (v20 >= *(v53 + 2))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        v41 = a2;
        v42 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v251 = v54;
      sub_10000A87C(v40, &v255);
      v59 = v256;
      v60 = v257;
      sub_10000F61C(&v255, v256);
      (*(v60 + 8))(v59, v60);
      v61 = *v250;
      if ((*v250)(v17, 1, v28) == 1)
      {
        sub_1000050A4(v17, &unk_100939D90, "8\n\r");
        if (qword_100935AE8 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_100939C00);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get identifier from attachment", v65, 2u);
        }

        v66 = v256;
        v67 = v257;
        sub_10000F61C(&v255, v256);
        a2 = (*(v67 + 56))(v66, v67);
        v69 = v68;
        v70 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_100365788(0, *(v70 + 2) + 1, 1, v70);
        }

        a1 = *(v70 + 2);
        v71 = *(v70 + 3);
        v72 = v70;
        if (a1 >= v71 >> 1)
        {
          v72 = sub_100365788((v71 > 1), (a1 + 1), 1, v70);
        }

        *(v72 + 2) = a1 + 1;
        v54 = v72;
        v73 = &v72[16 * a1];
        *(v73 + 4) = a2;
        *(v73 + 5) = v69;
      }

      else
      {
        v74 = v17;
        v75 = *v245;
        (*v245)(v249, v74, v28);
        v76 = v256;
        v77 = v257;
        sub_10000F61C(&v255, v256);
        v78 = (*(v77 + 48))(v76, v77);
        if (!v78)
        {
          v83 = v244;
          (*v243)(v244, 1, 1, v28);
LABEL_35:
          sub_1000050A4(v83, &unk_100939D90, "8\n\r");
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100006654(v84, qword_100939C00);
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();
          v87 = os_log_type_enabled(v85, v86);
          v17 = v247;
          if (v87)
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get account from attachment", v88, 2u);
          }

          v89 = v256;
          v90 = v257;
          sub_10000F61C(&v255, v256);
          a2 = (*(v90 + 56))(v89, v90);
          v92 = v91;
          v93 = v251;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_100365788(0, *(v93 + 2) + 1, 1, v93);
          }

          a1 = *(v93 + 2);
          v94 = *(v93 + 3);
          v95 = v93;
          if (a1 >= v94 >> 1)
          {
            v95 = sub_100365788((v94 > 1), (a1 + 1), 1, v93);
          }

          (*v242)(v249, v28);
          *(v95 + 2) = a1 + 1;
          v54 = v95;
          v96 = &v95[16 * a1];
          *(v96 + 4) = a2;
          *(v96 + 5) = v92;
          v37 = v241;
          goto LABEL_17;
        }

        v79 = v78;
        v80 = [v78 identifier];

        v81 = v240;
        if (v80)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        (*v243)(v81, v82, 1, v28);
        v83 = v244;
        sub_100031B58(v81, v244, &unk_100939D90, "8\n\r");
        if (v61(v83, 1, v28) == 1)
        {
          goto LABEL_35;
        }

        v75(v246, v83, v28);
        v97 = v256;
        v98 = v257;
        sub_10000F61C(&v255, v256);
        v99 = (*(v98 + 16))(v97, v98);
        if (!v100)
        {
          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v151 = type metadata accessor for Logger();
          sub_100006654(v151, qword_100939C00);
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            v155 = v153;
            v156 = v152;
            v157 = "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get fileName from attachment";
            goto LABEL_60;
          }

LABEL_61:

          v161 = v256;
          v162 = v257;
          sub_10000F61C(&v255, v256);
          v223 = (*(v162 + 56))(v161, v162);
          v222 = v163;
          v164 = v251;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = sub_100365788(0, *(v164 + 2) + 1, 1, v164);
          }

          a1 = *(v164 + 2);
          v165 = *(v164 + 3);
          v166 = v164;
          if (a1 >= v165 >> 1)
          {
            v166 = sub_100365788((v165 > 1), (a1 + 1), 1, v164);
          }

          a2 = v242;
          v167 = *v242;
          (*v242)(v246, v28);
          (v167)(v249, v28);
          *(v166 + 2) = a1 + 1;
          v54 = v166;
          v168 = &v166[16 * a1];
          v169 = v222;
          *(v168 + 4) = v223;
          *(v168 + 5) = v169;
          v17 = v247;
          goto LABEL_17;
        }

        v101 = v99;
        v102 = v256;
        v103 = v257;
        sub_10000F61C(&v255, v256);
        v104 = (*(v103 + 24))(v102, v103);
        if (!v105)
        {

          if (qword_100935AE8 != -1)
          {
            swift_once();
          }

          v158 = type metadata accessor for Logger();
          sub_100006654(v158, qword_100939C00);
          v152 = Logger.logObject.getter();
          v159 = static os_log_type_t.error.getter();
          v160 = os_log_type_enabled(v152, v159);
          v28 = v253;
          v37 = v241;
          if (v160)
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            v155 = v159;
            v156 = v152;
            v157 = "RDXPCDebugPerformer: revertImageAttachmentsToUnDeduped failed to get sha512Sum from attachment";
LABEL_60:
            _os_log_impl(&_mh_execute_header, v156, v155, v157, v154, 2u);
          }

          goto LABEL_61;
        }

        v106 = v104;
        v107 = v105;
        v108 = *(v237 + v220);
        v223 = v101;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v110 = UUID._bridgeToObjectiveC()().super.isa;
        v111 = String._bridgeToObjectiveC()();
        v221 = v106;
        v222 = v107;
        v112 = String._bridgeToObjectiveC()();
        v113 = [v108 URLForAttachmentFile:isa accountID:v110 fileName:v111 sha512Sum:v112];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = UUID._bridgeToObjectiveC()().super.isa;
        v115 = UUID._bridgeToObjectiveC()().super.isa;
        v116 = String._bridgeToObjectiveC()();

        v117 = [v108 URLForAttachmentFile:v114 accountID:v115 fileName:v116 sha512Sum:0];

        v118 = v229;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v119 = objc_opt_self();
        v120 = [v119 defaultManager];
        v121 = v227;
        URL.deletingLastPathComponent()();
        URL._bridgeToObjectiveC()(v122);
        v124 = v123;
        v223 = *v224;
        v223(v121, v230);
        v254 = 0;
        LOBYTE(v116) = [v120 createDirectoryAtURL:v124 withIntermediateDirectories:1 attributes:0 error:&v254];

        if ((v116 & 1) == 0)
        {
          v212 = v254;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v213 = v118;
LABEL_97:
          v215 = v230;
          v216 = v223;
          v223(v213, v230);
          v216(v236, v215);
          v217 = *v242;
          v218 = v253;
          (*v242)(v246, v253);
          (v217)(v249, v218);
          sub_10000607C(&v255);
          return sub_10003E114(v228);
        }

        v125 = v254;
        v126 = [v119 defaultManager];
        URL._bridgeToObjectiveC()(&v258);
        v128 = v127;
        URL._bridgeToObjectiveC()(v129);
        v131 = v130;
        v254 = 0;
        v132 = [v126 copyItemAtURL:v128 toURL:v130 error:&v254];

        v133 = v254;
        if (!v132)
        {
          v214 = v254;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v213 = v229;
          goto LABEL_97;
        }

        v134 = v256;
        v135 = v257;
        sub_10000C9DC(&v255, v256);
        v136 = *(v135 + 32);
        v137 = v133;
        v136(0, 0, v134, v135);
        sub_10003E114(v228);
        v138 = v231;
        v139 = *v231;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v254 = *v138;
        v141 = v254;
        *v138 = 0x8000000000000000;
        v143 = sub_100363F20(v246);
        v144 = v141[2];
        v145 = (v142 & 1) == 0;
        v146 = v144 + v145;
        if (__OFADD__(v144, v145))
        {
          goto LABEL_102;
        }

        v147 = v142;
        if (v141[3] >= v146)
        {
          v150 = v221;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100374450();
            v141 = v254;
          }
        }

        else
        {
          sub_10036C60C(v146, isUniquelyReferenced_nonNull_native);
          v141 = v254;
          v148 = sub_100363F20(v246);
          v150 = v221;
          if ((v147 & 1) != (v149 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v143 = v148;
        }

        v170 = v229;
        v37 = v241;
        v171 = v231;
        v172 = *v231;
        *v231 = v141;

        v173 = *v171;
        if ((v147 & 1) == 0)
        {
          v174 = v233;
          (*v219)(v233, v246, v253);
          sub_1002CB9B0(v143, v174, _swiftEmptySetSingleton, v173);
        }

        v55 = v173[7] + 8 * v143;
        sub_100378434(&v254, v150, v222);

        v56 = v170;
        v57 = v230;
        v58 = v223;
        v223(v56, v230);
        v58(v236, v57);
        a2 = v242;
        a1 = *v242;
        v28 = v253;
        (*v242)(v246, v253);
        (a1)(v249, v28);
        v228 = sub_1001424E8;
        v17 = v247;
        v54 = v251;
      }

LABEL_17:
      ++v20;
      sub_10000607C(&v255);
      v40 += 40;
      v53 = v248;
      if (v37 == v20)
      {
        goto LABEL_71;
      }
    }
  }

  v228 = 0;
  v54 = _swiftEmptyArrayStorage;
LABEL_71:

  v255 = 0;
  v175 = [v239 save:&v255];
  v176 = v255;
  if (v175)
  {
    if (*(v54 + 2))
    {
      sub_100187D44();
      v177 = swift_allocError();
      *v178 = v54;
      v179 = v176;
      v226(v177);
    }

    else
    {
      v181 = v255;

      v182 = *v231;
      v183 = *(*v231 + 8);
      v247 = *v231 + 64;
      v184 = 1 << v182[32];
      v185 = -1;
      if (v184 < 64)
      {
        v185 = ~(-1 << v184);
      }

      a2 = v185 & v183;
      v20 = ((v184 + 63) >> 6);
      v249 = (v252 + 16);
      v250 = v182;
      v37 = (v252 + 32);
      v251 = (v252 + 8);

      v186 = 0;
      v40 = &qword_100797000;
      v248 = v37;
      if (!a2)
      {
        goto LABEL_79;
      }

LABEL_78:
      a1 = v186;
LABEL_86:
      v189 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v190 = v189 | (a1 << 6);
      v191 = v250;
      v192 = v252;
      v193 = v233;
      (*(v252 + 16))(v233, *(v250 + 6) + *(v252 + 72) * v190, v28);
      v194 = *(v191 + 7);
      v195 = v28;
      v196 = *(v194 + 8 * v190);
      v197 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
      v198 = *(v197 + 48);
      v199 = *(v192 + 32);
      v200 = v235;
      v201 = v193;
      v37 = v248;
      v199(v235, v201, v195);
      *&v200[v198] = v196;
      (*(*(v197 - 8) + 56))(v200, 0, 1, v197);

      v188 = a1;
      v202 = v200;
      while (1)
      {
        v203 = v234;
        sub_100031B58(v202, v234, &qword_100939DC8, &qword_100796FF8);
        v204 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
        if ((*(*(v204 - 8) + 48))(v203, 1, v204) == 1)
        {

          v226(0);
          return sub_10003E114(v228);
        }

        v205 = *(v203 + *(v204 + 48));
        v17 = v232;
        v206 = v203;
        v207 = v253;
        (*v37)(v232, v206, v253);
        v208 = objc_autoreleasePoolPush();
        v209 = v238;
        sub_10016F004(v237, v17, v239, v205, &v255);
        v238 = v209;
        if (v209)
        {
          break;
        }

        objc_autoreleasePoolPop(v208);
        (*v251)(v17, v207);
        v186 = v188;
        v28 = v207;
        v40 = &qword_100797000;
        if (a2)
        {
          goto LABEL_78;
        }

LABEL_79:
        if (v20 <= (v186 + 1))
        {
          v187 = v186 + 1;
        }

        else
        {
          v187 = v20;
        }

        v188 = v187 - 1;
        while (1)
        {
          a1 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            goto LABEL_99;
          }

          if (a1 >= v20)
          {
            break;
          }

          a2 = *&v247[8 * a1];
          ++v186;
          if (a2)
          {
            goto LABEL_86;
          }
        }

        v210 = sub_1000F5104(&qword_100939DD8, &qword_100797000);
        v211 = v235;
        (*(*(v210 - 8) + 56))(v235, 1, 1, v210);
        v202 = v211;
        a2 = 0;
      }

      objc_autoreleasePoolPop(v208);

      (*v251)(v17, v207);
    }
  }

  else
  {
    v180 = v255;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10003E114(v228);
}

void sub_10016F004(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v70 = a5;
  v71 = a1;
  v64 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001847EC(a2);
  if (v5)
  {
    *v70 = v5;
  }

  else
  {
    v69 = a2;
    v70 = v8;
    v65 = v16;
    v66 = v12;
    v67 = v11;
    v68 = v7;
    v72 = v17;
    sub_1000F5104(&qword_100939DE0, qword_100797008);
    sub_10000CB48(&qword_100939DE8, &qword_100939DE0, qword_100797008);
    v18 = Sequence.compactMapToSet<A>(_:)();
    v59 = 0;

    v19 = v64;
    if (*(v18 + 16) <= v64[2] >> 3)
    {
      v72 = v64;

      sub_10019BAF4(v18);

      v22 = v72;
    }

    else
    {

      v20 = sub_10019C4D4(v18, v19);

      v22 = v20;
    }

    v23 = v13;
    v24 = 0;
    v25 = v22 + 56;
    v26 = 1 << v22[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v22 + 7);
    v63 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController;
    v29 = (v26 + 63) >> 6;
    v60 = (v23 + 8);
    v61 = (v70 + 1);
    *&v21 = 136315394;
    v58 = v21;
    v62 = v29;
    v64 = v22;
    while (v28)
    {
      v32 = v24;
LABEL_16:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = (*(v22 + 6) + ((v32 << 10) | (16 * v33)));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v71 + v63);

      v38 = v67;
      UUID.init()();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v61)(v38, v68);
      v40 = UUID._bridgeToObjectiveC()().super.isa;
      v41 = String._bridgeToObjectiveC()();
      v70 = v36;
      v42 = String._bridgeToObjectiveC()();
      v43 = [v37 URLForAttachmentFile:isa accountID:v40 fileName:v41 sha512Sum:v42];

      v44 = v65;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      v72 = 0;
      LODWORD(isa) = [v45 removeItemAtURL:v47 error:&v72];

      if (isa)
      {
        v30 = *v60;
        v31 = v72;
        v30(v44, v66);
      }

      else
      {
        v49 = v72;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*v60)(v44, v66);
        if (qword_100935AE8 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100006654(v50, qword_100939C00);

        swift_errorRetain();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v72 = v59;
          *v53 = v58;
          v54 = sub_10000668C(v70, v35, &v72);

          *(v53 + 4) = v54;
          *(v53 + 12) = 2080;
          swift_getErrorValue();
          v55 = Error.rem_errorDescription.getter();
          v57 = sub_10000668C(v55, v56, &v72);

          *(v53 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "REMXPCDebugPerformer.synchronous_revertImageAttachments could not clean up file { sha512Sum: %s, error: %s }", v53, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v59 = 0;
      }

      v24 = v32;
      v22 = v64;
      v29 = v62;
    }

    while (1)
    {
      v32 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v32 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v32];
      ++v24;
      if (v28)
      {
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_10016F69C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000F61C(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_10016F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_10016F8C8(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v21 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, v6, v9);
  v12 = [objc_opt_self() cdEntityName];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithUUID:isa entityName:v12];

  (*(v7 + 8))(v11, v6);
  v16 = sub_100012370(v15, a1);
  if (v3)
  {

    swift_errorRetain();
    v21(_swiftEmptyArrayStorage, v3);
  }

  else if (v16)
  {
    v17 = v16;
    v18 = [v16 orderedIdentifiers];

    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21(v19, 0);
  }

  else
  {
    v21(_swiftEmptyArrayStorage, 0);
  }
}

uint64_t sub_10016FB40(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v6 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_100185FD8(v8);
  if (v3)
  {
    sub_100188054(v8, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
    swift_errorRetain();
    a3(_swiftEmptyArrayStorage, v3);
  }

  else
  {
    v11 = v9;
    sub_100188054(v8, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
    v12 = sub_100186608(v11);

    a3(v12, 0);
  }
}

void sub_10016FCA8(void *a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v43 = a5;
  v44 = a4;
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [ObjCClassFromMetadata entity];
  v18 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v17 insertIntoManagedObjectContext:a1];
  v19 = a2;
  v20 = v18;
  v42 = a1;
  [a1 assignObject:v20 toPersistentStore:v19];

  v21 = [a3 accountIdentifier];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v20 setAccountIdentifier:v21];

  v22 = [a3 activityDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  [v20 setActivityDate:isa];

  v24 = [a3 activityType];
  if (v24 >= 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  [v20 setActivityTypeRawValue:v25];
  v26 = [a3 authorUserRecordIDString];
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [v20 setAuthorUserRecordIDString:v26];

  v27 = [a3 ckParentCloudObjectEntityName];
  [v20 setCkParentCloudObjectEntityName:v27];

  v28 = [a3 ckParentCloudObjectIdentifier];
  [v20 setCkParentCloudObjectIdentifier:v28];

  v29 = [a3 ckIdentifier];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v20 setCkIdentifier:v29];

  v30 = [a3 sharedEntityName];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v20 setSharedEntityName:v30];

  v31 = [a3 uuidForChangeTracking];
  if (v31)
  {
    v32 = v39;
    v33 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v32, v41);
  }

  else
  {
    v34.super.isa = 0;
  }

  [v20 setUuidForChangeTracking:v34.super.isa];

  v45 = 0;
  if ([v42 save:&v45])
  {
    v35 = v45;
    v44(0);
  }

  else
  {
    v36 = v45;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v44(v37);
  }
}

void sub_1001701E8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100170294(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100170328(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100170468(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
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

void sub_10017050C(void *a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a5;
  v42 = a4;
  v40 = a3;
  v8 = type metadata accessor for UUID();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 entityName];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v13];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100791300;
  v16 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(v15 + 56) = v8;
  v17 = sub_1000103CC((v15 + 32));
  (*(v43 + 32))(v17, v12, v8);
  v18 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [objc_opt_self() predicateWithFormat:v18 argumentArray:isa];

  [v14 setPredicate:v20];
  [v14 setFetchLimit:1];
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    v22 = v5;
LABEL_5:

    swift_errorRetain();
    v42(v22);

    return;
  }

  v23 = v21;
  if (v21 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_15:

    v40 = objc_opt_self();
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v44, "Cannot fetch ");
    HIWORD(v44[1]) = -4864;
    v28 = [a2 entityName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000018;
    v33._object = 0x80000001007ED7E0;
    String.append(_:)(v33);
    v34 = [a2 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100189458(&qword_10093F2A0, &type metadata accessor for UUID);
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    (*(v43 + 8))(v12, v8);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v40 internalErrorWithDebugDescription:v36];

    v38 = v37;
    v42(v37);

    goto LABEL_16;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  [v25 setMinimumSupportedVersion:v40];
  v44[0] = 0;
  if (![a1 save:v44])
  {
    v27 = v44[0];
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = v25;
    goto LABEL_5;
  }

  v26 = v44[0];
  v42(0);

LABEL_16:
}

void sub_100170B28(uint64_t a1, char a2, void (*a3)(void *, void))
{
  v5 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v6 = rem_currentRuntimeVersion();
    KeyPath = swift_getKeyPath();
    sub_1003EBD48(KeyPath, v6);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v18[2] >= v18[3] >> 1)
    {
      v16 = v18[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v18;
  }

  v8 = sub_10000C2B0(v5);
  v9 = sub_10075E638();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v18 = v9;
  sub_100271F9C(inited);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1007953F0;
  *(v11 + 32) = swift_getKeyPath();
  v12 = sub_100405054(v9, v11, 0, v8);

  swift_setDeallocating();
  v13 = *(v11 + 16);
  swift_arrayDestroy();
  type metadata accessor for REMCDDueDateDeltaAlert();
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v18 = _swiftEmptyDictionarySingleton;
    sub_10015F9F0(v14, &v18);

    v17 = sub_100436364(v15);
    sub_100173B68(&v17, &v18);

    a3(v17, 0);
  }
}

void sub_100170DAC(id *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v37 = a3;
  v36 = type metadata accessor for UUID();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v36).n128_u64[0];
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 account];
  v38[1] = v14;
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();
  v15 = v4;

  if (v4)
  {
    goto LABEL_2;
  }

  v33 = a4;
  v16 = v38[0];
  v17 = objc_opt_self();
  v18 = [v13 reminderIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v34 = *(v8 + 8);
  v35 = v8 + 8;
  v34(v12, v36);
  v20 = v16;
  v21 = [v17 objectIDWithUUID:isa];

  v38[0] = 0;
  v22 = [v16 remObjectIDWithError:v38];
  if (!v22)
  {
    v31 = v38[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    *v37 = v15;
    return;
  }

  v23 = v22;
  v24 = v38[0];
  v25 = v21;
  v26 = [v13 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [v13 sortOrder];
  v28 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  *a2 = 0x8000000000000000;
  sub_1002C7FC0(v27, v12, isUniquelyReferenced_nonNull_native);
  v34(v12, v36);
  v30 = *a2;
  *a2 = v38[0];

  v32 = sub_10075DC6C(v13);

  *v33 = v32;
}

uint64_t sub_100171114(void **a1, void **a2, uint64_t *a3)
{
  v74 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v69 - v10;
  __chkstk_darwin(v12);
  v71 = &v69 - v13;
  __chkstk_darwin(v14);
  v70 = &v69 - v15;
  __chkstk_darwin(v16);
  v72 = &v69 - v17;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v21 = *a1;
  v22 = *a2;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v23 = [v21 accountID];
  v24 = [v22 accountID];
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0)
  {
    v35 = [v21 accountID];
    v36 = [v35 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = UUID.uuidString.getter();
    v39 = v38;
    v40 = *(v76 + 8);
    v41 = v11;
    v42 = v75;
    v40(v41, v75);
    v43 = [v22 accountID];
    v44 = [v43 uuid];

    v45 = v73;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = UUID.uuidString.getter();
    v48 = v47;
    v40(v45, v42);
    if (v37 != v46)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (v39 == v48)
    {

      v60 = 0;
      return v60 & 1;
    }

LABEL_11:
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v60 & 1;
  }

  v26 = v75;
  v27 = [v21 reminderID];
  v28 = [v22 reminderID];
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    v49 = [v21 reminderID];
    v50 = [v49 uuid];

    v51 = v70;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = UUID.uuidString.getter();
    v39 = v53;
    v54 = *(v76 + 8);
    v54(v51, v26);
    v55 = [v22 reminderID];
    v56 = [v55 uuid];

    v57 = v71;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = UUID.uuidString.getter();
    v48 = v59;
    v54(v57, v26);
    if (v52 != v58)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v30 = [v21 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = *v74;
  if (*(*v74 + 16) && (v32 = sub_100363F20(v20), (v33 & 1) != 0))
  {
    v34 = *(*(v31 + 56) + 8 * v32);
  }

  else
  {
    v34 = 0;
  }

  v61 = *(v76 + 8);
  v61(v20, v26);
  v62 = [v22 identifier];
  v63 = v72;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = *v74;
  if (*(*v74 + 16) && (v65 = sub_100363F20(v63), (v66 & 1) != 0))
  {
    v67 = *(*(v64 + 56) + 8 * v65);
  }

  else
  {
    v67 = 0;
  }

  v61(v63, v26);
  v60 = v34 < v67;
  return v60 & 1;
}

void sub_100171670(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001716F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_1000060C8(0, a4, a5);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7.super.isa);
}

uint64_t sub_100171798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  LOBYTE(v7) = a3;
  v8 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    swift_errorRetain();
    a5(0, v5);
  }

  else
  {
    v11 = v9;

    v12 = [objc_allocWithZone(NSDateFormatter) init];
    v13 = String._bridgeToObjectiveC()();
    [v12 setDateFormat:v13];

    if (v11 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v28 = v12;
      v23 = a5;
      if (!i)
      {
        break;
      }

      v26 = v7;
      v15 = 0;
      v27 = v11 & 0xC000000000000001;
      v24 = v11 & 0xFFFFFFFFFFFFFF8;
      v16 = _swiftEmptyArrayStorage;
      v25 = v11;
      while (1)
      {
        if (v27)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v24 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v11 + 8 * v15 + 32);
        }

        v18 = v17;
        v7 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v12 = i;
        if (v26)
        {
          v19 = sub_1001880D0(v17, v28);
        }

        else
        {
          v19 = sub_100188C4C(v17, v28);
        }

        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100366374(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        a5 = (v22 + 1);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_100366374((v21 > 1), v22 + 1, 1, v16);
        }

        v16[2] = a5;
        v16[v22 + 4] = v20;
        ++v15;
        i = v12;
        v11 = v25;
        if (v7 == v12)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_22:

    v23(v16, 0);
  }
}

uint64_t sub_100171A7C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v28 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10017324C();
  type metadata accessor for REMCDManualSortHint();
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    v14 = v4;
    v15 = v28;
    goto LABEL_17;
  }

  v16 = v13;
  v26 = a1;
  v27 = a4;

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v28;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v28;
    if (v17)
    {
LABEL_5:
      v25 = 0;
      if (v17 < 1)
      {
        __break(1u);
      }

      v18 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        [v19 setETag:{0, v25}];
        [v20 setHintData:0];
        [v20 setConcatenatedContainerIDsWithLocalContainerIDPrefix:0];
        [v20 setConcatenatedElementIDsWithLocalElementIDPrefix:0];
        static Date.referenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        [v20 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v21)];
        (*(v8 + 8))(v11, v7);
        [v20 setSerializationVersion:0];
        [v20 updateChangeCount];
      }

      while (v17 != v18);

      v15 = v28;
      goto LABEL_14;
    }
  }

LABEL_14:
  v29 = 0;
  if ([v26 save:&v29])
  {
    v22 = v29;
    return v15(0);
  }

  v24 = v29;
  v14 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_17:
  swift_errorRetain();
  v15(v14);
}

uint64_t sub_100171DA8(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v13 = *a1;
  *&v42[0] = a2;
  *(&v42[0] + 1) = a3;

  v14 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  result = swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v40, v42);
    *&v38 = 0x746E756F63;
    *(&v38 + 1) = 0xE500000000000000;
    v16 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast())
      {
        v35 = v43;
        *&v40 = a4;
        *(&v40 + 1) = a5;

        v17 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v17)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100005EE0(&v38, &v40);
        }

        else
        {
          *(&v41 + 1) = &type metadata for String;
          *&v40 = 7104846;
          *(&v40 + 1) = 0xE300000000000000;
        }

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v19._countAndFlagsBits = 0x5B746E756F636361;
        v19._object = 0xE800000000000000;
        String.append(_:)(v19);
        v20._countAndFlagsBits = a6;
        v20._object = a7;
        String.append(_:)(v20);
        v21._countAndFlagsBits = 0x5B7473696C2E5DLL;
        v21._object = 0xE700000000000000;
        String.append(_:)(v21);
        _print_unlocked<A, B>(_:_:)();
        v22._countAndFlagsBits = 0x646E696D65722E5DLL;
        v22._object = 0xEC0000002E737265;
        String.append(_:)(v22);
        v23 = v38;
        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        v24._countAndFlagsBits = a2;
        v24._object = a3;
        String.append(_:)(v24);
        v25._countAndFlagsBits = 40;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        _print_unlocked<A, B>(_:_:)();
        v26._countAndFlagsBits = 0x746E756F632E29;
        v26._object = 0xE700000000000000;
        String.append(_:)(v26);
        v28 = *(&v38 + 1);
        v27._countAndFlagsBits = v38;
        v38 = v23;
        v27._object = v28;
        String.append(_:)(v27);

        v29 = v38;
        *&v38 = v35;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v33 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = *a8;
        *a8 = 0x8000000000000000;
        sub_1002C72CC(v30, v32, v29, *(&v29 + 1), isUniquelyReferenced_nonNull_native);

        *a8 = v38;
        sub_10000607C(v42);
        v18 = &v40;
      }

      else
      {
        v18 = v42;
      }

      return sub_10000607C(v18);
    }

    else
    {
      sub_10000607C(v42);
      return sub_1000050A4(&v40, &qword_100939ED0, &qword_100791B10);
    }
  }

  return result;
}

void sub_100172190(void **a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v51 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v51 - v18;
  v20 = *a1;
  v21 = [v20 accountIdentifier];
  if (!v21)
  {
    v34 = 0;
    goto LABEL_32;
  }

  v22 = v21;
  v23 = [v20 activityDate];
  if (!v23)
  {

    v34 = 0;
    goto LABEL_32;
  }

  v62 = v2;
  v24 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v19, v15, v8);
  v25 = [v20 authorUserRecordIDString];
  if (!v25)
  {
    (*(v9 + 8))(v19, v8);

    v34 = 0;
    goto LABEL_32;
  }

  v26 = v25;
  v27 = [v20 ckIdentifier];
  if (!v27)
  {
    (*(v9 + 8))(v19, v8);

    v34 = 0;
    goto LABEL_32;
  }

  v61 = v27;
  v28 = [v20 sharedEntityName];
  if (!v28)
  {
    (*(v9 + 8))(v19, v8);

    v34 = 0;
    goto LABEL_32;
  }

  v59 = v28;
  (*(v9 + 16))(v12, v19, v8);
  v29 = [v20 activityTypeRawValue];
  if (v29 - 1 < 3)
  {
    v30 = (v29 - 1) + 1;
  }

  else
  {
    v30 = 0;
  }

  v58 = v30;
  v31 = [v20 ckParentCloudObjectEntityName];
  if (v31)
  {
    v32 = v31;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v33;
  }

  else
  {
    v54 = 0;
    v57 = 0;
  }

  v35 = [v20 ckParentCloudObjectIdentifier];
  if (v35)
  {
    v36 = v35;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v37;
  }

  else
  {
    v51 = 0;
    v56 = 0;
  }

  v38 = [v20 uuidForChangeTracking];
  v60 = v26;
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = type metadata accessor for UUID();
  v52 = *(v41 - 8);
  (*(v52 + 56))(v7, v40, 1, v41);
  isa = Date._bridgeToObjectiveC()().super.isa;
  if (!v57)
  {
    v54 = 0;
    if (v56)
    {
      goto LABEL_25;
    }

LABEL_27:
    v57 = 0;
    goto LABEL_28;
  }

  v54 = String._bridgeToObjectiveC()();

  if (!v56)
  {
    goto LABEL_27;
  }

LABEL_25:
  v57 = String._bridgeToObjectiveC()();

LABEL_28:
  v42 = v52;
  v43 = (*(v52 + 48))(v7, 1, v41);
  v53 = v12;
  if (v43 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v42 + 8))(v7, v41);
  }

  v56 = v44;
  v45 = objc_allocWithZone(REMSharedEntitySyncActivity);
  v46 = v59;
  v47 = v54;
  v48 = isa;
  v49 = v57;
  v34 = [v45 initWithAccountIdentifier:v22 activityDate:isa activityType:v58 authorUserRecordIDString:v60 ckParentCloudObjectEntityName:v54 ckParentCloudObjectIdentifier:v57 ckIdentifier:v61 sharedEntityName:v59 uuidForChangeTracking:v44];

  v50 = *(v9 + 8);
  v50(v53, v8);
  v50(v19, v8);
LABEL_32:
  *v63 = v34;
}

void sub_100172730(void *a1, void *a2, char a3, char a4, char a5)
{
  v10 = a2;
  v11 = sub_100577A10(v10);
  if (v5)
  {
    goto LABEL_2;
  }

  v12 = v11;
  if (!v11)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
    swift_willThrow();
    goto LABEL_2;
  }

  v13 = 0xD000000000000017;
  if (a3)
  {
    [v11 debug_fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:0];
    [v12 debug_lowLevelUnmarkForDeletion];
    v13 = 0xD000000000000019;
    v14 = "eletionWithObjectID";
    if ((a5 & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = &selRef_debug_markObjectDirtyAfterUnmarkedForDeletion;
    goto LABEL_12;
  }

  if (a4)
  {
    [v11 debug_lowLevelRemoveFromParent];
  }

  [v12 debug_fixValuesOfKeysWithUniqueConstraintBeforeSettingMarkedForDeletion:1];
  [v12 debug_lowLevelMarkForDeletion];
  v14 = "lowLevelUnmarkForDeletion";
  if (a5)
  {
    v15 = &selRef_debug_markObjectDirtyAfterMarkedForDeletion;
LABEL_12:
    [v12 *v15];
  }

LABEL_13:
  if ([a1 hasChanges])
  {
    v34 = 0;
    if ([a1 save:&v34])
    {
      v16 = qword_100935AE8;
      v17 = v34;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_100939C00);

      v19 = v12;
      v12 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v21 = 136446722;
        v22 = sub_10000668C(v13, v14 | 0x8000000000000000, &v34);

        *(v21 + 4) = v22;
        *(v21 + 12) = 2082;
        v23 = Bool.yesno.getter();
        v25 = sub_10000668C(v23, v24, &v34);

        *(v21 + 14) = v25;
        *(v21 + 22) = 2082;
        v26 = [v19 remObjectID];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 description];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xE300000000000000;
          v29 = 7104878;
        }

        v33 = sub_10000668C(v29, v31, &v34);

        *(v21 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v12, v20, "RDXPCDebugPerformer: %{public}s: Saved updating .markedForDeletion flag {shouldSetDirtyFlags: %{public}s, objectID: %{public}s}", v21, 0x20u);
        swift_arrayDestroy();

        goto LABEL_2;
      }
    }

    else
    {
      v32 = v34;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_2:
    return;
  }
}

unint64_t sub_100172B3C(uint64_t a1)
{
  v2 = 0xD000000000000021;
  v3 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100187FEC(v6, v5, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v2 = 0xD000000000000037;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = 0xD000000000000030;
LABEL_5:
    sub_100188054(v5, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  }

  return v2;
}

void sub_100172C44(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100939D90, "8\n\r");
  v12 = *a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_100172D80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100172DE8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setCkIdentifier:?];
}

uint64_t sub_100172E58(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_100185FD8(a3);
  v8 = v4;
  if (!v4)
  {
    v9 = v7;
    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [a1 deleteObject:v12];

        ++v11;
        if (v14 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v18 = 0;
    if ([a1 save:&v18])
    {
      v15 = v18;
      return a4(0);
    }

    v17 = v18;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_errorRetain();
  a4(v8);
}

uint64_t sub_100173030@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

id sub_1001730DC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for RDDaemonController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  v12 = *(a3 + 30);
  v13 = a3[1];
  *v11 = *a3;
  *(v11 + 1) = v13;
  *(v11 + 30) = v12;
  *&v9[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = v7;
  swift_unknownObjectRetain();
  sub_100009DAC(a3, v17);
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = v7;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10017324C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v17 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100187FEC(v1, v19, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v19, v2);
      Date.timeIntervalSinceReferenceDate.getter();
      v30 = Int32.init(timeIntervalSinceReferenceDate:)(v29);
      sub_1000F5104(&unk_100939E20, qword_100795830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      KeyPath = swift_getKeyPath();
      v33 = sub_1003EF474(KeyPath, v30);

      *(inited + 32) = v33;
      v34 = swift_getKeyPath();
      v35 = sub_1003EF44C(v34);

      *(inited + 40) = v35;
      v36 = sub_10000C2B0(inited);
      type metadata accessor for REMCDManualSortHint();
      v27 = [objc_allocWithZone(NSFetchRequest) init];
      v37 = [swift_getObjCClassFromMetadata() entity];
      [v27 setEntity:v37];

      [v27 setAffectedStores:0];
      [v27 setPredicate:v36];

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v49 = swift_getKeyPath();
      v50 = sub_1003EF44C(v49);

      type metadata accessor for REMCDManualSortHint();
      v27 = [objc_allocWithZone(NSFetchRequest) init];
      v51 = [swift_getObjCClassFromMetadata() entity];
      [v27 setEntity:v51];

      [v27 setAffectedStores:0];
      [v27 setPredicate:v50];
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = *(v19 + 1);
    v38 = *(v19 + 2);
    v40 = *v19;
    sub_1000F5104(&unk_100939E20, qword_100795830);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_100791340;
    v42 = swift_getKeyPath();

    v43 = sub_10003A018(v42, v40);

    *(v41 + 32) = v43;
    v44 = swift_getKeyPath();
    v45 = sub_10003A02C(v44, v39, v38);

    *(v41 + 40) = v45;
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_100791300;
    *(v46 + 32) = sub_10001035C(0);
    v54 = v46;
    sub_10003A170(v41);
    v47 = sub_10000C2B0(v54);

    type metadata accessor for REMCDManualSortHint();
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v48 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v48];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v47];
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    sub_1000F5104(&unk_100939E20, qword_100795830);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_100791340;
    v22 = swift_getKeyPath();
    (*(v12 + 16))(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v23 = sub_10003A040(v22, v10);

    *(v21 + 32) = v23;
    v24 = swift_getKeyPath();
    v25 = sub_1003EF44C(v24);

    *(v21 + 40) = v25;
    v26 = sub_10000C2B0(v21);
    type metadata accessor for REMCDManualSortHint();
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v26];

    (*(v12 + 8))(v15, v11);
  }

  return v27;
}

uint64_t sub_100173984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1001739E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setSha512Sum:v4];
}

uint64_t sub_100173A58@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100173B68(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_10017725C(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100173BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v10 = swift_task_alloc();
  v7[9] = v10;
  *v10 = v7;
  v10[1] = sub_100173C98;

  return sub_100175A40(a4, a5);
}

uint64_t sub_100173C98()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10018AD7C;
  }

  else
  {
    v3 = sub_10018AE00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100173DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v10 = swift_task_alloc();
  v7[9] = v10;
  *v10 = v7;
  v10[1] = sub_100173E58;

  return sub_1001741E4(a4, a5);
}

uint64_t sub_100173E58()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100173FCC;
  }

  else
  {
    v3 = sub_100173F6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100173F6C()
{
  dispatch_group_leave(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173FCC()
{
  v21 = v0;
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    *(v0 + 40) = v7;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = Error.rem_errorDescription.getter();
    v17 = sub_10000668C(v15, v16, &v20);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to handle incomplete operation queue items during unit test {error: %{public}s}", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 56));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001741E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  *(v3 + 240) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 264) = v4;
  v5 = *(v4 - 8);
  *(v3 + 272) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v7 = sub_1000F5104(&qword_100939E00, &qword_1007970C0);
  *(v3 + 296) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v9 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  *(v3 + 312) = v9;
  v10 = *(v9 - 8);
  *(v3 + 320) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 480) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v3 + 484) = 0;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_10017439C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v5;
  v7 = *(v4 + 104);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2, v1, v3);
  v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  *v10 = v0;
  v10[1] = sub_1001744C4;
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v13, sub_100187F64, v6, v12);
}

uint64_t sub_1001744C4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  v2[51] = v0;

  v5 = v2[47];
  v6 = v2[36];
  v7 = v2[34];
  v8 = v2[33];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_100174D58;
  }

  else
  {
    v2[52] = v10;
    v2[53] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_100174670;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100174670()
{
  v69 = v0;
  v1 = *(v0 + 304);
  v2 = (*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312));
  v3 = *(v0 + 368);
  if (v2 == 1)
  {
    v5 = *(v0 + 352);
    v4 = *(v0 + 360);
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 328);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    sub_1000050A4(v1, &qword_100939E00, &qword_1007970C0);

    v11 = *(v0 + 8);
    v12 = *(v0 + 484);

    return v11(v12);
  }

  else
  {
    sub_100187F88(v1, *(v0 + 368));
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 360);
    v14 = *(v0 + 368);
    v16 = type metadata accessor for Logger();
    *(v0 + 432) = sub_100006654(v16, qword_10094FA90);
    sub_100187FEC(v14, v15, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 360);
    if (v19)
    {
      v21 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v22 = 136446466;
      *(v0 + 216) = v21;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_10000668C(v23, v24, &v68);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v27 = sub_1001AE574(v26);
      v29 = v28;
      sub_100188054(v20, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v30 = sub_10000668C(v27, v29, &v68);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Handling incomplete operation queue item with top priority. {operationQueueItem: %{public}s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100188054(v20, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    }

    sub_10018EB68(*(v0 + 368), *(v0 + 248), v0 + 16);
    sub_100010364(v0 + 16, v0 + 96, &qword_100939E08, &qword_1007970C8);
    if (*(v0 + 120))
    {
      sub_100054B6C((v0 + 96), v0 + 56);
      v31 = *(v0 + 80);
      v32 = *(v0 + 88);
      sub_10000F61C((v0 + 56), v31);
      v33 = *(v32 + 16);
      v67 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 440) = v35;
      *v35 = v0;
      v35[1] = sub_100174E28;
      v36 = *(v0 + 240);

      return v67(v36, v31, v32);
    }

    else
    {
      v37 = *(v0 + 368);
      v38 = *(v0 + 352);
      sub_1000050A4(v0 + 96, &qword_100939E08, &qword_1007970C8);
      sub_100187FEC(v37, v38, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 352);
      if (v41)
      {
        v43 = *(v0 + 256);
        v44 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v44 = 136446466;
        *(v0 + 184) = v43;
        swift_getMetatypeMetadata();
        v45 = String.init<A>(describing:)();
        v47 = sub_10000668C(v45, v46, &v68);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2082;
        v49 = sub_1001AE574(v48);
        v51 = v50;
        sub_100188054(v42, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
        v52 = sub_10000668C(v49, v51, &v68);

        *(v44 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s: Failed to create operation for operation queue item. {operationQueueItem: %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100188054(v42, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      }

      v54 = *(v0 + 384);
      v53 = *(v0 + 392);
      v55 = *(v0 + 480);
      v56 = *(v0 + 280);
      v57 = *(v0 + 264);
      v58 = *(v0 + 240);
      v59 = **(v0 + 368);
      v60 = swift_allocObject();
      *(v0 + 456) = v60;
      *(v60 + 16) = v58;
      *(v60 + 24) = v59;
      v54(v56, v55, v57);
      v61 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
      v62 = v58;
      v63 = v59;
      v64 = swift_task_alloc();
      *(v0 + 464) = v64;
      *v64 = v0;
      v64[1] = sub_1001753A8;
      v65 = *(v0 + 280);
      v66 = *(v0 + 240);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v64, v65, sub_1001880B4, v60, &type metadata for () + 8);
    }
  }
}

uint64_t sub_100174D58()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[38];
  v9 = v0[35];
  v8 = v0[36];

  v10 = v0[1];
  v11 = v0[51];

  return v10(0);
}

uint64_t sub_100174E28()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_100175070;
  }

  else
  {
    v3 = sub_100174F3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100174F3C()
{
  sub_10000607C((v0 + 56));
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 480);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = **(v0 + 368);
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v2(v4, v3, v5);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v10 = v6;
  v11 = v7;
  v12 = swift_task_alloc();
  *(v0 + 464) = v12;
  *v12 = v0;
  v12[1] = sub_1001753A8;
  v13 = *(v0 + 280);
  v14 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_1001880B4, v8, &type metadata for () + 8);
}

uint64_t sub_100175070()
{
  v42 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 344), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v40 = *(v0 + 448);
    v5 = *(v0 + 344);
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 192) = v6;
    v41 = v8;
    *v7 = 136446722;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, &v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v13 = sub_1001AE574(v12);
    v15 = v14;
    sub_100188054(v5, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v16 = sub_10000668C(v13, v15, &v41);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, &v41);

    *(v7 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to complete operation queue item. {operationQueueItem: %{public}s, error: %{public}s}", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 448);
    v24 = *(v0 + 344);

    sub_100188054(v24, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_10000607C((v0 + 56));
  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v27 = *(v0 + 480);
  v28 = *(v0 + 280);
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = **(v0 + 368);
  v32 = swift_allocObject();
  *(v0 + 456) = v32;
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v26(v28, v27, v29);
  v33 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v34 = v30;
  v35 = v31;
  v36 = swift_task_alloc();
  *(v0 + 464) = v36;
  *v36 = v0;
  v36[1] = sub_1001753A8;
  v37 = *(v0 + 280);
  v38 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v36, v37, sub_1001880B4, v32, &type metadata for () + 8);
}

uint64_t sub_1001753A8()
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 424);
  v5 = *(*v1 + 416);
  v6 = *(*v1 + 280);
  v7 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 472) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_100175784;
  }

  else
  {
    v8 = sub_100175544;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100175544()
{
  v18 = v0;
  v1 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 336), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 336);
    v5 = *(v0 + 256);
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136446466;
    *(v0 + 208) = v5;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v11 = sub_1001AE574(v10);
    v13 = v12;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v14 = sub_10000668C(v11, v13, &v17);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Completed operation queue item with top priority. {operationQueueItem: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 336);

    sub_100188054(v15, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v0 + 16, &qword_100939E08, &qword_1007970C8);
  sub_100188054(*(v0 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v0 + 484) = 1;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_100175784()
{
  v29 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 328), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 472);
    v5 = *(v0 + 328);
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 200) = v6;
    v28 = v8;
    *v7 = 136446722;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, &v28);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v13 = sub_1001AE574(v12);
    v15 = v14;
    sub_100188054(v5, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v16 = sub_10000668C(v13, v15, &v28);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, &v28);

    *(v7 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to mark operation queue item as completed. {operationQueueItem: %{public}s, error: %{public}s}", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 472);
    v24 = *(v0 + 328);

    sub_100188054(v24, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v0 + 16, &qword_100939E08, &qword_1007970C8);
  v25 = *(v0 + 484);
  sub_100188054(*(v0 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v0 + 484) = v25;

  return _swift_task_switch(sub_10017439C, 0, 0);
}

uint64_t sub_100175A40(uint64_t a1, uint64_t a2)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  *(v3 + 240) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 264) = v4;
  v5 = *(v4 - 8);
  *(v3 + 272) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v7 = sub_1000F5104(&qword_100939E00, &qword_1007970C0);
  *(v3 + 296) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v9 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  *(v3 + 312) = v9;
  v10 = *(v9 - 8);
  *(v3 + 320) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 480) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v3 + 484) = 0;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

uint64_t sub_100175BF8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v5;
  v7 = *(v4 + 104);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2, v1, v3);
  v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 400) = v10;
  *v10 = v0;
  v10[1] = sub_100175D20;
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v13, sub_1001892D0, v6, v12);
}

uint64_t sub_100175D20()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  v2[51] = v0;

  v5 = v2[47];
  v6 = v2[36];
  v7 = v2[34];
  v8 = v2[33];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_10018AD80;
  }

  else
  {
    v2[52] = v10;
    v2[53] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_100175ECC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100175ECC()
{
  v69 = v0;
  v1 = *(v0 + 304);
  v2 = (*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312));
  v3 = *(v0 + 368);
  if (v2 == 1)
  {
    v5 = *(v0 + 352);
    v4 = *(v0 + 360);
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 328);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    sub_1000050A4(v1, &qword_100939E00, &qword_1007970C0);

    v11 = *(v0 + 8);
    v12 = *(v0 + 484);

    return v11(v12);
  }

  else
  {
    sub_100187F88(v1, *(v0 + 368));
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 360);
    v14 = *(v0 + 368);
    v16 = type metadata accessor for Logger();
    *(v0 + 432) = sub_100006654(v16, qword_10094FA90);
    sub_100187FEC(v14, v15, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 360);
    if (v19)
    {
      v21 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v22 = 136446466;
      *(v0 + 216) = v21;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_10000668C(v23, v24, &v68);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v27 = sub_1001AE574(v26);
      v29 = v28;
      sub_100188054(v20, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v30 = sub_10000668C(v27, v29, &v68);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Handling incomplete operation queue item with top priority. {operationQueueItem: %{public}s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100188054(v20, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    }

    sub_100741FC0(*(v0 + 368), *(v0 + 248), (v0 + 16));
    sub_100010364(v0 + 16, v0 + 96, &qword_100939E08, &qword_1007970C8);
    if (*(v0 + 120))
    {
      sub_100054B6C((v0 + 96), v0 + 56);
      v31 = *(v0 + 80);
      v32 = *(v0 + 88);
      sub_10000F61C((v0 + 56), v31);
      v33 = *(v32 + 16);
      v67 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 440) = v35;
      *v35 = v0;
      v35[1] = sub_1001765B4;
      v36 = *(v0 + 240);

      return v67(v36, v31, v32);
    }

    else
    {
      v37 = *(v0 + 368);
      v38 = *(v0 + 352);
      sub_1000050A4(v0 + 96, &qword_100939E08, &qword_1007970C8);
      sub_100187FEC(v37, v38, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 352);
      if (v41)
      {
        v43 = *(v0 + 256);
        v44 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v44 = 136446466;
        *(v0 + 184) = v43;
        swift_getMetatypeMetadata();
        v45 = String.init<A>(describing:)();
        v47 = sub_10000668C(v45, v46, &v68);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2082;
        v49 = sub_1001AE574(v48);
        v51 = v50;
        sub_100188054(v42, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
        v52 = sub_10000668C(v49, v51, &v68);

        *(v44 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s: Failed to create operation for operation queue item. {operationQueueItem: %{public}s}", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100188054(v42, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
      }

      v54 = *(v0 + 384);
      v53 = *(v0 + 392);
      v55 = *(v0 + 480);
      v56 = *(v0 + 280);
      v57 = *(v0 + 264);
      v58 = *(v0 + 240);
      v59 = **(v0 + 368);
      v60 = swift_allocObject();
      *(v0 + 456) = v60;
      *(v60 + 16) = v58;
      *(v60 + 24) = v59;
      v54(v56, v55, v57);
      v61 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
      v62 = v58;
      v63 = v59;
      v64 = swift_task_alloc();
      *(v0 + 464) = v64;
      *v64 = v0;
      v64[1] = sub_100176B34;
      v65 = *(v0 + 280);
      v66 = *(v0 + 240);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v64, v65, sub_10018AD30, v60, &type metadata for () + 8);
    }
  }
}

uint64_t sub_1001765B4()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1001767FC;
  }

  else
  {
    v3 = sub_1001766C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001766C8()
{
  sub_10000607C((v0 + 56));
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 480);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = **(v0 + 368);
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v2(v4, v3, v5);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v10 = v6;
  v11 = v7;
  v12 = swift_task_alloc();
  *(v0 + 464) = v12;
  *v12 = v0;
  v12[1] = sub_100176B34;
  v13 = *(v0 + 280);
  v14 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_10018AD30, v8, &type metadata for () + 8);
}

uint64_t sub_1001767FC()
{
  v42 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 344), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v40 = *(v0 + 448);
    v5 = *(v0 + 344);
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 192) = v6;
    v41 = v8;
    *v7 = 136446722;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, &v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v13 = sub_1001AE574(v12);
    v15 = v14;
    sub_100188054(v5, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v16 = sub_10000668C(v13, v15, &v41);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, &v41);

    *(v7 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to complete operation queue item. {operationQueueItem: %{public}s, error: %{public}s}", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 448);
    v24 = *(v0 + 344);

    sub_100188054(v24, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_10000607C((v0 + 56));
  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v27 = *(v0 + 480);
  v28 = *(v0 + 280);
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = **(v0 + 368);
  v32 = swift_allocObject();
  *(v0 + 456) = v32;
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v26(v28, v27, v29);
  v33 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v34 = v30;
  v35 = v31;
  v36 = swift_task_alloc();
  *(v0 + 464) = v36;
  *v36 = v0;
  v36[1] = sub_100176B34;
  v37 = *(v0 + 280);
  v38 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v36, v37, sub_10018AD30, v32, &type metadata for () + 8);
}

uint64_t sub_100176B34()
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 424);
  v5 = *(*v1 + 416);
  v6 = *(*v1 + 280);
  v7 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 472) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_100176F10;
  }

  else
  {
    v8 = sub_100176CD0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100176CD0()
{
  v18 = v0;
  v1 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 336), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 336);
    v5 = *(v0 + 256);
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136446466;
    *(v0 + 208) = v5;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v11 = sub_1001AE574(v10);
    v13 = v12;
    sub_100188054(v4, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v14 = sub_10000668C(v11, v13, &v17);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Completed operation queue item with top priority. {operationQueueItem: %{public}s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 336);

    sub_100188054(v15, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v0 + 16, &qword_100939E08, &qword_1007970C8);
  sub_100188054(*(v0 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v0 + 484) = 1;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

uint64_t sub_100176F10()
{
  v29 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  sub_100187FEC(*(v0 + 368), *(v0 + 328), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 472);
    v5 = *(v0 + 328);
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 200) = v6;
    v28 = v8;
    *v7 = 136446722;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10000668C(v9, v10, &v28);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v13 = sub_1001AE574(v12);
    v15 = v14;
    sub_100188054(v5, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
    v16 = sub_10000668C(v13, v15, &v28);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, &v28);

    *(v7 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to mark operation queue item as completed. {operationQueueItem: %{public}s, error: %{public}s}", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 472);
    v24 = *(v0 + 328);

    sub_100188054(v24, type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  }

  sub_1000050A4(v0 + 16, &qword_100939E08, &qword_1007970C8);
  v25 = *(v0 + 484);
  sub_100188054(*(v0 + 368), type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation);
  *(v0 + 484) = v25;

  return _swift_task_switch(sub_100175BF8, 0, 0);
}

void *sub_1001771CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10034C9A4(a1, a2);
  if (!v3)
  {
    if (result)
    {
      sub_1001AE234(result, a3);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
    return (*(*(v7 - 8) + 56))(a3, v6, 1, v7);
  }

  return result;
}

void sub_10017725C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_100177474(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10017737C(0, v4, 1, a1, a2);
  }
}

void sub_10017737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_100171114(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_100177474(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_20;
    }

    v98 = v7;
    v11 = *a3;
    v12 = *(*a3 + 8 * v8);
    v102 = *(*a3 + 8 * v10);
    v13 = v102;
    v103 = v12;
    v14 = v12;
    v15 = v13;
    v16 = sub_100171114(&v103, &v102, a5);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v10 + 2;
    v95 = v10;
    v19 = 8 * v10;
    v6 = v11 + v19 + 16;
    while (1)
    {
      v8 = v98;
      if (v98 == v18)
      {
        break;
      }

      v20 = *v6;
      v102 = *(v6 - 8);
      v21 = v102;
      v103 = v20;
      v22 = v20;
      v23 = v21;
      LODWORD(v21) = sub_100171114(&v103, &v102, a5);

      ++v18;
      v6 += 8;
      if ((v17 ^ v21))
      {
        v8 = v18 - 1;
        break;
      }
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v8 < v95)
    {
      goto LABEL_123;
    }

    if (v95 < v8)
    {
      v25 = 8 * v8 - 8;
      v26 = v8;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v10 = v95;
      goto LABEL_20;
    }

    v10 = v95;
LABEL_20:
    v29 = a3[1];
    if (v8 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_119;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_132;
    }

    v30 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = a3[1];
    }

    if (v30 < v10)
    {
      goto LABEL_122;
    }

    if (v8 == v30)
    {
LABEL_132:
      if (v8 < v10)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v6 = *a3;
      v77 = *a3 + 8 * v8 - 8;
      v96 = v10;
      v78 = v10 - v8;
      v92 = v30;
      do
      {
        v79 = *(v6 + 8 * v8);
        v93 = v78;
        v99 = v77;
        v80 = v77;
        do
        {
          v102 = *v80;
          v81 = v102;
          v103 = v79;
          v82 = v79;
          v83 = v81;
          v84 = sub_100171114(&v103, &v102, a5);
          if (v5)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v6)
          {
            goto LABEL_125;
          }

          v86 = *v80;
          v79 = *(v80 + 8);
          *v80 = v79;
          *(v80 + 8) = v86;
          v80 -= 8;
        }

        while (!__CFADD__(v78++, 1));
        ++v8;
        v77 = v99 + 8;
        v78 = v93 - 1;
      }

      while (v8 != v92);
      v8 = v92;
      v10 = v96;
      if (v92 < v96)
      {
        goto LABEL_118;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003658B8(0, *(v9 + 2) + 1, 1, v9);
    }

    v32 = *(v9 + 2);
    v31 = *(v9 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v9 = sub_1003658B8((v31 > 1), v32 + 1, 1, v9);
    }

    *(v9 + 2) = v33;
    v34 = &v9[16 * v32];
    *(v34 + 4) = v10;
    *(v34 + 5) = v8;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v9[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_105;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_106;
      }

      v48 = &v9[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_108;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_111;
      }

      if (v52 >= v44)
      {
        v70 = &v9[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_117;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v33 == 3)
    {
      v37 = *(v9 + 4);
      v38 = *(v9 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_48:
      if (v40)
      {
        goto LABEL_107;
      }

      v53 = &v9[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_110;
      }

      v59 = &v9[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_114;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v63 = &v9[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_62:
    if (v58)
    {
      goto LABEL_109;
    }

    v66 = &v9[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_112;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_69:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v75 = *&v9[16 * v74 + 32];
    v6 = *&v9[16 * v36 + 40];
    sub_100177AE4((*a3 + 8 * v75), (*a3 + 8 * *&v9[16 * v36 + 32]), (*a3 + 8 * v6), v35, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v6 < v75)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1004361F4(v9);
    }

    if (v74 >= *(v9 + 2))
    {
      goto LABEL_104;
    }

    v76 = &v9[16 * v74];
    *(v76 + 4) = v75;
    *(v76 + 5) = v6;
    v104 = v9;
    sub_100436168(v36);
    v9 = v104;
    v33 = *(v104 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v9 = sub_1004361F4(v9);
LABEL_91:
  v104 = v9;
  v88 = *(v9 + 2);
  if (v88 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v9[16 * v88];
      v90 = *&v9[16 * v88 + 24];
      sub_100177AE4((*a3 + 8 * v89), (*a3 + 8 * *&v9[16 * v88 + 16]), (*a3 + 8 * v90), v6, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v90 < v89)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1004361F4(v9);
      }

      if (v88 - 2 >= *(v9 + 2))
      {
        goto LABEL_116;
      }

      v91 = &v9[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v104 = v9;
      sub_100436168(v88 - 1);
      v9 = v104;
      v88 = *(v104 + 2);
      if (v88 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}