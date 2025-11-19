Swift::Void __swiftcall REMCDAttachment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = String._bridgeToObjectiveC()();
  v26.receiver = v3;
  v26.super_class = REMCDAttachment;
  objc_msgSendSuper2(&v26, "mergeDataFromRecord:accountID:", from.super.isa, v5);

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

  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1001287DC(v9);

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  [v3 setReminder:v11];

  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  if (v24._object)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v3 setUti:v12];

  v13 = CKRecord.subscript.getter();
  if (v13 && (v25 = v13, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;

    v16 = _findStringSwitchCase(cases:string:)(&off_1008E2F38, v24);

    switch(v16)
    {
      case 0:

        sub_1003C25F8(from.super.isa);
        return;
      case 2:

        sub_1003C2C54(from.super.isa);
        return;
      case 1:

        sub_1003C25F8(from.super.isa);
        sub_1003C28E0();
        return;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100944EB0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24._countAndFlagsBits = v21;
    *v20 = 136315138;
    if (object)
    {
      v22 = countAndFlagsBits;
    }

    else
    {
      v22 = 7104878;
    }

    if (!object)
    {
      object = 0xE300000000000000;
    }

    v23 = sub_10000668C(v22, object, &v24._countAndFlagsBits);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "mergeData: Unknown attachment type {type: %s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  else
  {
  }
}

void sub_1003C3D14(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  __chkstk_darwin(v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v88 = v7;
    v89 = v4;
    v90 = v3;
    v20 = v1;
    v92 = a1;
    v93 = v20;
    v21 = [a1 encryptedValues];
    v22 = [v19 fileName];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = &protocol witness table for String;
      v28 = &type metadata for String;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v28 = 0;
      v27 = 0;
      v94[2] = 0;
    }

    v94[0] = v24;
    v94[1] = v26;
    v94[3] = v28;
    v94[4] = v27;
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v37 = [v19 fileName];
    if (v37)
    {
      v38 = v37;
      v39 = [v93 storeControllerManagedObjectContext];
      if (v39 && (v40 = v39, v41 = [v39 storeController], v40, v41))
      {
        v87 = [v93 remObjectID];
        if (v87)
        {
          v42 = [v93 account];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 remObjectID];

            if (v44)
            {
              v86 = v41;
              v45 = [v44 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v91;
              (*(v91 + 32))(v17, v14, v8);
              v47 = [v87 uuid];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              isa = UUID._bridgeToObjectiveC()().super.isa;
              v49 = *(v46 + 8);
              v49(v11, v8);
              v50 = UUID._bridgeToObjectiveC()().super.isa;
              v51 = [v19 sha512Sum];
              v52 = v86;
              v53 = [v86 URLForAttachmentFile:isa accountID:v50 fileName:v38 sha512Sum:v51];

              v54 = v88;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v55 = objc_allocWithZone(CKAsset);
              URL._bridgeToObjectiveC()(v56);
              v58 = v57;
              v59 = [v55 initWithFileURL:v57];

              (*(v89 + 8))(v54, v90);
              v49(v17, v8);
              v60 = v59;
              CKRecord.subscript.setter();

              return;
            }
          }

          if (qword_100935FB0 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_100006654(v69, qword_100944EB0);
          v70 = v87;
          v71 = v87;
          v72 = v92;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v75 = 138543618;
            *(v75 + 4) = v71;
            *(v75 + 12) = 2112;
            *(v75 + 14) = v72;
            *v76 = v70;
            v76[1] = v72;
            v77 = v71;
            v78 = v72;
            _os_log_impl(&_mh_execute_header, v73, v74, "File attachment has no account {remObjectID: %{public}@, record: %@}", v75, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v71 = v73;
            v73 = v41;
            v41 = v77;
          }
        }

        else
        {

          if (qword_100935FB0 != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          sub_100006654(v79, qword_100944EB0);
          v80 = v92;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v83 = 138412290;
            *(v83 + 4) = v80;
            *v84 = v80;
            v85 = v80;
            _os_log_impl(&_mh_execute_header, v81, v82, "File attachment has no remObjectID {record: %@}", v83, 0xCu);
            sub_1000050A4(v84, &unk_100938E70, &unk_100797230);
          }
        }
      }

      else
      {

        if (qword_100935FB0 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100006654(v61, qword_100944EB0);
        v62 = v92;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 138412290;
          *(v65 + 4) = v62;
          *v66 = v62;
          v67 = v62;
          _os_log_impl(&_mh_execute_header, v63, v64, "No store controller for updating file attachment {record: %@}", v65, 0xCu);
          sub_1000050A4(v66, &unk_100938E70, &unk_100797230);
        }
      }
    }

    CKRecord.subscript.setter();
  }

  else
  {
    if (qword_100935FB0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100944EB0);
    v30 = v1;
    v93 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v94[0] = v33;
      *v32 = 136315138;
      v94[5] = swift_getObjectType();
      sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
      v34 = String.init<A>(describing:)();
      v36 = sub_10000668C(v34, v35, v94);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v93, v31, "Not a file attachment {Type: %s}", v32, 0xCu);
      sub_10000607C(v33);

      return;
    }
  }

  v68 = v93;
}

CKRecord_optional __swiftcall REMCDAttachment.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v69 - v12;
  v77.receiver = v1;
  v77.super_class = REMCDAttachment;
  v15 = objc_msgSendSuper2(&v77, "newlyCreatedRecord", v11);
  if (!v15)
  {
    goto LABEL_38;
  }

  v69 = v5;
  v16 = [v1 uti];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = &protocol witness table for String;
    v22 = &type metadata for String;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v74 = 0;
  }

  v72 = v18;
  v73 = v20;
  v75 = v22;
  v76 = v21;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  v23 = [v1 reminder];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 recordID];
  }

  else
  {
    v25 = 0;
  }

  v26 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v25];

  CKRecord.subscript.setter();
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v75 = &type metadata for String;
    v76 = &protocol witness table for String;
    v72 = 1701603654;
    v73 = 0xE400000000000000;
    v29 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v30 = [v28 fileSize];
    v75 = &type metadata for Int64;
    v76 = &protocol witness table for Int64;
    v72 = v30;
    CKRecordKeyValueSetting.subscript.setter();
    sub_1003C3D14(v15);
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v75 = &type metadata for String;
    v76 = &protocol witness table for String;
    v72 = 0x6567616D49;
    v73 = 0xE500000000000000;
    v70 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v33 = [v32 width];
    v75 = &type metadata for Int16;
    v76 = &protocol witness table for Int16;
    LOWORD(v72) = v33;
    CKRecordKeyValueSetting.subscript.setter();
    v34 = [v32 height];
    v75 = &type metadata for Int16;
    v76 = &protocol witness table for Int16;
    LOWORD(v72) = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    goto LABEL_38;
  }

  v36 = v35;
  v75 = &type metadata for String;
  v76 = &protocol witness table for String;
  v72 = 5001813;
  v73 = 0xE300000000000000;
  v37 = v1;
  CKRecordKeyValueSetting.subscript.setter();
  [v15 encryptedValues];
  v38 = [v36 url];
  if (v38)
  {
    v39 = v38;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v71;
  (*(v71 + 56))(v9, v40, 1, v2);
  sub_10003E8F8(v9, v13);
  if ((*(v41 + 48))(v13, 1, v2))
  {
    sub_1000050A4(v13, &unk_1009441F0, &qword_100795760);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v74 = 0;
  }

  else
  {
    v46 = v71;
    v47 = v69;
    (*(v71 + 16))(v69, v13, v2);
    sub_1000050A4(v13, &unk_1009441F0, &qword_100795760);
    v44 = URL.absoluteString.getter();
    v45 = v48;
    (*(v46 + 8))(v47, v2);
    v43 = &protocol witness table for String;
    v42 = &type metadata for String;
  }

  v75 = v42;
  v76 = v43;
  v72 = v44;
  v73 = v45;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v49 = [v36 metadata];
  if (!v49)
  {
    v51 = 0;
    v53 = 0xF000000000000000;
    goto LABEL_34;
  }

  v50 = v49;
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v55 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v55 != 2)
    {
      v56 = 0;
      goto LABEL_31;
    }

    v58 = *(v51 + 16);
    v57 = *(v51 + 24);
    v56 = v57 - v58;
    if (!__OFSUB__(v57, v58))
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  else if (!v55)
  {
    v56 = BYTE6(v53);
    goto LABEL_31;
  }

  if (__OFSUB__(HIDWORD(v51), v51))
  {
    __break(1u);
    goto LABEL_40;
  }

  v56 = HIDWORD(v51) - v51;
LABEL_31:
  v59 = [objc_opt_self() sharedConfiguration];
  v60 = [v59 maxInlineAssetSizeBytes];

  if (v56 < 1 || v60 >= v56)
  {
LABEL_34:
    CKRecord.subscript.setter();
    v64 = [v15 encryptedValues];
    if (v53 >> 60 == 15)
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v74 = 0;
    }

    else
    {
      v68 = &protocol witness table for Data;
      v67 = &type metadata for Data;
      v65 = v51;
      v66 = v53;
    }

    v72 = v65;
    v73 = v66;
    v75 = v67;
    v76 = v68;
    swift_getObjectType();
    sub_1001CB4B8(v51, v53);
    CKRecordKeyValueSetting.subscript.setter();

    sub_100031A14(v51, v53);
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v61 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v63 = [v61 assetForData:isa];

  CKRecord.subscript.setter();
  CKRecord.subscript.setter();

  sub_10001BBA0(v51, v53);
LABEL_38:
  v54 = v15;
LABEL_40:
  result.value.super.isa = v54;
  result.is_nil = v14;
  return result;
}

Swift::Void __swiftcall REMCDAttachment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
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
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
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

Swift::Void __swiftcall REMCDAttachment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100944EB0);
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
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for attachment {attachmentID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
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
        _os_log_impl(&_mh_execute_header, v27, v28, "Reminder is marked for deletion but attachment is not {attachmentID: %{public}s, reminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

uint64_t _sSo15REMCDAttachmentC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
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
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo15REMCDAttachmentC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100944EB0);
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
    sub_1000F5104(&unk_100944EE0, &qword_1007A5D50);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

id static REMCDTemplate.fetchRequest()()
{
  v0 = [objc_opt_self() cdEntityName];
  if (!v0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = String._bridgeToObjectiveC()();
  }

  v1 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v0];

  return v1;
}

uint64_t sub_1003C5B90(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100944F10, &qword_1007A5E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003C6378();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[7] = 0;
  type metadata accessor for REMDueDateDeltaInterval_Codable();
  sub_1003C63CC(&qword_100944F18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[5] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003C5D80()
{
  v1 = 0xD000000000000026;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4465746144657564;
  }
}

uint64_t sub_1003C5DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C6010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C5E18(uint64_t a1)
{
  v2 = sub_1003C6378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C5E54(uint64_t a1)
{
  v2 = sub_1003C6378();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1003C5E90(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 2);
  sub_100003C4C();
  v8 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t assignWithCopy for RDSavedDueDateDeltaAlert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for RDSavedDueDateDeltaAlert(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  return a1;
}

void sub_1003C5FB8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1003C6138(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_1003C5FEC(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_1003C5B90(a1, *v1);
}

uint64_t sub_1003C6010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465746144657564 && a2 == 0xEC00000061746C65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001007F6880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001007EA730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1003C6138(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_100944EF8, &qword_1007A5DF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003C6378();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for REMDueDateDeltaInterval_Codable();
  v11[15] = 0;
  sub_1003C63CC(&qword_100944F08);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v11[13] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v10;
}

unint64_t sub_1003C6378()
{
  result = qword_100944F00;
  if (!qword_100944F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F00);
  }

  return result;
}

uint64_t sub_1003C63CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMDueDateDeltaInterval_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003C6424()
{
  result = qword_100944F20;
  if (!qword_100944F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F20);
  }

  return result;
}

unint64_t sub_1003C647C()
{
  result = qword_100944F28;
  if (!qword_100944F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F28);
  }

  return result;
}

unint64_t sub_1003C64D4()
{
  result = qword_100944F30;
  if (!qword_100944F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F30);
  }

  return result;
}

uint64_t sub_1003C652C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944F38);
  v1 = sub_100006654(v0, qword_100944F38);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003C65F4(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a4;
  v36 = a5;
  v37 = a3;
  v35 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult();
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v32 - v18);
  v20 = v40;
  v21 = sub_100041B1C(a1, v38);
  if (!v20)
  {
    v23 = v35;
    v40 = v16;
    v39 = v19;
    if (v21)
    {
      v24 = v21;
      v25 = v22;
      sub_100041EBC(a1, v21, v8);
      v26 = v13;
      v27 = v34;
      v28 = v40;
      v38 = v24;
      v30 = v39;
      (*(v33 + 32))(v39, v8, v23);
      v31 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.incremental(_:);
    }

    else
    {
      v38 = 0;
      v25 = v22;
      swift_storeEnumTagMultiPayload();
      v29 = sub_1000437C4(a1);
      sub_1000513B4(v12);
      v28 = v40;
      v30 = v39;
      *v39 = v29;
      v31 = &enum case for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.reload(_:);
      v26 = v13;
      v27 = v34;
    }

    (*(v27 + 104))(v30, *v31, v26);
    (*(v27 + 16))(v28, v30, v26);
    REMRemindersInCalendarDataView.Invocation.Result.init(remindersResult:predicateVersion:)();
    sub_100051FA4(v38, v25);
    (*(v27 + 8))(v30, v26);
  }
}

uint64_t sub_1003C6930()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_100042F60();
}

void sub_1003C696C(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v9 = 0;
  v4 = [v3 remObjectIDWithError:&v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v7 = REMObjectID.codable.getter();

    *a2 = v7;
  }

  else
  {
    v8 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1003C6A34(void *a1)
{
  v1 = [a1 changedObjectID];
  v2 = sub_1005AFD38(v1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 remObjectID];
      if (v5)
      {
        v6 = v5;

        return v6;
      }

      if (qword_100935FB8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100944F38);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        v15 = "REMRemindersInCalendarDataView: failed to get remObjectID from REMCDObject {managedObjectID: %@}";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_100935FB8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_100944F38);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        v15 = "REMRemindersInCalendarDataView: failed to cast managedObject to REMCDObject {managedObjectID: %@}";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v10, v11, v15, v12, 0xCu);
        sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

LABEL_16:
        return 0;
      }
    }

    goto LABEL_16;
  }

  return 0;
}

id sub_1003C6CC4(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = [a1 changedObjectID];
  v18 = [objc_allocWithZone(REMNSPersistentHistoryChange) initWithPersistentHistoryChange:a1];
  v19 = [v18 tombstone];
  if (!v19)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_7:
    sub_1000050A4(v8, &unk_100939D90, "8\n\r");
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100944F38);
    v23 = v17;
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
      _os_log_impl(&_mh_execute_header, v24, v25, "REMRemindersInCalendarDataView: failed to get UUID from tombstone {managedObjectID: %@}", v26, 0xCu);
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return 0;
  }

  v20 = v19;
  v21 = [v19 objectIdentifier];

  if (v21)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_100100FB4(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_7;
  }

  (*(v10 + 32))(v16, v8, v9);
  (*(v10 + 16))(v14, v16, v9);
  v30 = [v17 entityName];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = [v31 initWithUUID:isa entityName:v30];

  v34 = *(v10 + 8);
  v34(v14, v9);
  v34(v16, v9);
  return v33;
}

uint64_t sub_1003C7170(uint64_t a1)
{
  result = sub_100050DB0(&qword_100944F70, &type metadata accessor for REMRemindersInCalendarDataView.Invocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4DiffVwxx(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];
}

void *_s4DiffVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

uint64_t *_s4DiffVwca(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a1[3];
  a1[3] = a2[3];

  v8 = a2[4];
  v9 = a1[4];
  a1[4] = v8;

  return a1;
}

void *_s4DiffVwta(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];
  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t _s4DiffVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t _s4DiffVwst(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void RDLaunchAnalyticsPostNotifyd(_:)(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_100935FC8 != -1)
    {
      swift_once();
    }

    v8 = xmmword_10079EFA0;
    v10 = 0;
    v11[0] = 0;
    v9 = 0;
    *(v11 + 6) = 0;
    sub_1000081D8(&v8, v1, v3);
  }

  else
  {
    if (qword_100935FC0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100944F80);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to get name from xpc event. Not posting analytics for notifyd notification", v6, 2u);
    }
  }
}

