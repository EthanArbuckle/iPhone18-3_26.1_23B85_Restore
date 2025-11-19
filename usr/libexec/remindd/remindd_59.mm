void sub_10056BFA0(void *a1, void (*a2)(void, void), uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_10003A1B8();
  if (v12)
  {

    v35 = a2;
    updated = type metadata accessor for RDTemplateOperationCreateOrUpdateTemplatePublicLink();
    sub_10000A87C(a6, v36);
    v14 = objc_opt_self();
    v15 = [v14 sharedConfiguration];
    [v15 templatePublicLinkTTL];
    v17 = v16;

    v19 = v37;
    v18 = v38;
    v34 = a1;
    v20 = sub_10000C9DC(v36, v37);
    v21 = *(*(v19 - 8) + 64);
    v22 = __chkstk_darwin(v20);
    v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24, v22);
    sub_1005AF7A4(a4, a5, v24, 0, 1000, v17, updated, v19, v18);
    v26 = a4;
    v27 = a5;
    sub_10000607C(v36);
    v28 = swift_allocObject();
    *(v28 + 16) = v35;
    *(v28 + 24) = a3;

    v29 = [v14 sharedConfiguration];
    [v29 templatePublicLinkOperationTimeoutInterval];
    v31 = v30;

    sub_1005AA79C(v34, sub_1005815AC, v28, v31);
  }

  else
  {
    v32 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v32);
  }
}

void sub_10056C240(void *a1, void (*a2)(void, id), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_10003A1B8();
  if (v10)
  {

    v11 = [objc_opt_self() sharedConfiguration];
    [v11 templatePublicLinkTTL];
    v13 = v12;

    type metadata accessor for RDTemplateOperationCreateTemplatePublicContentPreview();
    inited = swift_initStackObject();
    *(inited + 16) = a4;
    *(inited + 24) = a5;
    *(inited + 32) = 1000;
    *(inited + 40) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = a4;
    v17 = a5;

    sub_1003B428C(a1, sub_1005815AC, v15);

    swift_setDeallocating();
  }

  else
  {
    v18 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v18);
  }
}

void sub_10056C3D0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_10056C480(uint64_t a1, void (*a2)(void, id), uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_10003A1B8();
  if (v10)
  {

    v11 = type metadata accessor for RDTemplateOperationRevokeTemplatePublicLink();
    sub_10000A87C(a5, v28);
    v12 = v29;
    v13 = v30;
    v14 = sub_10000C9DC(v28, v29);
    v15 = *(*(v12 - 8) + 64);
    v16 = __chkstk_darwin(v14);
    v18 = &v28[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    sub_100138BAC(a4, v18, 0, v11, v12, v13);
    v20 = a4;
    sub_10000607C(v28);
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    v22 = objc_opt_self();

    v23 = [v22 sharedConfiguration];
    [v23 templatePublicLinkOperationTimeoutInterval];
    v25 = v24;

    sub_10012F9F0(a1, sub_1005815AC, v21, v25);
  }

  else
  {
    v26 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v26);
  }
}

void sub_10056C6D4(void *a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003A1B8();
  if (v15)
  {

    (*(v11 + 16))(v14, a4, v10);
    sub_10000A87C(a5, v29);
    v16 = type metadata accessor for RDTemplateOperationDownloadPublicTemplate();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID, v14, v10);
    sub_100054B6C(v29, v19 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController);
    *(v19 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_isUnitTestMode) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v21 = objc_opt_self();

    v22 = [v21 sharedConfiguration];
    [v22 templatePublicLinkOperationTimeoutInterval];
    v24 = v23;

    sub_100427F30(a1, sub_100187DC0, v20, v24);

    swift_setDeallocating();
    (*(v11 + 8))(v19 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID, v10);
    sub_10000607C((v19 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController));
    v25 = *(*v19 + 48);
    v26 = *(*v19 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v27 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v27);
  }
}

void sub_10056CAA0(void *a1, int a2)
{
  v63 = a2;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = _s10PredicatesOMa_1();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A81F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1007953F0;
  *(v13 + 32) = swift_getKeyPath();
  v14 = sub_10001F6F4();
  v15 = sub_100405438(inited, v13, 0, v14);

  swift_setDeallocating();
  v16 = *(v13 + 16);
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_1004258C8(v11, _s10PredicatesOMa_1);

    return;
  }

  v57 = a1;
  v64 = v18;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v19 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v11, _s10PredicatesOMa_1);

  if (v19 >> 62)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
    if (v62)
    {
      goto LABEL_7;
    }

LABEL_10:

    return;
  }

  v62 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v62)
  {
    goto LABEL_10;
  }

LABEL_7:
  v56 = v19 >> 62;
  sub_100390994(_swiftEmptyArrayStorage);
  static Date.now.getter();
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v7, 0, 1, v20);
  sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
  v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = 0;
  if ((*(v21 + 48))(v7, 1, v20) != 1)
  {
    v23 = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v7, v20);
  }

  v24 = [objc_allocWithZone(REMTextMemberships) initWithMemberships:v22.super.isa lastResetDate:v23];

  v64 = v24;
  sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
  v25 = REMJSONRepresentable.toJSONData()();
  v27 = v26;
  v64 = v24;
  v28 = REMChecksumRepresentable.rem_checksum.getter();
  v59 = v25;
  v60 = v27;
  v55 = v24;
  if (v62 < 1)
  {
    __break(1u);
LABEL_42:
    swift_once();
LABEL_31:
    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_10094C8C0);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      if (v56)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v51 + 4) = v52;

      _os_log_impl(&_mh_execute_header, v49, v50, "Cleared grocery local corrections of list owned by current user {lists.count: %ld}", v51, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_10001BBA0(v25, v60);

    return;
  }

  v30 = v28;
  v31 = v29;
  v32 = 0;
  v61 = v19 & 0xC000000000000001;
  v58 = &unk_1007B1E10;
  do
  {
    if (v61)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v19 + 8 * v32 + 32);
    }

    v38 = v37;
    if ((v63 & 1) != 0 || ([v37 shouldAutoCategorizeItems] & 1) == 0)
    {

      v39 = [v38 autoCategorizationLocalCorrectionsChecksum];
      if (v39)
      {
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (v41 == v30 && v43 == v31)
        {

          goto LABEL_14;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_14;
        }
      }

      v33 = String._bridgeToObjectiveC()();
      [v38 setAutoCategorizationLocalCorrectionsChecksum:v33];

      v34 = [v38 createResolutionTokenMapIfNecessary];
      v35 = String._bridgeToObjectiveC()();
      [v34 updateForKey:v35];

LABEL_14:

      v36 = Data._bridgeToObjectiveC()().super.isa;
      [v38 setAutoCategorizationLocalCorrectionsAsData:v36];

      [v38 updateChangeCount];
    }

    ++v32;
  }

  while (v62 != v32);

  v64 = 0;
  if ([v57 save:&v64])
  {
    v46 = qword_100936558;
    v47 = v64;
    v27 = v55;
    v25 = v59;
    if (v46 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v53 = v64;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001BBA0(v59, v60);
}

uint64_t sub_10056D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10056D3B8, 0, 0);
}

uint64_t sub_10056D3B8()
{
  sub_10025655C(*(v0 + 16), *(v0 + 24), 0, 1);
  v1 = *(v0 + 40);
  (*(v0 + 32))();

  v2 = *(v0 + 8);

  return v2();
}

void sub_10056D498(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10056D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v22;
  *(v8 + 144) = v21;
  *(v8 + 128) = v20;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = type metadata accessor for REMAnalyticsEvent();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for REMTrialNamespace();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v8 + 200) = v15;
  v16 = *(v15 - 8);
  *(v8 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10056D6D8, 0, 0);
}

uint64_t sub_10056D6D8()
{
  v2 = 0;
  v5 = sub_1001E12E8(v0[11]);
  v0[5] = v0[12];
  v0[6] = v0[13];
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 5;
  v7 = sub_100040A74(sub_100040B20, v6, v5);

  if (v7)
  {
    v102 = v0;
    v93 = *(v5 + 2);
    if (v93)
    {
      v8 = 0;
      v9 = v0[23];
      v10 = v0[20];
      v91 = v0[21];
      v87 = enum case for REMTrialNamespace.grocery(_:);
      v85 = (v9 + 8);
      v86 = (v9 + 104);
      v101 = (v0[26] + 8);
      v90 = enum case for REMAnalyticsEvent.loadGroceryModel(_:);
      v89 = (v10 + 104);
      v92 = (v10 + 8);
      v11 = v5 + 40;
      v12 = _swiftEmptyDictionarySingleton;
      v88 = v5;
      while (v8 < *(v5 + 2))
      {
        v18 = v102[28];
        v19 = *(v11 - 1);
        v20 = *v11;

        Date.init()();
        v21 = type metadata accessor for REMTrialClient();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        v24 = REMTrialClient.init()();
        v100 = v12;
        v25 = v19;
        v26 = v102[24];
        v27 = v102[22];
        (*v86)(v26, v87, v27);
        v96 = dispatch thunk of REMTrialClient.deploymentId(for:)();
        v97 = v28;
        (*v85)(v26, v27);

        v98 = v25;
        v99 = v20;
        v29 = sub_10025A4E4(v25, v20, v24);
        v31 = v102[27];
        v30 = v102[28];
        v32 = v102[25];
        v33 = v29;

        v34 = REMGroceryClassifier.modelTypesDescription.getter();
        v94 = v35;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v1 = v36;
        v37 = *v101;
        (*v101)(v31, v32);
        if (qword_100936858 != -1)
        {
          swift_once();
        }

        v95 = v11;
        v38 = type metadata accessor for Logger();
        sub_100006654(v38, qword_100951C50);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = v1;
          _os_log_impl(&_mh_execute_header, v39, v40, "REMGroceryClassifier model loading time: %f", v41, 0xCu);
        }

        v13 = v102[28];
        v14 = v102[25];
        v15 = v102[21];
        v16 = v102[19];

        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        *v15 = v1;
        *(v91 + 8) = v34;
        *(v91 + 16) = v94;
        *(v91 + 24) = 513;
        *(v91 + 32) = v96;
        *(v91 + 40) = v97;
        v2 = v99;
        *(v91 + 48) = v98;
        *(v91 + 56) = v99;
        *(v91 + 64) = 0xD00000000000001ELL;
        *(v91 + 72) = 0x80000001007FCA50;
        *(v91 + 80) = 0;
        *(v91 + 88) = 0;
        (*v89)(v15, v90, v16);

        REMAnalyticsManager.post(event:)();

        (*v92)(v15, v16);
        v37(v13, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        ++v8;
        sub_1002C8FCC(v33, v98, v99, isUniquelyReferenced_nonNull_native);

        v12 = v100;
        v11 += 16;
        v5 = v88;
        if (v93 == v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      swift_once();
      v76 = type metadata accessor for Logger();
      sub_100006654(v76, qword_100951C50);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 134217984;
        *(v79 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v77, v78, "REMGroceryClassifier model loading time: %f", v79, 0xCu);
      }

      v0 = v102;
      v80 = v102[28];
      v81 = v102[25];
      v82 = v102[21];
      v83 = v102[19];

      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      *v82 = v1;
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
      *(v91 + 24) = 0;
      *(v91 + 32) = v96;
      *(v91 + 40) = v97;
      *(v91 + 48) = v98;
      *(v91 + 56) = v99;
      *(v91 + 64) = 0xD00000000000001ELL;
      *(v91 + 72) = 0x80000001007FCA50;
      *(v91 + 80) = v95;
      *(v91 + 88) = 0;
      (*v89)(v82, v90, v83);

      REMAnalyticsManager.post(event:)();

      (*v92)(v82, v83);
      swift_willThrow();

      (v11)(v80, v81);
      v3 = v102[14];
      v4 = v102[15];
      swift_errorRetain();
      v3(0, v2);
    }

    else
    {
      v12 = _swiftEmptyDictionarySingleton;
LABEL_12:
      v0 = v102;
      v102[29] = v12;

      if (v12[2])
      {
        v47 = sub_100005F4C(v102[12], v102[13]);
        if (v48)
        {
          v103 = *(v102 + 280);
          v50 = v102[17];
          v49 = v102[18];
          v51 = v102[16];
          v52 = v102[11];
          v53 = (*(v12[7] + 8 * v47) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
          v55 = *v53;
          v54 = v53[1];
          v102[30] = v54;
          v102[9] = v51;

          v56 = sub_100390AA4(_swiftEmptyArrayStorage);
          v102[31] = v56;
          v102[10] = v56;
          v57 = swift_task_alloc();
          v102[32] = v57;
          *(v57 + 16) = v52;
          *(v57 + 24) = v12;
          *(v57 + 32) = v50;
          *(v57 + 40) = v49;
          *(v57 + 48) = v103;
          *(v57 + 56) = v55;
          *(v57 + 64) = v54;
          v58 = async function pointer to Sequence.asyncReduce<A>(_:_:)[1];
          v59 = swift_task_alloc();
          v102[33] = v59;
          v60 = sub_1000F5104(&unk_100945240, &qword_1007A0A70);
          v61 = sub_1000F5104(&qword_10094C9B8, &qword_1007B1E08);
          v62 = sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
          *v59 = v102;
          v59[1] = sub_10056E158;

          return Sequence.asyncReduce<A>(_:_:)(v102 + 8, v102 + 10, &unk_1007B1DF8, v57, v60, v61, v62);
        }
      }

      v64 = v102[14];
      v63 = v102[15];
      v66 = v102[12];
      v65 = v102[13];

      v67 = objc_opt_self();
      _StringGuts.grow(_:)(45);

      v68._countAndFlagsBits = v66;
      v68._object = v65;
      String.append(_:)(v68);
      v69 = String._bridgeToObjectiveC()();

      v70 = [v67 invalidParameterErrorWithDescription:v69];

      v64(0, v70);
    }
  }

  else
  {
    v43 = v0[14];
    v42 = v0[15];

    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 invalidParameterErrorWithDescription:v45];

    v43(0, v46);
  }

  v72 = v0[27];
  v71 = v0[28];
  v73 = v0[24];
  v74 = v0[21];

  v75 = v0[1];

  return v75();
}

uint64_t sub_10056E158()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v16 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[32];
    v8 = v2 + 29;
    v6 = v2[29];
    v7 = v8[1];

    v9 = sub_10056E3D0;
  }

  else
  {
    v10 = v2[31];
    v11 = v2[32];
    v14 = v2 + 29;
    v12 = v2[29];
    v13 = v14[1];

    v9 = sub_10056E2BC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10056E2BC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = objc_allocWithZone(REMGrocerySuggestions);
  sub_1000F5104(&qword_10094C9C0, &qword_1007B1E10);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithSuggestedSectionsByReminderTitle:isa];

  v2(v6, 0);
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10056E3D0()
{
  v1 = v0[34];
  v3 = v0[14];
  v2 = v0[15];
  swift_errorRetain();
  v3(0, v1);

  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10056E488(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 112) = a7;
  *(v8 + 120) = v12;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a1;
  *(v8 + 88) = a4;
  v9 = *a2;
  *(v8 + 128) = v13;
  *(v8 + 136) = v9;
  v10 = a3[1];
  *(v8 + 144) = *a3;
  *(v8 + 152) = v10;
  return _swift_task_switch(sub_10056E4CC, 0, 0);
}

uint64_t sub_10056E4CC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[11];
  v4 = v0[12];
  v6 = objc_opt_self();

  v7 = [v6 sharedConfiguration];
  v8 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v0[2] = v7;
  v9 = v0 + 2;
  v0[5] = v8;
  v0[6] = &off_1008E5A40;
  sub_100124864(v2, v1, v5, v0 + 2, v4);
  v0[20] = v10;
  v11 = v10;
  sub_10000607C(v0 + 2);
  v12 = *(v11 + 16);
  v0[21] = v12;
  if (!v12)
  {
LABEL_5:
    v14 = v0[20];

    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v18 = v0[10];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CAC98(_swiftEmptyArrayStorage, v16, v15, isUniquelyReferenced_nonNull_native);

    *v18 = v17;
    v20 = v0[1];

    return v20();
  }

  v0[22] = 0;
  v13 = v0[20];
  if (!v13[2])
  {
    __break(1u);
LABEL_9:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = v13[4];
  v9 = v13[5];
  v0[23] = v9;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_9;
  }

  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_10:
  v22 = v0[13];
  v9;

  if (!v22)
  {
    v24 = 0;
    v25 = v0[14];
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_14:
    v26 = 0;
    v27 = 1;
    goto LABEL_15;
  }

  [v0[13] floatValue];
  v24 = v23;
  v25 = v0[14];
  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_12:
  v26 = [v25 integerValue];
  v27 = v0[14] == 0;
