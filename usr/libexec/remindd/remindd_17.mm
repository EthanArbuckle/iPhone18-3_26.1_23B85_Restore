void __swiftcall REMCDSmartList.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 smartListType];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = REMSmartListType.init(stringValue:)(v7);
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v12 != v13)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
LABEL_11:
          [v1 account];

          return;
        }

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v18 != v19)
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_11;
          }

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          if (v21 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v23 != v24)
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v27;
            if (v26 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v28 != v29)
            {
              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_11;
              }

              v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;
              if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
              {
                v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v35)
                {
                  goto LABEL_11;
                }

                v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v38 = v37;
                if (v36 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v38 != v39)
                {
                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v40 & 1) == 0)
                  {

                    return;
                  }

                  goto LABEL_11;
                }
              }
            }
          }
        }
      }

      goto LABEL_11;
    }
  }
}

Swift::Void __swiftcall REMCDSmartList.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
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
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
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

unint64_t sub_1001E6A64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DDB78, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t _sSo14REMCDSmartListC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo14REMCDSmartListC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s6FieldsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001E6EF0(uint64_t a1)
{
  result = sub_1001E6F18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6F18()
{
  result = qword_10093C988;
  if (!qword_10093C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C988);
  }

  return result;
}

unint64_t sub_1001E6F6C(uint64_t a1)
{
  result = sub_1001E6F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6F94()
{
  result = qword_10093C990;
  if (!qword_10093C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C990);
  }

  return result;
}

unint64_t sub_1001E6FEC()
{
  result = qword_10093C998;
  if (!qword_10093C998)
  {
    sub_1000F514C(&qword_10093C9A0, &qword_10079A468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C998);
  }

  return result;
}

unint64_t sub_1001E7054()
{
  result = qword_10093C9A8;
  if (!qword_10093C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C9A8);
  }

  return result;
}

uint64_t sub_1001E70A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C9B0);
  v1 = sub_100006654(v0, qword_10093C9B0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001E71E4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100935BE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093C9B0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446210;
    v8 = v0[4];
    v9 = sub_1003533B0();
    v11 = sub_10000668C(v9, v10, aBlock);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner BEGIN {persistentStore: %{public}s}", v6, 0xCu);
    sub_10000607C(v7);
  }

  v26 = 0;
  v27 = 0;
  v12 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = &v27;
  v13[4] = &v26;
  v13[5] = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001E7CD8;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008E9DC8;
  v15 = _Block_copy(aBlock);

  [v12 performBlockAndWait:v15];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 134218498;
      swift_beginAccess();
      *(v18 + 4) = v27;
      *(v18 + 12) = 2048;
      swift_beginAccess();
      *(v18 + 14) = v26;
      *(v18 + 22) = 2082;
      v20 = v1[4];
      v21 = sub_1003533B0();
      v23 = sub_10000668C(v21, v22, &v24);

      *(v18 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner FINISH {successfulMigrationCount: %ld, failedMigrationCount: %ld, persistentStore: %{public}s}", v18, 0x20u);
      sub_10000607C(v19);
    }
  }
}

void sub_1001E75C8(uint64_t a1, void *a2, void *a3)
{
  v23 = sub_1001E7874();
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1001E7CE4();
  v13 = BidirectionalCollection<>.slices(by:)();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 56);
    while (1)
    {
      v17 = *(v15 - 3);
      v16 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      swift_unknownObjectRetain();
      v20 = objc_autoreleasePoolPush();
      v21 = sub_1001E82F0(v16, v18, v19);
      if (__OFADD__(*a2, v21))
      {
        break;
      }

      *a2 += v21;
      if (__OFADD__(*a3, v22))
      {
        goto LABEL_15;
      }

      v15 += 4;
      *a3 += v22;
      objc_autoreleasePoolPop(v20);
      swift_unknownObjectRelease();
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    swift_once();
    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10093C9B0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136446210;
      swift_getErrorValue();
      v10 = Error.rem_errorDescription.getter();
      v12 = sub_10000668C(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner failed to fetch Reminders {error: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1001E7874()
{
  v1 = v0;
  v2 = _s10PredicatesOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796DA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100796900;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  *v5 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v8 = sub_100043AA8();
  sub_1000513B4(v5);
  v9 = sub_100050654(inited, v7, 0, v8);

  [v9 setFetchBatchSize:50];
  [v9 setReturnsObjectsAsFaults:0];
  v10 = *(v1 + 24);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

void sub_1001E7AB8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckZoneOwnerName];
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

void sub_1001E7B20(uint64_t *a1, void **a2)
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
  [v2 setCkZoneOwnerName:?];
}

uint64_t sub_1001E7B90()
{

  return swift_deallocClassInstance();
}

id sub_1001E7C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_AutoConvertSharedInlineTags();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001E7CE4()
{
  result = qword_10093CAC8;
  if (!qword_10093CAC8)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CAC8);
  }

  return result;
}

void sub_1001E7F10(char a1, void *a2)
{
  v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v5 = [a2 persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setTransactionAuthor:RDStoreControllerAutoConvertSharedInlineTagsMigrationAuthor];
  [v4 setUndoManager:0];
  [v4 setRetainsRegisteredObjects:1];
  if (sub_1001E7D48())
  {
    type metadata accessor for RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner();
    v6 = swift_allocObject();
    *(v6 + 16) = a1 & 1;
    *(v6 + 24) = v4;
    *(v6 + 32) = a2;
    oslog = v4;
    v7 = a2;
    sub_1001E71E4();
  }

  else
  {
    if (qword_100935BE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093C9B0);
    v9 = a2;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_1003533B0();
      v15 = sub_10000668C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v10, "RDStoreControllerMigrator_AutoConvertSharedInlineTags: Skipping persistentStore since its account is not a CK account {persistentStore: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }
  }
}

void sub_1001E8168(void *a1, void *a2)
{
  *&v8 = 0xD000000000000035;
  *(&v8 + 1) = 0x800000010079A530;
  v4 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
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
    sub_1001B2134(v10);
LABEL_9:
    sub_1001E7F10(1, a1);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000035;
    *(&v10[0] + 1) = 0x800000010079A530;
    [a2 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

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

uint64_t sub_1001E82F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v104 = a1;
  v102 = type metadata accessor for CharacterSet();
  v6 = *(*(v102 - 8) + 64);
  v8 = __chkstk_darwin(v102);
  v101 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = 0;
  v116 = 0;
  v10 = a3 >> 1;
  v11 = 0;
  if (v10 != a2)
  {
    v11 = 0;
    v107 = 0;
    v116 = 0;
    v109 = 0;
    v100 = (v7 + 8);
    v8.n128_u64[0] = 136446722;
    v106 = v8;
    v8.n128_u64[0] = 136446466;
    v105 = v8;
    v103 = v10;
    do
    {
      if (a2 >= v10)
      {
        goto LABEL_70;
      }

      v14 = *(v104 + 8 * a2);
      if ([v14 isSharedViaICloud])
      {
        v15 = [v14 title];
        v110 = v14;
        if (v15)
        {
          v16 = v11;
          v17 = v15;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v121 = v18;
          v122 = v20;
          v21 = v101;
          static CharacterSet.hashtagTokenPrefixCharacters.getter();
          sub_10013BCF4();
          StringProtocol.rangeOfCharacter(from:options:range:)();
          LOBYTE(v17) = v22;
          (*v100)(v21, v102);

          if (v17)
          {
            v23 = _swiftEmptyArrayStorage;
          }

          else
          {
            v124 = _swiftEmptyArrayStorage;
            sub_1002537E0(0, 1, 1);
            v23 = v124;
            v25 = v124[2];
            v24 = v124[3];
            if (v25 >= v24 >> 1)
            {
              sub_1002537E0((v24 > 1), v25 + 1, 1);
              v23 = v124;
            }

            v23[2] = v25 + 1;
            *(v23 + v25 + 32) = 0;
          }

          v11 = v16;
          v14 = v110;
        }

        else
        {
          v23 = _swiftEmptyArrayStorage;
        }

        v26 = [v14 notes];
        if (v26)
        {
          v27 = v11;
          v28 = v26;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v121 = v29;
          v122 = v31;
          v32 = v101;
          static CharacterSet.hashtagTokenPrefixCharacters.getter();
          sub_10013BCF4();
          StringProtocol.rangeOfCharacter(from:options:range:)();
          LOBYTE(v28) = v33;
          (*v100)(v32, v102);

          if ((v28 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v124 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1002537E0(0, v23[2] + 1, 1);
              v23 = v124;
            }

            v36 = v23[2];
            v35 = v23[3];
            if (v36 >= v35 >> 1)
            {
              sub_1002537E0((v35 > 1), v36 + 1, 1);
              v23 = v124;
            }

            v23[2] = v36 + 1;
            *(v23 + v36 + 32) = 1;
          }

          v11 = v27;
          v14 = v110;
        }

        v37 = v23[2];
        if (v37)
        {
          v99 = a2;
          v115 = *(v98 + 24);
          v114 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
          v38 = 32;
          v111 = v23;
          while (1)
          {
            v40 = *(v23 + v38);
            v41 = v114;
            v42 = objc_allocWithZone(v114);
            *&v42[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v14;
            v117 = v40;
            v42[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v40;
            v43 = v115;
            *&v42[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v115;
            v44 = &v42[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
            *v44 = 0;
            v44[1] = 0;
            v45 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
            v3 = v14;
            v46 = v43;
            v47 = [v45 init:v3];
            *&v42[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v47;
            v120.receiver = v42;
            v120.super_class = v41;
            v48 = objc_msgSendSuper2(&v120, "init");
            v119 = v3;

            v118 = v48;
            v50 = sub_1001B5774();
            v52 = v51;
            v53 = v49;
            v54 = v49;
            if (v49 >> 6)
            {
              if (v49 >> 6 != 1)
              {
                v65 = v37;
                if (qword_100935BE0 != -1)
                {
                  swift_once();
                }

                v66 = type metadata accessor for Logger();
                sub_100006654(v66, qword_10093C9B0);
                v67 = v119;
                v68 = Logger.logObject.getter();
                v69 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v68, v69))
                {
                  v113 = v11;
                  v70 = swift_slowAlloc();
                  v121 = swift_slowAlloc();
                  *v70 = v105.n128_u32[0];
                  v71 = [v67 remObjectID];
                  if (v71)
                  {
                    v72 = v71;
                    v3 = [v71 description];

                    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v75 = v74;
                  }

                  else
                  {
                    v75 = 0xE300000000000000;
                    v73 = 7104878;
                  }

                  v83 = sub_10000668C(v73, v75, &v121);

                  *(v70 + 4) = v83;
                  *(v70 + 12) = 2082;
                  if (v117)
                  {
                    v84 = 0x636F447365746F6ELL;
                  }

                  else
                  {
                    v84 = 0x636F44656C746974;
                  }

                  v85 = sub_10000668C(v84, 0xED0000746E656D75, &v121);

                  *(v70 + 14) = v85;
                  _os_log_impl(&_mh_execute_header, v68, v69, "Reminder[%{public}s] conversion succeeded for field %{public}s", v70, 0x16u);
                  swift_arrayDestroy();

                  v11 = v113;
                  v23 = v111;
                }

                else
                {
                }

                v14 = v110;
                if (__OFADD__(v109, 1))
                {
                  goto LABEL_69;
                }

                v39 = v65;
                v107 = ++v109;
                goto LABEL_32;
              }

              v54 = v49 & 0x3F;
            }

            v112 = v54;
            v116 = v37;
            if (qword_100935BE0 != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            sub_100006654(v55, qword_10093C9B0);
            v3 = v119;
            sub_1001E8F50(v50, v52, v53);
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.error.getter();

            sub_1001E8F6C(v50, v52, v53);
            if (os_log_type_enabled(v56, v57))
            {
              v113 = v11;
              v58 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v124 = v108;
              *v58 = v106.n128_u32[0];
              v59 = [v3 remObjectID];
              if (v59)
              {
                v60 = v59;
                v61 = [v59 description];

                v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v64 = v63;
              }

              else
              {
                v64 = 0xE300000000000000;
                v62 = 7104878;
              }

              v76 = sub_10000668C(v62, v64, &v124);

              *(v58 + 4) = v76;
              v3 = 2082;
              *(v58 + 12) = 2082;
              if (v117)
              {
                v77 = 0x636F447365746F6ELL;
              }

              else
              {
                v77 = 0x636F44656C746974;
              }

              v78 = sub_10000668C(v77, 0xED0000746E656D75, &v124);

              *(v58 + 14) = v78;
              *(v58 + 22) = 2082;
              v121 = v50;
              v122 = v52;
              v123 = v112;
              sub_1001E8F88();
              v79 = Error.rem_errorDescription.getter();
              v81 = sub_10000668C(v79, v80, &v124);

              *(v58 + 24) = v81;
              sub_1001E8F6C(v50, v52, v53);
              _os_log_impl(&_mh_execute_header, v56, v57, "Reminder[%{public}s] conversion failed for field %{public}s {error: %{public}s}", v58, 0x20u);
              swift_arrayDestroy();

              v11 = v113;
              v14 = v110;
            }

            else
            {

              sub_1001E8F6C(v50, v52, v53);
            }

            v39 = v116;
            v82 = __OFADD__(v11++, 1);
            v23 = v111;
            if (v82)
            {
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              swift_once();
LABEL_62:
              v88 = type metadata accessor for Logger();
              sub_100006654(v88, qword_10093C9B0);
              swift_errorRetain();
              v89 = Logger.logObject.getter();
              v90 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v121 = v92;
                *v91 = 136446210;
                swift_getErrorValue();
                v93 = Error.rem_errorDescription.getter();
                v95 = sub_10000668C(v93, v94, &v121);

                *(v91 + 4) = v95;
                _os_log_impl(&_mh_execute_header, v89, v90, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner failed to save {error: %{public}s}", v91, 0xCu);
                sub_10000607C(v92);
              }

              else
              {
              }

              if (__OFADD__(v3, v107))
              {
                __break(1u);
              }

              return 0;
            }

            v116 = v11;
LABEL_32:
            ++v38;
            v37 = v39 - 1;
            if (!v37)
            {
              v86 = v119;

              a2 = v99;
              goto LABEL_8;
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      ++a2;
      v10 = v103;
    }

    while (a2 != v103);
  }

  v3 = v11;
  v12 = *(v98 + 24);
  if ([v12 hasChanges])
  {
    v121 = 0;
    if (![v12 save:&v121])
    {
      v87 = v121;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE0 != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v13 = v121;
  }

  return v107;
}

uint64_t sub_1001E8F50(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return result;
    }

    a3 &= 0x3Fu;
  }

  return sub_1001BC0BC(result, a2, a3);
}

uint64_t sub_1001E8F6C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return result;
    }

    a3 &= 0x3Fu;
  }

  return sub_1001BC0F8(result, a2, a3);
}

unint64_t sub_1001E8F88()
{
  result = qword_10093CAD0;
  if (!qword_10093CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CAD0);
  }

  return result;
}

uint64_t sub_1001E8FDC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093CAE0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50[0] = v19;
      *v18 = 136315138;
      v49[0] = v4;
      swift_getMetatypeMetadata();
      v20 = String.init<A>(describing:)();
      v22 = sub_10000668C(v20, v21, v50);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDJSONDecoding can't encode input string as utf8 data {class: %s}", v18, 0xCu);
      sub_10000607C(v19);
    }
  }

  else
  {
    v23 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v49[0] = 0;
    v25 = [v23 JSONObjectWithData:isa options:0 error:v49];

    v26 = v49[0];
    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EF0(v50, v49);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        (*(a2 + 8))(v48, a1, a2);
        sub_100031A14(v12, v14);

        return sub_10000607C(v50);
      }

      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10093CAE0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49[0] = v43;
        *v42 = 136315138;
        v48 = v4;
        swift_getMetatypeMetadata();
        v44 = String.init<A>(describing:)();
        v46 = sub_10000668C(v44, v45, v49);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Invalid JSONSerialization.jsonObject return value {class: %s}", v42, 0xCu);
        sub_10000607C(v43);
      }

      sub_100031A14(v12, v14);

      sub_10000607C(v50);
    }

    else
    {
      v28 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_10093CAE0);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v32 = 136315394;
        v49[0] = v4;
        swift_getMetatypeMetadata();
        v33 = String.init<A>(describing:)();
        v35 = sub_10000668C(v33, v34, v50);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        swift_getErrorValue();
        v36 = Error.localizedDescription.getter();
        v38 = sub_10000668C(v36, v37, v50);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "RDJSONDecoding can't decode JSON {class: %s, error: %s}", v32, 0x16u);
        swift_arrayDestroy();

        sub_100031A14(v12, v14);
      }

      else
      {
        sub_100031A14(v12, v14);
      }
    }
  }

  return (*(*(a1 - 8) + 56))(v47, 1, 1, a1);
}