uint64_t sub_1003C75D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944F80);
  v1 = sub_100006654(v0, qword_100944F80);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C769C()
{
  v0 = *(*(type metadata accessor for UnfairLock.Options() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for RDLaunchAnalytics();
  v1 = swift_allocObject();
  sub_1001E11C8();
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_1003C7808();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2 = type metadata accessor for UnfairLock();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = UnfairLock.init(options:)();
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  qword_100974D80 = v1;
  return result;
}

uint64_t sub_1003C77AC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1003C7808()
{
  result = qword_100936E70;
  if (!qword_100936E70)
  {
    sub_1000F514C(&qword_100936E68, &unk_100791AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E70);
  }

  return result;
}

void *sub_1003C786C(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = a1;
  v21 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v18 = v6;
    v19 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = i;
    while (1)
    {
      if (v9)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v20 = v10;
      v13 = sub_1003C86F0(&v20, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v9;
        v15 = v21[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v9 = v14;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v17;
        v6 = v18;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_20:

  return a3;
}

void sub_1003C7A14(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, void *a4@<X3>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v102 = a4;
  v100 = a6;
  v101 = a7;
  v96 = a5;
  v92 = a2;
  v93 = a3;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v94 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v92 - v12;
  __chkstk_darwin(v13);
  v15 = &v92 - v14;
  __chkstk_darwin(v16);
  v98 = &v92 - v17;
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  __chkstk_darwin(v21);
  v97 = &v92 - v22;
  v23 = type metadata accessor for REMSearchCriterion();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = (&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v24 + 16);
  v29(v28, a1, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 != enum case for REMSearchCriterion.hasLocation(_:))
  {
    v37 = v30;
    v99 = v24;
    v100 = v23;
    if (v30 == enum case for REMSearchCriterion.location(_:))
    {
      (*(v99 + 96))(v28, v100);
      v39 = *v28;
      v38 = v28[1];
      v29 = _swiftEmptyArrayStorage;
      v104 = _swiftEmptyArrayStorage;
      KeyPath = swift_getKeyPath();

      sub_1003EE9EC(KeyPath, v39, v38, 6);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v104 + 16) < *(v104 + 24) >> 1)
      {
        goto LABEL_7;
      }

      goto LABEL_76;
    }

    if (v30 == enum case for REMSearchCriterion.dueDate(_:))
    {
      (*(v99 + 96))(v28, v100);
      v102 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
      v49 = *(v102 + 12);
      v50 = v97;
      sub_10012F7FC(v28, v97);
      sub_10012F7FC(v28 + v49, v20);
      sub_1003CA59C(v50, v92);
      sub_1003CA59C(v20, v93);
      sub_10012F78C(v50, v15);
      v51 = type metadata accessor for Date();
      v52 = *(v51 - 8);
      v93 = *(v52 + 48);
      if (v93(v15, 1, v51) == 1)
      {
        sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
        v53 = 1;
        v54 = v95;
        v55 = v98;
      }

      else
      {
        v78 = v98;
        Date.addingTimeInterval(_:)();
        (*(v52 + 8))(v15, v51);
        v55 = v78;
        v53 = 0;
        v54 = v95;
      }

      v79 = v94;
      v96 = *(v52 + 56);
      v96(v55, v53, 1, v51);
      sub_10012F78C(v20, v79);
      if (v93(v79, 1, v51) == 1)
      {
        sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v97, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
        v80 = 1;
      }

      else
      {
        Date.addingTimeInterval(_:)();
        sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v97, &unk_100938850, qword_100795AE0);
        (*(v52 + 8))(v79, v51);
        v80 = 0;
      }

      v81 = v101;
      v96(v54, v80, 1, v51);
      v82 = *(v102 + 12);
      sub_10012F7FC(v98, v81);
      sub_10012F7FC(v54, v81 + v82);
      v84 = v99;
      v83 = v100;
      (*(v99 + 104))(v81, v37, v100);
      (*(v84 + 56))(v81, 0, 1, v83);
    }

    else
    {
      v57 = v100;
      v56 = v101;
      (v29)(v101, a1, v100);
      v58 = v99;
      (*(v99 + 56))(v56, 0, 1, v57);
      (*(v58 + 8))(v28, v57);
    }

    return;
  }

  (*(v24 + 96))(v28, v23);
  if (*v28 != 1)
  {
    v48 = v101;
    *v100 = 1;
LABEL_66:
    (*(v24 + 56))(v48, 1, 1, v23);
    return;
  }

  v99 = v24;
  v100 = v23;
  v31 = sub_1003FC818(0, 0);
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v32 = objc_allocWithZone(NSFetchRequest);
  v33 = [v32 init];
  v34 = [swift_getObjCClassFromMetadata() entity];
  [v33 setEntity:v34];

  [v33 setAffectedStores:0];
  [v33 setPredicate:v31];
  v35 = v103;
  v36 = NSManagedObjectContext.fetch<A>(_:)();
  if (v35)
  {

    return;
  }

  v59 = v36;

  v104 = _swiftEmptyArrayStorage;
  if (v59 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v31;
  v103 = 0;
  if (!v60)
  {
    v102 = _swiftEmptyArrayStorage;
LABEL_62:

    v85 = v96;
    if (*v96)
    {
      v86 = *v96;
    }

    else
    {
      v86 = _swiftEmptyArrayStorage;
    }

    v104 = v86;

    sub_100271578(v102);

    v87 = *v85;
    *v85 = v104;

    v23 = v100;
    v48 = v101;
    v24 = v99;
    goto LABEL_66;
  }

  v61 = v59 & 0xC000000000000001;
  v102 = _swiftEmptyArrayStorage;
  v62 = 0;
  if ((v59 & 0xC000000000000001) == 0)
  {
    goto LABEL_24;
  }

LABEL_34:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v59 + 8 * v62 + 32))
  {
    v29 = i;
    v28 = (v62 + 1);
    if (__OFADD__(v62, 1))
    {
      break;
    }

    v64 = [i alarm];
    if (v64 && (v65 = v64, v66 = [v64 reminder], v65, v66))
    {
      v67 = [v66 remObjectID];

      if (v67)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v102 = v104;
        if (v28 == v60)
        {
          goto LABEL_62;
        }

        ++v62;
        if (v61)
        {
          goto LABEL_34;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    ++v62;
    if (v28 == v60)
    {
      goto LABEL_62;
    }

    if (v61)
    {
      goto LABEL_34;
    }

LABEL_24:
    if (v62 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v104 + 16) >= *(v104 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v41 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v42 = sub_10000C2B0(v104);

  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v43 = [objc_allocWithZone(NSFetchRequest) init];
  v44 = [swift_getObjCClassFromMetadata() entity];
  [v43 setEntity:v44];

  [v43 setAffectedStores:0];
  [v43 setPredicate:v42];
  v45 = v103;
  v46 = NSManagedObjectContext.fetch<A>(_:)();
  if (v45)
  {

    v47 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v47 - 8) + 8))(v28 + v41, v47);
    return;
  }

  v68 = v46;

  v104 = v29;
  v102 = (v68 & 0xFFFFFFFFFFFFFF8);
  if (v68 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v95 = v42;
  v97 = v41;
  v103 = 0;
  if (v69)
  {
    v70 = v68 & 0xC000000000000001;
    v98 = _swiftEmptyArrayStorage;
    v71 = 0;
    if ((v68 & 0xC000000000000001) != 0)
    {
LABEL_53:
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_45;
    }

    while (1)
    {
      if (v71 >= v102[2])
      {
        goto LABEL_75;
      }

      v72 = *(v68 + 8 * v71 + 32);
LABEL_45:
      v29 = v72;
      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_73;
      }

      v74 = [v72 alarm];
      if (v74 && (v75 = v74, v76 = [v74 reminder], v75, v76))
      {
        v77 = [v76 remObjectID];

        if (v77)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v98 = v104;
          if (v73 == v69)
          {
            goto LABEL_68;
          }

          ++v71;
          if (v70)
          {
            goto LABEL_53;
          }

          continue;
        }
      }

      else
      {
      }

      ++v71;
      if (v73 == v69)
      {
        goto LABEL_68;
      }

      if (v70)
      {
        goto LABEL_53;
      }
    }
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_68:

  v88 = v96;
  if (*v96)
  {
    v89 = *v96;
  }

  else
  {
    v89 = _swiftEmptyArrayStorage;
  }

  v104 = v89;

  sub_100271578(v98);

  v90 = *v88;
  *v88 = v104;

  (*(v99 + 56))(v101, 1, 1, v100);
  v91 = type metadata accessor for REMStringMatchingStyle();
  (*(*(v91 - 8) + 8))(v28 + v97, v91);
}

uint64_t sub_1003C86F0(void **a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v5 = type metadata accessor for Date();
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v5);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v81 - v9;
  __chkstk_darwin(v10);
  v84 = &v81 - v11;
  __chkstk_darwin(v12);
  v91 = &v81 - v13;
  v14 = type metadata accessor for DateComponents();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  __chkstk_darwin(v14);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v96 = &v81 - v18;
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v85 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v99 = &v81 - v23;
  __chkstk_darwin(v24);
  v86 = &v81 - v25;
  __chkstk_darwin(v26);
  v90 = &v81 - v27;
  __chkstk_darwin(v28);
  v89 = &v81 - v29;
  __chkstk_darwin(v30);
  v101 = &v81 - v31;
  v32 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v81 - v34;
  v36 = type metadata accessor for TimeZone();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v44 = &v81 - v43;
  v45 = *a1;
  v46 = [v45 timeZone];
  v100 = v44;
  v93 = v36;
  v92 = v37;
  if (v46)
  {
    v47 = v46;
    v83 = a2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    TimeZone.init(identifier:)();

    v48 = *(v37 + 48);
    if (v48(v35, 1, v36) == 1)
    {
      static TimeZone.current.getter();
      if (v48(v35, 1, v36) != 1)
      {
        sub_1000050A4(v35, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v37 + 32))(v40, v35, v36);
    }

    (*(v37 + 32))(v100, v40, v36);
    a2 = v83;
  }

  else
  {
    static TimeZone.current.getter();
  }

  v49 = [v45 dueDateComponents];
  v50 = v101;
  v51 = v99;
  v52 = v91;
  if (v49)
  {
    v53 = v88;
    v54 = v49;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v97 + 32))(v96, v53, v98);
    v55 = objc_opt_self();
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v57 = TimeZone._bridgeToObjectiveC()().super.isa;
    v58 = [v55 rem_dateWithDateComponents:isa timeZone:v57];

    if (v58)
    {
      v59 = v89;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = 0;
      v61 = v95;
    }

    else
    {
      v60 = 1;
      v61 = v95;
      v59 = v89;
    }

    (*(v97 + 8))(v96, v98);
    (*(v61 + 56))(v59, v60, 1, v5);
    sub_10012F7FC(v59, v50);
  }

  else
  {
    v61 = v95;
    (*(v95 + 56))(v101, 1, 1, v5);
  }

  v62 = a2;
  v63 = v90;
  sub_10012F78C(v62, v90);
  v64 = *(v61 + 48);
  if (v64(v63, 1, v5) == 1)
  {
    sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
    v65 = 1;
  }

  else
  {
    v66 = *(v61 + 32);
    v66(v52, v63, v5);
    v67 = v50;
    v68 = v86;
    sub_10012F78C(v67, v86);
    if (v64(v68, 1, v5) == 1)
    {
      (*(v61 + 8))(v52, v5);
      sub_1000050A4(v68, &unk_100938850, qword_100795AE0);
      v65 = 0;
    }

    else
    {
      v69 = v84;
      v66(v84, v68, v5);
      sub_1003CA554(&qword_1009464D0, &type metadata accessor for Date);
      v70 = dispatch thunk of static Comparable.< infix(_:_:)();
      v71 = *(v61 + 8);
      v71(v69, v5);
      v71(v52, v5);
      v65 = v70 ^ 1;
    }

    v51 = v99;
  }

  sub_10012F78C(v94, v51);
  if (v64(v51, 1, v5) == 1)
  {
    sub_1000050A4(v101, &unk_100938850, qword_100795AE0);
    (*(v92 + 8))(v100, v93);
    sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v72 = *(v61 + 32);
    v73 = v87;
    v72(v87, v51, v5);
    if (v65)
    {
      v74 = v73;
      v75 = v101;
      v76 = v85;
      sub_10012F78C(v101, v85);
      if (v64(v76, 1, v5) != 1)
      {
        v77 = v82;
        v72(v82, v76, v5);
        sub_1003CA554(&qword_1009464D0, &type metadata accessor for Date);
        v78 = v75;
        v65 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
        v79 = *(v61 + 8);
        v79(v77, v5);
        v79(v74, v5);
        sub_1000050A4(v78, &unk_100938850, qword_100795AE0);
        (*(v92 + 8))(v100, v93);
        return v65 & 1;
      }

      (*(v61 + 8))(v74, v5);
      sub_1000050A4(v75, &unk_100938850, qword_100795AE0);
      (*(v92 + 8))(v100, v93);
      sub_1000050A4(v76, &unk_100938850, qword_100795AE0);
    }

    else
    {
      (*(v61 + 8))(v73, v5);
      sub_1000050A4(v101, &unk_100938850, qword_100795AE0);
      (*(v92 + 8))(v100, v93);
    }

    v65 = 0;
  }

  return v65 & 1;
}

