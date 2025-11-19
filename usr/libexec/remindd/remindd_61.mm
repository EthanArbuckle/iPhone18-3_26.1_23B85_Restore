uint64_t static REMCDListSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDListSection();
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

id static REMCDListSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009365E8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10094D730);
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

Swift::String __swiftcall REMCDListSection.recordType()()
{
  v0 = 0x746365537473694CLL;
  v1 = 0xEB000000006E6F69;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDListSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for REMCDListSection();
  objc_msgSendSuper2(&v15, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v2 ckIdentifierFromRecordName:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v7];

  v8 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v9 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v14 = 0;
  v10 = v2;
  v11 = from.super.isa;
  sub_1004E96DC(v11, v8, v9, v10, v10, v11, &v14);

  if (v14 == 1)
  {
    v12 = [v10 list];
    if (v12)
    {
      v13 = v12;
      if (([v12 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100358264();
      }
    }
  }
}

void sub_10059FC28(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v62 = a4;
  v64 = a2;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v6);
  v60 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v29 = *(*(v28 - 8) + 64);
  *&v30 = __chkstk_darwin(v28 - 8).n128_u64[0];
  v32 = &v60 - v31;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v36 = [a3 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      if (v66)
      {
        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      [v64 setCanonicalName:v37];
LABEL_20:

      return;
    }

    v40 = [v64 list];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 identifier];

      if (v42)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = *(v63 + 56);
        v43(v24, 0, 1, v6);
      }

      else
      {
        v43 = *(v63 + 56);
        v43(v24, 1, 1, v6);
      }

      sub_100031B58(v24, v27, &unk_100939D90, "8\n\r");
    }

    else
    {
      v43 = *(v63 + 56);
      v43(v27, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (!v44)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = v64;
    v46 = sub_1004D6EF0(v44, v64);

    [v45 setList:v46];
    v47 = [v45 list];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 identifier];

      if (v49)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v63;
      v43(v18, v50, 1, v6);
      sub_100031B58(v18, v21, &unk_100939D90, "8\n\r");
    }

    else
    {
      v51 = v63;
      v43(v21, 1, 1, v6);
    }

    v52 = *(v9 + 48);
    sub_10018E470(v21, v12);
    sub_10018E470(v27, &v12[v52]);
    v53 = *(v51 + 48);
    if (v53(v12, 1, v6) == 1)
    {
      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      if (v53(&v12[v52], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = 0;
LABEL_40:
        *v62 = v54 & 1;
        return;
      }
    }

    else
    {
      v55 = v61;
      sub_10018E470(v12, v61);
      if (v53(&v12[v52], 1, v6) != 1)
      {
        v56 = &v12[v52];
        v57 = v60;
        (*(v51 + 32))(v60, v56, v6);
        sub_10018E4E0();
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v51 + 8);
        v59(v57, v6);
        sub_1000050A4(v21, &unk_100939D90, "8\n\r");
        sub_1000050A4(v27, &unk_100939D90, "8\n\r");
        v59(v55, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = v58 ^ 1;
        goto LABEL_40;
      }

      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      (*(v51 + 8))(v55, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v54 = 1;
    goto LABEL_40;
  }

  if (*a1)
  {
    v38 = [a3 encryptedValues];
    v39 = String._bridgeToObjectiveC()();
    v37 = [v38 objectForKeyedSubscript:v39];
    swift_unknownObjectRelease();

    if (v37)
    {
      v65 = v37;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if (swift_dynamicCast())
      {
        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }
    }

    [v64 setDisplayName:v37];
    goto LABEL_20;
  }

  sub_10018E134();
  v33 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v34 = *(v33 - 8);
  isa = 0;
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v34 + 8))(v32, v33);
  }

  [v64 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDListSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for REMCDListSection();
  v47.receiver = v0;
  v47.super_class = v9;
  v11 = objc_msgSendSuper2(&v47, "newlyCreatedRecord");
  if (v11)
  {
    v12 = 0;
    v13 = &selRef_persistentStoreForIdentifier_;
    do
    {
      if (*(&off_1008E3E98 + v12 + 32) > 1u)
      {
        if (*(&off_1008E3E98 + v12 + 32) != 2)
        {
          if (([v1 markedForDeletion] & 1) != 0 || (v29 = objc_msgSend(v1, "list")) == 0)
          {
            v38 = 0;
          }

          else
          {
            v30 = v13[78];
            v31 = v13;
            v32 = v29;
            v33 = [v29 v30];

            if (v33)
            {
              v34 = [v11 v31[78]];
              v35 = [v34 zoneID];

              v36 = [v33 zoneID];
              v37 = [v35 isEqual:v36];

              if (v37)
              {
                v38 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v33];

                if (v38)
                {
                  v39 = v38;
                }

                v13 = &selRef_persistentStoreForIdentifier_;
              }

              else
              {

                v38 = 0;
                v13 = &selRef_persistentStoreForIdentifier_;
              }
            }

            else
            {
              v38 = 0;
              v13 = v31;
            }
          }

          CKRecord.subscript.setter();

          goto LABEL_6;
        }

        v23 = [v11 encryptedValues];
        v24 = [v1 canonicalName];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v13 = &selRef_persistentStoreForIdentifier_;
          *(&v45 + 1) = &type metadata for String;
          v46 = &protocol witness table for String;
          *&v44 = v26;
          *(&v44 + 1) = v28;
        }

        else
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
        }
      }

      else
      {
        if (!*(&off_1008E3E98 + v12 + 32))
        {
          v20 = [v1 creationDate];
          if (v20)
          {
            v21 = v20;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          v40 = type metadata accessor for Date();
          v41 = *(v40 - 8);
          (*(v41 + 56))(v5, v22, 1, v40);
          sub_100031B58(v5, v8, &unk_100938850, qword_100795AE0);
          if ((*(v41 + 48))(v8, 1, v40) == 1)
          {
            sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
            v44 = 0u;
            v45 = 0u;
            v46 = 0;
          }

          else
          {
            *(&v45 + 1) = v40;
            v46 = &protocol witness table for Date;
            v42 = sub_1000103CC(&v44);
            (*(v41 + 32))(v42, v8, v40);
          }

          v13 = &selRef_persistentStoreForIdentifier_;
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.setter();
          goto LABEL_6;
        }

        v14 = [v11 encryptedValues];
        v15 = [v1 displayName];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          *(&v45 + 1) = &type metadata for String;
          v46 = &protocol witness table for String;
          *&v44 = v17;
          *(&v44 + 1) = v19;
          v13 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
        }
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
LABEL_6:
      ++v12;
    }

    while (v12 != 4);
  }

  v43 = v11;
  result.value.super.isa = v43;
  result.is_nil = v10;
  return result;
}

Swift::Void __swiftcall REMCDListSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
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

Swift::Void __swiftcall REMCDListSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10094D730);
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
  v16 = [v4 list];
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
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in list {listSectionID: %{public}s, listID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 list];
  if (!v24)
  {
    return;
  }

  v46 = v24;
  if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v25 = v4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {
LABEL_28:

      [v25 markForDeletion];
      goto LABEL_29;
    }

    v28 = 7104878;
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v29 = 136446466;
    v30 = [v25 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v28 = 7104878;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_10000668C(v33, v35, &v47);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    v37 = [v25 list];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 remObjectID];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 description];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

LABEL_27:
        v44 = sub_10000668C(v28, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v26, v27, "List is marked for deletion but section in list is not {listSectionID: %{public}s, listID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v43 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v46 forcePushToCloud];
}

unint64_t sub_1005A1388(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3D90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd16REMCDListSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd16REMCDListSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_1009365E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094D730);
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
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

unint64_t sub_1005A16D4(uint64_t a1)
{
  result = sub_1005A16FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005A16FC()
{
  result = qword_10094D750;
  if (!qword_10094D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D750);
  }

  return result;
}

unint64_t sub_1005A1750(uint64_t a1)
{
  result = sub_1005A1778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005A1778()
{
  result = qword_10094D758;
  if (!qword_10094D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D758);
  }

  return result;
}

unint64_t sub_1005A17D0()
{
  result = qword_10094D760;
  if (!qword_10094D760)
  {
    sub_1000F514C(&qword_10094D768, &qword_1007B2F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D760);
  }

  return result;
}

unint64_t sub_1005A1838()
{
  result = qword_10094D770;
  if (!qword_10094D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D770);
  }

  return result;
}

void sub_1005A188C(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int (**a3)(void, uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v33 = a2;
  v30 = a4;
  v6 = type metadata accessor for REMRemindersListDataView.Diff();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = v35;
  sub_1005A2B88(a1, a3);
  if (!v20)
  {
    v28 = v9;
    v29 = v12;
    v35 = v13;
    sub_1005A3E80(a1);
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v21 = [v32 fetchResultTokenToDiffAgainst];
    v22 = v29;
    sub_100534D44(v21, v29);
    v33 = 0;

    v23 = v34;
    v24 = *(v34 + 16);
    v32 = v19;
    v25 = v35;
    v24(v16, v19, v35);
    v26 = v31;
    (*(v31 + 16))(v28, v22, v6);
    sub_1005A4664(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel);
    sub_1005A4664(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v26 + 8))(v22, v6);
    (*(v23 + 8))(v32, v25);
  }
}

uint64_t sub_1005A1BF0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_10094D780 = v0;
  return result;
}

uint64_t sub_1005A1C54@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v4 = v3;
  v8 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v57 = &v46 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  *&v20 = __chkstk_darwin(v17).n128_u64[0];
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v23 = [v51 identifier];
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(a2 + 16) || (v25 = sub_100363F20(v22), (v26 & 1) == 0))
  {
    (*(v18 + 8))(v22, v17);
LABEL_23:
    v35 = 1;
    goto LABEL_24;
  }

  v27 = *(*(a2 + 56) + 8 * v25);
  if (v27 >> 62)
  {
    goto LABEL_33;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v47 = v18;
  v48 = v17;
  v49 = a3;
  v50 = v4;

  if (v28)
  {
    v18 = 0;
    v58 = v27 & 0xFFFFFFFFFFFFFF8;
    v59 = v27 & 0xC000000000000001;
    a3 = (v56 + 48);
    v4 = (v56 + 32);
    v60 = _swiftEmptyArrayStorage;
    v53 = v27;
    v54 = v22;
    v52 = v28;
    while (1)
    {
      if (v59)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v18 >= *(v58 + 16))
        {
          goto LABEL_32;
        }

        v29 = *(v27 + 8 * v18 + 32);
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_6;
        }
      }

      sub_1005384A4(v29, 0, 0, v11);
      if ((*a3)(v11, 1, v12))
      {
        sub_1000050A4(v11, &qword_100940628, &unk_1007A6A20);
      }

      else
      {
        v30 = *v4;
        v31 = v55;
        (*v4)(v55, v11, v12);
        v30(v57, v31, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_100365A24(0, *(v60 + 2) + 1, 1, v60);
        }

        v33 = *(v60 + 2);
        v32 = *(v60 + 3);
        if (v33 >= v32 >> 1)
        {
          v60 = sub_100365A24(v32 > 1, v33 + 1, 1, v60);
        }

        v34 = v60;
        *(v60 + 2) = v33 + 1;
        v30(&v34[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33], v57, v12);
        v27 = v53;
        v22 = v54;
        v28 = v52;
      }

      ++v18;
      if (v17 == v28)
      {
        goto LABEL_26;
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_26:

  v38 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = [v38 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v41 = v51;
  v42 = [v51 displayName];
  if (v42)
  {
    v43 = v42;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a3 = v49;
  v44 = [v41 color];
  if (v44)
  {
    v45 = v44;
    REMColor.codable.getter();
  }

  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v47 + 8))(v22, v48);
  v35 = 0;
LABEL_24:
  v36 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v36 - 8) + 56))(a3, v35, 1, v36);
}

uint64_t sub_1005A21DC(uint64_t a1)
{
  result = sub_1005A4664(&qword_10094D7A8, &type metadata accessor for REMRemindersListDataView.SearchInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_1005A2234(unint64_t a1)
{
  v36 = type metadata accessor for UUID();
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_26:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v6 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v31 = (v33 + 8);
  v32 = v33 + 32;
  v7 = _swiftEmptyDictionarySingleton;
  v30 = xmmword_1007953F0;
  while (1)
  {
    if (v35)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_23;
      }

      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = [v9 list];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v14 = [v12 identifier];

    if (!v14)
    {
      goto LABEL_30;
    }

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_100363F20(v4);
    v17 = v7[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v7[3] < v19)
    {
      sub_10036AF20(v19, 1);
      v7 = v37;
      v21 = sub_100363F20(v4);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_31;
      }

      v16 = v21;
    }

    if (v20)
    {
      (*v31)(v4, v36);
      v8 = (v7[7] + 8 * v16);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v23 = swift_allocObject();
      *(v23 + 16) = v30;
      *(v23 + 32) = v10;
      v7[(v16 >> 6) + 8] |= 1 << v16;
      (*(v33 + 32))(v7[6] + *(v33 + 72) * v16, v4, v36);
      *(v7[7] + 8 * v16) = v23;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v7[2] = v26;
    }

    ++v6;
    if (v11 == v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A259C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa_1();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v39 = v13;
    v40 = v11;
    v41 = v2;
    *&v46 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = objc_opt_self();
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v44 = v18;
    v45 = v16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v43 = *(v17 + 56);
    do
    {
      v44(v8, v19, v4);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v21 = [v45 objectIDWithUUID:isa];

      (*(v17 - 8))(v8, v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = *(v46 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v19 += v43;
      --v14;
    }

    while (v14);
    v15 = v46;
    v13 = v39;
  }

  *v13 = v15;
  swift_storeEnumTagMultiPayload();
  v23 = sub_10001F6F4();
  sub_1005A4604(v13, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v24 = [objc_allocWithZone(NSFetchRequest) init];
  v25 = [swift_getObjCClassFromMetadata() entity];
  [v24 setEntity:v25];

  [v24 setAffectedStores:0];
  [v24 setPredicate:v23];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v26 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v24 setSortDescriptors:v27];

  v48 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 3, 0);
  v28 = v48;
  v47 = &type metadata for String;
  *&v46 = 0x696669746E656469;
  *(&v46 + 1) = 0xEA00000000007265;
  v30 = v48[2];
  v29 = v48[3];
  if (v30 >= v29 >> 1)
  {
    sub_100010D04((v29 > 1), v30 + 1, 1);
    v28 = v48;
  }

  v28[2] = v30 + 1;
  sub_100005EE0(&v46, &v28[4 * v30 + 4]);
  v47 = &type metadata for String;
  *&v46 = 1701667182;
  *(&v46 + 1) = 0xE400000000000000;
  v48 = v28;
  v32 = v28[2];
  v31 = v28[3];
  if (v32 >= v31 >> 1)
  {
    sub_100010D04((v31 > 1), v32 + 1, 1);
    v28 = v48;
  }

  v28[2] = v32 + 1;
  sub_100005EE0(&v46, &v28[4 * v32 + 4]);
  v47 = &type metadata for String;
  *&v46 = 0x726F6C6F63;
  *(&v46 + 1) = 0xE500000000000000;
  v48 = v28;
  v34 = v28[2];
  v33 = v28[3];
  if (v34 >= v33 >> 1)
  {
    sub_100010D04((v33 > 1), v34 + 1, 1);
    v28 = v48;
  }

  v28[2] = v34 + 1;
  sub_100005EE0(&v46, &v28[4 * v34 + 4]);
  v35 = Array._bridgeToObjectiveC()().super.isa;

  [v24 setPropertiesToFetch:v35];

  v36 = NSManagedObjectContext.fetch<A>(_:)();
  return v36;
}

uint64_t sub_1005A2B88(uint64_t a1, unsigned int (**a2)(void, uint64_t, uint64_t))
{
  v158 = a1;
  v3 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v163 = (&v146 - v5);
  v167 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v159 = *(v167 - 8);
  v6 = *(v159 + 64);
  __chkstk_darwin(v167);
  v162 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v157 = &v146 - v9;
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v146 - v15;
  __chkstk_darwin(v16);
  v172 = (&v146 - v17);
  v18 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v165 = *(v18 - 8);
  v166 = v18;
  v19 = *(v165 + 64);
  __chkstk_darwin(v18);
  v156 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v155 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = _s9UtilitiesO12SortingStyleOMa();
  v24 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v153 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v146 - v27;
  v152 = _s10PredicatesOMa(0);
  v29 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v161 = (&v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = a2;
  v31 = REMRemindersListDataView.SearchInvocation.Parameters.objectIDs.getter();
  v32 = v31;
  v160 = v28;
  v164 = v13;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = _swiftEmptySetSingleton;
    v175[0] = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v34 = __CocoaSet.Iterator.next()();
    if (v34)
    {
      v35 = v34;
      type metadata accessor for REMObjectID_Codable();
      v36 = v35;
      v28 = -1;
      do
      {
        v173 = v36;
        swift_dynamicCast();
        v43 = [v174 entityName];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = [objc_opt_self() cdEntityName];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        if (v44 == v48 && v46 == v50)
        {
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v52 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        v53 = v174;
        v54 = v33[2];
        if (v33[3] <= v54)
        {
          sub_1003800CC(v54 + 1);
        }

        v33 = v175[0];
        v37 = NSObject._rawHashValue(seed:)(*(v175[0] + 5));
        v38 = v33 + 7;
        v39 = -1 << *(v33 + 32);
        v40 = v37 & ~v39;
        v41 = v40 >> 6;
        if (((-1 << v40) & ~v33[(v40 >> 6) + 7]) != 0)
        {
          v42 = __clz(__rbit64((-1 << v40) & ~v33[(v40 >> 6) + 7])) | v40 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_6;
        }

        v55 = 0;
        v56 = (63 - v39) >> 6;
        do
        {
          if (++v41 == v56 && (v55 & 1) != 0)
          {
            __break(1u);
            goto LABEL_80;
          }

          v57 = v41 == v56;
          if (v41 == v56)
          {
            v41 = 0;
          }

          v55 |= v57;
          v58 = v38[v41];
        }

        while (v58 == -1);
        v42 = __clz(__rbit64(~v58)) + (v41 << 6);
LABEL_6:
        *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        *(v33[6] + 8 * v42) = v53;
        ++v33[2];
LABEL_7:
        v36 = __CocoaSet.Iterator.next()();
      }

      while (v36);
    }

    goto LABEL_48;
  }

  v59 = *(v31 + 32);
  v60 = ((1 << v59) + 63) >> 6;
  if ((v59 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_117;
    }
  }

  v147 = v60;
  v146 = &v146;
  __chkstk_darwin(v31);
  v148 = &v146 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v148, v61);
  v149 = 0;
  v62 = 0;
  v63 = v32 + 56;
  v64 = 1 << v32[32];
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v32 + 7);
  v28 = (v64 + 63) >> 6;
  v151 = v32;
  while (v66)
  {
    v67 = __clz(__rbit64(v66));
    v171 = (v66 - 1) & v66;
LABEL_37:
    v70 = v67 | (v62 << 6);
    v71 = *(v32 + 6);
    v150 = v70;
    v72 = *(v71 + 8 * v70);
    v73 = [v72 entityName];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = [objc_opt_self() cdEntityName];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    if (v74 == v78 && v76 == v80)
    {

      v32 = v151;
      v66 = v171;
LABEL_44:
      *&v148[(v150 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v150;
      if (__OFADD__(v149++, 1))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v151;
      v66 = v171;
      if (v82)
      {
        goto LABEL_44;
      }
    }
  }

  v68 = v62;
  while (1)
  {
    v62 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v62 >= v28)
    {
      break;
    }

    v69 = *&v63[8 * v62];
    ++v68;
    if (v69)
    {
      v67 = __clz(__rbit64(v69));
      v171 = (v69 - 1) & v69;
      goto LABEL_37;
    }
  }

LABEL_47:
  v33 = sub_1001A0DF0(v148, v147, v149, v32);
LABEL_48:
  v28 = v160;
  while (2)
  {
    v84 = sub_1000436E4(v33);

    if (v84 < 0 || (v84 & 0x4000000000000000) != 0)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v85 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v85 = v84;
    }

    v86 = v161;

    v87 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
    *v86 = v85;
    REMRemindersListDataView.SearchInvocation.Parameters.showCompleted.getter();
    swift_storeEnumTagMultiPayload();
    v161 = sub_100043AA8();
    sub_1005A4604(v86, _s10PredicatesOMa);
    if (qword_1009363F8 != -1)
    {
LABEL_83:
      swift_once();
    }

    v88 = qword_100974F68;
    if (qword_1009365F0 != -1)
    {
      swift_once();
    }

    v89 = qword_10094D780;
    if (qword_10094D780 >> 62)
    {

      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      v121 = _bridgeCocoaArray<A>(_:)();

      v90 = v121;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v90 = v89;
    }

    v91 = sub_100050654(v88, v90, 0, v161);

    v92 = v155;
    REMRemindersListDataView.SearchInvocation.Parameters.sortingStyle.getter();
    v93 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v94 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    v95 = v153;
    (*(*(v94 - 8) + 104))(v153, v93, v94);
    swift_storeEnumTagMultiPayload();
    sub_1005368D8(v92, v95, v28);
    v96 = v156;
    REMRemindersListDataView.SearchInvocation.Parameters.showCompleted.getter();
    sub_10053CE0C(v28, v96, 0);
    (*(v165 + 8))(v96, v166);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v91 setSortDescriptors:isa];

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v98 = v169;
    v99 = NSManagedObjectContext.fetch<A>(_:)();
    v171 = v98;
    if (v98)
    {
      sub_1005A4604(v28, _s9UtilitiesO12SortingStyleOMa);

      goto LABEL_96;
    }

    v100 = v99;
    v156 = v91;
    v175[0] = _swiftEmptyArrayStorage;
    if (v99 >> 62)
    {
      v101 = _CocoaArrayWrapper.endIndex.getter();
      if (!v101)
      {
        goto LABEL_89;
      }

LABEL_61:
      v28 = 0;
      v169 = v100 & 0xFFFFFFFFFFFFFF8;
      v170 = (v100 & 0xC000000000000001);
      v165 = v101;
      v166 = v100;
      while (1)
      {
        if (v170)
        {
          v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *(v169 + 16))
          {
            goto LABEL_82;
          }

          v104 = *(v100 + 8 * v28 + 32);
        }

        v105 = v104;
        v106 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_81;
        }

        v107 = [v104 identifier];
        if (v107)
        {
          v108 = v172;
          v109 = v107;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v110 = type metadata accessor for UUID();
          v111 = *(v110 - 8);
          v112 = *(v111 + 56);
          v112(v108, 0, 1, v110);
          sub_1000050A4(v108, &unk_100939D90, "8\n\r");
          v113 = [v105 list];
          if (v113)
          {
            v114 = v113;
            v115 = [v113 identifier];

            if (v115)
            {
              v116 = v164;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v117 = 0;
            }

            else
            {
              v117 = 1;
              v116 = v164;
            }

            v112(v116, v117, 1, v110);
            v118 = v168;
            sub_100100FB4(v116, v168);
            if ((*(v111 + 48))(v118, 1, v110) != 1)
            {
              sub_1000050A4(v118, &unk_100939D90, "8\n\r");
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v119 = *(v175[0] + 2);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v101 = v165;
              v100 = v166;
              goto LABEL_63;
            }
          }

          else
          {

            v118 = v168;
            v112(v168, 1, 1, v110);
          }

          v101 = v165;
          sub_1000050A4(v118, &unk_100939D90, "8\n\r");
          v100 = v166;
        }

        else
        {

          v102 = type metadata accessor for UUID();
          v103 = v172;
          (*(*(v102 - 8) + 56))(v172, 1, 1, v102);
          sub_1000050A4(v103, &unk_100939D90, "8\n\r");
        }

LABEL_63:
        ++v28;
        if (v106 == v101)
        {
          v120 = v175[0];
          v28 = v160;
          goto LABEL_90;
        }
      }
    }

    v101 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_61;
    }