LABEL_15:
  v28 = v0[13] == 0;
  v0[7] = v5;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  v0[24] = v30;
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_10056E81C;
  v34 = v0[18];
  v33 = v0[19];
  v36 = *(v0 + 224);

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v34, v33, v24 | (v28 << 32), v26, v27, v29, v31, 0xD000000000000016);
}

uint64_t sub_10056E81C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  v7 = v3[24];
  if (v1)
  {
    v8 = v4[20];
    v9 = v4[17];

    v10 = sub_10056F0B8;
  }

  else
  {

    v10 = sub_10056E978;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10056E978()
{
  v80 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v41 = *(v0 + 208);

    v5 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage[2];
    if (v32)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v3 = *(v0 + 184);
  *(v0 + 64) = _swiftEmptyArrayStorage;
  sub_1002538A4(0, v2, 0);
  v4 = 0;
  v5 = *(v0 + 64);
  v76 = (v3 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
  v6 = *(v0 + 216);
  v7 = (v1 + 56);
  *&v8 = 136315650;
  v71 = v8;
  v9 = v1;
  v74 = v1;
  v75 = v2;
  do
  {
    if (v4 >= *(v9 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v1 = *(v7 - 3);
    v77 = *(v7 - 2);
    v78 = v1;
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = *v76;
    v13 = v76[1];
    if (*v76 == *(v0 + 120) && v13 == *(v0 + 128))
    {
      v17 = *(v7 - 1);

      goto LABEL_11;
    }

    v15 = *v76;
    v16 = v76[1];
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v9 = v74;
LABEL_11:
      v18 = v77;
      goto LABEL_12;
    }

    v22 = sub_10025655C(*(v0 + 120), *(v0 + 128), 1, 0);
    if (v6)
    {
      v53 = *(v0 + 208);
      v54 = *(v0 + 184);
      v55 = *(v0 + 160);
      v56 = *(v0 + 136);

      v51 = *(v0 + 8);
      goto LABEL_36;
    }

    if (v1 >= *(v22 + 16))
    {

      if (qword_100935A68 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 128);
      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_1009387D8);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v27, v28))
      {

        v6 = 0;
        v9 = v74;
        goto LABEL_11;
      }

      v72 = *(v0 + 120);
      v73 = *(v0 + 128);
      v29 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v29 = v71;
      *(v29 + 4) = sub_10000668C(v77, v10, v79);
      *(v29 + 12) = 2080;
      v30 = v13;
      v18 = v77;
      *(v29 + 14) = sub_10000668C(v12, v30, v79);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_10000668C(v72, v73, v79);
      _os_log_impl(&_mh_execute_header, v27, v28, "convert(prediction:from:to:) skip: %s, %s, %s", v29, 0x20u);
      swift_arrayDestroy();

      v6 = 0;
      v9 = v74;
    }

    else
    {
      if (v1 < 0)
      {
        goto LABEL_41;
      }

      v23 = v22 + 16 * v1;
      v18 = *(v23 + 32);
      v24 = *(v23 + 40);

      v6 = 0;
      v10 = v24;
      v9 = v74;
    }

LABEL_12:
    *(v0 + 64) = v5;
    v20 = v5[2];
    v19 = v5[3];
    v1 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_1002538A4((v19 > 1), v20 + 1, 1);
      v5 = *(v0 + 64);
    }

    ++v4;
    v5[2] = v1;
    v21 = &v5[4 * v20];
    v21[4] = v78;
    v21[5] = v18;
    v21[6] = v10;
    *(v21 + 14) = v11;
    v7 += 8;
  }

  while (v75 != v4);
  v31 = *(v0 + 208);

  v32 = v5[2];
  if (!v32)
  {
LABEL_30:
    v9 = *(v0 + 184);

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_26:
  *(v0 + 72) = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v33 = v5 + 7;
  do
  {
    v34 = *(v33 - 3);
    v35 = *(v33 - 2);
    v1 = *(v33 - 1);
    v36 = *v33;
    v33 += 8;
    v37 = objc_allocWithZone(REMGrocerySuggestedSection);

    v38 = String._bridgeToObjectiveC()();
    LODWORD(v39) = v36;
    [v37 initWithLabelIndex:v34 sectionCanonicalName:v38 confidenceScore:v39];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v40 = *(*(v0 + 72) + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v0 + 72;
    specialized ContiguousArray._endMutation()();
    --v32;
  }

  while (v32);

  v6 = *(v0 + 72);
LABEL_31:
  v42 = *(v0 + 176) + 1;
  if (v42 == *(v0 + 168))
  {
LABEL_35:
    v45 = *(v0 + 160);

    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 136);
    v49 = *(v0 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v48;
    sub_1002CAC98(v6, v47, v46, isUniquelyReferenced_nonNull_native);

    *v49 = v79[0];
    v51 = *(v0 + 8);
LABEL_36:

    return v51();
  }

  *(v0 + 176) = v42;
  v43 = *(v0 + 160);
  if (v42 >= *(v43 + 16))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  v44 = v43 + 16 * v42;
  v1 = *(v44 + 32);
  v9 = *(v44 + 40);
  *(v0 + 184) = v9;
  if (v6 >> 62)
  {
    goto LABEL_43;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_44:
  v57 = *(v0 + 104);
  v9;

  if (v57)
  {
    [*(v0 + 104) floatValue];
    v59 = v58;
    v60 = *(v0 + 112);
    if (v60)
    {
      goto LABEL_46;
    }

LABEL_48:
    v61 = 0;
    v62 = 1;
  }

  else
  {
    v59 = 0;
    v60 = *(v0 + 112);
    if (!v60)
    {
      goto LABEL_48;
    }

LABEL_46:
    v61 = [v60 integerValue];
    v62 = *(v0 + 112) == 0;
  }

  v63 = *(v0 + 104) == 0;
  *(v0 + 56) = v1;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  v66 = v65;
  *(v0 + 192) = v65;
  v67 = swift_task_alloc();
  *(v0 + 200) = v67;
  LOBYTE(v79[0]) = v63;
  *v67 = v0;
  v67[1] = sub_10056E81C;
  v69 = *(v0 + 144);
  v68 = *(v0 + 152);
  v70 = *(v0 + 224);
  v84 = 0;
  v83 = v70;
  v82 = 0x80000001007FCAA0;

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v69, v68, v59 | (v63 << 32), v61, v62, v64, v66, 0xD000000000000016);
}

uint64_t sub_10056F0B8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 8);

  return v2();
}

void sub_10056F224(uint64_t a1, void *a2, void **a3)
{
  v30 = a3;
  v32 = a1;
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v31 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a2;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  *(inited + 32) = swift_getKeyPath();
  *&v31 = a2;
  v11 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];
  v33 = _swiftEmptySetSingleton;

  sub_100391CC4(v14);

  sub_1003FE48C(v33);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v16 = *(inited + 16);
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v17 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:v17];

  v18 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_1004258C8(v8, _s10PredicatesOMa_1);

    return;
  }

  v33 = v18;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v19 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v8, _s10PredicatesOMa_1);

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_15:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v31];
    swift_willThrow();
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [v21 autoCategorizationLocalCorrectionsAsData];
  if (v22)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();

    sub_10001BBA0(v24, v26);
    v27 = v33;
  }

  else
  {

    v27 = 0;
  }

  v28 = *v30;
  *v30 = v27;
}

void sub_10056F748(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10056F7DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - v14;
  v16 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider);
  v17 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider + 8);
  result = v16(v13);
  if (!v5)
  {
    v19 = result;
    type metadata accessor for RDGroceryOperationSuggestConversionToGroceryList();
    v20 = swift_allocObject();
    *(v20 + 16) = 2;
    *(v20 + 24) = a3;
    *(v20 + 32) = v19;
    *(v20 + 40) = sub_10056F97C;
    *(v20 + 48) = 0;
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a1;
    v22[6] = a4;
    v22[7] = a5;
    v23 = a3;
    v24 = a1;

    sub_100331E2C(0, 0, v15, &unk_1007B1D70, v22);
  }

  return result;
}

uint64_t sub_10056F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10056FA4C;

  return sub_1005CC9B8(a5);
}

uint64_t sub_10056FA4C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_10056FB9C, 0, 0);
  }
}

uint64_t sub_10056FB9C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_10056FC98(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10056FD08(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v3 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v7[0] = v3;
  *(v7 + 14) = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v5[2] = a1;
  return sub_100014A64(&v6, sub_100580B9C, v5);
}

void sub_10056FF50(void *a1, objc_class *a2)
{
  v5 = sub_100015484(a1);
  if (!v2)
  {
    v6 = v5;
    if (v5)
    {
      sub_1000F5104(&unk_100939E10, &qword_1007970D0);

      v21 = 0;
      if ([a1 save:&v21])
      {
        v7 = qword_100936558;
        v8 = v21;
        if (v7 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100006654(v9, qword_10094C8C0);
        v10 = a2;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          *(v13 + 4) = v10;
          *v14 = a2;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Inserted grocery operation queue item for determine whether to suggest to convert this list into a grocery list {listObjectID: %{public}@}", v13, 0xCu);
          sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
        }
      }

      else
      {
        v20 = v21;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936558 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094C8C0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Skipped inserting grocery operation queue item for downloading grocery model assets from Trial because there are no active CloudKit accounts.", v19, 2u);
      }
    }
  }
}

void sub_1005702B4(void *a1, void (*a2)(char *, id), uint64_t a3, char *a4)
{
  v5 = v4;
  v86 = a3;
  v9 = type metadata accessor for Date();
  v92 = *(v9 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v9);
  v91 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMAnalyticsEvent();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v88 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v81 - v17;
  v97 = type metadata accessor for Locale();
  v19 = *(v97 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v97);
  v96 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v25 = sub_100013674(qword_1009752E8);
  if (!v25)
  {
    v46 = objc_opt_self();
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 internalErrorWithDebugDescription:v47];

    a2(0, v48);
    return;
  }

  v26 = v25;
  v83 = a1;
  v84 = v9;
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [ObjCClassFromMetadata daemonUserDefaults];
  v87 = a4;
  v29 = v28;
  [v28 setAutomaticSecondaryGroceryLocalesLastModifiedDate:0];

  v30 = v87;
  v31 = [ObjCClassFromMetadata daemonUserDefaults];
  [v31 setAutomaticSecondaryGroceryLocales:0];

  v85 = v26;
  v82 = a2;
  if (v30)
  {
    v32 = *(v30 + 2);
    if (v32)
    {
      v81 = v4;
      v98 = _swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();
      sub_100026EF4(0, v32, 0);
      v33 = v98;
      v35 = *(v19 + 16);
      v34 = v19 + 16;
      v36 = &v30[(*(v34 + 64) + 32) & ~*(v34 + 64)];
      v94 = *(v34 + 56);
      v95 = v35;
      v93 = (v34 - 8);
      do
      {
        v38 = v96;
        v37 = v97;
        v39 = v34;
        v95(v96, v36, v97);
        v40 = Locale.identifier.getter();
        v42 = v41;
        (*v93)(v38, v37);
        v98 = v33;
        v44 = v33[2];
        v43 = v33[3];
        if (v44 >= v43 >> 1)
        {
          sub_100026EF4((v43 > 1), v44 + 1, 1);
          v33 = v98;
        }

        v33[2] = v44 + 1;
        v45 = &v33[2 * v44];
        v45[4] = v40;
        v45[5] = v42;
        v36 += v94;
        --v32;
        v34 = v39;
      }

      while (v32);
      v5 = v81;
      v30 = v87;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v33 = _swiftEmptyArrayStorage;
    }

    v96 = v30;
  }

  else
  {
    sub_100448FEC(0, v18);
    v49 = v97;
    if ((*(v19 + 48))(v18, 1, v97) == 1)
    {
      sub_1000050A4(v18, &unk_10093F420, &unk_100797AE0);
      v33 = 0;
      v96 = 0;
    }

    else
    {
      v51 = *(v19 + 32);
      v50 = v19 + 32;
      v51(v24, v18, v49);
      sub_1000F5104(&qword_10093EC48, &qword_1007B1D60);
      v52 = *(v50 + 40);
      v53 = (*(v50 + 48) + 32) & ~*(v50 + 48);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100791300;
      v96 = v54;
      v51((v54 + v53), v24, v49);
      v33 = 0;
    }
  }

  v56 = v91;
  v55 = v92;
  v57 = v90;
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v58 = v88;
  *v88 = v30 == 0;
  *(v58 + 1) = v33;
  v59 = v89;
  (*(v89 + 104))(v58, enum case for REMAnalyticsEvent.groceryAdditionalLanguages(_:), v57);
  REMAnalyticsManager.post(event:)();

  (*(v59 + 8))(v58, v57);
  Date.init()();
  v60 = type metadata accessor for RDSecondaryGroceryLocalesInfo();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  (*(v55 + 32))(v63 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate, v56, v84);
  *(v63 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales) = v30;

  v65 = v85;
  sub_100566694(v64);
  if (v5)
  {
  }

  else
  {

    [v65 updateChangeCount];
    v98 = 0;
    if (![v83 save:&v98])
    {
      v79 = v98;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      return;
    }

    v66 = qword_100936558;
    v67 = v98;
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_10094C8C0);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v82;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v100 = v74;
      *v73 = 136446210;
      if (v30)
      {
        v98 = 0;
        v99 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v98 = 0xD000000000000014;
        v99 = 0x80000001007FC990;
        v75._countAndFlagsBits = Array.description.getter();
        String.append(_:)(v75);

        v76._countAndFlagsBits = 41;
        v76._object = 0xE100000000000000;
        String.append(_:)(v76);

        v77 = v98;
        v78 = v99;
      }

      else
      {

        v78 = 0xE900000000000063;
        v77 = 0x6974616D6F747561;
      }

      v80 = sub_10000668C(v77, v78, &v100);

      *(v73 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "set secondary grocery localeIDs: %{public}s", v73, 0xCu);
      sub_10000607C(v74);

      v72 = v82;
      v65 = v85;
    }

    else
    {
    }

    v72(v96, 0);
  }
}

void sub_100570C98(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for Locale();
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

uint64_t sub_100570D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  return _swift_task_switch(sub_100570D64, 0, 0);
}

uint64_t sub_100570D64()
{
  type metadata accessor for RDAutoCategorizerTypeFactory();
  static RDAutoCategorizerTypeFactory.create()(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_10000F61C(v0 + 2, v1);
  v3 = *(v2 + 8);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100570EA8;
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  return v11(v9, v8, v6, v7, v1, v2);
}

uint64_t sub_100570EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100571050;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_100570FD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100570FD0()
{
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 120), 0);

  sub_10000607C((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100571050()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  sub_10000607C(v0 + 2);
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100571370(uint64_t a1, uint64_t a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100571430;

  return sub_10057E0AC(a1, a2);
}

uint64_t sub_100571430(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10057155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return _swift_task_switch(sub_100571580, 0, 0);
}

uint64_t sub_100571580()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v0[9] = v1;
  v2 = [v1 intelligentExtractionsRecipeClassifierConfidenceScoreThreshold];
  [v2 doubleValue];
  v4 = v3;

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100571684;
  v6 = v0[6];

  return sub_1002CE97C(v6, v4);
}

uint64_t sub_100571684(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_100571844;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1005717AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005717AC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v1;
  v4(v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100571844()
{
  v20 = v0;

  if (qword_100936560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094C8D8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = Error.rem_errorDescription.getter();
    v13 = sub_10000668C(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to extract reminders, {error: %{public}s}", v6, 0xCu);
    sub_10000607C(v7);
  }

  v14 = *(v0 + 88);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  swift_errorRetain();
  v16(0, v14);

  v17 = *(v0 + 8);

  return v17();
}

void sub_100571B6C(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  v5 = [v2 personHandle];
  if (v5)
  {
    v6 = v5;
    sub_100571F24(v5, v2, v4, v3);
  }

  v7 = [v2 aliases];
  if (v7)
  {
    v8 = v7;
    sub_1000060C8(0, &qword_10094C9A0, INPersonHandle_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v9 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v10 < 1)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    sub_100571F24(v12, v2, v4, v3);
  }

LABEL_14:

  swift_beginAccess();
  if (*(*(v3 + 16) + 16) || (swift_beginAccess(), *(*(v4 + 16) + 16)))
  {
    swift_beginAccess();
    v14 = *(v4 + 16);
    v15 = objc_allocWithZone(REMContactRepresentation);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = Array._bridgeToObjectiveC()().super.isa;
    v18 = [v15 initWithPhones:isa emails:v17];

    goto LABEL_17;
  }

  if (qword_100936550 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094C8A8);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "INPerson has no phone numbers or emails. Skipping {person: %@}", v23, 0xCu);
    sub_1000050A4(v24, &unk_100938E70, &unk_100797230);
  }

  v18 = 0;
LABEL_17:
  *a2 = v18;
}

void sub_100571F24(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 value];
  if (!v8)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094C8A8);
    v24 = a2;
    v25 = a1;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 138412546;
    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v25;
    *v26 = v24;
    v26[1] = v25;
    v27 = v24;
    v28 = v25;
    v22 = "INPerson alias has missing value. Skipping {person: %@, handle: %@}";
    goto LABEL_13;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 type];
  if (v13 == 2)
  {
    swift_beginAccess();
    v34 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_100365788(0, *(v34 + 2) + 1, 1, v34);
      *(a4 + 16) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_100365788((v36 > 1), v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    v38 = &v34[16 * v37];
    *(v38 + 4) = v10;
    *(v38 + 5) = v12;
    *(a4 + 16) = v34;
    goto LABEL_24;
  }

  if (v13 == 1)
  {
    swift_beginAccess();
    v29 = *(a3 + 16);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_100365788(0, *(v29 + 2) + 1, 1, v29);
      *(a3 + 16) = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      v29 = sub_100365788((v31 > 1), v32 + 1, 1, v29);
    }

    *(v29 + 2) = v32 + 1;
    v33 = &v29[16 * v32];
    *(v33 + 4) = v10;
    *(v33 + 5) = v12;
    *(a3 + 16) = v29;
LABEL_24:
    swift_endAccess();
    return;
  }

  if (v13)
  {

    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10094C8A8);
    v43 = a1;
    oslog = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v40))
    {

      v42 = v43;
      goto LABEL_31;
    }

    v41 = swift_slowAlloc();
    *v41 = 134349056;
    *(v41 + 4) = [v43 type];

    _os_log_impl(&_mh_execute_header, oslog, v40, "notifyOfInteraction: unknown INPersonHandleType: %{public}ld", v41, 0xCu);
    goto LABEL_29;
  }

  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094C8A8);
  v15 = a2;
  v16 = a1;
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v17))
  {
    goto LABEL_30;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138412546;
  *(v18 + 4) = v15;
  *(v18 + 12) = 2112;
  *(v18 + 14) = v16;
  *v19 = v15;
  v19[1] = v16;
  v20 = v15;
  v21 = v16;
  v22 = "INPerson has unknown alias type. Skipping {person: %@, handle: %@}";
LABEL_13:
  _os_log_impl(&_mh_execute_header, oslog, v17, v22, v18, 0x16u);
  sub_1000F5104(&unk_100938E70, &unk_100797230);
  swift_arrayDestroy();

LABEL_29:

LABEL_30:
  v42 = oslog;
LABEL_31:
}