void *sub_1003C911C@<X0>(void (**a1)(char *)@<X1>, void *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  result = sub_1003CA900(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1003C9154(uint64_t a1)
{
  result = sub_1003CA554(&qword_100945060, &type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003C91AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = _s10PredicatesOMa_3();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
  v12 = sub_1003CA60C(v11, a2);

  if (!v4)
  {
    *v10 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    swift_storeEnumTagMultiPayload();
    v14 = sub_100717C9C(v10, a2, 0);
    sub_1003CA8A0(v10, _s10PredicatesOMa_3);
    sub_1000271D0(v12, a4);

    sub_1000303FC(v14, a4);

    return REMSiriSearchDataView.ListsResult_Codable.init(lists:smartLists:)();
  }

  return result;
}

uint64_t sub_1003C9378(uint64_t a1)
{
  result = sub_1003CA554(&qword_100945088, &type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1003C93D0(uint64_t a1, unint64_t a2, unint64_t a3, void (**a4)(char *))
{
  v5 = v4;
  v134 = a4;
  v123 = a3;
  v124 = a2;
  v122 = _s10PredicatesOMa(0);
  v7 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v125 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000F5104(&qword_100945090, &unk_1007A60E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v115 - v11;
  v130 = type metadata accessor for REMSearchCriterion();
  v13 = *(v130 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v130);
  v118 = (&v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v135 = &v115 - v17;
  __chkstk_darwin(v18);
  v129 = &v115 - v19;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v117 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v119 = &v115 - v24;
  __chkstk_darwin(v25);
  v27 = (&v115 - v26);
  __chkstk_darwin(v28);
  v30 = &v115 - v29;
  v31 = type metadata accessor for Date();
  v120 = *(v31 - 8);
  v32 = *(v120 + 56);
  v132 = v30;
  v32(v30, 1, 1, v31);
  v133 = v27;
  v121 = v31;
  v32(v27, 1, 1, v31);
  v142 = 0;
  v141[0] = 0;
  v33 = *(a1 + 16);
  v34 = v134;
  v35 = v34;
  v131 = v34;
  if (v33)
  {
    v36 = *(v13 + 72);
    v128 = ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v37 = &v128[a1];
    v38 = (v13 + 48);
    v116 = v13;
    v134 = (v13 + 32);
    Predicate = _swiftEmptyArrayStorage;
    v40 = v130;
    v126 = v38;
    v127 = v36;
    do
    {
      v41 = v5;
      sub_1003C7A14(v37, v132, v133, v35, &v142, v141, v12);
      if (v5)
      {

LABEL_44:

        sub_1000050A4(v133, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v132, &unk_100938850, qword_100795AE0);
        return;
      }

      if ((*v38)(v12, 1, v40) == 1)
      {
        sub_1000050A4(v12, &qword_100945090, &unk_1007A60E0);
      }

      else
      {
        v42 = v40;
        v43 = *v134;
        v44 = v129;
        (*v134)(v129);
        (v43)(v135, v44, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          Predicate = sub_100365AEC(0, *(Predicate + 16) + 1, 1, Predicate);
        }

        v46 = *(Predicate + 16);
        v45 = *(Predicate + 24);
        v47 = Predicate;
        v38 = v126;
        if (v46 >= v45 >> 1)
        {
          v47 = sub_100365AEC(v45 > 1, v46 + 1, 1, Predicate);
        }

        v36 = v127;
        v48 = v128;
        *(v47 + 16) = v46 + 1;
        Predicate = v47;
        v49 = &v48[v47 + v46 * v36];
        v50 = v130;
        (v43)(v49, v135, v130);
        v40 = v50;
        v5 = v41;
        v35 = v131;
      }

      v37 += v36;
      --v33;
    }

    while (v33);
    v51 = v142;

    if (v51)
    {
      v52 = v118;
      *v118 = v51;
      (*(v116 + 104))(v52, enum case for REMSearchCriterion.objectID(_:), v40);
      v116 = v51;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v123;
      v54 = v124;
      v56 = v36;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      goto LABEL_88;
    }

    v116 = 0;
  }

  else
  {

    v116 = 0;
    Predicate = _swiftEmptyArrayStorage;
  }

  v55 = v123;
  v54 = v124;
LABEL_21:
  v52 = _swiftEmptyArrayStorage;
  *v125 = Predicate;
  swift_storeEnumTagMultiPayload();
  v56 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v59 = qword_100936080;
  v129 = Predicate;

  if (v59 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v126 = qword_100974E30;
    v60 = sub_100043AA8();
    v61 = [objc_allocWithZone(NSFetchRequest) init];
    v127 = v56;
    v62 = [swift_getObjCClassFromMetadata() entity];
    [v61 setEntity:v62];

    [v61 setAffectedStores:0];
    [v61 setPredicate:v60];

    [v61 setFetchLimit:v55];
    v128 = v61;
    [v61 setFetchOffset:v54];
    v137 = v52;
    v54 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v137 = sub_1003EBAD0();
    sub_100271EA8(v52);
    v140 = v137;
    v63 = sub_100235FA0(Predicate);

    v64 = sub_100277CC0(v63);

    v40 = *(v64 + 16);
    v130 = v5;
    if (!v40)
    {
      goto LABEL_41;
    }

LABEL_25:
    v139 = v52;
    sub_100026EF4(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      Predicate = sub_100365AEC(0, *(Predicate + 16) + 1, 1, Predicate);
LABEL_16:
      v58 = *(Predicate + 16);
      v57 = *(Predicate + 24);
      if (v58 >= v57 >> 1)
      {
        Predicate = sub_100365AEC(v57 > 1, v58 + 1, 1, Predicate);
      }

      *(Predicate + 16) = v58 + 1;
      (*v134)(&v128[Predicate + v56 * v58], v52, v40);
      goto LABEL_21;
    }

    v52 = 0;
    v5 = v139;
    v65 = v64;
    v134 = v64;
    v135 = (v64 & 0xC000000000000001);
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v135)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= v65[2])
        {
          goto LABEL_38;
        }

        v55 = v65[v52 + 4];
      }

      v66 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v67)
      {
        goto LABEL_95;
      }

      v68 = v66;
      v56 = v67;

      v139 = v5;
      v70 = v5[2];
      v69 = v5[3];
      v55 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_100026EF4((v69 > 1), v70 + 1, 1);
        v5 = v139;
      }

      v5[2] = v55;
      v71 = &v5[2 * v70];
      v71[4] = v68;
      v71[5] = v56;
      ++v52;
      v65 = v134;
      if (v54 == v40)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
  v130 = v5;
  if (v40)
  {
    goto LABEL_25;
  }

LABEL_41:

  v5 = _swiftEmptyArrayStorage;
LABEL_42:
  sub_100271EA8(v5);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v73 = v128;
  [v128 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v74 = Array._bridgeToObjectiveC()().super.isa;
  [v73 setSortDescriptors:v74];

  v75 = v130;
  v76 = NSManagedObjectContext.fetch<A>(_:)();
  v5 = v75;
  v52 = v121;
  v77 = v120;
  if (v75)
  {
    sub_1003CA8A0(v125, _s10PredicatesOMa);

    goto LABEL_44;
  }

  v56 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v76);

  v78 = v119;
  sub_10012F78C(v133, v119);
  v80 = *(v77 + 48);
  v55 = v77 + 48;
  v79 = v80;
  v81 = v80(v78, 1, v52);
  sub_1000050A4(v78, &unk_100938850, qword_100795AE0);
  Predicate = v129;
  if (v81 != 1 || (v82 = v117, sub_10012F78C(v132, v117), v83 = v79(v82, 1, v52), sub_1000050A4(v82, &unk_100938850, qword_100795AE0), v83 != 1))
  {
    v56 = sub_1003C786C(v56, v132, v133);
  }

  v137 = v56;
  if (v141[0] != 1)
  {
    goto LABEL_83;
  }

  v126 = v56 >> 62;
  if (!(v56 >> 62))
  {
    v54 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_51;
    }

LABEL_72:
    if (v126)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_80;
  }

  while (2)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
    if (!v54)
    {
      goto LABEL_72;
    }

LABEL_51:
    v84 = 0;
    v131 = (v56 & 0xC000000000000001);
    v128 = (v56 & 0xFFFFFFFFFFFFFF8);
    v123 = v56 + 32;
    v124 = v54;
    v134 = v56;
LABEL_52:
    if (v131)
    {
      v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v84 >= *(v128 + 2))
      {
        __break(1u);
        continue;
      }

      v85 = *(v123 + 8 * v84);
    }

    break;
  }

  v40 = v85;
  v86 = [v85 alarms];
  if (!v86)
  {
    goto LABEL_70;
  }

  v87 = v86;
  v130 = v5;
  v127 = sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v54 >> 62))
  {
    v5 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v135 = v84;
    if (v5)
    {
      goto LABEL_59;
    }

LABEL_69:

    Predicate = v129;
    v5 = v130;
    v56 = v134;
    v84 = v135;
    v54 = v124;
LABEL_70:

    v89 = __OFADD__(v84++, 1);
    if (v89)
    {
      goto LABEL_87;
    }

    if (v84 == v54)
    {
      goto LABEL_72;
    }

    goto LABEL_52;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v135 = v84;
  if (!v5)
  {
    goto LABEL_69;
  }

LABEL_59:
  Predicate = 0;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (Predicate >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v88 = *(v54 + 8 * Predicate + 32);
    }

    v55 = v88;
    v52 = Predicate + 1;
    if (__OFADD__(Predicate, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v56 = [v88 trigger];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++Predicate;
    if (v52 == v5)
    {
      goto LABEL_69;
    }
  }

  v52 = v135;
  v55 = (v135 + 1);
  if (__OFADD__(v135, 1))
  {
    goto LABEL_94;
  }

  v5 = v130;
  v56 = v134;
  if (!v126)
  {
    v90 = v128;
    goto LABEL_96;
  }

  if (v55 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_97;
  }

LABEL_80:
  while (2)
  {
    while (2)
    {
      if (!(v56 >> 62))
      {
        v91 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v91 >= v52)
        {
          goto LABEL_82;
        }

        goto LABEL_93;
      }

      v91 = _CocoaArrayWrapper.endIndex.getter();
      if (v91 >= v52)
      {
LABEL_82:
        sub_100260C8C(v52, v91);
LABEL_83:
        sub_1003CA8A0(v125, _s10PredicatesOMa);

        sub_1000050A4(v133, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v132, &unk_100938850, qword_100795AE0);
        return;
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v137 = 0;
      v138 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v92._object = 0x80000001007EC120;
      v92._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v92);
      v136 = v55;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_96:
      if (v55 == *(v90 + 2))
      {
        continue;
      }

      break;
    }

LABEL_97:
    v93 = (v56 & 0xC000000000000001);
    if ((v56 & 0xC000000000000001) != 0)
    {
      v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_145;
      }

      if (v55 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v94 = *(v56 + 8 * v55 + 32);
    }

    v95 = v94;
    v96 = [v94 alarms];
    if (!v96)
    {
LABEL_115:

      if (v52 != v55)
      {
        if (v93)
        {
          v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 < 0)
          {
            goto LABEL_150;
          }

          v107 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v52 >= v107)
          {
            goto LABEL_151;
          }

          if (v55 >= v107)
          {
            goto LABEL_152;
          }

          v108 = *(v56 + 32 + 8 * v55);
          v105 = *(v56 + 32 + 8 * v52);
          v106 = v108;
        }

        v109 = v106;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
        {
          v56 = sub_1002618D4(v56);
          v110 = (v56 >> 62) & 1;
        }

        else
        {
          LODWORD(v110) = 0;
        }

        v111 = v56 & 0xFFFFFFFFFFFFFF8;
        v112 = *((v56 & 0xFFFFFFFFFFFFFF8) + 8 * v52 + 0x20);
        *((v56 & 0xFFFFFFFFFFFFFF8) + 8 * v52 + 0x20) = v109;

        if ((v56 & 0x8000000000000000) != 0 || v110)
        {
          v56 = sub_1002618D4(v56);
          v111 = v56 & 0xFFFFFFFFFFFFFF8;
          if ((v55 & 0x8000000000000000) != 0)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            v90 = (v56 & 0xFFFFFFFFFFFFFF8);
            goto LABEL_96;
          }
        }

        else if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_141;
        }

        if (v55 >= *(v111 + 16))
        {
          goto LABEL_149;
        }

        v113 = v111 + 8 * v55;
        v114 = *(v113 + 32);
        *(v113 + 32) = v105;

        v137 = v56;
      }

      v89 = __OFADD__(v52++, 1);
      if (v89)
      {
        goto LABEL_148;
      }

LABEL_134:
      v89 = __OFADD__(v55++, 1);
      if (v89)
      {
        goto LABEL_147;
      }

      if (!(v56 >> 62))
      {
        goto LABEL_142;
      }

      if (v55 == _CocoaArrayWrapper.endIndex.getter())
      {
        continue;
      }

      goto LABEL_97;
    }

    break;
  }

  v130 = v5;
  v131 = v95;
  v97 = v96;
  v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v98 >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v128 = (v56 & 0xC000000000000001);
  v134 = v56;
  v135 = v52;
  if (!v99)
  {
LABEL_114:

    v5 = v130;
    v56 = v134;
    v52 = v135;
    v93 = v128;
    v95 = v131;
    goto LABEL_115;
  }

  v100 = 0;
  while (1)
  {
    if ((v98 & 0xC000000000000001) != 0)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v100 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_144;
      }

      v101 = *(v98 + 8 * v100 + 32);
    }

    v102 = v101;
    v103 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    v104 = [v101 trigger];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = v130;
      v56 = v134;
      v52 = v135;
      goto LABEL_134;
    }

    ++v100;
    if (v103 == v99)
    {
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_1003CA554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CA59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CA60C(uint64_t a1, uint64_t a2)
{
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
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

  v13 = a2;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_1003CA8A0(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v16[1] = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v13 = Sequence.elements<A>(ofType:)();

    sub_1003CA8A0(v8, _s10PredicatesOMa_1);
  }

  return v13;
}

uint64_t sub_1003CA8A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1003CA900(void (**a1)(char *), void *a2, void *a3)
{
  v7 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.criteria.getter();
  v8 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchOffset.getter();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchLimit.getter();
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  sub_1003C93D0(v7, v10, v13, a1);
  v15 = v14;

  if (!v3)
  {
    v16 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.reminderFetchOptions.getter();
    a3 = sub_1003ED1A4(v15, v16, a1, a2);
  }

  return a3;
}

uint64_t sub_1003CA9C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009450A0);
  v1 = sub_100006654(v0, qword_1009450A0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003CAA8C()
{
  result = [objc_opt_self() cloudkit];
  qword_1009450B8 = result;
  return result;
}

uint64_t sub_1003CAAC8()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  v15 = sub_1000F5104(&qword_1009451F0, &unk_1007A61D0);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v35 - v18;
  v20 = sub_1000F5104(&qword_1009451F8, qword_1007A6360);
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v40 = v35 - v23;
  v24 = *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_notificationCenter);
  NSNotificationCenter.publisher(for:object:)();
  v47 = *(v1 + 40);
  v25 = v47;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v36 = *(v27 + 56);
  v37 = v27 + 56;
  v36(v5, 1, 1, v26);
  v35[1] = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_1003CD57C(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v35[0] = v25;
  v28 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);
  (*(v38 + 8))(v9, v28);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0);
  v29 = v41;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v42 + 8))(v14, v29);
  v30 = v35[0];
  v47 = v35[0];
  v36(v5, 1, 1, v26);
  sub_10000CB48(&qword_100945200, &qword_1009451F0, &unk_1007A61D0);
  v31 = v40;
  v32 = v43;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

  (*(v44 + 8))(v19, v32);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100945208, &qword_1009451F8, qword_1007A6360);
  v33 = v45;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v31, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1003CB0EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 1;
    sub_1003CB8BC(v2);
  }

  return result;
}

uint64_t sub_1003CB158()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003CB1F0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 0;
    sub_1003CB8BC(v2);
  }

  return result;
}

void sub_1003CB1F0()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[5];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if ((*(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 1;
      sub_1003CB43C(0);
      v9 = [v0[4] newBackgroundContextWithAuthor:RDStalePinnedListsEventHandlerAuthor];
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v9;
      v11[4] = v1;
      aBlock[4] = sub_1003CD568;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008EFCC0;
      v12 = _Block_copy(aBlock);
      v13 = v9;

      [v13 performBlock:v12];
      _Block_release(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CB43C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) != v3)
  {
    if (*(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent))
    {
      v10 = os_transaction_create();
      v11 = *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = v10;
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100935FD8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_1009450A0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        v30 = v4;
        *v15 = 136315138;
        swift_getMetatypeMetadata();
        v17 = String.init<A>(describing:)();
        v19 = sub_10000668C(v17, v18, &v29);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s: Started handling event", v15, 0xCu);
        sub_10000607C(v16);
      }
    }

    else
    {
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_1009450A0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v24;
        v30 = v4;
        *v23 = 136315138;
        swift_getMetatypeMetadata();
        v25 = String.init<A>(describing:)();
        v27 = sub_10000668C(v25, v26, &v29);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s: Finished handling event", v23, 0xCu);
        sub_10000607C(v24);
      }

      static os_signpost_type_t.end.getter();
      if (qword_100935FD8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      v28 = *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003CB8BC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) != (a1 & 1))
  {
    v2 = v1;
    v3 = *v1;
    if (*(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent))
    {
      v4 = os_transaction_create();
      v5 = *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent);
      *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = v4;
      swift_unknownObjectRelease();
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_1009450A0);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        v24 = v3;
        *v8 = 136315138;
        swift_getMetatypeMetadata();
        v10 = String.init<A>(describing:)();
        v12 = sub_10000668C(v10, v11, &v23);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, oslog, v7, "%s: Started debouncing event", v8, 0xCu);
        sub_10000607C(v9);
      }

      else
      {
      }
    }

    else
    {
      if (qword_100935FD0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_1009450A0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        v24 = v3;
        *v16 = 136315138;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_10000668C(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s: Finished debouncing event", v16, 0xCu);
        sub_10000607C(v17);
      }

      v21 = *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003CBBE0(uint64_t a1, void *a2, void *a3)
{
  v133 = a3;
  v138 = a2;
  v137 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v137 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v137);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for DispatchQoS();
  v135 = *(v136 - 8);
  v7 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for UUID();
  v129 = *(v144 - 8);
  isa = v129[8].isa;
  v10 = __chkstk_darwin(v144);
  v143 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v145 = &v118 - v12;
  v13 = _s10PredicatesOMa_1();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMManualOrdering.Predefined();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v131 = v3;
  (*(v18 + 104))(v21, enum case for REMManualOrdering.Predefined.pinned(_:), v17);
  if (qword_1009367E0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v24 = 0;
  v25 = sub_10013A0AC(v21, v138, 0, qword_1009752F0);
  v130 = v6;
  v42 = v25;
  (*(v18 + 8))(v21, v17);
  v127 = v42;
  if (v42 && (v43 = v42, sub_100226C14(v153), v43, v153[0]))
  {
    v45 = v153[3];
    v44 = v153[4];
    v122 = 0;
    v46 = v153[2];
    v146 = v153[0];
    v147 = v153[1];
    sub_1000050A4(&v147, &qword_100939A08, &unk_100796A80);
    v148 = v46;
    sub_1000050A4(&v148, &unk_100945230, &qword_1007A2590);
    v149 = v45;
    sub_1000050A4(&v149, &qword_10093E9C0, qword_100794F90);
    v150 = v44;
    sub_1000050A4(&v150, &unk_100945240, &qword_1007A0A70);
    aBlock[0] = v146;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780);
    sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID);
    v42 = v127;
    v24 = v122;
    v21 = Sequence.compactMapToSet<A>(_:)();
    sub_1000050A4(&v146, &unk_10093B300, &unk_100797780);
  }

  else
  {
    v21 = 0;
  }

  v122 = v24;
  if (qword_100935FD0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_100006654(v47, qword_1009450A0);

  v125 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v142 = v21;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v52 = 136315394;
    aBlock[0] = v133;
    swift_getMetatypeMetadata();
    v53 = String.init<A>(describing:)();
    v55 = sub_10000668C(v53, v54, &v151);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    aBlock[0] = v142;
    sub_1000F5104(&unk_100945220, &unk_1007A61E0);
    v56 = Optional.descriptionOrNil.getter();
    v58 = sub_10000668C(v56, v57, &v151);

    *(v52 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "%s: Did fetch pinned lists' manual ordering {identifiersInPinnedListsOrdering: %{public}s}", v52, 0x16u);
    swift_arrayDestroy();
  }

  swift_storeEnumTagMultiPayload();
  v59 = sub_10001F6F4();
  v18 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v60 = [objc_allocWithZone(NSFetchRequest) init];
  v61 = [swift_getObjCClassFromMetadata() entity];
  [v60 setEntity:v61];

  [v60 setAffectedStores:0];
  [v60 setPredicate:v59];

  v62 = v122;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v63 = Array._bridgeToObjectiveC()().super.isa;
  [v60 setSortDescriptors:v63];

  v64 = NSManagedObjectContext.fetch<A>(_:)();
  if (v62)
  {
    sub_1001555B4(v16);

    v65 = v135;
    goto LABEL_4;
  }

  v122 = 0;
  aBlock[0] = v64;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v6 = Sequence.elements<A>(ofType:)();

  sub_1001555B4(v16);

  swift_bridgeObjectRetain_n();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v66, v67);
  v16 = (v6 >> 62);
  v132 = v6;
  if (!v68)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_41;
  }

  LODWORD(v128) = v67;
  v69 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v151 = v126;
  *v69 = 136315650;
  aBlock[0] = v133;
  swift_getMetatypeMetadata();
  v70 = String.init<A>(describing:)();
  v72 = sub_10000668C(v70, v71, &v151);

  *(v69 + 4) = v72;
  *(v69 + 12) = 2050;
  if (v16)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v69 + 14) = v73;

  *(v69 + 22) = 2082;
  aBlock[0] = _swiftEmptyArrayStorage;
  v141 = v66;
  v140 = (v6 >> 62);
  v139 = v69;
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v16)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v16 = (v6 & 0xC000000000000001);
  v17 = _swiftEmptyArrayStorage;
  while (v74 != v21)
  {
    if (v16)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_74;
      }

      v76 = *(v132 + 8 * v21 + 32);
    }

    v77 = v76;
    v78 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_3;
    }

    v6 = [v76 remObjectID];

    ++v21;
    if (v6)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v79 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = aBlock[0];
      v21 = v78;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v80 = Array.description.getter();
  v82 = v81;

  v83 = sub_10000668C(v80, v82, &v151);

  v84 = v139;
  v139[3].isa = v83;
  v85 = v141;
  _os_log_impl(&_mh_execute_header, v141, v128, "%s: Did fetch lists shared to current user {count: %{public}ld, objectIDs: %{public}s)}", v84, 0x20u);
  swift_arrayDestroy();

  v6 = v132;
  v16 = v140;
