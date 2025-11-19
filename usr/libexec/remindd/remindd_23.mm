void *sub_10026AE90(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_100010E34(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_100010E34(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_10026B0A4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v3 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  Set.Iterator.init(_cocoa:)();
  v1 = v22;
  v2 = v23;
  v4 = v24;
  v3 = v25;
  v5 = v26;
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v3 << 6);
      v8 = v3;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v21 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860();
      return;
    }

LABEL_9:
    v12 = v3;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v4 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v21 = 0;
  v14 = v27;
  v8 = v25;
  v6 = v26;
  v4 = v24;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_15:
  v15 = (v4 + 64) >> 6;
  if (!v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v14))
      {

        v14 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v21)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v27;
        v18 = v8;
        v19 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_10026B3B8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v4 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  Set.Iterator.init(_cocoa:)();
  v1 = v23;
  v2 = v24;
  v3 = v25;
  v4 = v26;
  v5 = v27;
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v27)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v4 << 6);
      v8 = v4;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v22 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860();
      return;
    }

LABEL_9:
    v12 = v4;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v3 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v22 = 0;
  v14 = v28;
  v8 = v26;
  v6 = v27;
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_15:
  v21 = v14;
  v15 = (v3 + 64) >> 6;
  if (!v22)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v20))
      {

        v21 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v22)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v28;
        v18 = v8;
        v19 = v6;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10026B6C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F3E0);
  v1 = sub_100006654(v0, qword_10093F3E0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000003CLL;
  *(&v8 + 1) = 0x800000010079DDE0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_10026B9A8(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000003CLL;
    *(&v10[0] + 1) = 0x800000010079DDE0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_10026B9A8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_100935DA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093F3E0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136446210;
    v11 = sub_1003533B0();
    v13 = sub_10000668C(v11, v12, v23);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiacriticsInsensitiveHashtagLabelsMigrator BEGIN {store: %{public}s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  v14 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v15 = [v6 persistentStoreCoordinator];
  [v14 setPersistentStoreCoordinator:v15];

  [v14 setTransactionAuthor:RDStoreControllerDiacriticsInsensitiveHashtagLabelsMigrationAuthor];
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v14;
  v16[4] = v6;
  v16[5] = ObjectType;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10026C7F8;
  *(v17 + 24) = v16;
  v23[4] = sub_1000529DC;
  v23[5] = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10000F160;
  v23[3] = &unk_1008EBFF0;
  v18 = _Block_copy(v23);
  v19 = v6;
  v20 = v2;
  v21 = v14;

  [v21 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  return result;
}

void sub_10026BCBC(uint64_t a1, void *a2, void *a3)
{
  v4 = sub_10026C804(a2, a3, 50);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  v15 = v4;
  if (v4 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_9:
      v16 = 0;
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v18 = *(v15 + 8 * v16 + 32);
        }

        v19 = v18;
        p_class_meths = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_10026D360(v18, a2, a3);
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = __OFADD__(v17, v21);
        v17 += v21;
        if (v22)
        {
          goto LABEL_27;
        }

        if (__ROR8__(0x8F5C28F5C28F5C29 * p_class_meths + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL && ([a2 hasChanges] & 1) != 0)
        {
          v37 = 0;
          if (![a2 save:&v37])
          {
            v24 = v37;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            ++v16;
            p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
            goto LABEL_2;
          }

          v23 = v37;
        }

        ++v16;
        if (p_class_meths == v14)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
LABEL_31:

  if (([a2 hasChanges] & 1) == 0)
  {
    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    goto LABEL_35;
  }

  v37 = 0;
  p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  if ([a2 save:&v37])
  {
    v25 = v37;
    goto LABEL_35;
  }

  v35 = v37;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v16 = v14;
LABEL_2:
  if (qword_100935DA0 != -1)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093F3E0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.rem_errorDescription.getter();
    v13 = sub_10000668C(v11, v12, &v37);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "DiacriticsInsensitiveHashtagLabelsMigrator with error: %s", v9, 0xCu);
    sub_10000607C(v10);
  }

  else
  {
  }

  v14 = v16;
LABEL_35:
  if (p_class_meths[436] != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10093F3E0);
  v27 = a3;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v30 = 136446722;
    v32 = sub_1003533B0();
    v34 = sub_10000668C(v32, v33, &v37);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v14;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v28, v29, "DiacriticsInsensitiveHashtagLabelsMigrator END {store: %{public}s, existing hashtag labels count = %ld, newly created hashtag labels count: %ld}", v30, 0x20u);
    sub_10000607C(v31);
  }
}

void sub_10026C200()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v42 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v42 - v19;
  v21 = [v1 hashtags];
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v45 = v5;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10026E1F4();
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v23 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*(v23 + 16))
  {
LABEL_9:

    return;
  }

  sub_10026B0A4(v23);
  if (!v24)
  {
    goto LABEL_9;
  }

  v42[1] = 0;
  v25 = v13;
  v26 = v24;
  v27 = [v24 name];
  [v1 setName:v27];

  v43 = v26;
  v28 = [v26 creationDate];
  v44 = v1;
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v10 + 32);
    v30(v8, v16, v9);
    v42[0] = *(v10 + 56);
    (v42[0])(v8, 0, 1, v9);
    v30(v20, v8, v9);
    v31 = v25;
  }

  else
  {
    v42[0] = *(v10 + 56);
    (v42[0])(v8, 1, 1, v9);
    static Date.distantFuture.getter();
    v31 = v25;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v33 = *(v10 + 8);
  v33(v20, v9);
  [v44 setFirstOccurrenceCreationDate:isa];

  sub_10026B3B8(v23);
  v35 = v34;

  if (v35)
  {
    v36 = [v35 creationDate];
    if (v36)
    {
      v37 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = *(v10 + 32);
      v39 = v45;
      v38(v45, v16, v9);
      (v42[0])(v39, 0, 1, v9);
      v38(v31, v39, v9);
    }

    else
    {
      v40 = v45;
      (v42[0])(v45, 1, 1, v9);
      static Date.distantPast.getter();
      if ((*(v10 + 48))(v40, 1, v9) != 1)
      {
        sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
      }
    }

    v41 = Date._bridgeToObjectiveC()().super.isa;
    v33(v31, v9);
    [v44 setRecencyDate:v41];
  }

  else
  {
  }
}

id RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10026C804(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000F5104(&unk_10093F440, &unk_10079DEB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_100348E3C(KeyPath, v5);

  *(inited + 32) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_1003EE38C(v7, 1);

  *(inited + 40) = v8;
  v9 = sub_100025060(inited);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  v51 = v10;
  v48 = v9;
  [v10 setPredicate:v9];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_100796900;
  *(v12 + 32) = swift_getKeyPath();
  *(v12 + 40) = swift_getKeyPath();
  v54 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v13 = _swiftEmptyArrayStorage;
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v14 = *(v12 + 32);
  }

  v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v16)
  {
LABEL_25:
    _StringGuts.grow(_:)(46);
    v46._object = 0x80000001007EC120;
    v46._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v46);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
LABEL_27:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v17 = v15;
  v18 = v16;
  v53 = &type metadata for String;

  *&v52 = v17;
  *(&v52 + 1) = v18;
  v20 = _swiftEmptyArrayStorage[2];
  v19 = _swiftEmptyArrayStorage[3];
  if (v20 >= v19 >> 1)
  {
    sub_100010D04((v19 > 1), v20 + 1, 1);
    v13 = v54;
  }

  v13[2] = v20 + 1;
  sub_100005EE0(&v52, &v13[4 * v20 + 4]);
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = *(v12 + 40);

LABEL_12:
  v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v22;
  v25 = v23;
  v53 = &type metadata for String;

  *&v52 = v24;
  *(&v52 + 1) = v25;
  v54 = v13;
  v27 = v13[2];
  v26 = v13[3];
  if (v27 >= v26 >> 1)
  {
    sub_100010D04((v26 > 1), v27 + 1, 1);
    v13 = v54;
  }

  v13[2] = v27 + 1;
  sub_100005EE0(&v52, &v13[4 * v27 + 4]);
  swift_setDeallocating();
  v28 = *(v12 + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 setPropertiesToFetch:isa];

  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1007953F0;
  *(v30 + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v31 = *(v30 + 32);

LABEL_19:
  v32 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v33)
  {
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v47._object = 0x80000001007EC120;
    v47._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v47);
    v54 = v31;
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_27;
  }

  v34 = v32;
  v35 = v33;

  v37 = _swiftEmptyArrayStorage[2];
  v36 = _swiftEmptyArrayStorage[3];
  if (v37 >= v36 >> 1)
  {
    sub_100026EF4((v36 > 1), v37 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v37 + 1;
  v38 = &_swiftEmptyArrayStorage[2 * v37];
  v38[4] = v34;
  v38[5] = v35;
  swift_setDeallocating();
  v39 = *(v30 + 16);
  swift_arrayDestroy();
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setRelationshipKeyPathsForPrefetching:v40];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007953F0;
  *(v41 + 32) = a2;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v42 = a2;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setAffectedStores:v43];

  [v51 setFetchBatchSize:a3];
  v44 = NSManagedObjectContext.fetch<A>(_:)();

  return v44;
}

Class sub_10026CEC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  KeyPath = swift_getKeyPath();

  v9 = sub_100392650(KeyPath, a1, a2);

  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v14 = sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = *(inited + 32);
  }

  v33 = a4;
  v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v16;
  v19 = v17;

  v21 = _swiftEmptyArrayStorage[2];
  v20 = _swiftEmptyArrayStorage[3];
  if (v21 >= v20 >> 1)
  {
    sub_100026EF4((v20 > 1), v21 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v21 + 1;
  v22 = &_swiftEmptyArrayStorage[2 * v21];
  v22[4] = v18;
  v22[5] = v19;
  swift_setDeallocating();
  v23 = *(inited + 16);
  swift_arrayDestroy();
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRelationshipKeyPathsForPrefetching:v24];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007953F0;
  *(v25 + 32) = v33;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v26 = v33;
  v27.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setAffectedStores:v27.super.isa];

  [v10 setFetchLimit:1];
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    return v27.super.isa;
  }

  if (v14 >> 62)
  {
LABEL_17:
    v29 = v14;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v29;
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_18:

    return 0;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v14 + 32);
LABEL_15:
    v27.super.isa = v28;

    return v27.super.isa;
  }

  __break(1u);
LABEL_22:
  _StringGuts.grow(_:)(46);
  v32._object = 0x80000001007EC120;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v32);
  sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10026D360(void *a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v8 = *(*(v7 - 8) + 64);
  *&v9 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v133 = &v115 - v10;
  v11 = [a1 hashtags];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v14 = sub_10026E1F4();
  v131 = v13;
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 canonicalName];
  if (!v16)
  {

    return;
  }

  v129 = v3;
  v126 = a2;
  v17 = v16;
  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_100935DA0 == -1)
  {
    goto LABEL_4;
  }