uint64_t sub_1001E9670()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CAE0);
  v1 = sub_100006654(v0, qword_10093CAE0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001E9AEC(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  if (a3)
  {
    v4 = a3;
    v8 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = v9[2];
    sub_100005EF0(a1, v17);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_100260B84(v9);
      *(v5 + v8) = v9;
      if (v10)
      {
LABEL_4:
        if (v10 <= v9[2])
        {
          sub_10031DE1C(v17, a2, v4);
          *(v5 + v8) = v9;
          return swift_endAccess();
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_100260B70(v10);
    *(v9 + v5) = v10;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_arrays;
  swift_beginAccess();
  v10 = *(v9 + v3);
  v8 = v10[2];
  sub_100005EF0(a1, v17);
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + v5) = v10;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if (v8 > v10[2])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  a1 = (v10 + 3);
  v4 = v10[v8 + 3];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v10[v8 + 3] = v4;
  if ((v13 & 1) == 0)
  {
LABEL_20:
    v4 = sub_1003658F0(0, *(v4 + 2) + 1, 1, v4);
    *(a1 + 8 * v8) = v4;
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1003658F0((v14 > 1), v15 + 1, 1, v4);
    *(a1 + 8 * v8) = v4;
  }

  *(v4 + 2) = v15 + 1;
  sub_100005EE0(v17, &v4[32 * v15 + 32]);
  *(v9 + v5) = v10;
  return swift_endAccess();
}

void sub_1001E9CF0(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v93 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014F5CC(a1, &v109);
  if (*(&v110[0] + 1))
  {
    if (swift_dynamicCast())
    {
      *(&v110[0] + 1) = &type metadata for String;
      v109 = v106;
      v17 = a2;
      v18 = a3;
LABEL_94:
      sub_1001E9AEC(&v109, v17, v18);
      goto LABEL_95;
    }
  }

  else
  {
    sub_1000050A4(&v109, &qword_100939ED0, &qword_100791B10);
  }

  sub_10014F5CC(a1, &v109);
  if (*(&v110[0] + 1))
  {
    v19 = swift_dynamicCast();
    (*(v13 + 56))(v11, v19 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v20 = UUID.uuidString.getter();
      *(&v110[0] + 1) = &type metadata for String;
      *&v109 = v20;
      *(&v109 + 1) = v21;
      sub_1001E9AEC(&v109, a2, a3);
      (*(v13 + 8))(v16, v12);
LABEL_95:
      sub_10000607C(&v109);
      return;
    }
  }

  else
  {
    sub_1000050A4(&v109, &qword_100939ED0, &qword_100791B10);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_1000050A4(v11, &unk_100939D90, "8\n\r");
  sub_10014F5CC(a1, &v109);
  v101 = v4;
  v99 = a3;
  if (*(&v110[0] + 1))
  {
    v22 = sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    if (swift_dynamicCast())
    {
      v23 = v106;
      v24 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_arrays;
      swift_beginAccess();
      a1 = *(v4 + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v24) = a1;
      v94 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_12:
        v27 = a1[2];
        v26 = a1[3];
        if (v27 >= v26 >> 1)
        {
          a1 = sub_100366818((v26 > 1), v27 + 1, 1, a1);
        }

        a1[2] = v27 + 1;
        a1[v27 + 4] = _swiftEmptyArrayStorage;
        *(v4 + v24) = a1;
        swift_endAccess();
        v28 = *(v23 + 16);
        if (v28)
        {
          v100 = v22;
          v98 = v23;
          v16 = v23 + 32;
          a3 = &type metadata for String;
          while (1)
          {
            sub_100005EF0(v16, &v109);
            sub_100005EF0(&v109, &v106);
            sub_10014F63C();
            if (swift_dynamicCast())
            {
              break;
            }

            sub_100005EF0(&v109, &v106);
            if (swift_dynamicCast())
            {

              goto LABEL_22;
            }

            sub_100005EF0(&v109, &v106);
            sub_1001E9CF0(&v106, 0, 0);
            sub_1000050A4(&v106, &qword_100939ED0, &qword_100791B10);
            sub_10000607C(&v109);
LABEL_17:
            v16 += 32;
            if (!--v28)
            {

              v22 = v100;
              goto LABEL_90;
            }
          }

LABEL_22:
          a1 = *(v4 + v24);
          v22 = a1[2];
          sub_100005EF0(&v109, &v106);
          swift_beginAccess();
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v24) = a1;
          if (v29)
          {
            if (!v22)
            {
              goto LABEL_114;
            }
          }

          else
          {
            a1 = sub_100260B70(a1);
            *(v4 + v24) = a1;
            if (!v22)
            {
              goto LABEL_114;
            }
          }

          if (v22 > a1[2])
          {
            goto LABEL_115;
          }

          v30 = a1 + 3;
          v31 = a1[v22 + 3];
          v32 = swift_isUniquelyReferenced_nonNull_native();
          a1[v22 + 3] = v31;
          if ((v32 & 1) == 0)
          {
            v31 = sub_1003658F0(0, *(v31 + 2) + 1, 1, v31);
            v30[v22] = v31;
          }

          v34 = *(v31 + 2);
          v33 = *(v31 + 3);
          v23 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v31 = sub_1003658F0((v33 > 1), v34 + 1, 1, v31);
            v30[v22] = v31;
          }

          *(v31 + 2) = v23;
          sub_100005EE0(&v106, &v31[32 * v34 + 32]);
          v4 = v101;
          *(v101 + v24) = a1;
          swift_endAccess();
          sub_10000607C(&v109);
          goto LABEL_17;
        }

LABEL_90:
        v74 = *(v4 + v24);
        v75 = v74[2];
        v76 = v99;
        if (!v75)
        {
          if (qword_100935BE8 == -1)
          {
LABEL_98:
            v81 = type metadata accessor for Logger();
            sub_100006654(v81, qword_10093CAE0);
            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              *v84 = 0;
              _os_log_impl(&_mh_execute_header, v82, v83, "JSON encode error: expected at least one array", v84, 2u);
            }

            return;
          }

LABEL_125:
          swift_once();
          goto LABEL_98;
        }

        v77 = v74[v75 + 3];
        swift_beginAccess();

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v78 = v74[2];
          if (v78)
          {
LABEL_93:
            v79 = v78 - 1;
            v80 = v74[v79 + 4];
            v74[2] = v79;
            *(v4 + v24) = v74;
            swift_endAccess();

            *(&v110[0] + 1) = v22;
            *&v109 = v77;
            v17 = v94;
            v18 = v76;
            goto LABEL_94;
          }
        }

        else
        {
          v74 = sub_100260B70(v74);
          v78 = v74[2];
          if (v78)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
        goto LABEL_123;
      }

LABEL_120:
      a1 = sub_100366818(0, a1[2] + 1, 1, a1);
      *(v4 + v24) = a1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000050A4(&v109, &qword_100939ED0, &qword_100791B10);
  }

  sub_10014F5CC(a1, &v109);
  if (!*(&v110[0] + 1))
  {
    sub_1000050A4(&v109, &qword_100939ED0, &qword_100791B10);
    return;
  }

  sub_1000F5104(&qword_10093AB30, &qword_100798088);
  if (swift_dynamicCast())
  {
    v35 = v106;
    v36 = sub_1001F67C8(_swiftEmptyArrayStorage);
    v16 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
    swift_beginAccess();
    v37 = *(v4 + v16);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v16) = v37;
    v94 = a2;
    if ((v38 & 1) == 0)
    {
      v37 = sub_100366374(0, v37[2] + 1, 1, v37);
      *(v4 + v16) = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_100366374((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v37[v40 + 4] = v36;
    *(v4 + v16) = v37;
    swift_endAccess();
    sub_10014F5CC(a1, &v109);
    if (*(&v110[0] + 1))
    {
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        v93 = v35;
        v23 = 0;
        v42 = v106 + 64;
        v41 = *(v106 + 64);
        v98 = v106;
        v43 = 1 << *(v106 + 32);
        v44 = -1;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        v24 = v44 & v41;
        v22 = (v43 + 63) >> 6;
        v96 = v22;
        v95 = v16;
        v97 = v106 + 64;
        if ((v44 & v41) == 0)
        {
          goto LABEL_49;
        }

        while (2)
        {
          v45 = v23;
LABEL_57:
          v48 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v49 = v48 | (v45 << 6);
          v50 = (*(v98 + 48) + 16 * v49);
          v51 = *v50;
          a1 = v50[1];
          sub_100005EF0(*(v98 + 56) + 32 * v49, &v104);
          *&v106 = v51;
          *(&v106 + 1) = a1;
          sub_100005EE0(&v104, &v107);

LABEL_58:
          v109 = v106;
          v110[0] = v107;
          v110[1] = v108;
          v52 = *(&v106 + 1);
          if (*(&v106 + 1))
          {
            v100 = v109;
            sub_100005EE0(v110, &v106);
            sub_100005EF0(&v106, &v104);
            sub_10014F63C();
            if (swift_dynamicCast())
            {
            }

            else
            {
              sub_100005EF0(&v106, &v104);
              if (!swift_dynamicCast())
              {
                sub_100005EF0(&v106, &v104);
                a1 = v4;
                sub_1001E9CF0(&v104, v100, v52);

                sub_1000050A4(&v104, &qword_100939ED0, &qword_100791B10);
                sub_10000607C(&v106);
                if (v24)
                {
                  continue;
                }

                goto LABEL_49;
              }
            }

            v22 = *(v4 + v16);
            v53 = *(v22 + 16);
            sub_100005EF0(&v106, &v104);
            swift_beginAccess();

            v54 = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + v16) = v22;
            if (v54)
            {
              if (!v53)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v22 = sub_100260B84(v22);
              *(v4 + v16) = v22;
              if (!v53)
              {
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }
            }

            if (v53 > *(v22 + 16))
            {
              goto LABEL_117;
            }

            v4 = (v22 + 24);
            if (v105)
            {
              sub_100005EE0(&v104, v103);
              v55 = v4[v53];
              v56 = swift_isUniquelyReferenced_nonNull_native();
              v102 = v4[v53];
              a1 = v102;
              v4[v53] = 0x8000000000000000;
              v16 = sub_100005F4C(v100, v52);
              v58 = a1[2];
              v59 = (v57 & 1) == 0;
              v60 = v58 + v59;
              if (__OFADD__(v58, v59))
              {
                goto LABEL_118;
              }

              a3 = v57;
              if (a1[3] >= v60)
              {
                if ((v56 & 1) == 0)
                {
                  a1 = &v102;
                  sub_100374FD8();
                }
              }

              else
              {
                sub_10036D7E8(v60, v56);
                a1 = v102;
                v61 = sub_100005F4C(v100, v52);
                if ((a3 & 1) != (v62 & 1))
                {
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return;
                }

                v16 = v61;
              }

              v69 = v102;
              if (a3)
              {
                a1 = (v102[7] + 32 * v16);
                sub_10000607C(a1);
                sub_100005EE0(v103, a1);
              }

              else
              {
                v102[(v16 >> 6) + 8] |= 1 << v16;
                v70 = (v69[6] + 16 * v16);
                *v70 = v100;
                v70[1] = v52;
                sub_100005EE0(v103, (v69[7] + 32 * v16));
                v71 = v69[2];
                v72 = __OFADD__(v71, 1);
                v73 = v71 + 1;
                if (v72)
                {
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

                v69[2] = v73;
              }

              v4[v53] = v69;
              v4 = v101;
              a3 = v99;
              v16 = v95;
            }

            else
            {
              sub_1000050A4(&v104, &qword_100939ED0, &qword_100791B10);
              a1 = v4[v53];
              v63 = sub_100005F4C(v100, v52);
              if (v64)
              {
                v65 = v63;
                v66 = v4[v53];
                v67 = swift_isUniquelyReferenced_nonNull_native();
                a1 = v4[v53];
                v102 = a1;
                v4[v53] = 0x8000000000000000;
                if ((v67 & 1) == 0)
                {
                  sub_100374FD8();
                  a1 = v102;
                }

                v68 = *(a1[6] + 16 * v65 + 8);

                sub_100005EE0((a1[7] + 32 * v65), v103);
                sub_1003331C0(v65, a1);
                v4[v53] = a1;
              }

              else
              {
                memset(v103, 0, 32);
              }

              sub_1000050A4(v103, &qword_100939ED0, &qword_100791B10);
              v4 = v101;
            }

            v42 = v97;
            *(v4 + v16) = v22;
            swift_endAccess();

            sub_10000607C(&v106);
            v22 = v96;
            if (v24)
            {
              continue;
            }

LABEL_49:
            if (v22 <= (v23 + 1))
            {
              v46 = v23 + 1;
            }

            else
            {
              v46 = v22;
            }

            v47 = v46 - 1;
            while (1)
            {
              v45 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v45 >= v22)
              {
                v24 = 0;
                v108 = 0u;
                v23 = v47;
                v106 = 0u;
                v107 = 0u;
                goto LABEL_58;
              }

              v24 = *(v42 + 8 * v45);
              ++v23;
              if (v24)
              {
                v23 = v45;
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          break;
        }

        goto LABEL_104;
      }
    }

    else
    {
      sub_1000050A4(&v109, &qword_100939ED0, &qword_100791B10);
    }

    [v35 encodeWithCoder:v4];
LABEL_104:
    v74 = *(v4 + v16);
    v85 = v74[2];
    if (v85)
    {
      v77 = v74[v85 + 3];
      swift_beginAccess();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v86 = v74[2];
        if (!v86)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_107:
        v87 = v86 - 1;
        v88 = v74[v87 + 4];
        v74[2] = v87;
        *(v4 + v16) = v74;
        swift_endAccess();

        *(&v110[0] + 1) = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
        *&v109 = v77;
        sub_1001E9AEC(&v109, v94, a3);
        swift_unknownObjectRelease();
        goto LABEL_95;
      }

LABEL_123:
      v74 = sub_100260B84(v74);
      v86 = v74[2];
      if (!v86)
      {
        goto LABEL_124;
      }

      goto LABEL_107;
    }

    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100006654(v89, qword_10093CAE0);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "JSON encode error: expected at least one dict", v92, 2u);
    }

    swift_unknownObjectRelease();
  }
}

id sub_1001EAC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDJSONCoder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001EAD48(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48[1] = a3;
  v60 = a1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = v48 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v13 = *(v54 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v54);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s9UtilitiesO12SortingStyleOMa();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v58 = *(v25 - 8);
  v59 = v25;
  v26 = *(v58 + 64);
  __chkstk_darwin(v25);
  v28 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
  v48[3] = a2;
  v53 = [v29 initWithFetchResultTokenToDiffAgainst:a2];
  REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  v30 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v31 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v31 - 8) + 104))(v24, v30, v31);
  swift_storeEnumTagMultiPayload();
  sub_100539164(v20);
  sub_1001EB4C4(v24);
  (*(v13 + 104))(v16, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v54);
  (*(v55 + 104))(v12, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v56);
  v32 = v60;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v33 = v57;
  v34 = sub_100753DE0(v32);
  if (v33)
  {

    (*(v58 + 8))(v28, v59);
  }

  else
  {
    v36 = v52;
    v35 = v53;
    sub_100754818(v34);
    v38 = v37;
    v57 = v28;

    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_100006654(v39, qword_100951B08);
    v56 = v48;
    v61 = v38;
    __chkstk_darwin(v40);
    v48[-2] = v41;
    sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB90(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
    v42 = Sequence.map<A>(skippingError:_:)();

    v61 = v42;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB90(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
    sub_1001EB528();
    v43 = Sequence<>.unique()();

    (*(v58 + 8))(v57, v59);

    v44 = *(v43 + 16);

    v45 = [v48[2] fetchResultTokenToDiffAgainst];
    v46 = v50;
    sub_100534D44(v45, v50);

    v47 = v51;
    v61 = v44;
    (*(v51 + 16))(v49, v46, v36);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v47 + 8))(v46, v36);
  }
}

unint64_t sub_1001EB444(uint64_t a1)
{
  result = sub_1001EB46C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EB46C()
{
  result = qword_10093CB68;
  if (!qword_10093CB68)
  {
    type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CB68);
  }

  return result;
}

uint64_t sub_1001EB4C4(uint64_t a1)
{
  v2 = _s9UtilitiesO12SortingStyleOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001EB528()
{
  result = qword_10093CB90;
  if (!qword_10093CB90)
  {
    sub_1000F514C(&unk_100939E40, &qword_100791BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CB90);
  }

  return result;
}

void sub_1001EB5A4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CE28(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    Set.Iterator.init(_cocoa:)();
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      do
      {
        v21 = v15;
        sub_1001EF00C(&v21);

        if (v2)
        {
          break;
        }

        v6 = v13;
        v7 = v14;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        swift_dynamicCast();
        v15 = v21;
        v13 = v6;
        v14 = v7;
      }

      while (v21);
    }

LABEL_19:
    sub_10001B860();
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= ((v5 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v12 = *(v4 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1001EB7C0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CE28(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    Set.Iterator.init(_cocoa:)();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_10093CFE0, off_1008D4190), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_25:
      sub_10001B860();
      return;
    }

LABEL_18:
    v12 = [v11 hashtagLabel];
    if (v12 && (v13 = v12, v14 = [v12 name], v13, v14))
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100365788(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_100365788((v17 > 1), v18 + 1, 1, v21);
      }

      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1001EBA94()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CB98);
  v1 = sub_100006654(v0, qword_10093CB98);
  if (qword_1009364E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975200);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001EBBF0()
{
  v1 = OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001EBC64(void *a1)
{
  v2 = type metadata accessor for REMFeatureFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v8 = result;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = a1;
    if ([v8 isKindOfClass:ObjCClassFromMetadata])
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        v14 = sub_1001EC7F4(v12);
LABEL_8:
        v17 = v14;

        return v17;
      }
    }

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v13 = v10;
        v14 = sub_1001EF264(v16);
        goto LABEL_8;
      }
    }

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v13 = v10;
        v14 = sub_1001F0EFC(v19);
        goto LABEL_8;
      }
    }

    type metadata accessor for REMCDListSection();
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()] && (v20 = swift_dynamicCastClass()) != 0)
    {
      v21 = v20;
      (*(v3 + 104))(v6, enum case for REMFeatureFlags.donateSectionsToSpotlight(_:), v2);
      v22 = v10;
      v23 = REMFeatureFlags.isEnabled.getter();
      (*(v3 + 8))(v6, v2);
      if (v23)
      {
        v24 = sub_1001F2694(v21);
LABEL_20:
        v28 = v24;

        return v28;
      }
    }

    else
    {
      type metadata accessor for REMCDSmartListSection();
      if (![v8 isKindOfClass:swift_getObjCClassFromMetadata()] || (v25 = swift_dynamicCastClass()) == 0)
      {

        return 0;
      }

      v26 = v25;
      (*(v3 + 104))(v6, enum case for REMFeatureFlags.donateSectionsToSpotlight(_:), v2);
      v22 = v10;
      v27 = REMFeatureFlags.isEnabled.getter();
      (*(v3 + 8))(v6, v2);
      if (v27)
      {
        v24 = sub_1001F3D6C(v26);
        goto LABEL_20;
      }
    }

    return 0;
  }

  return result;
}