LABEL_41:
  v21 = v142;
  if (v16)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (!v17)
    {
      goto LABEL_79;
    }

LABEL_43:
    v86 = 0;
    v128 = v6 & 0xC000000000000001;
    v124 = v6 & 0xFFFFFFFFFFFFFF8;
    v123 = v6 + 32;
    v140 = (v21 + 56);
    v139 = v129 + 2;
    v141 = v129 + 1;
    v121 = &v129[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *&v75 = 136315650;
    v118 = v75;
    v126 = v17;
    v119 = v23;
    while (1)
    {
      if (v128)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v86 >= *(v124 + 16))
        {
          __break(1u);
          goto LABEL_77;
        }

        v87 = *(v123 + 8 * v86);
      }

      v16 = v87;
      if (__OFADD__(v86++, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      v89 = [v87 identifier];
      if (!v89)
      {
        goto LABEL_46;
      }

      v90 = v89;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (!v21 || !*(v21 + 16))
      {
        goto LABEL_61;
      }

      v91 = *(v21 + 40);
      sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID);

      v92 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v93 = -1 << *(v21 + 32);
      v94 = v92 & ~v93;
      if (((*&v140[(v94 >> 3) & 0xFFFFFFFFFFFFFF8] >> v94) & 1) == 0)
      {
        break;
      }

      v95 = ~v93;
      v96 = v129[9].isa;
      v97 = v129[2].isa;
      while (1)
      {
        v98 = v143;
        v99 = v144;
        v97(v143, v142[6] + v96 * v94, v144);
        sub_1003CD57C(&qword_10093A3E0, &type metadata accessor for UUID);
        v100 = dispatch thunk of static Equatable.== infix(_:_:)();
        v18 = v141->isa;
        (v141->isa)(v98, v99);
        if (v100)
        {
          break;
        }

        v94 = (v94 + 1) & v95;
        if (((*&v140[(v94 >> 3) & 0xFFFFFFFFFFFFFF8] >> v94) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v21 = v142;

      if (([v16 isPinnedByCurrentUser] & 1) == 0)
      {
        v18 = 1;
        v23 = v119;
        v42 = v127;
        v6 = v132;
LABEL_63:
        [v16 setIsPinnedByCurrentUser:{v18, v118}];
        v16 = v16;
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v120 = v102;
          v103 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *v103 = v118;
          aBlock[0] = v133;
          swift_getMetatypeMetadata();
          v104 = String.init<A>(describing:)();
          v106 = sub_10000668C(v104, v105, &v151);

          *(v103 + 4) = v106;
          *(v103 + 12) = 2082;
          v107 = [v16 remObjectID];
          if (v107)
          {
            v108 = v107;
            v109 = [v107 description];

            v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v112 = v111;
          }

          else
          {
            v112 = 0xE300000000000000;
            v110 = 7104878;
          }

          v113 = sub_10000668C(v110, v112, &v151);

          *(v103 + 14) = v113;
          *(v103 + 22) = 1026;
          *(v103 + 24) = v18;
          _os_log_impl(&_mh_execute_header, v101, v120, "%s: Updated pin state {list: %{public}s, isPinnedByCurrentUser: %{BOOL,public}d}", v103, 0x1Cu);
          swift_arrayDestroy();

          (v141->isa)(v145, v144);
          v21 = v142;
          v6 = v132;
          v17 = v126;
          v42 = v127;
        }

        else
        {

          (v141->isa)(v145, v144);
          v17 = v126;
        }

        goto LABEL_47;
      }

      v23 = v119;
      v42 = v127;
      v6 = v132;
      v17 = v126;
LABEL_45:
      (v18)(v145, v144);
LABEL_46:

LABEL_47:
      if (v86 == v17)
      {
        goto LABEL_79;
      }
    }

LABEL_60:
    v21 = v142;

    v23 = v119;
    v42 = v127;
    v6 = v132;
    v17 = v126;
LABEL_61:
    if ([v16 isPinnedByCurrentUser])
    {
      v18 = 0;
      goto LABEL_63;
    }

    v18 = v141->isa;
    goto LABEL_45;
  }

  v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    goto LABEL_43;
  }

LABEL_79:

  v114 = v138;
  if ([v138 hasChanges])
  {
    aBlock[0] = 0;
    v115 = [v114 save:aBlock];
    v116 = aBlock[0];
    v65 = v135;
    if (v115)
    {

      goto LABEL_9;
    }

    v117 = v116;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_4:
    if (qword_100935FD0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_1009450A0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *v29 = 136315394;
      aBlock[0] = v133;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = sub_10000668C(v30, v31, &v151);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = sub_10000668C(v33, v34, &v151);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: Failed to handle event {error: %{public}s}", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {

    v65 = v135;
  }

LABEL_9:
  v36 = *(v23 + 40);
  v37 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003CD574;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EFCE8;
  v38 = _Block_copy(aBlock);

  v39 = v134;
  static DispatchQoS.unspecified.getter();
  v151 = _swiftEmptyArrayStorage;
  sub_1003CD57C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v40 = v130;
  v41 = v137;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);
  (*(v131 + 8))(v40, v41);
  (*(v65 + 8))(v39, v136);
}

uint64_t sub_1003CD230(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return UUID.init(uuidString:)();
}

uint64_t sub_1003CD260()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 0;
    sub_1003CB43C(v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003CD320()
{
  sub_1000536E0(v0 + 16);

  v1 = OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_debounceInterval;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003CD3D8()
{
  sub_1003CD320();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDStalePinnedListsEventHandler()
{
  result = qword_100945120;
  if (!qword_100945120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD484()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_1003CD57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CD5CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945260);
  v1 = sub_100006654(v0, qword_100945260);
  if (qword_1009364B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975170);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003CD694(void *a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v6 = (v5 - 8);
  v59 = *(v5 - 8);
  v7 = *(v59 + 64);
  v8 = __chkstk_darwin(v5);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v52 - v10;
  v11 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v52 - v13;
  v15 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  v16 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v17 = *(v16 - 8);
  v57 = *(v17 + 56);
  v58 = v16;
  v56 = v17 + 56;
  v57(v3 + v15, 1, 1);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  v19 = [objc_opt_self() cdEntityName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v23 = [objc_opt_self() cdEntityName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(inited + 48) = v24;
  *(inited + 56) = v26;
  v27 = [objc_opt_self() cdEntityName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(inited + 64) = v28;
  *(inited + 72) = v30;
  v31 = v14;
  v32 = v53;
  v33 = sub_10038D894(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = v54;
  *(v3 + 16) = v54;
  v35 = type metadata accessor for REMWidgetRefresh();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = v34;
  *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_widgetRefresh) = REMWidgetRefresh.init(interval:queue:)();
  v39 = *(v35 + 48);
  v40 = *(v35 + 52);
  swift_allocObject();
  v41 = v38;
  *(v3 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_highPriorityWidgetRefresh) = REMWidgetRefresh.init(interval:queue:)();
  *(v3 + 24) = a2;
  v42 = swift_allocObject();
  swift_weakInit();

  UUID.init()();
  sub_100026CD8(v31, v32, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *(v32 + v6[7]) = v33;
  *(v32 + v6[8]) = v41;
  v43 = (v32 + v6[9]);
  *v43 = sub_10002B188;
  v43[1] = v42;
  v44 = *(a2 + 40);
  v54 = v33;

  os_unfair_lock_lock(v44);
  v45 = v55;
  sub_100026CD8(v32, v55, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v46 = *(a2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 48) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_100365714(0, v46[2] + 1, 1, v46);
    *(a2 + 48) = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_100365714(v48 > 1, v49 + 1, 1, v46);
  }

  v46[2] = v49 + 1;
  sub_10035083C(v45, v46 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(a2 + 48) = v46;
  swift_endAccess();
  os_unfair_lock_unlock(v44);

  sub_1003508A4(v32, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  (v57)(v31, 0, 1, v58);
  v50 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D740(v31, v3 + v50);
  swift_endAccess();
  return v3;
}

uint64_t sub_1003CDBB4()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10034EE48(v5);
LABEL_5:

    v17 = *(v1 + 24);

    sub_10034EE48(v1 + v11);
    v18 = *(v1 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_widgetRefresh);

    v19 = *(v1 + OBJC_IVAR____TtC7remindd21RDWidgetRefreshEngine_highPriorityWidgetRefresh);

    return v1;
  }

  sub_10035083C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v1 + 24);
  v13 = *(v12 + 40);

  os_unfair_lock_lock(v13);
  __chkstk_darwin(v14);
  *&v21[-16] = v10;
  swift_beginAccess();
  v15 = sub_1002601AC(sub_10014D8A4, &v21[-32]);
  v16 = *(*(v12 + 48) + 16);
  if (v16 >= v15)
  {
    sub_100260C60(v15, v16);
    swift_endAccess();
    os_unfair_lock_unlock(v13);

    sub_1003508A4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1003CDE48()
{
  sub_1003CDBB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDWidgetRefreshEngine()
{
  result = qword_1009452B0;
  if (!qword_1009452B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CDEF4()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003CDFA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945370);
  v1 = sub_100006654(v0, qword_100945370);
  if (qword_100936418 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003CE180(void *a1, int a2, int a3, void *aBlock, const char *a5, SEL *a6)
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  sub_1003D00E4(v10, v12, v13, v9, a5, a6);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_1003CE22C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100945370);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v11 = 136446210;
    v12 = [a1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a3;
    v15 = v4;
    v16 = a2;
    v18 = v17;

    v19 = sub_10000668C(v13, v18, aBlock);
    a2 = v16;
    v4 = v15;
    a3 = v14;

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "getTrackingState with {clientID: %{public}s}", v11, 0xCu);
    sub_10000607C(v23);
  }

  v20 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_1001C66EC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016AC08;
  aBlock[3] = &unk_1008EFF40;
  v22 = _Block_copy(aBlock);

  [v20 getTrackingStateWithClientID:a1 completionHandler:v22];
  _Block_release(v22);
}

void sub_1003CE53C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100945370);
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = [a2 description];
    v29 = v5;
    v30 = a3;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, aBlock);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = [v11 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = v21;
    v5 = v29;
    v25 = sub_10000668C(v24, v23, aBlock);

    *(v14 + 14) = v25;
    a3 = v30;
    _os_log_impl(&_mh_execute_header, v12, v13, "saveTrackingState with {clientID: %{public}s, trackingState: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  v26 = *(v5 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  aBlock[4] = sub_10018ADFC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFEF0;
  v28 = _Block_copy(aBlock);

  [v26 saveTrackingState:v11 withClientID:a2 completionHandler:v28];
  _Block_release(v28);
}

void sub_1003CE8D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100945370);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v31 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    if (a1)
    {
      v17 = [v12 description];
      v30 = v12;
      v18 = a5;
      v19 = v6;
      v20 = a4;
      v21 = v17;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      a4 = v20;
      v6 = v19;
      a5 = v18;
      v12 = v30;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_10000668C(v22, v24, aBlock);

    *(v15 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "fetchHistory after {token: %{public}s}", v15, 0xCu);
    sub_10000607C(v16);

    a3 = v31;
  }

  else
  {
  }

  v26 = *(v6 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  aBlock[4] = sub_1003D02C0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003CEB94;
  aBlock[3] = &unk_1008EFEA0;
  v29 = _Block_copy(aBlock);

  [v26 fetchHistoryAfterToken:v12 entityNames:isa transactionFetchLimit:a3 completionHandler:v29];
  _Block_release(v29);
}

void sub_1003CEB94(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_1003CECFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v37 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100945370);
  (*(v11 + 16))(v14, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = a2;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    v22 = Date.description.getter();
    v33[1] = a1;
    v23 = a4;
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = sub_10000668C(v22, v25, aBlock);
    a4 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "fetchHistory after {date: %{public}s}", v19, 0xCu);
    sub_10000607C(v21);

    v6 = v34;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v27 = *(v6 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v29 = Array._bridgeToObjectiveC()().super.isa;
  v30 = swift_allocObject();
  v31 = v36;
  *(v30 + 16) = a4;
  *(v30 + 24) = v31;
  aBlock[4] = sub_1003D02C0;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003CEB94;
  aBlock[3] = &unk_1008EFE50;
  v32 = _Block_copy(aBlock);

  [v27 fetchHistoryAfterDate:isa entityNames:v29 transactionFetchLimit:v37 completionHandler:v32];
  _Block_release(v32);
}

void sub_1003CF1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100945370);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v12 = 136446210;
    v13 = [v9 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a3;
    v16 = v4;
    v17 = a2;
    v19 = v18;

    v20 = sub_10000668C(v14, v19, aBlock);
    a2 = v17;
    v4 = v16;
    a3 = v15;

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "fetchHistory after {token: %{public}s}", v12, 0xCu);
    sub_10000607C(v24);
  }

  v21 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_10018ADFC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFE00;
  v23 = _Block_copy(aBlock);

  [v21 deleteHistoryBeforeToken:v9 completionHandler:v23];
  _Block_release(v23);
}

void sub_1003CF4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945370);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v20 = Date.description.getter();
    v29[1] = a1;
    v21 = v4;
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_10000668C(v20, v23, aBlock);
    v4 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "fetchHistory after {date: %{public}s}", v17, 0xCu);
    sub_10000607C(v19);
    a2 = v30;

    a3 = v31;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  aBlock[4] = sub_100189954;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008EFDB0;
  v28 = _Block_copy(aBlock);

  [v25 deleteHistoryBeforeDate:isa completionHandler:v28];
  _Block_release(v28);
}

void sub_1003CF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100945370);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    sub_10003980C();
    v12 = Array.description.getter();
    v14 = sub_10000668C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "fetchAuxiliaryChangeInfos with {auxiliaryChangeInfoObjectIDs: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  v15 = *(v4 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  sub_10003980C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v19[4] = sub_1003CFE20;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1003CFB74;
  v19[3] = &unk_1008EFD60;
  v18 = _Block_copy(v19);

  [v15 fetchAuxiliaryChangeInfos:isa completionHandler:v18];
  _Block_release(v18);
}

void sub_1003CFB74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10003980C();
  sub_10018BA8C();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

void sub_1003CFCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003980C();
  sub_10018BA8C();
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
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

id sub_1003CFDB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCChangeTrackingPerformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003CFE20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1003CFE58(uint64_t a1, uint64_t a2)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100945370);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "currentChangeToken initiated", v7, 2u);
  }

  v8 = [*(a1 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation) currentChangeToken];
  (*(a2 + 16))(a2, v8);
}

void sub_1003CFF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100945370);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "currentChangeToken for {accountTypes: %ld}", v9, 0xCu);
  }

  v10 = [*(a2 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation) currentChangeTokenForAccountTypes:a1];
  (*(a3 + 16))(a3, v10);
}

void sub_1003D00E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, SEL *a6)
{
  if (qword_100935FE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945370);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10000668C(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v15, 0xCu);
    sub_10000607C(v16);
  }

  v17 = *(a3 + OBJC_IVAR____TtC7remindd28RDXPCChangeTrackingPerformer_implementation);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 *a6];

  (*(a4 + 16))(a4, v19);
}

uint64_t sub_1003D02DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945420);
  v1 = sub_100006654(v0, qword_100945420);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003D03A4()
{
  result = [objc_opt_self() cloudkit];
  qword_100945438 = result;
  return result;
}

uint64_t sub_1003D03E0()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  v15 = sub_1000F5104(&qword_1009451F0, &unk_1007A61D0);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v35 - v18;
  v20 = sub_1000F5104(&qword_1009451F8, qword_1007A6360);
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v40 = v35 - v23;
  v24 = *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_notificationCenter);
  NSNotificationCenter.publisher(for:object:)();
  v47 = *(v1 + 40);
  v25 = v47;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v36 = *(v27 + 56);
  v37 = v27 + 56;
  v36(v5, 1, 1, v26);
  v35[1] = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_1003CD57C(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v35[0] = v25;
  v28 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);
  (*(v38 + 8))(v9, v28);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0);
  v29 = v41;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v42 + 8))(v14, v29);
  v30 = v35[0];
  v47 = v35[0];
  v36(v5, 1, 1, v26);
  sub_10000CB48(&qword_100945200, &qword_1009451F0, &unk_1007A61D0);
  v31 = v40;
  v32 = v43;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

  (*(v44 + 8))(v19, v32);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100945208, &qword_1009451F8, qword_1007A6360);
  v33 = v45;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v31, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1003D0A04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 1;
    sub_1003D11D4(v2);
  }

  return result;
}

uint64_t sub_1003D0A70()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003D0B08();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 0;
    sub_1003D11D4(v2);
  }

  return result;
}