LABEL_82:
  swift_once();
LABEL_4:
  v20 = type metadata accessor for Logger();
  v21 = sub_100006654(v20, qword_10093F3E0);

  v130 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v127 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v140[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_10000668C(v137, v19, v140);
    *(v25 + 12) = 2048;
    v27 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *(v15 + 16);
    }

    *(v25 + 14) = v28;

    _os_log_impl(&_mh_execute_header, v22, v23, "DiacriticsInsensitiveHashtagLabelsMigrator: process hashtag label '%s' with hashtags: %ld", v25, 0x16u);
    sub_10000607C(v26);
  }

  else
  {

    v27 = v15 & 0xC000000000000001;
  }

  v122 = a3;
  v123 = v14;
  if (v27)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v15 = v140[2];
    v30 = v140[3];
    v31 = v140[4];
    a3 = v140[5];
    a1 = v140[6];
  }

  else
  {
    a3 = 0;
    v30 = v15 + 56;
    v32 = -1 << *(v15 + 32);
    v33 = ~v32;
    v34 = -v32;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    a1 = (v35 & *(v15 + 56));
    v31 = v33;
  }

  v125 = v31;
  v36 = (v31 + 64) >> 6;
  v128 = _swiftEmptyDictionarySingleton;
  *&v29 = 136446210;
  v124 = v29;
  *&v29 = 136446466;
  v121 = v29;
  *&v29 = 138412290;
  v119 = v29;
  v134 = v19;
  v135 = v36;
  v132 = v15;
  v136 = v30;
  if ((v15 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v40 = a3;
      v41 = a1;
      v38 = a3;
      if (!a1)
      {
        while (1)
        {
          v38 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v38 >= v36)
          {
            goto LABEL_60;
          }

          v41 = *(v30 + 8 * v38);
          v40 = (v40 + 1);
          if (v41)
          {
            goto LABEL_26;
          }
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_26:
      v39 = (v41 - 1) & v41;
      v14 = *(*(v15 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v41)))));
      if (!v14)
      {
        goto LABEL_60;
      }

LABEL_27:
      v42 = [v14 name];
      if (v42)
      {
        break;
      }

      v53 = v14;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v138 = v39;
        v14 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v140[0] = v56;
        LODWORD(v14->isa) = v124;
        v57 = [v53 remObjectID];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 description];
          v120 = v56;
          v60 = v59;

          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v56 = v120;
        }

        else
        {
          v63 = 0xE300000000000000;
          v61 = 7104878;
        }

        v75 = sub_10000668C(v61, v63, v140);

        *(&v14->isa + 4) = v75;
        _os_log_impl(&_mh_execute_header, v54, v55, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag [%{public}s] does not have canonicalName", v14, 0xCu);
        sub_10000607C(v56);

        a3 = v38;
        a1 = v138;
        v19 = v134;
        goto LABEL_45;
      }

      a3 = v38;
      a1 = v39;
LABEL_46:
      v36 = v135;
      v30 = v136;
      if (v15 < 0)
      {
        goto LABEL_19;
      }
    }

    v138 = v39;
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v140[0] = v44;
    v140[1] = v46;
    v47 = v133;
    static Locale.current.getter();
    v48 = type metadata accessor for Locale();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_10013BCF4();
    v49 = StringProtocol.foldedStringForWriting(locale:)();
    v51 = v50;
    v52 = v47;
    v19 = v134;
    sub_1000050A4(v52, &unk_10093F420, &unk_100797AE0);

    if (v49 == v137 && v51 == v19)
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65 = v138;
      if (v64)
      {

        a3 = v38;
        a1 = v65;
        goto LABEL_45;
      }

      v14 = v14;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v117 = v67;
        v118 = v66;
        v68 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v140[0] = v116;
        *v68 = v121;
        v120 = v14;
        v69 = [v14 remObjectID];
        if (v69)
        {
          v70 = v69;
          v71 = [v69 description];

          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
        }

        else
        {
          v74 = 0xE300000000000000;
          v72 = 7104878;
        }

        v76 = sub_10000668C(v72, v74, v140);

        *(v68 + 4) = v76;
        *(v68 + 12) = 2080;
        v77 = v134;
        *(v68 + 14) = sub_10000668C(v137, v134, v140);
        v78 = v118;
        _os_log_impl(&_mh_execute_header, v118, v117, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag [%{public}s] does not match hashtag label name '%s'", v68, 0x16u);
        swift_arrayDestroy();

        v19 = v77;

        v14 = v120;
      }

      else
      {
      }

      [v127 removeHashtagsObject:v14];
      v79 = v128;
      if (!v128[2] || (v80 = sub_100005F4C(v49, v51), (v81 & 1) == 0))
      {
        v84 = v14;
        v85 = v126;
        v86 = v129;
        v87 = sub_10026CEC0(v49, v51, v126, v122);
        v129 = v86;
        if (v86)
        {
          sub_10001B860();

          return;
        }

        v14 = v87;
        if (v87)
        {
          v88 = v87;
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v120 = v89;
            v92 = v91;
            v93 = swift_slowAlloc();
            *v92 = v119;
            *(v92 + 4) = v88;
            *v93 = v14;
            v94 = v88;
            _os_log_impl(&_mh_execute_header, v120, v90, "DiacriticsInsensitiveHashtagLabelsMigrator: hashtag label '%@' is already in database", v92, 0xCu);
            sub_1000050A4(v93, &unk_100938E70, &unk_100797230);
            v19 = v134;

            v89 = v120;
          }

          [(objc_class *)v88 addHashtagsObject:v84];
          v95 = v88;
          v96 = v128;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140[0] = v96;
          sub_1002C72A0(v95, v49, v51, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          v14 = v84;
          v98 = sub_1006E7C0C(v84, v85);
          v129 = 0;
          v99 = v98;
          v100 = v128;
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v140[0] = v100;
          sub_1002C72A0(v99, v49, v51, v101);
        }

        v128 = v140[0];
        goto LABEL_32;
      }

      v82 = v80;

      v83 = *(v79[7] + 8 * v82);
      [v83 addHashtagsObject:v14];
    }

LABEL_32:
    a3 = v38;
    a1 = v138;
LABEL_45:
    v15 = v132;
    goto LABEL_46;
  }

LABEL_19:
  v37 = __CocoaSet.Iterator.next()();
  if (v37)
  {
    v139 = v37;
    swift_dynamicCast();
    v14 = v140[0];
    v38 = a3;
    v39 = a1;
    if (v140[0])
    {
      goto LABEL_27;
    }
  }

LABEL_60:
  sub_10001B860();

  a3 = v128;
  v102 = v128 + 8;
  v103 = 1 << *(v128 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & v128[8];
  a1 = ((v103 + 63) >> 6);

  v106 = 0;
  v14 = v123;
  v19 = v129;
  if (v105)
  {
    while (1)
    {
      v107 = v106;
LABEL_68:
      v108 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v109 = *(a3[7] + ((v107 << 9) | (8 * v108)));
      sub_10026C200();

      if (!v105)
      {
        goto LABEL_64;
      }
    }
  }

  while (1)
  {
LABEL_64:
    v107 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v107 >= a1)
    {
      break;
    }

    v105 = v102[v107];
    ++v106;
    if (v105)
    {
      v106 = v107;
      goto LABEL_68;
    }
  }

  v110 = v127;
  v111 = [v127 hashtags];
  if (v111 && ((v112 = v111, v113 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v112, (v113 & 0xC000000000000001) == 0) ? (v114 = *(v113 + 16)) : (v114 = __CocoaSet.count.getter()), , v114))
  {
    if (a3[2])
    {
      sub_10026C200();
    }
  }

  else
  {
    [v126 deleteObject:v110];
  }

  sub_10026AE90(a3);
}

unint64_t sub_10026E1F4()
{
  result = qword_10093B280;
  if (!qword_10093B280)
  {
    sub_1000060C8(255, &qword_10093CFE0, off_1008D4190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B280);
  }

  return result;
}

