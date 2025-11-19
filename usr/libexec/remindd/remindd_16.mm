Swift::String __swiftcall REMCDAlarm.recordType()()
{
  v0 = 0x6D72616C41;
  v1 = 0xE500000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v30 = &v27 - v7;
  v8 = String._bridgeToObjectiveC()();
  v33.receiver = v3;
  v33.super_class = REMCDAlarm;
  objc_msgSendSuper2(&v33, "mergeDataFromRecord:accountID:", from.super.isa, v8);

  v9 = [(objc_class *)from.super.isa recordID];
  v10 = [v9 recordName];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v3 ckIdentifierFromRecordName:v10];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v11];

  v12 = 0;
  v28 = "OriginalAlarmUID";
  v29 = "cationEngineAssembly";
  v27 = "DueDateResolutionTokenAsNonce";
  v13 = &type metadata for String;
  do
  {
    v14 = *(&off_1008DF030 + v12 + 32);
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        if (v32)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        [v3 setOriginalAlarmUID:{v15, v27, v28, v29}];
        goto LABEL_29;
      }

      if (v14 == 4)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (!v16)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v16 = 0;
        }

        v25 = sub_1001287DC(v16);

        if (v25)
        {
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (!v26)
          {
          }
        }

        else
        {
          v26 = 0;
        }

        [v3 setReminder:{v26, v27, v28, v29}];
      }
    }

    else if (*(&off_1008DF030 + v12 + 32))
    {
      if (v14 == 1)
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        if (v32)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        [v3 setAlarmUID:{v15, v27, v28, v29}];
LABEL_29:

        goto LABEL_7;
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v24 = v31;
      if (v32)
      {
        v24 = 0.0;
      }

      [v3 setDueDateResolutionTokenAsNonce:{v24, v27, v28, v29}];
    }

    else
    {
      v17 = v3;
      v18 = v13;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v19 = type metadata accessor for Date();
      v20 = v30;
      CKRecordKeyValueSetting.subscript.getter();
      v21 = *(v19 - 8);
      isa = 0;
      if ((*(v21 + 48))(v20, 1, v19) != 1)
      {
        v23 = v30;
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v21 + 8))(v23, v19);
      }

      v3 = v17;
      [v17 setAcknowledgedDate:{isa, v27, v28, v29}];

      v13 = v18;
    }

LABEL_7:
    ++v12;
  }

  while (v12 != 6);
}

CKRecord_optional __swiftcall REMCDAlarm.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v42 - v8;
  v46.receiver = v0;
  v46.super_class = REMCDAlarm;
  v11 = objc_msgSendSuper2(&v46, "newlyCreatedRecord", v7);
  if (v11)
  {
    v12 = 0;
    v42[2] = "OriginalAlarmUID";
    v42[3] = "cationEngineAssembly";
    v42[1] = "DueDateResolutionTokenAsNonce";
    do
    {
      v14 = *(&off_1008DF058 + v12 + 32);
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v26 = [v1 originalAlarmUID];
          if (v26)
          {
            v27 = v26;
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            *(&v44 + 1) = &type metadata for String;
            v45 = &protocol witness table for String;
            *&v43 = v28;
            *(&v43 + 1) = v30;
          }

          else
          {
            v45 = 0;
            v43 = 0u;
            v44 = 0u;
          }
        }

        else
        {
          if (v14 == 4)
          {
            v20 = [v1 reminder];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 recordID];
            }

            else
            {
              v22 = 0;
            }

            v40 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v22];

            CKRecord.subscript.setter();
            goto LABEL_6;
          }

          v32 = [v1 trigger];
          if (v32 && (v33 = v32, v34 = [v32 ckIdentifier], v33, v34))
          {
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            *(&v44 + 1) = &type metadata for String;
            v45 = &protocol witness table for String;
            *&v43 = v35;
            *(&v43 + 1) = v37;
          }

          else
          {
            v45 = 0;
            v43 = 0u;
            v44 = 0u;
          }
        }
      }

      else if (*(&off_1008DF058 + v12 + 32))
      {
        if (v14 != 1)
        {
          [v1 dueDateResolutionTokenAsNonce];
          *(&v44 + 1) = &type metadata for Double;
          v45 = &protocol witness table for Double;
          *&v43 = v31;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_5;
        }

        v15 = [v1 alarmUID];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          *(&v44 + 1) = &type metadata for String;
          v45 = &protocol witness table for String;
          *&v43 = v17;
          *(&v43 + 1) = v19;
        }

        else
        {
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
        }
      }

      else
      {
        v23 = [v1 acknowledgedDate];
        if (v23)
        {
          v24 = v23;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v38 = type metadata accessor for Date();
        v39 = *(v38 - 8);
        (*(v39 + 56))(v5, v25, 1, v38);
        sub_10012F7FC(v5, v9);
        if ((*(v39 + 48))(v9, 1, v38) == 1)
        {
          sub_1001AAD5C(v9);
          v43 = 0u;
          v44 = 0u;
          v45 = 0;
        }

        else
        {
          *(&v44 + 1) = v38;
          v45 = &protocol witness table for Date;
          v13 = sub_1000103CC(&v43);
          (*(v39 + 32))(v13, v9, v38);
        }
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_5:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_6:
      ++v12;
    }

    while (v12 != 6);
  }

  v41 = v11;
  result.value.super.isa = v41;
  result.is_nil = v10;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
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
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
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

void *REMCDAlarm.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 trigger];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791300;
  v4 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  result = v3;
  *(v3 + 56) = v4;
  *(v3 + 32) = v2;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093BA40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 reminder];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for alarm {alarmID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 reminder];
  if (v24)
  {
    v46 = v24;
    if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v25 = v4;
      v26 = v46;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = &selRef_persistentStoreForIdentifier_;
        v31 = [v25 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v30 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v37 = sub_10000668C(v34, v36, &v47);

        *(v29 + 4) = v37;
        *(v29 + 12) = 2082;
        v38 = [v26 v30[106]];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reminder is marked for deletion but alarm is not {alarmID: %{public}s, reminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

uint64_t _sSo10REMCDAlarmC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
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
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo10REMCDAlarmC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
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
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t static REMCDBaseSection.cdEntityName.getter()
{
  v0 = [objc_opt_self() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Bool __swiftcall REMCDBaseSection.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1001B2134(v15);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = (*((swift_isaMask & *v1) + 0x50))();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

id REMCDBaseSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDBaseSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDBaseSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDBaseSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall REMCDBaseSection.incrementSpotlightIndexCount()()
{
  if ([v0 spotlightIndexCount] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 spotlightIndexCount];
    v1 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }
  }

  [v0 setSpotlightIndexCount:v1];
}

uint64_t sub_1001D1F3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  sub_1000EECAC(v7, a2);
  v8 = sub_100006654(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100006654(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_1001D2004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x44496D72616C61;
  }

  else
  {
    v4 = 0x49746E756F636361;
  }

  if (v3)
  {
    v5 = 0xE900000000000044;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x44496D72616C61;
  }

  else
  {
    v6 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000044;
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

Swift::Int sub_1001D20B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D2138()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D21AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001D223C(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x44496D72616C61;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D229C()
{
  if (*v0)
  {
    result = 0x44496D72616C61;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_1001D22DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001D2340(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65746E49656D6974;
  }

  else
  {
    v4 = 0x44497463656A626FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEC0000006C617672;
  }

  if (*a2)
  {
    v6 = 0x65746E49656D6974;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v7 = 0xEC0000006C617672;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_1001D23F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D247C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D24F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001D2588(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x65746E49656D6974;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006C617672;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D25EC()
{
  if (*v0)
  {
    result = 0x65746E49656D6974;
  }

  else
  {
    result = 0x44497463656A626FLL;
  }

  *v0;
  return result;
}

id sub_1001D270C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMAlarmDateTriggerCDIngestor_ObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D2764(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x706D6F4365746164;
  }

  else
  {
    v4 = 0x44497463656A626FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEE0073746E656E6FLL;
  }

  if (*a2)
  {
    v6 = 0x706D6F4365746164;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v7 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_1001D2818()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D28A8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D2924()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001D29BC(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x706D6F4365746164;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE0073746E656E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D2A24()
{
  if (*v0)
  {
    result = 0x706D6F4365746164;
  }

  else
  {
    result = 0x44497463656A626FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1001D2A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001007EA8C0;
  if (v2 == 1)
  {
    v5 = 0x80000001007EA8C0;
  }

  else
  {
    v3 = 0x74696D69786F7270;
    v5 = 0xE900000000000079;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x74696D69786F7270;
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001D2B94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D2C40()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D2CD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001D2D80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D3DEC(*a1);
  *a2 = result;
  return result;
}

void sub_1001D2DB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007EA8C0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x74696D69786F7270;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44497463656A626FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001D2E28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D3DEC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D2E50()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x74696D69786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_1001D2ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E657665;
  }

  else
  {
    v4 = 0x44497463656A626FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E657665;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_1001D2F7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D2FFC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D3068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D30F0@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1001D314C(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x746E657665;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D31A4@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001D3204()
{
  if (*v0)
  {
    result = 0x746E657665;
  }

  else
  {
    result = 0x44497463656A626FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1001D329C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1007953F0;
  v7 = 16;
  if (v3)
  {
    v7 = 24;
  }

  v8 = *(v4 + v7);
  *(v5 + 32) = v8;
  v9 = v8;
  return v6;
}

id sub_1001D333C(id ObjCClassFromMetadata)
{
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v13 = [ObjCClassFromMetadata remObjectIDWithError:{&v41, v10}];
  if (v13)
  {
    v14 = v13;
    v15 = v41;
    v16 = [ObjCClassFromMetadata dateComponentsData];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = type metadata accessor for JSONDecoder();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1001D4528();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v1)
      {

        (*(v8 + 56))(v6, 1, 1, v7);
        sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
        ObjCClassFromMetadata = objc_opt_self();
        v24 = String._bridgeToObjectiveC()();
        [ObjCClassFromMetadata internalErrorWithDebugDescription:v24];

        swift_willThrow();
        sub_10001BBA0(v18, v20);
      }

      else
      {

        (*(v8 + 56))(v6, 0, 1, v7);
        (*(v8 + 32))(v12, v6, v7);
        v35 = objc_allocWithZone(REMAlarmDateTrigger);
        v36.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v40 = v20;
        isa = v36.super.isa;
        ObjCClassFromMetadata = [v35 initWithObjectID:v14 dateComponents:v36.super.isa];

        sub_10001BBA0(v18, v40);
        (*(v8 + 8))(v12, v7);
      }
    }

    else
    {
      if (qword_100935B90 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_10093BB68);
      v27 = v14;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v14;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "REMAlarmDateTriggerCDIngestor: cdAlarmDateTrigger.dateComponentsData is nil {cdAlarmDateTrigger.remObjectID: %@}", v30, 0xCu);
        sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
      }

      v33 = objc_opt_self();
      sub_1001D44DC();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = String._bridgeToObjectiveC()();
      [v33 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v34];

      swift_willThrow();
    }
  }

  else
  {
    v25 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return ObjCClassFromMetadata;
}

id sub_1001D3844(void *a1)
{
  v2 = [a1 event];
  v10 = 0;
  v3 = [a1 remObjectIDWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = v3;
    v6 = objc_allocWithZone(REMAlarmVehicleTrigger);
    v7 = v4;
    v2 = [v6 initWithObjectID:v5 event:v2];
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1001D394C(void *a1)
{
  v2 = [a1 proximity];
  v3 = [a1 title];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 locationUID];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = 0;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = String._bridgeToObjectiveC()();

  if (v10)
  {
LABEL_7:
    v12 = String._bridgeToObjectiveC()();

    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v13 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v11 locationUID:v12];

  [a1 latitude];
  [v13 setLatitude:?];
  [a1 longitude];
  [v13 setLongitude:?];
  [a1 radius];
  [v13 setRadius:?];
  v14 = [a1 address];
  [v13 setAddress:v14];

  v15 = [a1 routing];
  [v13 setRouting:v15];

  v16 = [a1 referenceFrameString];
  [v13 setReferenceFrameString:v16];

  v17 = [a1 contactLabel];
  [v13 setContactLabel:v17];

  v18 = [a1 mapKitHandle];
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v20, v22);
  }

  else
  {
    v23.super.isa = 0;
  }

  [v13 setMapKitHandle:v23.super.isa];

  v31 = 0;
  v24 = [a1 remObjectIDWithError:&v31];
  v25 = v31;
  if (v24)
  {
    v26 = v24;
    v27 = objc_allocWithZone(REMAlarmLocationTrigger);
    v28 = v25;
    v29 = [v27 initWithObjectID:v26 structuredLocation:v13 proximity:v2];
  }

  else
  {
    v29 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v29;
}

id sub_1001D3CF0(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [a1 remObjectIDWithError:&v8];
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    [v1 timeInterval];
    v1 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithObjectID:v3 timeInterval:v5];
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1001D3DEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E10E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1001D3E38(void *a1, void *a2, void *a3)
{
  type metadata accessor for REMAlarmDateTriggerCDIngestor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;
  v7 = a2;
  v8 = a3;
  v9 = sub_1001D333C(a1);

  return v9;
}

void sub_1001D4010(void *a1, void *a2, uint64_t a3)
{
  v46 = type metadata accessor for UUID();
  v6 = *(*(v46 - 8) + 64);
  *&v8 = __chkstk_darwin(v46).n128_u64[0];
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a3 + 32);
  v45 = (v7 + 8);
  while (1)
  {
    while (1)
    {
      v17 = *v12++;
      v16 = v17;
      if (v17)
      {
        break;
      }

      v13 = [a1 remObjectID];
      v14 = [v13 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v45)(v10, v46);
      [a2 setIdentifier:v15.super.isa];
LABEL_4:

      if (!--v11)
      {
        return;
      }
    }

    if (v16 == 1)
    {
      v18 = [a1 structuredLocation];
      v19 = [v18 locationUID];

      [a2 setLocationUID:v19];
      v20 = [a1 structuredLocation];
      v21 = [v20 title];

      [a2 setTitle:v21];
      v22 = [a1 structuredLocation];
      [v22 latitude];
      v24 = v23;

      [a2 setLatitude:v24];
      v25 = [a1 structuredLocation];
      [v25 longitude];
      v27 = v26;

      [a2 setLongitude:v27];
      v28 = [a1 structuredLocation];
      [v28 radius];
      v30 = v29;

      [a2 setRadius:v30];
      v31 = [a1 structuredLocation];
      v32 = [v31 address];

      [a2 setAddress:v32];
      v33 = [a1 structuredLocation];
      v34 = [v33 routing];

      [a2 setRouting:v34];
      v35 = [a1 structuredLocation];
      v36 = [v35 referenceFrameString];

      [a2 setReferenceFrameString:v36];
      v37 = [a1 structuredLocation];
      v38 = [v37 contactLabel];

      [a2 setContactLabel:v38];
      v39 = [a1 structuredLocation];
      v15.super.isa = [v39 mapKitHandle];

      if (v15.super.isa)
      {
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v40, v42);
      }

      [a2 setMapKitHandle:v15.super.isa];
      goto LABEL_4;
    }

    v43 = [a1 proximity];
    if (v43 < -32768)
    {
      break;
    }

    if (v43 >= 0x8000)
    {
      goto LABEL_15;
    }

    [a2 setProximity:v43];
    if (!--v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_1001D44DC()
{
  result = qword_100940350;
  if (!qword_100940350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940350);
  }

  return result;
}

unint64_t sub_1001D4528()
{
  result = qword_10093B928;
  if (!qword_10093B928)
  {
    type metadata accessor for DateComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B928);
  }

  return result;
}

unint64_t sub_1001D4604()
{
  result = qword_10093C408;
  if (!qword_10093C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C408);
  }

  return result;
}

unint64_t sub_1001D468C()
{
  result = qword_10093C420;
  if (!qword_10093C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C420);
  }

  return result;
}

unint64_t sub_1001D4714()
{
  result = qword_10093C438;
  if (!qword_10093C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C438);
  }

  return result;
}

unint64_t sub_1001D479C()
{
  result = qword_10093C450;
  if (!qword_10093C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C450);
  }

  return result;
}

unint64_t sub_1001D4824()
{
  result = qword_10093C468;
  if (!qword_10093C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C468);
  }

  return result;
}

uint64_t sub_1001D488C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C470);
  v1 = sub_100006654(v0, qword_10093C470);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001D4954(uint64_t a1, NSString a2)
{
  v5 = [v2 secondaryGroceryLocalesInfoChecksum];
  if (!v5)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v7 != a1 || v9 != a2)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v2 setSecondaryGroceryLocalesInfoChecksum:a2];

    v12 = [v2 createResolutionTokenMapIfNecessary];
    v13 = String._bridgeToObjectiveC()();
    [v12 updateForKey:v13];

    return;
  }
}

uint64_t assignWithCopy for RDClientIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 44);
  v9 = *(a2 + 40);
  sub_10000C71C(*a2, v4, v5, v6, v7, v9 | (v8 << 32));
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40) | (*(a1 + 44) << 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 44) = v8;
  sub_10000CC4C(v10, v11, v12, v13, v14, v15);
  return a1;
}