void sub_1003D0B08()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[5];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if ((*(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 1;
      sub_1003D0D54(0);
      v9 = [v0[4] newBackgroundContextWithAuthor:RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandlerAuthor];
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v9;
      v11[4] = v1;
      aBlock[4] = sub_1003D2D14;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008F00D0;
      v12 = _Block_copy(aBlock);
      v13 = v9;

      [v13 performBlock:v12];
      _Block_release(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D0D54(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) != v3)
  {
    if (*(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent))
    {
      v10 = os_transaction_create();
      v11 = *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = v10;
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_100935FF8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_100945420);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        v30 = v4;
        *v15 = 136315138;
        swift_getMetatypeMetadata();
        v17 = String.init<A>(describing:)();
        v19 = sub_10000668C(v17, v18, &v29);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s: Started handling event", v15, 0xCu);
        sub_10000607C(v16);
      }
    }

    else
    {
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_100945420);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v24;
        v30 = v4;
        *v23 = 136315138;
        swift_getMetatypeMetadata();
        v25 = String.init<A>(describing:)();
        v27 = sub_10000668C(v25, v26, &v29);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s: Finished handling event", v23, 0xCu);
        sub_10000607C(v24);
      }

      static os_signpost_type_t.end.getter();
      if (qword_100935FF8 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v6 + 8))(v9, v5);
      v28 = *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003D11D4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) != (a1 & 1))
  {
    v2 = v1;
    v3 = *v1;
    if (*(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent))
    {
      v4 = os_transaction_create();
      v5 = *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent);
      *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = v4;
      swift_unknownObjectRelease();
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100945420);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        v24 = v3;
        *v8 = 136315138;
        swift_getMetatypeMetadata();
        v10 = String.init<A>(describing:)();
        v12 = sub_10000668C(v10, v11, &v23);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, oslog, v7, "%s: Started debouncing event", v8, 0xCu);
        sub_10000607C(v9);
      }

      else
      {
      }
    }

    else
    {
      if (qword_100935FF0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_100945420);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        v24 = v3;
        *v16 = 136315138;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_10000668C(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s: Finished debouncing event", v16, 0xCu);
        sub_10000607C(v17);
      }

      v21 = *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent);
      *(v2 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = 0;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003D14F8(uint64_t a1, void *a2, void *a3)
{
  v165 = a3;
  v159 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v159 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v159);
  v158 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v157 = *(v7 - 8);
  v8 = *(v157 + 64);
  __chkstk_darwin(v7);
  v156 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v12 = &v139 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v166 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v139 - v18;
  v20 = __chkstk_darwin(v17);
  v169 = &v139 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v139 - v23;
  __chkstk_darwin(v22);
  v26 = &v139 - v25;
  v172 = type metadata accessor for UUID();
  v154 = *(v172 - 8);
  v27 = *(v154 + 64);
  v28 = __chkstk_darwin(v172);
  v152 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v139 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v155 = result;
  if (!result)
  {
    return result;
  }

  v150 = v7;
  v151 = v4;
  v33 = a2;
  v161 = sub_1003D2F60();
  v143 = v13;
  if (qword_100935FF0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100006654(v34, qword_100945420);

  v146 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  LODWORD(v171) = v37;
  v38 = os_log_type_enabled(v36, v37);
  v39 = v165;
  v153 = v33;
  v145 = v19;
  v149 = v24;
  v147 = v26;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *v40 = 136315394;
    aBlock[0] = v39;
    swift_getMetatypeMetadata();
    v41 = String.init<A>(describing:)();
    v43 = sub_10000668C(v41, v42, &v174);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    sub_1003CD57C(&qword_10093B410, &type metadata accessor for UUID);
    v44 = Dictionary.description.getter();
    v46 = sub_10000668C(v44, v45, &v174);
    v26 = v147;

    *(v40 + 14) = v46;
    v24 = v149;
    _os_log_impl(&_mh_execute_header, v36, v171, "%s: Did fetch expected mapping of 'mostRecentTargetTemplateIdentifierByCurrentUser' by 'sourceListIdentifier' {mapping: %{public}s}", v40, 0x16u);
    swift_arrayDestroy();
    v47 = v153;

    v48 = v169;
  }

  else
  {

    v48 = v169;
    v47 = v33;
  }

  v67 = sub_1003D358C(v47);
  swift_bridgeObjectRetain_n();
  v68 = Logger.logObject.getter();
  LODWORD(v167) = static os_log_type_t.default.getter();
  v69 = os_log_type_enabled(v68, v167);
  v160 = v12;
  v170 = (v67 >> 62);
  v171 = v67;
  if (!v69)
  {

    swift_bridgeObjectRelease_n();
    v79 = v161;
    goto LABEL_32;
  }

  v164 = v68;
  v70 = v67 >> 62;
  v48 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v174 = v26;
  *v48 = 136315650;
  aBlock[0] = v165;
  swift_getMetatypeMetadata();
  v71 = String.init<A>(describing:)();
  v73 = sub_10000668C(v71, v72, &v174);

  *(v48 + 4) = v73;
  *(v48 + 12) = 2050;
  v67 = v70;
  if (v70)
  {
    goto LABEL_76;
  }

  v74 = v171;
  for (i = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    *(v48 + 14) = i;

    *(v48 + 22) = 2082;
    aBlock[0] = _swiftEmptyArrayStorage;
    v163 = v48;
    v162 = v26;
    v76 = v74 & 0xFFFFFFFFFFFFFF8;
    v77 = v67 ? _CocoaArrayWrapper.endIndex.getter() : *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v80 = 0;
    v81 = v74 & 0xC000000000000001;
    while (v77 != v80)
    {
      if (v81)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v80 >= *(v76 + 16))
        {
          goto LABEL_68;
        }

        v82 = *(v171 + 8 * v80 + 32);
      }

      v83 = v82;
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        swift_once();
LABEL_8:
        v49 = type metadata accessor for Logger();
        sub_100006654(v49, qword_100945420);
        swift_errorRetain();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = v165;
          v174 = v53;
          *v52 = 136315394;
          aBlock[0] = v54;
          swift_getMetatypeMetadata();
          v55 = String.init<A>(describing:)();
          v57 = sub_10000668C(v55, v56, &v174);

          *(v52 + 4) = v57;
          *(v52 + 12) = 2082;
          swift_getErrorValue();
          v58 = Error.rem_errorDescription.getter();
          v60 = sub_10000668C(v58, v59, &v174);

          *(v52 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v50, v51, "%s: Failed to handle event {error: %{public}s}", v52, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_11;
      }

      v85 = [v82 remObjectID];

      ++v80;
      v12 = v160;
      if (v85)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v80 = v84;
      }
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v87 = Array.description.getter();
    v89 = v88;

    v90 = sub_10000668C(v87, v89, &v174);

    v91 = v163;
    *(v163 + 24) = v90;
    v92 = v164;
    _os_log_impl(&_mh_execute_header, v164, v167, "%s: Did fetch lists shared to current user {count: %{public}ld, objectIDs: %{public}s)}", v91, 0x20u);
    swift_arrayDestroy();

    v47 = v153;
    v48 = v169;
    v24 = v149;
    v26 = v147;
    v79 = v161;
    v67 = v171;
LABEL_32:
    if (v170)
    {
      break;
    }

    v93 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v93)
    {
      goto LABEL_71;
    }

LABEL_34:
    if (v93 >= 1)
    {
      v94 = 0;
      v162 = v67 & 0xC000000000000001;
      v170 = (v154 + 56);
      v142 = v154 + 16;
      v164 = (v154 + 48);
      v140 = (v154 + 32);
      v167 = (v154 + 8);
      *&v78 = 136315650;
      v141 = v78;
      v148 = v31;
      v163 = v93;
      while (1)
      {
        if (v162)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v95 = *(v67 + 8 * v94 + 32);
        }

        v96 = v95;
        v97 = [v95 identifier];
        if (v97)
        {
          v98 = v97;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v79 + 16) && (v99 = sub_100363F20(v31), (v100 & 1) != 0))
          {
            (*(v154 + 16))(v26, *(v79 + 56) + *(v154 + 72) * v99, v172);
            v101 = 0;
          }

          else
          {
            v101 = 1;
          }

          v102 = *v170;
          v103 = 1;
          (*v170)(v26, v101, 1, v172);
          v104 = [v96 mostRecentTargetTemplateIdentifierByCurrentUser];
          if (v104)
          {
            v105 = v104;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v103 = 0;
          }

          v106 = v172;
          v102(v24, v103, 1, v172);
          v107 = *(v168 + 48);
          sub_10018E470(v24, v12);
          sub_10018E470(v26, &v12[v107]);
          isa = v164->isa;
          if ((v164->isa)(v12, 1, v106) == 1)
          {
            sub_1000050A4(v24, &unk_100939D90, "8\n\r");
            if ((isa)(&v12[v107], 1, v172) != 1)
            {
              goto LABEL_53;
            }

            sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          }

          else
          {
            sub_10018E470(v12, v48);
            if ((isa)(&v12[v107], 1, v172) == 1)
            {
              sub_1000050A4(v24, &unk_100939D90, "8\n\r");
              (*v167)(v48, v172);
LABEL_53:
              sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_54:
              v109 = v145;
              sub_10018E470(v26, v145);
              if ((isa)(v109, 1, v172) == 1)
              {
                v110 = 0;
              }

              else
              {
                v110 = UUID._bridgeToObjectiveC()().super.isa;
                (*v167)(v109, v172);
              }

              v111 = v166;
              v31 = v148;
              [v96 setMostRecentTargetTemplateIdentifierByCurrentUser:v110];

              sub_10018E470(v26, v111);
              v112 = v96;
              v113 = Logger.logObject.getter();
              v114 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v174 = v144;
                *v115 = v141;
                aBlock[0] = v165;
                swift_getMetatypeMetadata();
                v116 = String.init<A>(describing:)();
                v118 = sub_10000668C(v116, v117, &v174);

                *(v115 + 4) = v118;
                *(v115 + 12) = 2082;
                v119 = [v112 remObjectID];
                if (v119)
                {
                  v120 = v119;
                  v121 = [v119 description];

                  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v124 = v123;
                }

                else
                {
                  v124 = 0xE300000000000000;
                  v122 = 7104878;
                }

                v131 = sub_10000668C(v122, v124, &v174);

                *(v115 + 14) = v131;
                *(v115 + 22) = 2082;
                v132 = v166;
                v133 = Optional.descriptionOrNil.getter();
                v135 = v134;
                sub_1000050A4(v132, &unk_100939D90, "8\n\r");
                v136 = sub_10000668C(v133, v135, &v174);

                *(v115 + 24) = v136;
                _os_log_impl(&_mh_execute_header, v113, v114, "%s: Updated mostRecentTargetTemplateIdentifierByCurrentUser of shared-to-me list {list: %{public}s, mostRecentTargetTemplateIdentifierByCurrentUser: %{public}s}", v115, 0x20u);
                swift_arrayDestroy();

                v26 = v147;
                sub_1000050A4(v147, &unk_100939D90, "8\n\r");
                (*v167)(v31, v172);
                v12 = v160;
              }

              else
              {

                sub_1000050A4(v111, &unk_100939D90, "8\n\r");
                sub_1000050A4(v26, &unk_100939D90, "8\n\r");
                (*v167)(v31, v172);
              }

              v48 = v169;
              v24 = v149;
              v79 = v161;
              v67 = v171;
              v47 = v153;
              goto LABEL_37;
            }

            v125 = &v12[v107];
            v126 = v172;
            v127 = v152;
            (*v140)(v152, v125, v172);
            sub_1003CD57C(&qword_10093A3E0, &type metadata accessor for UUID);
            LODWORD(v144) = dispatch thunk of static Equatable.== infix(_:_:)();
            v128 = v48;
            v129 = *v167;
            (*v167)(v127, v126);
            sub_1000050A4(v24, &unk_100939D90, "8\n\r");
            v130 = v128;
            v26 = v147;
            v129(v130, v126);
            v47 = v153;
            sub_1000050A4(v12, &unk_100939D90, "8\n\r");
            if ((v144 & 1) == 0)
            {
              goto LABEL_54;
            }

            v48 = v169;
            v24 = v149;
          }

          sub_1000050A4(v26, &unk_100939D90, "8\n\r");
          v31 = v148;
          (*v167)(v148, v172);
          v79 = v161;
          v67 = v171;
        }

        else
        {
        }

LABEL_37:
        if (v163 == ++v94)
        {
          goto LABEL_71;
        }
      }
    }

    __break(1u);
LABEL_76:
    v74 = v171;
  }

  v93 = _CocoaArrayWrapper.endIndex.getter();
  if (v93)
  {
    goto LABEL_34;
  }

LABEL_71:

  if ([v47 hasChanges])
  {
    aBlock[0] = 0;
    if (![v47 save:aBlock])
    {
      v138 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935FF0 != -1)
      {
        goto LABEL_69;
      }

      goto LABEL_8;
    }

    v137 = aBlock[0];
  }

LABEL_11:
  v61 = *(v155 + 40);
  v62 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003D3584;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F00F8;
  v63 = _Block_copy(aBlock);

  v64 = v156;
  static DispatchQoS.unspecified.getter();
  v174 = _swiftEmptyArrayStorage;
  sub_1003CD57C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v65 = v158;
  v66 = v159;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v63);
  (*(v151 + 8))(v65, v66);
  (*(v157 + 8))(v64, v150);
}

uint64_t sub_1003D2A0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent);
    *(v1 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 0;
    sub_1003D0D54(v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003D2ACC()
{
  sub_1000536E0(v0 + 16);

  v1 = OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_debounceInterval;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003D2B84()
{
  sub_1003D2ACC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler()
{
  result = qword_1009454A0;
  if (!qword_1009454A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D2C30()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_1003D2D20()
{
  v0 = sub_10034A794(0, 128);
  type metadata accessor for REMCDTemplate();
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;
  *(v3 + 32) = 0x696669746E656469;
  *(v3 + 40) = 0xEA00000000007265;
  *(v3 + 88) = &type metadata for String;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = 0x694C656372756F73;
  *(v3 + 72) = 0xEF4C525544497473;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v5 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSortDescriptors:v6];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  return v7;
}

unint64_t sub_1003D2F60()
{
  isUniquelyReferenced_nonNull_native = type metadata accessor for URL();
  v68 = *(isUniquelyReferenced_nonNull_native - 8);
  v2 = *(v68 + 64);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v53 - v12;
  __chkstk_darwin(v11);
  v15 = v53 - v14;
  result = sub_1003D2D20();
  if (!v0)
  {
    v17 = result;
    v56 = v15;
    v57 = v6;
    v18 = v68;
    v63 = v13;
    v53[0] = 0;
    if (result >> 62)
    {
LABEL_37:
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v56;
    v21 = v18;
    if (v19)
    {
      v18 = 0;
      v68 = v17 & 0xC000000000000001;
      v58 = (v57 + 16);
      v59 = v17 & 0xFFFFFFFFFFFFFF8;
      v65 = (v57 + 8);
      v60 = (v21 + 8);
      v53[1] = v57 + 40;
      v53[2] = v57 + 32;
      v66 = &_swiftEmptyDictionarySingleton;
      v67 = v19;
      v54 = v4;
      v55 = isUniquelyReferenced_nonNull_native;
      v62 = v10;
      v64 = v17;
      while (1)
      {
        if (v68)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v59 + 16))
          {
            goto LABEL_34;
          }

          v22 = *(v17 + 8 * v18 + 32);
        }

        v23 = v22;
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
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

        v25 = [v22 identifier];
        if (v25)
        {
          v26 = v25;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = [v23 sourceListIDURL];
          if (v27)
          {
            v28 = v27;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            URL._bridgeToObjectiveC()(v29);
            v31 = v30;
            v10 = [objc_opt_self() objectIDWithURL:v30];

            if (v10)
            {
              v61 = v10;
              v32 = [v10 uuid];
              v4 = v63;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v33 = v20;
              v34 = *v58;
              v10 = v5;
              (*v58)(v62, v33, v5);
              v17 = v66;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v69 = v17;
              v5 = sub_100363F20(v4);
              v36 = *(v17 + 16);
              v37 = (v35 & 1) == 0;
              v38 = v36 + v37;
              if (__OFADD__(v36, v37))
              {
                goto LABEL_35;
              }

              v39 = v35;
              if (*(v17 + 24) >= v38)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1003744A0();
                }

                v40 = v63;
              }

              else
              {
                sub_10036C648(v38, isUniquelyReferenced_nonNull_native);
                v40 = v63;
                v41 = sub_100363F20(v63);
                if ((v39 & 1) != (v42 & 1))
                {
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v5 = v41;
              }

              v43 = v69;
              v66 = v69;
              if (v39)
              {
                v44 = v57;
                v45 = v69[7] + *(v57 + 72) * v5;
                v5 = v10;
                (*(v57 + 40))(v45, v62, v10);

                v46 = *(v44 + 8);
                v46(v40, v10);
                v4 = v54;
                isUniquelyReferenced_nonNull_native = v55;
                (*v60)(v54, v55);
                v20 = v56;
                v46(v56, v10);
              }

              else
              {
                v69[(v5 >> 6) + 8] |= 1 << v5;
                v47 = v57;
                v48 = *(v57 + 72) * v5;
                v5 = v10;
                v34((v43[6] + v48), v40, v10);
                (*(v47 + 32))(v66[7] + v48, v62, v10);

                v49 = *(v47 + 8);
                v17 = v65;
                v49(v40, v10);
                v4 = v54;
                isUniquelyReferenced_nonNull_native = v55;
                (*v60)(v54, v55);
                v20 = v56;
                v49(v56, v10);
                v50 = v66[2];
                v51 = __OFADD__(v50, 1);
                v52 = v50 + 1;
                if (v51)
                {
                  goto LABEL_36;
                }

                v66[2] = v52;
              }
            }

            else
            {

              (*v60)(v4, isUniquelyReferenced_nonNull_native);
              (*v65)(v20, v5);
            }
          }

          else
          {
            (*v65)(v20, v5);
          }

          v17 = v64;
        }

        else
        {
        }

        ++v18;
        if (v24 == v67)
        {

          return v66;
        }
      }
    }

    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1003D358C(uint64_t a1)
{
  v3 = _s10PredicatesOMa_1();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100796900;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v8 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];
  v18 = &_swiftEmptySetSingleton;

  sub_100391CC4(v11);

  sub_1003FE48C(v18);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setPropertiesToFetch:isa];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v13 = Array._bridgeToObjectiveC()().super.isa;
  [v9 setSortDescriptors:v13];

  v14 = a1;
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1001555B4(v6);
  }

  else
  {
    v18 = v15;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v14 = Sequence.elements<A>(ofType:)();

    sub_1001555B4(v6);
  }

  return v14;
}

uint64_t *sub_1003D38EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(v10 + 1);
    if (v11 >> 60 == 15)
    {
      *v9 = *v10;
    }

    else
    {
      v13 = *v10;
      sub_100029344(*v10, *(v10 + 1));
      *v9 = v13;
      *(v9 + 1) = v11;
    }
  }

  return a1;
}