void sub_1005724CC(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100572554(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

uint64_t sub_1005726A8(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
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

void sub_100572808(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1005729E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *(v4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v12 = *(v5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v19 = *(v5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v20[0] = v12;
  *(v20 + 14) = *(v5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v14[2] = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = ObjectType;
  return sub_100014A64(&v19, sub_1005805C4, v14);
}

uint64_t sub_100572C04(uint64_t a1, unint64_t a2, int a3, void (*a4)(char *, void))
{
  v9 = objc_autoreleasePoolPush();
  v10 = sub_100572CC8(a2, a3, a1);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = v10;

    objc_autoreleasePoolPop(v9);
    a4(v11, 0);
  }
}

char *sub_100572CC8(unint64_t a1, int a2, uint64_t a3)
{
  v103 = a3;
  LODWORD(v3) = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v91 - v11;
  Date.init()();
  v109 = _swiftEmptyArrayStorage;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, qword_10094C8A8);

  v101 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v105 = a1;
  if (v17)
  {
    v93 = v16;
    v95 = v15;
    v96 = v9;
    v18 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v108[0] = v92;
    *v18 = 136446466;
    LODWORD(v97) = v3;
    v19 = Bool.yesno.getter();
    v21 = sub_10000668C(v19, v20, v108);

    *(v18 + 4) = v21;
    v94 = v18;
    *(v18 + 12) = 2082;
    if (a1 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v107 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v22 & ~(v22 >> 63), 0);
      if (v22 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v98 = v12;
      v99 = v6;
      v100 = v5;
      v23 = 0;
      v24 = v107;
      v25 = a1 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(a1 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 stringRepresentation];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v107 = v24;
        v33 = v24[2];
        v32 = v24[3];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
          v24 = v107;
        }

        ++v23;
        v24[2] = v33 + 1;
        v34 = &v24[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        a1 = v105;
      }

      while (v22 != v23);
      v6 = v99;
      v5 = v100;
      v12 = v98;
    }

    v36 = Array.description.getter();
    v3 = v37;

    v38 = sub_10000668C(v36, v3, v108);

    v39 = v94;
    *(v94 + 14) = v38;
    v40 = v95;
    _os_log_impl(&_mh_execute_header, v95, v93, "validatePhantomObjects: Validating {shouldRepair: %{public}s, childrenObjectIDs: %{public}s}", v39, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v3) = v97;
    v9 = v96;
  }

  else
  {
  }

  __chkstk_darwin(v35);
  v41 = v103;
  v42 = v104;
  *(&v91 - 6) = a1;
  *(&v91 - 5) = v41;
  *(&v91 - 4) = &v109;
  *(&v91 - 24) = v3 & 1;
  *(&v91 - 2) = v102;
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v42)
  {
    (*(v6 + 8))(v12, v5);
  }

  (*(v6 + 16))(v9, v12, v5);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v44, v45))
  {

    v66 = *(v6 + 8);
    v66(v9, v5);
    v66(v12, v5);
LABEL_47:
    swift_beginAccess();
    return v109;
  }

  LODWORD(v101) = v45;
  v102 = v44;
  v103 = 0;
  v46 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v108[0] = v96;
  *v46 = 68158722;
  *(v46 + 4) = 4;
  *(v46 + 8) = 2048;
  Date.rem_elapsedInMilliseconds.getter();
  v48 = v47;
  v49 = *(v6 + 8);
  v6 += 8;
  v97 = v49;
  v49(v9, v5);
  *(v46 + 10) = v48;
  *(v46 + 18) = 2082;
  v50 = Bool.yesno.getter();
  v52 = sub_10000668C(v50, v51, v108);

  *(v46 + 20) = v52;
  v104 = v46;
  *(v46 + 28) = 2082;
  if (!(a1 >> 62))
  {
    v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_50:
  v53 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
  v99 = v6;
  v100 = v5;
  v98 = v12;
  if (v53)
  {
    v107 = _swiftEmptyArrayStorage;
    result = sub_100026EF4(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v54 = 0;
    v55 = v107;
    v56 = a1 & 0xC000000000000001;
    do
    {
      if (v56)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v105 + 8 * v54 + 32);
      }

      v58 = v57;
      v59 = [v57 stringRepresentation];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v107 = v55;
      v64 = v55[2];
      v63 = v55[3];
      if (v64 >= v63 >> 1)
      {
        sub_100026EF4((v63 > 1), v64 + 1, 1);
        v55 = v107;
      }

      ++v54;
      v55[2] = v64 + 1;
      v65 = &v55[2 * v64];
      v65[4] = v60;
      v65[5] = v62;
    }

    while (v53 != v54);
    v5 = v100;
    v12 = v98;
  }

  v67 = Array.description.getter();
  v69 = v68;

  v70 = sub_10000668C(v67, v69, v108);

  v71 = v104;
  *(v104 + 30) = v70;
  *(v71 + 38) = 2082;
  swift_beginAccess();
  v72 = v109;
  if (v109 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v73)
  {
LABEL_46:
    v85 = Array.description.getter();
    v87 = v86;

    v88 = sub_10000668C(v85, v87, v108);

    v89 = v104;
    *(v104 + 40) = v88;
    v90 = v102;
    _os_log_impl(&_mh_execute_header, v102, v101, "validatePhantomObjects: Done validating {elapsed: %.*f ms, shouldRepair: %{public}s, childrenObjectIDs: %{public}s, phantomIDs: %{public}s}", v89, 0x30u);
    swift_arrayDestroy();

    v97(v12, v5);
    goto LABEL_47;
  }

  v106 = _swiftEmptyArrayStorage;

  result = sub_100026EF4(0, v73 & ~(v73 >> 63), 0);
  if ((v73 & 0x8000000000000000) == 0)
  {
    v74 = 0;
    v75 = v106;
    do
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v76 = *(v72 + 8 * v74 + 32);
      }

      v77 = v76;
      v78 = [v76 stringRepresentation];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v106 = v75;
      v83 = v75[2];
      v82 = v75[3];
      if (v83 >= v82 >> 1)
      {
        sub_100026EF4((v82 > 1), v83 + 1, 1);
        v75 = v106;
      }

      ++v74;
      v75[2] = v83 + 1;
      v84 = &v75[2 * v83];
      v84[4] = v79;
      v84[5] = v81;
    }

    while (v73 != v74);

    v5 = v100;
    v12 = v98;
    goto LABEL_46;
  }

LABEL_53:
  __break(1u);
  return result;
}

void sub_1005736BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
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

void sub_100573764(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1005737DC(a2, a1, &v5);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1005737DC(void *a1, void *a2, uint64_t *a3)
{
  v50 = a3;
  v49 = a2;
  v54 = a1;
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v48 - v19;
  v53 = type metadata accessor for Date();
  v52 = *(v53 - 8);
  v21 = *(v52 + 64);
  __chkstk_darwin(v53);
  v55 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  static Calendar.current.getter();
  (*(v8 + 104))(v11, enum case for Calendar.Component.day(_:), v7);
  if (v54 && [v54 integerValue] == 0x8000000000000000)
  {
    __break(1u);
  }

  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v23 = *(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48);
  sub_100010364(v20, v6, &unk_100938850, qword_100795AE0);
  v6[v23] = 1;
  swift_storeEnumTagMultiPayload();
  v24 = sub_100043AA8();
  sub_1004258C8(v6, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v24];
  *(&v59 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v58 = v25;
  v27 = v25;
  v28 = v51;
  throwingCast<A>(_:as:failureMessage:)();
  v29 = v28;
  if (v28)
  {

    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    (*(v52 + 8))(v55, v53);
    result = sub_10000607C(&v58);
LABEL_12:
    *v50 = v29;
    return result;
  }

  sub_10000607C(&v58);
  v31 = v57;
  v32 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v57];
  [v32 setResultType:1];
  v56 = 0;
  v33 = v49;
  v34 = [v49 executeRequest:v32 error:&v56];
  v35 = v56;
  if (!v34)
  {
    v38 = v56;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    result = (*(v52 + 8))(v55, v53);
    goto LABEL_12;
  }

  v36 = v34;
  *(&v59 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *&v58 = v36;
  sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
  v37 = v35;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&v58);
  v39 = v57;
  if ([v57 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(&v57, &v58);
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v40 = sub_1000F5104(&qword_100937028, &qword_100791C10);
  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&v58, &qword_100939ED0, &qword_100791B10);
  v41 = v56;
  v54 = objc_opt_self();
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v58 + 1) = v43;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v40;
  *(inited + 72) = v41;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1007953F0;
  *(v45 + 32) = v33;
  sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
  v46 = v33;
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v54 mergeChangesFromRemoteContextSave:isa intoContexts:v47];

  sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
  return (*(v52 + 8))(v55, v53);
}

void sub_100574178(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v116 = a4;
  v118 = a3;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v113 = v100 - v9;
  v115 = type metadata accessor for Date();
  v119 = *(v115 - 8);
  v10 = *(v119 + 64);
  __chkstk_darwin(v115);
  v111 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = v100 - v13;
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v120 = v100 - v16;
  v123 = type metadata accessor for UUID();
  v117 = *(v123 - 8);
  v17 = *(v117 + 64);
  __chkstk_darwin(v123);
  v121 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RDPermanentlyHiddenReminder();
  v112 = *(v19 - 8);
  v20 = *(v112 + 64);
  __chkstk_darwin(v19);
  v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v100 - v24;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007953F0;
  *(v26 + 32) = a2;
  v27 = a2;
  v28 = sub_10000F8A4(v26, 0, 1u);

  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v29 = [objc_allocWithZone(NSFetchRequest) init];
  v30 = [swift_getObjCClassFromMetadata() entity];
  [v29 setEntity:v30];

  v31 = v29;
  [v29 setAffectedStores:0];
  [v29 setPredicate:v28];

  v32 = a1;
  v33 = v122;
  v34 = NSManagedObjectContext.fetch<A>(_:)();
  if (v33)
  {
  }

  else
  {
    v35 = v27;
    v36 = v117;
    v37 = v118;
    v103 = v25;
    v101 = v22;
    v102 = v19;
    v107 = v32;
    if (v34 >> 62)
    {
      goto LABEL_43;
    }

    v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v39 = v119;
      v40 = v120;
      v109 = 0;
      if (!v38)
      {
        break;
      }

      v105 = v31;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v41 = *(v34 + 32);
      }

      v104 = v41;

      v35 = v114;
      v42 = v114 + 64;
      v43 = 1 << *(v114 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v114 + 64);
      v31 = ((v43 + 63) >> 6);
      v122 = (v36 + 48);
      v108 = (v36 + 32);
      v100[1] = v39 + 16;
      v100[0] = v39 + 32;
      v117 = v36 + 8;

      v37 = 0;
      v106 = _swiftEmptyArrayStorage;
      while (v45)
      {
LABEL_18:
        v47 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v48 = (v35[6] + ((v37 << 10) | (16 * v47)));
        v49 = *v48;
        v50 = v48[1];

        UUID.init(uuidString:)();
        v51 = v40;
        v36 = v40;
        v52 = v123;
        if ((*v122)(v51, 1, v123) == 1)
        {

          v34 = sub_1000050A4(v36, &unk_100939D90, "8\n\r");
          v40 = v36;
        }

        else
        {
          v53 = v52;
          v54 = *v108;
          (*v108)(v121, v36, v53);
          if (v35[2] && (v55 = sub_100005F4C(v49, v50), (v56 & 1) != 0))
          {
            v57 = v119;
            v58 = v35[7] + *(v119 + 72) * v55;
            v59 = v111;
            v60 = v115;
            (*(v119 + 16))(v111, v58, v115);

            v61 = *(v57 + 32);
            v62 = v110;
            v61(v110, v59, v60);
            v63 = v101;
            v54(v101, v121, v123);
            v61((v63 + *(v102 + 20)), v62, v115);
            sub_1001A3A90(v63, v103);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v106 = sub_100368490(0, v106[2] + 1, 1, v106);
            }

            v40 = v120;
            v64 = v112;
            v36 = v106[2];
            v65 = v106[3];
            v66 = v103;
            if (v36 >= v65 >> 1)
            {
              v68 = sub_100368490(v65 > 1, v36 + 1, 1, v106);
              v64 = v112;
              v106 = v68;
              v66 = v103;
            }

            v67 = v106;
            v106[2] = v36 + 1;
            v34 = sub_1001A3A90(v66, v67 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36);
            v35 = v114;
          }

          else
          {

            v34 = (*v117)(v121, v123);
            v40 = v120;
          }
        }
      }

      while (1)
      {
        v46 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v46 >= v31)
        {

          v69 = sub_1001A6A48(v106);

          v70 = v113;
          (*(v119 + 56))(v113, 1, 1, v115);
          v71 = type metadata accessor for RDRecentlyDeletedInfo();
          v72 = *(v71 + 48);
          v73 = *(v71 + 52);
          v74 = swift_allocObject();
          v75 = v70;
          v76 = v74;
          *(v74 + 16) = v69;
          sub_100031B58(v75, v74 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, &unk_100938850, qword_100795AE0);
          v77 = v104;
          v78 = [v104 recentlyDeletedInfoAsData];
          if (v78)
          {
            v79 = v78;
            v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v82 = v81;

            sub_100580558(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo);
            v83 = v109;
            static REMJSONRepresentable.fromJSONData(_:)();
            v84 = v118;
            v85 = v107;
            if (v83)
            {
              sub_10001BBA0(v80, v82);

LABEL_41:

              return;
            }

            v109 = 0;
            sub_10001BBA0(v80, v82);
            sub_10059B844(v76);

            v94 = v105;
          }

          else
          {

            v84 = v118;
            v94 = v105;
            v85 = v107;
          }

          v96 = v109;
          sub_100566968(v95, 1);
          if (v96)
          {

            return;
          }

          [v77 updateChangeCount];
          v124 = 0;
          if ([v85 save:&v124])
          {
            v97 = v124;
            (v84)(0);

            return;
          }

          v98 = v124;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_41;
        }

        v45 = *(v42 + 8 * v46);
        v37 = (v37 + 1);
        if (v45)
        {
          v37 = v46;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_43:
      v99 = v34;
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v99;
    }

    if (qword_100936550 == -1)
    {
      goto LABEL_31;
    }