char *sub_10026E25C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isInserted] && (objc_msgSend(v0, "completed") & 1) == 0)
  {
    v6 = sub_100366F40(0, 1, 1, _swiftEmptyArrayStorage);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100366F40((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v9 = [v0 changedValues];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (([v0 isInserted] & 1) == 0)
  {
    if (*(v10 + 16))
    {
      v11 = sub_100005F4C(0x6574656C706D6F63, 0xE900000000000064);
      if (v12)
      {
        sub_100005EF0(*(v10 + 56) + 32 * v11, &v30);
        if ((swift_dynamicCast() & 1) != 0 && v28 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100366F40(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_100366F40((v13 > 1), v14 + 1, 1, v6);
          }

          *(v6 + 2) = v14 + 1;
          v6[v14 + 32] = 2;
        }
      }
    }
  }

  static CharacterSet.hashtagTokenPrefixCharacters.getter();
  if (*(v10 + 16))
  {
    v15 = sub_100005F4C(0x656C746974, 0xE500000000000000);
    if (v16)
    {
      sub_100005EF0(*(v10 + 56) + 32 * v15, &v30);
      if (swift_dynamicCast())
      {
        v30 = v28;
        v31 = v29;
        sub_10013BCF4();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100366F40(0, *(v6 + 2) + 1, 1, v6);
          }

          v20 = *(v6 + 2);
          v19 = *(v6 + 3);
          if (v20 >= v19 >> 1)
          {
            v6 = sub_100366F40((v19 > 1), v20 + 1, 1, v6);
          }

          *(v6 + 2) = v20 + 1;
          v6[v20 + 32] = 3;
        }
      }
    }
  }

  if (!*(v10 + 16) || (v21 = sub_100005F4C(0x7365746F6ELL, 0xE500000000000000), (v22 & 1) == 0))
  {

LABEL_36:
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  sub_100005EF0(*(v10 + 56) + 32 * v21, &v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v30 = v28;
  v31 = v29;
  sub_10013BCF4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v24 = v23;

  if (v24)
  {
    goto LABEL_36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100366F40(0, *(v6 + 2) + 1, 1, v6);
  }

  v26 = *(v6 + 2);
  v25 = *(v6 + 3);
  if (v26 >= v25 >> 1)
  {
    v6 = sub_100366F40((v25 > 1), v26 + 1, 1, v6);
  }

  (*(v2 + 8))(v5, v1);
  *(v6 + 2) = v26 + 1;
  v6[v26 + 32] = 4;
  return v6;
}

void *sub_10026E728(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v31 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v28 = result;
    v29 = v5;
    v30 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return result;
  }

  v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = *(a1 + 36);
  v28 = result;
  v29 = v7;
  v30 = 0;
LABEL_7:
  v8 = 0;
  while (v8 < v3)
  {
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_33;
    }

    v12 = v28;
    v11 = v29;
    v13 = v30;
    sub_100411ACC(v28, v29, v30, a1);
    v15 = v14;
    sub_1005E37C0(v15);

    if (v1)
    {
      sub_100010E34(v12, v11, v13);
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = v31[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v26)
    {
      if (!v13)
      {
        goto LABEL_37;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&unk_10093F490, &qword_1007A7660);
      v9 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v9(v27, 0);
      if (v8 == v3)
      {
LABEL_29:
        sub_100010E34(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_38;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v17 = 1 << *(a1 + 32);
      if (v12 >= v17)
      {
        goto LABEL_34;
      }

      v18 = v12 >> 6;
      v19 = *(a1 + 56 + 8 * (v12 >> 6));
      if (((v19 >> v12) & 1) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_36;
      }

      v20 = v19 & (-2 << (v12 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100010E34(v12, v11, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_28;
          }
        }

        result = sub_100010E34(v12, v11, 0);
      }

LABEL_28:
      v28 = v17;
      v29 = v11;
      v30 = 0;
      if (v8 == v3)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10026EA70(id *a1)
{
  v1 = [*a1 entityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

unint64_t sub_10026EB48@<X0>(uint64_t a1@<X1>, unint64_t a2@<X3>, uint64_t *a3@<X4>, unint64_t *a4@<X8>)
{
  result = sub_10026EC90(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_10026EB80(uint64_t a1)
{
  result = sub_10026EBA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10026EBA8()
{
  result = qword_10093F470;
  if (!qword_10093F470)
  {
    type metadata accessor for REMListStableSortingDataView.Invocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F470);
  }

  return result;
}

void *sub_10026EC00(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1004ADF1C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

unint64_t sub_10026EC90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v203 = &v178 - v10;
  v202 = type metadata accessor for UUID();
  v11 = *(v202 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v202);
  v196 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = _s10PredicatesOMa(0);
  v14 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v194 = (&v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = a3;
  v198 = v3;
  v193 = a1;
  v191 = v11;
  v195 = a2;
  if ((a3 & 0xC000000000000001) == 0)
  {
    v42 = v201[32];
    v43 = v42 & 0x3F;
    v32 = ((1 << v42) + 63) >> 6;
    i = 8 * v32;

    if (v43 <= 0xD)
    {
      goto LABEL_27;
    }

    goto LABEL_189;
  }

  v16 = _swiftEmptySetSingleton;
  *&v208 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v17 = __CocoaSet.Iterator.next()();
  if (!v17)
  {
LABEL_25:

    goto LABEL_48;
  }

  v18 = v17;
  v19 = type metadata accessor for REMObjectID_Codable();
  v20 = v18;
LABEL_8:
  v205 = v20;
  swift_dynamicCast();
  v27 = [v206 entityName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = [objc_opt_self() cdEntityName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  v36 = v206;
  v37 = *(v16 + 16);
  if (*(v16 + 24) <= v37)
  {
    sub_1003800CC(v37 + 1);
  }

  v16 = v208;
  v21 = NSObject._rawHashValue(seed:)(*(v208 + 40));
  v22 = v16 + 56;
  v23 = -1 << *(v16 + 32);
  v24 = v21 & ~v23;
  v25 = v24 >> 6;
  if (((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6))) != 0)
  {
    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_6;
  }

  v38 = 0;
  v39 = (63 - v23) >> 6;
  while (++v25 != v39 || (v38 & 1) == 0)
  {
    v40 = v25 == v39;
    if (v25 == v39)
    {
      v25 = 0;
    }

    v38 |= v40;
    v41 = *(v22 + 8 * v25);
    if (v41 != -1)
    {
      v26 = __clz(__rbit64(~v41)) + (v25 << 6);
LABEL_6:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v16 + 48) + 8 * v26) = v36;
      ++*(v16 + 16);
LABEL_7:
      v20 = __CocoaSet.Iterator.next()();
      if (!v20)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_123:
  v119 = *(v16 + 16);
LABEL_124:

  sub_1000F5104(&qword_10093F480, qword_10079DF40);
  v4 = &v205;
  Dictionary.reserveCapacity(_:)(v119);
  if (v32 >> 62)
  {
LABEL_205:
    v120 = _CocoaArrayWrapper.endIndex.getter();
    if (!v120)
    {
LABEL_206:

      return v205;
    }
  }

  else
  {
    v120 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v120)
    {
      goto LABEL_206;
    }
  }

  v121 = 0;
  v182 = v32 & 0xC000000000000001;
  v179 = v32 & 0xFFFFFFFFFFFFFF8;
  v178 = v32 + 32;
  v195 = (v191 + 7);
  v197 = (v191 + 6);
  v192 = (v191 + 4);
  ++v191;
  v186 = xmmword_1007953F0;
  v180 = v120;
  v181 = v32;
  while (1)
  {
    if (v182)
    {
      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v65 = __OFADD__(v121, 1);
      v125 = v121 + 1;
      if (v65)
      {
        goto LABEL_194;
      }

      goto LABEL_135;
    }

    if (v121 >= *(v179 + 16))
    {
      goto LABEL_199;
    }

    v66 = *(v178 + 8 * v121);
    v65 = __OFADD__(v121, 1);
    v125 = v121 + 1;
    if (v65)
    {
LABEL_194:
      __break(1u);
LABEL_195:
      v172 = v66;
      swift_once();
      v66 = v172;
      while (1)
      {
        v68 = qword_100975238;
        if (qword_100975238 >> 62)
        {
          v173 = v66;
          v174 = qword_100975238;
          v175 = _CocoaArrayWrapper.endIndex.getter();
          v68 = v174;
          v69 = v175;
          v66 = v173;
        }

        else
        {
          v69 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v198 = v19;
        v189 = v32;
        if (!v69)
        {
          v72 = _swiftEmptyArrayStorage;
LABEL_69:
          v81 = v198;
          sub_1005EC5F0(v66, 0, 1, v72, 0);
          v198 = v81;
          if (v81)
          {
          }

          v4 = v82;

          *&v208 = _swiftEmptyArrayStorage;
          if (!(v4 >> 62))
          {
            i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_73;
          }

LABEL_201:
          i = _CocoaArrayWrapper.endIndex.getter();
LABEL_73:
          v83 = _swiftEmptyArrayStorage;
          if (i)
          {
            v84 = 0;
            v85 = v4 & 0xC000000000000001;
            v86 = v4 & 0xFFFFFFFFFFFFFF8;
            v87 = &selRef_hack_willSaveHandled;
            v200 = i;
            v201 = (v4 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v85)
              {
                v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v84 >= *(v86 + 16))
                {
                  goto LABEL_186;
                }

                v91 = *(v4 + 8 * v84 + 32);
              }

              v92 = v91;
              v32 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_185;
              }

              if ([v91 v87[184]])
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v88 = v87;
                v89 = v85;
                v90 = *(v208 + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v85 = v89;
                v87 = v88;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                i = v200;
                v86 = v201;
              }

              ++v84;
              if (v32 == i)
              {
                v83 = v208;
                break;
              }
            }
          }

          if ((v83 & 0x8000000000000000) != 0 || (v83 & 0x4000000000000000) != 0)
          {
            v19 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v19 = *(v83 + 16);
          }

          v4 = _swiftEmptyDictionarySingleton;
          if (v19)
          {
            v185 = _swiftEmptyDictionarySingleton;
            v93 = &selRef_persistentStoreForIdentifier_;
            for (i = 0; ; i = v95)
            {
              while (1)
              {
                if ((v83 & 0xC000000000000001) != 0)
                {
                  v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (i >= *(v83 + 16))
                  {
                    goto LABEL_188;
                  }

                  v94 = *(v83 + 8 * i + 32);
                }

                v32 = v94;
                v95 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_187;
                }

                v96 = [v94 v93[106]];
                if (v96)
                {
                  break;
                }

                ++i;
                if (v95 == v19)
                {
                  goto LABEL_118;
                }
              }

              v201 = v96;
              if ((v185 & 0xC000000000000001) != 0)
              {
                if (v185 < 0)
                {
                  v97 = v185;
                }

                else
                {
                  v97 = v185 & 0xFFFFFFFFFFFFFF8;
                }

                v98 = v32;
                v99 = __CocoaDictionary.count.getter();
                if (__OFADD__(v99, 1))
                {
                  goto LABEL_204;
                }

                v100 = sub_10021C6D8(v97, v99 + 1);
              }

              else
              {
                v101 = v32;
                v100 = v185;
              }

              v4 = v100;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v208 = v4;
              v104 = sub_10002B924(v201);
              v105 = *(v4 + 16);
              v106 = (v103 & 1) == 0;
              v107 = v105 + v106;
              if (__OFADD__(v105, v106))
              {
                __break(1u);
LABEL_204:
                __break(1u);
                goto LABEL_205;
              }

              if (*(v4 + 24) >= v107)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v116 = v103;
                  sub_1003739B0();
                  LOBYTE(v103) = v116;
                }
              }

              else
              {
                LODWORD(v200) = v103;
                sub_10036AEE4(v107, isUniquelyReferenced_nonNull_native);
                v108 = sub_10002B924(v201);
                v109 = v103 & 1;
                LOBYTE(v103) = v200;
                if ((v200 & 1) != v109)
                {
                  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
LABEL_212:

                  __break(1u);
                  return result;
                }

                v104 = v108;
              }

              v110 = v201;
              v93 = &selRef_persistentStoreForIdentifier_;
              v111 = v208;
              v185 = v208;
              if (v103)
              {
                v112 = *(v208 + 56);
                v113 = *(v112 + 8 * v104);
                *(v112 + 8 * v104) = v32;
              }

              else
              {
                *(v208 + 8 * (v104 >> 6) + 64) |= 1 << v104;
                *(*(v111 + 48) + 8 * v104) = v110;
                *(*(v111 + 56) + 8 * v104) = v32;

                v114 = *(v185 + 16);
                v65 = __OFADD__(v114, 1);
                v115 = v114 + 1;
                if (v65)
                {
                  __break(1u);
                }

                *(v185 + 16) = v115;
              }

              v4 = _swiftEmptyDictionarySingleton;
              if (v95 == v19)
              {
                goto LABEL_118;
              }
            }
          }

          v185 = _swiftEmptyDictionarySingleton;
LABEL_118:
          v117 = v198;
          v118 = sub_1000271D0(v83, v195);
          v19 = v117;
          if (v117)
          {
          }

          v32 = v118;

          v205 = _swiftEmptyDictionarySingleton;
          if (v189)
          {
            v119 = __CocoaSet.count.getter();
            goto LABEL_124;
          }

          goto LABEL_123;
        }

        v70 = v68;
        v192 = v66;
        *&v206 = _swiftEmptyArrayStorage;
        v4 = &v206;
        sub_100026EF4(0, v69 & ~(v69 >> 63), 0);
        if (v69 < 0)
        {
          __break(1u);
          goto LABEL_198;
        }

        v71 = 0;
        v72 = v206;
        v73 = v70;
        v201 = (v70 & 0xC000000000000001);
        v197 = (v70 & 0xFFFFFFFFFFFFFF8);
        v200 = v70;
        v199 = v69;
        while (1)
        {
          i = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if (v201)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v71 >= *(v197 + 2))
            {
              goto LABEL_184;
            }

            v74 = *(v73 + 8 * v71 + 32);
          }

          v4 = v74;
          v75 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v76)
          {
            *&v208 = 0;
            *(&v208 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v176._object = 0x80000001007EC120;
            v176._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v176);
            v205 = v74;
            sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_210:
              *&v208 = 0;
              *(&v208 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v177._object = 0x80000001007EC120;
              v177._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v177);
              v204 = v72;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v77 = v75;
          v78 = v76;

          *&v206 = v72;
          v32 = v72[2];
          v79 = v72[3];
          if (v32 >= v79 >> 1)
          {
            v4 = &v206;
            sub_100026EF4((v79 > 1), v32 + 1, 1);
            v72 = v206;
          }

          v72[2] = v32 + 1;
          v80 = &v72[2 * v32];
          v80[4] = v77;
          v80[5] = v78;
          ++v71;
          v73 = v200;
          if (i == v199)
          {
            v66 = v192;
            goto LABEL_69;
          }
        }

LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if (isStackAllocationSafe)
        {
LABEL_27:
          v189 = v32;
          v188 = &v178;
          __chkstk_darwin(isStackAllocationSafe);
          v192 = (&v178 - ((i + 15) & 0x3FFFFFFFFFFFFFF0));
          bzero(v192, i);
          v197 = 0;
          v46 = 0;
          v47 = v201 + 56;
          v48 = 1 << v201[32];
          v49 = -1;
          if (v48 < 64)
          {
            v49 = ~(-1 << v48);
          }

          v50 = v49 & *(v201 + 7);
          v4 = (v48 + 63) >> 6;
          do
          {
LABEL_30:
            if (v50)
            {
              v51 = __clz(__rbit64(v50));
              v200 = (v50 - 1) & v50;
              goto LABEL_37;
            }

            v52 = v46;
            do
            {
              v46 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                __break(1u);
                goto LABEL_181;
              }

              if (v46 >= v4)
              {
                goto LABEL_47;
              }

              v53 = *&v47[8 * v46];
              ++v52;
            }

            while (!v53);
            v51 = __clz(__rbit64(v53));
            v200 = (v53 - 1) & v53;
LABEL_37:
            v54 = v51 | (v46 << 6);
            v55 = *(v201 + 6);
            v199 = v54;
            i = *(v55 + 8 * v54);
            v56 = [i entityName];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v58;

            v59 = [objc_opt_self() cdEntityName];
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v61;

            if (v57 == v60 && v32 == v62)
            {

              v50 = v200;
              break;
            }

            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v50 = v200;
          }

          while ((v64 & 1) == 0);
          *(v192 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v192 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v199));
          v65 = __OFADD__(v197++, 1);
          if (!v65)
          {
            goto LABEL_30;
          }

          __break(1u);
LABEL_47:
          v16 = sub_1001A0DF0(v192, v189, v197, v201);
LABEL_48:
          v19 = v198;
          v32 = v16 & 0xC000000000000001;
          if ((v16 & 0xC000000000000001) == 0)
          {
            goto LABEL_192;
          }
        }

        else
        {
          v170 = swift_slowAlloc();
          v171 = sub_10026EC00(v170, v32, v201, sub_10026EA70, 0);
          if (v4)
          {
            goto LABEL_212;
          }

          v16 = v171;
          v19 = 0;

          v32 = v16 & 0xC000000000000001;
          if ((v16 & 0xC000000000000001) == 0)
          {
LABEL_192:
            if (!*(v16 + 16))
            {
LABEL_193:

              return sub_10038E62C(_swiftEmptyArrayStorage);
            }

            goto LABEL_50;
          }
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_193;
        }

LABEL_50:
        v66 = sub_10026E728(v16);
        if (v19)
        {
        }

        if (qword_100936528 != -1)
        {
          goto LABEL_195;
        }
      }
    }

LABEL_135:
    v184 = v125;
    v189 = v66;
    v126 = [v66 objectID];
    *v194 = v126;
    swift_storeEnumTagMultiPayload();
    v127 = v126;
    v128 = sub_100043AA8();
    v187 = v127;
    v129 = sub_100353614(v127, v185);
    if (v129)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v130 = swift_allocObject();
      *(v130 + 16) = v186;
      *(v130 + 32) = v129;
      *&v208 = v130;
      sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      sub_100270528();
      sub_1000254F4();
      v131 = Sequence.compactMapToSet<A>(_:)();
      v129 = sub_10002595C(v131);
    }

    v132 = sub_1005362CC(v129, v128);

    v32 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = v186;
    *(inited + 32) = swift_getKeyPath();
    *&v206 = _swiftEmptyArrayStorage;
    v4 = &v206;
    sub_100010D04(0, 1, 0);
    v134 = v206;
    if ((inited & 0xC000000000000001) != 0)
    {
      v135 = v19;
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_200;
      }

      v135 = v19;
      v72 = *(inited + 32);
    }

    v188 = v132;
    v136 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v137)
    {
      goto LABEL_210;
    }

    v138 = v136;
    v139 = v137;
    *(&v209 + 1) = &type metadata for String;

    *&v208 = v138;
    *(&v208 + 1) = v139;
    v141 = *(v134 + 16);
    v140 = *(v134 + 24);
    if (v141 >= v140 >> 1)
    {
      sub_100010D04((v140 > 1), v141 + 1, 1);
      v134 = v206;
    }

    *(v134 + 16) = v141 + 1;
    sub_100005EE0(&v208, (v134 + 32 * v141 + 32));
    swift_setDeallocating();
    v142 = *(inited + 16);
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v144 = v188;
    [v188 setPropertiesToFetch:isa];

    v145 = swift_allocObject();
    *(v145 + 16) = v186;
    if (qword_100936030 != -1)
    {
      swift_once();
    }

    v146 = qword_100974DE0;
    *(v145 + 32) = qword_100974DE0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v147 = v146;
    v148 = Array._bridgeToObjectiveC()().super.isa;

    [v144 setSortDescriptors:v148];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v149 = NSManagedObjectContext.fetch<A>(_:)();
    i = _swiftEmptyArrayStorage;
    v150 = v189;
    if (v135)
    {
      break;
    }

    v151 = v149;
    v198 = 0;
    v204 = _swiftEmptyArrayStorage;
    v201 = (v149 & 0xFFFFFFFFFFFFFF8);
    if (v149 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v152 = v195;
    v4 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v153 = 0;
      v200 = v151 & 0xC000000000000001;
      v199 = v151;
LABEL_151:
      v183 = v4;
      v32 = v153;
      while (1)
      {
        if (v200)
        {
          v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v201 + 2))
          {
            goto LABEL_183;
          }

          v154 = *(v151 + 8 * v32 + 32);
        }

        i = v154;
        v153 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_182;
        }

        *&v206 = 0x696669746E656469;
        *(&v206 + 1) = 0xEA00000000007265;
        v155 = [v154 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v155)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v206 = 0u;
          v207 = 0u;
        }

        v4 = v203;
        v208 = v206;
        v209 = v207;
        if (!*(&v207 + 1))
        {
          break;
        }

        v156 = v16;
        v157 = v202;
        v158 = swift_dynamicCast();
        (*v152)(v4, v158 ^ 1u, 1, v157);
        if ((*v197)(v4, 1, v157) == 1)
        {

          v16 = v156;
          v151 = v199;
          goto LABEL_153;
        }

        v159 = v196;
        (*v192)(v196, v4, v157);
        v160 = objc_opt_self();
        v4 = UUID._bridgeToObjectiveC()().super.isa;
        v161 = [v160 objectIDWithUUID:v4];

        v162 = v159;
        v152 = v195;
        (*v191)(v162, v157);
        v16 = v156;
        v151 = v199;
        if (v161)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            i = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = v204;
          if (v153 != v16)
          {
            goto LABEL_151;
          }

          goto LABEL_173;
        }