uint64_t sub_1003D39E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = (a1 + *(a2 + 20));
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v6;

    return sub_10001BBA0(v8, v7);
  }

  return result;
}

uint64_t sub_1003D3A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = (a2 + v7);
  v10 = v9[1];
  if (v10 >> 60 == 15)
  {
    *v8 = *v9;
  }

  else
  {
    v11 = *v9;
    sub_100029344(*v9, v9[1]);
    *v8 = v11;
    *(v8 + 8) = v10;
  }

  return a1;
}

uint64_t sub_1003D3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *(a2 + v7 + 8);
  if (*(a1 + v7 + 8) >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      v12 = *v9;
      sub_100029344(v12, v10);
      v13 = *v8;
      v14 = v8[1];
      *v8 = v12;
      v8[1] = v10;
      sub_10001BBA0(v13, v14);
      return a1;
    }

    sub_1001531B8(v8);
    goto LABEL_6;
  }

  if (v10 >> 60 == 15)
  {
LABEL_6:
    *v8 = *v9;
    return a1;
  }

  v11 = *v9;
  sub_100029344(v11, v10);
  *v8 = v11;
  v8[1] = v10;
  return a1;
}

uint64_t sub_1003D3C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1003D3C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *(a1 + v7 + 8);
  if (v10 >> 60 != 15)
  {
    v11 = v9[1];
    if (v11 >> 60 != 15)
    {
      v12 = *v8;
      *v8 = *v9;
      v8[1] = v11;
      sub_10001BBA0(v12, v10);
      return a1;
    }

    sub_1001531B8(v8);
  }

  *v8 = *v9;
  return a1;
}

uint64_t type metadata accessor for RDSavedURLAttachment()
{
  result = qword_1009455C8;
  if (!qword_1009455C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D3DC4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1003D3E58(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100945618, &qword_1007A64E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003D465C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for URL();
  sub_1003D4770(&qword_100945620);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RDSavedURLAttachment() + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_1001CB4B8(v15, v12);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003D4024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for URL();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100945600, &qword_1007A64D8);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RDSavedURLAttachment();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003D465C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_1003D4770(&qword_100945610);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  sub_1000318F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  sub_1003D46B0(v22, v27);
  sub_10000607C(a1);
  return sub_1003D4714(v22);
}

uint64_t sub_1003D4370()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1003D43A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_1003D4480(uint64_t a1)
{
  v2 = sub_1003D465C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003D44BC(uint64_t a1)
{
  v2 = sub_1003D465C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1003D452C(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for RDSavedURLAttachment() + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_1001CB4B8(v6, v5);
      sub_1001CB4B8(v9, v8);
      sub_100031A14(v6, v5);
      return 1;
    }

    goto LABEL_6;
  }

  if (v8 >> 60 == 15)
  {
LABEL_6:
    sub_1001CB4B8(v6, v5);
    sub_1001CB4B8(v9, v8);
    sub_100031A14(v6, v5);
    sub_100031A14(v9, v8);
    return 0;
  }

  sub_1001CB4B8(v6, v5);
  sub_1001CB4B8(v9, v8);
  v11 = sub_1001CA5EC(v6, v5, v9, v8);
  sub_100031A14(v9, v8);
  sub_100031A14(v6, v5);
  return (v11 & 1) != 0;
}

unint64_t sub_1003D465C()
{
  result = qword_100945608;
  if (!qword_100945608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945608);
  }

  return result;
}

uint64_t sub_1003D46B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedURLAttachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D4714(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedURLAttachment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D4770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003D47C8()
{
  result = qword_100945628;
  if (!qword_100945628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945628);
  }

  return result;
}

unint64_t sub_1003D4820()
{
  result = qword_100945630;
  if (!qword_100945630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945630);
  }

  return result;
}

unint64_t sub_1003D4878()
{
  result = qword_100945638;
  if (!qword_100945638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945638);
  }

  return result;
}

uint64_t sub_1003D48CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945640);
  v1 = sub_100006654(v0, qword_100945640);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003D4994(unint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  if (!*(*(v1 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier) + 16))
  {
    return 0;
  }

  v5 = sub_1003D4C88(a1);
  if (!v6)
  {
    return 0;
  }

  sub_1003D4D74(v5, v6);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  return 1;
}