LABEL_46:
    swift_once();
LABEL_31:
    v86 = type metadata accessor for Logger();
    sub_100006654(v86, qword_10094C8A8);
    v87 = v35;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = v31;
      v92 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v87;
      *v92 = v87;
      v93 = v87;
      _os_log_impl(&_mh_execute_header, v88, v89, "permanentlyHideReminders: Failed to get account for %@.", v90, 0xCu);
      sub_1000050A4(v92, &unk_100938E70, &unk_100797230);
      v31 = v91;
    }

    sub_100580504();
    swift_allocError();
    v37();
  }
}

uint64_t sub_100574DD8()
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
  v14[1] = "8B16@NSString20";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.userInteractive(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100580558(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10094C8F0 = result;
  return result;
}

void sub_10057511C(unint64_t a1, void *a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v124[2] = a3;
  v127 = a2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (v124 - v11);
  v140 = _swiftEmptyArrayStorage;
  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  if (a1 >> 62)
  {
LABEL_36:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124[1] = v5;
  v15 = _swiftEmptyArrayStorage;
  v125 = v6;
  if (v14)
  {
    *&v138[0] = _swiftEmptyArrayStorage;
    sub_100253218(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_148;
    }

    v133 = inited;
    v16 = 0;
    v17 = *&v138[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
      *&v138[0] = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_100253218(v22 > 1, v23 + 1, 1);
        v17 = *&v138[0];
      }

      ++v16;
      v17[2] = v23 + 1;
      sub_100031B58(v12, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, &unk_100939D90, "8\n\r");
    }

    while (v14 != v16);
    v15 = _swiftEmptyArrayStorage;
    inited = v133;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v24 = sub_1003EF7A0(KeyPath, v17);

  *(inited + 32) = v24;
  *(inited + 40) = sub_10001035C(0);
  v25 = sub_10000C2B0(inited);
  v133 = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124[0] = v25;
  v27 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v25 context:v127];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1 = sub_1005761E0(v5);

  if (!a1)
  {
    a1 = _swiftEmptyArrayStorage;
  }

  *&v138[0] = _swiftEmptyArrayStorage;
  *&v136 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    KeyPath = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
LABEL_18:
      inited = 0;
      v12 = (a1 & 0xC000000000000001);
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v132 = v9;
        v9 = inited;
        while (1)
        {
          if (v12)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(KeyPath + 16))
            {
              goto LABEL_35;
            }

            v28 = *(a1 + 8 * v9 + 32);
          }

          v5 = v28;
          inited = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v29 = v15;
          v30 = [objc_allocWithZone(NSMutableDictionary) init];
          v31 = [v5 isConnectedToAccountObject:v30];

          v32 = v5;
          if (!v31)
          {
            break;
          }

          v5 = v138;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v15 = *&v138[0];
          ++v9;
          if (inited == v6)
          {
            v9 = v132;
            goto LABEL_39;
          }
        }

        v5 = &v136;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v136;
        v15 = v29;
      }

      while (inited != v6);
      goto LABEL_39;
    }
  }

  else
  {
    KeyPath = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_18;
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_39:

  sub_100272294(v35);
  if (qword_100936550 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v36 = type metadata accessor for Logger();
    v37 = sub_100006654(v36, qword_10094C8A8);

    v126 = v37;
    v12 = Logger.logObject.getter();
    LODWORD(v14) = static os_log_type_t.info.getter();

    v38 = os_log_type_enabled(v12, v14);
    v128 = v15;
    if (v38)
    {
      inited = swift_slowAlloc();
      a1 = swift_slowAlloc();
      *&v138[0] = a1;
      *inited = 136446210;
      if (v9 >> 62)
      {
LABEL_148:
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      KeyPath = a1;
      if (v39)
      {
        *&v136 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
LABEL_153:
          __break(1u);
          return;
        }

        v130 = inited;
        LODWORD(v131) = v14;
        v132 = v12;
        v40 = v9;
        v41 = 0;
        v42 = v136;
        v43 = v40;
        v44 = v40 & 0xC000000000000001;
        do
        {
          if (v44)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v45 = *(v43 + 8 * v41 + 32);
          }

          v46 = v45;
          v47 = [v45 remObjectID];
          if (v47)
          {
            v48 = v47;
            v49 = [v47 description];

            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;
          }

          else
          {

            v52 = 0xE300000000000000;
            v50 = 7104878;
          }

          *&v136 = v42;
          v54 = *(v42 + 16);
          v53 = *(v42 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_100026EF4((v53 > 1), v54 + 1, 1);
            v42 = v136;
          }

          ++v41;
          *(v42 + 16) = v54 + 1;
          v55 = v42 + 16 * v54;
          *(v55 + 32) = v50;
          *(v55 + 40) = v52;
          v15 = v128;
        }

        while (v39 != v41);
        v9 = v43;
        v12 = v132;
        LOBYTE(v14) = v131;
        inited = v130;
      }

      v56 = Array.description.getter();
      v58 = v57;

      v59 = sub_10000668C(v56, v58, v138);

      *(inited + 4) = v59;
      _os_log_impl(&_mh_execute_header, v12, v14, "validatePhantomObjects: {disconnected: %{public}s}", inited, 0xCu);
      sub_10000607C(KeyPath);
    }

    v139 = _swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (!v60)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v60 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        goto LABEL_91;
      }
    }

    v15 = 0;
    v131 = v128 & 0xFFFFFFFFFFFFFF8;
    v132 = v128 & 0xC000000000000001;
    v130 = v128 + 32;
    v129 = v60;
LABEL_60:
    if (v132)
    {
      break;
    }

    if (v15 < *(v131 + 16))
    {
      v61 = *(v130 + 8 * v15);
      goto LABEL_63;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
  KeyPath = v61;
  if (__OFADD__(v15++, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v63 = [swift_getObjCClassFromObject() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
  v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = 1 << *(v64 + 32);
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & *(v64 + 56);
  v68 = (v65 + 63) >> 6;

  v69 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v67)
        {
          while (1)
          {
            v70 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              break;
            }

            if (v70 >= v68)
            {

              goto LABEL_83;
            }

            v67 = *(v64 + 56 + 8 * v70);
            ++v69;
            if (v67)
            {
              v69 = v70;
              goto LABEL_74;
            }
          }

          __break(1u);
          goto LABEL_87;
        }

LABEL_74:
        v71 = (*(v64 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v67)))));
        v72 = *v71;
        v73 = v71[1];

        v74 = String._bridgeToObjectiveC()();
        v9 = [KeyPath valueForKey:v74];

        if (v9)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v136 = 0u;
          v137 = 0u;
        }

        v67 &= v67 - 1;
        v138[0] = v136;
        v138[1] = v137;
        if (*(&v137 + 1))
        {
          break;
        }

        sub_1000050A4(v138, &qword_100939ED0, &qword_100791B10);
      }

      if (swift_dynamicCast())
      {
        break;
      }
    }

    v9 = v135;
    v75 = [v135 isConcealed];
  }

  while ((v75 & 1) == 0);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v76 = v139[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
LABEL_83:
  if (v15 != v129)
  {
    goto LABEL_60;
  }

LABEL_91:

  v77 = v139;

  sub_100272294(v78);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v79, v80))
  {

    goto LABEL_111;
  }

  v81 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  *&v138[0] = v82;
  *v81 = 136446210;
  if ((v77 & 0x8000000000000000) != 0 || (v77 & 0x4000000000000000) != 0)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *(v77 + 16);
  }

  if (!v83)
  {

    goto LABEL_110;
  }

  v131 = v82;
  v132 = v81;
  LODWORD(v133) = v80;
  KeyPath = v79;
  *&v136 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v83 & ~(v83 >> 63), 0);
  if (v83 < 0)
  {
    goto LABEL_153;
  }

  v84 = 0;
  v85 = v136;
  do
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v86 = *(v77 + 8 * v84 + 32);
    }

    v87 = v86;
    v88 = [v86 remObjectID];
    if (v88)
    {
      v89 = v88;
      v90 = [v88 description];

      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
    }

    else
    {

      v93 = 0xE300000000000000;
      v91 = 7104878;
    }

    *&v136 = v85;
    v95 = *(v85 + 16);
    v94 = *(v85 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_100026EF4((v94 > 1), v95 + 1, 1);
      v85 = v136;
    }

    ++v84;
    *(v85 + 16) = v95 + 1;
    v96 = v85 + 16 * v95;
    *(v96 + 32) = v91;
    *(v96 + 40) = v93;
  }

  while (v83 != v84);

  v79 = KeyPath;
  LOBYTE(v80) = v133;
  v82 = v131;
  v81 = v132;
LABEL_110:
  v97 = Array.description.getter();
  v99 = v98;

  v100 = sub_10000668C(v97, v99, v138);

  *(v81 + 4) = v100;
  _os_log_impl(&_mh_execute_header, v79, v80, "validatePhantomObjects: {objectsWithConcealedParent: %{public}s}", v81, 0xCu);
  sub_10000607C(v82);

LABEL_111:

  v101 = v140;
  *&v138[0] = _swiftEmptyArrayStorage;
  KeyPath = v140 >> 62;
  if (v140 >> 62)
  {
LABEL_146:
    v102 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v102 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = 0;
  v104 = v101 & 0xC000000000000001;
  v105 = _swiftEmptyArrayStorage;
  while (v102 != v103)
  {
    if (v104)
    {
      v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v103 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_143;
      }

      v106 = *(v101 + 8 * v103 + 32);
    }

    v107 = v106;
    v108 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v109 = [v106 remObjectID];

    ++v103;
    if (v109)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v110 = *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v105 = *&v138[0];
      v103 = v108;
    }
  }

  sub_100271578(v105);
  if (v125)
  {
    *&v138[0] = _swiftEmptyArrayStorage;
    if (KeyPath)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v111 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v112 = 0;
    KeyPath = _swiftEmptyArrayStorage;
    while (v111 != v112)
    {
      if (v104)
      {
        v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v112 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v113 = *(v101 + 8 * v112 + 32);
      }

      v114 = v113;
      v115 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_144;
      }

      v116 = [v113 objectID];

      ++v112;
      if (v116)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v117 = *((*&v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        KeyPath = *&v138[0];
        v112 = v115;
      }
    }

    v118 = KeyPath;
    if (KeyPath >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_141;
      }
    }

    else if (*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_141:
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v120 = v127;
      v121 = [v127 _debug_managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:isa];

      v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      __chkstk_darwin(v123);
      v124[-4] = v122;
      v124[-3] = v120;
      v124[-2] = v118;
      NSManagedObjectContext.rem_performAndWait<A>(_:)();

      return;
    }
  }
}

void *sub_1005761E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_100576348(unint64_t a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v92 = 0;
    v93 = 0;
    v7 = 0;
    v105 = v5 & 0xC000000000000001;
    v96 = v5 + 32;
    v97 = v5 & 0xFFFFFFFFFFFFFF8;
    v91 = v5;
    v101 = i;
    while (1)
    {
      if (v105)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v97 + 16))
        {
          goto LABEL_66;
        }

        v8 = *(v96 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      aBlock[0] = 0;
      v11 = [a2 existingObjectWithID:v8 error:aBlock];
      v12 = aBlock[0];
      if (!v11)
      {
        v21 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v4 = 0;
LABEL_17:
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100006654(v22, qword_10094C8A8);
        v23 = v9;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = v7;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          *(v27 + 4) = v23;
          *v28 = v23;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "repairPhantomObjects: Couldn't get an REMCDObject, skipping {moid: %{public}@}", v27, 0xCu);
          sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
          i = v101;

          v7 = v26;
        }

        else
        {
        }

        goto LABEL_5;
      }

      v13 = v11;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v12;
      if (!v14)
      {

        goto LABEL_17;
      }

      v107 = v13;
      v16 = [v14 remObjectID];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 description];

        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v102 = 7104878;
      }

      if ([v14 isConcealed])
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100006654(v30, qword_10094C8A8);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v31, v32))
        {

LABEL_59:
          goto LABEL_5;
        }

        v33 = v20;
        v34 = swift_slowAlloc();
        v103 = v4;
        v35 = v9;
        v36 = v7;
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v34 = 136446210;
        v38 = sub_10000668C(v102, v33, aBlock);

        *(v34 + 4) = v38;
        i = v101;
        _os_log_impl(&_mh_execute_header, v31, v32, "repairPhantomObjects: Attempted to repair a non-phantom object which is already concealed {remObjectID: %{public}s}", v34, 0xCu);
        sub_10000607C(v37);
        v7 = v36;

        v4 = v103;
      }

      else
      {
        v39 = [objc_allocWithZone(NSMutableDictionary) init];
        v40 = [v14 isConnectedToAccountObject:v39];

        v94 = v9;
        v95 = v7;
        if (v40)
        {
          v41 = v107;
        }

        else
        {
          v99 = v20;
          v42 = [swift_getObjCClassFromObject() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
          v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = v43 + 56;
          v45 = 1 << *(v43 + 32);
          if (v45 < 64)
          {
            v46 = ~(-1 << v45);
          }

          else
          {
            v46 = -1;
          }

          v47 = v46 & *(v43 + 56);
          v48 = (v45 + 63) >> 6;
          v100 = v43;

          v49 = 0;
          v104 = v14;
          while (v47)
          {
            v5 = v49;
LABEL_42:
            v51 = __clz(__rbit64(v47));
            v47 &= v47 - 1;
            v52 = (*(v100 + 48) + ((v5 << 10) | (16 * v51)));
            v53 = *v52;
            v54 = v52[1];
            v55 = objc_opt_self();
            v56 = swift_allocObject();
            v56[2] = v104;
            v56[3] = v53;
            v98 = v53;
            v56[4] = v54;
            aBlock[4] = sub_100580634;
            aBlock[5] = v56;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100019200;
            aBlock[3] = &unk_1008F6F48;
            v57 = _Block_copy(aBlock);
            swift_bridgeObjectRetain_n();
            v58 = v107;

            aBlock[0] = 0;
            v59 = [v55 catchObjCException:v57 error:aBlock];
            _Block_release(v57);
            if (v59)
            {
              v50 = aBlock[0];
            }

            else
            {
              v60 = aBlock[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
              if (qword_100936550 != -1)
              {
                swift_once();
              }

              v61 = type metadata accessor for Logger();
              sub_100006654(v61, qword_10094C8A8);

              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                aBlock[0] = swift_slowAlloc();
                *v64 = 136446466;
                *(v64 + 4) = sub_10000668C(v98, v54, aBlock);
                *(v64 + 12) = 2082;
                *(v64 + 14) = sub_10000668C(v102, v99, aBlock);
                _os_log_impl(&_mh_execute_header, v62, v63, "repairPhantomObjects: Unknown parent key to try to unset {key %{public}s, remObjectiD: %{public}s}", v64, 0x16u);
                swift_arrayDestroy();
              }

              v4 = 0;
            }

            v49 = v5;
            v14 = v104;
          }

          v20 = v99;
          while (1)
          {
            v5 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
              goto LABEL_65;
            }

            if (v5 >= v48)
            {
              break;
            }

            v47 = *(v44 + 8 * v5);
            ++v49;
            if (v47)
            {
              goto LABEL_42;
            }
          }

          [v14 markForDeletion];
          if (qword_100936550 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_100006654(v65, qword_10094C8A8);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();

          v5 = v91;
          v9 = v94;
          v7 = v95;
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            aBlock[0] = v69;
            *v68 = 136446210;
            *(v68 + 4) = sub_10000668C(v102, v99, aBlock);
            _os_log_impl(&_mh_execute_header, v66, v67, "repairPhantomObjects: Repaired markedForDeletion state for {remObjectID: %{public}s}", v68, 0xCu);
            sub_10000607C(v69);

            v20 = v99;
          }

          i = v101;
          v41 = v107;
          v10 = __OFADD__(v92++, 1);
          if (v10)
          {
            goto LABEL_68;
          }
        }

        if (![v14 validateEffectiveMinimumSupportedVersionApplyingChange:0])
        {

          goto LABEL_59;
        }

        v70 = [a2 managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];
        v71 = [v14 ic_permanentObjectID];
        [v70 addObject:v71];

        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_100006654(v72, qword_10094C8A8);
        v73 = v107;

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v76 = 136446466;
          v77 = sub_10000668C(v102, v20, aBlock);

          *(v76 + 4) = v77;
          *(v76 + 12) = 2082;
          [v14 effectiveMinimumSupportedVersion];
          sub_10013A058();
          v78 = BinaryInteger.description.getter();
          v80 = sub_10000668C(v78, v79, aBlock);

          *(v76 + 14) = v80;
          _os_log_impl(&_mh_execute_header, v74, v75, "repairPhantomObjects: Repaired effectiveMiniumSupportedVersion for {remObjectID: %{public}s, newValue: %{public}s}", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v5 = v91;
        v10 = __OFADD__(v93++, 1);
        i = v101;
        v7 = v95;
        if (v10)
        {
          goto LABEL_67;
        }
      }

LABEL_5:
      if (v7 == i)
      {
        goto LABEL_71;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v92 = 0;
  v93 = 0;
LABEL_71:
  if (__OFADD__(v92, v93))
  {
    __break(1u);
LABEL_84:
    swift_once();
    goto LABEL_74;
  }

  if (v92 + v93 <= 0)
  {
    return;
  }

  if (qword_100936550 != -1)
  {
    goto LABEL_84;
  }

LABEL_74:
  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_10094C8A8);

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134218496;
    if (a3 >> 62)
    {
      v89 = v84;
      v85 = _CocoaArrayWrapper.endIndex.getter();
      v84 = v89;
    }

    else
    {
      v85 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v84 + 4) = v85;
    v86 = v84;

    *(v86 + 12) = 2048;
    *(v86 + 14) = v92;
    *(v86 + 22) = 2048;
    *(v86 + 24) = v93;
    _os_log_impl(&_mh_execute_header, v82, v83, "repairPhantomObjects: Saving repaired objects... {inputCount: %ld, disconnectedCount: %ld, unsupportedCount: %ld}", v86, 0x20u);
  }

  else
  {
  }

  aBlock[0] = 0;
  if ([a2 save:aBlock])
  {
    v87 = aBlock[0];
  }

  else
  {
    v88 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100577140(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 valueForKey:v2];

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
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    if (swift_dynamicCast())
    {
      [v5 updateChangeCount];
    }
  }

  else
  {
    sub_1000050A4(v8, &qword_100939ED0, &qword_100791B10);
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 setValue:0 forKey:v4];
}