LABEL_89:
    v120 = _swiftEmptyArrayStorage;
LABEL_90:

    v122 = v171;
    v123 = sub_1005A2234(v120);

    v172 = v123;
    v124 = v123[2];
    if (!v124)
    {
      v96 = _swiftEmptyArrayStorage;
LABEL_94:
      v127 = v156;
      v128 = sub_1005A259C(v96, v158);
      v171 = v122;
      if (v122)
      {
        sub_1005A4604(v28, _s9UtilitiesO12SortingStyleOMa);

LABEL_96:

        return v96;
      }

      v130 = v128;

      if (v130 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
        if (!v32)
        {
LABEL_120:
          v96 = _swiftEmptyArrayStorage;
LABEL_121:

          sub_1005A4604(v160, _s9UtilitiesO12SortingStyleOMa);
          return v96;
        }
      }

      else
      {
        v32 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_120;
        }
      }

      v28 = 0;
      v131 = v130 & 0xC000000000000001;
      v60 = v130 & 0xFFFFFFFFFFFFFF8;
      v169 = v159 + 32;
      v170 = (v159 + 48);
      v96 = _swiftEmptyArrayStorage;
      v168 = v32;
      v165 = v130 & 0xC000000000000001;
      v166 = v130 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v131)
        {
          v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *(v60 + 16))
          {
            goto LABEL_115;
          }

          v132 = *(v130 + 8 * v28 + 32);
        }

        v133 = v132;
        v134 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v175[0] = v132;
        v135 = v163;
        v136 = v171;
        sub_1005A1C54(v175, v172, v163);
        v171 = v136;

        v137 = v167;
        if ((*v170)(v135, 1, v167) == 1)
        {
          sub_1000050A4(v135, &qword_10094C3A8, &qword_1007B0E38);
        }

        else
        {
          v138 = v130;
          v139 = *v169;
          v140 = v157;
          (*v169)(v157, v135, v137);
          v139(v162, v140, v137);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_100365B14(0, *(v96 + 2) + 1, 1, v96);
          }

          v142 = *(v96 + 2);
          v141 = *(v96 + 3);
          v130 = v138;
          if (v142 >= v141 >> 1)
          {
            v96 = sub_100365B14(v141 > 1, v142 + 1, 1, v96);
          }

          v131 = v165;
          *(v96 + 2) = v142 + 1;
          v139(&v96[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v142], v162, v167);
          v32 = v168;
          v60 = v166;
        }

        ++v28;
        if (v134 == v32)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v96 = sub_100368A1C(v123[2], 0);
    v125 = *(type metadata accessor for UUID() - 8);
    v60 = v172;
    sub_100279334(v175, &v96[(*(v125 + 80) + 32) & ~*(v125 + 80)], v124, v172);
    v28 = v126;
    v32 = v175[1];

    sub_10001B860();
    if (v28 == v124)
    {
      v28 = v160;
      goto LABEL_94;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    v143 = swift_slowAlloc();
    v144 = v169;
    v145 = sub_10026EC00(v143, v60, v32, sub_100226BF8, 0);
    v169 = v144;
    if (!v144)
    {
      v33 = v145;

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_1005A3E80(uint64_t a1)
{
  v77 = _s10PredicatesOMa(0);
  v3 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = REMRemindersListDataView.SearchInvocation.Parameters.countCompleted.getter();
  if ((v5 & 1) == 0)
  {
    return;
  }

  v72 = v5;
  v6 = REMRemindersListDataView.SearchInvocation.Parameters.objectIDs.getter();
  v7 = v6;
  v75 = a1;
  v76 = v1;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = _swiftEmptySetSingleton;
    v82 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      type metadata accessor for REMObjectID_Codable();
      v11 = v10;
      while (1)
      {
        v80 = v11;
        swift_dynamicCast();
        v18 = [v81 entityName];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [objc_opt_self() cdEntityName];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_16;
        }

LABEL_8:
        v11 = __CocoaSet.Iterator.next()();
        if (!v11)
        {
          goto LABEL_27;
        }
      }

LABEL_16:
      v28 = v81;
      v29 = v8[2];
      if (v8[3] <= v29)
      {
        sub_1003800CC(v29 + 1);
      }

      v8 = v82;
      v12 = NSObject._rawHashValue(seed:)(v82[5]);
      v13 = v8 + 7;
      v14 = -1 << *(v8 + 32);
      v15 = v12 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~v8[(v15 >> 6) + 7]) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~v8[(v15 >> 6) + 7])) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = 0;
        v31 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v31 && (v30 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v32 = v16 == v31;
          if (v16 == v31)
          {
            v16 = 0;
          }

          v30 |= v32;
          v33 = v13[v16];
        }

        while (v33 == -1);
        v17 = __clz(__rbit64(~v33)) + (v16 << 6);
      }

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v8[6] + 8 * v17) = v28;
      ++v8[2];
      goto LABEL_8;
    }

LABEL_27:

LABEL_50:
    v60 = sub_1000436E4(v8);

    if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v61 = v60;
    goto LABEL_53;
  }

  v34 = *(v6 + 32);
  v35 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v66 = swift_slowAlloc();
      v67 = sub_10026EC00(v66, v35, v7, sub_100226BF8, 0);
      v76 = v1;
      if (v1)
      {

        __break(1u);
        return;
      }

      v8 = v67;

      goto LABEL_50;
    }
  }

  v68 = &v68;
  v69 = v35;
  __chkstk_darwin(v6);
  v70 = &v68 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v70, v36);
  v71 = 0;
  v37 = 0;
  v38 = v7 + 56;
  v39 = 1 << *(v7 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v7 + 56);
  v42 = (v39 + 63) >> 6;
  v74 = v7;
  while (v41)
  {
    v43 = __clz(__rbit64(v41));
    v79 = (v41 - 1) & v41;
LABEL_39:
    v46 = v43 | (v37 << 6);
    v47 = *(v7 + 48);
    v73 = v46;
    v48 = *(v47 + 8 * v46);
    v49 = [v48 entityName];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = [objc_opt_self() cdEntityName];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (v50 == v54 && v52 == v56)
    {

      v7 = v74;
      v41 = v79;
LABEL_46:
      *&v70[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
      if (__OFADD__(v71++, 1))
      {
        __break(1u);
LABEL_49:
        v8 = sub_1001A0DF0(v70, v69, v71, v7);
        goto LABEL_50;
      }
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7 = v74;
      v41 = v79;
      if (v58)
      {
        goto LABEL_46;
      }
    }
  }

  v44 = v37;
  while (1)
  {
    v37 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v37 >= v42)
    {
      goto LABEL_49;
    }

    v45 = *(v38 + 8 * v37);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v79 = (v45 - 1) & v45;
      goto LABEL_39;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v61 = _bridgeCocoaArray<A>(_:)();

LABEL_53:

  v62 = v78;
  *v78 = v61;
  swift_storeEnumTagMultiPayload();
  v63 = sub_100043AA8();
  sub_1005A4604(v62, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v64 = [objc_allocWithZone(NSFetchRequest) init];
  v65 = [swift_getObjCClassFromMetadata() entity];
  [v64 setEntity:v65];

  [v64 setAffectedStores:0];
  [v64 setPredicate:v63];
  NSManagedObjectContext.count<A>(for:)();
}

uint64_t sub_1005A4604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005A4664(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005A46AC(__int128 *a1)
{
  v2 = v1;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D7B0);

  sub_1005A9460(a1, v48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  sub_1005A9498(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = 0xD000000000000030;
    v9 = *(v2 + 16);
    v10 = "REMCDTemplateOperationQueueItem";
    v11 = "d.ICCloudConfigurationUpdater";
    v12 = 0xD000000000000034;
    v13 = "atchUpSyncController";
    v14 = 0xD000000000000031;
    if (v9 != 3)
    {
      v14 = 0xD00000000000001BLL;
      v13 = "ActivityScheduler";
    }

    if (v9 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (*(v2 + 16))
    {
      v8 = 0xD00000000000002DLL;
      v10 = "butesAutoTrainer";
    }

    if (*(v2 + 16) <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v12;
    }

    if (*(v2 + 16) <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_10000668C(v15, v16 | 0x8000000000000000, &v47);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2082;
    v18 = a1[2];
    v19 = a1[4];
    v48[3] = a1[3];
    v48[4] = v19;
    v20 = *a1;
    v48[1] = a1[1];
    v48[2] = v18;
    v48[0] = v20;
    sub_1005A9460(a1, aBlock);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000668C(v21, v22, &v47);

    *(v7 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDynamicXPCActivity UPDATE START {identifier: %{public}s, newCriteria: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  *&v48[0] = *(v2 + 120);
  __chkstk_darwin(v24);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v25 = *(v2 + 16);
    if (v25 <= 1u)
    {
      *(v2 + 16);
    }

    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v25;
    v42 = a1[3];
    *(v41 + 64) = a1[2];
    *(v41 + 80) = v42;
    *(v41 + 96) = a1[4];
    v43 = a1[1];
    *(v41 + 32) = *a1;
    *(v41 + 48) = v43;
    aBlock[4] = sub_1005A94CC;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000EBA84;
    aBlock[3] = &unk_1008F8A20;
    v44 = _Block_copy(aBlock);
    sub_1005A9460(a1, v48);

    v45 = String.utf8CString.getter();

    xpc_activity_register((v45 + 32), XPC_ACTIVITY_CHECK_IN, v44);

    _Block_release(v44);
  }

  else
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v48[0] = v29;
      *v28 = 136446210;
      v30 = 0xD000000000000030;
      v31 = *(v2 + 16);
      v32 = "REMCDTemplateOperationQueueItem";
      v33 = "d.ICCloudConfigurationUpdater";
      v34 = 0xD000000000000034;
      v35 = "atchUpSyncController";
      v36 = 0xD000000000000031;
      if (v31 != 3)
      {
        v36 = 0xD00000000000001BLL;
        v35 = "ActivityScheduler";
      }

      if (v31 != 2)
      {
        v34 = v36;
        v33 = v35;
      }

      if (*(v2 + 16))
      {
        v30 = 0xD00000000000002DLL;
        v32 = "butesAutoTrainer";
      }

      if (*(v2 + 16) <= 1u)
      {
        v37 = v30;
      }

      else
      {
        v37 = v34;
      }

      if (*(v2 + 16) <= 1u)
      {
        v38 = v32;
      }

      else
      {
        v38 = v33;
      }

      v39 = sub_10000668C(v37, v38 | 0x8000000000000000, v48);

      *(v28 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "RDDynamicXPCActivity UPDATE END pendingCriteria == newCriteria {identifier: %{public}s}", v28, 0xCu);
      sub_10000607C(v29);
    }
  }
}

uint64_t sub_1005A4C98()
{
  v1 = v0;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D7B0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = 0xD000000000000030;
    v8 = *(v1 + 16);
    v9 = "REMCDTemplateOperationQueueItem";
    v10 = "d.ICCloudConfigurationUpdater";
    v11 = 0xD000000000000034;
    v12 = "atchUpSyncController";
    v13 = 0xD000000000000031;
    if (v8 != 3)
    {
      v13 = 0xD00000000000001BLL;
      v12 = "ActivityScheduler";
    }

    if (v8 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (*(v1 + 16))
    {
      v7 = 0xD00000000000002DLL;
      v9 = "butesAutoTrainer";
    }

    if (*(v1 + 16) <= 1u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v11;
    }

    if (*(v1 + 16) <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_10000668C(v14, v15 | 0x8000000000000000, &v19);

    *(v5 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDDynamicXPCActivity UNREGISTER {identifier: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {
  }

  v19 = *(v1 + 120);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  *(v1 + 16);
  *(v1 + 16);
  v17 = String.utf8CString.getter();

  xpc_activity_unregister((v17 + 32));
}

void sub_1005A4F78(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for RDPermanentlyHiddenReminder();
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v14 = 0;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = a2 + 56;
  v36 = v11;
  v37 = a1;
  v34 = a1 + 56;
  v35 = v13;
  v33 = v19;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    v21 = __clz(__rbit64(v18));
    v38 = (v18 - 1) & v18;
LABEL_13:
    v24 = *(v11 + 72);
    sub_1001A3A2C(*(a1 + 48) + v24 * (v21 | (v14 << 6)), v13);
    sub_1001A3A90(v13, v9);
    v25 = *(a2 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1005A9F00(&qword_10093B410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v26 = *(v39 + 20);
    type metadata accessor for Date();
    sub_1005A9F00(&unk_1009431A0, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v27 = Hasher._finalize()();
    v28 = -1 << *(a2 + 32);
    v29 = v27 & ~v28;
    if (((*(v20 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_22:
      sub_1001A3AF4(v9);
      return;
    }

    v30 = ~v28;
    while (1)
    {
      sub_1001A3A2C(*(a2 + 48) + v29 * v24, v6);
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      sub_1001A3AF4(v6);
LABEL_16:
      v29 = (v29 + 1) & v30;
      if (((*(v20 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v31 = *(v39 + 20);
    v32 = static Date.== infix(_:_:)();
    sub_1001A3AF4(v6);
    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1001A3AF4(v9);
    v11 = v36;
    a1 = v37;
    v15 = v34;
    v13 = v35;
    v19 = v33;
    v18 = v38;
  }

  while (v38);
LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return;
    }

    v23 = *(v15 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v38 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_1005A52DC(Swift::Int result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A544C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A5604()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D7B0);
  v1 = sub_100006654(v0, qword_10094D7B0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1005A56D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005A57AC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1005A586C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005A593C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA4B8(*a1);
  *a2 = result;
  return result;
}

void sub_1005A596C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "d.ICCloudConfigurationUpdater";
  v4 = 0xD000000000000034;
  v5 = "atchUpSyncController";
  v6 = 0xD000000000000031;
  if (v2 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v5 = "ActivityScheduler";
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD00000000000002DLL;
  if (*v1)
  {
    v8 = "butesAutoTrainer";
  }

  else
  {
    v7 = 0xD000000000000030;
    v8 = "REMCDTemplateOperationQueueItem";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_1005A5A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a1;
  v18[5] = a2;
  aBlock[4] = sub_1005A9EF4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F8BD8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1005A9F00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

void sub_1005A5D84(Swift::Int a1)
{
  if (qword_100936608 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_10094D7D8;

  v3 = sub_100241458(a1, v2);

  if (v3)
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_10094D7B0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      v9 = 0xD000000000000030;
      v10 = "REMCDTemplateOperationQueueItem";
      *v7 = 136446210;
      v11 = "d.ICCloudConfigurationUpdater";
      v12 = 0xD000000000000034;
      v13 = "atchUpSyncController";
      v14 = 0xD000000000000031;
      if (a1 != 3)
      {
        v14 = 0xD00000000000001BLL;
        v13 = "ActivityScheduler";
      }

      if (a1 != 2)
      {
        v12 = v14;
        v11 = v13;
      }

      if (a1)
      {
        v9 = 0xD00000000000002DLL;
        v10 = "butesAutoTrainer";
      }

      if (a1 <= 1u)
      {
        v15 = v9;
      }

      else
      {
        v15 = v12;
      }

      if (a1 <= 1u)
      {
        v16 = v10;
      }

      else
      {
        v16 = v11;
      }

      v17 = sub_10000668C(v15, v16 | 0x8000000000000000, &v18);

      *(v7 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDDynamicXPCActivity registered more than once {identifier: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }
  }

  else
  {
    swift_beginAccess();
    sub_10037ED5C(&v19, a1);
    swift_endAccess();
  }
}

void sub_1005A5FF0(_xpc_activity_s *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = type metadata accessor for REM_os_activity.Options();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    state = xpc_activity_get_state(a1);
    if (state == 3)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_100006654(v66, qword_10094D7B0);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock[0] = v70;
        v71 = 0xD000000000000030;
        v72 = "REMCDTemplateOperationQueueItem";
        *v69 = 136446210;
        v73 = "d.ICCloudConfigurationUpdater";
        v74 = 0xD000000000000034;
        v75 = "atchUpSyncController";
        v76 = 0xD000000000000031;
        if (a3 != 3)
        {
          v76 = 0xD00000000000001BLL;
          v75 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v74 = v76;
          v73 = v75;
        }

        if (a3)
        {
          v71 = 0xD00000000000002DLL;
          v72 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v77 = v71;
        }

        else
        {
          v77 = v74;
        }

        if (a3 <= 1u)
        {
          v78 = v72;
        }

        else
        {
          v78 = v73;
        }

        v79 = sub_10000668C(v77, v78 | 0x8000000000000000, aBlock);

        *(v69 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v67, v68, "RDDynamicXPCActivity should defer {identifier: %{public}s}", v69, 0xCu);
        sub_10000607C(v70);
      }

      v61 = 0;
      v59 = 0;
      v80 = 1;
      goto LABEL_91;
    }

    if (state == 2)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_10094D7B0);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        aBlock[0] = v95;
        v50 = 0xD000000000000030;
        v51 = "REMCDTemplateOperationQueueItem";
        *v49 = 136446210;
        v52 = "d.ICCloudConfigurationUpdater";
        v53 = 0xD000000000000034;
        v54 = "atchUpSyncController";
        v55 = 0xD000000000000031;
        if (a3 != 3)
        {
          v55 = 0xD00000000000001BLL;
          v54 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v53 = v55;
          v52 = v54;
        }

        if (a3)
        {
          v50 = 0xD00000000000002DLL;
          v51 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v56 = v50;
        }

        else
        {
          v56 = v53;
        }

        if (a3 <= 1u)
        {
          v57 = v51;
        }

        else
        {
          v57 = v52;
        }

        v58 = sub_10000668C(v56, v57 | 0x8000000000000000, aBlock);

        *(v49 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v47, v48, "RDDynamicXPCActivity CHECKIN RUN {identifier: %{public}s}", v49, 0xCu);
        sub_10000607C(v95);
      }

      v59 = swift_allocObject();
      *(v59 + 16) = v11;
      *(v59 + 24) = a1;
      v60 = swift_allocObject();
      v61 = sub_1005A9ECC;
      *(v60 + 16) = sub_1005A9ECC;
      *(v60 + 24) = v59;
      aBlock[4] = sub_1000FDA90;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F8B88;
      v95 = _Block_copy(aBlock);
      sub_1000F5104(&unk_10094D920, &unk_1007B3300);
      v62 = *(v6 + 72);
      v63 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100791300;

      swift_unknownObjectRetain();
      static REM_os_activity.Options.ifNonePresent.getter();
      v96 = v64;
      sub_1005A9F00(&qword_10093FE28, &type metadata accessor for REM_os_activity.Options);
      sub_1000F5104(&unk_10094D930, &qword_10079EE00);
      sub_10000CB48(&qword_10093FE30, &unk_10094D930, &qword_10079EE00);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v65 = v95;
      static REM_os_activity.initiate(_:dso:options:execute:)();
      _Block_release(v65);
      (*(v6 + 8))(v9, v5);

      goto LABEL_90;
    }

    if (state)
    {
      v81 = state;
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_100006654(v82, qword_10094D7B0);
      v14 = Logger.logObject.getter();
      v83 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v14, v83))
      {
        goto LABEL_89;
      }

      v84 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      v85 = 0xD000000000000030;
      v86 = "REMCDTemplateOperationQueueItem";
      *v84 = 136446466;
      v87 = "d.ICCloudConfigurationUpdater";
      v88 = 0xD000000000000034;
      v89 = "atchUpSyncController";
      v90 = 0xD000000000000031;
      if (a3 != 3)
      {
        v90 = 0xD00000000000001BLL;
        v89 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v88 = v90;
        v87 = v89;
      }

      if (a3)
      {
        v85 = 0xD00000000000002DLL;
        v86 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v91 = v85;
      }

      else
      {
        v91 = v88;
      }

      if (a3 <= 1u)
      {
        v92 = v86;
      }

      else
      {
        v92 = v87;
      }

      v93 = sub_10000668C(v91, v92 | 0x8000000000000000, aBlock);

      *(v84 + 4) = v93;
      *(v84 + 12) = 2048;
      *(v84 + 14) = v81;
      v27 = "RDDynamicXPCActivity CHECKIN ERROR unexpected state {identifier: %{public}s, state: %ld}";
      v28 = v83;
      v29 = v14;
      v30 = v84;
      v31 = 22;
    }

    else
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094D7B0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_89;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      v18 = 0xD000000000000030;
      v19 = "REMCDTemplateOperationQueueItem";
      *v16 = 136446210;
      v20 = "d.ICCloudConfigurationUpdater";
      v21 = 0xD000000000000034;
      v22 = "atchUpSyncController";
      v23 = 0xD000000000000031;
      if (a3 != 3)
      {
        v23 = 0xD00000000000001BLL;
        v22 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v21 = v23;
        v20 = v22;
      }

      if (a3)
      {
        v18 = 0xD00000000000002DLL;
        v19 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v24 = v18;
      }

      else
      {
        v24 = v21;
      }

      if (a3 <= 1u)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }

      v26 = sub_10000668C(v24, v25 | 0x8000000000000000, aBlock);

      *(v16 + 4) = v26;
      v27 = "RDDynamicXPCActivity CHECKIN CHECKIN {identifier: %{public}s}";
      v28 = v15;
      v29 = v14;
      v30 = v16;
      v31 = 12;
    }

    _os_log_impl(&_mh_execute_header, v29, v28, v27, v30, v31);
    sub_10000607C(v17);

LABEL_89:

    v61 = 0;
    v59 = 0;
LABEL_90:
    v80 = 0;
LABEL_91:
    *(v11 + 17) = v80;

    sub_1000FDA80(v61, v59);
    return;
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_10094D7B0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    v37 = 0xD000000000000030;
    v38 = "REMCDTemplateOperationQueueItem";
    *v35 = 136446210;
    v39 = "d.ICCloudConfigurationUpdater";
    v40 = 0xD000000000000034;
    v41 = "atchUpSyncController";
    v42 = 0xD000000000000031;
    if (a3 != 3)
    {
      v42 = 0xD00000000000001BLL;
      v41 = "ActivityScheduler";
    }

    if (a3 != 2)
    {
      v40 = v42;
      v39 = v41;
    }

    if (a3)
    {
      v37 = 0xD00000000000002DLL;
      v38 = "butesAutoTrainer";
    }

    if (a3 <= 1u)
    {
      v43 = v37;
    }

    else
    {
      v43 = v40;
    }

    if (a3 <= 1u)
    {
      v44 = v38;
    }

    else
    {
      v44 = v39;
    }

    v45 = sub_10000668C(v43, v44 | 0x8000000000000000, aBlock);

    *(v35 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "RDDynamicXPCActivity CHECKIN executed on deallocated instance {identifier: %{public}s}", v35, 0xCu);
    sub_10000607C(v36);
  }
}

void sub_1005A6AB4(_xpc_activity_s *a1)
{
  v2 = v1;
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094D7B0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136446210;
    v9 = 0xD000000000000030;
    v10 = *(v2 + 16);
    v11 = "REMCDTemplateOperationQueueItem";
    v12 = "d.ICCloudConfigurationUpdater";
    v13 = 0xD000000000000034;
    v14 = "atchUpSyncController";
    v15 = 0xD000000000000031;
    if (v10 != 3)
    {
      v15 = 0xD00000000000001BLL;
      v14 = "ActivityScheduler";
    }

    if (v10 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (*(v2 + 16))
    {
      v9 = 0xD00000000000002DLL;
      v11 = "butesAutoTrainer";
    }

    if (*(v2 + 16) <= 1u)
    {
      v16 = v9;
    }

    else
    {
      v16 = v13;
    }

    if (*(v2 + 16) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    v18 = sub_10000668C(v16, v17 | 0x8000000000000000, &v46);

    *(v7 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDynamicXPCActivity RUN START {identifier: %{public}s}", v7, 0xCu);
    sub_10000607C(v8);
  }

  if (xpc_activity_set_state(a1, 4))
  {
    v46 = *(v2 + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    v19 = *(v2 + 16);
    v46 = 0;
    v47 = 0xE000000000000000;
    v20._countAndFlagsBits = 0x7669746341637078;
    v20._object = 0xEC0000005B797469;
    String.append(_:)(v20);
    _print_unlocked<A, B>(_:_:)();
    v21._countAndFlagsBits = 93;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v23 = v46;
    v22 = v47;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_10000668C(v23, v22, &v46);
      _os_log_impl(&_mh_execute_header, v24, v25, "os_transaction INIT {name: %{public}s}", v26, 0xCu);
      sub_10000607C(v27);
    }

    String.utf8CString.getter();
    v28 = os_transaction_create();

    v30 = *(v2 + 24);
    v29 = *(v2 + 32);
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    *(v31 + 24) = v19;
    *(v31 + 32) = v23;
    *(v31 + 40) = v22;
    *(v31 + 48) = v28;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v30(sub_1005A9570, v31);
    swift_unknownObjectRelease();
  }

  else
  {

    oslog = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136446210;
      v35 = 0xD000000000000030;
      v36 = *(v2 + 16);
      v37 = "REMCDTemplateOperationQueueItem";
      v38 = "d.ICCloudConfigurationUpdater";
      v39 = 0xD000000000000034;
      v40 = "atchUpSyncController";
      v41 = 0xD000000000000031;
      if (v36 != 3)
      {
        v41 = 0xD00000000000001BLL;
        v40 = "ActivityScheduler";
      }

      if (v36 != 2)
      {
        v39 = v41;
        v38 = v40;
      }

      if (*(v2 + 16))
      {
        v35 = 0xD00000000000002DLL;
        v37 = "butesAutoTrainer";
      }

      if (*(v2 + 16) <= 1u)
      {
        v42 = v35;
      }

      else
      {
        v42 = v39;
      }

      if (*(v2 + 16) <= 1u)
      {
        v43 = v37;
      }

      else
      {
        v43 = v38;
      }

      v44 = sub_10000668C(v42, v43 | 0x8000000000000000, &v46);

      *(v33 + 4) = v44;
      _os_log_impl(&_mh_execute_header, oslog, v32, "RDDynamicXPCActivity RUN ERROR. setState(XPC_ACTIVITY_STATE_CONTINUE) failed {identifier: %{public}s}", v33, 0xCu);
      sub_10000607C(v34);
    }

    else
    {
    }
  }
}

uint64_t sub_1005A7074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v5;
  v6 = *(a1 + 72);
  v53 = *(a1 + 64);
  v7 = *(a1 + 16);
  v49 = *a1;
  v50 = v7;
  v8 = *(a2 + 104);
  v9 = *(a2 + 72);
  v57[3] = *(a2 + 88);
  v57[4] = v8;
  v10 = *(a2 + 40);
  v57[1] = *(a2 + 56);
  v57[2] = v9;
  v57[0] = v10;
  v11 = *(&v8 + 1);
  if (!v6)
  {
    if (!*(&v8 + 1))
    {
      v28 = *(a1 + 48);
      v40 = *(a1 + 32);
      v41 = v28;
      v29 = *(a1 + 64);
      v30 = *(a1 + 16);
      v38 = *a1;
      v39 = v30;
      v42 = v29;
      sub_1005A9584(v57, v54);
      sub_1005A9460(a1, v54);
      result = sub_1000050A4(&v38, &qword_10094D940, &unk_1007B3310);
      v21 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(&v8 + 1))
  {
LABEL_5:
    v22 = *(a1 + 48);
    v40 = *(a1 + 32);
    v41 = v22;
    v23 = *(a1 + 64);
    v24 = *(a1 + 16);
    v38 = *a1;
    v39 = v24;
    *&v42 = v23;
    *(&v42 + 1) = v6;
    v25 = *(a2 + 56);
    v26 = *(a2 + 88);
    v45 = *(a2 + 72);
    v46 = v26;
    v27 = *(a2 + 104);
    v43 = *(a2 + 40);
    v44 = v25;
    v47 = v27;
    v48 = v11;
    sub_1005A9584(v57, v54);
    sub_1005A9460(a1, v54);
    result = sub_1000050A4(&v38, &qword_10094D948, &qword_1007B3320);
    v21 = 1;
    goto LABEL_7;
  }

  v12 = *(a2 + 104);
  v13 = *(a2 + 56);
  v14 = *(a2 + 88);
  v32 = *(a2 + 72);
  v33 = v14;
  v31[0] = *(a2 + 40);
  v31[1] = v13;
  *&v34 = v12;
  *(&v34 + 1) = v11;
  v40 = v32;
  v41 = v14;
  v38 = v31[0];
  v39 = v13;
  v42 = v34;
  v15 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v54[2] = *(a1 + 32);
  v54[3] = v17;
  v54[0] = v15;
  v54[1] = v16;
  v55 = v18;
  v56 = v6;
  v19 = sub_1005A968C(v54, &v38);
  sub_1005A9584(v57, v35);
  sub_1005A9460(a1, v35);
  sub_1000050A4(v31, &qword_10094D940, &unk_1007B3310);
  v35[2] = v51;
  v35[3] = v52;
  v35[0] = v49;
  v35[1] = v50;
  v36 = v53;
  v37 = v6;
  result = sub_1000050A4(v35, &qword_10094D940, &unk_1007B3310);
  v21 = v19 ^ 1;
LABEL_7:
  *a3 = v21 & 1;
  return result;
}

void sub_1005A727C(_xpc_activity_s *a1, uint64_t a2, unsigned __int8 a3, __int128 *a4)
{
  v7 = type metadata accessor for REM_os_activity.Options();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v100[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    state = xpc_activity_get_state(a1);
    if (state == 3)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100006654(v63, qword_10094D7B0);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&aBlock = v67;
        v68 = 0xD000000000000030;
        v69 = "REMCDTemplateOperationQueueItem";
        *v66 = 136446210;
        v70 = "d.ICCloudConfigurationUpdater";
        v71 = 0xD000000000000034;
        v72 = "atchUpSyncController";
        v73 = 0xD000000000000031;
        if (a3 != 3)
        {
          v73 = 0xD00000000000001BLL;
          v72 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v71 = v73;
          v70 = v72;
        }

        if (a3)
        {
          v68 = 0xD00000000000002DLL;
          v69 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v74 = v68;
        }

        else
        {
          v74 = v71;
        }

        if (a3 <= 1u)
        {
          v75 = v69;
        }

        else
        {
          v75 = v70;
        }

        v76 = sub_10000668C(v74, v75 | 0x8000000000000000, &aBlock);

        *(v66 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v64, v65, "RDDynamicXPCActivity should defer {identifier: %{public}s}", v66, 0xCu);
        sub_10000607C(v67);
      }

      v77 = 0;
      v78 = 0;
      v79 = 1;
      goto LABEL_92;
    }

    if (state == 2)
    {
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_10094D7B0);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v99 = v13;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&aBlock = v53;
        v54 = 0xD000000000000030;
        v55 = "REMCDTemplateOperationQueueItem";
        *v52 = 136446210;
        v56 = "d.ICCloudConfigurationUpdater";
        v57 = 0xD000000000000034;
        v58 = "atchUpSyncController";
        v59 = 0xD000000000000031;
        if (a3 != 3)
        {
          v59 = 0xD00000000000001BLL;
          v58 = "ActivityScheduler";
        }

        if (a3 != 2)
        {
          v57 = v59;
          v56 = v58;
        }

        if (a3)
        {
          v54 = 0xD00000000000002DLL;
          v55 = "butesAutoTrainer";
        }

        if (a3 <= 1u)
        {
          v60 = v54;
        }

        else
        {
          v60 = v57;
        }

        if (a3 <= 1u)
        {
          v61 = v55;
        }

        else
        {
          v61 = v56;
        }

        v62 = sub_10000668C(v60, v61 | 0x8000000000000000, &aBlock);

        *(v52 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v50, v51, "RDDynamicXPCActivity UPDATE RUN {identifier: %{public}s", v52, 0xCu);
        sub_10000607C(v53);

        v13 = v99;
      }

      else
      {
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v13;
      *(v78 + 24) = a1;
      v94 = swift_allocObject();
      v77 = sub_1005AA778;
      *(v94 + 16) = sub_1005AA778;
      *(v94 + 24) = v78;
      *&v104 = sub_1000529DC;
      *(&v104 + 1) = v94;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v103 = sub_10000F160;
      *(&v103 + 1) = &unk_1008F8A98;
      v99 = _Block_copy(&aBlock);
      sub_1000F5104(&unk_10094D920, &unk_1007B3300);
      v95 = *(v8 + 72);
      v96 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100791300;

      swift_unknownObjectRetain();
      static REM_os_activity.Options.ifNonePresent.getter();
      v100[0] = v97;
      sub_1005A9F00(&qword_10093FE28, &type metadata accessor for REM_os_activity.Options);
      sub_1000F5104(&unk_10094D930, &qword_10079EE00);
      sub_10000CB48(&qword_10093FE30, &unk_10094D930, &qword_10079EE00);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v98 = v99;
      static REM_os_activity.initiate(_:dso:options:execute:)();
      _Block_release(v98);
      (*(v8 + 8))(v11, v7);

      goto LABEL_91;
    }

    if (state)
    {
      v80 = state;
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100006654(v81, qword_10094D7B0);
      v17 = Logger.logObject.getter();
      v82 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v17, v82))
      {
        goto LABEL_88;
      }

      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&aBlock = v84;
      v85 = 0xD000000000000030;
      v86 = "REMCDTemplateOperationQueueItem";
      *v83 = 136446466;
      v87 = "d.ICCloudConfigurationUpdater";
      v88 = 0xD000000000000034;
      v89 = "atchUpSyncController";
      v90 = 0xD000000000000031;
      if (a3 != 3)
      {
        v90 = 0xD00000000000001BLL;
        v89 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v88 = v90;
        v87 = v89;
      }

      if (a3)
      {
        v85 = 0xD00000000000002DLL;
        v86 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v91 = v85;
      }

      else
      {
        v91 = v88;
      }

      if (a3 <= 1u)
      {
        v92 = v86;
      }

      else
      {
        v92 = v87;
      }

      v93 = sub_10000668C(v91, v92 | 0x8000000000000000, &aBlock);

      *(v83 + 4) = v93;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v17, v82, "RDDynamicXPCActivity unexpected state {identifier: %{public}s, state: %ld}", v83, 0x16u);
      sub_10000607C(v84);
    }

    else
    {
      *&aBlock = *(v13 + 15);
      __chkstk_darwin(0);
      *(&v99 - 2) = v13;
      *(&v99 - 1) = a4;
      type metadata accessor for UnfairLock();

      Lock.sync<A>(_:)();

      sub_1005A7EB8();
      xpc_activity_set_criteria(a1, v15);
      swift_unknownObjectRelease();
      if (qword_1009365F8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094D7B0);
      sub_1005A9460(a4, &aBlock);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      sub_1005A9498(a4);
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_88;
      }

      v19 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v20 = 0xD000000000000030;
      v21 = "REMCDTemplateOperationQueueItem";
      *v19 = 136446466;
      v22 = "d.ICCloudConfigurationUpdater";
      v23 = 0xD000000000000034;
      v24 = "atchUpSyncController";
      v25 = 0xD000000000000031;
      if (a3 != 3)
      {
        v25 = 0xD00000000000001BLL;
        v24 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v23 = v25;
        v22 = v24;
      }

      if (a3)
      {
        v20 = 0xD00000000000002DLL;
        v21 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v26 = v20;
      }

      else
      {
        v26 = v23;
      }

      if (a3 <= 1u)
      {
        v27 = v21;
      }

      else
      {
        v27 = v22;
      }

      v28 = sub_10000668C(v26, v27 | 0x8000000000000000, &v101);

      *(v19 + 4) = v28;
      *(v19 + 12) = 2082;
      v29 = a4[2];
      v30 = a4[4];
      v105 = a4[3];
      v106 = v30;
      v31 = *a4;
      v103 = a4[1];
      v104 = v29;
      aBlock = v31;
      sub_1005A9460(a4, v100);
      v32 = String.init<A>(describing:)();
      v34 = sub_10000668C(v32, v33, &v101);

      *(v19 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDDynamicXPCActivity UPDATE END Updated {identifier: %{public}s, newCriteria: %{public}s}", v19, 0x16u);
      swift_arrayDestroy();
    }

LABEL_88:

    v77 = 0;
    v78 = 0;
LABEL_91:
    v79 = 0;
LABEL_92:
    *(v13 + 17) = v79;

    sub_1000FDA80(v77, v78);
    return;
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_10094D7B0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&aBlock = v39;
    v40 = 0xD000000000000030;
    v41 = "REMCDTemplateOperationQueueItem";
    *v38 = 136446210;
    v42 = "d.ICCloudConfigurationUpdater";
    v43 = 0xD000000000000034;
    v44 = "atchUpSyncController";
    v45 = 0xD000000000000031;
    if (a3 != 3)
    {
      v45 = 0xD00000000000001BLL;
      v44 = "ActivityScheduler";
    }

    if (a3 != 2)
    {
      v43 = v45;
      v42 = v44;
    }

    if (a3)
    {
      v40 = 0xD00000000000002DLL;
      v41 = "butesAutoTrainer";
    }

    if (a3 <= 1u)
    {
      v46 = v40;
    }

    else
    {
      v46 = v43;
    }

    if (a3 <= 1u)
    {
      v47 = v41;
    }

    else
    {
      v47 = v42;
    }

    v48 = sub_10000668C(v46, v47 | 0x8000000000000000, &aBlock);

    *(v38 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "RDDynamicXPCActivity UPDATE executed on deallocated instance {identifier: %{public}s}", v38, 0xCu);
    sub_10000607C(v39);
  }
}

void sub_1005A7EB8()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = *(v0 + 8);
  if ((v3 & 0xFF00) != 0x200)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    if ((v3 & 1) == 0)
    {
      if ((~*v0 & 0x7FF0000000000000) == 0)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v8 = *v0;
      if (*v0 <= -9.22337204e18)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v8 >= 9.22337204e18)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      xpc_dictionary_set_int64(v1, XPC_ACTIVITY_INTERVAL, v8);
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, v3 & 0x100);
    if ((v5 & 1) == 0)
    {
      if ((~*&v4 & 0x7FF0000000000000) == 0)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, v4);
    }

    if ((v7 & 1) == 0)
    {
      if ((~*&v6 & 0x7FF0000000000000) == 0)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v6 <= -9.22337204e18)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      if (v6 >= 9.22337204e18)
      {
        goto LABEL_111;
      }

      xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, v6);
    }
  }

  v9 = *(v0 + 41);
  if (v9 != 2)
  {
    if (v9)
    {
      v10 = &XPC_ACTIVITY_PRIORITY_UTILITY;
    }

    else
    {
      v10 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
    }

    xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, *v10);
  }

  v11 = *(v0 + 42);
  if (v11 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, v11 & 1);
  }

  v12 = *(v0 + 43);
  if (v12 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, v12 & 1);
  }

  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (*(v0 + 56))
  {
    goto LABEL_32;
  }

  if ((~*(v0 + 48) & 0x7FF0000000000000) == 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v13 = *(v0 + 48);
  if (v13 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_EXPECTED_DURATION, v13);
LABEL_32:
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
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
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    return;
  }

  v14 = *(v0 + 57);
  if (v14 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, v14 & 1);
  }

  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_116;
  }

  v15 = *(v0 + 58);
  if (v15 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, v15 & 1);
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
    goto LABEL_117;
  }

  v16 = *(v0 + 59);
  if (v16 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, v16 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    goto LABEL_118;
  }

  v17 = *(v0 + 62);
  if (v17 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, v17 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    goto LABEL_119;
  }

  v18 = *(v0 + 63);
  if (v18 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, v18 & 1);
  }

  if (!XPC_ACTIVITY_MAY_REBOOT_DEVICE)
  {
    goto LABEL_120;
  }

  v19 = *(v0 + 60);
  if (v19 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MAY_REBOOT_DEVICE, v19 & 1);
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
    goto LABEL_121;
  }

  v20 = *(v0 + 61);
  if (v20 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, v20 & 1);
  }

  if (!XPC_ACTIVITY_POWER_NAP)
  {
    goto LABEL_122;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, *(v0 + 64));
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
    goto LABEL_123;
  }

  v21 = *(v0 + 44);
  if (v21 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, v21 & 1);
  }

  v22 = *(v0 + 72);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 56);
  sub_1005A9460(v0, &v37);
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  v28 = XPC_ACTIVITY_REQUIRES_CLASS_C;
  v29 = XPC_ACTIVITY_REQUIRES_CLASS_B;
  v30 = XPC_ACTIVITY_REQUIRES_CLASS_A;
  while (1)
  {
    if (!v25)
    {
      while (1)
      {
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v32 >= v27)
        {
          goto LABEL_73;
        }

        v25 = *(v22 + 56 + 8 * v32);
        ++v26;
        if (v25)
        {
          v26 = v32;
          goto LABEL_67;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

LABEL_67:
    v33 = *(*(v22 + 48) + (__clz(__rbit64(v25)) | (v26 << 6)));
    if (!v33)
    {
      v31 = v30;
      if (!v30)
      {
        goto LABEL_113;
      }

      goto LABEL_61;
    }

    if (v33 != 1)
    {
      break;
    }

    v31 = v29;
    if (!v29)
    {
      goto LABEL_112;
    }

LABEL_61:
    v25 &= v25 - 1;
    xpc_dictionary_set_BOOL(v2, v31, 1);
  }

  v31 = v28;
  if (v28)
  {
    goto LABEL_61;
  }

  __break(1u);
LABEL_73:

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
    goto LABEL_124;
  }

  v34 = *(v0 + 65);
  if (v34 != 2)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, v34 & 1);
  }

  LODWORD(v35) = *(v0 + 66);
  if (v35 > 3)
  {
LABEL_81:
    if (v35 > 5)
    {
LABEL_88:
      if (v35 != 6)
      {
        return;
      }

      v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY;
      if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY)
      {
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_91;
    }

    if (v35 != 4)
    {
LABEL_93:
      v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING;
      if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING)
      {
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_95;
    }

    v35 = &XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE;
    v36 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE;
    if (XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE)
    {
      goto LABEL_96;
    }

    __break(1u);
LABEL_85:
    if (v35 != 2)
    {
LABEL_95:
      v36 = XPC_ACTIVITY_MOTION_STATE_CYCLING;
      if (!XPC_ACTIVITY_MOTION_STATE_CYCLING)
      {
        goto LABEL_126;
      }

      goto LABEL_96;
    }

    v35 = &XPC_ACTIVITY_MOTION_STATE_RUNNING;
    v36 = XPC_ACTIVITY_MOTION_STATE_RUNNING;
    if (XPC_ACTIVITY_MOTION_STATE_RUNNING)
    {
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_88;
  }

  if (*(v0 + 66) > 1u)
  {
    goto LABEL_85;
  }

  if (*(v0 + 66))
  {
LABEL_91:
    v36 = XPC_ACTIVITY_MOTION_STATE_WALKING;
    if (XPC_ACTIVITY_MOTION_STATE_WALKING)
    {
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_93;
  }

  v35 = &XPC_ACTIVITY_MOTION_STATE_STATIONARY;
  v36 = XPC_ACTIVITY_MOTION_STATE_STATIONARY;
  if (!XPC_ACTIVITY_MOTION_STATE_STATIONARY)
  {
    __break(1u);
    goto LABEL_81;
  }

LABEL_96:
  if (!XPC_ACTIVITY_DESIRED_MOTION_STATE)
  {
    goto LABEL_125;
  }

  xpc_dictionary_set_string(v2, XPC_ACTIVITY_DESIRED_MOTION_STATE, v36);
}

uint64_t sub_1005A84EC()
{
  v0 = type metadata accessor for UnfairLock.Options();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1005A9F00(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2 = type metadata accessor for UnfairLock();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = UnfairLock.init(options:)();
  qword_10094D7D0 = result;
  return result;
}

uint64_t sub_1005A8650(uint64_t a1)
{
  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094D7B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing l_pendingCriteria", v5, 2u);
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9[2] = *(a1 + 72);
  v9[3] = v7;
  v9[4] = *(a1 + 104);
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return sub_1000050A4(v9, &qword_10094D940, &unk_1007B3310);
}

void sub_1005A8784(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5)
{
  if (xpc_activity_set_completion_status())
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094D7B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v13 = 0xD000000000000030;
      v14 = "REMCDTemplateOperationQueueItem";
      *v12 = 136446466;
      v15 = "d.ICCloudConfigurationUpdater";
      v16 = 0xD000000000000034;
      v17 = "atchUpSyncController";
      v18 = 0xD000000000000031;
      if (a3 != 3)
      {
        v18 = 0xD00000000000001BLL;
        v17 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v16 = v18;
        v15 = v17;
      }

      if (a3)
      {
        v13 = 0xD00000000000002DLL;
        v14 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v19 = v13;
      }

      else
      {
        v19 = v16;
      }

      if (a3 <= 1u)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = sub_10000668C(v19, v20 | 0x8000000000000000, &v47);

      *(v12 + 4) = v21;
      v22 = 0xE800000000000000;
      *(v12 + 12) = 2082;
      v23 = 0x6574656C706D6F63;
      v24 = 0xE600000000000000;
      v25 = 0x6B726F576F6ELL;
      if (a1 != 2)
      {
        v25 = 0x726F727265;
        v24 = 0xE500000000000000;
      }

      if (a1)
      {
        v23 = 0x57676E69646E6570;
        v22 = 0xEB000000006B726FLL;
      }

      if (a1 <= 1u)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      if (a1 <= 1u)
      {
        v27 = v22;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_10000668C(v26, v27, &v47);

      *(v12 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v10, v11, "RDDynamicXPCActivity RUN END {identifier: %{public}s, completionStatus: %{public}s}", v12, 0x16u);
      swift_arrayDestroy();

LABEL_44:
    }
  }

  else
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094D7B0);
    v10 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      v33 = 0xD000000000000030;
      v34 = "REMCDTemplateOperationQueueItem";
      *v31 = 136446210;
      v35 = "d.ICCloudConfigurationUpdater";
      v36 = 0xD000000000000034;
      v37 = "atchUpSyncController";
      v38 = 0xD000000000000031;
      if (a3 != 3)
      {
        v38 = 0xD00000000000001BLL;
        v37 = "ActivityScheduler";
      }

      if (a3 != 2)
      {
        v36 = v38;
        v35 = v37;
      }

      if (a3)
      {
        v33 = 0xD00000000000002DLL;
        v34 = "butesAutoTrainer";
      }

      if (a3 <= 1u)
      {
        v39 = v33;
      }

      else
      {
        v39 = v36;
      }

      if (a3 <= 1u)
      {
        v40 = v34;
      }

      else
      {
        v40 = v35;
      }

      v41 = sub_10000668C(v39, v40 | 0x8000000000000000, &v47);

      *(v31 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v10, v30, "RDDynamicXPCActivity RUN ERROR. setState(XPC_ACTIVITY_STATE_DONE) failed {identifier: %{public}s}", v31, 0xCu);
      sub_10000607C(v32);

      goto LABEL_44;
    }
  }

  if (qword_1009365F8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_10094D7B0);

  oslog = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_10000668C(a4, a5, &v47);
    _os_log_impl(&_mh_execute_header, oslog, v43, "os_transaction RELEASE {name: %{public}s}", v44, 0xCu);
    sub_10000607C(v45);
  }
}