void *sub_1003D4C88(unint64_t a1)
{
  result = sub_1003D6E54(a1);
  if (!v1)
  {
    v3 = result;
    v4 = [result versionIdentifiers];
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10031ECC4(v5, v7);

    if (v8)
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000050A4(v7, &qword_100945728, &unk_1007A6670);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003D4D74(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v19 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier;
    v9 = (v3 + 40);
    v10 = v4 - 1;
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      if (v8)
      {
        if (*(*(v20 + v19) + 16))
        {
          v13 = *v9;

          sub_100005F4C(v11, v12);
          v15 = v14;

          if (v15)
          {
            return v11;
          }
        }
      }

      else if (v11 != v6 || v12 != a2)
      {
        v17 = *(v9 - 1);
        v18 = *v9;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 == v7)
          {
            return 0;
          }

          v8 = 0;
          goto LABEL_3;
        }
      }

      if (v10 == v7)
      {
        return 0;
      }

      v8 = 1;
LABEL_3:
      ++v7;
      v9 += 2;
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

void sub_1003D4FA8(unint64_t a1, NSObject *a2, void *a3, NSObject *a4)
{
  v149 = a3;
  v150 = a4;
  v155 = a2;
  ObjectType = swift_getObjectType();
  v158 = type metadata accessor for Date();
  v154 = *(v158 - 8);
  v6 = *(v154 + 64);
  __chkstk_darwin(v158);
  v151 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = v137 - v9;
  __chkstk_darwin(v10);
  v156 = v137 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v152 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v137 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = v137 - v21;
  v23 = v13 + 2;
  v24 = v13[2];
  v159 = a1;
  v24(v137 - v21, a1, v12, v20);
  v25 = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_crashDetectedAnalyticsEventName];
  *v27 = 0xD00000000000004FLL;
  *(v27 + 1) = 0x80000001007F7260;
  (v24)(&v26[OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_storeURL], v22, v12);
  v165.receiver = v26;
  v165.super_class = v25;
  v28 = objc_msgSendSuper2(&v165, "init");
  v31 = v13[1];
  v29 = v13 + 1;
  v30 = v31;
  v31(v22, v12);
  v32 = sub_1003D856C();

  if (v4)
  {
    return;
  }

  v33 = v18;
  v142 = v24;
  v143 = v23;
  v144 = v30;
  v145 = v29;
  v35 = v158;
  v34 = v159;
  v36 = sub_1003D4C88(v159);
  v38 = v37;
  if (!v37)
  {

    return;
  }

  v141 = v36;
  v140 = 0;
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100006654(v39, qword_100945640);
  v41 = v33;
  v142(v33, v34, v12);

  v42 = v157;

  v137[1] = v40;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v147 = v42;

  LODWORD(v146) = v44;
  v157 = v43;
  v45 = os_log_type_enabled(v43, v44);
  v46 = v156;
  v47 = v144;
  if (v45)
  {
    v48 = v12;
    v49 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v163 = v138;
    *v49 = 136446978;
    sub_1003D4770(&qword_1009456F0);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v47(v41, v48);
    v53 = sub_10000668C(v50, v52, &v163);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    v54 = v147;
    *(v49 + 14) = sub_10000668C(*&v147[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v147[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], &v163);
    *(v49 + 22) = 2082;
    v55 = v141;
    *(v49 + 24) = sub_10000668C(v141, v38, &v163);
    *(v49 + 32) = 2080;
    v161 = v155;
    sub_1000F5104(&unk_100945700, &qword_1007A6660);
    v56 = Optional.descriptionOrNil.getter();
    v58 = sub_10000668C(v56, v57, &v163);

    *(v49 + 34) = v58;
    v46 = v156;
    v59 = v157;
    _os_log_impl(&_mh_execute_header, v157, v146, "Will perform staged lightweight migration {storeURL: %{public}s, modelName: %{public}s, initialVersionIdentifier: %{public}s, persistentStoreDescriptionOptionsOverride: %s}", v49, 0x2Au);
    swift_arrayDestroy();

    v12 = v48;
    v35 = v158;
  }

  else
  {

    v47(v41, v12);
    v55 = v141;
    v54 = v147;
  }

  Date.init()();
  v163 = v55;
  v164 = v38;
  v60 = *&v54[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers];
  v62 = (v60 + 16);
  v61 = *(v60 + 16);
  v138 = v32;
  v146 = (v60 + 16);
  v139 = v12;
  if (!v61)
  {
    v92 = v152;
    v89 = v35;
    v142(v152, v159, v12);
LABEL_41:
    v94 = v153;
    v93 = v154;
    (*(v154 + 16))(v153, v46, v89);
    v95 = v147;
    v96 = v46;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    v157 = v95;

    LODWORD(v159) = v98;
    if (os_log_type_enabled(v97, v98))
    {
      v155 = v97;
      v152 = v38;
      v99 = swift_slowAlloc();
      v100 = v139;
      v101 = v99;
      v160 = swift_slowAlloc();
      *v101 = 136446978;
      sub_1003D4770(&qword_1009456F0);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      v144(v92, v100);
      v105 = sub_10000668C(v102, v104, &v160);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2082;
      *(v101 + 14) = sub_10000668C(*(&v157->isa + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), *(&v157[1].isa + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), &v160);
      *(v101 + 22) = 2082;
      if (*v146)
      {
        v106 = &v146[2 * *v146];
        v107 = *v106;
        v108 = v106[1];
      }

      else
      {
        v107 = 0;
        v108 = 0;
      }

      v110 = v151;
      v111 = v159;
      v161 = v107;
      v162 = v108;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v112 = Optional.descriptionOrNil.getter();
      v114 = v113;

      v115 = sub_10000668C(v112, v114, &v160);

      *(v101 + 24) = v115;
      *(v101 + 32) = 2048;
      Date.init()();
      v116 = v153;
      Date.timeIntervalSince(_:)();
      v118 = v117;
      v119 = *(v154 + 8);
      v119(v110, v89);
      v119(v116, v89);
      *(v101 + 34) = v118;
      v120 = v111;
      v121 = v155;
      _os_log_impl(&_mh_execute_header, v155, v120, "Did perform staged lightweight migration {storeURL: %{public}s, modelName: %{public}s, finalVersionIdentifier: %{public}s, elapsedSeconds: %f}", v101, 0x2Au);
      swift_arrayDestroy();

      v119(v156, v89);
    }

    else
    {

      v109 = *(v93 + 8);
      v109(v94, v89);
      v144(v92, v139);
      v109(v96, v89);
    }

    goto LABEL_47;
  }

  v63 = v54;
  v157 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier;

  v64 = v141;
  v65 = (v60 + 40);
  v66 = v38;
  v137[0] = v60 + 40;
  while (2)
  {
    v67 = 0;
    v68 = 0;
    v69 = v61 - 1;
    v70 = v65;
    v71 = v64;
    v72 = v66;
    v73 = v63;
    while (1)
    {
      v74 = *(v70 - 1);
      v75 = *v70;
      if (v68)
      {
        break;
      }

      if (v74 != v64 || v75 != v66)
      {
        v80 = *(v70 - 1);
        v81 = *v70;
        v82 = v73;
        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v73 = v82;
        v66 = v72;
        v64 = v71;
        if ((v83 & 1) == 0)
        {
          if (v69 == v67)
          {
LABEL_29:
            v38 = v66;
            v74 = v64;
            goto LABEL_30;
          }

          v68 = 0;
          goto LABEL_12;
        }
      }

LABEL_22:
      if (v69 == v67)
      {
        goto LABEL_29;
      }

      v68 = 1;
LABEL_12:
      ++v67;
      v70 += 2;
      if (v67 >= *v62)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    if (!(*(&v157->isa + v73))[2])
    {
      goto LABEL_22;
    }

    v76 = *v70;

    sub_100005F4C(v74, v75);
    v78 = v77;

    if ((v78 & 1) == 0)
    {

      v62 = v146;
      v73 = v147;
      v64 = v71;
      v66 = v72;
      goto LABEL_22;
    }

    v71 = objc_autoreleasePoolPush();
    v63 = v147;
    v84 = v140;
    sub_1003D5D6C(v147, v74, v75, v159, v155, v149, v150, &v163, ObjectType, &v161);
    v38 = v75;
    if (v84)
    {
LABEL_56:

      objc_autoreleasePoolPop(v71);

      (*(v154 + 8))(v156, v158);

      return;
    }

    v140 = 0;
    objc_autoreleasePoolPop(v71);

    v163 = v74;
    v164 = v75;
    v64 = v74;
    v66 = v75;
    v62 = v146;
    v61 = *v146;
    v65 = v137[0];
    if (*v146)
    {
      continue;
    }

    break;
  }

LABEL_30:

  if (!*v62)
  {
    v89 = v158;
    v46 = v156;
    goto LABEL_39;
  }

  v85 = &v62[2 * *v62];
  v86 = *v85;
  v87 = v85[1];
  v88 = v74 == *v85 && v38 == v87;
  v89 = v158;
  v46 = v156;
  if (v88 || (v90 = *v85, v91 = v85[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_39:
    v92 = v152;
LABEL_40:
    v142(v92, v159, v139);
    goto LABEL_41;
  }

  v122 = objc_autoreleasePoolPush();
  v123 = v147;
  v124 = sub_1003D6B24(v86, v87);
  if (v124)
  {
    v125 = v124;

    v126 = v140;
    sub_1003D8770(v159, v125, v155);
    v140 = v126;
    v128 = v138;
    if (!v126)
    {
      v136 = v127;

      objc_autoreleasePoolPop(v122);
      v92 = v152;
      v46 = v156;
      goto LABEL_40;
    }
  }

  else
  {
    v129 = objc_opt_self();
    v161 = 0;
    v162 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v130._countAndFlagsBits = 0xD00000000000002CLL;
    v130._object = 0x80000001007F72B0;
    String.append(_:)(v130);
    String.append(_:)(*&v123[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName]);
    v131._object = 0x80000001007F72E0;
    v131._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v131);
    v132._countAndFlagsBits = v86;
    v132._object = v87;
    String.append(_:)(v132);

    v133._countAndFlagsBits = 125;
    v133._object = 0xE100000000000000;
    String.append(_:)(v133);
    v134 = String._bridgeToObjectiveC()();

    v89 = v158;
    v135 = [v129 internalErrorWithDebugDescription:v134];

    v140 = v135;
    swift_willThrow();
    v128 = v138;
  }

  objc_autoreleasePoolPop(v122);

  (*(v154 + 8))(v156, v89);
LABEL_47:
}

void sub_1003D5D6C(char *a1, id a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, NSObject *a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v118 = a8;
  v119 = a6;
  v121 = a7;
  v17 = type metadata accessor for Date();
  v122 = *(v17 - 8);
  v123 = v17;
  v18 = *(v122 + 64);
  __chkstk_darwin(v17);
  v120 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v106 - v21;
  v125 = type metadata accessor for URL();
  v127 = *(v125 - 8);
  v22 = v127[8];
  __chkstk_darwin(v125);
  v126 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  __chkstk_darwin(v27);
  v29 = &v106 - v28;
  v30 = sub_1003D6B24(a2, a3);
  if (!v30)
  {
    v33 = objc_opt_self();
    v128[0] = 0;
    v128[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    v34._object = 0x80000001007F72B0;
    String.append(_:)(v34);
    String.append(_:)(*&a1[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName]);
    v35._object = 0x80000001007F72E0;
    v35._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v35);
    v36._countAndFlagsBits = a2;
    v36._object = a3;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 125;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    v11 = [v33 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    goto LABEL_5;
  }

  v31 = v30;
  sub_1003D8770(a4, v30, a5);
  if (v10)
  {

LABEL_5:
    *a10 = v11;
    return;
  }

  v39 = v32;
  v116 = a4;
  v117 = v31;
  v40 = *&a1[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_postMigrationDataUpdateByModelVersionIdentifier];
  if (!*(v40 + 16))
  {
LABEL_12:
    a1 = v126;
    goto LABEL_13;
  }

  v115 = v32;
  v41 = sub_100005F4C(a2, a3);
  if ((v42 & 1) == 0)
  {
    v39 = v115;
    goto LABEL_12;
  }

  v43 = v41;
  v44 = *(v40 + 56);
  v45 = swift_allocObject();
  v46 = *(v44 + 16 * v43);
  v114 = v45;
  *(v45 + 16) = v46;
  v47 = qword_100936000;

  if (v47 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v48 = type metadata accessor for Logger();
    v49 = sub_100006654(v48, qword_100945640);
    v50 = v127[2];
    v51 = v125;
    v111 = v127 + 2;
    v109 = v50;
    v50(v29, v116, v125);
    v52 = a1;

    v112 = v49;
    v53 = v52;
    v54 = Logger.logObject.getter();
    LODWORD(v52) = static os_log_type_t.default.getter();

    v113 = v52;
    v55 = os_log_type_enabled(v54, v52);
    v108 = v53;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v106 = v54;
      v57 = v56;
      v107 = swift_slowAlloc();
      v128[0] = v107;
      *v57 = 136446722;
      sub_1003D4770(&qword_1009456F0);
      v58 = v53;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v51;
      v62 = v61;
      v110 = v127[1];
      v110(v29, v60);
      v63 = sub_10000668C(v59, v62, v128);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_10000668C(*&v58[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v58[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], v128);
      *(v57 + 22) = 2082;
      *(v57 + 24) = sub_10000668C(a2, a3, v128);
      v64 = v106;
      _os_log_impl(&_mh_execute_header, v106, v113, "Will perform post-migration data update {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v57, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v110 = v127[1];
      v110(v29, v51);
    }

    v86 = v114;
    v39 = v115;
    Date.init()();
    v87 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v87 setPersistentStoreCoordinator:v39];
    v88 = v121 ? String._bridgeToObjectiveC()() : 0;
    [v87 setTransactionAuthor:v88];

    __chkstk_darwin(v89);
    *(&v106 - 4) = sub_1003D9980;
    *(&v106 - 3) = v86;
    *(&v106 - 2) = v87;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v121 = v87;
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v91 = v90;
    v92 = v125;
    v109(v26, v116, v125);
    v93 = v108;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v112 = v93;
      v97 = v96;
      v119 = swift_slowAlloc();
      v128[0] = v119;
      *v97 = 136446978;
      sub_1003D4770(&qword_1009456F0);
      v113 = v95;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v110(v26, v92);
      v101 = sub_10000668C(v98, v100, v128);
      v39 = v115;

      *(v97 + 4) = v101;
      *(v97 + 12) = 2082;
      *(v97 + 14) = sub_10000668C(*&v112[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName], *&v112[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8], v128);
      *(v97 + 22) = 2082;
      *(v97 + 24) = sub_10000668C(a2, a3, v128);
      *(v97 + 32) = 2048;
      *(v97 + 34) = v91;
      _os_log_impl(&_mh_execute_header, v94, v113, "Did perform post-migration data update {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s, elapsedSeconds: %f}", v97, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v110(v26, v92);
    }

    a1 = v126;
    v102 = objc_autoreleasePoolPush();
    v103 = *v118;
    v26 = v118[1];

    v29 = v120;
    sub_1003D8A70(v116, v103, v26, a2, a3, v120, v91);

    objc_autoreleasePoolPop(v102);

    v104 = v123;
    v105 = *(v122 + 8);
    v105(v29, v123);
    v105(v124, v104);
LABEL_13:
    a2 = [v39 persistentStores];
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    a3 = v127;
    if (v65 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    else if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v65 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  v67 = v66;

  v128[0] = 0;
  if ([v39 removePersistentStore:v67 error:v128])
  {
    v68 = v128[0];

LABEL_35:
    return;
  }

  v69 = v128[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_100006654(v70, qword_100945640);
  v71 = a1;
  v72 = a1;
  v73 = v125;
  (*(a3 + 16))(v71, v116, v125);
  swift_errorRetain();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v115 = v39;
    v77 = v76;
    v126 = swift_slowAlloc();
    v128[0] = v126;
    *v77 = 136446466;
    sub_1003D4770(&qword_1009456F0);
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = a3;
    v81 = v80;
    (*(v79 + 8))(v72, v73);
    v82 = sub_10000668C(v78, v81, v128);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2082;
    swift_getErrorValue();
    v83 = Error.rem_errorDescription.getter();
    v85 = sub_10000668C(v83, v84, v128);

    *(v77 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Failed to remove persistent store from persistent store coordinator after staged migration {storeURL: %{public}s, error: %{public}s}", v77, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(a3 + 8))(v72, v73);
  }
}

void *sub_1003D6B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_100005F4C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10;
  }

  else
  {
    swift_endAccess();
    sub_1000060C8(0, &qword_100945720, NSManagedObjectModel_ptr);
    v12 = *(v3 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName);
    v13 = *(v3 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8);
    v14 = *(v3 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_bundle);
    v10 = static NSManagedObjectModel.rem_loadManagedObjectModel(withModelName:versionIdentifier:from:)();
    swift_beginAccess();
    v15 = v10;
    v16 = *(v3 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1002C9444(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v6) = v19;
    swift_endAccess();
  }

  return v10;
}

uint64_t sub_1003D6E54(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v116 = *(v4 - 8);
  v117 = v4;
  v5 = *(v116 + 64);
  __chkstk_darwin(v4);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v121 = &v112 - v9;
  __chkstk_darwin(v10);
  v12 = &v112 - v11;
  v13 = type metadata accessor for NSPersistentStore.StoreType();
  isa = v13[-1].isa;
  v15 = *(isa + 8);
  __chkstk_darwin(v13);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v18 = a1;
  v19 = v129;
  v20 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  v120 = v19;
  if (v19)
  {
    return (*(isa + 1))(v17, v13);
  }

  v22 = v20;
  v114 = v12;
  v113 = v7;
  v115 = a1;
  (*(isa + 1))(v17, v13);
  v129 = *&v2[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_allModelVersionIdentifiers];
  v23 = *(v129 + 16);
  v24 = v22;
  if (v23)
  {
    v25 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_loadedManagedObjectModelByVersionIdentifier;
    v125 = &v2[OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName];
    v124 = OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_bundle;
    v128 = v129 + 32;
    v123 = NSStoreModelVersionIdentifiersKey;
    v126 = v22;
    while (1)
    {
      if (v23 > *(v129 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:

        (*(v25 + 8))(v18, v7);
        goto LABEL_57;
      }

      --v23;
      v26 = (v128 + 16 * v23);
      v7 = *v26;
      v18 = v26[1];
      swift_beginAccess();
      v27 = *&v2[v25];
      v28 = *(v27 + 16);

      if (v28 && (v29 = sub_100005F4C(v7, v18), (v30 & 1) != 0))
      {
        v13 = *(*(v27 + 56) + 8 * v29);
        swift_endAccess();
        v31 = v13;
        if (!v13)
        {
          goto LABEL_7;
        }

LABEL_25:
        a1 = Dictionary._bridgeToObjectiveC()().super.isa;
        v53 = [v13 isConfiguration:0 compatibleWithStoreMetadata:a1];

        if (v53)
        {
          v127 = v13;

          a1 = v114;
          if (qword_100936000 == -1)
          {
LABEL_40:
            v71 = type metadata accessor for Logger();
            sub_100006654(v71, qword_100945640);
            v72 = v116;
            v73 = v117;
            (*(v116 + 16))(a1, v115, v117);

            v74 = v2;
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              *&v132[0] = v129;
              *v77 = 136446722;
              sub_1003D4770(&qword_1009456F0);
              v78 = dispatch thunk of CustomStringConvertible.description.getter();
              v118 = v7;
              v80 = v79;
              (*(v72 + 8))(a1, v73);
              v81 = sub_10000668C(v78, v80, v132);

              *(v77 + 4) = v81;
              *(v77 + 12) = 2082;
              *(v77 + 14) = sub_10000668C(*v125, *(v125 + 1), v132);
              *(v77 + 22) = 2082;
              v82 = sub_10000668C(v118, v18, v132);

              *(v77 + 24) = v82;
              _os_log_impl(&_mh_execute_header, v75, v76, "Found compatible managed object model of store {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v77, 0x20u);
              goto LABEL_42;
            }

            (*(v72 + 8))(a1, v73);
            return v127;
          }

LABEL_59:
          swift_once();
          goto LABEL_40;
        }

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(v24 + 16))
        {

LABEL_6:

          goto LABEL_7;
        }

        v127 = v13;
        a1 = sub_100005F4C(v54, v55);
        v57 = v56;
        v13 = v127;

        if ((v57 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100005EF0(*(v24 + 56) + 32 * a1, v132);
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        if (swift_dynamicCast())
        {
          v118 = v7;
          v58 = v130;
          v59 = [v13 versionIdentifiers];
          v122 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = v58[2];
          if (v60)
          {
            v134 = _swiftEmptyArrayStorage;
            sub_100253B74(0, v60, 0);
            v61 = v134;
            v119 = v58;
            v62 = v58 + 5;
            do
            {
              v63 = *v62;
              v130 = *(v62 - 1);
              v131 = v63;

              swift_dynamicCast();
              v134 = v61;
              v65 = v61[2];
              v64 = v61[3];
              if (v65 >= v64 >> 1)
              {
                sub_100253B74((v64 > 1), v65 + 1, 1);
                v61 = v134;
              }

              v61[2] = v65 + 1;
              v66 = &v61[5 * v65];
              v67 = v132[0];
              v68 = v132[1];
              v66[8] = v133;
              *(v66 + 2) = v67;
              *(v66 + 3) = v68;
              v62 += 2;
              --v60;
            }

            while (v60);

            v24 = v126;
            v13 = v127;
          }

          else
          {

            v61 = _swiftEmptyArrayStorage;
          }

          a1 = sub_1003D82EC(v61, v122);

          v7 = v121;
          if ((a1 & 1) == 0)
          {

            if (qword_100936000 != -1)
            {
              swift_once();
            }

            v83 = type metadata accessor for Logger();
            sub_100006654(v83, qword_100945640);
            v84 = v116;
            v85 = v117;
            (*(v116 + 16))(v7, v115, v117);

            v86 = v2;
            v75 = Logger.logObject.getter();
            v87 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v75, v87))
            {
              v88 = swift_slowAlloc();
              *&v132[0] = swift_slowAlloc();
              *v88 = 136446722;
              sub_1003D4770(&qword_1009456F0);
              v89 = dispatch thunk of CustomStringConvertible.description.getter();
              v90 = v7;
              v92 = v91;
              (*(v84 + 8))(v90, v85);
              v93 = sub_10000668C(v89, v92, v132);

              *(v88 + 4) = v93;
              *(v88 + 12) = 2082;
              *(v88 + 14) = sub_10000668C(*v125, *(v125 + 1), v132);
              *(v88 + 22) = 2082;
              v94 = sub_10000668C(v118, v18, v132);

              *(v88 + 24) = v94;
              _os_log_impl(&_mh_execute_header, v75, v87, "Found managed object model with matching version identifier {storeURL: %{public}s, modelName: %{public}s, versionIdentifier: %{public}s}", v88, 0x20u);
LABEL_42:
              swift_arrayDestroy();
            }

            else
            {

              (*(v84 + 8))(v7, v85);
            }

            return v127;
          }
        }

        if (!v23)
        {
          break;
        }
      }

      else
      {
        swift_endAccess();
        sub_1000060C8(0, &qword_100945720, NSManagedObjectModel_ptr);
        v32 = *v125;
        v33 = *(v125 + 1);
        v34 = *&v2[v124];
        v13 = static NSManagedObjectModel.rem_loadManagedObjectModel(withModelName:versionIdentifier:from:)();
        swift_beginAccess();
        v35 = v13;
        v36 = *&v2[v25];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v7;
        v7 = isUniquelyReferenced_nonNull_native;
        v130 = *&v2[v25];
        v39 = v130;
        *&v2[v25] = 0x8000000000000000;
        v40 = v38;
        v41 = sub_100005F4C(v38, v18);
        v43 = v39[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          goto LABEL_55;
        }

        a1 = v42;
        if (v39[3] >= v46)
        {
          if ((v7 & 1) == 0)
          {
            v69 = v13;
            v70 = v41;
            sub_100376114();
            v41 = v70;
            v13 = v69;
          }

          v7 = v40;
        }

        else
        {
          sub_10036F7DC(v46, v7);
          v7 = v40;
          v41 = sub_100005F4C(v40, v18);
          if ((a1 & 1) != (v47 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        v24 = v126;
        v48 = v130;
        if (a1)
        {
          v49 = v130[7];
          a1 = *(v49 + 8 * v41);
          *(v49 + 8 * v41) = v13;
        }

        else
        {
          v130[(v41 >> 6) + 8] |= 1 << v41;
          v50 = (v48[6] + 16 * v41);
          *v50 = v7;
          v50[1] = v18;
          *(v48[7] + 8 * v41) = v13;
          v51 = v48[2];
          v45 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v45)
          {
            __break(1u);
            goto LABEL_59;
          }

          v48[2] = v52;
        }

        *&v2[v25] = v48;
        swift_endAccess();
        if (v13)
        {
          goto LABEL_25;
        }

LABEL_7:

        if (!v23)
        {
          break;
        }
      }
    }
  }

  v18 = v113;
  if (qword_100936000 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_100945640);
  v25 = v116;
  v7 = v117;
  (*(v116 + 16))(v18, v115, v117);
  a1 = v2;
  v13 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v13, v96))
  {
    goto LABEL_56;
  }

  v97 = swift_slowAlloc();
  v98 = v18;
  v129 = swift_slowAlloc();
  *&v132[0] = v129;
  *v97 = 136446466;
  sub_1003D4770(&qword_1009456F0);
  v99 = a1;
  v100 = dispatch thunk of CustomStringConvertible.description.getter();
  v102 = v101;
  (*(v25 + 8))(v98, v7);
  v103 = v100;
  a1 = v99;
  v104 = sub_10000668C(v103, v102, v132);

  *(v97 + 4) = v104;
  *(v97 + 12) = 2082;
  *(v97 + 14) = sub_10000668C(*(v99 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName), *(v99 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName + 8), v132);
  _os_log_impl(&_mh_execute_header, v13, v96, "Failed to find managed object model with matching version identifier {storeURL: %{public}s, modelName: %{public}s}", v97, 0x16u);
  swift_arrayDestroy();

LABEL_57:
  v105 = objc_opt_self();
  *&v132[0] = 0;
  *(&v132[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(99);
  v106._countAndFlagsBits = 0xD000000000000045;
  v106._object = 0x80000001007F7410;
  String.append(_:)(v106);
  sub_1003D4770(&qword_1009456F0);
  v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v107);

  v108._object = 0x80000001007F7460;
  v108._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v108);
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator_modelName));
  v109._countAndFlagsBits = 125;
  v109._object = 0xE100000000000000;
  String.append(_:)(v109);
  v110 = String._bridgeToObjectiveC()();

  v111 = [v105 invalidParameterErrorWithDescription:v110];

  v120 = v111;
  return swift_willThrow();
}

uint64_t sub_1003D7F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();
}

id sub_1003D8074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RDStagedLightweightCoreDataMigrationCoordinator.BabysitTarget()
{
  result = qword_1009456E0;
  if (!qword_1009456E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D8254()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1003D82EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    sub_10001B270(v5 + 40 * v4, v14);
    if (*(a2 + 16))
    {
      v7 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      v8 = -1 << *(a2 + 32);
      v9 = v7 & ~v8;
      if ((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_4:
    ++v4;
    sub_10001B2CC(v14);
    if (v4 == v2)
    {
      return 1;
    }
  }

  v10 = ~v8;
  while (1)
  {
    sub_10001B270(*(a2 + 48) + 40 * v9, v13);
    v11 = static AnyHashable.== infix(_:_:)();
    sub_10001B2CC(v13);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  sub_10001B2CC(v14);
  return 0;
}

uint64_t sub_1003D8420(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

id sub_1003D856C()
{
  result = [objc_opt_self() sharedBabysitter];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 tokenByRegisteringAccount:v0 forOperationWithName:v3];

    if (!v4)
    {
      sub_1000F5104(&unk_10093D030, &unk_10079C950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = String._bridgeToObjectiveC()();
      v6 = sub_10038D9FC(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
      v7 = objc_opt_self();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 babySatErrorWithOperationName:v8];

      type metadata accessor for Analytics();
      v10 = v0 + OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_crashDetectedAnalyticsEventName;
      v11 = *(v0 + OBJC_IVAR____TtCC7remindd47RDStagedLightweightCoreDataMigrationCoordinatorP33_D88389F778BE955B340162F613733C4913BabysitTarget_crashDetectedAnalyticsEventName);
      v12 = *(v10 + 8);
      sub_1004646CC(v6);

      v13 = v9;
      static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

      swift_willThrow();
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D8770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7];

  [v9 setType:NSSQLiteStoreType];
  [v9 setShouldMigrateStoreAutomatically:1];
  [v9 setShouldInferMappingModelAutomatically:1];
  [v9 setShouldAddStoreAsynchronously:0];
  if (a3)
  {
    v28 = a2;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*(a3 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(a3 + 56) + 8 * v17);

      v22 = v21;
      v23 = String._bridgeToObjectiveC()();
      [v9 setOption:v22 forKey:v23];
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        a2 = v28;
        goto LABEL_13;
      }

      v12 = *(a3 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v24 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:a2];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = (v25 + 16);
    aBlock[4] = sub_1003D99E0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003CEB94;
    aBlock[3] = &unk_1008F0200;
    v27 = _Block_copy(aBlock);

    [v24 addPersistentStoreWithDescription:v9 completionHandler:v27];
    _Block_release(v27);
    swift_beginAccess();
    if (*v26)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
    }
  }
}

uint64_t sub_1003D8A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v11 = type metadata accessor for NSPersistentStore.StoreType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v20 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  v52 = v7;
  if (v7)
  {
    return (*(v12 + 8))(v18, v11);
  }

  v22 = v20;
  v45 = v19;
  v23 = *(v12 + 8);
  v41 = v11;
  v44 = v23;
  v23(v18, v11);
  v24 = *(v22 + 16);
  v25 = v48;
  v46 = v15;
  v47 = a1;
  v42 = "sionIdentifier: ";
  v43 = v22;
  if (v24 && (v26 = sub_100005F4C(0xD000000000000056, 0x80000001007F7310), (v27 & 1) != 0) && (sub_100005EF0(*(v22 + 56) + 32 * v26, &v55), sub_1000F5104(&qword_100945718, &qword_1007A6668), (swift_dynamicCast() & 1) != 0))
  {
    v28 = *&v54[0];
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 40) = 0x80000001007F7370;
  *(inited + 48) = a2;
  *(inited + 56) = v25;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001CLL;
  v30 = v49;
  v31 = v50;
  *(inited + 88) = 0x80000001007F7390;
  *(inited + 96) = v30;
  *(inited + 104) = v31;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "completionDate");
  *(inited + 143) = -18;
  v32 = type metadata accessor for Date();
  *(inited + 168) = v32;
  v33 = sub_1000103CC((inited + 144));
  (*(*(v32 - 8) + 16))(v33, v51, v32);
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000001007F73B0;
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = a7;

  v34 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_100366374(0, v28[2] + 1, 1, v28);
  }

  v35 = v41;
  v37 = v28[2];
  v36 = v28[3];
  if (v37 >= v36 >> 1)
  {
    v28 = sub_100366374((v36 > 1), v37 + 1, 1, v28);
  }

  v28[2] = v37 + 1;
  v28[v37 + 4] = v34;
  v56 = sub_1000F5104(&qword_100945718, &qword_1007A6668);
  *&v55 = v28;
  sub_100005EE0(&v55, v54);
  v38 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v38;
  sub_1002C88F0(v54, 0xD000000000000056, v42 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  v40 = v46;
  static NSPersistentStore.StoreType.sqlite.getter();
  static NSPersistentStoreCoordinator.setMetadata(_:type:at:options:)();
  v44(v40, v35);
}

void sub_1003D8F04(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v2 = type metadata accessor for URL();
  v95 = *(v2 - 8);
  v3 = *(v95 + 64);
  __chkstk_darwin(v2);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v91 - v7;
  __chkstk_darwin(v8);
  v10 = &v91 - v9;
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  if (!v16)
  {
    v18 = objc_opt_self();
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v19._countAndFlagsBits = 0xD000000000000032;
    v19._object = 0x80000001007F70C0;
    String.append(_:)(v19);
    v20._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 125;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v18 invalidParameterErrorWithDescription:v22];
LABEL_6:
    v23;

    swift_willThrow();
    return;
  }

  v96 = v14;
  if (URL.pathExtension.getter() == 0x6574696C7173 && v17 == 0xE600000000000000)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v35 = objc_opt_self();
      v98 = 0;
      v99 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v36._countAndFlagsBits = 0xD000000000000042;
      v36._object = 0x80000001007F7100;
      String.append(_:)(v36);
      v37._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 125;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v31 = String._bridgeToObjectiveC()();

      v32 = [v35 invalidParameterErrorWithDescription:v31];
      goto LABEL_17;
    }
  }

  sub_1003D4770(&unk_100944080);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v25 = objc_opt_self();
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v26._object = 0x80000001007F71F0;
    v26._countAndFlagsBits = 0xD00000000000004CLL;
    String.append(_:)(v26);
    v27._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0xD000000000000017;
    v28._object = 0x80000001007F7240;
    String.append(_:)(v28);
    v29._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 125;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v25 invalidParameterErrorWithDescription:v31];
LABEL_17:
    v32;

    swift_willThrow();
    return;
  }

  v33 = URL.pathExtension.getter();
  v14 = v96;
  if (v33 == 0x6574696C7173 && v34 == 0xE600000000000000)
  {

    goto LABEL_15;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v39 & 1) == 0)
  {
    v84 = objc_opt_self();
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v85._object = 0x80000001007F7150;
    v85._countAndFlagsBits = 0xD00000000000004CLL;
    String.append(_:)(v85);
    v86._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v86);

    v87._countAndFlagsBits = 125;
    v87._object = 0xE100000000000000;
    String.append(_:)(v87);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v84 invalidParameterErrorWithDescription:v22];
    goto LABEL_6;
  }