void *sub_1001EECC0(void *a1, id a2)
{
  v30 = _swiftEmptySetSingleton;
  v3 = [a2 contactHandles];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100799D70;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v5 + 40) = CNContactPhoneNumbersKey;
  *(v5 + 48) = CNContactEmailAddressesKey;
  v6 = CNContactPhoneNumbersKey;
  v7 = CNContactEmailAddressesKey;
  v8 = sub_1001EBBF0();
  v9 = [v4 emails];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100270804(v10);

  v12 = [v4 phones];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100270804(v13);

  v15 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(v11, v14, v5);

  if (v15)
  {
    v16 = [objc_allocWithZone(CNContactFormatter) init];
    v17 = [v16 stringFromContact:v15];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100378434(&v29, v18, v20);

      goto LABEL_7;
    }
  }

LABEL_7:
  v21 = [a1 assignments];
  if (v21)
  {
    v22 = v21;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CE28(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001EB5A4(v23);
  }

  v24 = v30;
  v25 = v30[2];
  if (!v25)
  {

    return _swiftEmptyArrayStorage;
  }

  v26 = sub_1003689CC(v30[2], 0);
  v27 = sub_1002791DC(&v29, v26 + 4, v25, v24);

  result = sub_10001B860();
  if (v27 == v25)
  {

    return v26;
  }

  __break(1u);
  return result;
}

void sub_1001EF00C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 assignee];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 firstName];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      sub_100378434(&v32, v5, v7);
    }
  }

  v8 = [v1 assignee];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lastName];

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_100378434(&v32, v11, v13);
    }
  }

  v14 = [v1 assignee];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 middleName];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100378434(&v32, v17, v19);
    }
  }

  v20 = [v1 assignee];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 displayName];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      sub_100378434(&v32, v23, v25);
    }
  }

  v26 = [v1 assignee];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 nickname];

    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_100378434(&v32, v29, v31);
    }
  }
}

id sub_1001F0DD4()
{
  v1 = [v0 firstName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [v0 lastName];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v6;
      v10._object = v8;
      String.append(_:)(v10);

      return v3;
    }
  }

  result = [v0 firstName];
  if (result || (result = [v0 lastName]) != 0)
  {
    v12 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  return result;
}

void sub_1001F5450(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    if (qword_100935BF0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10093CB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v15, v16, "CoreSpotlight deleteAllSearchableItems done, upgrading spotlightIndexVersion to %ld", v17, 0xCu);
    }

    v18 = [objc_opt_self() daemonUserDefaults];
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    [v18 setSpotlightIndexVersion:v6];

LABEL_11:
    if (!a3)
    {
      return;
    }

    goto LABEL_12;
  }

  swift_errorRetain();
  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093CB98);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_10000668C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occured trying to deleteAllSearchableItems {error: %s}", v8, 0xCu);
    sub_10000607C(v9);

    goto LABEL_11;
  }

  if (!a3)
  {
    return;
  }

LABEL_12:
  a3(a1);
}

void sub_1001F57B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F5E20();
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791300;
  v7 = [v2 domainIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13[4] = a1;
  v13[5] = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100042968;
  v13[3] = &unk_1008E9EF0;
  v12 = _Block_copy(v13);

  [v5 deleteSearchableItemsWithDomainIdentifiers:isa completionHandler:v12];
  _Block_release(v12);
}

void sub_1001F599C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_10000F188;
  }

  else
  {
    v6 = REMCDList.cleanUpAfterLocalObjectMerge();
    v5 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_10003E124(a1);
  v8 = sub_1001F5E20();
  v10[4] = sub_1001F6F98;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100019200;
  v10[3] = &unk_1008E9EA0;
  v9 = _Block_copy(v10);

  [v2 searchableIndex:v8 reindexAllSearchableItemsWithAcknowledgementHandler:v9];
  _Block_release(v9);
}

void sub_1001F5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = sub_100008D30;
  }

  else
  {
    v7 = REMCDList.cleanUpAfterLocalObjectMerge();
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_10003E124(a2);
  v9 = sub_1001F5E20();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12[4] = sub_1001F6258;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100019200;
  v12[3] = &unk_1008E9E28;
  v11 = _Block_copy(v12);

  [v3 searchableIndex:v9 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v11];
  _Block_release(v11);
}

id sub_1001F5E20()
{
  v1 = [v0 indexName];
  v2 = [v0 protectionClass];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v0 bundleIdentifier];
  if (v5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(CSSearchableIndex) initWithName:v1 protectionClass:v7 bundleIdentifier:v6];

  return v8;
}

uint64_t sub_1001F5F20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for REMSpotlightBadgeType();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = REMListBadgeEmblemDefault;
  v10 = [a1 badgeEmblem];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = objc_allocWithZone(REMListBadge);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithRawValue:v13];

  v15 = [v14 emoji];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *a2 = v17;
    a2[1] = v19;
    v20 = enum case for REMSpotlightBadgeType.emoji(_:);
    v21 = *(v29 + 104);

    return v21(a2, v20, v4);
  }

  else
  {
    v23 = [v14 emblem];
    if (!v23)
    {
      v23 = v9;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *v8 = v25;
    v8[1] = v27;
    (*(v29 + 104))(v8, enum case for REMSpotlightBadgeType.emblem(_:), v4);
    return (*(v29 + 32))(a2, v8, v4);
  }
}

id sub_1001F61F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F6258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1001F6280()
{
  result = qword_10093CBF8;
  if (!qword_10093CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CBF8);
  }

  return result;
}

void sub_1001F62D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    Set.Iterator.init(_cocoa:)();
    v4 = v54;
    v5 = v55;
    v7 = v56;
    v6 = v57;
    v8 = v58;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v47 = v7;
  v48 = a3;
  v51 = v5;
  v52 = v4;
LABEL_8:
  v12 = v6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_100942E50, off_1008D41E0), swift_dynamicCast(), v16 = v53, v6 = v12, v15 = v8, !v53))
    {
LABEL_46:
      sub_10001B860();
      return;
    }

LABEL_18:
    v17 = [v16 ckIdentifier];
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == a2 && v21 == a3)
    {

LABEL_31:
      v12 = v6;
      v8 = v15;
      v5 = v51;
      v4 = v52;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {

        goto LABEL_31;
      }

LABEL_25:
      v24 = [v16 displayName];
      v50 = v15;
      if (v24)
      {
        goto LABEL_26;
      }

      v31 = [v16 firstName];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v34;

        v35 = [v16 lastName];
        if (v35)
        {
          v36 = v35;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v53 = v33;
          v40._countAndFlagsBits = 32;
          v40._object = 0xE100000000000000;
          String.append(_:)(v40);
          v41._countAndFlagsBits = v37;
          v41._object = v39;
          String.append(_:)(v41);

          goto LABEL_27;
        }
      }

      v24 = [v16 firstName];
      if (v24 || (v24 = [v16 lastName]) != 0)
      {
LABEL_26:
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        goto LABEL_27;
      }

      v27 = 0;
LABEL_27:
      v28 = [v16 ckIdentifier];
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (!v27)
        {
          goto LABEL_36;
        }
      }

      else if (!v27)
      {
LABEL_36:
        v30 = 0;
        goto LABEL_37;
      }

      v30 = String._bridgeToObjectiveC()();

LABEL_37:
      v42 = objc_allocWithZone(CSPerson);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v44 = String._bridgeToObjectiveC()();

      v45 = [v42 initWithDisplayName:v30 handles:isa handleIdentifier:v44];

      v12 = v6;
      v8 = v50;
      v5 = v51;
      a3 = v48;
      v4 = v52;
      if (v45)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v50;
        goto LABEL_8;
      }
    }
  }

  v13 = v12;
  v14 = v8;
  v6 = v12;
  if (v8)
  {
LABEL_14:
    v15 = (v14 - 1) & v14;
    v16 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 64) >> 6))
    {
      goto LABEL_46;
    }

    v14 = *(v5 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1001F67C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943140, &qword_1007A3B60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v13, &unk_100939260, &unk_100797220);
      v5 = v13;
      v6 = v14;
      result = sub_100005F4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005EE0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1001F68F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F6940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F69A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 < 4 || a5 == 0)
  {
  }

  if (a5 == 1)
  {
  }

  return result;
}

void sub_1001F6A10(void (*a1)(void), uint64_t a2)
{
  v4 = REMDaemonCoreSpotlightIndexName;
  v5 = static NSFileProtectionType.rem_spotlightIndexFileProtection.getter();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = REMAppBundleIdentifier;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = REMAppBundleIdentifier;
    v8 = 0;
  }

  v18 = [objc_allocWithZone(CSSearchableIndex) initWithName:v4 protectionClass:v8 bundleIdentifier:v7];

  v9 = [objc_opt_self() daemonUserDefaults];
  v10 = [v9 spotlightIndexVersion];

  if (v10)
  {
    v11 = [v10 integerValue];

    if (v11 >= 6)
    {
      if (a1)
      {
        a1(0);
      }

      return;
    }
  }

  else
  {
    v11 = -1;
  }

  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093CB98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 6;
    _os_log_impl(&_mh_execute_header, v13, v14, "Device spotlight index is outdated, removing the index. {device: %ld, required: %ld}", v15, 0x16u);
  }

  v16 = swift_allocObject();
  v16[2] = 6;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1001F6D30;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008E9FE0;
  v17 = _Block_copy(aBlock);
  sub_10003E124(a1);

  [v18 deleteAllSearchableItemsWithCompletionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_1001F6D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 < 4 || a5 == 0)
  {
  }

  if (a5 == 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1001F6D3C(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1001F6D3C(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1001F69A0(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1001F69A0(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_1001F6FAC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v49 - v12;
  v61 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  if (v13)
  {
    v69 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v13 & ~(v13 >> 63), 0);
    v64 = v69;
    if (v61)
    {
      v14 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v14 = _HashTable.startBucket.getter();
      v15 = *(a1 + 36);
    }

    v66 = v14;
    v67 = v15;
    v68 = v61 != 0;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v49 = v1;
      v17 = 0;
      v57 = (v4 + 48);
      v58 = (v4 + 56);
      v52 = (v4 + 8);
      v53 = (v4 + 16);
      v51 = a1 + 56;
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v18 = a1;
      }

      v55 = v18;
      v50 = a1 + 64;
      v59 = v3;
      v62 = v10;
      v56 = v13;
      while (v17 < v13)
      {
        if (__OFADD__(v17++, 1))
        {
          goto LABEL_45;
        }

        v21 = v66;
        v22 = v68;
        v63 = v67;
        sub_100411D80(v66, v67, v68, a1);
        v24 = v23;
        v25 = [v23 identifier];
        if (v25)
        {
          v26 = v25;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = a1;
        (*v58)(v10, v27, 1, v3);
        v29 = v10;
        v30 = v60;
        sub_100031B58(v29, v60, &unk_100939D90, "8\n\r");
        if ((*v57)(v30, 1, v3))
        {
          sub_1000050A4(v30, &unk_100939D90, "8\n\r");
          v31 = 0xE300000000000000;
          v32 = 7104878;
        }

        else
        {
          v33 = v54;
          (*v53)(v54, v30, v3);
          sub_1000050A4(v30, &unk_100939D90, "8\n\r");
          v32 = UUID.uuidString.getter();
          v31 = v34;
          (*v52)(v33, v3);
        }

        v35 = v64;
        v69 = v64;
        v37 = v64[2];
        v36 = v64[3];
        if (v37 >= v36 >> 1)
        {
          sub_100026EF4((v36 > 1), v37 + 1, 1);
          v35 = v69;
        }

        v35[2] = v37 + 1;
        v38 = &v35[2 * v37];
        v38[4] = v32;
        v38[5] = v31;
        v64 = v35;
        if (v61)
        {
          v3 = v59;
          v10 = v62;
          if (!v22)
          {
            goto LABEL_50;
          }

          a1 = v28;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v13 = v56;
          sub_1000F5104(&qword_10093B310, &qword_100798930);
          v19 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v19(v65, 0);
        }

        else
        {
          v3 = v59;
          v10 = v62;
          if (v22)
          {
            goto LABEL_51;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          a1 = v28;
          v39 = 1 << *(v28 + 32);
          if (v21 >= v39)
          {
            goto LABEL_46;
          }

          v40 = v21 >> 6;
          v41 = *(v51 + 8 * (v21 >> 6));
          if (((v41 >> v21) & 1) == 0)
          {
            goto LABEL_47;
          }

          if (*(v28 + 36) != v63)
          {
            goto LABEL_48;
          }

          v42 = v41 & (-2 << (v21 & 0x3F));
          if (v42)
          {
            v39 = __clz(__rbit64(v42)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v13 = v56;
          }

          else
          {
            v43 = v40 << 6;
            v44 = v40 + 1;
            v45 = (v50 + 8 * v40);
            v13 = v56;
            while (v44 < (v39 + 63) >> 6)
            {
              v47 = *v45++;
              v46 = v47;
              v43 += 64;
              ++v44;
              if (v47)
              {
                sub_100010E34(v21, v63, 0);
                v39 = __clz(__rbit64(v46)) + v43;
                goto LABEL_40;
              }
            }

            sub_100010E34(v21, v63, 0);
LABEL_40:
            v10 = v62;
          }

          v48 = *(a1 + 36);
          v66 = v39;
          v67 = v48;
          v68 = 0;
        }

        if (v17 == v13)
        {
          sub_100010E34(v66, v67, v68);
          return;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }
}

void sub_1001F754C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((*(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    sub_1001F7AC0(v0);
    objc_autoreleasePoolPop(v12);
    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10093CC70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDHashtagLabelUpdater.start() must be called exactly once", v11, 2u);
  }
}

uint64_t sub_1001F773C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CC70);
  v1 = sub_100006654(v0, qword_10093CC70);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001F7804()
{
  v0 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  sub_1000EECAC(v0, qword_100974C50);
  v1 = sub_100006654(v0, qword_100974C50);
  v2 = sub_1000F5104(&unk_10093D1D8, &unk_10079ADD0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  if (qword_100935C18 != -1)
  {
    swift_once();
  }

  v5 = qword_10093CC90;
  *v1 = qword_10093CC90;
  v6 = qword_100935C08;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v9 = sub_100006654(v8, qword_100974C68);
  (*(*(v8 - 8) + 16))(&v1[v3], v9, v8);
  *&v1[v4] = 50;
  v10 = enum case for Publishers.TimeGroupingStrategy.byTimeOrCount<A>(_:);
  v11 = *(*(v0 - 8) + 104);

  return v11(v1, v10, v0);
}

uint64_t sub_1001F7990()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000EECAC(v0, qword_100974C68);
  sub_100006654(v0, qword_100974C68);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

void sub_1001F79E0()
{
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791340;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v1 = [swift_getObjCClassFromMetadata() cdEntityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 48) = v6;
  *(v0 + 56) = v8;
  qword_10093CC88 = v0;
}

uint64_t sub_1001F7AC0(uint64_t a1)
{
  v180 = *a1;
  v140 = type metadata accessor for DispatchWorkItemFlags();
  v139 = *(v140 - 8);
  v2 = *(v139 + 64);
  __chkstk_darwin(v140);
  v137 = v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for DispatchQoS();
  v136 = *(v138 - 8);
  v4 = *(v136 + 64);
  __chkstk_darwin(v138);
  v135 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchTimeInterval();
  v133 = *(v134 - 8);
  v6 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = (v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for DispatchTime();
  v171 = *(v158 - 8);
  v8 = *(v171 + 64);
  v9 = __chkstk_darwin(v158);
  v131 = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = v128 - v11;
  v149 = sub_1000F5104(&qword_10093D100, &qword_10079AD70);
  v148 = *(v149 - 8);
  v12 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = v128 - v13;
  v152 = sub_1000F5104(&qword_10093D108, &qword_10079AD78);
  v151 = *(v152 - 8);
  v14 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = v128 - v15;
  v155 = sub_1000F5104(&qword_10093D110, &qword_10079AD80);
  v154 = *(v155 - 8);
  v16 = *(v154 + 64);
  __chkstk_darwin(v155);
  v153 = v128 - v17;
  v169 = sub_1000F5104(&qword_10093D118, &qword_10079AD88);
  v175 = *(v169 - 8);
  v18 = *(v175 + 64);
  __chkstk_darwin(v169);
  v168 = v128 - v19;
  v170 = sub_1000F5104(&qword_10093D120, &qword_10079AD90);
  v177 = *(v170 - 8);
  v20 = *(v177 + 64);
  __chkstk_darwin(v170);
  v176 = v128 - v21;
  v146 = sub_1000F5104(&qword_10093D128, &qword_10079AD98);
  v145 = *(v146 - 8);
  v22 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = v128 - v23;
  v143 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v142 = *(v143 - 8);
  v24 = *(v142 + 8);
  __chkstk_darwin(v143);
  v141 = v128 - v25;
  v179 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v156 = *(v179 - 8);
  v26 = *(v156 + 64);
  __chkstk_darwin(v179);
  v178 = v128 - v27;
  v28 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v172 = v128 - v30;
  v174 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v31 = *(v174 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v174);
  v34 = v128 - v33;
  v161 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v160 = *(v161 - 1);
  v35 = *(v160 + 64);
  __chkstk_darwin(v161);
  v37 = v128 - v36;
  v163 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v162 = *(v163 - 8);
  v38 = v162[8];
  __chkstk_darwin(v163);
  v159 = v128 - v39;
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v130 = sub_100006654(v40, qword_10093CC70);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Starting RDHashtagLabelUpdater", v43, 2u);
  }

  v164 = sub_1001F96A4();
  aBlock[0] = sub_100441A9C(0xD000000000000015, 0x800000010079A920, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  v44 = v174;
  Publisher.filter(_:)();

  (*(v31 + 8))(v34, v44);
  aBlock[0] = *(a1 + 16);
  v45 = aBlock[0];
  v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v47 = *(v46 - 8);
  v48 = v172;
  v166 = *(v47 + 56);
  v167 = v46;
  v165 = v47 + 56;
  v166(v172, 1, 1);
  v49 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
  v50 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v51 = v45;
  v52 = v159;
  v53 = v161;
  v173 = v50;
  v174 = v49;
  v54 = a1;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v48, &qword_100939980, &unk_10079ADA0);

  (*(v160 + 8))(v37, v53);
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
  v55 = v163;
  v56 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (v162[1])(v52, v55);
  v57 = *(v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable);
  *(v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = v56;

  *(v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 1;
  v58 = v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v59) = (*(v59 + 16))(ObjectType, v59);
    swift_unknownObjectRelease();
    if ((v59 & 1) == 0)
    {
    }
  }

  v163 = v58;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100792CE0;
  *(v61 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v61 + 40) = v62;
  *(v61 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v61 + 56) = v63;
  *(v61 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v61 + 72) = v64;
  *(v61 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v61 + 88) = v65;
  v66 = sub_100441DF8(*(v54 + 24), 0xD000000000000027, 0x80000001007EB340, v61);

  if (qword_100935C10 != -1)
  {
    swift_once();
  }

  v68 = sub_1001A5660(v67);

  aBlock[0] = v66;
  *(swift_allocObject() + 16) = v68;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
  v69 = v141;
  Publisher.map<A>(_:)();

  v162 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0);
  v70 = v143;
  Publisher.filter(_:)();

  (*(v142 + 1))(v69, v70);
  v143 = sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0);
  v71 = v168;
  Publisher.filter(_:)();
  v72 = *(v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar);
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = 1;
  v141 = sub_10000CB48(&qword_10093D198, &qword_10093D118, &qword_10079AD88);

  v74 = v169;
  v75 = v176;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v76 = *(v175 + 8);
  v175 += 8;
  v129 = v76;
  v76(v71, v74);
  aBlock[0] = *(v54 + 16);
  v77 = aBlock[0];
  v78 = v172;
  (v166)(v172, 1, 1, v167);
  v128[1] = sub_10000CB48(&qword_10093D1A0, &qword_10093D120, &qword_10079AD90);
  v79 = v77;
  v80 = v144;
  v81 = v170;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v78, &qword_100939980, &unk_10079ADA0);

  v82 = *(v177 + 8);
  v177 += 8;
  v142 = v82;
  v82(v75, v81);
  v83 = swift_allocObject();
  v83[2] = sub_1002119BC;
  v83[3] = 0;
  v83[4] = v72;
  v161 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_10093D1A8, &qword_10093D128, &qword_10079AD98);

  v84 = v146;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v145 + 8))(v80, v84);
  v146 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables;
  swift_beginAccess();
  v160 = sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  v159 = sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v85 = v168;
  Publisher.filter(_:)();
  v86 = *(v54 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar);
  v128[0] = v54;
  v87 = swift_allocObject();
  v145 = v86;
  *(v87 + 16) = v86;
  *(v87 + 24) = 1;

  v88 = v169;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v129(v85, v88);
  v89 = v78;
  v91 = v166;
  v90 = v167;
  (v166)(v78, 1, 1, v167);
  v92 = v147;
  v93 = v170;
  Publisher.collect<A>(_:options:)();
  sub_10000CB48(&qword_10093D1C0, &qword_10093D100, &qword_10079AD70);
  v94 = v150;
  v95 = v149;
  Publisher.map<A>(_:)();
  (*(v148 + 8))(v92, v95);
  sub_1000050A4(v89, &qword_100939980, &unk_10079ADA0);
  v142(v176, v93);
  v96 = v128[0];
  aBlock[0] = *(v128[0] + 16);
  v97 = aBlock[0];
  v91(v89, 1, 1, v90);
  sub_10000CB48(&qword_10093D1C8, &qword_10093D108, &qword_10079AD78);
  v98 = v97;
  v99 = v153;
  v100 = v152;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v89, &qword_100939980, &unk_10079ADA0);

  (*(v151 + 8))(v94, v100);
  v101 = swift_allocObject();
  v101[2] = v145;
  v101[3] = sub_1002119BC;
  v101[4] = 0;
  sub_10000CB48(&qword_10093D1D0, &qword_10093D110, &qword_10079AD80);

  v102 = v155;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v154 + 8))(v99, v102);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v103 = v163;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v104 = *(v103 + 8);
    v105 = swift_getObjectType();
    LOBYTE(v104) = (*(v104 + 24))(v105, v104);
    swift_unknownObjectRelease();
    if ((v104 & 1) == 0)
    {
      (*(v156 + 8))(v178, v179);
    }
  }

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "os_transaction INIT {name: com.apple.remindd.RDHashtagLabelUpdater.start}", v108, 2u);
  }

  v109 = os_transaction_create();
  v110 = v131;
  static DispatchTime.now()();
  v111 = v132;
  *v132 = 5;
  v112 = v133;
  v113 = v134;
  (*(v133 + 104))(v111, enum case for DispatchTimeInterval.seconds(_:), v134);
  + infix(_:_:)();
  (*(v112 + 8))(v111, v113);
  v114 = *(v171 + 8);
  v171 += 8;
  v180 = v114;
  v114(v110, v158);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 134217984;
    *(v117 + 4) = 5;
    _os_log_impl(&_mh_execute_header, v115, v116, "RDHashtagLabelUpdater: dispatch to call refreshFromLastConsumedOnLaunchIfNeeded {after: %ld}", v117, 0xCu);
  }

  v118 = *(v96 + 16);
  v119 = swift_allocObject();
  v120 = v164;
  v119[2] = v96;
  v119[3] = v120;
  v119[4] = v109;
  aBlock[4] = sub_100211550;
  aBlock[5] = v119;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EA1B0;
  v121 = _Block_copy(aBlock);
  v122 = v118;

  swift_unknownObjectRetain();
  v123 = v135;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v124 = v137;
  v125 = v140;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v126 = v157;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v121);
  swift_unknownObjectRelease();

  (*(v139 + 8))(v124, v125);
  (*(v136 + 8))(v123, v138);
  v180(v126, v158);
  (*(v156 + 8))(v178, v179);
}