uint64_t sub_1005A8CB0()
{
  v1 = v0[4];

  v2 = v0[14];

  v3 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for RDDynamicXPCActivity.Criteria(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 25) = *(a2 + 25);
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 6);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 9);

  return a1;
}

__n128 initializeWithTake for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for RDDynamicXPCActivity.Criteria(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.Criteria(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.Criteria(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005A901C()
{
  result = qword_10094D8B0;
  if (!qword_10094D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D8B0);
  }

  return result;
}

Swift::Int sub_1005A9070(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1005A968C(v8, v9) & 1;
}

Swift::Int sub_1005A90CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005A9190()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1005A9240()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005A9300@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA504(*a1);
  *a2 = result;
  return result;
}

void sub_1005A9330(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574656C706D6F63;
  v4 = 0xE600000000000000;
  v5 = 0x6B726F576F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x57676E69646E6570;
    v2 = 0xEB000000006B726FLL;
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

unint64_t sub_1005A93C0()
{
  result = qword_10094D8B8;
  if (!qword_10094D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D8B8);
  }

  return result;
}

uint64_t sub_1005A9414(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1005A95F4(&v5, &v7) & 1;
}

uint64_t sub_1005A9498(uint64_t a1)
{
  v2 = *(a1 + 72);

  return a1;
}

uint64_t sub_1005A94DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10[2] = *(v1 + 72);
  v10[3] = v4;
  v10[4] = *(v1 + 104);
  v10[0] = *(v1 + 40);
  v10[1] = v3;
  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[3];
  *(v1 + 104) = v2[4];
  *(v1 + 56) = v6;
  *(v1 + 88) = v7;
  *(v1 + 72) = v5;
  *(v1 + 40) = *v2;
  sub_1000050A4(v10, &qword_10094D940, &unk_1007B3310);
  return sub_1005A9460(v2, &v9);
}