__n128 initializeWithTake for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDClientIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 44);
  v5 = *(a2 + 40);
  v6 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40) | (*(a1 + 44) << 32);
  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  *(a1 + 44) = v4;
  sub_10000CC4C(v6, v8, v7, v9, v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDClientIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 46))
  {
    return (*a1 + 16381);
  }

  v3 = ((*(a1 + 44) >> 14) | (4 * ((*(a1 + 44) >> 2) & 0xF80 | (*(a1 + 44) >> 1)))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RDClientIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 0;
      *(result + 44) = ((v3 << 34) & 0xFE0000000000 | ((v3 & 0x7F) << 33)) >> 32;
    }
  }

  return result;
}

uint64_t sub_1001D4D10(uint64_t a1)
{
  v1 = *(a1 + 44) >> 14;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001D4D2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = a1 + 40;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x3FFF;
  return result;
}

uint64_t sub_1001D4D48(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 40);
    result += 40;
    v3 = (v2 | (*(result + 4) << 32)) & 0x101FFFFFFFFLL | (a2 << 46);
    *result = v2;
    *(result + 4) = WORD2(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 44) = -16384;
  }

  return result;
}

uint64_t assignWithCopy for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return a1;
}

uint64_t assignWithTake for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDClientIdentity.XPCClientIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 46))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDClientIdentity.XPCClientIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id static REMCDSavedReminder.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