LABEL_154:
        ++v32;
        if (v153 == v16)
        {
          v4 = v183;
          goto LABEL_173;
        }
      }

      sub_1000050A4(&v208, &qword_100939ED0, &qword_100791B10);
      (*v152)(v4, 1, 1, v202);
LABEL_153:
      sub_1000050A4(v4, &unk_100939D90, "8\n\r");
      goto LABEL_154;
    }

LABEL_173:

    sub_100270964(v4);

    v163 = objc_allocWithZone(NSOrderedSet);
    v164 = Array._bridgeToObjectiveC()().super.isa;

    v165 = [v163 initWithArray:v164];

    v166 = v189;
    [v189 hack_overrideReminderIDsOrderingWithOrderedObjectIDs:v165];

    v167 = REMObjectID.codable.getter();
    v4 = v205;
    if ((v205 & 0xC000000000000001) != 0)
    {
      if (v205 >= 0)
      {
        v4 = v205 & 0xFFFFFFFFFFFFFF8;
      }

      v168 = v166;
      v169 = __CocoaDictionary.count.getter();
      v19 = v198;
      v32 = v181;
      v123 = v180;
      if (__OFADD__(v169, 1))
      {
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      v4 = sub_10021C4B4(v4, v169 + 1);
    }

    else
    {
      v122 = v166;
      v19 = v198;
      v32 = v181;
      v123 = v180;
    }

    v124 = swift_isUniquelyReferenced_nonNull_native();
    *&v208 = v4;
    v4 = &v208;
    sub_1002C762C(v166, v167, v124);

    sub_1000513B4(v194);
    v205 = v208;
    v121 = v184;
    if (v184 == v123)
    {
      goto LABEL_206;
    }
  }

  sub_1000513B4(v194);
}

unint64_t sub_100270528()
{
  result = qword_100946C40;
  if (!qword_100946C40)
  {
    sub_1000F514C(&qword_10093F5C0, &qword_1007A1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C40);
  }

  return result;
}