uint64_t sub_100577284(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000FDA74;

  return v7();
}

uint64_t sub_10057736C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000FCBFC;

  return v8();
}

uint64_t sub_100577454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100010364(a3, v25 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);

    return v23;
  }

LABEL_8:
  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100577750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaDictionary.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v32 = a3;
  v39 = _swiftEmptyArrayStorage;
  sub_100253D10(0, v5 & ~(v5 >> 63), 0);
  v6 = _swiftEmptyArrayStorage;
  if (v33)
  {
    result = __CocoaDictionary.startIndex.getter();
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    result = _HashTable.startBucket.getter();
    v8 = *(v4 + 36);
  }

  v36 = result;
  v37 = v8;
  v38 = v33 != 0;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v29 = v5;
    v30 = v4;
    while (v10 < v5)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_24;
      }

      v20 = v36;
      v21 = v37;
      v22 = v38;
      sub_10014AEEC(v35, v36, v37, v38, v4);
      v24 = v23;
      v34 = v35[0];
      v39 = v6;
      v26 = v6[2];
      v25 = v6[3];

      if (v26 >= v25 >> 1)
      {
        result = sub_100253D10((v25 > 1), v26 + 1, 1);
        a3 = v32;
        v6 = v39;
      }

      v6[2] = v26 + 1;
      v27 = &v6[4 * v26];
      v27[4] = v24;
      v27[5] = a2;
      v27[6] = a3;
      v27[7] = v34;
      if (v33)
      {
        v4 = v30;
        if (!v22)
        {
          goto LABEL_26;
        }

        if (__CocoaDictionary.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v29;
        v19 = v10 + 1;
        sub_1000F5104(&qword_10094C9C8, &unk_1007B1F78);
        v28 = Dictionary.Index._asCocoa.modify();
        __CocoaDictionary.formIndex(after:isUnique:)();
        result = v28(v35, 0);
      }

      else
      {
        v4 = v30;
        sub_10014AB9C(v20, v21, v22, v30);
        v12 = v11;
        v14 = v13;
        v15 = v6;
        v17 = v16;
        result = sub_100010E34(v20, v21, v22);
        v36 = v12;
        v37 = v14;
        v18 = v17 & 1;
        v6 = v15;
        v38 = v18;
        v5 = v29;
        v19 = v10 + 1;
      }

      ++v10;
      a3 = v32;
      if (v19 == v5)
      {
        sub_100010E34(v36, v37, v38);
        return v6;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100577A10(void *a1)
{
  isa = type metadata accessor for UUID();
  v4 = *(isa - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(isa);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100943290, &unk_1007B4D40);
  inited = swift_initStackObject();
  v24 = xmmword_100791300;
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = a1;
  v9 = a1;
  sub_1006732C8(inited, 0, 1, 0);
  v11 = v10;
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_10093A920, &unk_100797F40);
  if (v1)
  {
    return isa;
  }

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      if (result)
      {
        goto LABEL_5;
      }

LABEL_11:

      return 0;
    }

LABEL_12:

    v14 = REMErrorDomain;
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v15 = swift_initStackObject();
    *(v15 + 16) = v24;
    *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v15 + 40) = v16;
    v25 = 0;
    v26 = 0xE000000000000000;
    v17 = v14;
    _StringGuts.grow(_:)(54);
    v18._object = 0x80000001007FCB70;
    v18._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v18);
    v19 = [v9 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100580558(&qword_10093F2A0, &type metadata accessor for UUID);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    (*(v4 + 8))(v7, isa);
    v21 = v25;
    v22 = v26;
    *(v15 + 72) = &type metadata for String;
    *(v15 + 48) = v21;
    *(v15 + 56) = v22;
    sub_1001F67C8(v15);
    swift_setDeallocating();
    sub_1000050A4(v15 + 32, &unk_100939260, &unk_100797220);
    v23 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 initWithDomain:v17 code:-1 userInfo:isa];

    swift_willThrow();
    return isa;
  }

  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_8:
    isa = v13;

    return isa;
  }

  __break(1u);
  return result;
}

void sub_100577DE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094C8A8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Executing fetch request {fetchRequest: %@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }

  v13 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v14 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v20[0] = v14;
  *(v20 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  __chkstk_darwin(v15);
  v18[2] = v7;
  sub_1004045A4(&v19, sub_1005814C4, v18);
  v17 = v16;
  (*(a3 + 16))(a3, v16, 0);
}

void sub_100578140(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  sub_1000060C8(0, &qword_10094C9E0, REMStoreInvocation_ptr);
  v6 = a1;
  sub_1000F5104(&qword_10094C9E8, &qword_1007B1FB0);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v43, v42);
    v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v43 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v43[16] = v7;
    *&v43[30] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_100791340;
    v10 = (*&v43[44] << 32) & 0xC10000000000;
    if (v10 == 0x810000000000)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 0x810000000000)
    {
      v12 = 0x80000001007EECE0;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    *(v8 + 56) = &type metadata for String;
    v13 = sub_100006600();
    v9[8] = v13;
    v9[4] = v11;
    v9[5] = v12;
    v14 = sub_1000063E8();
    v9[12] = &type metadata for String;
    v9[13] = v13;
    v9[9] = v14;
    v9[10] = v15;
    v16 = String.init(format:_:)();
    v18 = v17;
    v19 = [v6 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v20._countAndFlagsBits = 10272;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v16;
    v21._object = v18;
    String.append(_:)(v21);
    __chkstk_darwin(v22);
    static os_log_type_t.info.getter();
    measureTimeElapsed(_:level:block:)();

    sub_10000607C(v42);
  }

  else
  {
    memset(v43, 0, 40);
    sub_1000050A4(v43, &qword_10094C9F0, &unk_1007B1FB8);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094C8A8);
    v24 = v6;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Invocation does not conform to RDInvocable {invocation: %@}", v27, 0xCu);
      sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
    }

    v30 = objc_opt_self();
    *v43 = 0;
    *&v43[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v31._countAndFlagsBits = 0xD000000000000038;
    v31._object = 0x80000001007FCC90;
    String.append(_:)(v31);
    v32 = [v24 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 125;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v30 internalErrorWithDebugDescription:v38];

    v40 = v39;
    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v41);
  }
}

void sub_100578610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = *(v6 + 10);
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }
  }

  else
  {
    v8 = 2147483519;
  }

  v9 = sub_100009A40(512, v8);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v11 = v6[1];
  v18 = *v6;
  v19[0] = v11;
  *(v19 + 14) = *(v6 + 30);
  __chkstk_darwin(v9);
  v17[2] = a1;
  v17[3] = &v18;
  v12 = sub_100404048(&v18, sub_1005815B0, v17);
  sub_10031ED4C(v12);
  v14 = v13;
  v16 = v15;

  if (v14)
  {
  }

  else
  {
    v16 = 0;
  }

  (*(a3 + 16))(a3, v16, 0);
}

void sub_10057879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = *(v6 + 10);
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }
  }

  else
  {
    v8 = 2147483519;
  }

  v9 = sub_100009A40(0x7FFFFFFFLL, v8);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v11 = v6[1];
  v14 = *v6;
  v15[0] = v11;
  *(v15 + 14) = *(v6 + 30);
  __chkstk_darwin(v9);
  v13[2] = a1;
  v13[3] = &v14;
  sub_100404048(&v14, sub_100581464, v13);
  sub_1000060C8(0, &qword_100939208, REMReplicaManagerSerializedData_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
}

uint64_t sub_100578940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeZone();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_1000F5104(&qword_10093F978, &qword_10079E228);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v39 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v40[0] = v19;
  *(v40 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v20 = type metadata accessor for SymmetricKey();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = v18;
  sub_100009DAC(&v39, &v33);
  static TimeZone.current.getter();
  *&v35 = &type metadata for SystemRandomNumberGenerator;
  *(&v35 + 1) = &protocol witness table for SystemRandomNumberGenerator;
  v23 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_10027DD30(v22, &v39, a1, v17, v9, &v33, v13);
  sub_10027EE54(&v33);
  v26 = sub_1002833A8();
  v38 = v33;
  v27 = v26;
  v29 = v28;
  sub_1000050A4(&v38, &qword_10093FB10, &qword_10079E5D0);
  v37 = v34;
  sub_1000050A4(&v37, &unk_100939E40, &qword_100791BD0);
  v36 = v35;
  sub_1000050A4(&v36, &unk_100939E40, &qword_100791BD0);
  sub_100029344(v27, v29);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  sub_10001BBA0(v27, v29);
  sub_10001BBA0(v27, v29);
}