unint64_t sub_1001D5034(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000027;
    if (a1 == 10)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001CLL;
    }

    v7 = 0xD000000000000017;
    v8 = 0x53676E6974726F73;
    if (a1 != 7)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x44497463656A626FLL;
    v2 = 1701667182;
    v3 = 0x726F6C6F63;
    if (a1 != 4)
    {
      v3 = 0x626D456567646162;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (a1 != 1)
    {
      v4 = 0x72756769666E6F63;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001D51D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001D5034(*a1);
  v5 = v4;
  if (v3 == sub_1001D5034(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001D5258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001D5034(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D52BC()
{
  sub_1001D5034(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001D5310()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001D5034(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001D5370@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001D53A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001D5034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001D53CC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3AC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D540C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6341746E65726170;
  v4 = 0xEF4449746E756F63;
  v5 = 0x80000001007E9FD0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001007E9FD0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x49746E756F636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000044;
  }

  v8 = 0x6341746E65726170;
  if (*a2 == 1)
  {
    v5 = 0xEF4449746E756F63;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001D5520()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D55D8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001D567C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001D5730@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3F8(*a1);
  *a2 = result;
  return result;
}

void sub_1001D5760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0xEF4449746E756F63;
  v5 = 0x6341746E65726170;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001007E9FD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49746E756F636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001D57D4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3F8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D57FC()
{
  v1 = 0x6341746E65726170;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

Swift::Int sub_1001D587C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D58E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001D5960@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1850, v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_1001D59E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D5A54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001D5AB4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1001D5B24@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1888, v3);

  *a2 = v5 != 0;
  return result;
}

void *sub_1001D5BA8()
{
  result = sub_1001D5BC8();
  qword_100974C38 = result;
  return result;
}

void *sub_1001D5BC8()
{
  v0 = 0;
  while (1)
  {
    v4 = *(&off_1008E2050 + v0 + 32);
    if (v4 > 5)
    {
      if (*(&off_1008E2050 + v0 + 32) > 8u)
      {
        goto LABEL_3;
      }

      if (v4 == 7)
      {
        v11 = 0x53676E6974726F73;
      }

      else
      {
        v11 = 0xD000000000000015;
      }

      v12 = 0x80000001007EA6E0;
      if (v4 == 7)
      {
        v12 = 0xEC000000656C7974;
      }

      v9 = v4 == 6 ? 0xD000000000000017 : v11;
      v10 = v4 == 6 ? 0x80000001007E8D40 : v12;
    }

    else
    {
      v5 = 0x726F6C6F63;
      if (v4 != 4)
      {
        v5 = 0x626D456567646162;
      }

      v6 = 0xE500000000000000;
      if (v4 != 4)
      {
        v6 = 0xEB000000006D656CLL;
      }

      if (v4 == 3)
      {
        v5 = 1701667182;
        v6 = 0xE400000000000000;
      }

      v7 = 0xD000000000000017;
      if (v4 != 1)
      {
        v7 = 0x72756769666E6F63;
      }

      v8 = 0xED00006E6F697461;
      if (v4 == 1)
      {
        v8 = 0x80000001007E8C60;
      }

      if (!*(&off_1008E2050 + v0 + 32))
      {
        v7 = 0x44497463656A626FLL;
        v8 = 0xE800000000000000;
      }

      v9 = *(&off_1008E2050 + v0 + 32) <= 2u ? v7 : v5;
      v10 = *(&off_1008E2050 + v0 + 32) <= 2u ? v8 : v6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_100005F4C(v9, v10);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (_swiftEmptyDictionarySingleton[3] >= v19)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v14;
        sub_100373664();
        v14 = v26;
        if ((v20 & 1) == 0)
        {
LABEL_41:
          _swiftEmptyDictionarySingleton[(v14 >> 6) + 8] |= 1 << v14;
          v22 = (_swiftEmptyDictionarySingleton[6] + 16 * v14);
          *v22 = v9;
          v22[1] = v10;
          v23 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
          *v23 = v9;
          v23[1] = v10;
          v24 = _swiftEmptyDictionarySingleton[2];
          v18 = __OFADD__(v24, 1);
          v25 = v24 + 1;
          if (v18)
          {
            goto LABEL_80;
          }

          _swiftEmptyDictionarySingleton[2] = v25;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_100005F4C(v9, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_81;
      }
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_2:
    v1 = v14;

    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v9;
    v2[1] = v10;

LABEL_3:
    if (++v0 == 12)
    {
      v27 = 0;
      while (1)
      {
        v31 = &off_1008E2080 + v27++;
        v32 = v31[32];
        v33 = 0x6341746E65726170;
        if (v32 != 1)
        {
          v33 = 0xD000000000000014;
        }

        v34 = 0xEF4449746E756F63;
        if (v32 != 1)
        {
          v34 = 0x80000001007E9FD0;
        }

        v35 = 0xED0000746E756F63;
        if (v32 != 1)
        {
          v35 = 0x80000001007E9FD0;
        }

        if (v32)
        {
          v36 = v33;
        }

        else
        {
          v36 = 0x49746E756F636361;
        }

        if (v32)
        {
          v37 = v34;
        }

        else
        {
          v37 = 0xE900000000000044;
        }

        if (v32)
        {
          v38 = v33;
        }

        else
        {
          v38 = 0x746E756F636361;
        }

        if (v32)
        {
          v39 = v35;
        }

        else
        {
          v39 = 0xE700000000000000;
        }

        v40 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_100005F4C(v36, v37);
        v43 = _swiftEmptyDictionarySingleton[2];
        v44 = (v42 & 1) == 0;
        v18 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v18)
        {
          __break(1u);
          goto LABEL_78;
        }

        v46 = v42;
        if (_swiftEmptyDictionarySingleton[3] >= v45)
        {
          if (v40)
          {
            goto LABEL_70;
          }

          v52 = v41;
          sub_100373664();
          v41 = v52;
          if ((v46 & 1) == 0)
          {
            goto LABEL_71;
          }

LABEL_46:
          v28 = v41;

          v29 = (_swiftEmptyDictionarySingleton[7] + 16 * v28);
          v30 = v29[1];
          *v29 = v38;
          v29[1] = v39;

          if (v27 == 3)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v45, v40);
          v41 = sub_100005F4C(v36, v37);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_81;
          }

LABEL_70:
          if (v46)
          {
            goto LABEL_46;
          }

LABEL_71:
          _swiftEmptyDictionarySingleton[(v41 >> 6) + 8] |= 1 << v41;
          v48 = (_swiftEmptyDictionarySingleton[6] + 16 * v41);
          *v48 = v36;
          v48[1] = v37;
          v49 = (_swiftEmptyDictionarySingleton[7] + 16 * v41);
          *v49 = v38;
          v49[1] = v39;
          v50 = _swiftEmptyDictionarySingleton[2];
          v18 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v18)
          {
            goto LABEL_79;
          }

          _swiftEmptyDictionarySingleton[2] = v51;
          if (v27 == 3)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001D6074(NSObject *a1, os_log_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v311 = a4;
  v310 = *v7;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v304 - v13;
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v313 = v304 - v17;
  v335 = type metadata accessor for UUID();
  v18 = *(v335 - 8);
  v19 = *(v18 + 64);
  *&v20 = __chkstk_darwin(v335).n128_u64[0];
  v334 = v304 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = a2;
  v318 = [a2 createResolutionTokenMapIfNecessary];
  v22 = [a1 resolutionTokenMap];
  if (!v22)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v188 = type metadata accessor for Logger();
    sub_100006654(v188, qword_10093C488);
    v189 = a1;

    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v336 = v194;
      *v192 = 138543618;
      v195 = [v189 objectID];
      *(v192 + 4) = v195;
      v333 = v193;
      *v193 = v195;
      *(v192 + 6) = 2082;
      v196 = *(a3 + 16);
      if (v196)
      {
        v329 = v194;
        LODWORD(v330) = v191;
        v331 = v192;
        v332 = v190;
        v338 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v196, 0);
        v197 = (a3 + 32);
        v198 = v338;
        v199 = 0x80000001007EA260;
        v200 = 0x80000001007EA240;
        v201 = 0x80000001007EA010;
        v334 = 0x80000001007E8D40;
        v335 = 0x80000001007EA6E0;
        do
        {
          v203 = *v197++;
          v202 = v203;
          v204 = 0xD00000000000001CLL;
          v205 = 0xD000000000000019;
          if (v203 == 10)
          {
            v206 = v200;
          }

          else
          {
            v205 = 0xD000000000000027;
            v206 = v199;
          }

          if (v202 == 9)
          {
            v207 = v201;
          }

          else
          {
            v204 = v205;
            v207 = v206;
          }

          if (v202 == 7)
          {
            v208 = 0x53676E6974726F73;
          }

          else
          {
            v208 = 0xD000000000000015;
          }

          v209 = v335;
          if (v202 == 7)
          {
            v209 = 0xEC000000656C7974;
          }

          if (v202 == 6)
          {
            v208 = 0xD000000000000017;
            v209 = v334;
          }

          if (v202 <= 8)
          {
            v204 = v208;
            v207 = v209;
          }

          if (v202 == 4)
          {
            v210 = 0x726F6C6F63;
          }

          else
          {
            v210 = 0x626D456567646162;
          }

          v211 = 0xE500000000000000;
          if (v202 != 4)
          {
            v211 = 0xEB000000006D656CLL;
          }

          if (v202 == 3)
          {
            v210 = 1701667182;
            v211 = 0xE400000000000000;
          }

          if (v202 == 1)
          {
            v212 = 0xD000000000000017;
          }

          else
          {
            v212 = 0x72756769666E6F63;
          }

          if (v202 == 1)
          {
            v213 = 0x80000001007E8C60;
          }

          else
          {
            v213 = 0xED00006E6F697461;
          }

          if (!v202)
          {
            v212 = 0x44497463656A626FLL;
            v213 = 0xE800000000000000;
          }

          if (v202 <= 2)
          {
            v210 = v212;
            v211 = v213;
          }

          if (v202 <= 5)
          {
            v214 = v210;
          }

          else
          {
            v214 = v204;
          }

          if (v202 <= 5)
          {
            v215 = v211;
          }

          else
          {
            v215 = v207;
          }

          v338 = v198;
          isa = v198[2].isa;
          v216 = v198[3].isa;
          if (isa >= v216 >> 1)
          {
            v327 = v200;
            v328 = v199;
            v326 = v201;
            sub_100026EF4((v216 > 1), isa + 1, 1);
            v201 = v326;
            v200 = v327;
            v199 = v328;
            v198 = v338;
          }

          v198[2].isa = (isa + 1);
          v218 = &v198[2 * isa];
          v218[4].isa = v214;
          v218[5].isa = v215;
          --v196;
        }

        while (v196);
        v192 = v331;
        v190 = v332;
        LOBYTE(v191) = v330;
        v194 = v329;
      }

      v219 = Array.description.getter();
      v221 = v220;

      v222 = sub_10000668C(v219, v221, &v336);

      *(v192 + 14) = v222;
      _os_log_impl(&_mh_execute_header, v190, v191, "REMTemplateStorageCDIngestor: merge(storage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v192, 0x16u);
      sub_1000050A4(v333, &unk_100938E70, &unk_100797230);

      sub_10000607C(v194);
    }

    v223 = objc_opt_self();
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v225 = String._bridgeToObjectiveC()();
    [v223 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v225];

    swift_willThrow();
    v226 = &v340;
    goto LABEL_274;
  }

  v23 = v22;
  v317 = sub_100694A1C(v22, a3);
  v25 = *(a3 + 16);
  v26 = a3;
  v27 = &selRef_hack_willSaveHandled;
  if (!v25)
  {
    goto LABEL_303;
  }

  v314 = v14;
  v327 = v5;
  v309 = v23;
  v28 = 0;
  v23 = 0;
  v316 = 0;
  v328 = (v26 + 32);
  v333 = (v18 + 8);
  v304[1] = "TemplateIdentifier";
  v324 = 0x80000001007EA260;
  v323 = 0x80000001007EA240;
  v322 = 0x80000001007EA010;
  v321 = 0x80000001007EA6E0;
  v320 = 0x80000001007E8D40;
  v326 = 0x80000001007E8C60;
  v308 = v26;
  v307 = v26 + 33;
  *&v24 = 136315138;
  v312 = v24;
  *&v24 = 138543618;
  v305 = v24;
  *&v24 = 136446722;
  v306 = v24;
  v331 = v25;
  v332 = a1;
  while (1)
  {
    v29 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

    v30 = *(v28 + v328);
    if (v30 > 5)
    {
      if (*(v28 + v328) <= 8u)
      {
        v27 = &selRef_hack_willSaveHandled;
        if (v30 == 6)
        {
          v28 = (v28 + 1);
LABEL_56:
          v69 = [a1 showingLargeAttachments];
          [v325 setShowingLargeAttachments:v69];
        }

        else
        {
          if (v30 != 7)
          {
            v28 = (v28 + 1);
            sub_1001DA444(a1);
            v25 = v331;
            if (v28 == v331)
            {
              goto LABEL_279;
            }

            goto LABEL_5;
          }

          v28 = (v28 + 1);
LABEL_22:
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v36 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v37 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974), (v38 & 1) != 0))
          {
            v39 = (*(v36 + 56) + 16 * v37);
            v40 = *v39;
            v6 = v39[1];
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v97 = type metadata accessor for Logger();
            sub_100006654(v97, qword_100946C50);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v336 = v101;
              *v100 = v312;
              LOBYTE(v6) = 116;
              *(v100 + 4) = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, &v336);
              _os_log_impl(&_mh_execute_header, v98, v99, "Unknown ingestable key {key: %s}", v100, 0xCu);
              sub_10000607C(v101);
            }

            else
            {

              LOBYTE(v6) = 116;
            }
          }

          a2 = String._bridgeToObjectiveC()();

          v18 = [v318 mergeWithMap:v317 forKey:a2];

          if (v18)
          {
            v18 = [a1 sortingStyle];
            [v325 setSortingStyle:v18];
LABEL_162:

            goto LABEL_163;
          }
        }

        goto LABEL_221;
      }

      v27 = v327;
      if (v30 == 9)
      {
        v28 = (v28 + 1);
        v27 = &selRef_hack_willSaveHandled;
        if (v29 == v25)
        {
          goto LABEL_270;
        }

        goto LABEL_6;
      }

      v319 = (v28 + 1);
      if (v30 != 10)
      {
LABEL_197:
        v153 = [a1 unsavedMembershipsOfRemindersInSections];
        if (v153)
        {
          v154 = v153;
          a2 = v325;
          sub_1005EB1B0(v153);
          if (v27)
          {
            if (qword_100935BA0 != -1)
            {
              swift_once();
            }

            v155 = type metadata accessor for Logger();
            a2 = sub_100006654(v155, qword_10093C488);
            v6 = a1;
            swift_errorRetain();
            v18 = Logger.logObject.getter();
            v156 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v18, v156))
            {
              v157 = swift_slowAlloc();
              v315 = v23;
              v158 = v157;
              v329 = swift_slowAlloc();
              v330 = swift_slowAlloc();
              v338 = v330;
              *v158 = v306;
              v336 = v310;
              swift_getMetatypeMetadata();
              v159 = String.init<A>(describing:)();
              v161 = sub_10000668C(v159, v160, &v338);

              *(v158 + 4) = v161;
              *(v158 + 12) = 2114;
              v162 = [v6 objectID];
              *(v158 + 14) = v162;
              v6 = v329;
              *v329 = v162;
              *(v158 + 22) = 2082;
              swift_getErrorValue();
              v163 = Error.rem_errorDescription.getter();
              v165 = sub_10000668C(v163, v164, &v338);

              *(v158 + 24) = v165;
              _os_log_impl(&_mh_execute_header, v18, v156, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdTemplate' {storage.objectID: %{public}@, error: %{public}s}", v158, 0x20u);
              sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

              a2 = v330;
              swift_arrayDestroy();

              v23 = v315;
            }

            else
            {
            }

            v327 = 0;
          }

          else
          {
            v327 = 0;
          }
        }

        else
        {
          v327 = v27;
        }

LABEL_207:
        v28 = v319;
        v27 = &selRef_hack_willSaveHandled;
        goto LABEL_221;
      }

LABEL_36:
      v48 = [a1 unsavedSectionIDsOrdering];
      v327 = v27;
      if (!v48)
      {
        goto LABEL_207;
      }

      v49 = v48;
      v315 = v23;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v50 >> 62)
      {
        a2 = _CocoaArrayWrapper.endIndex.getter();
        if (a2)
        {
LABEL_39:
          v51 = 0;
          v329 = (v50 & 0xFFFFFFFFFFFFFF8);
          v330 = (v50 & 0xC000000000000001);
          v18 = _swiftEmptyArrayStorage;
          do
          {
            if (v330)
            {
              v52 = v50;
              v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v51 >= v329[2])
              {
                goto LABEL_319;
              }

              v52 = v50;
              v53 = *(v50 + 8 * v51 + 32);
            }

            v6 = v53;
            v54 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
              goto LABEL_318;
            }

            v27 = a2;
            v55 = [v53 uuid];
            v56 = v334;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v57 = UUID.uuidString.getter();
            v23 = v58;

            (*v333)(v56, v335);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_100365788(0, *(v18 + 16) + 1, 1, v18);
            }

            v60 = *(v18 + 16);
            v59 = *(v18 + 24);
            v6 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v18 = sub_100365788((v59 > 1), v60 + 1, 1, v18);
            }

            *(v18 + 16) = v6;
            v61 = v18 + 16 * v60;
            *(v61 + 32) = v57;
            *(v61 + 40) = v23;
            ++v51;
            a2 = v27;
            v115 = v54 == v27;
            a1 = v332;
            v50 = v52;
          }

          while (!v115);
        }
      }

      else
      {
        a2 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_39;
        }
      }

      v166 = objc_allocWithZone(REMOrderedIdentifierMap);
      v167 = Array._bridgeToObjectiveC()().super.isa;
      v168 = [v166 initWithOrderedIdentifiers:v167];

      v336 = v168;
      sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
      v18 = v168;
      v169 = v327;
      v170 = REMJSONRepresentable.toJSONData()();
      if (v169)
      {

        if (qword_100935BA0 != -1)
        {
          swift_once();
        }

        v172 = type metadata accessor for Logger();
        a2 = sub_100006654(v172, qword_10093C488);
        v6 = a1;
        swift_errorRetain();
        v18 = Logger.logObject.getter();
        v173 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v330 = swift_slowAlloc();
          v338 = v330;
          *v174 = v306;
          v336 = v310;
          swift_getMetatypeMetadata();
          v176 = String.init<A>(describing:)();
          v178 = sub_10000668C(v176, v177, &v338);

          *(v174 + 4) = v178;
          *(v174 + 12) = 2114;
          v179 = [v6 objectID];
          *(v174 + 14) = v179;
          *v175 = v179;
          *(v174 + 22) = 2082;
          swift_getErrorValue();
          v180 = Error.rem_errorDescription.getter();
          v182 = sub_10000668C(v180, v181, &v338);

          *(v174 + 24) = v182;
          _os_log_impl(&_mh_execute_header, v18, v173, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdTemplate' {storage.objectID: %{public}@, error: %{public}s}", v174, 0x20u);
          sub_1000050A4(v175, &unk_100938E70, &unk_100797230);

          a2 = v330;
          swift_arrayDestroy();
        }

        else
        {
        }

        v327 = 0;
      }

      else
      {
        v327 = 0;
        a2 = v170;
        v183 = v171;
        sub_100029344(v170, v171);
        v184 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(a2, v183);
        v185 = v325;
        [v325 setSectionIDsOrderingAsData:v184];

        v186 = [v185 createResolutionTokenMapIfNecessary];
        v187 = String._bridgeToObjectiveC()();
        [v186 updateForKey:v187];

        sub_10001BBA0(a2, v183);
      }

      v28 = v319;
      goto LABEL_219;
    }

    v27 = &selRef_hack_willSaveHandled;
    if (*(v28 + v328) > 2u)
    {
      if (v30 == 3)
      {
        v28 = (v28 + 1);
LABEL_58:
        if (qword_100935BB0 != -1)
        {
          swift_once();
        }

        v70 = qword_100974C38;
        if (*(qword_100974C38 + 16) && (v71 = sub_100005F4C(1701667182, 0xE400000000000000), (v72 & 1) != 0))
        {
          v73 = (*(v70 + 56) + 16 * v71);
          v75 = *v73;
          v74 = v73[1];
        }

        else
        {
          if (qword_100936128 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          sub_100006654(v81, qword_100946C50);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v6 = v23;
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v336 = v85;
            *v84 = v312;
            *(v84 + 4) = sub_10000668C(1701667182, 0xE400000000000000, &v336);
            _os_log_impl(&_mh_execute_header, v82, v83, "Unknown ingestable key {key: %s}", v84, 0xCu);
            sub_10000607C(v85);

            v23 = v6;
          }
        }

        v18 = String._bridgeToObjectiveC()();

        a2 = [v318 mergeWithMap:v317 forKey:v18];

        if (a2)
        {
          v18 = [a1 v27[373]];
          if (!v18)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            a2 = v137;
            v18 = String._bridgeToObjectiveC()();
          }

          [v325 setName:v18];
          goto LABEL_162;
        }
      }

      else
      {
        v319 = (v28 + 1);
        if (v30 == 4)
        {
LABEL_29:
          v41 = v327;
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v42 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v43 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000), (v44 & 1) != 0))
          {
            v45 = (*(v42 + 56) + 16 * v43);
            v47 = *v45;
            v46 = v45[1];
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v86 = type metadata accessor for Logger();
            sub_100006654(v86, qword_100946C50);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = v23;
              LOBYTE(v6) = v41;
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v336 = v91;
              *v90 = v312;
              *(v90 + 4) = sub_10000668C(0x726F6C6F63, 0xE500000000000000, &v336);
              _os_log_impl(&_mh_execute_header, v87, v88, "Unknown ingestable key {key: %s}", v90, 0xCu);
              sub_10000607C(v91);

              v23 = v89;
              v27 = &selRef_hack_willSaveHandled;
            }
          }

          v18 = String._bridgeToObjectiveC()();

          a2 = [v318 mergeWithMap:v317 forKey:v18];

          if (a2)
          {
            v18 = [a1 color];
            [v325 setColor:v18];
            goto LABEL_191;
          }
        }

        else
        {
LABEL_179:
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v142 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v143 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL), (v144 & 1) != 0))
          {
            v145 = (*(v142 + 56) + 16 * v143);
            v146 = *v145;
            v6 = v145[1];
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v147 = type metadata accessor for Logger();
            sub_100006654(v147, qword_100946C50);
            v148 = Logger.logObject.getter();
            v149 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v315 = v23;
              v152 = v151;
              v336 = v151;
              *v150 = v312;
              LOBYTE(v6) = 108;
              *(v150 + 4) = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, &v336);
              _os_log_impl(&_mh_execute_header, v148, v149, "Unknown ingestable key {key: %s}", v150, 0xCu);
              sub_10000607C(v152);
              v23 = v315;
            }

            else
            {

              LOBYTE(v6) = 108;
            }
          }

          a2 = String._bridgeToObjectiveC()();

          v18 = [v318 mergeWithMap:v317 forKey:a2];

          if (v18)
          {
            v18 = [a1 badgeEmblem];
            [v325 setBadgeEmblem:v18];
LABEL_191:

            v25 = v331;
            v28 = v319;
            if (v319 == v331)
            {
LABEL_279:
              if (v23)
              {
                goto LABEL_280;
              }

              v23 = v309;
              goto LABEL_302;
            }

            goto LABEL_5;
          }
        }

        v28 = v319;
      }

      goto LABEL_221;
    }

    if (!*(v28 + v328))
    {
      break;
    }

    if (v30 == 1)
    {
      v28 = (v28 + 1);
LABEL_13:
      if (qword_100935BB0 != -1)
      {
        swift_once();
      }

      v31 = qword_100974C38;
      if (*(qword_100974C38 + 16) && (v32 = sub_100005F4C(0xD000000000000017, v326), (v33 & 1) != 0))
      {
        v34 = (*(v31 + 56) + 16 * v32);
        v35 = *v34;
        v6 = v34[1];
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for Logger();
        sub_100006654(v92, qword_100946C50);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v336 = v96;
          *v95 = v312;
          LOBYTE(v6) = v326;
          *(v95 + 4) = sub_10000668C(0xD000000000000017, v326, &v336);
          _os_log_impl(&_mh_execute_header, v93, v94, "Unknown ingestable key {key: %s}", v95, 0xCu);
          sub_10000607C(v96);
        }

        else
        {

          LOBYTE(v6) = v326;
        }
      }

      a2 = String._bridgeToObjectiveC()();

      v18 = [v318 mergeWithMap:v317 forKey:a2];

      if (v18)
      {
        v138 = [a1 minimumSupportedVersion];
        [v325 setMinimumSupportedVersion:v138];
LABEL_163:
        v25 = v331;
        if (v28 == v331)
        {
          goto LABEL_277;
        }

LABEL_5:
        v316 = 1;
        goto LABEL_6;
      }

      goto LABEL_221;
    }

    v76 = [a1 configuration];
    v315 = v23;
    if (v76)
    {
      v77 = v76;
      v78 = [v76 sourceListID];

      v79 = [v78 urlRepresentation];
      v6 = v314;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = 0;
    }

    else
    {
      v80 = 1;
      v6 = v314;
    }

    v18 = type metadata accessor for URL();
    v23 = *(v18 - 8) + 56;
    v330 = *v23;
    (v330)(v6, v80, 1, v18);
    KeyPath = swift_getKeyPath();
    a2 = v325;
    sub_100136640(KeyPath, v6);

    sub_1000050A4(v6, &unk_1009441F0, &qword_100795760);
    if (([a1 isPersisted]& 1) == 0)
    {
      v25 = v331;
      if ((v28 + 1) != v331)
      {
        v129 = v28 + 1;
        v27 = (v28 + v307);
        while (v129 < v25)
        {
          v28 = (v129 + 1);
          if (__OFADD__(v129, 1))
          {
            goto LABEL_316;
          }

          v130 = *v27;
          if (v130 != 2)
          {
            if (*v27 <= 5u)
            {
              v27 = &selRef_hack_willSaveHandled;
              v23 = 1;
              if (v130 > 2)
              {
                if (v130 == 3)
                {
                  goto LABEL_58;
                }

                if (v130 == 4)
                {
                  v319 = (v129 + 1);
                  goto LABEL_29;
                }

                v319 = (v129 + 1);
                goto LABEL_179;
              }

              if (v130)
              {
                goto LABEL_13;
              }

              goto LABEL_53;
            }

            v27 = &selRef_hack_willSaveHandled;
            if (v130 > 8)
            {
              if (v130 != 9)
              {
                v23 = 1;
                if (v130 == 10)
                {
                  v319 = (v129 + 1);
                  v27 = v327;
                  goto LABEL_36;
                }

                v319 = (v129 + 1);
                v27 = v327;
                goto LABEL_197;
              }

              if (v28 == v25)
              {
                goto LABEL_271;
              }

              v23 = 1;
              goto LABEL_6;
            }

            if (v130 == 6)
            {
              v23 = 1;
              goto LABEL_56;
            }

            if (v130 == 7)
            {
              v23 = 1;
              goto LABEL_22;
            }

            sub_1001DA444(a1);
            v25 = v331;
            v23 = 1;
            v316 = 1;
            if (v28 != v331)
            {
              goto LABEL_6;
            }

            goto LABEL_281;
          }

          v131 = [a1 configuration];
          if (v131)
          {
            v132 = v131;
            v133 = [v131 sourceListID];

            v134 = [v133 urlRepresentation];
            v6 = v314;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v135 = 0;
          }

          else
          {
            v135 = 1;
            v6 = v314;
          }

          (v330)(v6, v135, 1, v18);
          v136 = swift_getKeyPath();
          a2 = v325;
          sub_100136640(v136, v6);

          sub_1000050A4(v6, &unk_1009441F0, &qword_100795760);
          if ([a1 isPersisted])
          {
            v315 = 1;
            v27 = &selRef_hack_willSaveHandled;
            goto LABEL_88;
          }

          ++v129;
          v27 = (v27 + 1);
          v25 = v331;
          if (v28 == v331)
          {
            goto LABEL_271;
          }
        }

LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

LABEL_271:
      LOBYTE(v23) = v316;
      goto LABEL_281;
    }

    v28 = (v28 + 1);
    v27 = &selRef_hack_willSaveHandled;
LABEL_88:
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_100006654(v103, qword_10093C488);
    v104 = a1;
    v18 = v308;

    a2 = Logger.logObject.getter();
    v105 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(a2, v105))
    {
      LODWORD(v329) = v105;
      v330 = a2;
      v18 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v336 = v319;
      *v18 = v305;
      v107 = [v104 objectID];
      *(v18 + 4) = v107;
      v304[0] = v106;
      *v106 = v107;
      *(v18 + 12) = 2082;
      v338 = _swiftEmptyArrayStorage;
      v108 = v331;
      sub_100026EF4(0, v331, 0);
      v109 = v338;
      v110 = v328;
      do
      {
        v112 = *v110++;
        v111 = v112;
        v113 = 0xD000000000000017;
        v114 = 0xD00000000000001CLL;
        v115 = v112 == 10;
        v116 = 0xD000000000000019;
        if (v112 != 10)
        {
          v116 = 0xD000000000000027;
        }

        v117 = v324;
        if (v115)
        {
          v117 = v323;
        }

        if (v111 != 9)
        {
          v114 = v116;
        }

        v118 = v322;
        if (v111 != 9)
        {
          v118 = v117;
        }

        v119 = 0xD000000000000015;
        if (v111 == 7)
        {
          v119 = 0x53676E6974726F73;
        }

        v120 = 0xEC000000656C7974;
        if (v111 != 7)
        {
          v120 = v321;
        }

        if (v111 == 6)
        {
          v119 = 0xD000000000000017;
          v120 = v320;
        }

        if (v111 <= 8)
        {
          v114 = v119;
          v118 = v120;
        }

        v121 = 0x626D456567646162;
        if (v111 == 4)
        {
          v121 = 0x726F6C6F63;
        }

        v122 = 0xEB000000006D656CLL;
        if (v111 == 4)
        {
          v122 = 0xE500000000000000;
        }

        if (v111 == 3)
        {
          v121 = 1701667182;
          v122 = 0xE400000000000000;
        }

        if (v111 != 1)
        {
          v113 = 0x72756769666E6F63;
        }

        v123 = v326;
        if (v111 != 1)
        {
          v123 = 0xED00006E6F697461;
        }

        if (!v111)
        {
          v113 = 0x44497463656A626FLL;
          v123 = 0xE800000000000000;
        }

        if (v111 <= 2)
        {
          v121 = v113;
          v122 = v123;
        }

        if (v111 <= 5)
        {
          v124 = v121;
        }

        else
        {
          v124 = v114;
        }

        if (v111 <= 5)
        {
          v125 = v122;
        }

        else
        {
          v125 = v118;
        }

        v338 = v109;
        v127 = v109[2].isa;
        v126 = v109[3].isa;
        if (v127 >= v126 >> 1)
        {
          sub_100026EF4((v126 > 1), v127 + 1, 1);
          v109 = v338;
        }

        v109[2].isa = (v127 + 1);
        v128 = &v109[2 * v127];
        v128[4].isa = v124;
        v128[5].isa = v125;
        v108 = (v108 - 1);
      }

      while (v108);
      v139 = Array.description.getter();
      v6 = v140;

      v141 = sub_10000668C(v139, v6, &v336);

      *(v18 + 14) = v141;
      a2 = v330;
      _os_log_impl(&_mh_execute_header, v330, v329, "REMTemplateStorageCDIngestor: changedValueKeys should not include 'configuration' because storage.isPersisted is true {objectID: %{public}@, keys: %{public}s}", v18, 0x16u);
      sub_1000050A4(v304[0], &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      a1 = v332;
LABEL_219:
      v27 = &selRef_hack_willSaveHandled;
      goto LABEL_220;
    }

LABEL_220:
    v23 = v315;
LABEL_221:
    v25 = v331;
    if (v28 == v331)
    {
LABEL_270:
      if (v23)
      {
        goto LABEL_271;
      }

      v23 = v309;
      if ((v316 & 1) == 0)
      {
        goto LABEL_303;
      }

LABEL_302:
      v265 = v313;
      static Date.now.getter();
      v266 = type metadata accessor for Date();
      (*(*(v266 - 8) + 56))(v265, 0, 1, v266);
      v267 = swift_getKeyPath();
      sub_10013206C(v267, v265);

      sub_1000050A4(v265, &unk_100938850, qword_100795AE0);
      goto LABEL_303;
    }

LABEL_6:
    if (v28 >= v25)
    {
      goto LABEL_317;
    }
  }

  v28 = (v28 + 1);