LABEL_15:
  v93 = v13;
  URL.path.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v14 fileExistsAtPath:v40];

  if (v41)
  {
    v43 = objc_opt_self();
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v44._countAndFlagsBits = 0xD000000000000043;
    v44._object = 0x80000001007F71A0;
    String.append(_:)(v44);
    v45._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 125;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v43 invalidParameterErrorWithDescription:v31];
    goto LABEL_17;
  }

  URL._bridgeToObjectiveC()(v42);
  v48 = v47;
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v98 = 0;
  v52 = v96;
  v53 = [v96 copyItemAtURL:v48 toURL:v50 error:&v98];

  if (!v53)
  {
    v88 = v98;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v54 = v98;
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v55 = v95 + 8;
  v56 = *(v95 + 8);
  v56(v10, v2);
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v92 = v56;
  v56(v10, v2);
  v57 = v55;
  URL.path.getter();
  v58 = String._bridgeToObjectiveC()();

  v59 = v96;
  v60 = [v96 fileExistsAtPath:v58];

  v95 = v57;
  if (v60)
  {
    URL._bridgeToObjectiveC()(v61);
    v63 = v62;
    URL.deletingPathExtension()();
    URL.appendingPathExtension(_:)();
    v64 = v92;
    v92(v5, v2);
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v64(v10, v2);
    v98 = 0;
    v68 = [v59 copyItemAtURL:v63 toURL:v67 error:&v98];

    if (!v68)
    {
      v89 = v98;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v64(v94, v2);
      v64(v93, v2);
      return;
    }

    v69 = v98;
  }

  v70 = v94;
  URL.path.getter();
  v71 = String._bridgeToObjectiveC()();

  v72 = [v59 fileExistsAtPath:v71];

  v74 = v70;
  if (!v72)
  {
LABEL_25:

    v83 = v92;
    v92(v74, v2);
    v83(v93, v2);
    return;
  }

  URL._bridgeToObjectiveC()(v73);
  v76 = v75;
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v77 = v92;
  v92(v5, v2);
  URL._bridgeToObjectiveC()(v78);
  v80 = v79;
  v77(v10, v2);
  v98 = 0;
  v81 = [v59 copyItemAtURL:v76 toURL:v80 error:&v98];

  if (v81)
  {
    v82 = v98;
    v74 = v94;
    goto LABEL_25;
  }

  v90 = v98;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v77(v94, v2);
  v77(v93, v2);
}

uint64_t sub_1003D9980(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1003D99E8()
{
  v0 = type metadata accessor for NSPersistentStore.StoreType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000060C8(0, &qword_100945710, NSPersistentStoreCoordinator_ptr);
  static NSPersistentStore.StoreType.sqlite.getter();
  v5 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  (*(v1 + 8))(v4, v0);
  if (*(v5 + 16) && (v6 = sub_100005F4C(0xD000000000000056, 0x80000001007F7310), (v7 & 1) != 0))
  {
    sub_100005EF0(*(v5 + 56) + 32 * v6, v10);

    sub_1000F5104(&qword_100945718, &qword_1007A6668);
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1003D9BA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003DB43C();
    sub_1003DB488();
    Set.Iterator.init(_cocoa:)();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
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

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1003DB43C(), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_10001B860();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
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
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1003D9DF4()
{
  v0 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  UUID.init(uuidString:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1001A4F9C(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v8, v11, v4);
    v13 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v15 = [v13 objectIDWithUUID:isa];

    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v11, v4);
    return v15;
  }
}

uint64_t sub_1003DA014()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100945730);
  v1 = sub_100006654(v0, qword_100945730);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DA0DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_1003DA134(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;

  v8 = sub_1003D9DF4();
  if (!v8)
  {
    v19 = objc_opt_self();
    _StringGuts.grow(_:)(100);
    v20._object = 0x80000001007F7750;
    v20._countAndFlagsBits = 0xD000000000000061;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 125;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v19 internalErrorWithDebugDescription:v23];

    swift_willThrow();
    return v4;
  }

  v9 = v8;
  swift_beginAccess();
  v10 = *(v2 + 144);
  if (!*(v10 + 16))
  {
LABEL_8:
    v4 = objc_opt_self();
    _StringGuts.grow(_:)(105);
    v24._countAndFlagsBits = 0xD000000000000066;
    v24._object = 0x80000001007F77C0;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 125;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = String._bridgeToObjectiveC()();

    [v4 internalErrorWithDebugDescription:v27];

    swift_willThrow();
    return v4;
  }

  v11 = *(v5 + 144);

  v12 = sub_100005F4C(a1, a2);
  if ((v13 & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  sub_1000F5104(&qword_100943948, &unk_1007A6790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v9;
  v16 = v9;
  v17 = sub_1006666A4(inited, v14);
  if (v3)
  {

    swift_setDeallocating();
    v18 = *(inited + 16);
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    swift_arrayDestroy();
  }

  else
  {
    v29 = v17;
    swift_setDeallocating();
    v30 = *(inited + 16);
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
    swift_arrayDestroy();
    if (*(v29 + 16) && (v31 = sub_100393C74(v16), (v32 & 1) != 0))
    {
      v4 = *(*(v29 + 56) + 8 * v31);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

void sub_1003DA48C()
{
  v2 = v0;
  swift_beginAccess();
  if (*(v0[14] + 16))
  {
    while (1)
    {
      v3 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v4 = v2[14];
      v5 = v4[2];
      if (!v5)
      {
        break;
      }

      v7 = v4[4];
      v6 = v4[5];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[14] = v4;
      if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > v4[3] >> 1)
      {
        v4 = sub_100366664(isUniquelyReferenced_nonNull_native, v5, 1, v4);
        v2[14] = v4;
      }

      v9 = v4[5];

      v10 = v4[2];
      memmove(v4 + 4, v4 + 6, 16 * v10 - 16);
      v4[2] = v10 - 1;
      v2[14] = v4;
      v11 = swift_endAccess();
      v7(v11);
      if (v1)
      {
LABEL_23:

        goto LABEL_24;
      }

      objc_autoreleasePoolPop(v3);
      if (!*(v2[14] + 16))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_8:
  swift_beginAccess();
  if (*(v2[15] + 16))
  {
    while (1)
    {
      v3 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v12 = v2[15];
      v13 = v12[2];
      if (!v13)
      {
        break;
      }

      v15 = v12[4];
      v14 = v12[5];

      v16 = swift_isUniquelyReferenced_nonNull_native();
      v2[15] = v12;
      if (!v16 || (v13 - 1) > v12[3] >> 1)
      {
        v12 = sub_100366664(v16, v13, 1, v12);
        v2[15] = v12;
      }

      v17 = v12[5];

      v18 = v12[2];
      memmove(v12 + 4, v12 + 6, 16 * v18 - 16);
      v12[2] = v18 - 1;
      v2[15] = v12;
      v19 = swift_endAccess();
      v15(v19);
      if (v1)
      {
        goto LABEL_23;
      }

      objc_autoreleasePoolPop(v3);
      if (!*(v2[15] + 16))
      {
        goto LABEL_15;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

LABEL_15:
  swift_beginAccess();
  while (*(v2[16] + 16))
  {
    v3 = objc_autoreleasePoolPush();
    swift_beginAccess();
    v20 = v2[16];
    v21 = v20[2];
    if (!v21)
    {
      goto LABEL_27;
    }

    v23 = v20[4];
    v22 = v20[5];

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v2[16] = v20;
    if (!v24 || (v21 - 1) > v20[3] >> 1)
    {
      v20 = sub_100366664(v24, v21, 1, v20);
      v2[16] = v20;
    }

    v25 = v20[5];

    v26 = v20[2];
    memmove(v20 + 4, v20 + 6, 16 * v26 - 16);
    v20[2] = v26 - 1;
    v2[16] = v20;
    v27 = swift_endAccess();
    v23(v27);
    if (v1)
    {
      goto LABEL_23;
    }

    objc_autoreleasePoolPop(v3);
  }

  v3 = objc_autoreleasePoolPush();
  sub_1003DB064();
LABEL_24:
  objc_autoreleasePoolPop(v3);
}

void sub_1003DA7DC()
{
  v2 = v0;
  swift_beginAccess();
  if (*(*(v0 + 136) + 16))
  {
    while (1)
    {
      v3 = objc_autoreleasePoolPush();
      swift_beginAccess();
      v4 = *(v2 + 136);
      v5 = v4[2];
      if (!v5)
      {
        break;
      }

      v7 = v4[4];
      v6 = v4[5];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 136) = v4;
      if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > v4[3] >> 1)
      {
        v4 = sub_100366664(isUniquelyReferenced_nonNull_native, v5, 1, v4);
        *(v2 + 136) = v4;
      }

      v9 = v4[5];

      v10 = v4[2];
      memmove(v4 + 4, v4 + 6, 16 * v10 - 16);
      v4[2] = v10 - 1;
      *(v2 + 136) = v4;
      v11 = swift_endAccess();
      v7(v11);
      if (v1)
      {

        v14 = v3;
        goto LABEL_10;
      }

      objc_autoreleasePoolPop(v3);
      if (!*(*(v2 + 136) + 16))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v12 = objc_autoreleasePoolPush();
    swift_beginAccess();
    v13 = *(v2 + 144);
    *(v2 + 144) = _swiftEmptyDictionarySingleton;

    v14 = v12;
LABEL_10:
    objc_autoreleasePoolPop(v14);
  }
}

uint64_t sub_1003DA95C(uint64_t a1)
{
  v3 = v1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v15[0] = *v13;
      v15[1] = v14;

      sub_1003DAA84(v15, v3);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003DAA84(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  if (!*(*(a2 + 144) + 16) || (v6 = *(a2 + 144), , sub_100005F4C(v5, v4), v8 = v7, result = , (v8 & 1) == 0))
  {
    v10 = *(a2 + 80);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 storeForAccountIdentifier:v11];

    if (v12)
    {
      type metadata accessor for CDIngestionCoordinator.IngestionContext();
      v13 = swift_allocObject();

      v14 = v12;
      v13[5] = sub_100390420(_swiftEmptyArrayStorage);
      v13[6] = sub_100390420(_swiftEmptyArrayStorage);
      v13[7] = sub_100390448(_swiftEmptyArrayStorage);
      v13[2] = v5;
      v13[3] = v4;
      v13[4] = v14;
      swift_beginAccess();

      v15 = *(a2 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(a2 + 144);
      *(a2 + 144) = 0x8000000000000000;
      sub_1002C95BC(v13, v5, v4, isUniquelyReferenced_nonNull_native);

      *(a2 + 144) = v40;
      swift_endAccess();

      v17 = sub_1003D9DF4();
      if (v17)
      {
        v18 = v17;
        sub_1000F5104(&qword_100943948, &unk_1007A6790);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791300;
        *(inited + 32) = v18;
        v20 = v18;
        sub_1006666A4(inited, v13);
        if (!v2)
        {
        }

        swift_setDeallocating();
        v21 = *(inited + 16);
        sub_1000F5104(&unk_100943950, &unk_1007A4200);
        return swift_arrayDestroy();
      }

      else
      {
        if (qword_100936008 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100006654(v30, qword_100945730);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v41[0] = v34;
          *v33 = 136446210;
          *(v33 + 4) = sub_10000668C(v5, v4, v41);
          _os_log_impl(&_mh_execute_header, v31, v32, "Could not convert accountIdentifier to CDObjectID to initializeIngestionContexts {accountIdentifier: %{public}s}", v33, 0xCu);
          sub_10000607C(v34);
        }

        v35 = objc_opt_self();
        v41[0] = 0;
        v41[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(104);
        v36._object = 0x80000001007F76E0;
        v36._countAndFlagsBits = 0xD000000000000065;
        String.append(_:)(v36);
        v37._countAndFlagsBits = v5;
        v37._object = v4;
        String.append(_:)(v37);
        v38._countAndFlagsBits = 125;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v39 = String._bridgeToObjectiveC()();

        [v35 internalErrorWithDebugDescription:v39];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936008 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100945730);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41[0] = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_10000668C(v5, v4, v41);
        _os_log_impl(&_mh_execute_header, v23, v24, "Persistent store not found for some ingestables, the store may have been removed before this save request. Aborting the entire save for integrity. {accountIdentifier: %{public}s}", v25, 0xCu);
        sub_10000607C(v26);
      }

      v27 = objc_opt_self();
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_100791300;
      *(v28 + 32) = v5;
      *(v28 + 40) = v4;

      sub_1001A5660(v28);
      swift_setDeallocating();
      sub_100034610(v28 + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v27 accountStoreMissingError:isa];

      return swift_willThrow();
    }
  }

  return result;
}

void sub_1003DB064()
{
  v1 = *(v0 + 88);
  v2 = [v1 updatedObjects];
  sub_1003DB43C();
  sub_1003DB488();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 insertedObjects];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1007252C4(v5, v3);
  sub_1003D9BA8(v6);
  v8 = v7;

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100945730);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = v8 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_8;
  }

  v13 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v18 = v3;
  *v13 = 136446466;
  *(v13 + 4) = sub_10000668C(0xD000000000000010, 0x80000001007F76C0, &v18);
  *(v13 + 12) = 2048;
  if (v12)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v13 + 14) = i;

    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Updated objects to inspect for orphan {count: %ld}", v13, 0x16u);
    sub_10000607C(v3);

LABEL_8:
    v10 = [objc_allocWithZone(NSMutableDictionary) init];
    if (v12)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    if (v13 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_19:
    ;
  }

  for (j = 0; j != v13; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v8 + 8 * j + 32);
    }

    v17 = v16;
    [v16 updateDeletedFlagAccordingToOrphanState:v10];
  }

LABEL_17:
}