uint64_t sub_100578DAC(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, void *a16, const void *a17)
{
  v204 = a7;
  v205 = a5;
  v202 = a6;
  v214 = a10;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v194 = *(v24 - 8);
  v195 = v24;
  v25 = v194[8];
  __chkstk_darwin(v24);
  v193 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v187 = *(v27 - 8);
  v188 = v27;
  v28 = *(v187 + 64);
  __chkstk_darwin(v27);
  v186 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for OS_dispatch_queue.Attributes();
  v30 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v185 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v191 = *(v32 - 8);
  v192 = v32;
  v33 = *(v191 + 64);
  __chkstk_darwin(v32);
  v190 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = swift_allocObject();
  *(v213 + 16) = a17;
  v198 = a17;
  _Block_copy(a17);
  if (qword_100936550 != -1)
  {
LABEL_95:
    swift_once();
  }

  v203 = a13;
  v207 = a12;
  v201 = a11;
  v183 = type metadata accessor for Logger();
  v35 = sub_100006654(v183, qword_10094C8A8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v36 = a16;
  v197 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  LODWORD(v212) = v38;
  v39 = os_log_type_enabled(v37, v38);
  v206 = a8;
  v210 = a4;
  v211 = a2;
  v208 = a3;
  v209 = a9;
  v215 = a1;
  if (v39)
  {
    v200 = v37;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v217 = v41;
    *v40 = 136447746;
    v42 = *&v36[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16];
    v221[2] = *&v36[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
    v222[0] = v42;
    *(v222 + 14) = *&v36[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30];
    v43 = sub_1000063E8();
    v45 = sub_10000668C(v43, v44, &v217);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    if (a1 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v211;

    *(v40 + 14) = v46;

    *(v40 + 22) = 2048;
    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v36;

    *(v40 + 24) = v48;

    *(v40 + 32) = 2048;
    if (v210 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v50 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v40 + 34) = v50;

    *(v40 + 42) = 2048;
    if (a8 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v40 + 44) = v51;

    *(v40 + 52) = 2048;
    a9 = v209;
    v52 = *(v209 + 16);

    *(v40 + 54) = v52;

    *(v40 + 62) = 2048;
    if ((v214 & 0xC000000000000001) != 0)
    {
      v53 = __CocoaDictionary.count.getter();
    }

    else
    {
      v53 = *(v214 + 16);
    }

    v54 = v211;

    *(v40 + 64) = v53;

    v55 = v200;
    _os_log_impl(&_mh_execute_header, v200, v212, "(daemon) SAVE START {author: %{public}s, accountStorage.count: %ld, listStorage.count: %ld, smartListStorages.count: %ld, reminderStorage.count: %ld, changedKeys.count: %ld, replicaManagers.count: %ld", v40, 0x48u);
    sub_10000607C(v41);

    a3 = v208;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v54 = a2;
    v49 = v36;
  }

  LODWORD(v199) = a15;
  LODWORD(v200) = a14;
  v56 = swift_allocObject();
  v212 = v56;
  *(v56 + 16) = _swiftEmptyArrayStorage;
  v57 = (v56 + 16);
  v58 = *&v49[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16];
  v220[2] = *&v49[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v221[0] = v58;
  v196 = &v49[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  *(v221 + 14) = *&v49[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30];
  v59 = sub_100008E70();
  v189 = v57;
  if (v60)
  {
    v61 = sub_100577750(v214, v59, v60);
    v214 = 0;

    v62 = *v57;
    *v57 = v61;

    v63 = v215;
LABEL_25:
    v65 = v202;
    goto LABEL_26;
  }

  if ((v214 & 0xC000000000000001) != 0)
  {
    v64 = __CocoaDictionary.count.getter();
  }

  else
  {
    v64 = *(v214 + 16);
  }

  v63 = v215;
  v65 = v202;
  if (v64)
  {
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Will not save replica managers. Bundle ID is missing", v68, 2u);
      v63 = v215;
    }

    v214 = 0;
    goto LABEL_25;
  }

  v214 = 0;
LABEL_26:
  v69 = swift_allocObject();
  v70 = v203;
  *(v69 + 16) = v49;
  *(v69 + 24) = v70;
  *(v69 + 32) = v63;
  *(v69 + 40) = v54;
  *(v69 + 48) = a3;
  a2 = v204;
  v71 = v205;
  *(v69 + 56) = v210;
  *(v69 + 64) = v71;
  *(v69 + 72) = v65;
  *(v69 + 80) = a2;
  *(v69 + 88) = v206;
  *(v69 + 96) = a9;
  v73 = v212;
  v72 = v213;
  v74 = v201;
  *(v69 + 104) = v212;
  *(v69 + 112) = v74;
  *(v69 + 120) = v207;
  v75 = v199 & 1;
  *(v69 + 128) = v75;
  *(v69 + 136) = sub_10003FE60;
  *(v69 + 144) = v72;
  if (v200)
  {
    LODWORD(v195) = v75;
    v199 = v49;
    v200 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    _Block_copy(v198);

    a4 = v215;

    a1 = v211;

    v76 = v199;

    v77 = static OS_dispatch_queue.main.getter();
    v78 = *&v76[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController];
    type metadata accessor for RDDatabaseSaver();
    inited = swift_initStackObject();
    inited[2] = v77;
    inited[3] = v78;
    v80 = v203;
    inited[4] = v203;
    swift_beginAccess();
    v81 = *(v73 + 16);
    v82 = *(v196 + 30);
    v83 = *(v196 + 1);
    v217 = *v196;
    v218[0] = v83;
    *(v218 + 14) = v82;
    v182 = v69;
    v193 = v76;
    v199 = v78;
    v200 = v81;
    if (v80 == 3)
    {
      v194 = inited;
      a3 = a4 & 0xFFFFFFFFFFFFFF8;
      if (a4 >> 62)
      {
        a16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = a4 & 0xC000000000000001;
      v85 = v199;

      a9 = 0;
      a8 = &selRef_hack_willSaveHandled;
      do
      {
        if (a16 == a9)
        {
          inited = v194;
          goto LABEL_48;
        }

        if (v84)
        {
          v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a9 >= *(a3 + 16))
          {
            goto LABEL_94;
          }

          v86 = *(a4 + 8 * a9 + 32);
        }

        a2 = v86;
        if (__OFADD__(a9, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v87 = [v86 accountTypeHost];
        a1 = [v87 isCloudKit];

        a4 = v215;
        ++a9;
      }

      while (!a1);

      if (qword_100936850 != -1)
      {
        swift_once();
      }

      sub_100006654(v183, qword_100951B60);
      v106 = v207;

      sub_100009DAC(&v217, &v219);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.fault.getter();

      sub_1005812D4(&v217);
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *&v219 = swift_slowAlloc();
        *v109 = 136446466;
        if (v106)
        {
          v110 = v201;
        }

        else
        {
          v110 = 7104878;
        }

        if (v106)
        {
          v111 = v106;
        }

        else
        {
          v111 = 0xE300000000000000;
        }

        v112 = sub_10000668C(v110, v111, &v219);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2082;
        v113 = sub_1000063E8();
        v115 = sub_10000668C(v113, v114, &v219);

        *(v109 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v107, v108, "RDDatabaseSaver: Unexpected use of REMStoreModeEventKitSync to edit/insert/remove CloudKit account(s) {author: %{public}s, clientIdentity: %{public}s}", v109, 0x16u);
        swift_arrayDestroy();
      }

      v116 = objc_opt_self();
      v117 = String._bridgeToObjectiveC()();
      v118 = [v116 internalErrorWithDebugDescription:v117];

      swift_willThrow();
      v100 = v118;
    }

    else
    {
      v94 = v78;

LABEL_48:
      v100 = v214;
      v101 = sub_100756CF8(v209, a4);
      v103 = v208;
      if (!v100)
      {
        v104 = v101;
        v105 = v102;
        sub_100758FE0(v101);
        __chkstk_darwin(v119);
        *(&v182 - 18) = v200;
        *(&v182 - 17) = inited;
        *(&v182 - 16) = v209;
        *(&v182 - 15) = &v217;
        *(&v182 - 112) = v195;
        *(&v182 - 13) = v120;
        *(&v182 - 12) = a4;
        v121 = v205;
        v122 = v201;
        *(&v182 - 11) = v206;
        *(&v182 - 10) = v122;
        v123 = v210;
        *(&v182 - 9) = v207;
        *(&v182 - 8) = v123;
        *(&v182 - 7) = v202;
        *(&v182 - 6) = v103;
        v124 = v204;
        *(&v182 - 5) = v121;
        *(&v182 - 4) = v124;
        *(&v182 - 3) = v105;
        *(&v182 - 2) = v104;
        sub_100014A64(&v217, sub_1005812BC, (&v182 - 20));
        v194 = inited;

        v158 = v193;
        v159 = *sub_10000F61C(&v193[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler], *&v193[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler + 24]);
        sub_1003E57EC(v206);
        v160 = v215;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v161 = v212;
        swift_retain_n();
        v162 = v158;
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = v161;
          v166 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v216[0] = v214;
          *v166 = 136448002;
          v219 = *v196;
          v220[0] = *(v196 + 1);
          *(v220 + 14) = *(v196 + 30);
          v167 = sub_1000063E8();
          v169 = sub_10000668C(v167, v168, v216);

          *(v166 + 4) = v169;
          *(v166 + 12) = 2048;
          if (v160 >> 62)
          {
            v170 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v170 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v166 + 14) = v170;

          *(v166 + 22) = 2048;
          v171 = v208;
          if (v211 >> 62)
          {
            v172 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v172 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v173 = v205;

          *(v166 + 24) = v172;

          *(v166 + 32) = 2048;
          if (v171 >> 62)
          {
            v174 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v174 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v166 + 34) = v174;

          *(v166 + 42) = 2048;
          if (v210 >> 62)
          {
            v175 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v175 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v166 + 44) = v175;

          *(v166 + 52) = 2048;
          if (v173 >> 62)
          {
            v176 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v176 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v177 = v214;

          *(v166 + 54) = v176;

          *(v166 + 62) = 2048;
          if (v206 >> 62)
          {
            v178 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v178 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v166 + 64) = v178;

          *(v166 + 72) = 2048;
          v179 = *(*(v165 + 16) + 16);

          *(v166 + 74) = v179;

          _os_log_impl(&_mh_execute_header, v163, v164, "(daemon) SAVE END {author: %{public}s, accountStorages.count: %ld, listStorages.count: %ld, listSectionStorages.count: %ld, smartListStorages.count: %ld, smartListSectionStorages.count: %ld, reminderStorages.count: %ld, replicaManagers.count: %ld}", v166, 0x52u);
          sub_10000607C(v177);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v180 = v198;
        (*(v198 + 2))(v198, 0);
        v181 = v194;
        swift_setDeallocating();

        _Block_release(v180);
        goto LABEL_75;
      }
    }

    *&v219 = v100;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    sub_1000060C8(0, &qword_100939E60, NSError_ptr);
    swift_dynamicCast();
    v125 = v216[0];
    v126 = [v216[0] domain];
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;

    if (v127 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v129 == v130)
    {
    }

    else
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v132 & 1) == 0)
      {
        v133 = objc_opt_self();
        v134 = v125;
        v135 = _convertErrorToNSError(_:)();

        v136 = [v133 saveErrorWithCoreDataError:v135];
        v137 = v136;
        v138 = v134;
        v139 = v137;
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *v142 = 138412546;
          *(v142 + 4) = v138;
          *(v142 + 12) = 2112;
          *(v142 + 14) = v139;
          *v143 = v138;
          v143[1] = v139;
          v144 = v138;
          v139 = v139;
          _os_log_impl(&_mh_execute_header, v140, v141, "Converted saveError to remError {saveError: %@, remError: %@}", v142, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        goto LABEL_72;
      }
    }

    v145 = objc_opt_self();
    v146 = v125;
    v147 = _convertErrorToNSError(_:)();

    v148 = [v145 errorSanitizedForXPCFromError:v147];
    v139 = v148;
LABEL_72:
    v149 = v125;
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v152 = 138412290;
      *(v152 + 4) = v149;
      *v153 = v149;
      v154 = v149;
      _os_log_impl(&_mh_execute_header, v150, v151, "(daemon) SAVE FAIL {saveError: %@}", v152, 0xCu);
      sub_1000050A4(v153, &unk_100938E70, &unk_100797230);
    }

    v155 = _convertErrorToNSError(_:)();
    v156 = v198;
    (*(v198 + 2))(v198, v155);

    _Block_release(v156);
LABEL_75:
  }

  if (v70 == 4499)
  {
    v214 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);

    v88 = v49;

    v89 = v190;
    static DispatchQoS.unspecified.getter();
    *&v217 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
    sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v187 + 104))(v186, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v188);
    v90 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *&v218[1] = sub_10058126C;
    *(&v218[1] + 1) = v69;
    *&v217 = _NSConcreteStackBlock;
    *(&v217 + 1) = 1107296256;
    *&v218[0] = sub_100019200;
    *(&v218[0] + 1) = &unk_1008F7B00;
    v91 = _Block_copy(&v217);

    static DispatchQoS.unspecified.getter();
    *&v219 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v92 = v193;
    v93 = v195;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v91);

    (v194[1])(v92, v93);
  }

  else
  {
    v95 = qword_100935D28;

    v96 = v49;

    if (v95 != -1)
    {
      swift_once();
    }

    *&v218[1] = sub_10058126C;
    *(&v218[1] + 1) = v69;
    *&v217 = _NSConcreteStackBlock;
    *(&v217 + 1) = 1107296256;
    *&v218[0] = sub_100019200;
    *(&v218[0] + 1) = &unk_1008F7AD8;
    v97 = _Block_copy(&v217);

    v89 = v190;
    static DispatchQoS.unspecified.getter();
    *&v219 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v98 = v193;
    v99 = v195;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v97);

    (v194[1])(v98, v99);
  }

  (*(v191 + 8))(v89, v192);
}

void sub_10057A7D0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  v8 = [v7 cloudContext];
  if (v8)
  {
    v9 = v8;
    v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    v25 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    v26[0] = v10;
    *(v26 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v8);
    v23[2] = a1;
    v23[3] = v11;
    v23[4] = sub_10000A878;
    v23[5] = v6;
    sub_100014A64(&v25, sub_100581240, v23);
  }

  else
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 internalErrorWithDebugDescription:v13];

    swift_willThrow();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094C8A8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_10000668C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch share object. {error: %s}", v17, 0xCu);
      sub_10000607C(v18);
    }

    swift_errorRetain();
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v22);
  }
}

void sub_10057AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v12 = [v11 cloudContext];
  if (v12)
  {
    v13 = v12;
    v14 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    v29 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    v30[0] = v14;
    *(v30 + 14) = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v12);
    v27[2] = a1;
    v27[3] = v15;
    v27[4] = a2;
    v27[5] = a3;
    v27[6] = a4;
    v27[7] = sub_10000A878;
    v27[8] = v10;
    sub_100014A64(&v29, sub_1005811BC, v27);
  }

  else
  {
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    [v16 internalErrorWithDebugDescription:v17];

    swift_willThrow();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094C8A8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_10000668C(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create share. {error: %s}", v21, 0xCu);
      sub_10000607C(v22);
    }

    swift_errorRetain();
    v26 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v26);
  }
}

void sub_10057AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v10];
    v13 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10003FE60;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10018ADFC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_10018ADFC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F7948;
    v17 = _Block_copy(aBlock);

    [v12 didSaveShare:a1 accountID:v13 queue:v14 completionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    v21 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v21);
  }
}

void sub_10057B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v10];
    v13 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10003FE60;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10018ADFC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_100189954;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F78A8;
    v17 = _Block_copy(aBlock);

    [v12 didStopSharing:a1 accountID:v13 queue:v14 completionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    v21 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v21);
  }
}

void sub_10057B370(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID;
  swift_beginAccess();
  if (*(*(a3 + v8) + 16))
  {
    v9 = *(a3 + v8);

    sub_100005F4C(a1, a2);
    v11 = v10;

    if (v11)
    {
      goto LABEL_11;
    }
  }

  v12 = [*(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) cloudContext];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 containerForAccountID:v14];

  if (!v15)
  {

LABEL_11:
    (*(a4 + 16))(a4, 0);
    return;
  }

  v33 = v13;
  v16 = [objc_allocWithZone(CKSystemSharingUIObserver) initWithContainer:v15];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;

  sub_10003E124(sub_100581180);
  CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;

  sub_10003E124(sub_100581190);
  CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter();

  swift_beginAccess();

  v21 = v16;
  v22 = *(a3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a3 + v8);
  *(a3 + v8) = 0x8000000000000000;
  sub_1002CAC6C(v21, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a3 + v8) = v34;
  swift_endAccess();
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_10094C8A8);

  v25 = v15;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v21;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v28 = 138412546;
    v32 = [v25 containerID];
    *(v28 + 4) = v32;
    *v30 = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10000668C(a1, a2, &v35);
    _os_log_impl(&_mh_execute_header, v26, v27, "CKSystemSharingUIObserver: Added observer for container: {containerID: %@, accountID: %s}", v28, 0x16u);
    sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
    v21 = v29;

    sub_10000607C(v31);
  }

  (*(a4 + 16))(a4, 0);
}

void sub_10057B7E0(void *a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  v18 = [v17 cloudContext];
  if (v18)
  {
    v19 = v18;
    v32 = v12;
    v33 = v11;
    v34 = v7;
    v35 = v6;
    v20 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v18];
    if (qword_100936568 != -1)
    {
      swift_once();
    }

    v21 = qword_10094C8F0;
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = a1;
    v22[4] = sub_100581108;
    v22[5] = v16;
    aBlock[4] = sub_100581110;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F76C8;
    v23 = _Block_copy(aBlock);
    v24 = v21;
    v31 = v20;
    v25 = a1;

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v26 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v34 + 8))(v10, v26);
    (*(v32 + 8))(v15, v33);
  }

  else
  {
    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 internalErrorWithDebugDescription:v28];

    v35 = _convertErrorToNSError(_:)();
    a3[2](a3, 0, 0, v35);

    v30 = v35;
  }
}

uint64_t sub_10057BC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v25 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v26);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  _Block_copy(a6);
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1)
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v24[1] = qword_100974CB0;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v25;
    v20[5] = a4;
    v20[6] = sub_10003FE60;
    v20[7] = v19;
    v20[8] = a5;
    aBlock[4] = sub_1005810D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F7650;
    v21 = _Block_copy(aBlock);

    v22 = a5;
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v27 + 8))(v14, v11);
    (*(v15 + 8))(v18, v26);
  }

  else
  {
    a6[2](a6, 0);
  }
}

uint64_t sub_10057C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v25 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v26);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  _Block_copy(a6);
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1)
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v24[1] = qword_100974CB0;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v25;
    v20[5] = a4;
    v20[6] = sub_10003FE60;
    v20[7] = v19;
    v20[8] = a5;
    aBlock[4] = sub_10058107C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F75D8;
    v21 = _Block_copy(aBlock);

    v22 = a5;
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v27 + 8))(v14, v11);
    (*(v15 + 8))(v18, v26);
  }

  else
  {
    a6[2](a6, 0);
  }
}

uint64_t sub_10057C478(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v8 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v12[0] = v8;
  *(v12 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v10[2] = a1;
  v10[3] = sub_10000A878;
  v10[4] = v6;
  _Block_copy(a3);
  sub_100014A64(&v11, sub_10058105C, v10);
}

void sub_10057C58C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a4);
  if ([v9 supportsTemplateOperation])
  {
    sub_100010364(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v21, &qword_100945EF8, &qword_1007B1F70);
    if (*&v22[8])
    {
      v10 = sub_100054B6C(&v21, v20);
      v11 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v21 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v22 = v11;
      *&v22[14] = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v10);
      v18[2] = sub_10000A878;
      v18[3] = v8;
      v18[4] = a1;
      v18[5] = a2;
      v18[6] = v20;
      sub_100014A64(&v21, sub_100581038, v18);
      sub_10000607C(v20);
    }

    else
    {
      sub_1000050A4(&v21, &qword_100945EF8, &qword_1007B1F70);
      v13 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v15];

      v17 = _convertErrorToNSError(_:)();
      (a4)[2](a4, 0, v17);
    }
  }

  else
  {
    v12 = [objc_opt_self() notSupportedError];
    v19 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v19);
  }
}

uint64_t sub_10057C864(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v10 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v14[0] = v10;
  *(v14 + 14) = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v12[2] = sub_10000A878;
  v12[3] = v8;
  v12[4] = a1;
  v12[5] = a2;
  _Block_copy(a4);
  sub_100014A64(&v13, sub_100581018, v12);
}

void sub_10057C97C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  if ([v7 supportsTemplateOperation])
  {
    sub_100010364(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v19, &qword_100945EF8, &qword_1007B1F70);
    if (*&v20[8])
    {
      v8 = sub_100054B6C(&v19, v18);
      v9 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v20 = v9;
      *&v20[14] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v8);
      v16[2] = sub_10000A878;
      v16[3] = v6;
      v16[4] = a1;
      v16[5] = v18;
      sub_100014A64(&v19, sub_100580FF8, v16);
      sub_10000607C(v18);
    }

    else
    {
      sub_1000050A4(&v19, &qword_100945EF8, &qword_1007B1F70);
      v11 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v13];

      v15 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v15);
    }
  }

  else
  {
    v10 = [objc_opt_self() notSupportedError];
    v17 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v17);
  }
}

void sub_10057CC4C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  if ([v7 supportsTemplateOperation])
  {
    sub_100010364(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v19, &qword_100945EF8, &qword_1007B1F70);
    if (*&v20[8])
    {
      v8 = sub_100054B6C(&v19, v18);
      v9 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v20 = v9;
      *&v20[14] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v8);
      v16[2] = sub_10000C928;
      v16[3] = v6;
      v16[4] = a1;
      v16[5] = v18;
      sub_100014A64(&v19, sub_100580FD8, v16);
      sub_10000607C(v18);
    }

    else
    {
      sub_1000050A4(&v19, &qword_100945EF8, &qword_1007B1F70);
      v11 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v13];

      v15 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v15);
    }
  }

  else
  {
    v10 = [objc_opt_self() notSupportedError];
    v17 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v17);
  }
}

uint64_t sub_10057CF1C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v5 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v8 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v9[0] = v5;
  *(v9 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v7[16] = a1;
  sub_100014A64(&v8, sub_100580FA4, v7);
  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_10057D134(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      v14 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }
  }

  else
  {
    v14 = 2147483519;
  }

  _Block_copy(a4);
  sub_100009A40(1, v14);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = sub_100580EC8;
  v16[7] = v12;

  sub_1001955C4(0, 0, v11, &unk_1007B1E20, v16);
}