LABEL_53:
  v62 = [a1 objectID];
  v63 = [v62 uuid];

  v64 = v334;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = UUID._bridgeToObjectiveC()().super.isa;
  (*v333)(v64, v335);
  a2 = v325;
  [v325 setIdentifier:v65];

  v66 = v313;
  static Date.now.getter();
  v67 = type metadata accessor for Date();
  v68 = *(*(v67 - 8) + 56);
  v316 = 1;
  v68(v66, 0, 1, v67);
  v18 = swift_getKeyPath();
  sub_10013206C(v18, v66);

  sub_1000050A4(v66, &unk_100938850, qword_100795AE0);
  v25 = v331;
  if (v28 != v331)
  {
    goto LABEL_6;
  }

LABEL_277:
  if ((v23 & 1) == 0)
  {
    v23 = v309;
    goto LABEL_302;
  }

LABEL_280:
  LOBYTE(v23) = 1;
LABEL_281:
  v227 = [v325 account];
  if (!v227)
  {
LABEL_291:
    v232 = [v325 storeControllerManagedObjectContext];
    if (v232)
    {
      v233 = v232;
      LOBYTE(v6) = v23;
      v234 = objc_opt_self();
      v235 = [a1 accountID];
      v236 = [v235 uuid];

      v237 = v334;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*v333)(v237, v335);
      v238 = String._bridgeToObjectiveC()();

      v18 = [v234 cloudKitAccountWithCKIdentifier:v238 context:v233];

      if (v18)
      {
        goto LABEL_293;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_300:
    v248 = objc_opt_self();
    v336 = 0;
    v337 = 0xE000000000000000;
    _StringGuts.grow(_:)(156);
    v249._countAndFlagsBits = 0xD000000000000082;
    v249._object = 0x80000001007F0170;
    String.append(_:)(v249);
    v250 = a1;
    v251 = [a1 objectID];
    v252 = [v251 description];
    v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v255 = v254;

    v256._countAndFlagsBits = v253;
    v256._object = v255;
    String.append(_:)(v256);

    v257._countAndFlagsBits = 0xD000000000000016;
    v257._object = 0x80000001007F0200;
    String.append(_:)(v257);
    v258 = [v250 accountID];
    v259 = [v258 description];
    v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v262 = v261;

    v263._countAndFlagsBits = v260;
    v263._object = v262;
    String.append(_:)(v263);

    v264 = String._bridgeToObjectiveC()();

    [v248 invalidParameterErrorWithDescription:v264];

    swift_willThrow();
    goto LABEL_305;
  }

  v18 = v227;
  v228 = [v227 remObjectID];
  v229 = [a1 accountID];
  v230 = v229;
  if (!v228)
  {
    if (!v229)
    {
      goto LABEL_287;
    }

LABEL_289:

    goto LABEL_290;
  }

  if (!v229)
  {
    v230 = v228;
    goto LABEL_289;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v231 = static NSObject.== infix(_:_:)();

  if ((v231 & 1) == 0)
  {
LABEL_290:

    goto LABEL_291;
  }

LABEL_287:
  LOBYTE(v6) = v23;
LABEL_293:
  v18 = v18;
  v239 = [v18 accountTypeHost];
  v240 = [v239 isCloudKit];

  if (!v240)
  {

    goto LABEL_300;
  }

  v241 = [a1 configuration];
  if (!v241)
  {
    v284 = objc_opt_self();
    v336 = 0;
    v337 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    v285._countAndFlagsBits = 0xD00000000000008CLL;
    v285._object = 0x80000001007F0220;
    String.append(_:)(v285);
    v286 = a1;
    v287 = [a1 objectID];
    v288 = [v287 description];
    v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v291 = v290;

    v292._countAndFlagsBits = v289;
    v292._object = v291;
    String.append(_:)(v292);

    v293._countAndFlagsBits = 0xD000000000000016;
    v293._object = 0x80000001007F0200;
    String.append(_:)(v293);
    v294 = [v286 accountID];
    v295 = [v294 description];
    v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v298 = v297;

    v299._countAndFlagsBits = v296;
    v299._object = v298;
    String.append(_:)(v299);

    v300 = String._bridgeToObjectiveC()();

    [v284 invalidParameterErrorWithDescription:v300];

    swift_willThrow();
LABEL_315:

    goto LABEL_306;
  }

  a2 = v241;
  v242 = [v325 storeControllerManagedObjectContext];
  if (!v242)
  {
    v301 = objc_opt_self();
    type metadata accessor for REMCDTemplate();
    v302 = swift_getObjCClassFromMetadata();
    v303 = String._bridgeToObjectiveC()();
    [v301 unexpectedNilPropertyWithClass:v302 property:v303];

    swift_willThrow();
    goto LABEL_315;
  }

  v243 = v242;
  v244 = a1;
  v245 = [a2 sourceListID];
  v246 = [v244 objectID];
  v247 = v327;
  sub_1001DA860(v245, v243, v246);
  v23 = v309;
  if (v247)
  {

    return;
  }

  v27 = [v244 objectID];
  sub_1001DAF9C(v18, v27, a2);
  a1 = v244;
LABEL_320:

  v27 = &selRef_hack_willSaveHandled;
  if (v6)
  {
    goto LABEL_302;
  }

LABEL_303:
  v268 = [v325 v27[373]];
  if (!v268)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v269 = type metadata accessor for Logger();
    sub_100006654(v269, qword_10093C488);
    v270 = a1;
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v271, v272))
    {

      return;
    }

    v273 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    v338 = swift_slowAlloc();
    *v273 = 136446722;
    v336 = v310;
    swift_getMetatypeMetadata();
    v275 = String.init<A>(describing:)();
    v309 = v23;
    v277 = sub_10000668C(v275, v276, &v338);

    *(v273 + 4) = v277;
    *(v273 + 12) = 2114;
    v278 = [v270 objectID];
    *(v273 + 14) = v278;
    *v274 = v278;
    *(v273 + 22) = 2080;
    v279 = [v270 name];
    v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v282 = v281;

    v283 = sub_10000668C(v280, v282, &v338);

    *(v273 + 24) = v283;
    _os_log_impl(&_mh_execute_header, v271, v272, "%{public}s: '\\REMCDTemplate.name' should not be nil at the end of 'merge(storage:into:changedValueKeys:optionalCoordinator:)' {storage.objectID: %{public}@, storage.name: %s}", v273, 0x20u);
    sub_1000050A4(v274, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v226 = &v339;
LABEL_274:

    return;
  }

  v18 = v268;

LABEL_305:
LABEL_306:
}

uint64_t sub_1001D8F44(void *a1)
{
  v4 = *v1;
  v84 = type metadata accessor for UUID();
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v84);
  v8 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v80[-v10];
  __chkstk_darwin(v12);
  v14 = &v80[-v13];
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v80[-v17];
  v19 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_1001DB89C(v18);
  if (v2)
  {
    return (*(v5 + 8))(v18, v84);
  }

  if (v20)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10093C488);
    v23 = v5;
    v24 = *(v5 + 16);
    v25 = v18;
    v26 = v18;
    v27 = v84;
    v24(v8, v26, v84);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v83 = v25;
      v31 = v23;
      v32 = v30;
      v82 = swift_slowAlloc();
      v85 = v82;
      *v32 = 136446466;
      v86 = v4;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v34 = v29;
      v36 = sub_10000668C(v33, v35, &v85);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      v40 = *(v31 + 8);
      v41 = v8;
      v42 = v84;
      v40(v41, v84);
      v43 = sub_10000668C(v37, v39, &v85);

      *(v32 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v28, v34, "%{public}s: Did reset '\\REMCDList.mostRecentTargetTemplateIdentifier' to nil {mostRecentTargetTemplateIdentifier: %{public}s}", v32, 0x16u);
      swift_arrayDestroy();

      return v40(v83, v42);
    }

    else
    {

      v60 = *(v23 + 8);
      v60(v8, v27);
      return (v60)(v25, v27);
    }
  }

  else if (sub_1001DBC18(v18) < 1)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_10093C488);
    v62 = v18;
    v63 = v18;
    v64 = v84;
    (*(v5 + 16))(v11, v63, v84);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v86 = v83;
      *v67 = 136446466;
      v68 = sub_1001424F8();
      LODWORD(v82) = v66;
      v70 = sub_10000668C(v68, v69, &v86);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2082;
      v71 = UUID.uuidString.getter();
      v73 = v72;
      v74 = *(v5 + 8);
      v75 = v11;
      v76 = v84;
      v74(v75, v84);
      v77 = sub_10000668C(v71, v73, &v86);

      *(v67 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v65, v82, "%{public}s: Did not find REMCDList and REMCDSmartList with matching 'mostRecentTargetTemplateIdentifier' {mostRecentTargetTemplateIdentifier: %{public}s}", v67, 0x16u);
      swift_arrayDestroy();

      return (v74)(v62, v76);
    }

    else
    {

      v79 = *(v5 + 8);
      v79(v11, v64);
      return (v79)(v62, v64);
    }
  }

  else
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_10093C488);
    v45 = v18;
    v46 = v18;
    v47 = v84;
    (*(v5 + 16))(v14, v46, v84);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83 = v45;
      v51 = v50;
      v82 = swift_slowAlloc();
      v86 = v82;
      *v51 = 136446466;
      v52 = sub_1001424F8();
      v81 = v49;
      v54 = sub_10000668C(v52, v53, &v86);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2082;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      v58 = *(v5 + 8);
      v58(v14, v47);
      v59 = sub_10000668C(v55, v57, &v86);

      *(v51 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v48, v81, "%{public}s: Did reset '\\REMCDSmartList.mostRecentTargetTemplateIdentifier' to nil {mostRecentTargetTemplateIdentifier: %{public}s}", v51, 0x16u);
      swift_arrayDestroy();

      return v58(v83, v47);
    }

    else
    {

      v78 = *(v5 + 8);
      v78(v14, v47);
      return (v78)(v45, v47);
    }
  }
}

uint64_t sub_1001D9790@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1001D983C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_10012F78C(a1, &v16 - v10);
  v12 = *a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

NSString sub_1001D9968(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v9 = [a1 remObjectIDWithError:{&v62, v6}];
  if (v9)
  {
    v10 = v9;
    v11 = v62;
    v12 = [a1 account];
    if (v12 && (v13 = v12, v14 = [v12 remObjectID], v13, v14))
    {
      v15 = [a1 name];
      if (v15)
      {
        v16 = v15;
        v17 = v14;
        v18 = objc_allocWithZone(REMTemplateStorage);
        v19 = v10;
        v20 = v17;
        v21 = v18;
        v22 = v19;
        v1 = [v21 initWithObjectID:v19 accountID:v20 name:v16];

        v23 = [a1 color];
        [v1 setColor:v23];

        v24 = [a1 badgeEmblem];
        [v1 setBadgeEmblem:v24];

        [v1 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
        v25 = [a1 mostRecentPublicLinkUpdateRequestDate];
        if (v25)
        {
          v26 = v25;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v4 + 8))(v8, v3);
        }

        else
        {
          v27.super.isa = 0;
        }

        [v1 setMostRecentPublicLinkUpdateRequestDate:v27.super.isa];

        v48 = REMCDTemplate.publicLink.getter();
        [v1 setPublicLink:v48];

        [v1 setIsPersisted:1];
        v49 = [a1 sortingStyle];
        if (v49)
        {
          v50 = v49;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = REMSortingStyle.init(stringValue:)();
          if (!v51)
          {
            v51 = REMSortingStyleDefault;
          }

          v52 = v51;
          [v1 setSortingStyle:v51];
        }

        else
        {
          [v1 setSortingStyle:REMSortingStyleDefault];
        }

        [v1 setShouldUpdateSectionsOrdering:0];
        [v1 setUnsavedSectionIDsOrdering:0];
        [v1 setUnsavedMembershipsOfRemindersInSections:0];
        [v1 setResolutionTokenMap:0];
        v53 = [a1 resolutionTokenMapData];
        if (v53)
        {
          v54 = v53;
          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v55, v57);
        }

        else
        {
          v58.super.isa = 0;
        }

        [v1 setResolutionTokenMapData:v58.super.isa];

        v59 = [a1 parentAccount];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 remObjectID];
        }

        else
        {
          v61 = 0;
        }

        [v1 setParentAccountID:v61];

        [v1 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
        [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      }

      else
      {
        if (qword_100935BA8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100006654(v39, qword_10093C4A0);
        v40 = v10;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138543362;
          *(v43 + 4) = v40;
          *v44 = v10;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "REMTemplateStorageCDIngestor: cdTemplate.name is nil {cdTemplate.remObjectID: %{public}@}", v43, 0xCu);
          sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
        }

        v46 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v1 = String._bridgeToObjectiveC()();
        [v46 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v1];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935BA8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_10093C4A0);
      v29 = v10;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138543362;
        *(v32 + 4) = v29;
        *v33 = v10;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "REMTemplateStorageCDIngestor: cdTemplate.account is nil {cdTemplate.remObjectID: %{public}@}", v32, 0xCu);
        sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
      }

      v35 = objc_opt_self();
      type metadata accessor for REMCDTemplate();
      v36 = swift_getObjCClassFromMetadata();
      v1 = String._bridgeToObjectiveC()();
      [v35 unexpectedNilPropertyWithClass:v36 property:v1];

      swift_willThrow();
    }
  }

  else
  {
    v37 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1001DA188(void *a1)
{
  v3 = sub_1001D9968(a1);
  if (!v2)
  {
    v4 = v3;
    v5 = [v3 objectID];
    v6 = [v4 accountID];
    v7 = [v4 name];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v1 = [objc_allocWithZone(REMListStorage) initWithObjectID:v5 accountID:v6 name:v7];

    v8 = [v4 color];
    [v1 setColor:v8];

    v9 = [v4 badgeEmblem];
    [v1 setBadgeEmblem:v9];

    [v1 setShowingLargeAttachments:{objc_msgSend(v4, "showingLargeAttachments")}];
    v10 = [v4 sortingStyle];
    [v1 setSortingStyle:v10];

    v11 = [v4 parentAccountID];
    [v1 setParentAccountID:v11];

    [v1 setMinimumSupportedVersion:{objc_msgSend(v4, "minimumSupportedVersion")}];
    [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(v4, "effectiveMinimumSupportedVersion")}];
  }

  return v1;
}