uint64_t sub_1005A9584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094D940, &unk_1007B3310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A95F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 9) ^ *(a2 + 9)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int sub_1005A968C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 & 0xFF00;
  if ((v2 & 0xFF00) == 0x200)
  {
    if (v4 != 512)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 512)
    {
      return 0;
    }

    v8 = *(a2 + 24);
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    if (((v2 >> 8) & 1) != ((v3 >> 8) & 1))
    {
      return 0;
    }

    if (*(a1 + 24))
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8 & 1 | (*(a1 + 16) != *(a2 + 16)))
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  v5 = *(a1 + 41);
  v6 = *(a2 + 41);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 42);
  v10 = *(a2 + 42);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 43);
  v12 = *(a2 + 43);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v12 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 44);
  v14 = *(a2 + 44);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v15 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 57);
  v17 = *(a2 + 57);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = *(a1 + 58);
  v19 = *(a2 + 58);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v20 = *(a1 + 59);
  v21 = *(a2 + 59);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v22 = *(a1 + 60);
  v23 = *(a2 + 60);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v24 = *(a1 + 61);
  v25 = *(a2 + 61);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v26 = *(a1 + 62);
  v27 = *(a2 + 62);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v28 = *(a1 + 63);
  v29 = *(a2 + 63);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  v30 = *(a1 + 65);
  v31 = *(a2 + 65);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v32 = *(a1 + 66);
  v33 = *(a2 + 66);
  if (v32 == 7)
  {
    if (v33 == 7)
    {
      return sub_1005A52DC(*(a1 + 72), *(a2 + 72));
    }

    return 0;
  }

  if (v32 != v33)
  {
    return 0;
  }

  return sub_1005A52DC(*(a1 + 72), *(a2 + 72));
}

uint64_t sub_1005A99BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v2;
  v4[4] = *(v0 + 104);
  v4[0] = *(v0 + 40);
  v4[1] = v1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return sub_1000050A4(v4, &qword_10094D940, &unk_1007B3310);
}

void *sub_1005A9A28(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v6 = *v3;
  v7 = type metadata accessor for UnfairLock.Options();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  *(v4 + 5) = 0u;
  v10 = v4 + 5;
  *(v4 + 13) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 7) = 0u;
  if (qword_100936600 != -1)
  {
    v9 = swift_once();
  }

  *&v25[0] = qword_10094D7D0;
  __chkstk_darwin(v9);
  *(&v22 - 16) = a1;
  *(&v22 - 1) = v6;
  v11 = type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  *(v4 + 16) = a1;
  *&v25[0] = _swiftEmptyArrayStorage;
  sub_1005A9F00(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v4[15] = UnfairLock.init(options:)();
  *(v4 + 17) = 0;
  v14 = v23;
  v4[3] = v22;
  v4[4] = v14;
  v15 = *(v4 + 11);
  v25[2] = *(v4 + 9);
  v25[3] = v15;
  v25[4] = *(v4 + 13);
  v16 = *(v4 + 7);
  v25[0] = *v10;
  v25[1] = v16;
  *v10 = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 13) = 0u;

  sub_1000050A4(v25, &qword_10094D940, &unk_1007B3310);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  aBlock[4] = sub_1005A9E80;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000EBA84;
  aBlock[3] = &unk_1008F8B10;
  v19 = _Block_copy(aBlock);

  v20 = String.utf8CString.getter();

  xpc_activity_register((v20 + 32), XPC_ACTIVITY_CHECK_IN, v19);

  _Block_release(v19);
  return v4;
}

uint64_t sub_1005A9E8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1005A9ECC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1005A6AB4(v1);
}

uint64_t sub_1005A9F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A9F48(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_10094D7C8)
  {
    if (qword_1009365F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094D7B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "allCheckedInActivities called more than once", v9, 2u);
    }
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = sub_1005AA550;
  v11[4] = v10;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();

  v12 = a1;
  sub_1005A9A28(0, sub_1000FCE88, v11);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v13 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = 1;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = sub_1005AA77C;
  v15[4] = v14;
  swift_allocObject();

  v16 = v12;
  sub_1005A9A28(1, sub_1005AA774, v15);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v17 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = 2;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = sub_1005AA77C;
  v19[4] = v18;
  swift_allocObject();

  v20 = v16;
  sub_1005A9A28(2, sub_1005AA774, v19);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v21 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = 3;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = sub_1005AA77C;
  v23[4] = v22;
  swift_allocObject();

  v24 = v20;
  sub_1005A9A28(3, sub_1005AA774, v23);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v25 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *(v26 + 32) = 4;
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = sub_1005AA77C;
  v27[4] = v26;
  swift_allocObject();

  v28 = v24;
  sub_1005A9A28(4, sub_1005AA774, v27);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v29 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  qword_10094D7C8 = _swiftEmptyArrayStorage;
}

unint64_t sub_1005AA4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3EC0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005AA504(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3F80, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.IntervalInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.IntervalInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005AA668()
{
  result = qword_10094D950;
  if (!qword_10094D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D950);
  }

  return result;
}

unint64_t sub_1005AA6C0()
{
  result = qword_10094D958;
  if (!qword_10094D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D958);
  }

  return result;
}

unint64_t sub_1005AA718()
{
  result = qword_10094D960;
  if (!qword_10094D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D960);
  }

  return result;
}

uint64_t sub_1005AA79C(void *a1, void (*a2)(uint64_t, void), uint64_t a3, double a4)
{
  v5 = v4;
  v257 = a3;
  v256 = a2;
  v260 = a1;
  v7 = *v4;
  v239 = type metadata accessor for RDPublicTemplate();
  v237 = *(v239 - 8);
  v8 = *(v237 + 64);
  __chkstk_darwin(v239);
  v242 = &v228[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v231 = &v228[-v11];
  v236 = v12;
  __chkstk_darwin(v13);
  v243 = &v228[-v14];
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v250 = &v228[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v248 = &v228[-v19];
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v246 = &v228[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v249 = &v228[-v25];
  v235 = v26;
  __chkstk_darwin(v27);
  v252 = &v228[-v28];
  v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v233 = *(v29 - 8);
  v30 = *(v233 + 64);
  __chkstk_darwin(v29 - 8);
  v241 = &v228[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v247 = &v228[-v33];
  v234 = v34;
  __chkstk_darwin(v35);
  v251 = &v228[-v36];
  v37 = type metadata accessor for Date();
  v269 = *(v37 - 8);
  v38 = *(v269 + 64);
  __chkstk_darwin(v37);
  v40 = &v228[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v238 = &v228[-v42];
  __chkstk_darwin(v43);
  v254 = &v228[-v44];
  __chkstk_darwin(v45);
  v240 = &v228[-v46];
  __chkstk_darwin(v47);
  v245 = &v228[-v48];
  __chkstk_darwin(v49);
  v230 = &v228[-v50];
  __chkstk_darwin(v51);
  v53 = &v228[-v52];
  __chkstk_darwin(v54);
  v268 = &v228[-v55];
  v232 = v56;
  __chkstk_darwin(v57);
  v270 = &v228[-v58];
  if (qword_100936610 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = sub_100006654(v59, qword_10094D970);
  swift_retain_n();
  v259 = v60;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v261 = v20;
  v262 = v21;
  v267 = v5;
  v271 = v37;
  v266 = v7;
  v244 = v40;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v274 = v66;
    *v64 = 136446978;
    v273[0] = v7;
    swift_getMetatypeMetadata();
    v67 = String.init<A>(describing:)();
    v69 = v53;
    v70 = sub_10000668C(v67, v68, &v274);

    *(v64 + 4) = v70;
    v53 = v69;
    v5 = v267;
    *(v64 + 12) = 2114;
    v71 = v5[2];
    v72 = v5[3];
    *(v64 + 14) = v71;
    *(v64 + 22) = 2114;
    *(v64 + 24) = v72;
    *v65 = v71;
    v65[1] = v72;
    *(v64 + 32) = 2048;
    v73 = v5[10];
    v74 = v71;
    v75 = v72;

    *(v64 + 34) = v73;

    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: Start execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld}", v64, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v37 = v271;

    sub_10000607C(v66);
  }

  else
  {
  }

  Date.init()();
  v76 = v5[3];
  v265 = v5[2];
  v258 = v76;
  static Date.now.getter();
  v77 = v5[11];
  Date.addingTimeInterval(_:)();
  v78 = *(v269 + 8);
  v253 = v53;
  v264 = v269 + 8;
  v263 = v78;
  v78(v53, v37);
  v229 = *(v5 + 72);
  v255 = swift_allocObject();
  *(v255 + 16) = 0;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v274 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v80 = v274;
  if ((inited & 0xC000000000000001) != 0)
  {
    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v81 = *(inited + 32);
  }

  v82 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v83)
  {
LABEL_42:
    v273[0] = 0;
    v273[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v227._object = 0x80000001007EC120;
    v227._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v227);
    v272 = v81;
    sub_1000F5104(&qword_100938C08, &unk_10079B270);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v84 = v82;
  v85 = v83;

  v87 = v80[2];
  v86 = v80[3];
  if (v87 >= v86 >> 1)
  {
    sub_100026EF4((v86 > 1), v87 + 1, 1);
    v80 = v274;
  }

  v80[2] = v87 + 1;
  v88 = &v80[2 * v87];
  v88[4] = v84;
  v88[5] = v85;
  if ((inited & 0xC000000000000001) != 0)
  {
    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_41:
    __break(1u);
  }

  v81 = *(inited + 40);

LABEL_17:
  v89 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v91 = v260;
  if (!v90)
  {
    goto LABEL_42;
  }

  v92 = v89;
  v93 = v90;

  v274 = v80;
  v95 = v80[2];
  v94 = v80[3];
  if (v95 >= v94 >> 1)
  {
    sub_100026EF4((v94 > 1), v95 + 1, 1);
    v80 = v274;
  }

  v80[2] = v95 + 1;
  v96 = &v80[2 * v95];
  v96[4] = v92;
  v96[5] = v93;
  swift_setDeallocating();
  v97 = *(inited + 16);
  swift_arrayDestroy();
  v98 = 0;
  v99 = sub_10034AE0C(v265, v91, v80, 0);

  v100 = [v99 mostRecentPublicLinkUpdateRequestDate];
  v101 = v262;
  v102 = v271;
  if (v100)
  {
    v103 = v247;
    v104 = v100;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v105 = 0;
    v106 = v261;
    v107 = v248;
  }

  else
  {
    v105 = 1;
    v106 = v261;
    v107 = v248;
    v103 = v247;
  }

  v108 = 1;
  (*(v269 + 56))(v103, v105, 1, v102);
  sub_10012F7FC(v103, v251);
  v109 = [v99 publicLinkURLUUID];
  v248 = v109;
  if (v109)
  {
    v110 = v109;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = 0;
  }

  v111 = *(v101 + 56);
  v111(v107, v108, 1, v106);
  sub_1000050A4(v107, &unk_100939D90, "8\n\r");
  v112 = [v99 publicLinkURLUUID];
  if (v112)
  {
    v113 = v246;
    v114 = v112;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v115 = *(v101 + 32);
    v247 = v99;
    v116 = v250;
    v115(v250, v113, v106);
    v111(v116, 0, 1, v106);
    v117 = v249;
    v118 = v116;
    v98 = 0;
    v99 = v247;
    v115(v249, v118, v106);
    v119 = v254;
  }

  else
  {
    v120 = v250;
    v111(v250, 1, 1, v106);
    v117 = v249;
    UUID.init()();
    v121 = (*(v101 + 48))(v120, 1, v106);
    v119 = v254;
    if (v121 != 1)
    {
      sub_1000050A4(v120, &unk_100939D90, "8\n\r");
    }
  }

  v122 = *(v101 + 32);
  v122(v252, v117, v106);
  v123 = v253;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v263(v123, v271);
  [v99 setMostRecentPublicLinkUpdateRequestDate:isa];

  v273[0] = 0;
  if ([v91 save:v273])
  {
    v125 = v273[0];

    v126 = v91;
    v127 = objc_autoreleasePoolPush();
    v128 = sub_10034B568();
    v159 = sub_10034AE0C(v265, v126, v128, 0);

    v160 = v243;
    sub_100531140(v252, v268, v258, v267[10], v243);

    objc_autoreleasePoolPop(v127);
    v161 = v231;
    sub_10042A1BC(v160, v231);
    v162 = v230;
    v163 = v271;
    v254 = *(v269 + 16);
    v250 = (v269 + 16);
    (v254)(v230, v270, v271);
    v164 = v265;
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    v265 = v164;

    LODWORD(v259) = v166;
    if (os_log_type_enabled(v165, v166))
    {
      LODWORD(v244) = v248 != 0;
      v167 = v162;
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v245 = v169;
      v249 = swift_slowAlloc();
      v273[0] = v249;
      *v168 = 136447234;
      v170 = sub_1001424F8();
      v172 = sub_10000668C(v170, v171, v273);
      v247 = v165;
      v173 = v172;

      *(v168 + 4) = v173;
      *(v168 + 12) = 2114;
      v174 = v265;
      *(v168 + 14) = v265;
      *v169 = v174;
      *(v168 + 22) = 2082;
      v175 = *(v239 + 32);
      v176 = v174;
      v177 = sub_10013FBFC();
      v178 = [(objc_class *)v177 recordName];

      v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v180 = v161;
      v182 = v181;

      v106 = v261;
      sub_1003B52F4(v180);
      v183 = sub_10000668C(v179, v182, v273);

      *(v168 + 24) = v183;
      *(v168 + 32) = 2082;
      v184 = Bool.yesno.getter();
      v186 = sub_10000668C(v184, v185, v273);

      *(v168 + 34) = v186;
      *(v168 + 42) = 2048;
      v187 = v253;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v189 = v188;
      v190 = v187;
      v191 = v271;
      v192 = v263;
      v263(v187, v271);
      v193 = v167;
      v194 = v239;
      v192(v193, v191);
      *(v168 + 44) = v189;
      v195 = v247;
      _os_log_impl(&_mh_execute_header, v247, v259, "%{public}s: Generated content for template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v168, 0x34u);
      sub_1000050A4(v245, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v196 = v248;
      v197 = v260;
      v198 = v237;
    }

    else
    {

      v263(v162, v163);
      sub_1003B52F4(v161);
      v197 = v260;
      v190 = v253;
      v198 = v237;
      v194 = v239;
      v196 = v248;
    }

    LODWORD(v247) = v196 != 0;
    [v197 reset];
    v259 = v267[7];
    v248 = v267[8];
    v249 = sub_10000F61C(v267 + 4, v259);
    v273[3] = v194;
    v273[4] = &off_1008E60A0;
    v199 = sub_1000103CC(v273);
    sub_10042A1BC(v160, v199);
    sub_10042A1BC(v160, v242);
    v200 = v190;
    v201 = v271;
    v202 = v254;
    (v254)(v200, v270, v271);
    v203 = v262;
    (*(v262 + 16))(v246, v252, v106);
    v202(v240, v268, v201);
    sub_10012F78C(v251, v241);
    v204 = (*(v198 + 80) + 24) & ~*(v198 + 80);
    v205 = v204 + v236;
    v206 = v269;
    v207 = *(v269 + 80);
    v208 = (v207 + v204 + v236 + 1) & ~v207;
    v237 = (v232 + 7 + v208) & 0xFFFFFFFFFFFFFFF8;
    v209 = (*(v203 + 80) + v237 + 8) & ~*(v203 + 80);
    v239 = (v235 + v207 + v209) & ~v207;
    v254 = ((v232 + 7 + v239) & 0xFFFFFFFFFFFFFFF8);
    v250 = ((v254 + 15) & 0xFFFFFFFFFFFFFFF8);
    v245 = ((v250 + 15) & 0xFFFFFFFFFFFFFFF8);
    v236 = (v245 + 15) & 0xFFFFFFFFFFFFFFF8;
    v238 = ((*(v233 + 80) + v236 + 16) & ~*(v233 + 80));
    v244 = &v238[v234];
    v235 = &v238[v234] & 0xFFFFFFFFFFFFFFF8;
    v210 = swift_allocObject();
    v211 = v265;
    *(v210 + 16) = v265;
    sub_10042A158(v242, v210 + v204);
    *(v210 + v205) = v247;
    v212 = *(v206 + 32);
    v213 = v210 + v208;
    v214 = v271;
    v212(v213, v253, v271);
    *(v210 + v237) = v197;
    v215 = v210 + v209;
    v216 = v261;
    v122(v215, v246, v261);
    v212(v210 + v239, v240, v214);
    v217 = v258;
    *&v254[v210] = v258;
    *&v250[v210] = v255;
    *&v245[v210] = v267;
    v218 = (v210 + v236);
    v219 = v257;
    *v218 = v256;
    v218[1] = v219;
    sub_10012F7FC(v241, &v238[v210]);
    v244[v210] = v229;
    *(v210 + v235 + 8) = v266;
    v220 = v248;
    v221 = *(v248 + 1);

    v222 = v211;
    v223 = v260;
    v224 = v217;

    v221(v273, sub_1005AF878, v210, v259, v220, a4);

    sub_1003B52F4(v243);
    (*(v262 + 8))(v252, v216);
    sub_1000050A4(v251, &unk_100938850, qword_100795AE0);
    v225 = v271;
    v226 = v263;
    v263(v268, v271);
    v226(v270, v225);
    sub_10000607C(v273);
  }

  else
  {
    v129 = v273[0];
    v130 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v131 = v265;
    v132 = v271;
    (*(v269 + 16))(v119, v270, v271);
    v133 = v131;
    swift_errorRetain();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v269 = 0;
      v137 = v136;
      v138 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v274 = v265;
      *v137 = 136446978;
      v273[0] = v266;
      swift_getMetatypeMetadata();
      v139 = String.init<A>(describing:)();
      v141 = sub_10000668C(v139, v140, &v274);

      *(v137 + 4) = v141;
      *(v137 + 12) = 2114;
      *(v137 + 14) = v133;
      *v138 = v133;
      *(v137 + 22) = 2082;
      swift_getErrorValue();
      v142 = v133;
      v143 = Error.rem_errorDescription.getter();
      v145 = sub_10000668C(v143, v144, &v274);

      *(v137 + 24) = v145;
      *(v137 + 32) = 2048;
      v146 = v253;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v148 = v147;
      v149 = v119;
      v150 = v263;
      v263(v146, v271);
      v150(v149, v271);
      *(v137 + 34) = v148;
      _os_log_impl(&_mh_execute_header, v134, v135, "%{public}s: Failed to fetch template {templateObjectID: %{public}@, error: %{public}s, elapsedSeconds: %f}", v137, 0x2Au);
      sub_1000050A4(v138, &unk_100938E70, &unk_100797230);
      v132 = v271;

      swift_arrayDestroy();

      v98 = v269;
    }

    else
    {

      v151 = v119;
      v150 = v263;
      v263(v151, v132);
    }

    v152 = v261;
    v153 = v262;
    v154 = v257;
    v155 = v267;
    swift_errorRetain();
    v156 = v133;
    v157 = v270;
    sub_1005ACD3C(v130, 1, v255, v156, v258, v155, v270, v256, v154, v266);

    v150(v268, v132);
    v150(v157, v132);
    if (!v98)
    {
      (*(v153 + 8))(v252, v152);
      sub_1000050A4(v251, &unk_100938850, qword_100795AE0);
    }
  }
}

uint64_t sub_1005ACC74()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094D970);
  v1 = sub_100006654(v0, qword_10094D970);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005ACD3C(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void), uint64_t a9, uint64_t a10)
{
  v58 = a2;
  v56 = a5;
  v57 = a10;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v51 - v22;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10094D970);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60 = v28;
      *v27 = 136446210;
      v59[1] = v57;
      swift_getMetatypeMetadata();
      v29 = String.init<A>(describing:)();
      v31 = sub_10000668C(v29, v30, &v60);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: Attempted to call completion more than once", v27, 0xCu);
      sub_10000607C(v28);
    }
  }

  else
  {
    v54 = a1;
    v55 = a8;
    v53 = a9;
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_10094D970);
    (*(v17 + 16))(v23, a7, v16);
    v33 = a6;
    swift_retain_n();
    v34 = a4;
    v35 = v56;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = v36;
      v39 = v38;
      v56 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59[0] = v52;
      *v39 = 136447234;
      v60 = v57;
      swift_getMetatypeMetadata();
      v40 = String.init<A>(describing:)();
      LODWORD(v57) = v37;
      v42 = sub_10000668C(v40, v41, v59);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2114;
      *(v39 + 14) = v34;
      *(v39 + 22) = 2114;
      *(v39 + 24) = v35;
      v43 = v56;
      *v56 = v34;
      v43[1] = v35;
      *(v39 + 32) = 2048;
      v44 = *(v33 + 80);
      v45 = v34;
      v46 = v35;

      *(v39 + 34) = v44;

      *(v39 + 42) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v48 = v47;
      v49 = *(v17 + 8);
      v49(v20, v16);
      v49(v23, v16);
      *(v39 + 44) = v48;
      v50 = v51;
      _os_log_impl(&_mh_execute_header, v51, v57, "%{public}s: Finished execution {templateObjectID: %{public}@, templatePublicLinkConfiguration: %{public}@, remindersCountLimit: %ld, elapsedSeconds: %f}", v39, 0x34u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v52);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
    }

    v55(v54, v58 & 1);
  }
}