void *sub_1001F96A4()
{
  v1 = v0;
  v68 = type metadata accessor for UUID();
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v68);
  v67 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = v61 - v6;
  v7 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v0 + 32)];
  v72 = 0;
  v69 = v7;
  v8 = [v7 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:&v72];
  v9 = v72;
  if (!v8)
  {
    v56 = v72;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935BF8 == -1)
    {
LABEL_18:
      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_10093CC70);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "RDHashtagLabelUpdater: Not tracking changes since there's no active cloudkit account logged in or enabled", v60, 2u);
      }

      return _swiftEmptyArrayStorage;
    }

LABEL_25:
    swift_once();
    goto LABEL_18;
  }

  v10 = v8;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093CC70);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v72 = v17;
    *v16 = 136446210;
    v18 = Array.description.getter();
    v20 = sub_10000668C(v18, v19, &v72);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "RDHashtagLabelUpdater: active accounts supporting hashtags: %{public}s", v16, 0xCu);
    sub_10000607C(v17);
  }

  if (!(v11 >> 62))
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_22;
  }

LABEL_8:
  v72 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = 0;
  v63 = (v1 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName);
  v64 = v21;
  v23 = v11;
  v61[1] = v2 + 8;
  v62 = v11 & 0xC000000000000001;
  v65 = v11;
  v24 = (v2 + 8);
  do
  {
    if (v62)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v23 + 8 * v22 + 32);
    }

    v26 = v25;
    v27 = [v25 uuid];
    v28 = v66;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = UUID.uuidString.getter();
    v31 = v30;
    v32 = *v24;
    v33 = v68;
    (*v24)(v28, v68);
    v70 = v26;
    v34 = [v70 uuid];
    v35 = v67;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = UUID.uuidString.getter();
    v38 = v37;
    v32(v35, v33);
    v39 = _s7remindd29ChangeTrackingAccountProviderCMa_0();
    v40 = objc_allocWithZone(v39);
    v41 = &v40[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID];
    *v41 = v29;
    v41[1] = v31;
    *&v40[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_rem_accountObjectID] = v26;
    v42 = &v40[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription];
    *v42 = v36;
    v42[1] = v38;
    v71.receiver = v40;
    v71.super_class = v39;
    v43 = objc_msgSendSuper2(&v71, "init");
    v45 = *v63;
    v44 = v63[1];
    v46 = qword_100935C10;
    v47 = v43;

    v48 = v69;
    if (v46 != -1)
    {
      swift_once();
    }

    ++v22;
    v49 = objc_allocWithZone(REMDAChangeTrackingHelper);

    v50 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v52 = [v49 initWithREMDAAccount:v47 clientName:v50 withREMStore:v48 entityNames:isa];

    v53 = [v52 fetchAndInitializeChangeTrackingStateIfNeeded];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v54 = v72[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v23 = v65;
  }

  while (v64 != v22);

  return v72;
}

void sub_1001F9D40()
{
  v0 = objc_autoreleasePoolPush();
  sub_1001F9D98();

  objc_autoreleasePoolPop(v0);
}

void sub_1001F9D98()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10093CC70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v8 = Optional.descriptionOrNil.getter();
      v10 = sub_10000668C(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDHashtagLabelUpdater: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }

  sub_1001F96A4();

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10093CC70);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDHashtagLabelUpdater: (Re-)initialized changeTrackingHelpers upon enabled/disabled CloudKit account(s).", v14, 2u);
  }
}

uint64_t sub_1001FA03C(unint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v2) = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_40;
  }

  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v13 = &OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch;
      if ((v2 & 1) == 0)
      {
        v13 = &OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed;
      }

      v14 = (v3 + *v13);
      v16 = *v14;
      v15 = v14[1];

      v17 = [objc_opt_self() sharedBabysitter];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget);
      v20 = String._bridgeToObjectiveC()();

      v2 = [v18 tokenByRegisteringAccount:v19 forOperationWithName:v20];

      if (!v2)
      {
        goto LABEL_20;
      }

      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v22 = *(a1 + 8 * i + 32);
        }

        v23 = v22;
        v24 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v60 = v22;
        sub_1001FB89C(&v60, v3);

        if (v24 == v12)
        {
          v25 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v26 = *(v25 + 8);

            ObjectType = swift_getObjectType();
            (*(v26 + 32))(1, ObjectType, v26);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          return 1;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (!v12)
      {
        goto LABEL_42;
      }
    }

LABEL_20:
    v29 = objc_opt_self();
    v30 = (v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
    v31 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
    v32 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed + 8);

    v33 = String._bridgeToObjectiveC()();

    v34 = [v29 babySatErrorWithOperationName:v33];

    sub_1000F5104(&unk_10093D030, &unk_10079C950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v36 = *v30;
    v37 = v30[1];

    v38 = String._bridgeToObjectiveC()();

    *(inited + 48) = v38;
    v39 = sub_10038D9FC(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
    type metadata accessor for Analytics();
    v40 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected);
    v41 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected + 8);

    sub_1004646CC(v39);

    v42 = v34;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10093CC70);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_10000668C(0xD000000000000032, 0x80000001007F0D10, &v60);
      _os_log_impl(&_mh_execute_header, v44, v45, "Babysitting RDHashtagLabelUpdater because it failed too many times {waiterID: %{public}s}.", v46, 0xCu);
      sub_10000607C(v47);
    }

    v2 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v48 = *(a1 + 8 * v2 + 32);
      }

      v49 = v48;
      v50 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v60 = v48;
      sub_1001FB64C(&v60);

      ++v2;
    }

    while (v50 != v12);
    v51 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(v51 + 8);

      goto LABEL_48;
    }

    return 0;
  }

LABEL_42:
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100006654(v53, qword_10093CC70);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "RDHashtagLabelUpdater: No account eligible for hashtag change tracking", v56, 2u);
  }

  v57 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *(v57 + 8);
LABEL_48:
    v58 = swift_getObjectType();
    (*(v52 + 32))(0, v58, v52);
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void sub_1001FA758()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1001F96A4();
  sub_1001FA03C(v1, 0);

  objc_autoreleasePoolPop(v0);
}

void sub_1001FA7B4(uint64_t a1, unint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1001FA81C(a1, a2);

  objc_autoreleasePoolPop(v4);
}

void sub_1001FA81C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1001FAA08(a2);
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093CC70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    v10 = sub_10000668C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDHashtagLabelUpdater: refreshFromLastConsumedOnLaunchIfNeeded completed {refreshed: %s}", v6, 0xCu);
    sub_10000607C(v7);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction RELEASE {name: com.apple.remindd.RDHashtagLabelUpdater.start}", v13, 2u);
  }
}

uint64_t sub_1001FAA08(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (2)
    {
      v3 = 0;
      LOBYTE(v4) = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v28 = v2;
      v29 = v1;
      v30 = v1 & 0xFFFFFFFFFFFFFF8;
      v31 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
LABEL_7:
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      while (v3 < *(v6 + 16))
      {
        v9 = *(v1 + 8 * v3 + 32);
LABEL_10:
        v10 = v9;
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
          break;
        }

        if (v4)
        {

          if (v11 == v2)
          {
            goto LABEL_23;
          }

          LOBYTE(v4) = 1;
          ++v3;
          if (v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v12 = [objc_msgSend(v9 "account")];
          swift_unknownObjectRelease();
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v32 = 0;
          v33 = 0;
          if ([v10 compareCurrentChangeTokenToLastConsumedWithResult:&v33 error:&v32])
          {
            v7 = v33;
            v8 = v32;

            v4 = v7 == 4;
            if (v11 == v2)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v16 = v32;
            v17 = _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_100935BF8 != -1)
            {
              swift_once();
            }

            v18 = type metadata accessor for Logger();
            sub_100006654(v18, qword_10093CC70);

            swift_errorRetain();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              *v21 = 136446466;
              v22 = sub_10000668C(v13, v15, &v33);

              *(v21 + 4) = v22;
              *(v21 + 12) = 2080;
              v32 = v17;
              swift_errorRetain();
              sub_1000F5104(&unk_1009399E0, &qword_100795D00);
              v23 = String.init<A>(describing:)();
              v25 = sub_10000668C(v23, v24, &v33);

              *(v21 + 14) = v25;
              _os_log_impl(&_mh_execute_header, v19, v20, "RDHashtagLabelUpdater: Failed to compareCurrentChangeTokenToLastConsumed {account: %{public}s, error: %s}", v21, 0x16u);
              swift_arrayDestroy();
              v1 = v29;

              v2 = v28;
            }

            else
            {
            }

            v4 = 0;
            v6 = v30;
            v5 = v31;
            if (v11 == v2)
            {
LABEL_22:
              if (!v4)
              {
                goto LABEL_27;
              }

LABEL_23:
              v26 = sub_1001FA03C(v1, 1);
              return v26 & 1;
            }
          }

          ++v3;
          if (v5)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_26:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v26 = 0;
  return v26 & 1;
}

void sub_1001FADDC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  KeyPath = swift_getKeyPath();
  if ((v5 & 1) == 0)
  {
    v28 = (v5 >> 1) - v4;
    v7 = __OFSUB__(v5 >> 1, v4);
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];

  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_23;
  }

  v28 = (v5 >> 1) - v4;
  if (v10 != v28)
  {
LABEL_23:
    swift_unknownObjectRelease();
    v7 = 0;
LABEL_5:
    sub_100277FD4(v2, v3, v4, v5);
    goto LABEL_13;
  }

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v7 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  v11 = sub_10004FAEC(v8);

  v12 = sub_1003E9F90(KeyPath, v11);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v12];
  v29 = &_swiftEmptySetSingleton;

  sub_100050AD0(v16);

  sub_1003FE014(&_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  if (v7)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  [v14 setFetchLimit:v28];
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    sub_100271930(v19);

    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10093CC70);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = Error.rem_errorDescription.getter();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "RDHashtagLabelUpdater: failed to fetch reminders from database {error: %s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  else
  {
  }
}

uint64_t sub_1001FB24C()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v14[1] = "d.RDHashtagLabelUpdater.start";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10093CC90 = result;
  return result;
}