unint64_t sub_1001DA3AC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DFE98, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001DA3F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E17E8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1001DA444(void *a1)
{
  v2 = [a1 remObjectID];
  v3 = [a1 unsavedManualOrdering];
  if (v3)
  {
    v4 = v3;
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10093C488);
    v25 = v2;
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543618;
      *(v9 + 4) = v25;
      *v10 = v25;
      *(v9 + 12) = 2048;
      v11 = v25;
      v12 = [v6 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 14) = v14;

      _os_log_impl(&_mh_execute_header, v7, v8, "REMTemplateStorageCDIngestor: ingesting manual ordering {templateObjectID: %{public}@, top-level elements count: %ld}", v9, 0x16u);
      sub_1000050A4(v10, &unk_100938E70, &unk_100797230);
    }

    else
    {

      v7 = v6;
    }

    v21 = [a1 accountID];
    v22 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007953F0;
    *(v24 + 32) = v6;
    v16 = v6;
    sub_1005F9E88(v24, v23);
  }

  else
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093C488);
    v16 = v2;
    v25 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

      v16 = v25;
      v25 = v20;
    }
  }
}

void sub_1001DA860(void *a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v68 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = &v62 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  v10 = *(v9 + 64);
  *&v11 = __chkstk_darwin(v8).n128_u64[0];
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 entityName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [objc_opt_self() cdEntityName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == v15 && v21 == v17)
  {

    goto LABEL_5;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
LABEL_5:

    v23 = a1;
    v24 = sub_1005E37C0(v23);
    if (v3)
    {
      return;
    }

    v25 = v24;
    sub_1000F5104(&unk_1009438F0, &qword_1007A41B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100791300;
    *(v26 + 32) = v25;
    v27 = v25;
    sub_1005EC5F0(v26, 0, 1, 0, 0);
    v38 = v28;

    if (v38 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
      v39 = v65;
      if (v61)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v39 = v65;
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_18;
        }

        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v40 = *(v38 + 32);
LABEL_18:
          v41 = v40;

          v42 = [v39 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          isa = UUID._bridgeToObjectiveC()().super.isa;
          v44 = v63;
          v45 = v64;
          (*(v64 + 8))(v13, v63);
          [v41 setMostRecentTargetTemplateIdentifierByCurrentUser:isa];

          if ([v41 sharingStatus] > 1)
          {
LABEL_29:

            return;
          }

          v46 = [v39 uuid];
          v47 = v62;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v45 + 56))(v47, 0, 1, v44);
          sub_10047CC28(v47);
          v13 = v41;
LABEL_28:
          sub_1000050A4(v47, &unk_100939D90, "8\n\r");
          [v41 updateChangeCount];
          v41 = v13;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v23];
    swift_willThrow();

    return;
  }

  v29 = [objc_opt_self() cdEntityName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v30 == v15 && v32 == v17)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      v48 = objc_opt_self();
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(160);
      v49._object = 0x80000001007F03E0;
      v49._countAndFlagsBits = 0xD00000000000009DLL;
      String.append(_:)(v49);
      v50 = [a1 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v55._countAndFlagsBits = 125;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = String._bridgeToObjectiveC()();

      [v48 invalidParameterErrorWithDescription:v56];

      swift_willThrow();
      return;
    }
  }

  v27 = a1;
  v34 = sub_1005E60C8(v27);
  if (!v3)
  {
    v35 = v34;
    sub_1000F5104(&unk_1009435B0, &unk_100799980);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100791300;
    *(v36 + 32) = v35;
    v13 = v35;
    sub_1005EE3B8(v36, 0, 1, 0, 0);
    v38 = v37;

    if (!(v38 >> 62))
    {
      v57 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
      v47 = v62;
      v58 = v65;
      if (!v57)
      {

        [objc_opt_self() noSuchObjectErrorWithObjectID:v27];
        swift_willThrow();

        return;
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v59 = v64;
      }

      else
      {
        v59 = v64;
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v41 = *(v38 + 32);
      }

      v60 = [v58 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v59 + 56))(v47, 0, 1, v63);
      sub_1004473A4(v47);
      v27 = v41;
      goto LABEL_28;
    }

LABEL_36:
    v57 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_23;
  }
}

void sub_1001DAF9C(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 storeControllerManagedObjectContext];
  if (v17)
  {
    v89 = v3;
    v82 = a1;
    v83 = a2;
    v84 = v11;
    v85 = v8;
    v86 = v7;
    v93 = v17;
    v90 = [a3 sourceListID];
    v18 = [v90 entityName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [objc_opt_self() cdEntityName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v19 == v23 && v21 == v25)
    {
      v26 = 3;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        v26 = 3;
        v27 = v89;
LABEL_10:
        v36 = type metadata accessor for JSONEncoder();
        v37 = *(v36 + 48);
        v38 = *(v36 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v39 = REMTemplateConfiguration.codable.getter();
        v91 = v39;
        type metadata accessor for REMTemplateConfiguration_Codable();
        sub_1001DD678();
        v40 = v27;
        v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v43 = v42;

        if (v40)
        {
        }

        else
        {

          type metadata accessor for REMCDTemplateOperationQueueItem();
          v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v45 = [v44 initWithContext:v93];
          [v45 setAccount:v82];
          [v45 setOperationTypeRawValue:v26];
          [v45 setPriorityRawValue:10];
          Date.init()();
          v89 = v41;
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v87 + 8))(v16, v88);
          [v45 setCreationDate:isa];

          v47 = v83;
          v48 = [v47 uuid];
          v49 = v84;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = UUID._bridgeToObjectiveC()().super.isa;
          v51 = v86;
          v52 = *(v85 + 8);
          v52(v49, v86);
          [v45 setTemplateIdentifier:v50];

          v53 = v90;
          v54 = [v53 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = UUID._bridgeToObjectiveC()().super.isa;
          v52(v49, v51);
          [v45 setListIdentifier:v55];

          v56 = v89;
          v57 = Data._bridgeToObjectiveC()().super.isa;
          [v45 setConfigurationData:v57];

          sub_10001BBA0(v56, v43);
        }

        return;
      }

      v58 = [v90 entityName];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = [objc_opt_self() cdEntityName];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (v59 != v63 || v61 != v65)
      {
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v89;
        if ((v70 & 1) == 0)
        {
          v71 = objc_opt_self();
          v91 = 0;
          v92 = 0xE000000000000000;
          _StringGuts.grow(_:)(172);
          v72._countAndFlagsBits = 0xD0000000000000A9;
          v72._object = 0x80000001007F0330;
          String.append(_:)(v72);
          v73 = v90;
          v74 = [v90 description];
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78._countAndFlagsBits = v75;
          v78._object = v77;
          String.append(_:)(v78);

          v79._countAndFlagsBits = 125;
          v79._object = 0xE100000000000000;
          String.append(_:)(v79);
          v80 = String._bridgeToObjectiveC()();

          [v71 invalidParameterErrorWithDescription:v80];

          swift_willThrow();
          return;
        }

        v26 = 4;
        goto LABEL_10;
      }

      v26 = 4;
    }

    v27 = v89;

    goto LABEL_10;
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(127);
  v28._object = 0x80000001007F02B0;
  v28._countAndFlagsBits = 0xD00000000000007CLL;
  String.append(_:)(v28);
  v29 = [a1 remObjectID];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 description];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
    v32 = 7104878;
  }

  v66 = objc_opt_self();
  v67._countAndFlagsBits = v32;
  v67._object = v34;
  String.append(_:)(v67);

  v68._countAndFlagsBits = 125;
  v68._object = 0xE100000000000000;
  String.append(_:)(v68);
  v69 = String._bridgeToObjectiveC()();

  [v66 invalidParameterErrorWithDescription:v69];

  swift_willThrow();
}

void *sub_1001DB6FC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = [a1 parentAccountID];
      v10 = v2;
      v3 = _swiftEmptyArrayStorage;
      if (v2)
      {
        v4 = v2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = _swiftEmptyArrayStorage;
      }

      sub_1000050A4(&v10, &unk_10093AF40, &unk_100795790);
    }

    else
    {
      v6 = [a1 sectionIDsToUndelete];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10018BA8C();
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = sub_100277EBC(v7);
    }
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1007953F0;
    v3[4] = [a1 accountID];
  }

  return v3;
}

unint64_t sub_1001DB89C(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = _s10PredicatesOMa_1();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10001F6F4();
  sub_1001DD5F4(v10, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v6;
  }

  v17 = result;
  v24 = result >> 62;
  v25 = 0;
  v27 = v11;
  v26 = v14;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v24)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v18 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = (v12 + 56);
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      [v21 setMostRecentTargetTemplateIdentifierByCurrentUser:0];
      if ([v22 sharingStatus] <= 1)
      {
        (*v20)(v6, 1, 1, v27);
        sub_10047CC28(v6);
        sub_1000050A4(v6, &unk_100939D90, "8\n\r");
        [v22 updateChangeCount];
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001DBC18(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v22 - v5;
  v7 = _s10PredicatesOMa_3();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10002DDAC();
  sub_1001DD5F4(v10, _s10PredicatesOMa_3);
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v6;
  }

  v17 = result;
  v22[0] = result >> 62;
  v22[1] = 0;
  v23 = v14;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v22[0])
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v18 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v18 >= 1)
  {
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
      (*(v12 + 56))(v6, 1, 1, v11);
      sub_1004473A4(v6);
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      [v21 updateChangeCount];
    }

    while (v18 != v19);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1001DBF70(id a1, id a2, char a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1;
  if (!a3)
  {
    v19 = [a1 accountID];
    sub_100684B84(0, v19, a4);
    if (v4)
    {
    }

    else
    {
      v37 = v6;
      v38 = qword_100935BA0;
      v39 = v20;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10093C488);
      v41 = v39;
      v42 = v37;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *v45 = 136446466;
        v46 = [v42 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v47 = Optional.descriptionOrNil.getter();
        v115 = v44;
        v48 = v42;
        v50 = v49;

        v51 = sub_10000668C(v47, v50, &v127);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2082;
        v120 = [v41 remObjectID];
        v52 = Optional.descriptionOrNil.getter();
        v54 = v53;

        v42 = v48;
        v55 = sub_10000668C(v52, v54, &v127);

        *(v45 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v43, v115, "Updating cdTemplate.account {cdTemplate: %{public}s, account: %{public}s}", v45, 0x16u);
        swift_arrayDestroy();
      }

      [v42 setAccount:v41];
    }

    return;
  }

  if (a3 == 1)
  {
    v8 = [a2 createResolutionTokenMapIfNecessary];
    v9 = [v7 resolutionTokenMap];
    if (!v9)
    {
      if (qword_100935BA0 != -1)
      {
        goto LABEL_69;
      }

      goto LABEL_13;
    }

    v10 = v9;
    sub_1000F5104(&unk_100943500, qword_1007998C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 1;
    v12 = sub_100694D60(v10, inited);
    swift_setDeallocating();
    sub_100692E54(1);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v8 mergeWithMap:v12 forKey:v13];

    if (!v14)
    {

      return;
    }

    v15 = [v7 parentAccountID];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_100684B84(1, v17, a4);
      if (v4)
      {

        goto LABEL_62;
      }

      v80 = v18;
    }

    else
    {
      v80 = 0;
    }

    v116 = v12;
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100006654(v81, qword_10093C488);
    v112 = v80;
    v82 = v80;
    v83 = v6;
    v84 = v82;
    v85 = v83;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v86, v87))
    {
      log = v86;
      v108 = v16;
      v118 = v84;
      v110 = v8;
      v88 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v88 = 136446466;
      v121 = [v85 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v89 = Optional.descriptionOrNil.getter();
      v91 = v90;

      v92 = sub_10000668C(v89, v91, &v127);

      *(v88 + 4) = v92;
      *(v88 + 12) = 2082;
      if (v112)
      {
        v93 = [v118 remObjectID];
      }

      else
      {
        v93 = 0;
      }

      v94 = Optional.descriptionOrNil.getter();
      v96 = v95;

      v97 = sub_10000668C(v94, v96, &v127);

      *(v88 + 14) = v97;
      _os_log_impl(&_mh_execute_header, log, v87, "Updating cdTemplate.parentAccount {cdTemplate: %{public}s, parentAccount: %{public}s}", v88, 0x16u);
      swift_arrayDestroy();

      v16 = v108;
      v8 = v110;
      v84 = v118;
    }

    else
    {
    }

    [v85 setParentAccount:v84];
    v98 = [v85 parentAccount];
    if (!v98)
    {
      v119 = v84;
      v99 = v16;
      v100 = [v85 storeControllerManagedObjectContext];
      if (v100)
      {
        v101 = v100;
        v102 = [v7 objectID];
        sub_1001D8F44(v102);
        if (v4)
        {
        }

        else
        {
        }
      }

      else
      {
        v103 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v105 = String._bridgeToObjectiveC()();
        [v103 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v105];

        swift_willThrow();
      }

      return;
    }

    v17 = v98;

LABEL_62:
    return;
  }

  v21 = [a1 sectionIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v22 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v22 = v122;
    v8 = v123;
    v23 = v124;
    v24 = v125;
    v25 = v126;
  }

  else
  {
    v24 = 0;
    v56 = -1 << *(v22 + 32);
    v8 = (v22 + 56);
    v57 = ~v56;
    v58 = -v56;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v25 = v59 & *(v22 + 56);
    v23 = v57;
  }

  v60 = (v23 + 64) >> 6;
  v111 = v8;
  v113 = v22;
  v107 = v6;
  v109 = v60;
  while (v22 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v7 = v127, v64 = v24, v65 = v25, !v127))
    {
LABEL_47:
      sub_10001B860();
      return;
    }

LABEL_37:
    sub_10068533C(2, v7, a4);
    if (v5)
    {
      sub_10001B860();

      return;
    }

    v117 = v65;
    v67 = v66;
    [v67 setTemplate:v6];
    v68 = [v67 createResolutionTokenMapIfNecessary];
    if (qword_100936278 != -1)
    {
      swift_once();
    }

    v69 = qword_100974EA8;
    if (*(qword_100974EA8 + 16) && (v70 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v71 & 1) != 0))
    {
      v72 = (*(v69 + 56) + 16 * v70);
      v73 = *v72;
      v74 = v72[1];
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100006654(v75, qword_100946C50);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v127 = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v127);
        _os_log_impl(&_mh_execute_header, v76, v77, "Unknown ingestable key {key: %s}", v78, 0xCu);
        sub_10000607C(v79);
        v5 = 0;
      }

      v6 = v107;
    }

    v61 = String._bridgeToObjectiveC()();

    [v68 updateForKey:v61];

    v24 = v64;
    v25 = v117;
    v8 = v111;
    v22 = v113;
    v60 = v109;
  }

  v62 = v24;
  v63 = v25;
  v64 = v24;
  if (v25)
  {
LABEL_33:
    v65 = (v63 - 1) & v63;
    v7 = *(*(v22 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
    if (!v7)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v60)
    {
      goto LABEL_47;
    }

    v63 = *(v8 + v64);
    ++v62;
    if (v63)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_69:
  swift_once();
LABEL_13:
  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10093C488);
  v27 = v7;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v127 = v32;
    *v30 = 138543618;
    v33 = [v27 objectID];
    *(v30 + 4) = v33;
    *v31 = v33;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v127);
    _os_log_impl(&_mh_execute_header, v28, v29, "REMTemplateStorageCDIngestor: establishRelationship(onStorage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v30, 0x16u);
    sub_1000050A4(v31, &unk_100938E70, &unk_100797230);

    sub_10000607C(v32);
  }

  v34 = objc_opt_self();
  sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
  v35 = swift_getObjCClassFromMetadata();
  v36 = String._bridgeToObjectiveC()();
  [v34 unexpectedNilPropertyWithClass:v35 property:v36];

  swift_willThrow();
}