void sub_10057D364(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, void (**a7)(void, void, void))
{
  v14 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v32 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  if (a2[2])
  {
    LODWORD(v32) = a5;
    v19 = a2[4];
    v20 = a2[5];
    v21 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    v22 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
    if (v22 != 2)
    {
      v21 = 0x7FFFFFFF;
    }

    if (v22 >= 2)
    {
      v23 = v21;
    }

    else
    {
      v23 = 2147483519;
    }

    _Block_copy(a7);

    sub_100009A40(1, v23);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = a2;
    *(v29 + 40) = v19;
    *(v29 + 48) = v20;
    *(v29 + 56) = sub_10000A878;
    *(v29 + 64) = v18;
    *(v29 + 72) = a1;
    *(v29 + 80) = a4;
    *(v29 + 88) = a3;
    *(v29 + 96) = v32 & 1;
    v30 = a3;

    v31 = a4;
    sub_1001955C4(0, 0, v17, &unk_1007B1DE8, v29);
  }

  else
  {
    v24 = objc_opt_self();
    _Block_copy(a7);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 invalidParameterErrorWithDescription:v25];

    v32 = _convertErrorToNSError(_:)();
    a7[2](a7, 0, v32);

    v27 = v32;
  }
}

void sub_10057D6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v5 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v12[0] = v5;
  *(v12 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v8 = a1;
  v9 = &v10;
  sub_100014A64(&v11, sub_100580CAC, v7);
  v6 = v10;
  (*(a3 + 16))(a3, v10, 0);
}

uint64_t sub_10057D960(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v8 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v12[0] = v8;
  *(v12 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = sub_100581570;
  v10[5] = v6;
  _Block_copy(a3);
  sub_100014A64(&v11, sub_100580BB8, v10);
}

uint64_t sub_10057DB94(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v8 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v12[0] = v8;
  *(v12 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v10[2] = sub_100580B74;
  v10[3] = v6;
  v10[4] = a1;
  _Block_copy(a3);
  sub_100014A64(&v11, sub_100580B7C, v10);
}

uint64_t sub_10057DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v12 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v17 >= 2)
  {
    if (v17 == 2)
    {
      v18 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }
  }

  else
  {
    v18 = 2147483519;
  }

  _Block_copy(a6);
  sub_100009A40(1, v18);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = sub_100580A80;
  v20[9] = v16;

  sub_1001955C4(0, 0, v15, &unk_1007B1D48, v20);
}

uint64_t sub_10057E0AC(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10057E0D0, 0, 0);
}

void sub_10057E0D0()
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094C8A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchIntelligentFeaturesMinimumSupportedVersion: Calling ICCloudConfiguration to check minimum supported version", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = [objc_opt_self() sharedConfiguration];
  if (!v5)
  {
    v7 = &selRef_autoCategorizationInternalInstallMinimumSupportedVersion;
    v8 = &selRef_autoCategorizationNonInternalInstallMinimumSupportedVersion;
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v7 = &selRef_intelligentExtractionsInternalInstallMinimumSupportedVersion;
    v8 = &selRef_intelligentExtractionsNonInternalInstallMinimumSupportedVersion;
LABEL_9:
    if (!*(v0 + 24))
    {
      v7 = v8;
    }

    v9 = v6;
    v10 = [v6 *v7];

    v11 = *(v0 + 8);

    v11(v10);
    return;
  }

  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);

  sub_10054573C("Unknown feature type", 20, 2);
}

uint64_t sub_10057E2BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }
  }

  else
  {
    v7 = 2147483519;
  }

  v8 = 0;
  result = sub_100009A40(1024, v7);
  v43 = a2;
  v44 = a3;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_37:
    v42 = *(v43 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_contactInteractionWriter);
    sub_1005664B4(_swiftEmptyArrayStorage);

    return (*(v44 + 16))(v44, 0);
  }

LABEL_8:
  v47 = v8;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v13 = &qword_100936000;
    v45 = a1;
    v46 = a1 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a1 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v10;
      if (v13[170] != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094C8A8);
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v21 = 136315650;
        v48 = [v18 personHandle];
        sub_1000F5104(&qword_10094C990, &qword_1007B1CD0);
        v22 = Optional.descriptionOrNil.getter();
        v24 = v23;

        v25 = sub_10000668C(v22, v24, v50);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v26 = [v18 aliases];
        if (v26)
        {
          v27 = v26;
          sub_1000060C8(0, &qword_10094C9A0, INPersonHandle_ptr);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000F5104(&qword_10094C998, &qword_1007B1CD8);
        v28 = Optional.descriptionOrNil.getter();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, v50);

        *(v21 + 14) = v31;
        *(v21 + 22) = 2080;
        v32 = [v18 contactIdentifier];
        if (v32)
        {
          v33 = v32;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v34 = Optional.descriptionOrNil.getter();
        v36 = v35;

        v37 = sub_10000668C(v34, v36, v50);

        *(v21 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v19, v20, "notifyOfInteraction: {personHandle: %s, aliases: %s, contactIdentifier: %s}", v21, 0x20u);
        swift_arrayDestroy();

        a1 = v45;
        v13 = &qword_100936000;
      }

      else
      {
      }

      ++v11;
      v10 = v16;
      v12 = v46;
    }

    while (v16 != v11);
    v38 = 0;
    while (1)
    {
      if (v46)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v47;
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v8 = v47;
        if (v38 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v39 = *(a1 + 8 * v38 + 32);
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          result = _CocoaArrayWrapper.endIndex.getter();
          v10 = result;
          if (!result)
          {
            goto LABEL_37;
          }

          goto LABEL_8;
        }
      }

      v50[0] = v39;
      sub_100571B6C(v50, &v49);
      v47 = v8;

      if (v49)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v38;
      if (v40 == v10)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10057E844()
{
  v0 = [objc_opt_self() sharedManager];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentPersona];

    if (v2)
    {
      v3 = [v2 generateAndRestorePersonaContextWithPersonaUniqueString:0];

      if (v3)
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100006654(v4, qword_10094C8A8);
        v5 = v3;
        oslog = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v14 = v8;
          *v7 = 136446210;
          v9 = v5;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          v10 = String.init<A>(describing:)();
          v12 = sub_10000668C(v10, v11, &v14);

          *(v7 + 4) = v12;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Failed to drop persona for account utils calls {error: %{public}s}", v7, 0xCu);
          sub_10000607C(v8);
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10057EA5C(char a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  sub_10057E844();
  if ([*(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    sub_1006B3F80(a1 & 1, qword_100974CB0, sub_10058156C, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, 0, v10);
  }
}

void sub_10057EC0C(uint64_t a1, void *a2, char a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  sub_10057E844();
  if ([*(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v11 = qword_100974CB0;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100580680;
    *(v12 + 24) = v10;

    sub_1006B370C(a1, a2, a3 & 1, v11, sub_100580688, v12);
  }

  else
  {
    v13 = objc_opt_self();
    _StringGuts.grow(_:)(60);
    v14._object = 0x80000001007FC890;
    v14._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 125;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v13 internalErrorWithDebugDescription:v17];

    v19 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, 0, v19);
  }
}

void sub_10057EE78(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10057E844();
  if ([*(a1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v5 = qword_100974CB0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100580650;
    *(v6 + 24) = v4;

    sub_1006B44B4(v5, sub_100580658, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v10);
  }
}

void sub_10057F05C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  sub_10057E844();
  if ([*(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v9 = qword_100974CB0;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10003FE60;
    *(v10 + 24) = v8;

    sub_1006B4720(a1, a2, v9, sub_100189954, v10);
  }

  else
  {
    v11 = objc_opt_self();
    _StringGuts.grow(_:)(108);
    v12._object = 0x80000001007FC7E0;
    v12._countAndFlagsBits = 0xD000000000000069;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 125;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v11 internalErrorWithDebugDescription:v15];

    v17 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v17);
  }
}

void sub_10057F2A8(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10057E844();
  if ([*(a1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v5 = qword_100974CB0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10003FE60;
    *(v6 + 24) = v4;

    sub_1006B5338(v5, sub_10018ADFC, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v10);
  }
}

void sub_10057F488(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedConfiguration];
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v15[0] = sub_100580640;
  v15[1] = v6;
  v15[2] = sub_100580640;
  v15[3] = v7;
  v15[4] = sub_100580648;
  v15[5] = v8;
  v15[6] = sub_100580648;
  v15[7] = v9;
  v10 = qword_100935D18;
  v11 = v4;
  v12 = v5;

  if (v10 != -1)
  {
    swift_once();
  }

  v13 = qword_100974CB0;
  objc_allocWithZone(type metadata accessor for RDXPCSuggestedAttributesPerformer());
  v14 = sub_100246808(a1, v15, v13);
  (*(a2 + 16))(a2, v14, 0);
}

uint64_t sub_10057F6B8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  v3 = [v2 suggestedAttributesHarvestingOverrides];

  if (!v3)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_11:
    sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
    goto LABEL_12;
  }

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  swift_bridgeObjectRelease_n();
  v5 = String._bridgeToObjectiveC()();
  v6 = [(objc_class *)isa valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_11;
  }

  sub_1000F5104(&qword_100946840, &qword_1007A8B98);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v10 = 0;
    return (*(a1 + 16))(a1, v10, 0);
  }

  if (!*(v12 + 16) || (v7 = sub_100005F4C(0x4F64656C62616E65, 0xEC000000534F696ELL), (v8 & 1) == 0))
  {

    goto LABEL_12;
  }

  v9 = *(*(v12 + 56) + v7);

  v10 = v9;
  return (*(a1 + 16))(a1, v10, 0);
}

void sub_10057F8D4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v5 + 8))(v9, v4);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 accountStore];

  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 accountWithIdentifier:v16];

  if (!v17)
  {
    v29 = [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
    swift_willThrow();

    v30 = _convertErrorToNSError(_:)();
    v31 = [v30 domain];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_10094C8A8);

        v54 = v29;
        v40 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v55))
        {
          v56 = swift_slowAlloc();
          v63[0] = swift_slowAlloc();
          *v56 = 136446466;
          v57 = sub_10000668C(v11, v13, v63);

          *(v56 + 4) = v57;
          *(v56 + 12) = 2082;
          v62[1] = v54;
          v58 = v54;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          v59 = String.init<A>(describing:)();
          v61 = sub_10000668C(v59, v60, v63);

          *(v56 + 14) = v61;
          _os_log_impl(&_mh_execute_header, v40, v55, "xpcPerformer.isManagedAccount: Error when looking up the ACAccount {acAccountID: %{public}s, error: %{public}s}", v56, 0x16u);
          swift_arrayDestroy();
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_10094C8A8);

    v39 = v30;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      v63[0] = v62[0];
      *v42 = 136446466;
      v43 = sub_10000668C(v11, v13, v63);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2082;
      v44 = v39;
      v45 = [v44 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v29;
      v48 = v30;
      v49 = a2;
      v51 = v50;

      v52 = sub_10000668C(v46, v51, v63);
      a2 = v49;
      v30 = v48;
      v29 = v47;

      *(v42 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "xpcPerformer.isManagedAccount: REMError when looking up the ACAccount {acAccountID: %{public}s, error: %{public}s}", v42, 0x16u);
      swift_arrayDestroy();
LABEL_20:

LABEL_22:

      v15 = v29;
      v36 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v36);

      v20 = v15;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v18 = [v17 MCIsManaged];
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094C8A8);

  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v62[0] = a2;
    v26 = v25;
    v63[0] = v25;
    *v23 = 136446722;
    v27 = sub_10000668C(v11, v13, v63);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v18;
    *(v23 + 18) = 2114;
    v28 = [v20 displayAccount];
    *(v23 + 20) = v28;
    *v24 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "xpcPerformer.isManagedAccount: ACAccount.rem_isManagedAppleID result {acAccountID: %{public}s, isManaged: %{BOOL}d, displayAccount: %{public}@}", v23, 0x1Cu);
    sub_1000050A4(v24, &unk_100938E70, &unk_100797230);

    sub_10000607C(v26);
    a2 = v62[0];
  }

  else
  {
  }

  v36 = [objc_allocWithZone(NSNumber) initWithBool:v18];
  (*(a2 + 16))(a2, v36, 0);
LABEL_23:
}

uint64_t sub_100580078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v5 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v8 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v9[0] = v5;
  *(v9 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v7[2] = a1;
  sub_100014A64(&v8, sub_1005805A0, v7);
  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_100580290(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v10 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v14[0] = v10;
  *(v14 + 14) = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v12[2] = a2;
  v12[3] = sub_10003FE58;
  v12[4] = v8;
  v12[5] = a1;
  _Block_copy(a4);
  sub_100014A64(&v13, sub_1005804E4, v12);
}

unint64_t sub_100580504()
{
  result = qword_10094C978;
  if (!qword_10094C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C978);
  }

  return result;
}

uint64_t sub_100580558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005805C4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_100572C04(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void sub_100580634()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100577140(*(v0 + 16));
}

uint64_t sub_100580658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100580688()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1005806B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FCBFC;

  return sub_10057155C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100580778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000FDA74;

  return sub_100571370(v2, v3, v5);
}

uint64_t sub_10058083C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000FDA74;

  return sub_100577284(v2, v3, v5);
}

uint64_t sub_1005808FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000FDA74;

  return sub_10057736C(a1, v4, v5, v7);
}

uint64_t sub_1005809C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000FDA74;

  return sub_10019A470(a1, v5);
}