void sub_1005AD244(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, unint64_t a6, void *a7, unint64_t a8, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, unsigned __int8 a16, uint64_t a17)
{
  v74 = a8;
  v81 = a7;
  v72 = a6;
  v80 = a5;
  v90 = a1;
  v91 = a3;
  v77 = a2;
  v79 = a11;
  v86 = a16;
  v84 = a12;
  v85 = a17;
  v82 = a13;
  v83 = a14;
  v73 = a15;
  v78 = a10;
  v71 = a9;
  v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v75 = *(v18 - 8);
  v76 = *(v75 + 64);
  __chkstk_darwin(v18 - 8);
  v89 = &v65 - v19;
  v20 = type metadata accessor for UUID();
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = *(v87 + 64);
  __chkstk_darwin(v20);
  v70 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v69 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v65 - v26;
  v68 = &v65 - v26;
  v28 = type metadata accessor for RDPublicTemplate();
  v65 = *(v28 - 8);
  v29 = *(v65 + 64);
  __chkstk_darwin(v28 - 8);
  v67 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10042A1BC(a4, v67);
  v30 = *(v23 + 16);
  v31 = v27;
  v32 = v22;
  v66 = v22;
  v30(v31, v72, v22);
  v33 = v87;
  (*(v87 + 16))(&v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v74, v88);
  v30(&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v32);
  sub_10012F78C(v73, v89);
  v34 = (*(v65 + 80) + 40) & ~*(v65 + 80);
  v35 = v34 + v29;
  v36 = *(v23 + 80);
  v37 = (v36 + v35 + 1) & ~v36;
  v38 = v24 + 7;
  v39 = (v24 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v33 + 80) + v39 + 8) & ~*(v33 + 80);
  v41 = (v21 + v36 + v40) & ~v36;
  v74 = (v38 + v41) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (*(v75 + 80) + v42 + 16) & ~*(v75 + 80);
  v43 = (v76 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v90;
  v77 &= 1u;
  *(v44 + 24) = v77;
  *(v44 + 32) = v91;
  sub_10042A158(v67, v44 + v34);
  *(v44 + v35) = v80;
  v45 = *(v23 + 32);
  v46 = v44 + v37;
  v47 = v79;
  v48 = v66;
  v45(v46, v68, v66);
  v49 = v81;
  *(v44 + v39) = v81;
  v50 = v49;
  v51 = v44 + v40;
  v52 = v78;
  (*(v87 + 32))(v51, v70, v88);
  v45(v44 + v41, v69, v48);
  v53 = v84;
  *(v44 + v74) = v52;
  *(v44 + v73) = v47;
  *(v44 + v72) = v53;
  v54 = (v44 + v42);
  v55 = v83;
  *v54 = v82;
  v54[1] = v55;
  sub_10012F7FC(v89, v44 + v75);
  *(v44 + v43) = v85;
  if (v86)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1005AFAE0;
    *(v56 + 24) = v44;
    v96 = sub_1000529DC;
    v97 = v56;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_10000F160;
    v95 = &unk_1008F9090;
    v57 = _Block_copy(&aBlock);
    sub_100138D40(v90, v77);
    v58 = v91;
    v59 = v50;
    v60 = v52;

    [v59 performBlockAndWait:v57];

    _Block_release(v57);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v96 = sub_1005AFAE0;
  v97 = v44;
  aBlock = _NSConcreteStackBlock;
  v93 = 1107296256;
  v94 = sub_100019200;
  v95 = &unk_1008F9040;
  v61 = _Block_copy(&aBlock);
  sub_100138D40(v90, v77);
  v62 = v91;
  v63 = v50;
  v64 = v52;

  [v63 performBlock:v61];

  _Block_release(v61);
}