void sub_1001DCD64(void *a1, void *a2)
{
  v6 = *v2;
  v7 = type metadata accessor for REMJSONDeserializationError();
  v8 = *(*(v7 - 8) + 64);
  if ([a2 shouldUpdateSectionsOrdering])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v28 = v9;
      v27 = a1;
      v10 = [a2 objectID];
      if (qword_1009360E8 != -1)
      {
        swift_once();
      }

      v11 = sub_100425A50(v10, 0);
      type metadata accessor for REMCDTemplateSection();
      v12 = [objc_allocWithZone(NSFetchRequest) init];
      v13 = [swift_getObjCClassFromMetadata() entity];
      [v12 setEntity:v13];

      [v12 setAffectedStores:0];
      [v12 setPredicate:v11];

      [v12 setPropertiesToFetch:0];
      [v12 setRelationshipKeyPathsForPrefetching:0];
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v12 setSortDescriptors:isa];

      v15 = NSManagedObjectContext.fetch<A>(_:)();
      if (v3)
      {
      }

      else
      {
        v16 = v15;

        v17 = v27;
        v18 = [v27 sectionIDsOrderingAsData];
        if (v18)
        {
          v19 = v18;
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v20, v22);
          v23 = REMOrderedIdentifierMap.reorder<A>(objects:)();

          v16 = v23;
          v17 = v27;
        }

        sub_100270E10(v16);

        v24 = objc_allocWithZone(NSMutableOrderedSet);
        v25 = Array._bridgeToObjectiveC()().super.isa;

        v26 = [v24 initWithArray:v25];

        [v17 setSections:v26];
      }
    }
  }
}

uint64_t sub_1001DD5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001DD678()
{
  result = qword_10093C670;
  if (!qword_10093C670)
  {
    type metadata accessor for REMTemplateConfiguration_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMTemplateStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMTemplateStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001DD884()
{
  result = qword_10093C688;
  if (!qword_10093C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C688);
  }

  return result;
}

unint64_t sub_1001DD90C()
{
  result = qword_10093C6A0;
  if (!qword_10093C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6A0);
  }

  return result;
}

unint64_t sub_1001DD994()
{
  result = qword_10093C6B8;
  if (!qword_10093C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6B8);
  }

  return result;
}

unint64_t sub_1001DDA1C()
{
  result = qword_10093C6D0;
  if (!qword_10093C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6D0);
  }

  return result;
}

uint64_t sub_1001DDA70()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C6D8);
  v1 = sub_100006654(v0, qword_10093C6D8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001DDB60(void *a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [v1 accountObjectID];
  swift_storeEnumTagMultiPayload();
  v9 = [v1 accountObjectID];
  v10 = [a1 persistentStoreOfAccountWithAccountID:v9];

  if (v10)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007953F0;
    *(v11 + 32) = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  if (v11)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  [v13 setAffectedStores:v15.super.isa];

  [v13 setPredicate:v12];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  v17 = a1;
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v21[1] = v18;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v19 = Sequence.elements<A>(ofType:)();

    v17 = sub_1001E0B24(v19);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v17;
}

uint64_t sub_1001DDF0C(uint64_t a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = [v1 groupObjectID];
  v8[8] = 1;
  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setSortDescriptors:isa];

  v13 = a1;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v17[1] = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v15 = Sequence.elements<A>(ofType:)();

    v13 = sub_1001E0B24(v15);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v13;
}

uint64_t sub_1001DE240(char *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (qword_100936520 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v10 setSortDescriptors:isa];

    v13 = a1;
    v14 = NSManagedObjectContext.fetch<A>(_:)();
    if (v2)
    {
      sub_100025254(v8, _s10PredicatesOMa_1);

      return v13;
    }

    v24 = a1;
    v26 = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    a1 = v3;
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v15 = Sequence.elements<A>(ofType:)();

    if (([v3 requiringOneOrMoreIncompleteReminders] & 1) == 0)
    {
      break;
    }

    v26 = _swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v8;
    if (!v3)
    {
      v20 = _swiftEmptyArrayStorage;
LABEL_20:

      v15 = v20;
      v8 = v22;
      break;
    }

    v10 = 0;
    v16 = v15 & 0xC000000000000001;
    v8 = (v15 & 0xFFFFFFFFFFFFFF8);
    v23 = v15;
    while (1)
    {
      if (v16)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v8 + 2))
        {
          goto LABEL_24;
        }

        v17 = *(v15 + 8 * v10 + 32);
      }

      v18 = v17;
      a1 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v25 = v17;
      if (sub_1001DE698(&v25))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = v26[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v23;
      }

      else
      {
      }

      ++v10;
      if (a1 == v3)
      {
        v20 = v26;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v13 = sub_1001E0B24(v15);
  sub_100025254(v8, _s10PredicatesOMa_1);

  return v13;
}

BOOL sub_1001DE698(void **a1)
{
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = [v8 remObjectID];
  if (v9)
  {
    v10 = v9;
    sub_1000F5104(&qword_10093B980, qword_10079A3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v12 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
    *v7 = v10;
    v7[8] = 1;
    v13 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v14 - 8) + 104))(&v7[v12], v13, v14);
    swift_storeEnumTagMultiPayload();
    v15 = v10;
    v16 = sub_100043AA8();
    sub_100025254(v7, _s10PredicatesOMa);
    *(inited + 32) = v16;
    KeyPath = swift_getKeyPath();
    v18 = sub_1003EAA24(KeyPath);

    *(inited + 40) = v18;
    v19 = sub_10000C2B0(inited);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    [v20 setAffectedStores:0];
    [v20 setPredicate:v19];
    [v20 setFetchLimit:1];
    v22 = NSManagedObjectContext.count<A>(for:)();
    if (v1)
    {
    }

    else
    {
      v31 = v22;

      return v31 > 0;
    }
  }

  else
  {
    if (qword_100935BB8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093C6D8);
    v25 = v8;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = [v25 objectID];
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders: nil list remObjectID: %@", v28, 0xCu);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
    }

    return 0;
  }

  return v23;
}

uint64_t sub_1001DEAB8(unint64_t a1)
{
  v4 = *v1;
  v5 = [v4 accountObjectID];
  v6 = sub_100031BC0(a1, v5, [v4 debug_useInMemoryPreferredDefaultListStorage], 0);
  v7 = v2;

  if (!v2)
  {
    v7 = sub_1001E0B24(v6);
  }

  return v7;
}

uint64_t sub_1001DEB80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = sub_100031BC0(a1, a4, [*v4 debug_useInMemoryPreferredDefaultListStorage], 0);
  if (!v5)
  {
    v6 = sub_1001E0B24(v7);
  }

  return v6;
}

uint64_t sub_1001DEC00(uint64_t a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [v1 accountObjectID];
  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setSortDescriptors:isa];

  v13 = a1;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v17[1] = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v15 = Sequence.elements<A>(ofType:)();

    v13 = sub_1001E0B24(v15);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v13;
}

uint64_t sub_1001DEEE8(uint64_t a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v10;
  swift_storeEnumTagMultiPayload();
  v11 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:isa];

  v15 = a1;
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v19[1] = v16;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v17 = Sequence.elements<A>(ofType:)();

    v15 = sub_1001E0B24(v17);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v15;
}

uint64_t sub_1001DF208(uint64_t a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 accountObjectID];
  v10 = [v1 externalIdentifiers];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v9;
  v8[1] = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  v16 = a1;
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v20[1] = v17;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v18 = Sequence.elements<A>(ofType:)();

    v16 = sub_1001E0B24(v18);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v16;
}

uint64_t sub_1001DF54C(uint64_t a1)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 externalIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v1 accountObjectID];
  *v8 = v10;
  v8[1] = v12;
  v8[2] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:isa];

  v18 = a1;
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v22[1] = v19;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v20 = Sequence.elements<A>(ofType:)();

    v18 = sub_1001E0B24(v20);
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  return v18;
}

void sub_1001DF87C(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 templateObjectID];
  v6 = sub_10034AE0C(v5, a1, 0, 0);

  if (!v2)
  {
    v7 = [v6 account];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedConfiguration];
      [v9 templatePublicLinkTTL];

      v18 = sub_1001DA188(v6);
      v19 = sub_100019990(v8);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007953F0;
      *(v20 + 32) = v19;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007953F0;
      *(v28 + 32) = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007953F0;
      v27 = v19;
      v22 = v18;
      *(v21 + 32) = [v3 templateObjectID];
      v23 = objc_allocWithZone(REMListsDataViewInvocationResult);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v25 = Array._bridgeToObjectiveC()().super.isa;

      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v23 initWithAccountStorages:isa listStorages:v25 objectIDs:v26];
    }

    else
    {
      v10 = objc_opt_self();
      _StringGuts.grow(_:)(36);

      v11 = [v6 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15._countAndFlagsBits = v12;
      v15._object = v14;
      String.append(_:)(v15);

      v16._countAndFlagsBits = 125;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = String._bridgeToObjectiveC()();

      [v10 internalErrorWithDebugDescription:v17];

      swift_willThrow();
    }
  }
}

void *sub_1001DFC3C(void *a1, char a2, unint64_t a3)
{
  if (a2)
  {
    if (a3 >> 62)
    {
      goto LABEL_59;
    }

    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = a1;
  if (v17)
  {
    v18 = 0;
    v37 = v17;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v19 = *(a3 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 account];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 accountTypeHost];
        v25 = [v24 isCloudKit];

        if (!v25)
        {

          goto LABEL_28;
        }

        if (!a1)
        {

LABEL_41:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v30 = *(v42 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_28;
        }

        v26 = v39;
        v27 = [v23 remObjectID];
        if (!v27)
        {

          v17 = v37;
          goto LABEL_28;
        }

        v28 = v27;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v29 = static NSObject.== infix(_:_:)();

        v17 = v37;
        if (v29)
        {
          goto LABEL_41;
        }
      }

LABEL_28:
      ++v18;
      if (v21 == v17)
      {
        v31 = v42;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
    v36 = a1;
    if (v4)
    {
      v5 = 0;
      v38 = v4;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v7 = *(a3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_57;
        }

        v10 = [v7 account];
        if (v10)
        {
          break;
        }

        v6 = v8;
LABEL_7:

        ++v5;
        if (v9 == v4)
        {
          goto LABEL_44;
        }
      }

      v6 = v10;
      v11 = [v10 accountTypeHost];
      v12 = [v11 isCloudKit];

      if (v12)
      {
        if (!a1)
        {

LABEL_51:
          v41 = v8;
          v31 = _swiftEmptyArrayStorage;
          v42 = _swiftEmptyArrayStorage;
          if (v8)
          {
            v34 = v8;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v35 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v31 = v42;
          }

          goto LABEL_45;
        }

        v13 = v36;
        v14 = [v6 remObjectID];
        if (v14)
        {
          v15 = v14;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            goto LABEL_51;
          }

          v6 = v8;
          goto LABEL_21;
        }
      }

      else
      {
        v13 = v8;
      }

LABEL_21:
      v4 = v38;
      goto LABEL_7;
    }

LABEL_44:
    v41 = 0;
    v31 = _swiftEmptyArrayStorage;
LABEL_45:
    sub_1000050A4(&v41, &unk_100943240, &qword_10079A3B8);
    v32 = v36;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_48:
    v32 = v39;
  }

  return v31;
}

uint64_t sub_1001E00C0()
{
  v0 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for REMDaemonUserDefaultsPreferredListStorageAdapter();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_100974C40 = result;
  return result;
}

uint64_t sub_1001E011C(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(*v1 + 16);
  sub_1001E0978(a1, &v14 - v5);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setPreferredDefaultListObjectIDUrl:v11];

  return sub_1000050A4(a1, &unk_1009441F0, &qword_100795760);
}

id sub_1001E026C()
{
  v1 = [*(*v0 + 16) preferredDefaultListID];

  return v1;
}

void sub_1001E02A8(void *a1)
{
  [*(*v1 + 16) setPreferredDefaultListID:a1];
}

uint64_t sub_1001E02F4()
{
  v0 = type metadata accessor for UnfairLock.Options();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for MockInMemoryPreferredDefaultListStorage();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID) = 0;
  sub_1001E11C8();
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = type metadata accessor for UnfairLock();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  result = UnfairLock.init(options:)();
  *(v5 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock) = result;
  qword_100974C48 = v5;
  return result;
}

uint64_t sub_1001E0480(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  swift_beginAccess();
  sub_1001E0A50(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1001E04E4()
{
  sub_1000050A4(v0 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl, &unk_1009441F0, &qword_100795760);

  v1 = *(v0 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockInMemoryPreferredDefaultListStorage()
{
  result = qword_10093C800;
  if (!qword_10093C800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E05CC()
{
  sub_1001E0674();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001E0674()
{
  if (!qword_10093C810)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10093C810);
    }
  }
}

uint64_t sub_1001E06CC()
{
  v2 = *(*v0 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock);
  type metadata accessor for UnfairLock();

  sub_1000F5104(&unk_1009441F0, &qword_100795760);
  Lock.sync<A>(_:)();
}

uint64_t sub_1001E077C(uint64_t a1)
{
  v4 = *(*v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return sub_1000050A4(a1, &unk_1009441F0, &qword_100795760);
}

uint64_t sub_1001E0830()
{
  v2 = *(*v0 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock);
  type metadata accessor for UnfairLock();

  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Lock.sync<A>(_:)();

  return v3;
}

void sub_1001E08D8(void *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1001E0978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001E09E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID);
  *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID) = v2;
  v3 = v2;
}

id sub_1001E0A34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID);
  *a1 = v2;
  return v2;
}

uint64_t sub_1001E0A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E0AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  swift_beginAccess();
  return sub_1001E0978(v1 + v3, a1);
}

uint64_t sub_1001E0B24(unint64_t a1)
{
  if (qword_100935BB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100006654(v3, qword_10093C6D8);
  v21 = a1;
  __chkstk_darwin(v4);
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v5 = Sequence.map<A>(skippingError:_:)();
  if (v1)
  {

    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v21[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);
LABEL_15:
    v21 = _swiftEmptyDictionarySingleton;
    sub_10002B31C(_swiftEmptyArrayStorage, a1, &v21, sub_10002B448);
    v20 = _swiftEmptyDictionarySingleton;
    v14 = sub_10002B31C(_swiftEmptyArrayStorage, a1, &v20, sub_10002BE58);

    v21 = v14;
    sub_100271FB4(v6);
    v15 = objc_allocWithZone(REMListsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v18 = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v15 initWithAccountStorages:isa listStorages:v17 objectIDs:v18];

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E0F18(uint64_t a1)
{
  v3 = _s10PredicatesOMa_1();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 setSortDescriptors:isa];

  v11 = a1;
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_100025254(v6, _s10PredicatesOMa_1);
  }

  else
  {
    v15[1] = v12;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v13 = Sequence.elements<A>(ofType:)();

    v11 = sub_1001E0B24(v13);
    sub_100025254(v6, _s10PredicatesOMa_1);
  }

  return v11;
}

unint64_t sub_1001E11C8()
{
  result = qword_100936E60;
  if (!qword_100936E60)
  {
    type metadata accessor for UnfairLock.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E60);
  }

  return result;
}