uint64_t sub_100580A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000FDA74;

  return sub_100570D34(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_100580BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_10056F9AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100580CC8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000FDA74;

  return sub_10056D530(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100580DD4(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1000FDA74;

  return sub_10056E488(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t sub_100580ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_10056D394(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100581084()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10058111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return v5(a2, a3, a4, a1);
}

uint64_t sub_100581158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100581180(void *a1, void *a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  sub_10056A5D0(a1, a2, a3 & 1);
}

void sub_100581190(void *a1, uint64_t a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  sub_10056AAF8(a1, a2, a3 & 1);
}

void sub_1005811A0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_10056B220(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1005811E4(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100581378()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000FDA74;

  return sub_100568398(v2, v3);
}

uint64_t sub_100581424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1005814C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100566D3C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_1005815C8(void *a1)
{
  v3 = a1;
  if (!a1)
  {
    v3 = sub_1005816D0();
    if (!v3)
    {
      LOBYTE(v7) = 0;
      return v7 & 1;
    }
  }

  v4 = a1;
  v5 = [v1 assignmentContext];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 currentAssignment];

  if (v7)
  {
    v8 = [v7 assigneeID];

    if (v8)
    {
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v9 = [v3 objectID];
      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v7) = 0;
  }

LABEL_8:

  return v7 & 1;
}

unint64_t sub_1005816D0()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v2 = *(v31 - 8);
  v3 = v2[8];
  __chkstk_darwin(v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 list];
  v7 = [v6 shareeContext];

  if (v7)
  {
    v8 = [v7 sharees];

    sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = [v1 list];
    v11 = [v10 currentUserShareParticipantID];

    if (v11)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v12;

      if (v9 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v14 = 0;
        v27 = v9 & 0xFFFFFFFFFFFFFF8;
        v28 = v9 & 0xC000000000000001;
        v15 = (v2 + 1);
        while (1)
        {
          if (v28)
          {
            v16 = v9;
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v14 >= *(v27 + 16))
            {
              goto LABEL_16;
            }

            v16 = v9;
            v17 = *(v9 + 8 * v14 + 32);
          }

          v9 = v17;
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v19 = [v17 objectID];
          v20 = [v19 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = UUID.uuidString.getter();
          v23 = v22;
          (*v15)(v5, v31);
          v34[0] = v21;
          v34[1] = v23;
          v32 = v29;
          v33 = v30;
          sub_10013BCF4();
          v2 = v34;
          v24 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (!v24)
          {

            return v9;
          }

          ++v14;
          v9 = v16;
          if (v18 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

uint64_t sub_1005819E4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = v0[7];
    v10 = v0[8];
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = *(v10 + 16);

    v13(sub_100582928, v12, ObjectType, v10);

    return sub_100581F04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100581B7C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CA18);
  v1 = sub_100006654(v0, qword_10094CA18);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100581C44(void *a1)
{
  v2 = REMStoreSyncReasonSignificantTimeChanged;
  v4[4] = sub_100581D08;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100042968;
  v4[3] = &unk_1008F7C20;
  v3 = _Block_copy(v4);
  [a1 triggerThrottledSyncWithReason:v2 discretionary:1 completion:v3];
  _Block_release(v3);
}

void sub_100581D08()
{
  if (qword_100936570 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094CA18);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_errorRetain();
    sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
    v4 = String.init<A>(describing:)();
    v6 = sub_10000668C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Polling sync did finish {error: %{public}s}", v2, 0xCu);
    sub_10000607C(v3);
  }

  else
  {
  }
}

uint64_t sub_100581EAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100581F04();
  }

  return result;
}

uint64_t sub_100581F04()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v74 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v68[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v72 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v68[-v14];
  __chkstk_darwin(v13);
  v17 = &v68[-v16];
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v68[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(v1 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = *(v1 + 24);
  v22 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v27 = *(v22 + 1);
  v73 = ObjectType;
  v27(ObjectType, v22);
  v28 = v8;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001AAD5C(v7);
    if (qword_100936570 == -1)
    {
LABEL_4:
      v29 = type metadata accessor for Logger();
      sub_100006654(v29, qword_10094CA18);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "nil lastSyncPoll. Polling", v32, 2u);
      }

      goto LABEL_7;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v37 = v17;
  (*(v9 + 32))(v17, v7, v28);
  v38 = *(v1 + 72);
  v39 = *(v1 + 80);
  v40 = swift_getObjectType();
  v41 = (*(v39 + 8))(v40, v39);
  Date.timeIntervalSinceNow.getter();
  if (v42 < -v41)
  {
    if (qword_100936570 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094CA18);
    (*(v9 + 16))(v15, v17, v28);
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v75 = v72;
      *v46 = 136446722;
      sub_100455E78();
      v70 = v44;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v45;
      v49 = v48;
      v50 = v15;
      v51 = *(v9 + 8);
      v71 = v9 + 8;
      v51(v50, v28);
      v52 = sub_10000668C(v47, v49, &v75);

      *(v46 + 4) = v52;
      *(v46 + 12) = 1040;
      *(v46 + 14) = 3;
      *(v46 + 18) = 2048;
      *(v46 + 20) = v41;
      v53 = v70;
      _os_log_impl(&_mh_execute_header, v70, v69, "lastSyncPoll > configurationInterval. Polling {lastSyncPoll: %{public}s, throttingInterval: %.*f}", v46, 0x1Cu);
      sub_10000607C(v72);

      v51(v37, v28);
      goto LABEL_8;
    }

    v8 = v28;
    v66 = *(v9 + 8);
    v66(v15, v8);
    v66(v17, v8);
LABEL_7:
    v28 = v8;
LABEL_8:
    v33 = v74;
    Date.init()();
    (*(v9 + 56))(v33, 0, 1, v28);
    v34 = (*(v22 + 2))(v33, v73, v22);
    v35 = *(v1 + 48);
    return (*(v1 + 40))(v34);
  }

  if (qword_100936570 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100006654(v54, qword_10094CA18);
  v55 = v72;
  (*(v9 + 16))(v72, v37, v28);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v74 = v37;
    v59 = v58;
    v60 = swift_slowAlloc();
    v75 = v60;
    *v59 = 136446722;
    sub_100455E78();
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = *(v9 + 8);
    v64(v55, v28);
    v65 = sub_10000668C(v61, v63, &v75);

    *(v59 + 4) = v65;
    *(v59 + 12) = 1040;
    *(v59 + 14) = 3;
    *(v59 + 18) = 2048;
    *(v59 + 20) = v41;
    _os_log_impl(&_mh_execute_header, v56, v57, "lastSyncPoll < throttingInterval. Not Polling {lastSyncPoll: %{public}s, throttingInterval: %.*f}", v59, 0x1Cu);
    sub_10000607C(v60);

    return (v64)(v74, v28);
  }

  else
  {

    v67 = *(v9 + 8);
    v67(v55, v28);
    return (v67)(v37, v28);
  }
}

uint64_t sub_100582700()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100582758@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastSyncPoll];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1005827FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v2 setLastSyncPoll:?];
}

uint64_t sub_100582930()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094CAF0);
  v1 = sub_100006654(v0, qword_10094CAF0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005829F8(void *a1@<X8>)
{
  sub_100585144();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100582A2C(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB28, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_100582A84(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = &v53 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v53 - v14;
  v16 = *a1;
  v17 = [*a1 name];
  if (v17)
  {
    v54 = v17;
    v56 = v2;
    v18 = [v16 canonicalName];
    if (v18)
    {
      v19 = v18;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v53 = 0;
      v21 = 0;
    }

    v30 = [v16 firstOccurrenceCreationDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
    }

    else
    {
      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
    }

    v34 = [v16 recencyDate];
    v55 = a2;
    if (v34)
    {
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = type metadata accessor for Date();
    v38 = *(v37 - 8);
    v39 = 1;
    (*(v38 + 56))(v11, v36, 1, v37);
    v40 = [v16 uuidForChangeTracking];
    v41 = v57;
    if (v40)
    {
      v42 = v40;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = 0;
    }

    v43 = type metadata accessor for UUID();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v41, v39, 1, v43);
    if (v21)
    {
      v53 = String._bridgeToObjectiveC()();
    }

    else
    {
      v53 = 0;
    }

    v45 = *(v38 + 48);
    if (v45(v15, 1, v37) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v38 + 8))(v15, v37);
    }

    if (v45(v11, 1, v37) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = Date._bridgeToObjectiveC()().super.isa;
      (*(v38 + 8))(v11, v37);
    }

    v48 = v57;
    if ((*(v44 + 48))(v57, 1, v43) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v44 + 8))(v48, v43);
    }

    v50 = objc_allocWithZone(type metadata accessor for REMHashtagLabelDetailed_Codable());
    v52 = v53;
    v51 = v54;
    v29 = [v50 initWithName:v54 canonicalName:v53 firstOccurrenceCreationDate:isa recencyDate:v47 uuidForChangeTracking:v49];

    a2 = v55;
  }

  else
  {
    if (qword_100936578 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10094CAF0);
    v23 = v16;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = [v23 objectID];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected nil name REMCDHashtagLabel from AllHashtagLabelsInvocation {mid: %@}", v26, 0xCu);
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);
    }

    v29 = 0;
  }

  *a2 = v29;
}

uint64_t sub_100583084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10058542C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1005830B8(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB50, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100583110@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
  v11 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
  REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
  v12 = sub_100584A24(v10, v11, v9, a1);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14 = v12;
    (*(v6 + 8))(v9, v5);

    *a2 = v14;
  }

  return result;
}

uint64_t sub_100583270(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CB78, &type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005832C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 filterData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100583330(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  [v2 setFilterData:?];
}

uint64_t sub_1005833A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_10094CC10, &qword_1007B22C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10003693C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_100036990(&qword_100938928);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    type metadata accessor for REMFetchResultToken_Codable();
    sub_1000369FC(&qword_10094CC18, &type metadata accessor for REMFetchResultToken_Codable);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1005835B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_100583684(uint64_t a1)
{
  v2 = sub_10003693C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005836C0(uint64_t a1)
{
  v2 = sub_10003693C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100583718(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() daemonUserDefaults];
  sub_100035608(a1, v8, &off_1008F7C98, a2, a3, a4);
}

uint64_t sub_1005837AC(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CBA0, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100583804@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  static Locale.current.getter();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_10013BCF4();
  v10 = StringProtocol.foldedStringForWriting(locale:)();
  v12 = v11;
  result = sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

id sub_10058392C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_10058395C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.hashtagLabelNamesToSearch.getter();
  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
  v5 = Sequence.compactMapToSet<A>(_:)();

  v6 = sub_10042EC14(v5, 0, a1);

  if (!v2)
  {
    sub_1007094F0(v6);

    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10094CBE0, &qword_10093F598, &qword_1007A2640);
    sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    v8 = Sequence.mapToSet<A>(_:)();

    *a2 = v8;
  }

  return result;
}

uint64_t sub_100583B60(uint64_t a1)
{
  result = sub_1000369FC(&qword_10094CBC8, &type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_100583BB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setHashtagLabelsInCustomSmartListFilterCache:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setHashtagLabelsInCustomSmartListFilterCache:isa];
  }
}

void *sub_100583C48(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = __CocoaSet.count.getter();
      a2 = sub_10037F9A0(v4, v5);
      goto LABEL_8;
    }

    type metadata accessor for REMObjectID_Codable();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v7 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v8 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v9 = -1 << *(a1 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v11 = ~v9;
          while (1)
          {
            v12 = *(*(a1 + 48) + 8 * v10);
            v13 = static NSObject.== infix(_:_:)();

            if (v13)
            {
              break;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v14 = _swiftEmptySetSingleton[2];
          if (_swiftEmptySetSingleton[3] <= v14)
          {
            sub_1003800CC(v14 + 1);
          }

          sub_100393C78(v15, _swiftEmptySetSingleton);
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return _swiftEmptySetSingleton;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_1004A49C0(a1, a2);
    }

    return sub_1001A20B0(a1, a2);
  }
}

unint64_t sub_100583E6C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return sub_10038E618(_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
  v5 = Sequence.compactMapToSet<A>(_:)();
  v6 = sub_10042E5A0(v5, 0, a2);
  v7 = v2;

  if (v2)
  {
    return v3;
  }

  sub_1000F5104(&qword_100943E88, &qword_1007A4618);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v9 = 0;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v24 = result + 64;
  v25 = result;
  if (v12)
  {
    while (1)
    {
      v29 = v7;
      v14 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
LABEL_14:
      v17 = v14 | (v9 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v28 = *v18;
      v27 = v18[1];
      v30 = *(*(v6 + 56) + 8 * v17);

      sub_1000F5104(&qword_10094CBE8, &qword_1007B2250);
      type metadata accessor for REMObjectID_Codable();
      sub_10000CB48(&qword_10094CBF0, &qword_10094CBE8, &qword_1007B2250);
      sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
      v19 = Sequence.mapToSet<A>(_:)();
      v7 = v29;

      v3 = v25;
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v20 = (v25[6] + 16 * v17);
      *v20 = v28;
      v20[1] = v27;
      *(v25[7] + 8 * v17) = v19;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      v12 = v26;
      if (!v26)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        return v3;
      }

      v16 = *(v6 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v29 = v7;
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005841B8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    do
    {
      if (v9 - 1 == v5)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_39;
        }

        return;
      }

      v6 = v5 + 1;
      v11 = *(a1 + 72 + 8 * v5);
      v10 -= 64;
      ++v5;
    }

    while (!v11);
    v8 = (v11 - 1) & v11;
    v7 = __clz(__rbit64(v11)) - v10;
  }

  v12 = *(*(a1 + 56) + 8 * v7);

LABEL_10:
  v13 = v6;
  if (!v8)
  {
    goto LABEL_12;
  }

  do
  {
    v6 = v13;
LABEL_15:
    v14 = *(a1 + 56);
    v15 = (v6 << 9) | (8 * __clz(__rbit64(v8)));
    v16 = *(v14 + v15);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = *(v14 + v15);

      v18 = __CocoaSet.count.getter();
      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = *(v12 + 16);
      v20 = *(v14 + v15);

      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_17:
        v19 = __CocoaSet.count.getter();
        goto LABEL_20;
      }
    }

    v19 = *(v16 + 16);
LABEL_20:
    v8 &= v8 - 1;
    if (v18 < v19)
    {

      v12 = v16;
      goto LABEL_10;
    }

    v13 = v6;
  }

  while (v8);
  while (1)
  {
LABEL_12:
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v6 >= v9)
    {
      break;
    }

    v8 = *(v2 + 8 * v6);
    ++v13;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  while (v23)
  {
    v26 = v25;
LABEL_32:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = *(*(a1 + 56) + ((v26 << 9) | (8 * v27)));

    sub_100355C44(v29);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      return;
    }

    v23 = *(v2 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_32;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1003915C4(_swiftEmptyArrayStorage);
  }
}

void sub_100584498(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    do
    {
      if (v9 - 1 == v5)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_39;
        }

        return;
      }

      v6 = v5 + 1;
      v11 = *(a1 + 72 + 8 * v5);
      v10 -= 64;
      ++v5;
    }

    while (!v11);
    v8 = (v11 - 1) & v11;
    v7 = __clz(__rbit64(v11)) - v10;
  }

  v12 = *(*(a1 + 56) + 8 * v7);

LABEL_10:
  v13 = v12 & 0xC000000000000001;
  v14 = v6;
  if (!v8)
  {
    goto LABEL_12;
  }

  do
  {
    v6 = v14;
LABEL_15:
    v15 = (v6 << 9) | (8 * __clz(__rbit64(v8)));
    v16 = *(*(a1 + 56) + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = __CocoaSet.count.getter();
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v16 + 16);
      v19 = *(*(a1 + 56) + v15);

      if (v13)
      {
LABEL_17:
        v18 = __CocoaSet.count.getter();
        goto LABEL_20;
      }
    }

    v18 = *(v12 + 16);
LABEL_20:
    v8 &= v8 - 1;
    if (v17 < v18)
    {

      v12 = v16;
      goto LABEL_10;
    }

    v14 = v6;
  }

  while (v8);
  while (1)
  {
LABEL_12:
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v6 >= v9)
    {
      break;
    }

    v8 = *(v2 + 8 * v6);
    ++v14;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  while (v22)
  {
    v25 = v24;
LABEL_32:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = v26 | (v25 << 6);
    v28 = *(*(a1 + 48) + 16 * v27 + 8);
    v29 = *(*(a1 + 56) + 8 * v27);

    v12 = sub_100583C48(v30, v12);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return;
    }

    v22 = *(v2 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_32;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1003915C4(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10058478C(uint64_t a1)
{
  v3 = sub_10042E5A0(2, 2, a1);
  v4 = v1;
  if (v1)
  {
    return v2;
  }

  v5 = v3;
  sub_1000F5104(&qword_100943E88, &qword_1007A4618);
  result = static _DictionaryStorage.copy(original:)();
  v2 = result;
  v7 = 0;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v22 = result + 64;
  v23 = result;
  if (v10)
  {
    while (1)
    {
      v27 = v4;
      v12 = __clz(__rbit64(v10));
      v24 = (v10 - 1) & v10;
LABEL_11:
      v15 = v12 | (v7 << 6);
      v16 = (*(v5 + 48) + 16 * v15);
      v26 = *v16;
      v25 = v16[1];
      v28 = *(*(v5 + 56) + 8 * v15);

      sub_1000F5104(&qword_10094CBE8, &qword_1007B2250);
      type metadata accessor for REMObjectID_Codable();
      sub_10000CB48(&qword_10094CBF0, &qword_10094CBE8, &qword_1007B2250);
      sub_1000369FC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
      v17 = Sequence.mapToSet<A>(_:)();
      v4 = v27;

      v2 = v23;
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (v23[6] + 16 * v15);
      *v18 = v26;
      v18[1] = v25;
      *(v23[7] + 8 * v15) = v17;
      v19 = v23[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v23[2] = v21;
      v10 = v24;
      if (!v24)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        return v2;
      }

      v14 = *(v5 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v27 = v4;
        v12 = __clz(__rbit64(v14));
        v24 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100584A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100583E6C(a1, a4);
  if (v4)
  {
    return v9;
  }

  v15 = v14;
  v16 = sub_100583E6C(a2, a4);
  v37 = 0;
  sub_1005841B8(v16);
  v36 = v18;
  (*(v10 + 16))(v13, a3, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == enum case for REMHashtagLabelDataView.Operation.all(_:))
  {

    if (*(v15 + 16) == *(a1 + 16))
    {
      sub_100584498(v15);
      v9 = v20;
    }

    else
    {
      v9 = _swiftEmptySetSingleton;
    }

    v24 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (v24)
      {
        v9 = sub_100051088(v36, v9);
      }

      goto LABEL_3;
    }

    if (v24)
    {
      v25 = v37;
      v26 = sub_10058478C(a4);
      if (!v25)
      {
        sub_1005841B8(v26);
        v33 = v32;

        v9 = sub_100051088(v36, v33);

        return v9;
      }

      goto LABEL_3;
    }

    goto LABEL_23;
  }

  if (v19 == enum case for REMHashtagLabelDataView.Operation.some(_:))
  {

    sub_1005841B8(v15);
    v9 = v21;

    if (*(a2 + 16))
    {
      v22 = v37;
      v23 = sub_10058478C(a4);
      if (!v22)
      {
        sub_1005841B8(v23);
        v29 = v28;

        v30 = sub_100051088(v36, v29);

        sub_1000434E8(v30, v9);
        return v31;
      }

LABEL_3:

      return v9;
    }

    v27 = *(a1 + 16);

    if (v27)
    {
      return v9;
    }

LABEL_23:

    if (!(_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptySetSingleton;
    }

    sub_1003915C4(_swiftEmptyArrayStorage);
    return v34;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100584D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1005850F0();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v9;
  if (qword_100936578 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094CAF0);
  sub_100029344(v8, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_10001BBA0(v8, v10);
LABEL_16:

    ObjectType = swift_getObjectType();
    return (*(a4 + 16))(v8, v10, ObjectType, a4);
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v15 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v10);
LABEL_15:
    *(result + 4) = v16;
    v20 = result;
    sub_10001BBA0(v8, v10);
    _os_log_impl(&_mh_execute_header, v12, v13, "HashtagLabelsReferencedByCustomSmartListFiltersInvocation: saving cache {dataSize: %ld}", v20, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v16) = HIDWORD(v8) - v8;
  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v16 = v16;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}