id sub_1001FB614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDHashtagLabelUpdater.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001FB64C(id *a1)
{
  v1 = *a1;
  v2 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  [v1 markChangesConsumed:1];
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093CC70);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_10000668C(v3, v5, &v15);

    *(v10 + 4) = v11;
    *(v10 + 12) = 2082;
    [v7 upToToken];
    sub_1000F5104(&unk_100939330, qword_100795D90);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDHashtagLabelUpdater: Mark to current token as consumed due to Babysitting {account: %{public}s, token: %{public}s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1001FB89C(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v4 sinceToken];
  if (!v9)
  {
LABEL_19:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10093CC70);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v136[0] = v40;
      *v39 = 136446210;
      v41 = sub_10000668C(v6, v8, v136);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "RDHashtagLabelUpdater: No since-token from change tracking {account: %{public}s}", v39, 0xCu);
      sub_10000607C(v40);

LABEL_83:

      return;
    }

LABEL_82:

    goto LABEL_83;
  }

  v10 = v9;
  v11 = [v4 upToToken];
  if (!v11)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_10093CC70);

    v43 = v10;
    v37 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v8;
      v47 = v6;
      v48 = swift_slowAlloc();
      v129 = v10;
      v49 = swift_slowAlloc();
      v136[0] = v49;
      *v45 = 136446466;
      v50 = sub_10000668C(v47, v46, v136);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2114;
      *(v45 + 14) = v43;
      *v48 = v129;
      v51 = v43;
      _os_log_impl(&_mh_execute_header, v37, v44, "RDHashtagLabelUpdater: No updated change token from change tracking (no changes) {account: %{public}s, since: %{public}@}", v45, 0x16u);
      sub_1000050A4(v48, &unk_100938E70, &unk_100797230);

      sub_10000607C(v49);

      return;
    }

    goto LABEL_82;
  }

  v12 = v11;
  v125 = a2;
  v134 = v4;
  if (qword_100935BF8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v14 = sub_100006654(v13, qword_10093CC70);

    v15 = v10;
    v16 = v12;
    v17 = v12;
    v133 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v128 = v6;
    v129 = v10;
    v123 = v17;
    v126 = v16;
    v127 = v15;
    if (os_log_type_enabled(v18, v19))
    {
      LODWORD(v132) = v19;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v6;
      v23 = v17;
      v24 = v22;
      v130 = v21;
      ObjCClassFromMetadata = v18;
      v25 = v8;
      v26 = v10;
      v27 = swift_slowAlloc();
      v136[0] = v27;
      *v20 = 136446722;
      *(v20 + 4) = sub_10000668C(v24, v25, v136);
      *(v20 + 12) = 2114;
      *(v20 + 14) = v15;
      *(v20 + 22) = 2114;
      *(v20 + 24) = v16;
      v28 = v130;
      *v130 = v26;
      v28[1] = v23;
      v8 = v25;
      v29 = v15;
      v30 = v16;
      v18 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, ObjCClassFromMetadata, v132, "RDHashtagLabelUpdater: Processing change set {account: %{public}s, since: %{public}@, upTo: %{public}@}", v20, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v27);
    }

    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    v31 = v134;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [v134 changedIdentifiersOfModelClass:? ofChangeType:?];
    v132 = v8;
    if (!v32)
    {
      v52 = 0;
      goto LABEL_35;
    }

    v33 = v32;
    sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v136[0] = _swiftEmptyArrayStorage;
    if (!(v12 >> 62))
    {
      v34 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
LABEL_33:
      v52 = _swiftEmptyArrayStorage;
LABEL_34:

LABEL_35:
      sub_1000060C8(0, &unk_10093D040, REMSharedToMeReminderPlaceholder_ptr);
      v53 = [v31 changedIdentifiersOfModelClass:swift_getObjCClassFromMetadata() ofChangeType:0];
      v124 = v52;
      if (v53)
      {
        v54 = v53;
        sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
        v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v136[0] = _swiftEmptyArrayStorage;
        if (v55 >> 62)
        {
          goto LABEL_51;
        }

        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v56)
        {
          while (1)
          {
            v57 = 0;
            v31 = (v55 & 0xFFFFFFFFFFFFFF8);
            while ((v55 & 0xC000000000000001) != 0)
            {
              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v59 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
LABEL_47:
                __break(1u);
LABEL_48:
                v130 = v136[0];
                v31 = v134;
                goto LABEL_53;
              }

LABEL_42:
              v138 = v58;
              sub_1001FC9A0(v136, &v138, "RDHashtagLabelUpdater: Tracked insertion is not an REMSharedToMeReminderPlaceholder, huh? {inserted: %s}");
              if (v2)
              {
                goto LABEL_85;
              }

              swift_unknownObjectRelease();
              ++v57;
              if (v59 == v56)
              {
                goto LABEL_48;
              }
            }

            if (v57 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_51:
            v56 = _CocoaArrayWrapper.endIndex.getter();
            if (!v56)
            {
              goto LABEL_52;
            }
          }

          v58 = *(v55 + 8 * v57 + 32);
          swift_unknownObjectRetain();
          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

LABEL_52:
        v130 = _swiftEmptyArrayStorage;
LABEL_53:
      }

      else
      {
        v130 = 0;
      }

      v60 = [v31 changeSet];
      v61 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
      if (v60)
      {
        v62 = v60;
        sub_1000F5104(&unk_100936FD0, &unk_100795D40);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_100791320;
        *(v63 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v63 + 40) = v64;
        *(v63 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v63 + 56) = v65;
        *(v63 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v63 + 72) = v66;
        isa = Array._bridgeToObjectiveC()().super.isa;

        LOBYTE(v63) = [v62 applyFilterByTransactionAuthors:isa isExclusion:1];

        if ((v63 & 1) == 0)
        {
          v106 = v132;

          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();

          v73 = &selRef_setPublicLinkLastModifiedDate_;
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v136[0] = v110;
            *v109 = 136446210;
            *(v109 + 4) = sub_10000668C(v128, v106, v136);
            _os_log_impl(&_mh_execute_header, v107, v108, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v109, 0xCu);
            sub_10000607C(v110);

            v31 = v134;
            v61 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
          }

          else
          {

            v31 = v134;
          }

LABEL_61:
          v74 = [v31 changedIdentifiersOfModelClass:ObjCClassFromMetadata ofChangeType:2];
          if (v74)
          {
            v75 = v74;
            sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
            v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v77 = sub_1001FCCA4(v76);
          }

          else
          {
            v77 = 0;
          }

          v78 = [v31 v73[407]];
          if (v78)
          {
            v79 = v78;
            sub_1000F5104(&unk_100936FD0, &unk_100795D40);
            v80 = swift_allocObject();
            *(v80 + 16) = *&v61[100].entrysize;
            *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v80 + 40) = v81;
            *(v80 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v80 + 56) = v82;
            *(v80 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v80 + 72) = v83;
            v84 = Array._bridgeToObjectiveC()().super.isa;

            [v79 applyFilterByTransactionAuthors:v84 isExclusion:0];
          }

          else
          {
            v85 = v132;

            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v136[0] = v89;
              *v88 = 136446210;
              *(v88 + 4) = sub_10000668C(v128, v85, v136);
              _os_log_impl(&_mh_execute_header, v86, v87, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v88, 0xCu);
              sub_10000607C(v89);
            }
          }

          v91 = v126;
          v90 = v127;
          v92 = [v31 changedIdentifiersOfModelClass:ObjCClassFromMetadata ofChangeType:2];
          if (v92)
          {
            v93 = v92;
            sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
            v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v95 = sub_1001FCCA4(v94);
          }

          else
          {
            v95 = 0;
          }

          v96 = *(v125 + 24);
          v136[0] = 0xD000000000000015;
          v136[1] = 0x800000010079A920;
          v136[3] = 0;
          v137[0] = 0;
          v136[2] = 0;
          *(v137 + 6) = 0;
          __chkstk_darwin(v92);
          v122[2] = v124;
          v122[3] = v97;
          v122[4] = v127;
          v122[5] = v126;
          v122[6] = v77;
          v122[7] = v95;
          v122[8] = v130;
          sub_100014A64(v136, sub_1002113AC, v122);
          if (v2)
          {

            swift_errorRetain();
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v138 = v101;
              *v100 = 136315138;
              v135 = v2;
              swift_errorRetain();
              sub_1000F5104(&unk_1009399E0, &qword_100795D00);
              v102 = String.init<A>(describing:)();
              v104 = v91;
              v105 = sub_10000668C(v102, v103, &v138);

              *(v100 + 4) = v105;
              v91 = v104;
              _os_log_impl(&_mh_execute_header, v98, v99, "RDHashtagLabelUpdater: Failed to save hashtage label for %s", v100, 0xCu);
              sub_10000607C(v101);
            }

            else
            {
            }
          }

          else
          {
          }

          v111 = v132;
          [v134 markChangesConsumed];

          v112 = v90;
          v113 = v91;
          v37 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v37, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v138 = v117;
            *v115 = 136446722;
            v118 = sub_10000668C(v128, v111, &v138);

            *(v115 + 4) = v118;
            *(v115 + 12) = 2114;
            *(v115 + 14) = v112;
            *(v115 + 22) = 2114;
            *(v115 + 24) = v113;
            v119 = v123;
            *v116 = v129;
            v116[1] = v119;
            v120 = v112;
            v121 = v113;
            _os_log_impl(&_mh_execute_header, v37, v114, "RDHashtagLabelUpdater: Marked change set consumed {account: %{public}s, since: %{public}@, upTo: %{public}@}", v115, 0x20u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            sub_10000607C(v117);

            return;
          }

          goto LABEL_82;
        }
      }

      else
      {
        v68 = v132;

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v136[0] = v72;
          *v71 = 136446210;
          *(v71 + 4) = sub_10000668C(v128, v68, v136);
          _os_log_impl(&_mh_execute_header, v69, v70, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v71, 0xCu);
          sub_10000607C(v72);
        }

        v31 = v134;
      }

      v73 = &selRef_setPublicLinkLastModifiedDate_;
      goto LABEL_61;
    }

LABEL_9:
    v10 = 0;
    v6 = "RDHashtagLabelUpdater: Tracked insertion is not an REMObjectID, huh? {inserted: %s}";
LABEL_10:
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v12 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v35 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v35 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v138 = v8;
  sub_1001FC9A0(v136, &v138, "RDHashtagLabelUpdater: Tracked insertion is not an REMObjectID, huh? {inserted: %s}");
  if (!v2)
  {
    swift_unknownObjectRelease();
    ++v10;
    if (v35 == v34)
    {
      v52 = v136[0];
      v31 = v134;
      goto LABEL_34;
    }

    goto LABEL_10;
  }

LABEL_85:

  swift_unknownObjectRelease();

  __break(1u);
}

void sub_1001FC9A0(void **a1, void **a2, const char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = [v13 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100366328(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_100366328(v16 > 1, v17 + 1, 1, v15);
    }

    swift_unknownObjectRelease();
    v15[2] = v17 + 1;
    (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
    *a1 = v15;
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093CC70);
    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v23 = [v11 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v29);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, a3, v21, 0xCu);
      sub_10000607C(v22);
    }
  }
}

void *sub_1001FCCA4(unint64_t a1)
{
  v8 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_14:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v8;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v4;
        sub_1002060C8(&v8, &v7);
        swift_unknownObjectRelease();
        if (v5 == v2)
        {
          return v8;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_1001FCDCC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v147 = a6;
  v148 = a7;
  v154 = a4;
  v152 = a3;
  v13 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v144 = *(v13 - 8);
  v14 = *(v144 + 64);
  __chkstk_darwin(v13 - 8);
  v156 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v157 = *(v16 - 8);
  v17 = *(v157 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = &v138 - v21;
  [a1 setTransactionAuthor:RDHashtagLabelUpdaterAuthor];
  v153 = v20;
  v149 = a8;
  v150 = v8;
  v146 = a5;
  if (a2 && *(a2 + 16))
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10093CC70);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v26 = v159;
      *v25 = 136315138;
      v27 = Array.description.getter();
      v29 = a1;
      v30 = sub_10000668C(v27, v28, &v159);

      *(v25 + 4) = v30;
      a1 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "RDHashtagLabelUpdater: inserted hashtag IDs: %s", v25, 0xCu);
      sub_10000607C(v26);
      a5 = v146;

      v20 = v153;
    }

    sub_1001FDFB8(a1);
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_10093CC70);
    v32 = v154;
    v33 = a5;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = a1;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543618;
      *(v37 + 4) = v32;
      *(v37 + 12) = 2114;
      *(v37 + 14) = v33;
      *v38 = v32;
      v38[1] = v33;
      v39 = v32;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "RDHashtagLabelUpdater: No inserted hashtags found in change {since: %{public}@, upTo: %{public}@}", v37, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      a1 = v36;
    }

    v20 = v153;
  }

  v41 = v147;
  v151 = a1;
  v145 = v16;
  if (!v147 || (isa = v147[2].isa) == 0)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_10093CC70);
    v56 = v154;
    v57 = a5;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = v149;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543618;
      *(v62 + 4) = v56;
      *(v62 + 12) = 2114;
      *(v62 + 14) = v57;
      *v63 = v56;
      v63[1] = v57;
      v64 = v56;
      v65 = v57;
      _os_log_impl(&_mh_execute_header, v58, v59, "RDHashtagLabelUpdater: No user initiated deleted hashtags found in change {since: %{public}@, upTo: %{public}@}", v62, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v66 = v150;
      v16 = v145;
      a5 = v146;

      a1 = v151;

      v67 = v148;
      v20 = v153;
      if (v148)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v67 = v148;
      v20 = v153;
      v66 = v150;
      if (v148)
      {
        goto LABEL_32;
      }
    }

LABEL_41:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_100006654(v86, qword_10093CC70);
    v87 = v154;
    v88 = a5;
    v89 = a5;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138543618;
      *(v92 + 4) = v87;
      *(v92 + 12) = 2114;
      *(v92 + 14) = v89;
      *v93 = v87;
      v93[1] = v89;
      v94 = v87;
      v95 = v89;
      _os_log_impl(&_mh_execute_header, v90, v91, "RDHashtagLabelUpdater: No ICCC deleted hashtags found in change {since: %{public}@, upTo: %{public}@}", v92, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v96 = v88;
    a1 = v151;
    if (!v61)
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_10093CC70);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v141 = v45;
    v142 = v44;
    v46 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v159 = v139;
    v140 = v46;
    *v46 = 136446210;
    v158 = _swiftEmptyArrayStorage;
    sub_100253258(0, isa, 0);
    v47 = v143;
    v48 = v41 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v155 = *(v144 + 72);
    v49 = v158;
    v50 = (v157 + 16);
    do
    {
      v51 = v156;
      sub_100211458(v48, v156);
      (*v50)(v47, v51, v16);
      sub_1002114BC(v51);
      v158 = v49;
      v52 = v16;
      v54 = v49[2];
      v53 = v49[3];
      if (v54 >= v53 >> 1)
      {
        sub_100253258(v53 > 1, v54 + 1, 1);
        v49 = v158;
      }

      v49[2] = v54 + 1;
      (*(v157 + 32))(v49 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v54, v47, v52);
      v48 += v155;
      isa = (isa - 1);
      v16 = v52;
    }

    while (isa);
    v68 = Array.description.getter();
    v70 = v69;

    v71 = sub_10000668C(v68, v70, &v159);

    v72 = v140;
    *(v140 + 1) = v71;
    v73 = v142;
    _os_log_impl(&_mh_execute_header, v142, v141, "RDHashtagLabelUpdater: deleted hashtag IDs initiated by user: %{public}s", v72, 0xCu);
    sub_10000607C(v139);

    a1 = v151;
    a5 = v146;
    v41 = v147;
    v20 = v153;
  }

  else
  {
  }

  sub_1001FE050(a1, v41, 1);
  v67 = v148;
  v61 = v149;
  v66 = v150;
  if (!v148)
  {
    goto LABEL_41;
  }