void *sub_10027058C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1002530F8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
      sub_1000F5104(&qword_10093EEA8, &qword_10079D670);
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1002530F8((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_100054B6C(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002706C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_100253138(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000A87C(v4, v11);
      sub_1000F5104(&qword_10093F7D8, &qword_10079E040);
      sub_1000F5104(&unk_10093F7E0, &qword_10079D618);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100253138((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[5 * v6];
      v8 = v12;
      v9 = v13;
      v7[8] = v14;
      *(v7 + 2) = v8;
      *(v7 + 3) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100270804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1002532BC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;

      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      swift_dynamicCast();
      v4 = v10;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002532BC((v5 > 1), v6 + 1, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002709C0(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, void *))
{
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = _swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        v11[2] = v16 + 1;
        a5(v23, &v11[5 * v16 + 4]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = v11[2];
        v20 = v11[3];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        v11[2] = v19 + 1;
        a5(v23, &v11[5 * v19 + 4]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_100270BE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1002536BC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1002536BC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
        v16 = &off_1008E6E50;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100054B6C(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1002536BC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
        v16 = &off_1008E6E50;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100054B6C(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_100270E28(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_100010D04(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_100010D04((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_100005EE0(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_100010D04((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_100005EE0(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_10027102C(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100010D04(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000060C8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100010D04((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_100005EE0(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1000060C8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_100010D04((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_100005EE0(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1002712C4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100253D30(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_100253D30((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v7;
        v10[5] = a2;
      }

      while (v4 != v6);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v13 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        v15 = *v12;
        if (v13 >= v14 >> 1)
        {
          v17 = v14 > 1;
          v18 = v15;
          sub_100253D30(v17, v13 + 1, 1);
          v15 = v18;
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v13];
        v16[4] = v15;
        v16[5] = a2;
        ++v12;
        --v4;
      }

      while (v4);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100271468(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003658F0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100271590(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1000122D0(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_100026AA8(&v36, (v3 + 8 * v14 + 32), v15, v8, &qword_1009391E0, REMObjectID_ptr, &qword_1009391F0);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_10001B860();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_100271948(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100365A00(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100271A98(uint64_t a1)
{
  v6 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = *v1;
  if (!(*v1 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v8);
    result = v10 + v8;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 < 0)
  {
    v18 = *v1;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v19, v8);
  result = v19 + v8;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1000122D0(result);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v2 + 0x10);
  v14 = (*(v2 + 0x18) >> 1) - v13;
  result = sub_100278FCC(&v42, (v2 + 8 * v13 + 32), v14, a1);
  if (result < v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  if (result >= 1)
  {
    v16 = *(v2 + 16);
    v11 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v2 + 16) = v17;
  }

  result = v42;
  if (v15 != v14)
  {
LABEL_11:
    result = sub_10001B860();
    *v6 = v3;
    return result;
  }

LABEL_18:
  v4 = *(v2 + 16);
  v17 = v45;
  v5 = v46;
  v38 = result;
  v39 = v43;
  v40 = v44;
  if (result < 0)
  {
LABEL_22:
    v20 = v17;
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    swift_dynamicCast();
    v22 = v41;
    goto LABEL_33;
  }

  if (v46)
  {
    v20 = v45;
    v21 = v45;
LABEL_32:
    v26 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v22 = *(*(result + 48) + ((v21 << 9) | (8 * v26)));
  }

  else
  {
    v23 = (v44 + 64) >> 6;
    if (v23 <= v45 + 1)
    {
      v24 = v45 + 1;
    }

    else
    {
      v24 = (v44 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_59;
      }

      if (v21 >= v23)
      {
        break;
      }

      v5 = *(v43 + 8 * v21);
      ++v17;
      if (v5)
      {
        v20 = v21;
        goto LABEL_32;
      }
    }

    v22 = 0;
    v5 = 0;
    v20 = v25;
  }

LABEL_33:
  v27 = v39;
  v28 = v20;
  if (!v22)
  {
    goto LABEL_11;
  }

  v29 = v20;
  result = v38;
LABEL_35:
  v30 = v5;
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = v28;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v30 = v5;
    v28 = v36;
    v27 = v39;
    result = v38;
  }

  v3 = *v6;
  v37 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v4 <= *(v37 + 0x18) >> 1)
  {
    v31 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  else
  {
    v31 = v4;
  }

  while (1)
  {
    if (v4 == v31)
    {
      v5 = v30;
      *(v37 + 16) = v31;
      v4 = v31;
      goto LABEL_35;
    }

    *(v37 + 32 + 8 * v4++) = v22;
    if ((result & 0x8000000000000000) == 0)
    {
      break;
    }

    v33 = v30;
    v34 = v28;
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_53:
      *(v37 + 16) = v4;
      goto LABEL_11;
    }

    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    swift_dynamicCast();
    v22 = v41;
LABEL_42:
    result = v38;
    v27 = v39;
    v28 = v34;
    v30 = v33;
    if (!v22)
    {
      goto LABEL_53;
    }
  }

  v35 = v29;
  if (v30)
  {
    v32 = v29;
LABEL_41:
    v33 = (v30 - 1) & v30;
    v34 = v32;
    v22 = *(*(result + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));

    goto LABEL_42;
  }

  while (1)
  {
    v32 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v32 >= ((v40 + 64) >> 6))
    {
      goto LABEL_53;
    }

    v30 = *(v27 + 8 * v32);
    ++v35;
    if (v30)
    {
      v29 = v32;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100271EA8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100365788(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10027218C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100366350(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000F5104(&unk_10093F690, &qword_10079D4A8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100272438(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003679E0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100272574(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 count];
  v11 = *v2;
  v12 = *(*v2 + 2);
  v13 = &v10[v12];
  if (__OFADD__(v12, v10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v10;
  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = *(v11 + 3) >> 1, v17 < v13))
  {
    if (v12 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v12;
    }

    v11 = sub_1003658F0(isUniquelyReferenced_nonNull_native, v18, 1, v11);
    v17 = *(v11 + 3) >> 1;
  }

  v19 = *(v11 + 2);
  v20 = v17 - v19;
  sub_10027D33C(v9, &v11[32 * v19 + 32], v17 - v19);
  if (v21 < v14)
  {
    goto LABEL_16;
  }

  if (v21 >= 1)
  {
    v22 = *(v11 + 2);
    v23 = __OFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      __break(1u);
      goto LABEL_33;
    }

    *(v11 + 2) = v24;
  }

  if (v21 == v20)
  {
LABEL_17:
    v26 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    if (v26 == sub_1000F5104(&qword_10093CB40, &qword_1007A4450))
    {
      goto LABEL_13;
    }

    v27 = *(v11 + 2);
    sub_10027D940(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    while (1)
    {
      sub_10014F5CC(v36, &v34);
      if (!v35)
      {
        break;
      }

      sub_1000050A4(&v34, &qword_100939ED0, &qword_100791B10);
      v28 = *(v11 + 3);
      v29 = v28 >> 1;
      if ((v28 >> 1) < v27 + 1)
      {
        v11 = sub_1003658F0((v28 > 1), v27 + 1, 1, v11);
        v29 = *(v11 + 3) >> 1;
      }

      sub_10014F5CC(v36, &v32);
      if (v33)
      {
        if (v27 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v27;
        }

        v31 = &v11[32 * v27 + 32];
        while (1)
        {
          sub_100005EE0(&v32, &v34);
          if (v30 == v27)
          {
            break;
          }

          sub_1000050A4(v36, &qword_100939ED0, &qword_100791B10);
          sub_100005EE0(&v34, v31);
          ++v27;
          dispatch thunk of IteratorProtocol.next()();
          sub_10014F5CC(v36, &v32);
          v31 += 32;
          if (!v33)
          {
            goto LABEL_19;
          }
        }

        sub_10000607C(&v34);
        v27 = v30;
        *(v11 + 2) = v30;
      }

      else
      {
LABEL_19:
        sub_1000050A4(&v32, &qword_100939ED0, &qword_100791B10);
        *(v11 + 2) = v27;
      }
    }

LABEL_33:
    sub_1000050A4(v36, &qword_100939ED0, &qword_100791B10);
    (*(v5 + 8))(v9, v4);
    result = sub_1000050A4(&v34, &qword_100939ED0, &qword_100791B10);
    goto LABEL_14;
  }

LABEL_13:
  result = (*(v5 + 8))(v9, v4);
LABEL_14:
  *v2 = v11;
  return result;
}

void _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0()
{
  v1 = v0;
  if ((sub_100273748() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v34 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_1009360E8;
        v6 = v34;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_100425A50(v34, 0);
        type metadata accessor for REMCDTemplateSection();
        v8 = [objc_allocWithZone(NSFetchRequest) init];
        v9 = [swift_getObjCClassFromMetadata() entity];
        [v8 setEntity:v9];

        [v8 setAffectedStores:0];
        [v8 setPredicate:v7];

        [v8 setPropertiesToFetch:0];
        [v8 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v8 setSortDescriptors:isa];

        v11 = NSManagedObjectContext.fetch<A>(_:)();
        v12 = [v1 sectionIDsOrderingAsData];
        if (v12)
        {
          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v14, v16);
          v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v35 = v36;

          if (qword_100935DA8 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_100006654(v18, qword_10093F4A0);
          v19 = v1;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v36 = v33;
            *v22 = 136315138;
            v23 = [v19 remObjectID];
            if (v23)
            {
              v24 = v23;
              v25 = [v23 description];

              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;
            }

            else
            {
              v26 = 7104878;
              v28 = 0xE300000000000000;
            }

            v32 = sub_10000668C(v26, v28, &v36);

            *(v22 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v20, v21, "REMCDTemplate+CloudKit#sortChildSections(): Sorted child sections {cdTemplate: %s}", v22, 0xCu);
            sub_10000607C(v33);
          }
        }

        else
        {
          v17 = v11;
        }

        sub_100270E28(v17, type metadata accessor for REMCDTemplateSection);

        v29 = objc_allocWithZone(NSMutableOrderedSet);
        v30 = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v29 initWithArray:v30];

        [v1 setSections:v31];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10027324C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F4A0);
  v1 = sub_100006654(v0, qword_10093F4A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_10027331C(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
      result = 0x6E6F697461657263;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x6341746E65726170;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x53676E6974726F73;
      break;
    case 16:
      result = 0x694C656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10027353C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10027331C(*a1);
  v5 = v4;
  if (v3 == sub_10027331C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002735C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10027331C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100273628()
{
  sub_10027331C(*v0);
  String.hash(into:)();
}

Swift::Int sub_10027367C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10027331C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002736DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10027D52C();
  *a2 = result;
  return result;
}

unint64_t sub_10027370C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10027331C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100273748()
{
  v1 = [v0 managedObjectContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v0 recordID]) != 0))
  {
    v6 = v5;
    if ([v4 containerShouldSortChildrenAfterFetchingWithRecordID:v5])
    {
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_10093F4A0);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (sections) deferred {templateRecordID: %{public}@}", v11, 0xCu);
        sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

        v8 = v9;
        v9 = v13;
      }

      v14 = 1;
      v6 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t static REMCDTemplate.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDTemplate();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDTemplate.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v13 setAccount:a2];
      [v13 mergeDataFromRecord:a1 accountID:v12];

      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10093F4A0);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
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

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::String __swiftcall REMCDTemplate.recordType()()
{
  v0 = 0x6574616C706D6554;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDTemplate.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v46 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = type metadata accessor for REMCDTemplate();
  v49.receiver = v3;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "mergeDataFromRecord:accountID:", from.super.isa, v10);

  v12 = [(objc_class *)from.super.isa recordID];
  v13 = [v12 recordName];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = [v3 ckIdentifierFromRecordName:v13];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v14];

  v15 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v16 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v48 = 0;
  v17 = v3;
  v18 = from.super.isa;
  sub_1004D6DF4(v18, v15, v16, v17, v17, v18, &v48, ObjectType);
  if (v48 == 1)
  {
    if (qword_100935DA8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093F4A0);
    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v23 = 136446722;
      v24 = [v20 ckIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v46[0] = v26;
      v46[1] = v28;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v29 = Optional.descriptionOrNil.getter();
      v31 = v30;

      v32 = sub_10000668C(v29, v31, &v47);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2082;
      [v20 markedForDeletion];
      v33 = Bool.yesno.getter();
      v35 = sub_10000668C(v33, v34, &v47);

      *(v23 + 14) = v35;
      *(v23 + 22) = 2082;
      v36 = [v20 sourceListIDURL];
      if (v36)
      {
        v37 = v36;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = type metadata accessor for URL();
      (*(*(v39 - 8) + 56))(v9, v38, 1, v39);
      v40 = Optional.descriptionOrNil.getter();
      v42 = v41;
      sub_1000050A4(v9, &unk_1009441F0, &qword_100795760);
      v43 = sub_10000668C(v40, v42, &v47);

      *(v23 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v21, v22, "REMCDTemplate.mergeData(from record:accountID:) will insert pending post-save action '.notify_SharedToMeListPinnedStateDidBecomeStale' due to change in 'sourceListIDURL' {ckIdentifier: %{public}s, markedForDeletion: %{public}s, sourceListIDURL: %{public}s}", v23, 0x20u);
      swift_arrayDestroy();
    }

    v44 = [v20 storeControllerManagedObjectContext];
    if (v44)
    {
      v45 = v44;
      [v44 setPendingPostSaveActions:{objc_msgSend(v44, "pendingPostSaveActions") | 4}];
    }
  }
}

void sub_100274408(_BYTE *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v156[1] = a5;
  v162 = a4;
  v163 = a3;
  v164 = a2;
  v161 = 0;
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v160 = v156 - v8;
  v9 = type metadata accessor for URL();
  v158 = *(v9 - 8);
  v159 = v9;
  v10 = *(v158 + 64);
  __chkstk_darwin(v9);
  v156[0] = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v156 - v14;
  v16 = type metadata accessor for UUID();
  v157 = *(v16 - 8);
  v17 = *(v157 + 64);
  __chkstk_darwin(v16);
  v19 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v156 - v25;
  __chkstk_darwin(v27);
  v29 = v156 - v28;
  __chkstk_darwin(v30);
  v32 = v156 - v31;
  __chkstk_darwin(v33);
  v35 = v156 - v34;
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v39 = v156 - v38;
  switch(*a1)
  {
    case 1:
      v62 = CKRecord.subscript.getter();
      v63 = v164;
      if (v62)
      {
        v167 = v62;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v40 = sub_10013E558(v165, v166);

          if (v40)
          {
            [v63 setColor:v40];
            goto LABEL_111;
          }
        }
      }

      [v63 setColor:0];
      return;
    case 2:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v66 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v67 = *(v66 - 8);
      isa = 0;
      if ((*(v67 + 48))(v39, 1, v66) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v67 + 8))(v39, v66);
      }

      [v164 setCreationDate:isa];
      goto LABEL_54;
    case 3:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v56 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v57 = *(v56 - 8);
      isa = 0;
      if ((*(v57 + 48))(v35, 1, v56) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v57 + 8))(v35, v56);
      }

      [v164 setLastModifiedDate:isa];
      goto LABEL_54;
    case 4:
      return;
    case 5:
      v69 = [v163 encryptedValues];
      v70 = String._bridgeToObjectiveC()();
      v71 = [v69 objectForKeyedSubscript:v70];
      swift_unknownObjectRelease();

      if (v71)
      {
        v167 = v71;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v72 = swift_dynamicCast();
        if (v72)
        {
          v73 = v165;
        }

        else
        {
          v73 = 0;
        }

        if (v72)
        {
          v74 = v166;
        }

        else
        {
          v74 = 0;
        }
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      v98 = [v164 membershipsOfRemindersInSectionsChecksum];
      if (v98)
      {
        v99 = v98;
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        if (v74)
        {
          if (v100 == v73 && v74 == v102)
          {

            return;
          }

          v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v103)
          {

            return;
          }
        }

        else
        {
        }
      }

      else if (!v74)
      {
        return;
      }

      v104 = v164;
      v162 = [v164 membershipsOfRemindersInSectionsChecksum];
      v105 = [v104 membershipsOfRemindersInSectionsAsData];
      if (v105)
      {
        v106 = v105;
        v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;
      }

      else
      {
        v107 = 0;
        v109 = 0xF000000000000000;
      }

      v110 = [v104 membershipsOfRemindersInSectionsAsData];
      v111 = &selRef_setPublicLinkLastModifiedDate_;
      if (v110)
      {
        v112 = v110;
        v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        v116 = v161;
        static REMJSONRepresentable.fromJSONData(_:)();
        v161 = v116;
        if (v116)
        {
          sub_10001BBA0(v113, v115);

          goto LABEL_103;
        }

        sub_10001BBA0(v113, v115);
        v117 = v165;
        v111 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v117 = 0;
      }

      if (v74)
      {
        v123 = String._bridgeToObjectiveC()();
      }

      else
      {
        v123 = 0;
      }

      [v104 v111[215]];

      v124 = sub_1004E183C();
      if (v125 >> 60 == 15)
      {
        v126 = 0;
      }

      else
      {
        v127 = v124;
        v128 = v125;
        v126 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v127, v128);
      }

      v129 = v161;
      [v104 setMembershipsOfRemindersInSectionsAsData:v126];

      if (!v117)
      {

        sub_100031A14(v107, v109);
        return;
      }

      v130 = v117;
      sub_1005EB1B0(v130);
      if (!v129)
      {

        sub_100031A14(v107, v109);
        return;
      }

LABEL_103:
      if (qword_100935DA8 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      sub_100006654(v131, qword_10093F4A0);
      v132 = v104;
      swift_errorRetain();
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *v135 = 136446722;
        v136 = sub_1001424F8();
        v138 = sub_10000668C(v136, v137, &v165);

        *(v135 + 4) = v138;
        *(v135 + 12) = 2082;
        v139 = [v132 remObjectID];
        if (v139)
        {
          v140 = v139;
          v141 = [v139 description];
          v164 = v132;
          v142 = v141;

          v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v144;

          v132 = v164;
        }

        else
        {
          v145 = 0xE300000000000000;
          v143 = 7104878;
        }

        v150 = sub_10000668C(v143, v145, &v165);

        *(v135 + 14) = v150;
        *(v135 + 22) = 2082;
        swift_getErrorValue();
        v151 = Error.rem_errorDescription.getter();
        v153 = sub_10000668C(v151, v152, &v165);

        *(v135 + 24) = v153;
        _os_log_impl(&_mh_execute_header, v133, v134, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v135, 0x20u);
        swift_arrayDestroy();
      }

      v154 = v162;
      [v132 setMembershipsOfRemindersInSectionsChecksum:v162];

      if (v109 >> 60 == 15)
      {
        v155 = 0;
      }

      else
      {
        sub_100029344(v107, v109);
        v155 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v107, v109);
      }

      [v132 setMembershipsOfRemindersInSectionsAsData:v155];
      sub_100031A14(v107, v109);

      return;
    case 6:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v80 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v81 = *(v80 - 8);
      isa = 0;
      if ((*(v81 + 48))(v32, 1, v80) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v81 + 8))(v32, v80);
      }

      [v164 setMostRecentPublicLinkUpdateRequestDate:isa];
      goto LABEL_54;
    case 7:
      v68 = [v163 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      if (v166)
      {
        v40 = String._bridgeToObjectiveC()();
      }

      else
      {
        v40 = 0;
      }

      [v164 setName:v40];
      goto LABEL_111;
    case 8:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      if (v165 == 2)
      {
        v84 = 0;
        v85 = v164;
        v86 = v162;
      }

      else
      {
        v85 = v164;
        v86 = v162;
        if (v165)
        {
          v97 = v164;
          v84 = [v164 account];
          v85 = v97;
        }

        else
        {
          v84 = 0;
        }
      }

      [v85 setParentAccount:v84];

      *v86 = 1;
      return;
    case 9:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v40 = 0;
      v60 = v166;
      if (v166 >> 60 != 15)
      {
        v61 = v165;
        v40 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v61, v60);
      }

      [v164 setPublicLinkConfigurationData:v40];
      goto LABEL_111;
    case 0xA:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v82 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v83 = *(v82 - 8);
      isa = 0;
      if ((*(v83 + 48))(v29, 1, v82) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v83 + 8))(v29, v82);
      }

      [v164 setPublicLinkCreationDate:isa];
      goto LABEL_54;
    case 0xB:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v53 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v54 = *(v53 - 8);
      isa = 0;
      if ((*(v54 + 48))(v26, 1, v53) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v54 + 8))(v26, v53);
      }

      [v164 setPublicLinkExpirationDate:isa];
      goto LABEL_54;
    case 0xC:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v58 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v59 = *(v58 - 8);
      isa = 0;
      if ((*(v59 + 48))(v23, 1, v58) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v59 + 8))(v23, v58);
      }

      [v164 setPublicLinkLastModifiedDate:isa];
      goto LABEL_54;
    case 0xD:
      v75 = [v163 encryptedValues];
      v76 = String._bridgeToObjectiveC()();
      v77 = [v75 objectForKeyedSubscript:v76];
      swift_unknownObjectRelease();

      v78 = v164;
      if (!v77)
      {
        goto LABEL_47;
      }

      v167 = v77;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      UUID.init(uuidString:)();

      v79 = v157;
      if ((*(v157 + 48))(v15, 1, v16) == 1)
      {
        sub_1000050A4(v15, &unk_100939D90, "8\n\r");
LABEL_47:
        [v78 setPublicLinkURLUUID:0];
      }

      else
      {
        (*(v79 + 32))(v19, v15, v16);
        v122 = UUID._bridgeToObjectiveC()().super.isa;
        [v78 setPublicLinkURLUUID:v122];

        (*(v79 + 8))(v19, v16);
      }

      return;
    case 0xE:
      v49 = sub_1004E183C();
      v51 = v50;

      if (v51 >> 60 == 15)
      {
        v52 = 0;
      }

      else
      {
        v52 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v49, v51);
      }

      [v164 setSectionIDsOrderingAsData:v52];

      _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
      return;
    case 0xF:
      v64 = CKRecord.subscript.getter();
      v65 = v164;
      if (v64 && (v167 = v64, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        isa = String._bridgeToObjectiveC()();

        [v65 setSortingStyle:isa];
LABEL_54:
      }

      else
      {
        if (qword_100935DA8 != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for Logger();
        sub_100006654(v87, qword_10093F4A0);
        v88 = v65;
        v40 = Logger.logObject.getter();
        v89 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v167 = v91;
          *v90 = 136446210;
          v92 = [v88 ckIdentifier];
          if (v92)
          {
            v93 = v92;
            v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v95;
          }

          else
          {
            v94 = 0;
            v96 = 0;
          }

          v165 = v94;
          v166 = v96;
          sub_1000F5104(&unk_100939E40, &qword_100791BD0);
          v146 = Optional.descriptionOrNil.getter();
          v148 = v147;

          v149 = sub_10000668C(v146, v148, &v167);

          *(v90 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v40, v89, "Template (ckIdentifier: %{public}s) does not have a sorting style", v90, 0xCu);
          sub_10000607C(v91);
        }

LABEL_111:
      }

      return;
    case 0x10:
      v41 = [v163 encryptedValues];
      v42 = String._bridgeToObjectiveC()();
      v43 = [v41 objectForKeyedSubscript:v42];
      swift_unknownObjectRelease();

      v44 = v164;
      v45 = v162;
      if (!v43)
      {
        goto LABEL_8;
      }

      v167 = v43;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      v46 = v160;
      URL.init(string:)();

      v48 = v158;
      v47 = v159;
      if ((*(v158 + 48))(v46, 1, v159) == 1)
      {
        sub_1000050A4(v160, &unk_1009441F0, &qword_100795760);
LABEL_8:
        [v44 setSourceListIDURL:0];
      }

      else
      {
        v118 = v156[0];
        (*(v48 + 32))(v156[0], v160, v47);
        URL._bridgeToObjectiveC()(v119);
        v121 = v120;
        [v44 setSourceListIDURL:v120];

        (*(v48 + 8))(v118, v47);
      }

      *v45 = 1;
      return;
    default:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      if (v166)
      {
        v40 = String._bridgeToObjectiveC()();
      }

      else
      {
        v40 = 0;
      }

      [v164 setBadgeEmblem:v40];
      goto LABEL_111;
  }
}

CKRecord_optional __swiftcall REMCDTemplate.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v240 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v241 = &v202 - v11;
  v229 = type metadata accessor for UUID();
  v12 = *(v229 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v229);
  v15 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v239 = &v202 - v21;
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v238 = &v202 - v27;
  __chkstk_darwin(v28);
  v232 = &v202 - v29;
  __chkstk_darwin(v30);
  v237 = &v202 - v31;
  __chkstk_darwin(v32);
  v242 = &v202 - v33;
  __chkstk_darwin(v34);
  v236 = &v202 - v35;
  __chkstk_darwin(v36);
  v231 = &v202 - v37;
  __chkstk_darwin(v38);
  v235 = &v202 - v39;
  __chkstk_darwin(v40);
  v243 = &v202 - v41;
  __chkstk_darwin(v42);
  v234 = &v202 - v43;
  __chkstk_darwin(v44);
  v230 = &v202 - v45;
  *&v47 = __chkstk_darwin(v46).n128_u64[0];
  v233 = &v202 - v48;
  if ([v1 isOwnedByCurrentUser])
  {
    v226 = v25;
    v227 = v19;
    v208 = v15;
    v49 = type metadata accessor for REMCDTemplate();
    v247.receiver = v1;
    v247.super_class = v49;
    v50 = objc_msgSendSuper2(&v247, "newlyCreatedRecord");
    v52 = v50;
    if (v50)
    {
      v207 = v6;
      v225 = v2;
      v53 = 0;
      v224 = (v3 + 56);
      v223 = (v3 + 48);
      v206 = (v3 + 16);
      v205 = (v3 + 8);
      v211 = "ShowingLargeAttachments";
      v222 = " {ckRecord.recordType: ";
      v221 = (v12 + 56);
      v220 = (v12 + 48);
      v204 = (v12 + 16);
      v203 = (v12 + 8);
      v219 = "csInsensitiveHashtagLabels";
      v218 = " a non-nil String";
      v217 = "PublicLinkLastModifiedDate";
      v216 = "PublicLinkCreationDate";
      v215 = "SectionIDsOrderingAsData";
      v214 = "PublicLinkConfigurationData";
      v213 = "TemplateIdentifier";
      v210 = "indersInSectionsChecksum";
      v212 = "LinkUpdateRequestDate";
      v54 = "8\n\r";
      v55 = v229;
      v57 = v242;
      v56 = v243;
      v228 = v1;
      v209 = v50;
      do
      {
        v71 = *(&off_1008DDD20 + v53++ + 32);
        switch(v71)
        {
          case 1:
            v113 = [v1 color];
            if (v113)
            {
              v114 = v113;
              v115 = sub_1001E1818();
              if (v116)
              {
                *(&v245 + 1) = &type metadata for String;
                v246 = &protocol witness table for String;
                *&v244 = v115;
                *(&v244 + 1) = v116;
              }

              else
              {
                v246 = 0;
                v244 = 0u;
                v245 = 0u;
              }

              sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
              CKRecordKeyValueSetting.subscript.setter();
            }

            else
            {
              CKRecord.subscript.setter();
            }

            goto LABEL_11;
          case 2:
            v122 = [v1 creationDate];
            v96 = v55;
            if (v122)
            {
              v123 = v230;
              v124 = v122;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v125 = 0;
            }

            else
            {
              v125 = 1;
              v123 = v230;
            }

            v166 = v1;
            v178 = type metadata accessor for Date();
            v179 = *(v178 - 8);
            (*(v179 + 56))(v123, v125, 1, v178);
            v180 = v233;
            sub_100031B58(v123, v233, &unk_100938850, qword_100795AE0);
            if ((*(v179 + 48))(v180, 1, v178) == 1)
            {
              sub_1000050A4(v180, &unk_100938850, qword_100795AE0);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
              *(&v245 + 1) = v178;
              v246 = &protocol witness table for Date;
              v181 = sub_1000103CC(&v244);
              (*(v179 + 32))(v181, v180, v178);
            }

            v57 = v242;
            v56 = v243;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_96;
          case 3:
            v100 = [v1 lastModifiedDate];
            if (v100)
            {
              v101 = v100;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v102 = 0;
            }

            else
            {
              v102 = 1;
            }

            v170 = type metadata accessor for Date();
            v171 = *(v170 - 8);
            (*(v171 + 56))(v56, v102, 1, v170);
            v172 = v234;
            sub_100031B58(v56, v234, &unk_100938850, qword_100795AE0);
            if ((*(v171 + 48))(v172, 1, v170) == 1)
            {
              sub_1000050A4(v172, &unk_100938850, qword_100795AE0);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
              *(&v245 + 1) = v170;
              v246 = &protocol witness table for Date;
              v173 = sub_1000103CC(&v244);
              (*(v171 + 32))(v173, v172, v170);
            }

            v57 = v242;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v1 = v228;
            v54 = "8\n\r";
            break;
          case 4:
            break;
          case 5:
            v134 = v54;
            v135 = [v1 membershipsOfRemindersInSectionsAsData];
            if (v135)
            {
              v136 = v135;
              v137 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v139 = v138;

              v140 = objc_opt_self();
              sub_100029344(v137, v139);
              isa = Data._bridgeToObjectiveC()().super.isa;
              v142 = [v140 assetForData:isa];

              CKRecord.subscript.setter();
              sub_10001BBA0(v137, v139);
              sub_10001BBA0(v137, v139);
            }

            else
            {
              CKRecord.subscript.setter();
            }

            v182 = [v52 encryptedValues];
            v183 = [v1 membershipsOfRemindersInSectionsChecksum];
            if (v183)
            {
              v184 = v183;
              v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v187 = v186;

              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v185;
              *(&v244 + 1) = v187;
            }

            else
            {
              v246 = 0;
              v244 = 0u;
              v245 = 0u;
            }

            v57 = v242;
            v56 = v243;
            v54 = v134;
            swift_getObjectType();
            goto LABEL_85;
          case 6:
            v147 = [v1 mostRecentPublicLinkUpdateRequestDate];
            v96 = v55;
            if (v147)
            {
              v148 = v231;
              v149 = v147;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v150 = 0;
            }

            else
            {
              v150 = 1;
              v148 = v231;
            }

            v166 = v1;
            v167 = type metadata accessor for Date();
            v168 = *(v167 - 8);
            (*(v168 + 56))(v148, v150, 1, v167);
            v169 = v235;
            sub_100031B58(v148, v235, &unk_100938850, qword_100795AE0);
            if ((*(v168 + 48))(v169, 1, v167) == 1)
            {
              goto LABEL_93;
            }

            goto LABEL_94;
          case 7:
            v126 = [v52 encryptedValues];
            v127 = [v1 name];
            if (v127)
            {
              v128 = v127;
              v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v130 = v1;
              v131 = v54;
              v133 = v132;

              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v129;
              *(&v244 + 1) = v133;
              v57 = v242;
              v56 = v243;
              v54 = v131;
              v1 = v130;
            }

            else
            {
              v246 = 0;
              v244 = 0u;
              v245 = 0u;
            }

            swift_getObjectType();
LABEL_85:
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
            break;
          case 8:
            v154 = [v1 parentAccount];
            v155 = v154;
            if (v154)
            {
            }

            *(&v245 + 1) = &type metadata for Bool;
            v246 = &protocol witness table for Bool;
            LOBYTE(v244) = v155 != 0;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            v156 = &v245 + 1;
            goto LABEL_67;
          case 9:
            v108 = [v1 publicLinkConfigurationData];
            if (v108)
            {
              v109 = v108;
              v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;

              *(&v245 + 1) = &type metadata for Data;
              v246 = &protocol witness table for Data;
              *&v244 = v110;
              *(&v244 + 1) = v112;
              v57 = v242;
              v56 = v243;
            }

            else
            {
              v246 = 0;
              v244 = 0u;
              v245 = 0u;
            }

            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            v156 = &v246;
LABEL_67:
            v177 = *(v156 - 32) | 0x8000000000000000;
            goto LABEL_79;
          case 10:
            v151 = [v1 publicLinkCreationDate];
            if (v151)
            {
              v152 = v151;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v153 = 0;
            }

            else
            {
              v153 = 1;
            }

            v196 = type metadata accessor for Date();
            v197 = *(v196 - 8);
            (*(v197 + 56))(v57, v153, 1, v196);
            v198 = v236;
            sub_100031B58(v57, v236, &unk_100938850, qword_100795AE0);
            if ((*(v197 + 48))(v198, 1, v196) == 1)
            {
              sub_1000050A4(v198, &unk_100938850, qword_100795AE0);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
              *(&v245 + 1) = v196;
              v246 = &protocol witness table for Date;
              v199 = sub_1000103CC(&v244);
              (*(v197 + 32))(v199, v198, v196);
            }

            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v57 = v242;
            goto LABEL_11;
          case 11:
            v95 = [v1 publicLinkExpirationDate];
            v96 = v55;
            if (v95)
            {
              v97 = v232;
              v98 = v95;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v99 = 0;
            }

            else
            {
              v99 = 1;
              v97 = v232;
            }

            v166 = v1;
            v167 = type metadata accessor for Date();
            v168 = *(v167 - 8);
            (*(v168 + 56))(v97, v99, 1, v167);
            v169 = v237;
            sub_100031B58(v97, v237, &unk_100938850, qword_100795AE0);
            if ((*(v168 + 48))(v169, 1, v167) == 1)
            {
LABEL_93:
              sub_1000050A4(v169, &unk_100938850, qword_100795AE0);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
LABEL_94:
              *(&v245 + 1) = v167;
              v246 = &protocol witness table for Date;
              v195 = sub_1000103CC(&v244);
              (*(v168 + 32))(v195, v169, v167);
            }

            v57 = v242;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            v56 = v243;
LABEL_96:
            v55 = v96;
            v54 = "8\n\r";
            v1 = v166;
            break;
          case 12:
            v103 = v54;
            v104 = [v1 publicLinkLastModifiedDate];
            if (v104)
            {
              v105 = v226;
              v106 = v104;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v107 = 0;
            }

            else
            {
              v107 = 1;
              v105 = v226;
            }

            v174 = type metadata accessor for Date();
            v175 = *(v174 - 8);
            (*(v175 + 56))(v105, v107, 1, v174);
            v176 = v238;
            sub_100031B58(v105, v238, &unk_100938850, qword_100795AE0);
            if ((*(v175 + 48))(v176, 1, v174) == 1)
            {
              sub_1000050A4(v176, &unk_100938850, qword_100795AE0);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
              *(&v245 + 1) = v174;
              v246 = &protocol witness table for Date;
              v70 = sub_1000103CC(&v244);
              (*(v175 + 32))(v70, v176, v174);
            }

            v57 = v242;
            v54 = v103;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_11;
          case 13:
            [v52 encryptedValues];
            v143 = [v1 publicLinkURLUUID];
            if (v143)
            {
              v144 = v227;
              v145 = v143;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v146 = 0;
            }

            else
            {
              v146 = 1;
              v144 = v227;
            }

            (*v221)(v144, v146, 1, v55);
            v188 = v239;
            sub_100031B58(v144, v239, &unk_100939D90, v54);
            if ((*v220)(v188, 1, v55))
            {
              sub_1000050A4(v188, &unk_100939D90, v54);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
            }

            else
            {
              v189 = v54;
              v190 = v208;
              (*v204)(v208, v188, v55);
              sub_1000050A4(v188, &unk_100939D90, v189);
              v191 = UUID.uuidString.getter();
              v193 = v192;
              v194 = v190;
              v54 = v189;
              (*v203)(v194, v55);
              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v191;
              *(&v244 + 1) = v193;
            }

            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
            v57 = v242;
            goto LABEL_11;
          case 14:
            v83 = [v1 sectionIDsOrderingAsData];
            if (v83)
            {
              v84 = v83;
              v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v87 = v86;

              v88 = objc_opt_self();
              sub_100029344(v85, v87);
              v89 = v1;
              v90 = v54;
              v91 = Data._bridgeToObjectiveC()().super.isa;
              v92 = [v88 assetForData:v91];

              v54 = v90;
              v1 = v89;
              CKRecord.subscript.setter();
              sub_10001BBA0(v85, v87);
              v93 = v85;
              v94 = v87;
              v57 = v242;
              v56 = v243;
              sub_10001BBA0(v93, v94);
            }

            else
            {
              CKRecord.subscript.setter();
            }

            break;
          case 15:
            v117 = [v1 sortingStyle];
            if (v117)
            {
              v118 = v117;
              v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v121 = v120;

              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v119;
              *(&v244 + 1) = v121;
              v57 = v242;
              v56 = v243;
            }

            else
            {
              v246 = 0;
              v244 = 0u;
              v245 = 0u;
            }

            goto LABEL_78;
          case 16:
            [v52 encryptedValues];
            v79 = [v1 sourceListIDURL];
            v80 = v54;
            if (v79)
            {
              v81 = v79;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v82 = 0;
            }

            else
            {
              v82 = 1;
            }

            v157 = v240;
            v158 = v225;
            (*v224)(v240, v82, 1, v225);
            v159 = v157;
            v160 = v241;
            sub_100031B58(v159, v241, &unk_1009441F0, &qword_100795760);
            if ((*v223)(v160, 1, v158))
            {
              sub_1000050A4(v241, &unk_1009441F0, &qword_100795760);
              v244 = 0u;
              v245 = 0u;
              v246 = 0;
              v52 = v209;
              v54 = v80;
              v1 = v228;
            }

            else
            {
              v161 = v207;
              v162 = v241;
              (*v206)(v207, v241, v158);
              sub_1000050A4(v162, &unk_1009441F0, &qword_100795760);
              v163 = URL.absoluteString.getter();
              v165 = v164;
              (*v205)(v161, v158);
              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v163;
              *(&v244 + 1) = v165;
              v54 = "8\n\r";
              v55 = v229;
              v57 = v242;
              v1 = v228;
              v52 = v209;
            }

            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.setter();
            swift_unknownObjectRelease();
LABEL_11:
            v56 = v243;
            break;
          default:
            v72 = [v1 badgeEmblem];
            if (v72)
            {
              v73 = v72;
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v75 = v1;
              v76 = v54;
              v78 = v77;

              *(&v245 + 1) = &type metadata for String;
              v246 = &protocol witness table for String;
              *&v244 = v74;
              *(&v244 + 1) = v78;
              v56 = v243;
              v54 = v76;
              v1 = v75;
            }

            else
            {
              v246 = 0;
              v244 = 0u;
              v245 = 0u;
            }

LABEL_78:
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_79:
            CKRecordKeyValueSetting.subscript.setter();
            break;
        }
      }

      while (v53 != 17);
    }
  }

  else
  {
    if (qword_100935DA8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_10093F4A0);
    v59 = v1;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v244 = v63;
      *v62 = 136446210;
      v64 = [v59 remObjectID];
      if (v64)
      {
        v65 = v64;
        v66 = [v64 description];

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;
      }

      else
      {
        v69 = 0xE300000000000000;
        v67 = 7104878;
      }

      v200 = sub_10000668C(v67, v69, &v244);

      *(v62 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v60, v61, "REMCDTemplate will not be used to represent a public template, which is fetched from a template's public link, and is not expected to be shared, we shouldn't upload it for non-owner (templateID: %{public}s)", v62, 0xCu);
      sub_10000607C(v63);
    }

    v52 = 0;
  }

  v201 = v52;
  result.value.super.isa = v201;
  result.is_nil = v51;
  return result;
}

Swift::Void __swiftcall REMCDTemplate.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093F4A0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

void *REMCDTemplate.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 savedReminders];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for REMCDSavedReminder();
    sub_10027D940(&qword_100944240, type metadata accessor for REMCDSavedReminder);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100278454(v3);

    v5 = sub_100270E28(v4, type metadata accessor for REMCDSavedReminder);

    sub_100271468(v5);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100277CC0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100278FCC(&v5, (v3 + 32), v2, v1);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100277DF0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_10001B860();
  if (v7 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

void *sub_100277EBC(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &qword_1009391E0, REMObjectID_ptr, &qword_1009391F0);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100277FFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000F5104(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1002781A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100278278(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10027836C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F5104(&qword_10093F7B0, &unk_10079D600);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_100278454(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100279C80(&v5, (v3 + 32), v2, v1, type metadata accessor for REMCDSavedReminder, &qword_100944240, type metadata accessor for REMCDSavedReminder);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278534(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &unk_10093F5F0, REMAssignment_ptr, &qword_100939230);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_1002785FC(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &unk_10093F600, REMHashtag_ptr, &qword_10093AA28);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1002786C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100943FC0, &unk_10079D380);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1002787BC(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaDictionary.count.getter();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v8, 0);

    a4 = sub_100278DD0(&v10, (a2 + 32), v8, a1, a3, a4);
    sub_10001B860();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void *sub_10027888C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &qword_100939EE0, off_1008D41D0, &qword_100944210);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278954(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &qword_10093CFE0, off_1008D4190, &qword_10093B280);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278A1C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, (v3 + 32), v2, v1, &unk_10093F790, off_1008D4158, &qword_10093CC38);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278AE4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100279C80(&v5, (v3 + 32), v2, v1, type metadata accessor for REMCDSavedAttachment, &unk_10093F780, type metadata accessor for REMCDSavedAttachment);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278BC4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_10027A110(&v5, (v3 + 32), v2, v1);
    sub_10001B860();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278C74(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100278DD0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_100278FCC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1002791DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100279334(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1002795D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 16 * v17);
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100279730(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100279888(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002799DC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100279C80(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  sub_10027D940(a6, a7);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void sub_100279EBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10027D870(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      v24 = v23;
      v25 = v31;
      sub_10027D8D8(v24, v31, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      sub_10027D8D8(v25, a2, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10027A110(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.nextKey()())
      {
        goto LABEL_31;
      }

      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void sub_10027A30C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RDPermanentlyHiddenReminder();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10027D870(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for RDPermanentlyHiddenReminder);
      v24 = v23;
      v25 = v31;
      sub_10027D8D8(v24, v31, type metadata accessor for RDPermanentlyHiddenReminder);
      sub_10027D8D8(v25, a2, type metadata accessor for RDPermanentlyHiddenReminder);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_10027A560(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10027A6B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10027A80C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F540, &qword_10093F538, &qword_10079DFB8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F538, &qword_10079DFB8);
            v9 = sub_10038D778(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000F5104(&qword_10093F530, &qword_10079B220);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027A9A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F5B0, &qword_10093F5A8, &qword_10079DFD0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
            v9 = sub_10038D778(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027AB44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F630, &qword_10093F628, &qword_10079DFD8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F628, &qword_10079DFD8);
            v9 = sub_100011090(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027ACE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F5D0, &qword_10093A578, &qword_1007A1E10);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
            v9 = sub_100011090(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027AE84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F4E0, &qword_10093CAC0, &unk_10079E1E0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
            v9 = sub_100011090(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}