id sub_1005AD998(void (*a1)(void, void), char a2, void *a3, void *a4, int a5, uint64_t a6, void *a7, NSObject *a8, NSObject *a9, NSObject *a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, void), uint64_t a14, uint64_t a15, void *a16)
{
  v280 = a8;
  v298 = a7;
  v300 = a6;
  v297 = a4;
  v295 = a1;
  v19 = a16;
  v291 = a14;
  v294 = a13;
  v293 = a12;
  v292 = a11;
  v296 = a10;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v282 = &v271[-v22];
  v23 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v279 = &v271[-v25];
  v26 = type metadata accessor for Date();
  v299 = *(v26 - 8);
  isa = v299[8].isa;
  __chkstk_darwin(v26);
  v285 = &v271[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v289 = &v271[-v30];
  __chkstk_darwin(v31);
  v33 = &v271[-v32];
  __chkstk_darwin(v34);
  v36 = &v271[-v35];
  __chkstk_darwin(v37);
  v283 = &v271[-v38];
  __chkstk_darwin(v39);
  v286 = &v271[-v40];
  __chkstk_darwin(v41);
  v290 = &v271[-v42];
  __chkstk_darwin(v43);
  v45 = &v271[-v44];
  v288 = type metadata accessor for RDPublicTemplate();
  v46 = *(*(v288 - 8) + 64);
  __chkstk_darwin(v288);
  __chkstk_darwin(v47);
  v49 = &v271[-v48];
  __chkstk_darwin(v50);
  __chkstk_darwin(v51);
  v55 = &v271[-v54];
  if (a2)
  {
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    v57 = sub_100006654(v56, qword_10094D970);
    sub_10042A1BC(v297, v49);
    v58 = v299[2].isa;
    v283 = v299 + 2;
    v282 = v58;
    (v58)(v36, v300, v26);
    v59 = a3;
    v60 = v295;
    sub_100138D40(v295, 1);
    v286 = v57;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    sub_100138D4C(v60, 1);
    v63 = os_log_type_enabled(v61, v62);
    v287 = v26;
    v297 = v59;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v284 = a5;
      v66 = v65;
      v279 = v65;
      v281 = swift_slowAlloc();
      v301 = a16;
      v302 = v281;
      *v64 = 136447490;
      swift_getMetatypeMetadata();
      v67 = String.init<A>(describing:)();
      LODWORD(v280) = v62;
      v69 = v33;
      v70 = sub_10000668C(v67, v68, &v302);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2114;
      *(v64 + 14) = v59;
      *v66 = v59;
      *(v64 + 22) = 2082;
      v71 = *(v288 + 32);
      v72 = v59;
      v73 = sub_10013FBFC();
      v74 = [(objc_class *)v73 recordName];

      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v33 = v69;
      v19 = a16;
      v60 = v295;
      sub_1003B52F4(v49);
      v78 = sub_10000668C(v75, v77, &v302);

      *(v64 + 24) = v78;
      *(v64 + 32) = 2082;
      v79 = Bool.yesno.getter();
      v81 = sub_10000668C(v79, v80, &v302);

      *(v64 + 34) = v81;
      *(v64 + 42) = 2082;
      swift_getErrorValue();
      v82 = Error.rem_errorDescription.getter();
      v84 = sub_10000668C(v82, v83, &v302);

      *(v64 + 44) = v84;
      *(v64 + 52) = 2048;
      v85 = v290;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v87 = v86;
      v88 = v299[1].isa;
      v88(v85, v287);
      v289 = v88;
      v88(v36, v287);
      v59 = v297;
      *(v64 + 54) = v87;
      _os_log_impl(&_mh_execute_header, v61, v280, "%{public}s: Failed to upload content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v64, 0x3Eu);
      sub_1000050A4(v279, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v26 = v287;
    }

    else
    {

      v289 = v299[1].isa;
      (v289)(v36, v26);
      sub_1003B52F4(v49);
    }

    v151 = sub_10034AE0C(v59, v298, &off_1008E4000, 0);
    sub_100034610(&unk_1008E4020);
    KeyPath = swift_getKeyPath();
    sub_10013206C(KeyPath, a15);

    [v151 updateChangeCount];

    v301 = 0;
    v153 = [v298 save:&v301];
    v154 = v301;
    if (v153)
    {
      (v282)(v33, v300, v26);
      v155 = v297;
      v156 = v154;
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        v301 = v19;
        v302 = v288;
        *v159 = 136446978;
        swift_getMetatypeMetadata();
        v161 = String.init<A>(describing:)();
        v163 = v19;
        v164 = sub_10000668C(v161, v162, &v302);

        *(v159 + 4) = v164;
        v19 = v163;
        *(v159 + 12) = 2114;
        *(v159 + 14) = v155;
        *v160 = v155;
        *(v159 + 22) = 2082;
        v165 = v155;
        v166 = Bool.yesno.getter();
        v168 = sub_10000668C(v166, v167, &v302);

        *(v159 + 24) = v168;
        *(v159 + 32) = 2048;
        v169 = v290;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v171 = v170;
        v172 = v169;
        v173 = v287;
        v174 = v289;
        (v289)(v172, v287);
        v174(v33, v173);
        *(v159 + 34) = v171;
        _os_log_impl(&_mh_execute_header, v157, v158, "%{public}s: Reverted template's mostRecentPublicLinkUpdateRequestDate {templateObjectID: %{public}@, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v159, 0x2Au);
        sub_1000050A4(v160, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        (v289)(v33, v26);
      }

      v60 = v295;
      v236 = v297;
    }

    else
    {
      v234 = v19;
      v235 = v301;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v236 = v297;
      v237 = v285;
      (v282)(v285, v300, v26);
      v238 = v236;
      swift_errorRetain();
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        v242 = swift_slowAlloc();
        v283 = v242;
        v288 = swift_slowAlloc();
        v301 = v234;
        v302 = v288;
        *v241 = 136447234;
        swift_getMetatypeMetadata();
        v243 = String.init<A>(describing:)();
        v286 = v239;
        v245 = sub_10000668C(v243, v244, &v302);
        LODWORD(v282) = v240;
        v246 = v245;

        *(v241 + 4) = v246;
        *(v241 + 12) = 2114;
        *(v241 + 14) = v238;
        v242->isa = v238;
        *(v241 + 22) = 2082;
        v247 = v238;
        v248 = Bool.yesno.getter();
        v250 = sub_10000668C(v248, v249, &v302);

        *(v241 + 24) = v250;
        *(v241 + 32) = 2082;
        swift_getErrorValue();
        v251 = Error.rem_errorDescription.getter();
        v253 = sub_10000668C(v251, v252, &v302);

        *(v241 + 34) = v253;
        v19 = v234;
        *(v241 + 42) = 2048;
        v254 = v290;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v256 = v255;
        v257 = v254;
        v258 = v287;
        v259 = v289;
        (v289)(v257, v287);
        v260 = v258;
        v60 = v295;
        v259(v237, v260);
        *(v241 + 44) = v256;
        v261 = v286;
        _os_log_impl(&_mh_execute_header, v286, v282, "%{public}s: Failed to revert template's mostRecentPublicLinkUpdateRequestDate {templateObjectID: %{public}@, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v241, 0x34u);
        sub_1000050A4(v283, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v236 = v297;
      }

      else
      {

        (v289)(v237, v26);
        v19 = v234;
      }
    }

    sub_1005ACD3C(v60, 1, v292, v236, v296, v293, v300, v294, v291, v19);
  }

  else
  {
    v276 = v53;
    v277 = v52;
    if (qword_100936610 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    v90 = sub_100006654(v89, qword_10094D970);
    sub_10042A1BC(v297, v55);
    v91 = v299;
    v281 = v299[2].isa;
    v285 = v299 + 2;
    (v281)(v45, v300, v26);
    v92 = a3;
    v278 = v90;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v273 = v96;
      v275 = swift_slowAlloc();
      v301 = a16;
      v302 = v275;
      *v95 = 136447234;
      swift_getMetatypeMetadata();
      v97 = String.init<A>(describing:)();
      v274 = v93;
      v99 = sub_10000668C(v97, v98, &v302);
      v272 = v94;
      v100 = v26;
      v101 = v92;
      v102 = v99;

      *(v95 + 4) = v102;
      *(v95 + 12) = 2114;
      *(v95 + 14) = v101;
      *v96 = v101;
      *(v95 + 22) = 2082;
      v103 = *(v288 + 32);
      v104 = v101;
      v105 = sub_10013FBFC();
      v106 = [(objc_class *)v105 recordName];

      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = a5;
      v110 = v109;

      v92 = v101;
      v26 = v100;
      sub_1003B52F4(v55);
      v111 = sub_10000668C(v107, v110, &v302);
      a5 = v108;
      v19 = a16;
      v91 = v299;

      *(v95 + 24) = v111;
      *(v95 + 32) = 2082;
      v112 = Bool.yesno.getter();
      v114 = sub_10000668C(v112, v113, &v302);

      *(v95 + 34) = v114;
      *(v95 + 42) = 2048;
      v115 = v290;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v117 = v116;
      v118 = v91[1].isa;
      v118(v115, v26);
      v295 = v118;
      v118(v45, v26);
      *(v95 + 44) = v117;
      v119 = v274;
      _os_log_impl(&_mh_execute_header, v274, v272, "%{public}s: Uploaded content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, elapsedSeconds: %f}", v95, 0x34u);
      sub_1000050A4(v273, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v295 = v91[1].isa;
      v295(v45, v26);
      sub_1003B52F4(v55);
    }

    v120 = sub_10034AE0C(v92, v298, 0, 0);
    v284 = a5;
    v175 = v120;
    v275 = v92;
    v274 = a9;
    v176 = type metadata accessor for UUID();
    v177 = *(v176 - 8);
    v178 = v279;
    (*(v177 + 16))(v279, v280, v176);
    (*(v177 + 56))(v178, 0, 1, v176);
    v179 = swift_getKeyPath();
    sub_10013411C(v179, v178);

    sub_1000050A4(v178, &unk_100939D90, "8\n\r");
    v180 = v296;
    v280 = v296;
    REMCDTemplate.publicLinkConfiguration.setter(v180);
    v181 = [v175 createResolutionTokenMapIfNecessary];
    v182 = String._bridgeToObjectiveC()();
    [v181 updateForKey:v182];

    v183 = v286;
    static Date.now.getter();
    v184 = v282;
    v185 = v281;
    (v281)(v282, v183, v26);
    v186 = v91[7].isa;
    v186(v184, 0, 1, v26);
    v187 = swift_getKeyPath();
    sub_10013206C(v187, v184);

    sub_1000050A4(v184, &unk_100938850, qword_100795AE0);
    if ((a5 & 1) == 0)
    {
      (v185)(v184, v286, v26);
      v186(v184, 0, 1, v26);
      v188 = swift_getKeyPath();
      sub_10013206C(v188, v184);

      sub_1000050A4(v184, &unk_100938850, qword_100795AE0);
    }

    (v185)(v184, v274, v26);
    v186(v184, 0, 1, v26);
    v189 = swift_getKeyPath();
    sub_10013206C(v189, v184);

    sub_1000050A4(v184, &unk_100938850, qword_100795AE0);
    [v175 updateChangeCount];
    v190 = REMCDTemplate.publicLink.getter();
    v191 = v283;
    if (v190)
    {
      v192 = v190;
      v193 = v299;
      v295(v286, v26);

      v301 = 0;
      v194 = [v298 save:&v301];
      v195 = v301;
      v196 = v275;
      if (v194)
      {
        v296 = v193 + 1;
        v197 = v276;
        sub_10042A1BC(v297, v276);
        (v281)(v191, v300, v26);
        v198 = v196;
        v199 = v195;
        v200 = v192;
        v201 = Logger.logObject.getter();
        v202 = static os_log_type_t.default.getter();

        v299 = v198;
        LODWORD(v289) = v202;
        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v282 = v204;
          v286 = swift_slowAlloc();
          v301 = v19;
          v302 = v286;
          *v203 = 136447490;
          swift_getMetatypeMetadata();
          v205 = String.init<A>(describing:)();
          v285 = v201;
          v207 = v200;
          v208 = sub_10000668C(v205, v206, &v302);

          *(v203 + 4) = v208;
          *(v203 + 12) = 2114;
          v209 = v299;
          *(v203 + 14) = v299;
          *v204 = v209;
          *(v203 + 22) = 2082;
          v210 = *(v288 + 32);
          v211 = v209;
          v212 = sub_10013FBFC();
          v213 = [(objc_class *)v212 recordName];

          v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v297 = v19;
          v216 = v215;

          sub_1003B52F4(v197);
          v217 = sub_10000668C(v214, v216, &v302);

          *(v203 + 24) = v217;
          *(v203 + 32) = 2082;
          v218 = Bool.yesno.getter();
          v220 = sub_10000668C(v218, v219, &v302);

          *(v203 + 34) = v220;
          *(v203 + 42) = 2082;
          v221 = v207;
          v222 = [v207 description];
          v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v225 = v224;

          v19 = v297;
          v226 = sub_10000668C(v223, v225, &v302);

          *(v203 + 44) = v226;
          *(v203 + 52) = 2048;
          v227 = v290;
          Date.init()();
          v228 = v283;
          Date.timeIntervalSince(_:)();
          v230 = v229;
          v231 = v227;
          v232 = v295;
          v295(v231, v26);
          v232(v228, v26);
          *(v203 + 54) = v230;
          v233 = v285;
          _os_log_impl(&_mh_execute_header, v285, v289, "%{public}s: Saved template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, publicLink: %{public}s, elapsedSeconds: %f}", v203, 0x3Eu);
          sub_1000050A4(v282, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v200 = v221;
        }

        else
        {

          v295(v191, v26);
          sub_1003B52F4(v197);
        }

        v269 = v299;
        v270 = v200;
        sub_1005ACD3C(v192, 0, v292, v269, v280, v293, v300, v294, v291, v19);

        return [v298 reset];
      }

      v141 = v19;
      v267 = v301;
      v265 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v266 = v289;
    }

    else
    {
      v141 = v19;
      type metadata accessor for REMCDTemplate();
      v262 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v264 = String._bridgeToObjectiveC()();
      v265 = [v262 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v264];

      swift_willThrow();
      v295(v286, v26);
      v266 = v289;
      v196 = v275;
    }

    v121 = v277;
    sub_10042A1BC(v297, v277);
    (v281)(v266, v300, v26);
    v122 = v196;
    swift_errorRetain();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v283 = v126;
      v286 = swift_slowAlloc();
      v301 = v141;
      v302 = v286;
      *v125 = 136447490;
      swift_getMetatypeMetadata();
      v127 = String.init<A>(describing:)();
      LODWORD(v285) = v124;
      v129 = sub_10000668C(v127, v128, &v302);

      *(v125 + 4) = v129;
      *(v125 + 12) = 2114;
      *(v125 + 14) = v122;
      v126->isa = v122;
      v297 = v141;
      *(v125 + 22) = 2082;
      v130 = *(v288 + 32);
      v131 = v122;
      v132 = sub_10013FBFC();
      v133 = [(objc_class *)v132 recordName];

      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v135;

      sub_1003B52F4(v121);
      v137 = sub_10000668C(v134, v136, &v302);

      *(v125 + 24) = v137;
      *(v125 + 32) = 2082;
      v138 = Bool.yesno.getter();
      v140 = sub_10000668C(v138, v139, &v302);

      *(v125 + 34) = v140;
      *(v125 + 42) = 2082;
      v141 = v297;
      swift_getErrorValue();
      v142 = Error.rem_errorDescription.getter();
      v144 = sub_10000668C(v142, v143, &v302);

      *(v125 + 44) = v144;
      *(v125 + 52) = 2048;
      v145 = v290;
      Date.init()();
      v146 = v289;
      Date.timeIntervalSince(_:)();
      v148 = v147;
      v149 = v145;
      v150 = v295;
      v295(v149, v26);
      v150(v146, v26);
      *(v125 + 54) = v148;
      _os_log_impl(&_mh_execute_header, v123, v285, "%{public}s: Failed to save template's public link {templateObjectID: %{public}@, recordName: %{public}s, hasPublicLinkPriorToTemplateOperation: %{public}s, error: %{public}s, elapsedSeconds: %f}", v125, 0x3Eu);
      sub_1000050A4(v283, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v295(v266, v26);
      sub_1003B52F4(v121);
    }

    swift_errorRetain();
    sub_1005ACD3C(v265, 1, v292, v122, v296, v293, v300, v294, v291, v141);
  }

  return [v298 reset];
}

uint64_t sub_1005AF738()
{
  sub_10000607C((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1005AF7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a8;
  v21 = a9;
  v16 = sub_1000103CC(&v19);
  (*(*(a8 - 8) + 32))(v16, a3, a8);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_100054B6C(&v19, v17 + 32);
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = a6;
  return v17;
}

void sub_1005AF878(uint64_t a1, char a2)
{
  v3 = *(type metadata accessor for RDPublicTemplate() - 8);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v4 = v19 + *(v3 + 64);
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 1) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v6 + v11) & ~v6;
  v13 = (v8 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v18 = (*(v17 + 80) + v16 + 16) & ~*(v17 + 80);
  sub_1005AD244(a1, a2 & 1, *(v2 + 16), v2 + v19, *(v2 + v4), v2 + v7, *(v2 + v9), v2 + v11, v2 + v12, *(v2 + v13), *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + v16 + 8), v2 + v18, *(v2 + v18 + *(v17 + 64)), *(v2 + ((v18 + *(v17 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id sub_1005AFAE0()
{
  v1 = *(type metadata accessor for RDPublicTemplate() - 8);
  v18 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = v18 + *(v1 + 64);
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v2 + v4 + 1) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v4 + v9) & ~v4;
  v11 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v16 = (*(v15 + 80) + v14 + 16) & ~*(v15 + 80);
  return sub_1005AD998(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + v18), *(v0 + v2), v0 + v5, *(v0 + v7), (v0 + v9), (v0 + v10), *(v0 + v11), *(v0 + v12), *(v0 + v13), *(v0 + v14), *(v0 + v14 + 8), v0 + v16, *(v0 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1005AFD38(void *a1)
{
  v2 = v1;
  v50 = 0;
  v4 = [v2 existingObjectWithID:a1 error:&v50];
  v5 = v50;
  if (!v4)
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = [a1 persistentStore];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 identifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        v13 = [v2 persistentStoreCoordinator];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 persistentStoreForIdentifier:v9];

          if (!v15)
          {
            if (qword_100936618 != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            sub_100006654(v29, qword_10094DA50);
            v30 = v2;

            v31 = a1;
            swift_errorRetain();
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v32, v33))
            {
              v48 = v33;
              log = v32;
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *v34 = 138413314;
              *(v34 + 4) = v30;
              *v35 = v30;
              *(v34 + 12) = 2080;
              v36 = [v30 persistentStoreCoordinator];
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

              v42 = sub_10000668C(v39, v41, &v50);

              *(v34 + 14) = v42;
              *(v34 + 22) = 2080;
              v43 = sub_10000668C(v10, v12, &v50);

              *(v34 + 24) = v43;
              *(v34 + 32) = 2112;
              *(v34 + 34) = v31;
              v35[1] = v31;
              *(v34 + 42) = 2080;
              swift_getErrorValue();
              v44 = v31;
              v45 = Error.localizedDescription.getter();
              v47 = sub_10000668C(v45, v46, &v50);

              *(v34 + 44) = v47;
              _os_log_impl(&_mh_execute_header, log, v48, "The objectID's store does not exist in the PSC of MOC. This is an account store just got removed? {moc: %@, psc: %s, storeID: %s, objectID: %@, error: %s}", v34, 0x34u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();

              goto LABEL_13;
            }

LABEL_15:

            return 0;
          }

          v9 = v15;
        }

        else
        {
        }
      }
    }

    if (qword_100936618 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094DA50);
    v17 = v2;
    v18 = a1;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v20 = 138412802;
      *(v20 + 4) = v17;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v18;
      *v21 = v17;
      v21[1] = v18;
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v23 = v17;
      v24 = v18;
      v25 = Error.localizedDescription.getter();
      v27 = sub_10000668C(v25, v26, &v50);

      *(v20 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v14, v19, "Failed to fetch object with ID {moc: %@, objectID: %@, error: %s}", v20, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v22);

LABEL_13:

      return 0;
    }

    goto LABEL_15;
  }

  return v4;
}

uint64_t sub_1005B0358()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DA50);
  v1 = sub_100006654(v0, qword_10094DA50);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1005B0420(unint64_t a1)
{
  v9 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_1005B0544(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_1005B0544(void *a1, id *a2)
{
  v4 = *a2;
  v5 = [*a2 entityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_1005B0850();
  if (v9[2])
  {
    v10 = sub_100005F4C(v6, v8);
    v12 = v11;

    if (v12)
    {
      v13 = (v9[7] + 16 * v10);
      v15 = *v13;
      v14 = v13[1];

      v16 = v4;
      v17 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *a1;
      v36 = *a1;
      v21 = sub_100005F4C(v15, v14);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        __break(1u);
      }

      else
      {
        v2 = v20;
        if (v19[3] < v24)
        {
          sub_1003724C0(v24, isUniquelyReferenced_nonNull_native);
          v19 = v36;
          v25 = sub_100005F4C(v15, v14);
          if ((v2 & 1) != (v26 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v21 = v25;
          *a1 = v36;
          if ((v2 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_16:

LABEL_20:
          v34 = (v19[7] + 8 * v21);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v35 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          return;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          *a1 = v19;
          if (v20)
          {
            goto LABEL_16;
          }

LABEL_19:
          sub_1002CB9B4(v21, v15, v14, _swiftEmptyArrayStorage, v19);
          goto LABEL_20;
        }
      }

      sub_100377A3C();
      v19 = v36;
      *a1 = v36;
      if (v2)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_100936618 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10094DA50);
  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unknown root entity name for managed object ID {moid: %@}", v31, 0xCu);
    sub_100039860(v32);
  }
}

void *sub_1005B0850()
{
  v0 = sub_1000F5104(&qword_10094DAD8, &unk_1007B36F0);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v22 - v3;
  if (qword_100936620 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = qword_10094DA68;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = v1 + 13;
    v8 = v1[13];
    v27 = enum case for REMCache.ExecutionMode.synchronously<A, B>(_:);
    v8(v4);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v5;

    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    v11 = v1[1];
    ++v1;
    v10 = v11;
    v11(v4, v0);
    swift_beginAccess();
    v12 = *(v6 + 16);

    if (v12)
    {
      return v12;
    }

    v25 = v4;
    v26 = v7;
    v13 = v27;
    v23 = v10;
    v24 = v8;
    v14 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = _swiftEmptyDictionarySingleton;
    v29 = _swiftEmptyDictionarySingleton;
    v16 = *(v15 + 16);
    if (!v16)
    {
      v19 = v13;
      v18 = v0;
      v4 = v25;
LABEL_9:

      v24(v4, v19, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v12;
      *(v20 + 24) = v5;

      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      v23(v4, v18);
      return v12;
    }

    v22 = v0;
    v17 = 0;
    v4 = v25;
    v0 = v26;
    while (v17 < *(v15 + 16))
    {
      v28 = *(v15 + 32 + 8 * v17);
      sub_1005B0E2C(&v29, &v28);
      if (v16 == ++v17)
      {
        v12 = v29;
        v18 = v22;
        v19 = v27;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

uint64_t sub_1005B0C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B0850();
  if (v4[2] && (v5 = sub_100005F4C(a1, a2), (v6 & 1) != 0))
  {
    v7 = (v4[7] + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t type metadata accessor for RDRootEntityNameByEntityNameCache()
{
  result = qword_10094DA88;
  if (!qword_10094DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005B0E2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector:"cdEntityName"] & 1) == 0)
  {
    goto LABEL_35;
  }

  v63 = ObjCClassFromMetadata;
  v4 = [ObjCClassFromMetadata cdEntityName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v63;
  if ([v63 respondsToSelector:"cdEntityName"])
  {
    v9 = [v63 cdEntityName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v8 = v63;
    v13 = v12;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = a1;
  sub_10031D9C4(v14, v13, v5, v7);
  v16 = [v8 entity];
  v17 = sub_1005B1224(v16);

  v18 = 0;
  v59 = v17 + 7;
  v64 = v17;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17[7];
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
LABEL_15:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = (v64[6] + ((v18 << 10) | (16 * v27)));
    v29 = *v28;
    v30 = v28[1];
    if ([v8 respondsToSelector:"cdEntityName"])
    {

      v31 = [v8 cdEntityName];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v32;

      v33 = *v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v15;
      v65 = *v15;
      v36 = v29;
      v38 = sub_100005F4C(v29, v30);
      v39 = *(v35 + 16);
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_33;
      }

      v42 = v37;
      if (*(v35 + 24) >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v63;
          if (v37)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_100373664();
          v8 = v63;
          if (v42)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_10036A8F0(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_100005F4C(v36, v30);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_36;
        }

        v38 = v43;
        v8 = v63;
        if (v42)
        {
LABEL_8:

          v23 = v65;
          v24 = (v65[7] + 16 * v38);
          v25 = v24[1];
          *v24 = v61;
          v24[1] = v62;

          goto LABEL_9;
        }
      }

      v23 = v65;
      v65[(v38 >> 6) + 8] |= 1 << v38;
      v53 = (v65[6] + 16 * v38);
      *v53 = v36;
      v53[1] = v30;
      v54 = (v65[7] + 16 * v38);
      *v54 = v61;
      v54[1] = v62;
      v55 = v65[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_34;
      }

      v65[2] = v57;
LABEL_9:
      v15 = a1;
      *a1 = v23;
    }

    else
    {
      v45 = *v15;

      v46 = sub_100005F4C(v29, v30);
      LOBYTE(v45) = v47;

      if (v45)
      {
        v48 = *v15;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v50 = *v15;
        v66 = *v15;
        if (!v49)
        {
          sub_100373664();
          v50 = v66;
        }

        v51 = *(*(v50 + 48) + 16 * v46 + 8);

        v52 = *(*(v50 + 56) + 16 * v46 + 8);

        sub_1003328B8(v46, v50);
        *v15 = v50;
        v8 = v63;
      }
    }
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
    }

    v21 = v59[v26];
    ++v18;
    if (v21)
    {
      v18 = v26;
      goto LABEL_15;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1005B1224(void *a1)
{
  v1 = [a1 subentities];
  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = _swiftEmptySetSingleton;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 name];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        sub_100378434(&v16, v11, v13);
      }

      v5 = sub_1005B1224(v7);
      sub_1003564A8(v5);

      ++v4;
      if (v8 == i)
      {
        v14 = v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v14 = _swiftEmptySetSingleton;
LABEL_17:

  return v14;
}

uint64_t sub_1005B13C8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v24[3] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v13 = type metadata accessor for RDRootEntityNameByEntityNameCache();
  v28 = v13;
  sub_1000F5104(&qword_10094DAE0, &qword_1007B3700);
  v14 = String.init<A>(reflecting:)();
  v24[1] = v15;
  v24[2] = v14;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = *(v13 + 48);
  v17 = *(v13 + 52);
  v18 = swift_allocObject();
  v19 = qword_10094DA70;
  v28 = v13;
  String.init<A>(reflecting:)();
  v20 = objc_allocWithZone(NSString);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 initWithString:v21];

  *(v18 + v19) = v22;
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_10094DA68 = result;
  return result;
}

uint64_t sub_1005B1768()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = qword_10094DA70;
  sub_1000F5104(&qword_10094DAE0, &qword_1007B3700);
  String.init<A>(reflecting:)();
  v5 = objc_allocWithZone(NSString);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithString:v6];

  *(v3 + v4) = v7;
  return REMCache.init(cacheQueue:countLimit:)();
}

uint64_t sub_1005B1850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + qword_10094DA70);
  v5 = REMCacheContext.object(forKey:)();
  if (v5)
  {
    v6 = v5;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
}

void sub_1005B18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = *(a3 + qword_10094DA70);
  isa = v4.super.isa;
  REMCacheContext.setObject(_:forKey:)();
}

uint64_t sub_1005B1970()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005B19D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DAE8);
  v1 = sub_100006654(v0, qword_10094DAE8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B1AA0(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v288 = a3;
  v263 = a2;
  v289 = a1;
  v235 = a5;
  v238 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  v6 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v236 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v237 = *(v241 - 8);
  v8 = *(v237 + 64);
  __chkstk_darwin(v241);
  v240 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v257 = &v227 - v11;
  v247 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v246 = *(v247 - 8);
  v12 = *(v246 + 64);
  __chkstk_darwin(v247);
  v233 = &v227 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v14 = *(*(v244 - 8) + 64);
  __chkstk_darwin(v244);
  v245 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v260 = &v227 - v17;
  v18 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v231 = &v227 - v20;
  v255 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v254 = *(v255 - 8);
  v21 = *(v254 + 64);
  __chkstk_darwin(v255);
  v253 = &v227 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v258 = &v227 - v24;
  v261 = type metadata accessor for REMRemindersListDataView.Diff();
  v248 = *(v261 - 8);
  v25 = *(v248 + 64);
  __chkstk_darwin(v261);
  v239 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v251 = &v227 - v28;
  __chkstk_darwin(v29);
  v234 = &v227 - v30;
  __chkstk_darwin(v31);
  v264 = &v227 - v32;
  v33 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v249 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v243 = &v227 - v37;
  __chkstk_darwin(v38);
  v262 = &v227 - v39;
  __chkstk_darwin(v40);
  v266 = &v227 - v41;
  v269 = _s9UtilitiesO12SortingStyleOMa();
  v42 = *(*(v269 - 8) + 64);
  __chkstk_darwin(v269);
  v272 = &v227 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v277 = (&v227 - v45);
  v278 = _s10PredicatesOMa(0);
  v46 = *(*(v278 - 8) + 64);
  __chkstk_darwin(v278);
  v250 = &v227 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v271 = (&v227 - v49);
  v50 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v275 = *(v50 - 8);
  v276 = v50;
  v51 = *(v275 + 64);
  __chkstk_darwin(v50);
  v270 = &v227 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v281 = &v227 - v54;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v273 = *(Subtasks - 8);
  v274 = Subtasks;
  v56 = *(v273 + 64);
  __chkstk_darwin(Subtasks);
  v286 = (&v227 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v282 = *(v284 - 8);
  v58 = *(v282 + 64);
  __chkstk_darwin(v284);
  v232 = &v227 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v256 = &v227 - v61;
  __chkstk_darwin(v62);
  v259 = &v227 - v63;
  __chkstk_darwin(v64);
  v285 = &v227 - v65;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v283 = *(Configuration - 8);
  v66 = *(v283 + 64);
  __chkstk_darwin(Configuration);
  v252 = &v227 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v242 = &v227 - v69;
  __chkstk_darwin(v70);
  v268 = &v227 - v71;
  __chkstk_darwin(v72);
  v74 = &v227 - v73;
  __chkstk_darwin(v75);
  v77 = &v227 - v76;
  v280 = a4;
  v78 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v79 = [v78 objectID];

  v80 = REMObjectID.codable.getter();
  type metadata accessor for REMListStableSortingDataView.Invocation();
  v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v267 = xmmword_1007953F0;
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = v80;
  v83 = v80;
  sub_1003915C4(inited);
  v85 = v84;
  swift_setDeallocating();
  v86 = *(inited + 16);
  v87 = v288;
  swift_arrayDestroy();
  v88 = v287;
  v89 = sub_10026EC90(v289, v87, v85);
  if (v88)
  {

    return;
  }

  v90 = v89;
  v229 = v77;
  v230 = v74;
  v287 = 0;
  v91 = v281;

  v92 = sub_10035363C(v83, v90);

  if (!v92)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v83];
    swift_willThrow();

    return;
  }

  v93 = [v92 accountID];
  v94 = [v289 persistentStoreOfAccountWithAccountID:v93];

  v228 = v92;
  if (v94)
  {
    v95 = swift_allocObject();
    *(v95 + 16) = v267;
    *&v267 = v95;
    *(v95 + 32) = v94;
  }

  else
  {
    *&v267 = 0;
  }

  v96 = Configuration;
  v97 = v283;
  v98 = v91;
  v99 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v100 = v229;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v101 = *(v97 + 8);
  v283 = v97 + 8;
  v101(v100, v96);
  v102 = v230;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v101(v102, v96);
  v103 = v268;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v268 = v101;
  v101(v103, v96);
  v104 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
  v281 = v99;
  v105 = [v99 objectID];
  v106 = v271;
  *v271 = v105;
  v107 = (v282 + 16);
  v108 = v285;
  v230 = *(v282 + 16);
  (v230)(v106 + v104, v285, v284);
  swift_storeEnumTagMultiPayload();
  v109 = sub_100043AA8();
  sub_1001A4F3C(v106, _s10PredicatesOMa);
  v110 = v275;
  v111 = v276;
  v112 = v270;
  (*(v275 + 16))(v270, v98, v276);
  v113 = v272;
  swift_storeEnumTagMultiPayload();
  v114 = v277;
  sub_1005368D8(v112, v113, v277);
  v115 = v289;
  v116 = v287;
  v117 = sub_100536D54(v289, v109, v114, v108, v286, _swiftEmptyArrayStorage, v267);
  if (v116)
  {

    sub_1001A4F3C(v114, _s9UtilitiesO12SortingStyleOMa);
    (*(v110 + 8))(v98, v111);
    (*(v273 + 8))(v286, v274);
    (*(v282 + 8))(v285, v284);
    return;
  }

  v271 = v107;
  v272 = v117;

  sub_1001A4F3C(v114, _s9UtilitiesO12SortingStyleOMa);
  (*(v110 + 8))(v98, v111);
  (*(v273 + 8))(v286, v274);
  v118 = *(v282 + 8);
  v118(v285, v284);
  v119 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v120 = [v119 objectID];

  v121 = sub_1001BE2C0(v115, v120);
  v122 = sub_100270978(v121);
  v123 = sub_1001BD57C(v122, v272);

  v124 = v265;
  sub_1005B3A94(v289, v266);
  v125 = [v124 fetchResultTokenToDiffAgainst];
  sub_100534D44(v125, v264);
  v287 = 0;
  v285 = v118;
  v286 = v123;

  v126 = v242;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v127 = v258;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (v268)(v126, Configuration);
  v128 = v254;
  v129 = v253;
  v130 = v255;
  (*(v254 + 16))(v253, v127, v255);
  v131 = (*(v128 + 88))(v129, v130);
  if (v131 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v128 + 96))(v129, v130);
    v132 = *v129;
    v133 = Array<A>.reminders.getter();
    v134 = v132;
    v130 = v255;
    v281 = sub_10053DB98(v134, v133, v289, v288, v267);

    v277 = _swiftEmptyArrayStorage;
    v135 = v284;
    v136 = v250;
LABEL_16:
    v153 = v252;
    goto LABEL_17;
  }

  v135 = v284;
  v137 = v288;
  v136 = v250;
  v138 = v252;
  if (v131 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v128 = v254;
    v139 = v288;
    v140 = v253;
    (*(v254 + 96))(v253, v130);
    v281 = sub_10053E698(*v140, v264, v289, v139, v267);

    v277 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  if (v131 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v128 = v254;
    v141 = v253;
    (*(v254 + 96))(v253, v130);
    v142 = *v141;
    v143 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v144 = v231;
    sub_100031B58(v141 + *(v143 + 48), v231, &qword_10094B8E0, &unk_1007AABD0);
    v145 = Array<A>.reminders.getter();
    v146 = v142;
    v147 = v289;
    v148 = v137;
    v149 = v137;
    v150 = v267;
    v281 = sub_10053DB98(v146, v145, v289, v148, v267);
    v151 = v147;
    v130 = v255;
    v277 = sub_10053EBE4(v144, v145, v151, v149, v150);

    v152 = v144;
    v136 = v250;
    sub_1000050A4(v152, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_16;
  }

  if (v131 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
LABEL_51:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_52;
  }

  v277 = _swiftEmptyArrayStorage;
  v281 = _swiftEmptyArrayStorage;
  v128 = v254;
  v153 = v138;
LABEL_17:
  v154 = v135;
  (*(v128 + 8))(v258, v130);
  v155 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v156 = [v155 objectID];

  *v136 = v156;
  swift_storeEnumTagMultiPayload();
  v288 = sub_100043AA8();
  sub_1001A4F3C(v136, _s10PredicatesOMa);
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v157 = v259;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v268)(v153, Configuration);
  v158 = v260;
  sub_100010364(v266, v260, &qword_100938A70, &qword_1007ACC60);
  v159 = v244;
  (v230)(v158 + *(v244 + 48), v157, v154);
  *(v158 + *(v159 + 64)) = v272;
  v160 = v245;
  sub_100010364(v158, v245, &qword_10093AE38, &unk_100798450);
  v161 = *(v159 + 48);
  v283 = *(v160 + *(v159 + 64));
  v162 = v262;
  sub_100031B58(v160, v262, &qword_100938A70, &qword_1007ACC60);
  v163 = v160 + v161;
  v164 = v162;
  v165 = v256;
  (*(v282 + 32))(v256, v163, v154);
  v166 = v243;
  sub_100010364(v164, v243, &qword_100938A70, &qword_1007ACC60);
  v167 = v246;
  v168 = v247;
  v169 = (*(v246 + 48))(v166, 1, v247);

  if (v169 != 1)
  {

    v181 = v166;
    v182 = v233;
    (*(v167 + 32))(v233, v181, v168);
    v183 = v284;
    v184 = v167;
    v185 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v186 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v184 + 8))(v182, v168);
    v187 = v165;
    v188 = v285;
    (v285)(v187, v183);
    sub_1000050A4(v262, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v260, &qword_10093AE38, &unk_100798450);
    (v188)(v259, v183);
    v175 = v261;
    v178 = v248;
    if (!__OFADD__(v185, v186))
    {
LABEL_21:
      v176 = v264;
      v177 = v266;
LABEL_22:
      v179 = v251;
      v180 = v234;
      v172 = v249;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_51;
  }

  v170 = v262;
  v171 = v288;
  sub_1000050A4(v166, &qword_100938A70, &qword_1007ACC60);
  v172 = v249;
  v173 = v285;
  if (*(v283 + 16))
  {

    v174 = v284;
    (v173)(v256, v284);
    sub_1000050A4(v170, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v260, &qword_10093AE38, &unk_100798450);
    (v173)(v259, v174);
    v175 = v261;
    v176 = v264;
    v177 = v266;
    v178 = v248;
    v179 = v251;
    v180 = v234;
LABEL_23:
    sub_100010364(v177, v172, &qword_100938A70, &qword_1007ACC60);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    if (qword_100936628 != -1)
    {
      swift_once();
    }

    v189 = type metadata accessor for Logger();
    sub_100006654(v189, qword_10094DAE8);
    v190 = *(v178 + 16);
    v190(v180, v176, v175);
    v288 = (v178 + 16);
    v286 = v190;
    v190(v179, v176, v175);
    v191 = v272;

    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 134218496;
      v195 = *(v191 + 16);

      *(v194 + 4) = v195;

      *(v194 + 12) = 2048;
      v196 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v196 & 0xC000000000000001) != 0)
      {
        v197 = __CocoaSet.count.getter();
        v179 = v251;
      }

      else
      {
        v197 = *(v196 + 16);
      }

      v201 = v239;

      v207 = *(v178 + 8);
      v285 = ((v178 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v289 = v207;
      v207(v180, v175);
      *(v194 + 14) = v197;
      *(v194 + 22) = 2048;
      v208 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v208 & 0xC000000000000001) != 0)
      {
        v209 = __CocoaSet.count.getter();
        v175 = v261;
      }

      else
      {
        v209 = *(v208 + 16);
      }

      v200 = v240;

      v289(v179, v175);
      *(v194 + 24) = v209;
      _os_log_impl(&_mh_execute_header, v192, v193, "reminders %ld updated %ld inserted %ld", v194, 0x20u);

      v202 = v241;
      v199 = v175;
    }

    else
    {
      v198 = *(v178 + 8);
      v285 = ((v178 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v198(v179, v175);
      v289 = v198;
      v198(v180, v175);

      swift_bridgeObjectRelease_n();
      v199 = v175;
      v200 = v240;
      v201 = v239;
      v202 = v241;
    }

    v210 = v237;
    v211 = v200;
    v212 = v257;
    (*(v237 + 16))(v211, v257, v202);
    v213 = v228;
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v214 = v201;
    v215 = v264;
    v286(v214, v264, v199);
    sub_1005B3D58(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    sub_1005B3D58(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v210 + 8))(v212, v202);
    v289(v215, v261);
    v216 = v266;
    goto LABEL_37;
  }

  v203 = v232;
  v204 = v284;
  (v230)(v232, v256, v284);
  v205 = (*(v282 + 88))(v203, v204);
  if (v205 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {

    (v173)(v203, v284);
    v175 = v261;
    v178 = v248;
    p_attr = (&stru_100923FF8 + 8);
LABEL_45:
    sub_100345DB0();
    v217 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
    v218 = [swift_getObjCClassFromMetadata() entity];
    [v217 setEntity:v218];

    [v217 setAffectedStores:0];
    [v217 setPredicate:v171];
    [v217 setFetchLimit:1];
    [v217 setAffectedStores:0];
    v219 = v287;
    NSManagedObjectContext.count<A>(for:)();
    v287 = v219;
    v220 = v260;
    if (v219)
    {

      v222 = v284;
      v221 = v285;
      (v285)(v256, v284);
      sub_1000050A4(v262, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v220, &qword_10093AE38, &unk_100798450);
      (v221)(v259, v222);
      (*(v178 + 8))(v264, v175);
      v216 = v266;
LABEL_37:
      sub_1000050A4(v216, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v224 = v284;
    v223 = v285;
    (v285)(v256, v284);
    sub_1000050A4(v262, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v220, &qword_10093AE38, &unk_100798450);
    (v223)(v259, v224);
    goto LABEL_21;
  }

  p_attr = &stru_100923FF8.attr;
  if (v205 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {

    (v173)(v203, v284);
LABEL_44:
    v175 = v261;
    v178 = v248;
    goto LABEL_45;
  }

  if (v205 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {

    goto LABEL_44;
  }

  if (v205 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {

    v225 = v284;
    v226 = v285;
    (v285)(v256, v284);
    sub_1000050A4(v262, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v260, &qword_10093AE38, &unk_100798450);
    (v226)(v259, v225);
    v175 = v261;
    v176 = v264;
    v177 = v266;
    v178 = v248;
    goto LABEL_22;
  }

LABEL_52:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1005B3A94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v9 = *(Configuration - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(Configuration);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v13 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v9 + 8))(v12, Configuration);
  if (v13)
  {
    v14 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
    v15 = [v14 objectID];

    *v7 = v15;
    swift_storeEnumTagMultiPayload();
    v16 = sub_100043AA8();
    sub_1001A4F3C(v7, _s10PredicatesOMa);
    sub_10053464C(v20, v16);
    if (!v2)
    {
      v17 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
    v18 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_1005B3D00(uint64_t a1)
{
  result = sub_1005B3D58(&qword_10094DB20, &type metadata accessor for REMRemindersListDataView.ListSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B3DA0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  return Future.init(_:)();
}

uint64_t sub_1005B3E28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = Future.init(_:)();
  swift_beginAccess();
  v7 = *(v1 + 16);

  return v6;
}

uint64_t sub_1005B3F08()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB38);
  v1 = sub_100006654(v0, qword_10094DB38);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B3FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100007F54();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.utility(_:), v6);

  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1005B490C;
  *(v14 + 24) = v11;
  aBlock[4] = sub_1005B48F4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F92D0;
  v15 = _Block_copy(aBlock);

  [ObjCClassFromMetadata waitForSyncEngineSystemAvailabilityBlockingQueue:a3 completionQueue:v13 completionBlock:v15];
  _Block_release(v15);
}

uint64_t sub_1005B41DC(uint64_t (*a1)(void))
{
  if (qword_100936630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094DB38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DADSystemAvailabilityChecker(Swift extension) systemAvailableFuture fulfilled", v5, 2u);
  }

  return a1(0);
}

void sub_1005B42D4(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if ([ObjCClassFromMetadata hasPassedBuddy])
  {

    LOBYTE(aBlock) = 0;
    a1(&aBlock);
  }

  else
  {
    sub_100007F54();
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.utility(_:), v13);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v21 = [objc_allocWithZone(DADBuddyStateObserver) initWithQueue:v20];
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_1005B4784;
    v22[4] = v18;
    v40 = sub_1005B4894;
    v41 = v22;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100019200;
    v39 = &unk_1008F91E0;
    v23 = _Block_copy(&aBlock);
    v24 = v21;

    [v24 setBuddyDidFinishHandler:v23];
    _Block_release(v23);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v40 = sub_1005B48A0;
    v41 = v25;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100019200;
    v39 = &unk_1008F9230;
    v26 = _Block_copy(&aBlock);
    v27 = v24;
    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v33 + 8))(v8, v5);
    (*(v31 + 8))(v12, v32);

    v28 = v34;
    swift_beginAccess();
    v29 = *(v28 + 16);
    *(v28 + 16) = v27;
  }
}

uint64_t sub_1005B4788(void *a1, uint64_t (*a2)(void))
{
  if (qword_100936630 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094DB38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DADBuddyStateObserver(Swift extension) hasPassedBuddyFuture fulfilled", v7, 2u);
  }

  [a1 stop];
  return a2(0);
}

uint64_t sub_1005B48B8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 1;
  return v2(&v5);
}

uint64_t sub_1005B4910()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB50);
  v1 = sub_100006654(v0, qword_10094DB50);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27[-v5 - 8];
  v7 = *(v1 + 16);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EF0(v30, v29);
    v10 = type metadata accessor for Date();
    if (swift_dynamicCast())
    {
      sub_10000607C(v30);
      v11 = *(v10 - 8);
      v12 = *(v11 + 56);
      v12(v6, 0, 1, v10);
      (*(v11 + 32))(a1, v6, v10);
      return (v12)(a1, 0, 1, v10);
    }

    else
    {
      v16 = *(*(v10 - 8) + 56);
      v16(v6, 1, 1, v10);
      sub_1001AAD5C(v6);
      if (qword_100936638 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094DB50);
      sub_100005EF0(v30, v29);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315138;
        sub_100005EF0(v29, v27);
        v22 = String.init<A>(describing:)();
        v24 = v23;
        sub_10000607C(v29);
        v25 = sub_10000668C(v22, v24, &v28);

        *(v20 + 4) = v25;
        sub_10000607C(v21);
      }

      else
      {

        sub_10000607C(v29);
      }

      sub_10000607C(v30);
      return (v16)(a1, 1, 1, v10);
    }
  }

  else
  {
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDate.setter(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  sub_10012F78C(a1, &v13 - v5);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v11 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v11];
  swift_unknownObjectRelease();

  return sub_1001AAD5C(a1);
}

void (*RDSynchronizedKeyValueStore.lastDismissedDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  RDSynchronizedKeyValueStore.lastDismissedDate.getter(v4);
  return sub_1005B4FF0;
}

void sub_1005B4FF0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_10012F78C(v3, v2);
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v2);
    sub_1001AAD5C(v3);
  }

  else
  {
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDateDidChangeExternally()()
{
  v0 = sub_1000F5104(&qword_10094DB68, &qword_1007B3738);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - v3;
  v7[1] = RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(0xD00000000000002ELL, 0x80000001007B3720);
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770);
  Publisher.filter(_:)();

  sub_10000CB48(&qword_10094DB80, &qword_10094DB68, &qword_1007B3738);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

BOOL sub_1005B5224(unsigned __int8 *a1)
{
  v1 = a1[8];
  if (v1 >= 2)
  {
    return v1 == 3;
  }

  v2 = (*a1 + 40);
  v3 = *(*a1 + 16) + 1;
  do
  {
    v4 = --v3 != 0;
    if (!v3)
    {
      break;
    }

    if (*(v2 - 1) == 0xD000000000000023 && 0x80000001007FD6B0 == *v2)
    {
      break;
    }

    v2 += 2;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
  return v4;
}

void (*sub_1005B5318(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  RDSynchronizedKeyValueStore.lastDismissedDate.getter(v4);
  return sub_1005B53D4;
}

void sub_1005B53D4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_10012F78C(v2, v3);
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v3);
    sub_1001AAD5C(v2);
  }

  else
  {
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v2);
  }

  free(v2);

  free(v3);
}

uint64_t sub_1005B5444()
{
  v1 = sub_1000F5104(&qword_10094DB68, &qword_1007B3738);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - v4;
  v6 = *v0;
  v9[1] = RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(0xD00000000000002ELL, 0x80000001007B3720);
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770);
  Publisher.filter(_:)();

  sub_10000CB48(&qword_10094DB80, &qword_10094DB68, &qword_1007B3738);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1005B560C()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDDisplayDateUpdater_significantTimeNotificationStream);
  v3 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = ObjectType;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = sub_1005B6BC8;
  *(v2 + 24) = v5;

  sub_1000FDA80(v6, v7);
}

void sub_1005B56DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayDateTimeZone];
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

void sub_1005B5744(uint64_t *a1, void **a2)
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
  [v2 setDisplayDateTimeZone:?];
}

uint64_t sub_1005B57B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB88);
  v1 = sub_100006654(v0, qword_10094DB88);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B587C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100936640 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_10094DB88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updating display dates in all stores due to significant time change…", v5, 2u);
    }

    v6 = [v1 persistentStoreCoordinator];
    v7 = [v6 persistentStores];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          sub_1005B5A88(v11);
        }
      }
    }
  }
}