LABEL_32:
  v74 = *(v67 + 16);
  if (!v74)
  {
    goto LABEL_41;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100006654(v75, qword_10093CC70);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();

  LODWORD(v153) = v77;
  if (os_log_type_enabled(v76, v77))
  {
    v147 = v76;
    v78 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v159 = v142;
    v143 = v78;
    *v78 = 136446210;
    v158 = _swiftEmptyArrayStorage;
    sub_100253258(0, v74, 0);
    v79 = v67 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v155 = *(v144 + 72);
    v80 = v158;
    v81 = (v157 + 16);
    do
    {
      v82 = v156;
      sub_100211458(v79, v156);
      (*v81)(v20, v82, v16);
      sub_1002114BC(v82);
      v158 = v80;
      v83 = v16;
      v85 = v80[2];
      v84 = v80[3];
      if (v85 >= v84 >> 1)
      {
        sub_100253258(v84 > 1, v85 + 1, 1);
        v80 = v158;
      }

      v80[2] = v85 + 1;
      (*(v157 + 32))(v80 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v85, v20, v83);
      v79 += v155;
      --v74;
      v16 = v83;
    }

    while (v74);
    v97 = Array.description.getter();
    v99 = v98;

    v100 = sub_10000668C(v97, v99, &v159);

    v101 = v143;
    *(v143 + 4) = v100;
    v102 = v147;
    _os_log_impl(&_mh_execute_header, v147, v153, "RDHashtagLabelUpdater: deleted hashtag IDs by ICCC: %{public}s", v101, 0xCu);
    sub_10000607C(v142);

    v66 = v150;
    a1 = v151;
    v67 = v148;
    v61 = v149;
  }

  else
  {
  }

  v96 = v146;
  sub_1001FE050(a1, v67, 0);
  if (!v61)
  {
    goto LABEL_56;
  }

LABEL_49:
  if (!*(v61 + 16))
  {
LABEL_56:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_100006654(v113, qword_10093CC70);
    v114 = v154;
    v115 = v96;
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v118 = 138543618;
      *(v118 + 4) = v114;
      *(v118 + 12) = 2114;
      *(v118 + 14) = v115;
      *v119 = v114;
      v119[1] = v115;
      v120 = v114;
      v121 = v115;
      _os_log_impl(&_mh_execute_header, v116, v117, "RDHashtagLabelUpdater: No shared reminder placeholders found in change {since: %{public}@, upTo: %{public}@}", v118, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    goto LABEL_61;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  sub_100006654(v103, qword_10093CC70);

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v159 = v107;
    *v106 = 136446210;
    v108 = Array.description.getter();
    v110 = v66;
    v111 = sub_10000668C(v108, v109, &v159);

    *(v106 + 4) = v111;
    v66 = v110;
    _os_log_impl(&_mh_execute_header, v104, v105, "RDHashtagLabelUpdater: inserted sharedToMeReminderPlaceHolder IDs: %{public}s", v106, 0xCu);
    sub_10000607C(v107);
  }

  v112 = objc_autoreleasePoolPush();
  sub_100203610(v152, a1);
  if (v66)
  {
    objc_autoreleasePoolPop(v112);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v112);
LABEL_61:
  if ([a1 hasChanges])
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_100006654(v122, qword_10093CC70);
    v123 = a1;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 134218496;
      v127 = [v123 insertedObjects];
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      sub_10000CDE4(&qword_10093B350, &qword_1009388B0, NSManagedObject_ptr);
      v128 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v128 & 0xC000000000000001) != 0)
      {
        v129 = __CocoaSet.count.getter();
      }

      else
      {
        v129 = *(v128 + 16);
      }

      *(v126 + 4) = v129;

      *(v126 + 12) = 2048;
      v130 = [v123 updatedObjects];
      v131 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v131 & 0xC000000000000001) != 0)
      {
        v132 = __CocoaSet.count.getter();
      }

      else
      {
        v132 = *(v131 + 16);
      }

      *(v126 + 14) = v132;

      *(v126 + 22) = 2048;
      v133 = [v123 deletedObjects];
      v134 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v134 & 0xC000000000000001) != 0)
      {
        v135 = __CocoaSet.count.getter();
      }

      else
      {
        v135 = *(v134 + 16);
      }

      *(v126 + 24) = v135;

      _os_log_impl(&_mh_execute_header, v124, v125, "RDHashtagLabelUpdater: Saving changes - insert: %ld, update: %ld, delete: %ld", v126, 0x20u);
    }

    else
    {

      v124 = v123;
    }

    v159 = 0;
    if ([v123 save:&v159])
    {
      v136 = v159;
    }

    else
    {
      v137 = v159;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1001FDFB8(void *a1)
{
  v3 = *v1;
  v4 = objc_autoreleasePoolPush();
  sub_1001FE0F0(v1, a1);

  objc_autoreleasePoolPop(v4);
}

void sub_1001FE050(void *a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = objc_autoreleasePoolPush();
  sub_100200CF8(a2, v3, a1, a3);

  objc_autoreleasePoolPop(v8);
}

void sub_1001FE0F0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v185 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v184 = &v176 - v10;
  __chkstk_darwin(v9);
  v193 = &v176 - v11;
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v215 = &v176 - v18;
  __chkstk_darwin(v17);
  v214 = &v176 - v19;

  v21 = sub_1001A59A4(v20);

  v221 = _swiftEmptyArrayStorage;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = sub_100368A1C(*(v21 + 16), 0);
    v24 = sub_1002799DC(&v220, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v22, v21);
    sub_10001B860();
    if (v24 == v22)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_5:
  v220 = v23;
  v25 = sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  v26 = sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0);
  v187 = v25;
  v186 = v26;
  v27 = BidirectionalCollection<>.slices(by:)();

  v28 = a2;
  sub_10020BD74(v27, 0);
  v205 = v2;

  v188 = v28;

  v29 = v221;
  if (v221 >> 62)
  {
    goto LABEL_148;
  }

  if (!*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_149:

    return;
  }

LABEL_7:
  v217 = v4;
  if (qword_100935BF8 != -1)
  {
LABEL_152:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100006654(v30, qword_10093CC70);
  v220 = v29;
  v209 = __chkstk_darwin(v31);
  *(&v176 - 2) = v209;
  sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CB48(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0);
  v32 = v205;
  v33 = Sequence.map<A>(skippingError:_:)();
  v189 = v5;
  if (v32)
  {

    v34 = _swiftEmptyArrayStorage;
  }

  else
  {
    v34 = v33;
  }

  v35 = sub_10020D4F0(v34);
  v205 = 0;

  v4 = 0;
  v38 = v35 + 8;
  v37 = v35[8];
  v206 = v35;
  v39 = 1 << *(v35 + 32);
  v221 = _swiftEmptyArrayStorage;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v211 = (v189 + 56);
  v212 = (v189 + 48);
  v192 = (v189 + 16);
  v191 = (v189 + 8);
  v181 = (v189 + 32);
  *&v36 = 136315138;
  v195 = v36;
  *&v36 = 134218240;
  v182 = v36;
  *&v36 = 136315394;
  v183 = v36;
  *&v36 = 136446210;
  v180 = v36;
  v190 = _swiftEmptyArrayStorage;
  v194 = _swiftEmptyArrayStorage;
  v203 = v16;
  v201 = v38;
  v204 = v42;
  if ((v40 & v37) == 0)
  {
    goto LABEL_15;
  }

  while (2)
  {
    v44 = __clz(__rbit64(v41)) | (v4 << 6);
    v45 = v206[7];
    v46 = (v206[6] + 16 * v44);
    v29 = v46[1];
    v208 = *v46;
    v5 = *(v45 + 8 * v44);

    v47 = Logger.logObject.getter();
    LODWORD(v207) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v47, v207))
    {

      goto LABEL_44;
    }

    v199 = v4;
    v48 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v220 = v196;
    v197 = v48;
    *v48 = v195;
    p_isa = (v5 & 0xFFFFFFFFFFFFFF8);
    if (v5 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v198 = v47;
    v200 = v29;
    v210 = v41;
    if (!v49)
    {
      goto LABEL_43;
    }

    v16 = 0;
    v213 = v5 & 0xC000000000000001;
    v50 = _swiftEmptyArrayStorage;
    do
    {
      v202 = v50;
      v51 = v16;
      while (1)
      {
        if (v213)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v51 >= p_isa[2])
          {
            goto LABEL_145;
          }

          v52 = *(v5 + 8 * v51 + 32);
        }

        v53 = v52;
        v16 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_149;
          }

          goto LABEL_7;
        }

        v29 = v5;
        v54 = [v52 identifier];
        if (v54)
        {
          v55 = v54;
          v56 = v215;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v57 = 0;
        }

        else
        {
          v57 = 1;
          v56 = v215;
        }

        v58 = v217;
        (*v211)(v56, v57, 1, v217);
        v59 = v56;
        v60 = v214;
        v4 = "8\n\r";
        sub_100031B58(v59, v214, &unk_100939D90, "8\n\r");
        if (!(*v212)(v60, 1, v58))
        {
          break;
        }

        sub_1000050A4(v60, &unk_100939D90, "8\n\r");
        ++v51;
        v5 = v29;
        if (v16 == v49)
        {
          goto LABEL_43;
        }
      }

      v61 = v193;
      v62 = v217;
      (*v192)(v193, v60, v217);
      sub_1000050A4(v60, &unk_100939D90, "8\n\r");
      v63 = UUID.uuidString.getter();
      v4 = v64;

      (*v191)(v61, v62);
      v50 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100365788(0, *(v50 + 2) + 1, 1, v50);
      }

      v5 = v29;
      v66 = *(v50 + 2);
      v65 = *(v50 + 3);
      if (v66 >= v65 >> 1)
      {
        v50 = sub_100365788((v65 > 1), v66 + 1, 1, v50);
      }

      *(v50 + 2) = v66 + 1;
      v67 = &v50[16 * v66];
      *(v67 + 4) = v63;
      *(v67 + 5) = v4;
    }

    while (v16 != v49);
LABEL_43:
    v68 = Array.description.getter();
    v70 = v69;

    v71 = sub_10000668C(v68, v70, &v220);

    v72 = v197;
    *(v197 + 1) = v71;
    v73 = v198;
    _os_log_impl(&_mh_execute_header, v198, v207, "RDHashtagLabelUpdater processing inserted hashtags: %s", v72, 0xCu);
    sub_10000607C(v196);

    v16 = v203;
    v38 = v201;
    v4 = v199;
    v41 = v210;
    v29 = v200;
LABEL_44:
    v210 = (v41 - 1) & v41;
    v74 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v74 = v208 & 0xFFFFFFFFFFFFLL;
    }

    if (!v74)
    {

      v75 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v75, v29))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v75, v29, "RDHashtagLabelUpdater: Impossible to get here, nil canonical name should have been filtered", v76, 2u);
      }

LABEL_50:
      v42 = v204;
      v41 = v210;
      if (!v210)
      {
        do
        {
LABEL_15:
          v43 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_146;
          }

          if (v43 >= v42)
          {

            return;
          }

          v41 = v38[v43];
          ++v4;
        }

        while (!v41);
        v4 = v43;
      }

      continue;
    }

    break;
  }

  v200 = v29;
  v77 = sub_10020E138(v188, v208, v29);
  v78 = sub_1001FFB30(v77);

  v219 = v78;
  v79 = v205;
  v80 = sub_10020D874(v5);
  v205 = v79;

  v81 = 0;
  v5 = (v80 + 8);
  v82 = 1 << *(v80 + 32);
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  else
  {
    v83 = -1;
  }

  v29 = v83 & v80[8];
  v84 = (v82 + 63) >> 6;
  v177 = v80;
  v179 = v80 + 8;
  v197 = v84;
  v199 = v4;
  if (!v29)
  {
    while (1)
    {
LABEL_59:
      v85 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_147;
      }

      if (v85 >= v84)
      {
        break;
      }

      v29 = *(v5 + 8 * v85);
      ++v81;
      if (v29)
      {
        v81 = v85;
        goto LABEL_63;
      }
    }

    if (v190[2])
    {
      v220 = _swiftEmptyArrayStorage;
      v218 = v190;
      v151 = BidirectionalCollection<>.slices(by:)();
      v152 = v188;
      v153 = v205;
      sub_10020BE20(v151, v152, &v220, sub_1001FADDC);
      v205 = v153;

      v154 = sub_100200890(v220);

      v155 = v194;
      v207 = (v194 >> 62);
      if (v194 >> 62)
      {
        v156 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v156 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v156)
      {
        v157 = 0;
        p_isa = (v155 & 0xC000000000000001);
        v213 = v155 & 0xFFFFFFFFFFFFFF8;
        v208 = v156;
        while (1)
        {
          if (p_isa)
          {
            v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v157 >= *(v213 + 16))
            {
              goto LABEL_151;
            }

            v160 = *(v155 + 8 * v157 + 32);
          }

          v161 = v160;
          v16 = (v157 + 1);
          if (__OFADD__(v157, 1))
          {
            break;
          }

          v29 = v155;
          v162 = v154;
          v5 = v4;
          v163 = [v160 sharedToMeReminderCKIdentifier];
          if (v163)
          {
            v164 = v163;
            v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v166;
          }

          else
          {
            v167 = 0xE300000000000000;
            v165 = 7104878;
          }

          v154 = v162;
          if (v162[2])
          {
            v168 = sub_100005F4C(v165, v167);
            v170 = v169;

            if (v170)
            {
              v158 = *(v154[7] + 8 * v168);
            }

            else
            {
              v158 = 0;
            }

            v4 = v5;
            v155 = v194;
          }

          else
          {

            v158 = 0;
            v4 = v5;
            v155 = v29;
          }

          [v161 setReminder:v158];

          ++v157;
          v159 = v16 == v208;
          v16 = v203;
          v38 = v201;
          if (v159)
          {
            goto LABEL_134;
          }
        }

        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

LABEL_134:

      v171 = Logger.logObject.getter();
      v29 = v154;
      v172 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = v182;
        if (v207)
        {
          v174 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v174 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v173 + 4) = v174;
        *(v173 + 12) = 2048;
        v175 = *(v29 + 16);

        *(v173 + 14) = v175;

        _os_log_impl(&_mh_execute_header, v171, v172, "RDHashtagLabelUpdater updated hashtags that need to be associated to shared-to-me-reminders {hashtagsNeedAssociatingToReminder.count: %ld, shared-to-me-reminders.count: %ld}", v173, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    goto LABEL_50;
  }

  while (1)
  {
LABEL_63:
    while (1)
    {
      v86 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v87 = v86 | (v81 << 6);
      v88 = v80[7];
      v89 = v80[6] + 16 * v87;
      v90 = *(v89 + 8);
      v202 = *v89;
      v91 = *(v88 + 8 * v87);

      sub_1001FFEF8(v92);
      if (v93)
      {
        break;
      }

LABEL_58:
      v84 = v197;
      if (!v29)
      {
        goto LABEL_59;
      }
    }

    v94 = v93;
    v207 = v90;
    v95 = v219;
    v96 = v219[2];
    v213 = v91;
    if (v96)
    {
      v97 = sub_100005F4C(v202, v207);
      if (v98)
      {
        p_isa = *(v95[7] + 8 * v97);
        v99 = p_isa;
      }

      else
      {
        p_isa = 0;
      }
    }

    else
    {
      p_isa = 0;
    }

    v100 = v200;

    v196 = v94;
    v101 = v94;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();

    v178 = v103;
    v104 = os_log_type_enabled(v102, v103);
    v198 = v101;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v220 = v176;
      *v105 = v183;
      *(v105 + 4) = sub_10000668C(v208, v100, &v220);
      *(v105 + 12) = 2082;
      v106 = [v101 remObjectID];
      if (v106)
      {
        v107 = v106;
        v108 = v4;
        v109 = [v106 description];

        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v4 = v108;
        v5 = v179;
      }

      else
      {
        v112 = 0xE300000000000000;
        v110 = 7104878;
      }

      v16 = v203;
      v114 = sub_10000668C(v110, v112, &v220);

      *(v105 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v102, v178, "RDHashtagLabelUpdater created new hashtag label {canonicalName: %s, firstHashtag.objectID: %{public}s}", v105, 0x16u);
      swift_arrayDestroy();

      v38 = v201;
      v80 = v177;
      v113 = v213;
    }

    else
    {

      v113 = v213;
      v16 = v203;
      v80 = v177;
    }

    v115 = v207;
    if (p_isa)
    {

      goto LABEL_79;
    }

    v116 = v198;
    v117 = sub_10020E700(v188, v198);
    if (v117)
    {
      break;
    }

    v122 = v116;
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      LODWORD(v213) = v124;
      v125 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v220 = v207;
      v126 = v125;
      *v125 = v180;
      p_isa = &v122->isa;
      v127 = [v122 remObjectID];
      v16 = v203;
      if (v127)
      {
        v128 = v127;
        v129 = [v127 description];

        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v80 = v177;
      }

      else
      {
        v132 = 0xE300000000000000;
        v130 = 7104878;
      }

      v133 = sub_10000668C(v130, v132, &v220);

      *(v126 + 1) = v133;
      _os_log_impl(&_mh_execute_header, v123, v213, "RDHashtagLabelUpdater: Cannot create hashtag label for hashtag: %{public}s", v126, 0xCu);
      sub_10000607C(v207);

      v38 = v201;
LABEL_82:
      v4 = v199;
LABEL_83:
      v5 = v179;
      goto LABEL_58;
    }

    v84 = v197;
    v16 = v203;
    if (!v29)
    {
      goto LABEL_59;
    }
  }

  v118 = v117;
  p_isa = v117;
  v119 = v118;
  v113 = v213;
  sub_10031D998(v119, v202, v115);
  v16 = v203;
LABEL_79:
  v120 = v198;
  sub_10020C4A4(p_isa, v113, v196);

  if (v113 >> 62)
  {
    v121 = _CocoaArrayWrapper.endIndex.getter();
    if (!v121)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v121 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v121)
    {
LABEL_81:

      goto LABEL_82;
    }
  }

  if (v121 >= 1)
  {
    v134 = 0;
    v207 = (v113 & 0xC000000000000001);
    do
    {
      if (v207)
      {
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v136 = *(v113 + 8 * v134 + 32);
      }

      v137 = v136;
      v138 = [v136 reminder];
      if (v138)
      {
        v135 = v138;
      }

      else if ([v137 isConcealed] || (v139 = objc_msgSend(v137, "sharedToMeReminderCKIdentifier")) == 0)
      {
      }

      else
      {
        v140 = v139;
        v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.init(uuidString:)();

        v141 = v16;
        v142 = v16;
        v143 = v217;
        if ((*v212)(v141, 1, v217) == 1)
        {

          sub_1000050A4(v142, &unk_100939D90, "8\n\r");
          v16 = v142;
        }

        else
        {
          v144 = v184;
          v202 = *v181;
          (v202)(v184, v142, v143);
          swift_beginAccess();
          v145 = v137;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v198 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v194 = v221;
          swift_endAccess();
          (*v192)(v185, v144, v143);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v190 = sub_100366328(0, v190[2] + 1, 1, v190);
          }

          v147 = v190[2];
          v146 = v190[3];
          if (v147 >= v146 >> 1)
          {
            v190 = sub_100366328(v146 > 1, v147 + 1, 1, v190);
          }

          v148 = v189;
          v149 = v217;
          (*(v189 + 8))(v184, v217);
          v150 = v190;
          v190[2] = v147 + 1;
          (v202)(v150 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v147, v185, v149);
          v16 = v203;
        }

        v38 = v201;
      }

      ++v134;
      v113 = v213;
    }

    while (v121 != v134);

    v4 = v199;
    v80 = v177;
    goto LABEL_83;
  }

  __break(1u);
}