uint64_t sub_1001E1220()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C928);
  v1 = sub_100006654(v0, qword_10093C928);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1001E12E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMGroceryModelError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _swiftEmptySetSingleton;
  v8 = *(a1 + 16);
  if (!v8)
  {
    v48 = _swiftEmptyArrayStorage;

    return v48;
  }

  v9 = type metadata accessor for REMGroceryDummyModel();
  v10 = 0;
  v49 = a1 + 32;
  v50 = v9;
  v46 = (v5 + 88);
  v45 = enum case for REMGroceryModelError.unsupportedLanguage(_:);
  v47 = (v5 + 8);
  v48 = _swiftEmptyArrayStorage;
  *&v11 = 136315138;
  v42 = v11;
  v12 = v43;
  v44 = v8;
  v41 = v4;
  while (1)
  {
    v13 = (v49 + 16 * v10);
    v14 = *v13;
    v15 = v13[1];

    v51 = v14;
    v16 = static REMGroceryDummyModel.modelBaseLocale(for:)();
    if (!v2)
    {
      v25 = v17;
      if (v17)
      {
        v26 = v16;
        v27 = v54;
        if (v54[2] && (v28 = v54[5], Hasher.init(_seed:)(), String.hash(into:)(), v29 = Hasher._finalize()(), v30 = -1 << *(v27 + 32), v31 = v29 & ~v30, ((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = (v27[6] + 16 * v31);
            v34 = *v33 == v26 && v25 == v33[1];
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v4 = v41;
          v12 = v43;
          v8 = v44;
        }

        else
        {
LABEL_23:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100365788(0, *(v48 + 2) + 1, 1, v48);
          }

          v12 = v43;
          v8 = v44;
          v36 = *(v48 + 2);
          v35 = *(v48 + 3);
          if (v36 >= v35 >> 1)
          {
            v48 = sub_100365788((v35 > 1), v36 + 1, 1, v48);
          }

          v37 = v48;
          *(v48 + 2) = v36 + 1;
          v38 = &v37[16 * v36];
          *(v38 + 4) = v51;
          *(v38 + 5) = v15;
          sub_100378434(&v52, v26, v25);

          v4 = v41;
        }
      }

      else
      {
      }

      goto LABEL_5;
    }

    v52 = v2;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_34;
    }

    v18 = (*v46)(v12, v4);
    if (v18 != v45)
    {
      break;
    }

    (*v47)(v12, v4);
    if (qword_100935BD0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093C928);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = v42;
      v24 = sub_10000668C(v51, v15, &v53);

      *(v22 + 4) = v24;
      v8 = v44;
      _os_log_impl(&_mh_execute_header, v20, v21, "remRemovingThoseWithTheSameBaseLocaleIDAndDroppingGroceryUnsupportedLocaleID, unsupportedLanguage: %s", v22, 0xCu);
      sub_10000607C(v23);
    }

    else
    {
    }

    v2 = 0;
LABEL_5:
    if (++v10 == v8)
    {

      return v48;
    }
  }

  (*v47)(v12, v4);
LABEL_34:

  return v48;
}

uint64_t sub_1001E1818()
{

  return sub_1001E18E8(&qword_100938CA0, REMColor_ptr);
}

uint64_t sub_1001E1880()
{

  return sub_1001E18E8(&unk_10093C970, REMContactRepresentation_ptr);
}

uint64_t sub_1001E18E8(unint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = [objc_allocWithZone(type metadata accessor for RDJSONCoder()) init];
  [v2 encodeWithCoder:v7];
  v8 = objc_opt_self();
  v9 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
  swift_beginAccess();
  v10 = *&v7[v9];
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v11 = *(v10 + 32);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = 0;
  v13 = [v8 dataWithJSONObject:isa options:0 error:&v37];

  v14 = v37;
  if (v13)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static String.Encoding.utf8.getter();
    v18 = String.init(data:encoding:)();
    if (v19)
    {
      v20 = v18;
      sub_10001BBA0(v15, v17);

      return v20;
    }

    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    [v23 internalErrorWithDebugDescription:v24];

    swift_willThrow();
    sub_10001BBA0(v15, v17);
  }

  else
  {
    v22 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100935BE8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10093CAE0);
  v26 = v2;
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v29 = 136315394;
    sub_1000060C8(0, a1, a2);
    v30 = v26;
    v31 = String.init<A>(describing:)();
    v33 = sub_10000668C(v31, v32, &v37);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    swift_getErrorValue();
    v34 = Error.localizedDescription.getter();
    v36 = sub_10000668C(v34, v35, &v37);

    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "RDJSONCoder failed to encode object as JSON {class: %s, error: %s}", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001E1D20()
{

  return sub_1001E18E8(&qword_10093C968, REMResolutionTokenMap_ptr);
}

uint64_t sub_1001E1D88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C940);
  v1 = sub_100006654(v0, qword_10093C940);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1001E1E58(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
      result = 0x61447265746C6966;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6341746E65726170;
      break;
    case 8:
      result = 0x694C746E65726170;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x73694C7472616D73;
      break;
    case 12:
      result = 0x53676E6974726F73;
      break;
    case 13:
      result = 0x614464656E6E6970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E201C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001E1E58(*a1);
  v5 = v4;
  if (v3 == sub_1001E1E58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001E20A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001E1E58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E2108()
{
  sub_1001E1E58(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001E215C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001E1E58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001E21BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E6A64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001E21EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001E1E58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0()
{
  v1 = v0;
  if ((sub_1001E2B1C() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v34 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_100935D68;
        v6 = v34;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_10024B964(v34, 0);
        type metadata accessor for REMCDSmartListSection();
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

          if (qword_100935BD8 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_100006654(v18, qword_10093C940);
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
            _os_log_impl(&_mh_execute_header, v20, v21, "REMCDSmartList+CloudKit#sortChildSections(): Sorted child sections {cdSmartList: %s}", v22, 0xCu);
            sub_10000607C(v33);
          }
        }

        else
        {
          v17 = v11;
        }

        sub_100271000(v17);

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

uint64_t sub_1001E2B1C()
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
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_10093C940);
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
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (reminders and/or sections) deferred {smartListRecordID: %{public}@}", v11, 0xCu);
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

uint64_t static REMCDSmartList.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSmartList.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10093C940);
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

Swift::String __swiftcall REMCDSmartList.recordType()()
{
  v0 = 0x73694C7472616D53;
  v1 = 0xE900000000000074;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDSmartList.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  swift_getObjectType();
  v5 = String._bridgeToObjectiveC()();
  v13.receiver = v3;
  v13.super_class = REMCDSmartList;
  objc_msgSendSuper2(&v13, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v3 ckIdentifierFromRecordName:v7];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v8];

  v9 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v10 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v11 = v3;
  v12 = from.super.isa;
  sub_1004D6DAC(v12, v9, v10, v11, v11, v12);
}

void sub_1001E34CC(_BYTE *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v224 = a5;
  v227 = 0;
  v228 = a4;
  v231 = a3;
  v232 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v222 - v8;
  v225 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v225 - 8) + 64);
  __chkstk_darwin(v225);
  v226 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v222 = &v222 - v13;
  v14 = type metadata accessor for UUID();
  v229 = *(v14 - 1);
  v230 = v14;
  v15 = *(v229 + 64);
  __chkstk_darwin(v14);
  v223 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v222 - v18;
  v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  __chkstk_darwin(v22);
  v24 = &v222 - v23;
  __chkstk_darwin(v25);
  v27 = &v222 - v26;
  __chkstk_darwin(v28);
  v30 = &v222 - v29;
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v34 = &v222 - v33;
  __chkstk_darwin(v35);
  __chkstk_darwin(&v222 - v36);
  v38 = &v222 - v37;
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v42 = &v222 - v41;
  *&v48 = __chkstk_darwin(v43).n128_u64[0];
  v50 = &v222 - v49;
  switch(*a1)
  {
    case 1:
      v66 = CKRecord.subscript.getter();
      v67 = v232;
      if (v66)
      {
        v235 = v66;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          isa = sub_10013E558(v233, v234);

          if (isa)
          {
            [v67 setColor:isa];
            goto LABEL_131;
          }
        }
      }

      [v67 setColor:0];
      return;
    case 2:
      v68 = [v231 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v69 = v234;
      if (v234 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        v112 = v233;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v112, v69);
      }

      [v232 setFilterData:isa];
      goto LABEL_131;
    case 3:
      return;
    case 4:
      v55 = [v231 encryptedValues];
      v56 = String._bridgeToObjectiveC()();
      v57 = [v55 objectForKeyedSubscript:v56];
      swift_unknownObjectRelease();

      if (v57)
      {
        v235 = v57;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v58 = swift_dynamicCast();
        if (v58)
        {
          v59 = v233;
        }

        else
        {
          v59 = 0;
        }

        if (v58)
        {
          v57 = v234;
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      v113 = [v232 membershipsOfRemindersInSectionsChecksum];
      if (v113)
      {
        v114 = v113;
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        if (v57)
        {
          if (v115 == v59 && v57 == v117)
          {

            return;
          }

          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v133)
          {

            return;
          }
        }

        else
        {
        }
      }

      else if (!v57)
      {
        return;
      }

      v134 = v232;
      v230 = [v232 membershipsOfRemindersInSectionsChecksum];
      v135 = [v134 membershipsOfRemindersInSectionsAsData];
      if (v135)
      {
        v136 = v135;
        v137 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v138;
      }

      else
      {
        v137 = 0;
        v139 = 0xF000000000000000;
      }

      v140 = v227;
      v141 = [v134 membershipsOfRemindersInSectionsAsData];
      v142 = &selRef_setPublicLinkLastModifiedDate_;
      if (v141)
      {
        v143 = v141;
        v144 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = v145;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v140)
        {
          sub_10001BBA0(v144, v146);

          v134 = v232;
          goto LABEL_120;
        }

        sub_10001BBA0(v144, v146);
        v147 = v233;
        v134 = v232;
        v142 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v147 = 0;
      }

      if (v57)
      {
        v157 = String._bridgeToObjectiveC()();
      }

      else
      {
        v157 = 0;
      }

      [v134 v142[215]];

      v158 = sub_1004E183C();
      if (v159 >> 60 == 15)
      {
        v160 = 0;
      }

      else
      {
        v161 = v158;
        v162 = v159;
        v160 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v161, v162);
      }

      [v134 setMembershipsOfRemindersInSectionsAsData:v160];

      if (!v147)
      {

        sub_100031A14(v137, v139);
        return;
      }

      v163 = v147;
      sub_1005EB85C(v163);
      if (!v140)
      {

        sub_100031A14(v137, v139);
        return;
      }

LABEL_120:
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      sub_100006654(v164, qword_10093C940);
      v165 = v134;
      swift_errorRetain();
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v166, v167))
      {
        v227 = v140;
        v168 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *v168 = 136446722;
        v169 = sub_1001424F8();
        v171 = sub_10000668C(v169, v170, &v233);

        *(v168 + 4) = v171;
        *(v168 + 12) = 2082;
        v172 = [v165 remObjectID];
        if (v172)
        {
          v173 = v172;
          v174 = [v172 description];

          v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v177 = v176;
        }

        else
        {
          v175 = 7104878;
          v177 = 0xE300000000000000;
        }

        v202 = sub_10000668C(v175, v177, &v233);

        *(v168 + 14) = v202;
        *(v168 + 22) = 2082;
        swift_getErrorValue();
        v203 = Error.rem_errorDescription.getter();
        v205 = sub_10000668C(v203, v204, &v233);

        *(v168 + 24) = v205;
        _os_log_impl(&_mh_execute_header, v166, v167, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v168, 0x20u);
        swift_arrayDestroy();
      }

      v206 = v230;
      [v165 setMembershipsOfRemindersInSectionsChecksum:v230];

      if (v139 >> 60 == 15)
      {
        v207 = 0;
      }

      else
      {
        sub_100029344(v137, v139);
        v207 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v137, v139);
      }

      [v165 setMembershipsOfRemindersInSectionsAsData:v207];
      sub_100031A14(v137, v139);

      return;
    case 5:
      v81 = [v231 encryptedValues];
      v82 = String._bridgeToObjectiveC()();
      v83 = [v81 objectForKeyedSubscript:v82];
      swift_unknownObjectRelease();

      v84 = v232;
      if (!v83)
      {
        goto LABEL_34;
      }

      v235 = v83;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      UUID.init(uuidString:)();

      v86 = v229;
      v85 = v230;
      if ((*(v229 + 48))(v42, 1, v230) == 1)
      {
        sub_1000050A4(v42, &unk_100939D90, "8\n\r");
LABEL_34:
        [v84 setMostRecentTargetTemplateIdentifier:0];
      }

      else
      {
        (*(v86 + 32))(v19, v42, v85);
        v156 = UUID._bridgeToObjectiveC()().super.isa;
        [v84 setMostRecentTargetTemplateIdentifier:v156];

        (*(v86 + 8))(v19, v85);
      }

      return;
    case 6:
      v89 = [v231 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      if (v234)
      {
        isa = String._bridgeToObjectiveC()();
      }

      else
      {
        isa = 0;
      }

      [v232 setName:isa];
      goto LABEL_131;
    case 7:
      v226 = v45;
      v227 = v44;
      v70 = v47;
      v71 = v232;
      v72 = [v232 smartListType];
      if (!v72)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        goto LABEL_69;
      }

      v73 = v72;
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v76)
      {
LABEL_69:

        goto LABEL_70;
      }

      if (v74 == v77 && v76 == v78)
      {

        v80 = v228;
        v79 = v229;
        goto LABEL_105;
      }

      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v80 = v228;
      v79 = v229;
      if (v148)
      {
LABEL_105:
        v149 = [v71 parentAccount];
        if (v149)
        {
          v150 = v79;
          v151 = v149;
          v152 = [v149 identifier];

          if (v152)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = v150;
            v153 = *(v150 + 56);
            v153(v38, 0, 1, v230);
          }

          else
          {
            v79 = v150;
            v153 = *(v150 + 56);
            v153(v38, 1, 1, v230);
          }

          sub_100031B58(v38, v70, &unk_100939D90, "8\n\r");
        }

        else
        {
          v153 = *(v79 + 56);
          v153(v70, 1, 1, v230);
        }

        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v192 = v79;
        if (v233 == 2 || (v233 & 1) == 0)
        {
          v193 = 0;
        }

        else
        {
          v193 = [v71 account];
        }

        [v71 setParentAccount:v193];

        if (*v80 == 1)
        {
          v194 = &unk_100939D90;
          v195 = "8\n\r";
          v196 = v70;
        }

        else
        {
          v197 = [v71 parentAccount];
          if (v197)
          {
            v198 = v197;
            v199 = [v197 identifier];

            v200 = v222;
            if (v199)
            {
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v201 = 0;
            }

            else
            {
              v201 = 1;
            }

            v211 = v225;
            v208 = v192;
            v210 = v230;
            v153(v34, v201, 1, v230);
            v209 = v227;
            sub_100031B58(v34, v227, &unk_100939D90, "8\n\r");
          }

          else
          {
            v208 = v192;
            v209 = v227;
            v210 = v230;
            v153(v227, 1, 1, v230);
            v211 = v225;
            v200 = v222;
          }

          v212 = *(v211 + 48);
          sub_10018E470(v209, v200);
          sub_10018E470(v70, v200 + v212);
          v213 = *(v208 + 48);
          if (v213(v200, 1, v210) == 1)
          {
            sub_1000050A4(v209, &unk_100939D90, "8\n\r");
            sub_1000050A4(v70, &unk_100939D90, "8\n\r");
            v214 = v213(v200 + v212, 1, v210);
            v80 = v228;
            if (v214 == 1)
            {
              sub_1000050A4(v200, &unk_100939D90, "8\n\r");
              v215 = 0;
LABEL_172:
              *v80 = v215 & 1;
              return;
            }
          }

          else
          {
            v216 = v226;
            sub_10018E470(v200, v226);
            v217 = v213(v200 + v212, 1, v210);
            v80 = v228;
            if (v217 != 1)
            {
              v218 = v200 + v212;
              v219 = v223;
              (*(v208 + 32))(v223, v218, v210);
              sub_10018E4E0();
              v220 = dispatch thunk of static Equatable.== infix(_:_:)();
              v221 = *(v208 + 8);
              v221(v219, v210);
              sub_1000050A4(v227, &unk_100939D90, "8\n\r");
              sub_1000050A4(v70, &unk_100939D90, "8\n\r");
              v221(v216, v210);
              sub_1000050A4(v200, &unk_100939D90, "8\n\r");
              v215 = v220 ^ 1;
              goto LABEL_172;
            }

            sub_1000050A4(v227, &unk_100939D90, "8\n\r");
            sub_1000050A4(v70, &unk_100939D90, "8\n\r");
            (*(v208 + 8))(v216, v210);
          }

          v194 = &unk_10093A3D0;
          v195 = &qword_100795770;
          v196 = v200;
        }

        sub_1000050A4(v196, v194, v195);
        v215 = 1;
        goto LABEL_172;
      }