void sub_1001FF7E0(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = *a1;
  v9 = [v8 name];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 && (v15 = [v8 account]) != 0)
  {
    v16 = v15;
    v17 = [v15 identifier];
    if (v17)
    {
      v18 = v17;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
      sub_1000050A4(v7, &unk_100939D90, "8\n\r");
      *a2 = v8;
      v20 = v8;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      sub_1000050A4(v7, &unk_100939D90, "8\n\r");
      v25 = objc_opt_self();
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = String._bridgeToObjectiveC()();
      [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

      swift_willThrow();
    }
  }

  else
  {
LABEL_8:
    v21 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v22 = swift_getObjCClassFromMetadata();
    v23 = String._bridgeToObjectiveC()();
    [v21 unexpectedNilPropertyWithClass:v22 property:v23];

    swift_willThrow();
  }
}

uint64_t *sub_1001FFB30(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v44 = v1 & 0xC000000000000001;
      v41 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = &_swiftEmptyDictionarySingleton;
      v42 = v2;
      v43 = v1;
      while (1)
      {
        if (v44)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v41 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(v1 + 8 * v3 + 32);
        }

        v9 = v8;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v10 = [v8 accountIdentifier];
        if (!v10)
        {
          if (qword_100935BF8 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100006654(v25, qword_10093CC70);
          v26 = v9;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v46 = v45;
            *v29 = 136446210;
            v30 = [v26 ic_loggingDescription];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = v31;
            v7 = v3 + 1;
            v35 = sub_10000668C(v34, v33, &v46);
            v1 = v43;

            *(v29 + 4) = v35;
            v2 = v42;
            _os_log_impl(&_mh_execute_header, v27, v28, "RDHashtagLabelUpdater: REMCDHashtagLabel with nil accountIdentifier: %{public}s", v29, 0xCu);
            sub_10000607C(v45);
          }

          else
          {
          }

          goto LABEL_6;
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v4;
        v18 = sub_100005F4C(v12, v14);
        v19 = v4[2];
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_30;
        }

        v22 = v17;
        if (v4[3] >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            sub_100373650();
            if ((v22 & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          sub_10036A8DC(v21, isUniquelyReferenced_nonNull_native);
          v23 = sub_100005F4C(v12, v14);
          if ((v22 & 1) != (v24 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v18 = v23;
          if ((v22 & 1) == 0)
          {
LABEL_24:
            v4 = v46;
            v46[(v18 >> 6) + 8] |= 1 << v18;
            v36 = (v4[6] + 16 * v18);
            *v36 = v12;
            v36[1] = v14;
            *(v4[7] + 8 * v18) = v15;

            v37 = v4[2];
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_32;
            }

            v4[2] = v39;
            goto LABEL_5;
          }
        }

        v4 = v46;
        v5 = v46[7];
        v6 = *(v5 + 8 * v18);
        *(v5 + 8 * v18) = v15;

LABEL_5:
        v2 = v42;
        v1 = v43;
        v7 = v3 + 1;
LABEL_6:
        ++v3;
        if (v7 == v2)
        {
          return v4;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void sub_1001FFEF8(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v78 = &v73 - v8;
  v9 = __chkstk_darwin(v7);
  v81 = &v73 - v10;
  __chkstk_darwin(v9);
  v12 = &v73 - v11;
  v13 = type metadata accessor for Date();
  v88 = *(v13 - 8);
  v14 = v88[8];
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v84 = &v73 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v73 - v21;
  v23 = __chkstk_darwin(v20);
  v86 = &v73 - v24;
  __chkstk_darwin(v23);
  v85 = &v73 - v25;
  v92[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_64:
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v6;
  v80 = v17;
  v75 = v22;
  v76 = v12;
  if (v26)
  {
    v17 = 0;
    v12 = (a1 & 0xC000000000000001);
    do
    {
      if (v12)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v27 = *(a1 + 8 * v17 + 32);
      }

      v6 = v27;
      v28 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v29 = [v27 name];
      if (v29)
      {

        v22 = v92;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = *(v92[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v17;
    }

    while (v28 != v26);
    a1 = v92[0];
    v17 = v80;
    if ((v92[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

  a1 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

LABEL_17:
  if ((a1 & 0x4000000000000000) != 0)
  {
LABEL_65:
    v77 = _CocoaArrayWrapper.endIndex.getter();
    if (!v77)
    {
      goto LABEL_66;
    }

    goto LABEL_19;
  }

  v77 = *(a1 + 16);
  if (!v77)
  {
LABEL_66:

    return;
  }

LABEL_19:
  v74 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v32 = v31;
    if (v77 != 1)
    {
      v12 = (v88 + 4);
      v89 = (v88 + 7);
      v82 = (v88 + 6);
      v33 = (v88 + 1);
      v34 = 1;
      v73 = a1;
      do
      {
        v87 = v32;
        v35 = v34;
        while (1)
        {
          if (v74)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            if (v35 >= *(a1 + 16))
            {
              goto LABEL_63;
            }

            v40 = *(a1 + 8 * v35 + 32);
          }

          v22 = v40;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_61;
          }

          v83 = v35 + 1;
          v41 = [v40 creationDate];
          v88 = v22;
          if (v41)
          {
            v42 = v86;
            v43 = v41;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v44 = *v12;
            v45 = v76;
            (*v12)(v76, v42, v13);
            v6 = *v89;
            (*v89)(v45, 0, 1, v13);
            v44(v85, v45, v13);
          }

          else
          {
            v6 = *v89;
            v46 = v76;
            (*v89)(v76, 1, 1, v13);
            static Date.distantFuture.getter();
            if ((*v82)(v46, 1, v13) != 1)
            {
              sub_1000050A4(v46, &unk_100938850, qword_100795AE0);
            }
          }

          v47 = [v87 creationDate];
          if (v47)
          {
            v48 = v86;
            v49 = v47;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v50 = *v12;
            v51 = v81;
            (*v12)(v81, v48, v13);
            (v6)(v51, 0, 1, v13);
            v52 = v75;
            v50(v75, v51, v13);
          }

          else
          {
            v53 = v81;
            (v6)(v81, 1, 1, v13);
            v52 = v75;
            static Date.distantFuture.getter();
            if ((*v82)(v53, 1, v13) != 1)
            {
              sub_1000050A4(v81, &unk_100938850, qword_100795AE0);
            }
          }

          v54 = v85;
          v22 = static Date.< infix(_:_:)();
          v55 = *v33;
          (*v33)(v52, v13);
          v55(v54, v13);
          if (v22)
          {
            break;
          }

          v56 = [v88 creationDate];
          if (v56)
          {
            v57 = v86;
            v58 = v56;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v59 = *v12;
            v60 = v78;
            (*v12)(v78, v57, v13);
            (v6)(v60, 0, 1, v13);
            v17 = v80;
            v59(v84, v60, v13);
          }

          else
          {
            v61 = v78;
            (v6)(v78, 1, 1, v13);
            static Date.distantFuture.getter();
            if ((*v82)(v61, 1, v13) != 1)
            {
              sub_1000050A4(v78, &unk_100938850, qword_100795AE0);
            }
          }

          v62 = [v87 creationDate];
          if (v62)
          {
            v63 = v86;
            v64 = v62;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v65 = *v12;
            v66 = v79;
            (*v12)(v79, v63, v13);
            (v6)(v66, 0, 1, v13);
            v65(v17, v66, v13);
          }

          else
          {
            v67 = v79;
            (v6)(v79, 1, 1, v13);
            static Date.distantFuture.getter();
            if ((*v82)(v67, 1, v13) != 1)
            {
              sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
            }
          }

          v6 = v84;
          v22 = static Date.== infix(_:_:)();
          v55(v17, v13);
          v55(v6, v13);
          if (v22)
          {
            v68 = [v88 name];
            if (v68)
            {
              v69 = v68;
              v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v6 = v71;
            }

            else
            {
              v70 = 0;
              v6 = 0xE000000000000000;
            }

            v92[0] = v70;
            v92[1] = v6;
            v72 = [v87 name];
            if (v72)
            {
              v36 = v72;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;
            }

            else
            {
              v37 = 0;
              v39 = 0xE000000000000000;
            }

            v17 = v80;
            v90 = v37;
            v91 = v39;
            sub_10013BCF4();
            v22 = StringProtocol.localizedStandardCompare<A>(_:)();

            if (v22 == -1)
            {
              break;
            }
          }

          ++v35;
          a1 = v73;
          if (v83 == v77)
          {
            goto LABEL_66;
          }
        }

        v34 = v83;
        a1 = v73;
        v32 = v88;
      }

      while (v83 != v77);
    }

    goto LABEL_66;
  }

  if (*(a1 + 16))
  {
    v31 = *(a1 + 32);
    goto LABEL_22;
  }

  __break(1u);
}

void *sub_100200890(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  if (a1 >> 62)
  {
LABEL_31:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v50 = v2;
      v51 = a1 & 0xC000000000000001;
      v48 = (v3 + 6);
      v49 = (v3 + 7);
      v44 = (v3 + 2);
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
      v43 = (v3 + 1);
      v47 = &_swiftEmptyDictionarySingleton;
      v2 = &unk_100939D90;
      v41 = v10;
      v42 = a1;
      v39 = v13;
      v40 = v12;
      while (1)
      {
        if (v51)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v45 + 16))
          {
            goto LABEL_28;
          }

          v15 = *(a1 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v18 = [v15 identifier];
        if (v18)
        {
          v19 = v18;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v2 = &unk_100939D90;
          v20 = 0;
        }

        else
        {
          v20 = 1;
        }

        v3 = v50;
        (*v49)(v10, v20, 1, v50);
        sub_100031B58(v10, v12, &unk_100939D90, "8\n\r");
        if (!(*v48)(v12, 1, v3))
        {
          break;
        }

        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
LABEL_5:
        ++v14;
        if (v17 == v13)
        {
          return v47;
        }
      }

      v21 = v46;
      (*v44)(v46, v12, v3);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      v12 = UUID.uuidString.getter();
      v10 = v22;
      (*v43)(v21, v3);
      v23 = v16;
      v2 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v2;
      a1 = sub_100005F4C(v12, v10);
      v26 = v2[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_29;
      }

      v29 = v25;
      if (v2[3] < v28)
      {
        sub_10036A224(v28, isUniquelyReferenced_nonNull_native);
        v2 = v52;
        v30 = sub_100005F4C(v12, v10);
        if ((v29 & 1) != (v31 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        a1 = v30;
        if ((v29 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:

        v47 = v52;
        v32 = v52[7];
        v33 = *(v32 + 8 * a1);
        *(v32 + 8 * a1) = v23;

LABEL_26:
        v10 = v41;
        a1 = v42;
        v13 = v39;
        v12 = v40;
        v2 = &unk_100939D90;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v2 = &v52;
        sub_1003731D4();
        if (v29)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v3 = v52;
      v52[(a1 >> 6) + 8] |= 1 << a1;
      v34 = (v3[6] + 16 * a1);
      *v34 = v12;
      v34[1] = v10;
      *(v3[7] + 8 * a1) = v23;

      v35 = v3[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_30;
      }

      v47 = v3;
      v3[2] = v37;
      goto LABEL_26;
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100200CF8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v243 = a4;
  v247 = a3;
  v237 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v237 - 8) + 64);
  v7 = __chkstk_darwin(v237);
  v236 = &v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v241 = &v226 - v9;
  v242 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v10 = *(v242 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v242 - 8);
  v251 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v248 = &v226 - v15;
  __chkstk_darwin(v14);
  v17 = &v226 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v24 = _swiftEmptyArrayStorage;
  v252 = v10;
  v253 = v19;
  v246 = a1;
  if (v23)
  {
    v25 = v22;
    v245 = v4;
    v254 = _swiftEmptyArrayStorage;
    sub_100253258(0, v23, 0);
    v26 = v254;
    v27 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v28 = *(v10 + 72);
    v249 = v19 + 32;
    v250 = v28;
    do
    {
      sub_100211458(v27, v17);
      (*(v19 + 16))(v25, v17, v18);
      sub_1002114BC(v17);
      v254 = v26;
      isa = v26[2].isa;
      v29 = v26[3].isa;
      if (isa >= v29 >> 1)
      {
        sub_100253258(v29 > 1, isa + 1, 1);
        v26 = v254;
      }

      v26[2].isa = (isa + 1);
      (*(v253 + 32))(v26 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * isa, v25, v18);
      v27 += v250;
      --v23;
    }

    while (v23);
    v24 = _swiftEmptyArrayStorage;
    v31 = v245;
  }

  else
  {
    v31 = v4;
    v26 = _swiftEmptyArrayStorage;
  }

  v33 = sub_1001A59A4(v32);
  v250 = v26;

  v255 = _swiftEmptyArrayStorage;
  v34 = *(v33 + 16);
  v35 = v253;
  if (!v34)
  {
    goto LABEL_11;
  }

  v24 = sub_100368A1C(*(v33 + 16), 0);
  v36 = sub_1002799DC(&v254, &v24[(*(v35 + 80) + 32) & ~*(v35 + 80)], v34, v33);
  sub_10001B860();
  if (v36 != v34)
  {
    __break(1u);
LABEL_11:
  }

  v254 = v24;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0);
  v37 = BidirectionalCollection<>.slices(by:)();

  v38 = v247;
  sub_10020BD74(v37, 1);

  v247 = v38;

  v39 = v255;
  v254 = &_swiftEmptyDictionarySingleton;
  if (v255 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v255 = v42;
      sub_1002028D8(&v254, &v255);
      if (v31)
      {
        goto LABEL_242;
      }

      ++v41;
      if (v44 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  v228 = v254;

  v46 = sub_10020DD3C(v45);
  v227 = v31;

  v48 = 0;
  v50 = v46 + 64;
  v49 = *(v46 + 64);
  v231 = v46;
  v51 = 1 << *(v46 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v43 = v52 & v49;
  v53 = (v51 + 63) >> 6;
  *&v47 = 136315394;
  v238 = v47;
  *&v47 = 136315138;
  v239 = v47;
  v230 = v46 + 64;
  v229 = v53;
  if ((v52 & v49) == 0)
  {
LABEL_30:
    while (1)
    {
      v54 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v54 >= v53)
      {
      }

      v43 = *(v50 + 8 * v54);
      ++v48;
      if (v43)
      {
        v48 = v54;
        goto LABEL_34;
      }
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  while (1)
  {
    while (1)
    {
LABEL_34:
      v233 = v48;
      v55 = __clz(__rbit64(v43)) | (v48 << 6);
      v56 = (*(v231 + 48) + 16 * v55);
      v57 = *v56;
      v58 = v56[1];
      v59 = *(*(v231 + 56) + 8 * v55);
      v60 = qword_100935BF8;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      v62 = sub_100006654(v61, qword_10093CC70);

      v249 = v62;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();

      v65 = os_log_type_enabled(v63, v64);
      v253 = v59;
      if (v65)
      {
        LODWORD(v245) = v64;
        v232 = v43;
        v66 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v254 = v240;
        *v66 = v238;
        v246 = v57;
        *(v66 + 4) = sub_10000668C(v57, v58, &v254);
        v244 = v66;
        *(v66 + 12) = 2082;
        v67 = *(v59 + 16);
        v250 = v63;
        if (v67)
        {
          v68 = v59 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
          v69 = *(v252 + 72);
          v70 = _swiftEmptyArrayStorage;
          do
          {
            v71 = v248;
            sub_100211458(v68, v248);
            v72 = UUID.uuidString.getter();
            v74 = v73;
            sub_1002114BC(v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_100365788(0, *(v70 + 2) + 1, 1, v70);
            }

            v76 = *(v70 + 2);
            v75 = *(v70 + 3);
            if (v76 >= v75 >> 1)
            {
              v70 = sub_100365788((v75 > 1), v76 + 1, 1, v70);
            }

            *(v70 + 2) = v76 + 1;
            v77 = &v70[16 * v76];
            *(v77 + 4) = v72;
            *(v77 + 5) = v74;
            v68 += v69;
            --v67;
          }

          while (v67);
        }

        v78 = Array.description.getter();
        v80 = v79;

        v81 = sub_10000668C(v78, v80, &v254);

        v82 = v244;
        *(v244 + 14) = v81;
        v83 = v250;
        _os_log_impl(&_mh_execute_header, v250, v245, "RDHashtagLabelUpdater processing hashtag tombstones {canonicalName: %s, deletedIDs: %{public}s}", v82, 0x16u);
        swift_arrayDestroy();

        v43 = v232;
        v57 = v246;
      }

      else
      {
      }

      v43 &= v43 - 1;
      v84 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v84 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v84)
      {
        v104 = v57;

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v254 = v108;
          *v107 = v239;
          v109 = sub_10000668C(v104, v58, &v254);

          *(v107 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v105, v106, "RDHashtagLabelUpdater: Impossible to get here, concealed hashtag[%s] with nil name should have been filtered", v107, 0xCu);
          sub_10000607C(v108);
        }

        else
        {
        }

        goto LABEL_64;
      }

      v85 = sub_10020E138(v247, v57, v58);
      v86 = v85;
      v254 = v85;
      v87 = v85 >> 62;
      v88 = v85 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v89 = v228;
      if (v88)
      {
        break;
      }

LABEL_64:
      v50 = v230;
      v48 = v233;
      v53 = v229;
      if (!v43)
      {
        goto LABEL_30;
      }
    }

    v90 = *(v228 + 16);
    v232 = v43;
    v250 = v58;
    v245 = v86;
    v246 = v57;
    v235 = v87;
    if (v90)
    {
      v91 = sub_100005F4C(v57, v58);
      if (v92)
      {
        v93 = *(*(v89 + 56) + 8 * v91);

        v95 = v227;
        v96 = sub_10020D874(v94);
        v227 = v95;

        v97 = sub_1001FFB30(v86);
        v98 = 0;
        v100 = v96 + 8;
        v99 = v96[8];
        v240 = v96;
        v101 = 1 << *(v96 + 32);
        if (v101 < 64)
        {
          v102 = ~(-1 << v101);
        }

        else
        {
          v102 = -1;
        }

        v103 = v102 & v99;
        v43 = (v101 + 63) >> 6;
        while (v103)
        {
          v110 = v103;
LABEL_73:
          v103 = (v110 - 1) & v110;
          if (v97[2])
          {
            v244 = ((v110 - 1) & v110);
            v112 = __clz(__rbit64(v110)) | (v98 << 6);
            v113 = *(*(v240 + 56) + 8 * v112);
            v114 = (*(v240 + 48) + 16 * v112);
            v115 = *v114;
            v116 = v114[1];

            v117 = v97;
            v118 = sub_100005F4C(v115, v116);
            v120 = v119;

            if (v120)
            {
              v121 = *(v117[7] + 8 * v118);
              sub_1001A5FDC(v113);

              sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
              v58 = v250;
              sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
              v122 = Set._bridgeToObjectiveC()().super.isa;

              [v121 removeHashtags:v122];
            }

            else
            {
            }

            v103 = v244;
            v86 = v245;
            v97 = v117;
          }
        }

        while (1)
        {
          v111 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_226;
          }

          if (v111 >= v43)
          {
            break;
          }

          v110 = v100[v111];
          ++v98;
          if (v110)
          {
            v98 = v111;
            goto LABEL_73;
          }
        }

        v87 = v235;
      }
    }

    v255 = _swiftEmptyArrayStorage;
    if (!v87)
    {
      v123 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v123)
      {
        goto LABEL_98;
      }

      goto LABEL_80;
    }

    v123 = _CocoaArrayWrapper.endIndex.getter();
    if (!v123)
    {
LABEL_98:
      v244 = _swiftEmptyArrayStorage;
      v132 = v86 & 0xFFFFFFFFFFFFFF8;
      if (v87)
      {
        goto LABEL_99;
      }

LABEL_95:
      v133 = *(v132 + 16);
      if (!v133)
      {
        goto LABEL_112;
      }

LABEL_100:
      v134 = 0;
      v135 = v86 & 0xC000000000000001;
      v240 = v86 & 0xFFFFFFFFFFFFFF8;
      v136 = 5;
      while (1)
      {
        if (v135)
        {
          v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v134 >= *(v240 + 16))
          {
            goto LABEL_232;
          }

          v137 = *(v86 + 8 * v134 + 32);
        }

        v138 = v137;
        v139 = [v137 hashtags];
        if (!v139)
        {
          break;
        }

        v43 = v139;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
        v140 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v140 & 0xC000000000000001) != 0)
        {
          v43 = __CocoaSet.count.getter();

          v58 = v250;
          v86 = v245;
          if (!v43)
          {
            goto LABEL_132;
          }
        }

        else
        {

          v141 = *(v140 + 16);

          v58 = v250;
          v86 = v245;
          if (!v141)
          {
            goto LABEL_132;
          }
        }

        v142 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          goto LABEL_228;
        }

        ++v134;
        ++v136;
        if (v142 == v133)
        {
          goto LABEL_112;
        }
      }

LABEL_132:
      v154 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        goto LABEL_241;
      }

      if (v235)
      {
        v155 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v155 = *(v240 + 16);
      }

      while (2)
      {
        if (v154 == v155)
        {
          goto LABEL_115;
        }

        v156 = v136 - 4;
        if ((v86 & 0xC000000000000001) != 0)
        {
          v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v156 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }

          if (v156 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_230;
          }

          v157 = *(v86 + 8 * v136);
        }

        v158 = v157;
        v159 = [v157 hashtags];
        if (v159)
        {
          v43 = v159;
          v245 = v86 & 0xC000000000000001;
          v160 = v86;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
          v161 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v161 & 0xC000000000000001) != 0)
          {
            v43 = __CocoaSet.count.getter();

            if (v43)
            {
              goto LABEL_144;
            }

LABEL_149:
            v58 = v250;
            v86 = v160;
          }

          else
          {

            v164 = *(v161 + 16);

            if (!v164)
            {
              goto LABEL_149;
            }

LABEL_144:
            v58 = v250;
            v86 = v160;
            if (v156 != v134)
            {
              if (v245)
              {
                v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v134 & 0x8000000000000000) != 0)
                {
                  goto LABEL_238;
                }

                v165 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v134 >= v165)
                {
                  goto LABEL_239;
                }

                if (v156 >= v165)
                {
                  goto LABEL_240;
                }

                v166 = *(v160 + 8 * v136);
                v162 = *(v86 + 8 * v134 + 32);
                v163 = v166;
              }

              v43 = v163;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v86 & 0x8000000000000000) != 0 || (v86 & 0x4000000000000000) != 0)
              {
                v86 = sub_1002618D4(v86);
                v167 = (v86 >> 62) & 1;
              }

              else
              {
                LODWORD(v167) = 0;
              }

              v168 = v86 & 0xFFFFFFFFFFFFFF8;
              v169 = *((v86 & 0xFFFFFFFFFFFFFF8) + 8 * v134 + 0x20);
              *((v86 & 0xFFFFFFFFFFFFFF8) + 8 * v134 + 0x20) = v43;

              if ((v86 & 0x8000000000000000) != 0 || v167)
              {
                v86 = sub_1002618D4(v86);
                v168 = v86 & 0xFFFFFFFFFFFFFF8;
                if ((v156 & 0x8000000000000000) != 0)
                {
                  goto LABEL_234;
                }
              }

              else if ((v156 & 0x8000000000000000) != 0)
              {
                goto LABEL_234;
              }

              if (v156 >= *(v168 + 16))
              {
                goto LABEL_235;
              }

              v170 = *(v168 + 8 * v136);
              *(v168 + 8 * v136) = v162;

              v254 = v86;
            }

            v171 = __OFADD__(v134++, 1);
            if (v171)
            {
              goto LABEL_233;
            }
          }
        }

        else
        {
        }

        v154 = v136 - 3;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_231;
        }

        if (v86 >> 62)
        {
          v155 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v155 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v136;
        continue;
      }
    }

LABEL_80:
    v124 = 0;
    v244 = (v86 & 0xC000000000000001);
    v125 = v86 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v244)
      {
        v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v124 >= *(v125 + 16))
        {
          goto LABEL_223;
        }

        v126 = *(v86 + 8 * v124 + 32);
      }

      v127 = v126;
      v128 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      v129 = [v126 hashtags];
      if (!v129)
      {
        goto LABEL_81;
      }

      v130 = v129;
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
      v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v131 = (v43 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v43 + 16);

      v58 = v250;
      v86 = v245;
      if (v131)
      {
      }

      else
      {
LABEL_81:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v43 = *(v255 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v124;
    }

    while (v128 != v123);
    v244 = v255;
    v132 = v86 & 0xFFFFFFFFFFFFFF8;
    if (!v235)
    {
      goto LABEL_95;
    }

LABEL_99:
    v133 = _CocoaArrayWrapper.endIndex.getter();
    if (v133)
    {
      goto LABEL_100;
    }

LABEL_112:
    if (v235)
    {
      v134 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v134 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_115:
    if (v86 >> 62)
    {
      v143 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v143 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v144 = v242;
    v145 = v244;
    if (v143 < v134)
    {
      goto LABEL_236;
    }

    sub_100260EBC(v134, v143);
    if ((v145 & 0x8000000000000000) != 0 || (v145 & 0x4000000000000000) != 0)
    {
      v146 = _CocoaArrayWrapper.endIndex.getter();
      if (!v146)
      {
        goto LABEL_176;
      }

LABEL_121:
      if (v146 >= 1)
      {
        v147 = 0;
        v148 = v145 & 0xC000000000000001;
        do
        {
          if (v148)
          {
            v149 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v149 = *(v145 + 8 * v147 + 32);
          }

          v150 = v149;
          if (v243)
          {
            [v149 setWasDeletedDueToUserInitiatedChanges:1];
          }

          [v247 deleteObject:v150];

          v151 = Logger.logObject.getter();
          v43 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v151, v43))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v255 = v153;
            *v152 = v239;
            *(v152 + 4) = sub_10000668C(v246, v58, &v255);
            _os_log_impl(&_mh_execute_header, v151, v43, "RDHashtagLabelUpdater deleted hashtag label {canonicalName: %s}", v152, 0xCu);
            sub_10000607C(v153);
            v144 = v242;

            v145 = v244;
          }

          ++v147;
        }

        while (v146 != v147);
        goto LABEL_176;
      }

      goto LABEL_237;
    }

    v146 = *(v145 + 16);
    if (v146)
    {
      goto LABEL_121;
    }

LABEL_176:

    v172 = v254;
    if (v254 >> 62)
    {
      v173 = _CocoaArrayWrapper.endIndex.getter();
      v240 = v172;
      if (v173)
      {
        break;
      }

      goto LABEL_218;
    }

    v173 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v240 = v254;
    if (v173)
    {
      break;
    }

LABEL_218:

    v50 = v230;
    v48 = v233;
    v53 = v229;
    v43 = v232;
    if (!v232)
    {
      goto LABEL_30;
    }
  }

  v174 = 0;
  v245 = v240 & 0xC000000000000001;
  v235 = v240 & 0xFFFFFFFFFFFFFF8;
  v234 = v240 + 32;
  v244 = v173;
  while (1)
  {
    if (v245)
    {
      v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v174 >= *(v235 + 16))
      {
        goto LABEL_227;
      }

      v175 = *(v234 + 8 * v174);
    }

    v176 = v175;
    v171 = __OFADD__(v174++, 1);
    if (v171)
    {
      break;
    }

    v177 = [v175 name];
    if (v177)
    {
      v178 = v177;
      v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v181 = v180;

      v43 = 0;
      v182 = v253;
      v183 = *(v253 + 16);
      while (1)
      {
        if (v183 == v43)
        {

LABEL_207:
          v173 = v244;
          goto LABEL_208;
        }

        v184 = v251;
        if (v43 >= *(v182 + 16))
        {
          __break(1u);
          goto LABEL_222;
        }

        sub_100211458(v182 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v43, v251);
        v185 = (v184 + *(v144 + 20));
        if (*v185 == v179 && v185[1] == v181)
        {
          break;
        }

        ++v43;
        v187 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v188 = v184;
        v189 = v187;
        sub_1002114BC(v188);
        v182 = v253;
        if (v189)
        {
          goto LABEL_198;
        }
      }

      sub_1002114BC(v184);
LABEL_198:

      v190 = [v176 hashtags];
      if (v190)
      {
        v191 = v190;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        v58 = v250;
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
        v192 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = sub_100202C38(v192);
        v194 = v193;

        if (v194)
        {
          v195 = String._bridgeToObjectiveC()();
          [v176 setName:v195];

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            *v198 = v238;
            *(v198 + 4) = sub_10000668C(v246, v58, &v255);
            *(v198 + 12) = 2080;
            v199 = sub_10000668C(v43, v194, &v255);

            *(v198 + 14) = v199;
            _os_log_impl(&_mh_execute_header, v196, v197, "RDHashtagLabelUpdater updated hashtag label name to next occurrence {canonicalName: %s, nextOccurrenceHashtagName: %s}", v198, 0x16u);
            swift_arrayDestroy();
            v144 = v242;
          }

          else
          {
          }

          goto LABEL_207;
        }
      }

      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.fault.getter();
      v202 = os_log_type_enabled(v200, v201);
      v173 = v244;
      if (v202)
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&_mh_execute_header, v200, v201, "RDHashtagLabelUpdater: Cannot find a non-nil next occurrence hashtag name. We have non empty hashtagLabel.hashtags but we can't find one with non-nil name.", v203, 2u);
      }
    }

    else
    {
LABEL_208:
      v204 = [v176 hashtags];
      if (v204)
      {
        v205 = v204;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        v58 = v250;
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
        v206 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v207 = v241;
        sub_1002030B0(v206, v241);

        v208 = type metadata accessor for Date();
        v209 = *(v208 - 8);
        v210 = 0;
        if ((*(v209 + 48))(v207, 1, v208) != 1)
        {
          v211 = v241;
          v210 = Date._bridgeToObjectiveC()().super.isa;
          (*(v209 + 8))(v211, v208);
        }
      }

      else
      {
        v212 = type metadata accessor for Date();
        (*(*(v212 - 8) + 56))(v241, 1, 1, v212);
        v210 = 0;
      }

      [v176 setRecencyDate:v210];

      v213 = v176;
      v214 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v214, v43))
      {
        v215 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *v215 = v238;
        *(v215 + 4) = sub_10000668C(v246, v58, &v255);
        *(v215 + 12) = 2080;
        v216 = [v213 recencyDate];
        if (v216)
        {
          v217 = v236;
          v218 = v216;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v219 = 0;
        }

        else
        {
          v219 = 1;
          v217 = v236;
        }

        v220 = type metadata accessor for Date();
        (*(*(v220 - 8) + 56))(v217, v219, 1, v220);
        v221 = Optional.descriptionOrNil.getter();
        v223 = v222;
        sub_1000050A4(v217, &unk_100938850, qword_100795AE0);
        v224 = sub_10000668C(v221, v223, &v255);

        *(v215 + 14) = v224;
        _os_log_impl(&_mh_execute_header, v214, v43, "RDHashtagLabelUpdater updated hashtag label recency date {canonicalName: %s, new-recencyDate: %s}", v215, 0x16u);
        swift_arrayDestroy();

        v144 = v242;
        v58 = v250;
        v173 = v244;
      }

      else
      {
      }
    }

    if (v174 == v173)
    {
      goto LABEL_218;
    }
  }

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
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:

  __break(1u);
  return result;
}

void sub_1002028D8(uint64_t a1, id *a2)
{
  v3 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v31 - v5;
  v7 = *a2;
  v8 = [*a2 name];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v32 = v10;
      v33 = v12;
      static Locale.current.getter();
      v14 = type metadata accessor for Locale();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      sub_10013BCF4();
      v15 = StringProtocol.foldedStringForWriting(locale:)();
      v17 = v16;
      sub_1000050A4(v6, &unk_10093F420, &unk_100797AE0);

      v31[1] = v7;
      v32 = v15;
      v33 = v17;
      sub_1000F5104(&qword_10093D0D8, &qword_10079AD38);
      sub_10000CB48(&unk_10093D0E0, &qword_10094F560, &qword_1007AC6A0);
      Dictionary<>.append(_:toCollectionUnderKey:)();

      return;
    }
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093CC70);
  v19 = v7;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136446210;
    v24 = [v19 remObjectID];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 description];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_10000668C(v27, v29, &v32);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDHashtagLabelUpdater: Unexpected hashtag with nil or empty name %{public}s", v22, 0xCu);
    sub_10000607C(v23);
  }
}

uint64_t sub_100202C38(unint64_t a1)
{
  v1 = a1;
  v43 = 0;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v20 = *(a1 + 32);
    v21 = v20 & 0x3F;
    v8 = ((1 << v20) + 63) >> 6;
    v5 = 8 * v8;

    if (v21 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

  v2 = &_swiftEmptySetSingleton;
  v46 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (!v3)
  {
LABEL_20:

    goto LABEL_37;
  }

  v4 = v3;
  v5 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v6 = v4;
  v2 = &_swiftEmptySetSingleton;
  while (1)
  {
    v44 = v6;
    swift_dynamicCast();
    v7 = [v45 name];
    if (v7)
    {
      break;
    }

LABEL_5:
    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v45;
  v9 = v2[2];
  if (v2[3] <= v9)
  {
    sub_100380E64(v9 + 1);
  }

  v2 = v46;
  v1 = v45;
  v10 = NSObject._rawHashValue(seed:)(v46[5]);
  v11 = (v46 + 7);
  v12 = -1 << *(v46 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~v46[(v13 >> 6) + 7]) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~v46[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    *(v2[6] + 8 * v15) = v8;
    ++v2[2];
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = *&v11[8 * v14];
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v40[1] = v40;
    v41 = v8;
    __chkstk_darwin(isStackAllocationSafe);
    v23 = v40 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v5);
    v42 = 0;
    v24 = 0;
    v25 = 1 << v1[32];
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v1 + 7);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_32:
      v5 = v29 | (v24 << 6);
      v32 = *(*(v1 + 6) + 8 * v5);
      v8 = [v32 name];

      if (v8)
      {

        *&v23[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_36:
          v2 = sub_1001A112C(v23, v41, v42, v1);
          goto LABEL_37;
        }
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        goto LABEL_36;
      }

      v31 = *&v1[8 * v24 + 56];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_32;
      }
    }
  }

  v39 = swift_slowAlloc();
  v2 = sub_1001BAAE8(v39, v8, v1, sub_1002119A0, 0);

LABEL_37:
  sub_100205690(v2);
  v35 = v34;

  if (!v35)
  {
    return 0;
  }

  v36 = [v35 name];

  if (!v36)
  {
    return 0;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v37;
}