LABEL_70:
      v118 = [v71 parentAccount];
      if (!v118)
      {
        v231 = [v71 account];
        [v71 setParentAccount:v231];
        v118 = v231;
      }

      return;
    case 8:
      v227 = v46;
      v90 = [v232 parentList];
      if (v90)
      {
        v91 = v90;
        v92 = [v90 identifier];

        v93 = v230;
        if (v92)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = *(v229 + 56);
          v94(v30, 0, 1, v93);
        }

        else
        {
          v94 = *(v229 + 56);
          v94(v30, 1, 1, v230);
        }

        sub_100031B58(v30, v50, &unk_100939D90, "8\n\r");
      }

      else
      {
        v94 = *(v229 + 56);
        v94(v50, 1, 1, v230);
      }

      v119 = v231;
      v120 = [v231 ic_isOwnedByCurrentUser];
      v121 = v232;
      v122 = v228;
      if ((v120 & 1) != 0 || (v123 = [v119 share]) == 0)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v124 = swift_dynamicCastObjCClass();
          if (!v124)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v124 = 0;
        }

        v123 = sub_1004D6EF0(v124, v121);

        [v121 setParentList:v123];
      }

      if (*v122 == 1)
      {
        v125 = &unk_100939D90;
        v126 = "8\n\r";
        v127 = v50;
      }

      else
      {
        v128 = [v121 parentList];
        if (v128)
        {
          v129 = v128;
          v130 = [v128 identifier];

          v131 = v230;
          if (v130)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v132 = 0;
          }

          else
          {
            v132 = 1;
          }

          v155 = v226;
          v181 = v229;
          v94(v24, v132, 1, v131);
          v182 = v24;
          v154 = v181;
          sub_100031B58(v182, v27, &unk_100939D90, "8\n\r");
        }

        else
        {
          v154 = v229;
          v131 = v230;
          v94(v27, 1, 1, v230);
          v155 = v226;
        }

        v183 = *(v225 + 48);
        sub_10018E470(v27, v155);
        sub_10018E470(v50, v155 + v183);
        v184 = *(v154 + 48);
        if (v184(v155, 1, v131) == 1)
        {
          sub_1000050A4(v27, &unk_100939D90, "8\n\r");
          v185 = v226;
          sub_1000050A4(v50, &unk_100939D90, "8\n\r");
          if (v184(v185 + v183, 1, v131) == 1)
          {
            sub_1000050A4(v185, &unk_100939D90, "8\n\r");
            v186 = 0;
            goto LABEL_141;
          }
        }

        else
        {
          v187 = v227;
          sub_10018E470(v155, v227);
          if (v184(v155 + v183, 1, v131) != 1)
          {
            v188 = v155 + v183;
            v189 = v223;
            (*(v154 + 32))(v223, v188, v131);
            sub_10018E4E0();
            v190 = dispatch thunk of static Equatable.== infix(_:_:)();
            v191 = *(v154 + 8);
            v191(v189, v131);
            sub_1000050A4(v27, &unk_100939D90, "8\n\r");
            sub_1000050A4(v50, &unk_100939D90, "8\n\r");
            v191(v187, v131);
            sub_1000050A4(v155, &unk_100939D90, "8\n\r");
            v186 = v190 ^ 1;
            v122 = v228;
LABEL_141:
            *v122 = v186 & 1;
            return;
          }

          sub_1000050A4(v27, &unk_100939D90, "8\n\r");
          v185 = v226;
          sub_1000050A4(v50, &unk_100939D90, "8\n\r");
          (*(v154 + 8))(v187, v131);
          v122 = v228;
        }

        v125 = &unk_10093A3D0;
        v126 = &qword_100795770;
        v127 = v185;
      }

      sub_1000050A4(v127, v125, v126);
      v186 = 1;
      goto LABEL_141;
    case 9:
      v62 = sub_1004E183C();
      v64 = v63;

      if (v64 >> 60 == 15)
      {
        v65 = 0;
      }

      else
      {
        v65 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v62, v64);
      }

      [v232 setSectionIDsOrderingAsData:v65];

      _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
      return;
    case 0xA:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      [v232 setShowingLargeAttachments:v233 & 1];
      return;
    case 0xB:
      v52 = CKRecord.subscript.getter();
      v53 = v232;
      if (v52)
      {
        v235 = v52;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v54 = String._bridgeToObjectiveC()();

          [v53 setSmartListType:v54];
          goto LABEL_38;
        }
      }

      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100006654(v95, qword_10093C940);
      v96 = v53;
      isa = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(isa, v97))
      {
        goto LABEL_131;
      }

      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v233 = v99;
      *v98 = 136446210;
      v100 = [v96 ckIdentifier];
      if (v100)
      {
        v101 = v100;
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;
      }

      else
      {
        v102 = 7104878;
        v104 = 0xE300000000000000;
      }

      v178 = sub_10000668C(v102, v104, &v233);

      *(v98 + 4) = v178;
      v179 = "SmartList (ckIdentifier: %{public}s) does not have smart list type";
      goto LABEL_130;
    case 0xC:
      v60 = CKRecord.subscript.getter();
      v61 = v232;
      if (v60 && (v235 = v60, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v54 = String._bridgeToObjectiveC()();

        [v61 setSortingStyle:v54];
LABEL_38:
      }

      else
      {
        if (qword_100935BD8 != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        sub_100006654(v105, qword_10093C940);
        v106 = v61;
        isa = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(isa, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v233 = v99;
          *v98 = 136446210;
          v107 = [v106 ckIdentifier];
          if (v107)
          {
            v108 = v107;
            v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v111 = v110;
          }

          else
          {
            v109 = 7104878;
            v111 = 0xE300000000000000;
          }

          v180 = sub_10000668C(v109, v111, &v233);

          *(v98 + 4) = v180;
          v179 = "SmartList (ckIdentifier: %{public}s) does not have a sorting style";
LABEL_130:
          _os_log_impl(&_mh_execute_header, isa, v97, v179, v98, 0xCu);
          sub_10000607C(v99);
        }

LABEL_131:
      }

      return;
    case 0xD:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v87 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v88 = *(v87 - 8);
      v54 = 0;
      if ((*(v88 + 48))(v9, 1, v87) != 1)
      {
        v54 = Date._bridgeToObjectiveC()().super.isa;
        (*(v88 + 8))(v9, v87);
      }

      [v232 setPinnedDate:v54];
      goto LABEL_38;
    default:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      if (v234)
      {
        isa = String._bridgeToObjectiveC()();
      }

      else
      {
        isa = 0;
      }

      [v232 setBadgeEmblem:isa];
      goto LABEL_131;
  }
}

CKRecord_optional __swiftcall REMCDSmartList.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v148 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v132 - v6;
  v147 = type metadata accessor for UUID();
  v8 = *(v147 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v147);
  v136 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v132 - v17;
  v153.receiver = v1;
  v153.super_class = REMCDSmartList;
  v19 = objc_msgSendSuper2(&v153, "newlyCreatedRecord", v16);
  v22 = v19;
  if (v19)
  {
    v144 = v18;
    v145 = v14;
    v23 = 0;
    v142 = "ShowingLargeAttachments";
    v143 = " account {error: ";
    v135 = "SectionIDsOrderingAsData";
    v140 = (v8 + 56);
    v141 = "IsLinkedToAccount";
    v139 = (v8 + 48);
    v133 = (v8 + 16);
    v132 = (v8 + 8);
    v137 = "indersInSectionsChecksum";
    v138 = "TemplateIdentifier";
    *&v21 = 136446210;
    v134 = v21;
    v24 = &selRef_persistentStoreForIdentifier_;
    v146 = v7;
    v149 = v19;
    while (2)
    {
      v26 = *(&off_1008DDB48 + v23++ + 32);
      switch(v26)
      {
        case 1:
          v59 = [v1 color];
          if (v59)
          {
            v60 = v59;
            v61 = sub_1001E18E8(&qword_100938CA0, REMColor_ptr);
            if (v62)
            {
              *(&v151 + 1) = &type metadata for String;
              v152 = &protocol witness table for String;
              *&v150 = v61;
              *(&v150 + 1) = v62;
            }

            else
            {
              v152 = 0;
              v150 = 0u;
              v151 = 0u;
            }

            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
          }

          else
          {
            CKRecord.subscript.setter();
          }

          goto LABEL_82;
        case 2:
          v63 = [v22 encryptedValues];
          v64 = [v1 filterData];
          if (v64)
          {
            v65 = v64;
            v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            v24 = &selRef_persistentStoreForIdentifier_;
            *(&v151 + 1) = &type metadata for Data;
            v152 = &protocol witness table for Data;
            *&v150 = v66;
            *(&v150 + 1) = v68;
            v22 = v149;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

          goto LABEL_72;
        case 3:
          goto LABEL_5;
        case 4:
          v37 = [v1 membershipsOfRemindersInSectionsAsData];
          if (v37)
          {
            v38 = v37;
            v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v42 = objc_opt_self();
            sub_100029344(v39, v41);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v44 = [v42 assetForData:isa];

            v22 = v149;
            CKRecord.subscript.setter();
            sub_10001BBA0(v39, v41);
            sub_10001BBA0(v39, v41);
          }

          else
          {
            CKRecord.subscript.setter();
          }

          v112 = [v22 encryptedValues];
          v113 = [v1 membershipsOfRemindersInSectionsChecksum];
          if (v113)
          {
            v114 = v113;
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;

            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v115;
            *(&v150 + 1) = v117;
            v22 = v149;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

          v24 = &selRef_persistentStoreForIdentifier_;
          swift_getObjectType();
          goto LABEL_73;
        case 5:
          [v22 encryptedValues];
          v71 = [v1 mostRecentTargetTemplateIdentifier];
          if (v71)
          {
            v72 = v145;
            v73 = v71;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v74 = 0;
          }

          else
          {
            v74 = 1;
            v72 = v145;
          }

          v118 = v147;
          (*v140)(v72, v74, 1, v147);
          v119 = v72;
          v120 = v144;
          sub_100031B58(v119, v144, &unk_100939D90, "8\n\r");
          if ((*v139)(v120, 1, v118))
          {
            sub_1000050A4(v120, &unk_100939D90, "8\n\r");
            v150 = 0u;
            v151 = 0u;
            v152 = 0;
          }

          else
          {
            v121 = v136;
            (*v133)(v136, v120, v118);
            sub_1000050A4(v120, &unk_100939D90, "8\n\r");
            v122 = v118;
            v123 = UUID.uuidString.getter();
            v125 = v124;
            (*v132)(v121, v122);
            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v123;
            *(&v150 + 1) = v125;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_82;
        case 6:
          v78 = [v22 encryptedValues];
          v79 = [v1 name];
          if (v79)
          {
            v80 = v79;
            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            v24 = &selRef_persistentStoreForIdentifier_;
            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v81;
            *(&v150 + 1) = v83;
            v22 = v149;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

LABEL_72:
          swift_getObjectType();
LABEL_73:
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_5;
        case 7:
          if ([v1 isOwnedByCurrentUser])
          {
            v69 = [v1 parentAccount];
            v70 = v69;
            if (v69)
            {
            }

            *(&v151 + 1) = &type metadata for Bool;
            v152 = &protocol witness table for Bool;
            LOBYTE(v150) = v70 != 0;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_4:
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_5;
          }

          if (qword_100935BD8 != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for Logger();
          sub_100006654(v94, qword_10093C940);
          v95 = v1;
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v96, v97))
          {
            goto LABEL_48;
          }

          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v150 = v99;
          *v98 = v134;
          v100 = [v95 remObjectID];
          if (!v100)
          {
            goto LABEL_76;
          }

          v101 = v100;
          v102 = [v100 description];

          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          goto LABEL_77;
        case 8:
          if ([v1 isOwnedByCurrentUser])
          {
            v84 = [v1 parentList];
            if (!v84)
            {
LABEL_56:
              CKRecord.subscript.setter();
              goto LABEL_5;
            }

            v85 = v84;
            v86 = [v84 v24[78]];
            if (v86)
            {
              v87 = v86;
              v88 = [v22 v24[78]];
              v89 = [v88 zoneID];

              v90 = [v87 zoneID];
              v91 = [v89 isEqual:v90];

              if (v91)
              {
                v92 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v87];

                if (v92)
                {
                  v93 = v92;
                }
              }

              else
              {

                v92 = 0;
              }
            }

            else
            {
              v92 = 0;
            }

            CKRecord.subscript.setter();
          }

          else
          {
            if (qword_100935BD8 != -1)
            {
              swift_once();
            }

            v106 = type metadata accessor for Logger();
            sub_100006654(v106, qword_10093C940);
            v107 = v1;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.fault.getter();

            if (!os_log_type_enabled(v96, v97))
            {
LABEL_48:

              v7 = v146;
              goto LABEL_5;
            }

            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *&v150 = v99;
            *v98 = v134;
            v108 = [v107 remObjectID];
            if (v108)
            {
              v109 = v108;
              v110 = [v108 description];

              v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v105 = v111;
            }

            else
            {
LABEL_76:
              v105 = 0xE300000000000000;
              v103 = 7104878;
            }

LABEL_77:
            v130 = sub_10000668C(v103, v105, &v150);

            *(v98 + 4) = v130;
            _os_log_impl(&_mh_execute_header, v96, v97, "REMCDSmartList is not expected to be shared, we shouldn't upload it for non-owner (smartListID: %{public}s)", v98, 0xCu);
            sub_10000607C(v99);

            v7 = v146;
            v22 = v149;
          }

LABEL_82:
          v24 = &selRef_persistentStoreForIdentifier_;
LABEL_5:
          if (v23 != 14)
          {
            continue;
          }

          goto LABEL_83;
        case 9:
          v50 = [v1 sectionIDsOrderingAsData];
          if (!v50)
          {
            goto LABEL_56;
          }

          v51 = v50;
          v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v55 = objc_opt_self();
          sub_100029344(v52, v54);
          v56 = Data._bridgeToObjectiveC()().super.isa;
          v57 = [v55 assetForData:v56];

          CKRecord.subscript.setter();
          sub_10001BBA0(v52, v54);
          v58 = v52;
          v24 = &selRef_persistentStoreForIdentifier_;
          sub_10001BBA0(v58, v54);
          goto LABEL_5;
        case 10:
          v25 = [v1 showingLargeAttachments];
          *(&v151 + 1) = &type metadata for Bool;
          v152 = &protocol witness table for Bool;
          LOBYTE(v150) = v25;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        case 11:
          v32 = [v1 smartListType];
          if (v32)
          {
            v33 = v32;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v34;
            *(&v150 + 1) = v36;
            v24 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

          goto LABEL_60;
        case 12:
          v45 = [v1 sortingStyle];
          if (v45)
          {
            v46 = v45;
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v47;
            *(&v150 + 1) = v49;
            v24 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

          goto LABEL_60;
        case 13:
          v75 = [v1 pinnedDate];
          if (v75)
          {
            v76 = v75;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v77 = 0;
          }

          else
          {
            v77 = 1;
          }

          v126 = type metadata accessor for Date();
          v127 = *(v126 - 8);
          v128 = v148;
          (*(v127 + 56))(v148, v77, 1, v126);
          sub_100031B58(v128, v7, &unk_100938850, qword_100795AE0);
          if ((*(v127 + 48))(v7, 1, v126) == 1)
          {
            sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
            v150 = 0u;
            v151 = 0u;
            v152 = 0;
          }

          else
          {
            *(&v151 + 1) = v126;
            v152 = &protocol witness table for Date;
            v129 = sub_1000103CC(&v150);
            (*(v127 + 32))(v129, v7, v126);
          }

          v24 = &selRef_persistentStoreForIdentifier_;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        default:
          v27 = [v1 badgeEmblem];
          if (v27)
          {
            v28 = v27;
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            *(&v151 + 1) = &type metadata for String;
            v152 = &protocol witness table for String;
            *&v150 = v29;
            *(&v150 + 1) = v31;
            v24 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v152 = 0;
            v150 = 0u;
            v151 = 0u;
          }

LABEL_60:
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
      }
    }
  }

LABEL_83:
  v131 = v22;
  result.value.super.isa = v131;
  result.is_nil = v20;
  return result;
}