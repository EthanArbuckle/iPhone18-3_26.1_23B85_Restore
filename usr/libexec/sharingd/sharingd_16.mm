uint64_t sub_100321698()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009787C0);
  v1 = sub_10000C4AC(v0, qword_1009787C0);
  if (qword_100973768 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100321760()
{
  type metadata accessor for SDContactStore();
  v0 = swift_allocObject();
  v1 = CNContactStoreMeContactDidChangeNotification;
  v0[2] = CNContactStoreDidChangeNotification;
  v0[3] = v1;
  v2 = objc_allocWithZone(CNContactStore);
  v3 = CNContactStoreDidChangeNotification;
  v4 = v1;
  result = [v2 init];
  v0[4] = result;
  qword_1009A0758 = v0;
  return result;
}

uint64_t sub_100322074(uint64_t a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    sub_1000276B4(0, &qword_100978800, INPerson_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3[3] = a1;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100322180;

  return sub_1003238F4(a1, v5, v7);
}

uint64_t sub_100322180(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;

  v9 = *(v5 + 24);
  v10 = *(v5 + 16);

  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_10032233C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_100322468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDSuggestionCreationUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003224C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005C04;

  return sub_100322074(v2, v3, v5);
}

id sub_100322584(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  v12 = 0;
  v8 = [v4 initWithBundleIdentifier:v7 requireValid:a3 & 1 platform:a4 error:&v12];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

id sub_100322668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDContactStore();
  v37 = v12;
  v38 = &off_1008E85A0;
  v36[0] = a3;

  v13 = [a4 customIdentifier];
  if (v13 || (v13 = [a4 contactIdentifier]) != 0)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v8 + 8))(v11, v7);
    v15 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v16 = [a4 personHandle];
  if (v16 && (v17 = v16, v18 = [v16 value], v17, v18))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v19;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  v20 = [a4 displayName];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = *sub_10002CDC0(v36, v37);
  v34 = v12;
  v35 = &off_1008E85A0;
  v33[0] = v21;

  v22 = [a4 contactIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = *sub_10002CDC0(v33, v34);
    v28 = sub_1005A09A0(v24, v26);
  }

  else
  {
    v28 = 0;
  }

  sub_10000C60C(v33);
  v29 = String._bridgeToObjectiveC()();

  if (v15)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(_PSRecipient) initWithIdentifier:v29 handle:v30 displayName:v20 contact:v28];

  sub_10000C60C(v36);
  return v31;
}

id sub_10032299C()
{
  sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v1 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v2 = objc_allocWithZone(GDKnosisRequest);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithKGQ:v3 query:v4 limit:isa offset:v1];

  v6 = [objc_allocWithZone(GDXPCKnosisService) init];
  v11 = 0;
  v7 = [v6 executeKGQ:v5 error:&v11];
  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_100322B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_100322B58, 0, 0);
}

uint64_t sub_100322B58()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultDatabaseDirectory];
  v3 = [v1 storeWithDirectory:v2 readOnly:1];

  v0[18] = v3;
  v4 = v0 + 18;
  v5 = v0 + 10;
  sub_10028088C(&qword_100978818, &unk_1007FBA18);
  Optional.tryUnwrap(_:file:line:)();
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  v9 = v0[10];
  v0[22] = v9;
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithKey:v11 ascending:0];
  v0[23] = v12;

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007FA7E0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100026764();
  *(v13 + 32) = v7;
  *(v13 + 40) = v6;
  if (v8 >> 62)
  {
    if (v0[19] < 0)
    {
      v45 = v0[19];
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  v48 = v13;
  v49 = v9;
  *(v13 + 72) = v14;
  v15 = v0[21];
  if (v14)
  {

    v16 = sub_10028FCC0(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v16);
    }

    v47 = v12;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = v0[19];
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = [swift_unknownObjectRetain() handle];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v21 = 0;
          v23 = 0;
        }

        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_10028FCC0((v24 > 1), v25 + 1, 1);
        }

        ++v17;
        _swiftEmptyArrayStorage[2] = v25 + 1;
        v26 = &_swiftEmptyArrayStorage[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
      }

      while (v14 != v17);
    }

    else
    {
      v27 = (v0[19] + 32);
      v28 = v14;
      do
      {
        v29 = *v27;
        v30 = [v29 handle];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {

          v32 = 0;
          v34 = 0;
        }

        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_10028FCC0((v35 > 1), v36 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[2 * v36];
        v37[4] = v32;
        v37[5] = v34;
        ++v27;
        --v28;
      }

      while (v28);
    }

    v4 = v0 + 18;
    v5 = v0 + 10;
    v12 = v47;
  }

  else
  {
  }

  sub_1000276B4(0, &qword_100978820, NSPredicate_ptr);
  v48[17] = sub_10028088C(&qword_100978828, &qword_1007FBA28);
  v38 = sub_100324BBC();
  v48[14] = _swiftEmptyArrayStorage;
  v48[22] = &type metadata for Int;
  v48[23] = &protocol witness table for Int;
  v48[18] = v38;
  v48[19] = v14;
  v39 = NSPredicate.init(format:_:)();
  v0[24] = v39;
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007F5670;
  *(v40 + 56) = sub_1000276B4(0, &qword_100978838, NSSortDescriptor_ptr);
  *(v40 + 32) = v12;
  v41 = v39;
  v42 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;

  v0[2] = v0;
  v0[7] = v4;
  v0[3] = sub_100323158;
  v44 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100978840, &qword_1007FBA38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10032233C;
  v0[13] = &unk_1008DBCE8;
  v0[14] = v44;
  [v49 queryInteractionsUsingPredicate:v41 sortDescriptors:isa limit:1 completionHandler:v5];
  v16 = v0 + 2;

  return _swift_continuation_await(v16);
}

uint64_t sub_100323158()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100323864;
  }

  else
  {
    v3 = sub_100323268;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_100323268()
{
  v55 = v0;
  v4 = v0 + 18;
  v5 = v0[24];
  v6 = v0[25];
  if (v0[18])
  {
    v7 = sub_10029B654(v0[18]);
  }

  else
  {
    v7 = 0;
  }

  if (qword_100973610 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009787C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v54 = v2;
  *v1 = 136315138;
  if (!v7)
  {
    result = 0;
    goto LABEL_14;
  }

  v3 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v7 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*(v3 + 16))
  {
    result = *(v7 + 32);
LABEL_14:
    while (1)
    {
      *(v4 - 8) = result;
      sub_10028088C(&qword_100978848, &unk_1007FBA40);
      v12 = String.init<A>(describing:)();
      v4 = v13;
      v3 = sub_10000C4E4(v12, v13, &v54);

      *(v1 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found interaction %s", v1, 0xCu);
      sub_10000C60C(v2);

LABEL_15:

      if (!v7)
      {
        break;
      }

      v9 = (v7 & 0xFFFFFFFFFFFFFF8);
      if (v7 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_27:

          break;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
        v15 = v14;

        v16 = [v15 derivedIntentIdentifier];

        if (v16)
        {
          v17 = v0[21];
          v18 = v0[19];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();

          v24 = os_log_type_enabled(v22, v23);
          v25 = v0[23];
          v26 = v0[24];
          v27 = v0[22];
          if (v24)
          {
            v49 = v0[20];
            v50 = v0[21];
            v28 = v0[19];
            v52 = v0[22];
            v29 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *v29 = 136315650;
            v30 = sub_10000C4E4(v19, v21, &v54);

            *(v29 + 4) = v30;
            *(v29 + 12) = 2080;
            sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
            v31 = Array.description.getter();
            v33 = sub_10000C4E4(v31, v32, &v54);

            *(v29 + 14) = v33;
            *(v29 + 22) = 2080;
            *(v29 + 24) = sub_10000C4E4(v49, v50, &v54);
            _os_log_impl(&_mh_execute_header, v22, v23, "Found derived intent identifier %s for recipients %s and bundle ID %s", v29, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v34 = v19;
          goto LABEL_31;
        }

        break;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v7 + 32);
        goto LABEL_21;
      }

      __break(1u);
LABEL_36:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_10;
      }
    }

    v35 = v0[21];
    v36 = v0[19];

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    if (v39)
    {
      v51 = v0[20];
      v53 = v0[21];
      v43 = v0[19];
      v44 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v44 = 136315394;
      sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
      v45 = Array.description.getter();
      v47 = sub_10000C4E4(v45, v46, &v54);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10000C4E4(v51, v53, &v54);
      _os_log_impl(&_mh_execute_header, v37, v38, "No interaction was found for recipients %s and bundle ID %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    v34 = 0;
    v21 = 0;
LABEL_31:
    v48 = v0[1];

    return v48(v34, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100323864()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  swift_willThrow();

  v6 = v0[26];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1003238F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100323918, 0, 0);
}

void sub_100323918()
{
  v89 = v0;
  v1 = v0[5];
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v76 = v0[5];
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        goto LABEL_24;
      }

LABEL_4:
      v4 = v0[6];
      v3 = v0[7];
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v4 || v5 != v3)
      {
        v7 = v0[6];
        v8 = v0[7];
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
LABEL_19:
          if (qword_100973610 != -1)
          {
            swift_once();
          }

          v32 = v0[7];
          v33 = type metadata accessor for Logger();
          sub_10000C4AC(v33, qword_1009787C0);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v37 = v0[6];
            v36 = v0[7];
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v88[0] = v39;
            *v38 = 136315138;
            *(v38 + 4) = sub_10000C4E4(v37, v36, v88);
            _os_log_impl(&_mh_execute_header, v34, v35, "Skipping conversion of provided recipients to suggestion for activity %s since SPI will be used instead", v38, 0xCu);
            sub_10000C60C(v39);
          }

          goto LABEL_24;
        }

        v11 = v0[6];
        v10 = v0[7];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v11 || v12 != v10)
        {
          v14 = v0[6];
          v15 = v0[7];
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            if (qword_100973610 != -1)
            {
LABEL_63:
              swift_once();
            }

            v17 = v0[7];
            v18 = type metadata accessor for Logger();
            v0[8] = sub_10000C4AC(v18, qword_1009787C0);

            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();

            v77 = v1;
            v81 = v2;
            if (os_log_type_enabled(v19, v20))
            {
              v22 = v0[6];
              v21 = v0[7];
              v23 = swift_slowAlloc();
              v88[0] = swift_slowAlloc();
              *v23 = 136315394;
              sub_1000276B4(0, &qword_100978800, INPerson_ptr);
              v24 = Array.description.getter();
              v26 = sub_10000C4E4(v24, v25, v88);

              *(v23 + 4) = v26;
              *(v23 + 12) = 2080;
              v27 = v22;
              v2 = v81;
              *(v23 + 14) = sub_10000C4E4(v27, v21, v88);
              _os_log_impl(&_mh_execute_header, v19, v20, "Converting provided recipients %s for activity type %s", v23, 0x16u);
              swift_arrayDestroy();
            }

            v28 = v0[6];
            v29 = v0[7];
            swift_bridgeObjectRetain_n();
            active_platform = dyld_get_active_platform();
            v31 = objc_allocWithZone(LSApplicationExtensionRecord);
            v41 = sub_100322584(v28, v29, 0, active_platform);
            v42 = [v41 containingBundleRecord];
            if (v42 && (v43 = v42, v44 = [v42 bundleIdentifier], v43, v44))
            {
              v45 = v0[7];
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              v49 = v46;
            }

            else
            {

              v49 = v0[6];
              v48 = v0[7];
            }

            v0[9] = v49;
            v0[10] = v48;
            v0[4] = _swiftEmptyArrayStorage;
            if (v2 < 1)
            {
              __break(1u);
              return;
            }

            v50 = 0;
            v85 = v0[5] & 0xC000000000000001;
            v86 = v48;
            v87 = v49;
            while (1)
            {
              if (v85)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v51 = *(v1 + 8 * v50 + 32);
              }

              v52 = v51;
              sub_1003217EC(v49, v48);
              v53 = sub_10032299C();

              v83 = v53;
              v54 = [v53 answers];
              sub_1000276B4(0, &qword_100978810, GDKnosisAnswer_ptr);
              v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v55 >> 62)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_44:

LABEL_45:
                  v84 = 0;
                  v60 = 0;
                  goto LABEL_46;
                }
              }

              else if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              if ((v55 & 0xC000000000000001) != 0)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_63;
                }

                v56 = *(v55 + 32);
              }

              v57 = v56;

              v58 = [v57 answerId];

              if (!v58)
              {
                goto LABEL_45;
              }

              v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;

LABEL_46:
              v61 = v0[7];

              v62 = v52;

              v63 = Logger.logObject.getter();
              v64 = static os_log_type_t.default.getter();

              v82 = v64;
              if (os_log_type_enabled(v63, v64))
              {
                v79 = v0[6];
                v80 = v0[7];
                v65 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v88[0] = swift_slowAlloc();
                *v65 = 136315906;
                v0[2] = v84;
                v0[3] = v60;

                sub_10028088C(&qword_100975100, &qword_1007FBA10);
                v66 = String.init<A>(describing:)();
                v68 = sub_10000C4E4(v66, v67, v88);

                *(v65 + 4) = v68;
                *(v65 + 12) = 2112;
                *(v65 + 14) = v62;
                *v78 = v62;
                *(v65 + 22) = 2080;
                v69 = v62;

                v70 = sub_10000C4E4(v87, v86, v88);

                *(v65 + 24) = v70;
                *(v65 + 32) = 2080;
                *(v65 + 34) = sub_10000C4E4(v79, v80, v88);
                _os_log_impl(&_mh_execute_header, v63, v82, "Found handle %s for recipient %@ with suggestion bundle ID %s for activity type %s", v65, 0x2Au);
                sub_10028924C(v78);

                swift_arrayDestroy();

                v1 = v77;
              }

              v2 = v81;
              if (qword_100973618 != -1)
              {
                swift_once();
              }

              v71 = sub_100322668(v84, v60, qword_1009A0758, v62);

              v48 = v86;
              v72 = v71;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v49 = v87;
              if (*((v0[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v74 = *((v0[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v49 = v87;
              }

              ++v50;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v73 = v0[4];
              v0[11] = v73;
              if (v81 == v50)
              {

                v75 = swift_task_alloc();
                v0[12] = v75;
                *v75 = v0;
                v75[1] = sub_100324534;

                (sub_100322B34)(v73, v49, v86);
                return;
              }
            }
          }

          goto LABEL_19;
        }
      }

      goto LABEL_19;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }
  }

LABEL_24:
  v40 = v0[1];

  v40(0);
}

uint64_t sub_100324534(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_1003248AC;
  }

  else
  {
    v10 = v6[11];

    v6[14] = a2;
    v6[15] = a1;
    v9 = sub_100324670;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100324670()
{
  v1 = v0[10];

  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[8];
  v11 = objc_allocWithZone(_PSSuggestion);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithBundleID:v7 conversationIdentifier:0 groupName:0 recipients:v8.super.isa derivedIntentIdentifier:v9 image:0 reason:v12 reasonType:v13 score:0];

  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Final created suggestion: %@", v18, 0xCu);
    sub_10028924C(v19);
  }

  v21 = v0[1];

  return v21(v15);
}

uint64_t sub_1003248AC()
{
  v1 = v0[13];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;

    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get derived intent identifier: %@", v9, 0xCu);
    sub_10028924C(v10);
  }

  else
  {
    v12 = v0[13];
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v16 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100978808, _PSRecipient_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = v0[8];
  v19 = objc_allocWithZone(_PSSuggestion);
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 initWithBundleID:v16 conversationIdentifier:0 groupName:0 recipients:isa derivedIntentIdentifier:0 image:0 reason:v20 reasonType:v21 score:0];

  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "Final created suggestion: %@", v26, 0xCu);
    sub_10028924C(v27);
  }

  v29 = v0[1];

  return v29(v23);
}

unint64_t sub_100324BBC()
{
  result = qword_100978830;
  if (!qword_100978830)
  {
    sub_100280938(&qword_100978828, &qword_1007FBA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978830);
  }

  return result;
}

uint64_t sub_100324C20()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978850);
  v1 = sub_10000C4AC(v0, qword_100978850);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100324CE8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 objectForKey:v4];

  if (v5)
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
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v10, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100324DFC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 objectForKey:v4];

  if (v5)
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
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v10, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

uint64_t sub_100324F0C()
{
  *(v1 + 24) = v0;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v2 = static IDMSActor.shared;

  return _swift_task_switch(sub_100324FD4, v2, 0);
}

uint64_t sub_100324FD4()
{
  v1 = v0[3];
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = v0[3];
    sub_100325360();
    v3 = v0[3];
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v4 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [v4 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    v7 = *(v3 + 16);
    *(v3 + 16) = v6;
    v8 = v6;

    v9 = String._bridgeToObjectiveC()();

    v0[2] = 0;
    LODWORD(v7) = [v8 openAtPath:v9 error:v0 + 2];

    v10 = v0[2];
    if (v7)
    {
      v11 = qword_100973620;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100978850);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "IDMS store activated", v16, 2u);
      }

      v17 = 1;
    }

    else
    {
      v18 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_100978850);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create & open DB %@", v22, 0xCu);
        sub_100005508(v23, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }

      v17 = 0;
    }

    *(v1 + 32) = v17;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100325360()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v59 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v60 = v57 - v7;
  __chkstk_darwin(v6);
  v9 = v57 - v8;
  v10 = sub_10028088C(&qword_100978958, &qword_1007FBB38);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v57 - v16;
  v65 = *(v11 + 56);
  sub_10032A41C(v9);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v58 = v0;
  URL.appendingPathComponent(_:)();
  v20 = *(v2 + 8);
  v20(v9, v1);
  v57[2] = v18;
  v57[3] = v19;
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v20(v9, v1);
  v63 = v17;
  sub_10000FF90(v17, v15, &qword_100978958, &qword_1007FBB38);
  v21 = *(v11 + 56);
  v22 = URL.path.getter();
  v24 = v23;
  v20(&v15[v21], v1);
  v61 = v1;
  v62 = v20;
  v57[1] = v2 + 8;
  v20(v15, v1);
  v25 = [objc_opt_self() defaultManager];
  v65 = v24;
  v26 = String._bridgeToObjectiveC()();
  LOBYTE(v1) = [v25 fileExistsAtPath:v26];

  if (v1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100978850);
    v28 = v65;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v66 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10000C4E4(v22, v28, &v66);
      _os_log_impl(&_mh_execute_header, v29, v30, "DB present at path %s", v31, 0xCu);
      sub_10000C60C(v32);
    }

    goto LABEL_16;
  }

  v57[0] = v22;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_100978850);
  v34 = v65;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000C4E4(v57[0], v34, &v66);
    _os_log_impl(&_mh_execute_header, v35, v36, "DB not present at path %s", v37, 0xCu);
    sub_10000C60C(v38);
  }

  v39 = v64;
  v40 = [objc_opt_self() standardUserDefaults];
  v41 = *(v58 + 104);
  v42 = *(v58 + 112);
  v43 = String._bridgeToObjectiveC()();
  [v40 setObject:0 forKey:v43];

  v44 = v9;
  sub_10032A41C(v9);
  v45 = v60;
  URL.appendingPathComponent(_:)();
  v46 = v61;
  v47 = v62;
  v62(v44, v61);
  URL.appendingPathComponent(_:)();
  v48 = v59;
  URL.appendingPathExtension(_:)();
  v47(v44, v46);
  v47(v48, v46);
  sub_10032AAF0(v45);
  if (v39)
  {

    v62(v45, v61);
    v22 = v57[0];
LABEL_17:
    sub_100005508(v63, &qword_100978958, &qword_1007FBB38);
    return v22;
  }

  v62(v45, v61);
  v29 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
  v22 = v57[0];
  v49 = String._bridgeToObjectiveC()();
  v66 = 0;
  v50 = [v29 startAtPath:v49 error:&v66];

  v51 = v66;
  if ((v50 & 1) == 0 || (v66 = 0, v52 = v51, v53 = [v29 finishAndReturnError:&v66], v51 = v66, !v53))
  {
    v55 = v51;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_16:

    goto LABEL_17;
  }

  v54 = v66;
  sub_100005508(v63, &qword_100978958, &qword_1007FBB38);

  return v22;
}

uint64_t sub_100325AD0(uint64_t a1, void *a2)
{
  if (*(v2 + 32) != 1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100978850);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_14;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Store not loaded", v15, 2u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v5 = *(v2 + 80);

  v6 = sub_100569230(a1, a2, v5);

  if ((v6 & 1) == 0)
  {
    v16 = *(v2 + 16);
    v30[1] = 0xE800000000000000;
    v17 = v16;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v30[0] = 0;
    v20 = [v17 valueForKey:v19 valueType:swift_getObjCClassFromMetadata() error:v30];

    if (v30[0])
    {
      v30[0];

      swift_willThrow();
      return v11 & 1;
    }

    if (v20)
    {

      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_100978850);

      v8 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v8, v23))
      {
        goto LABEL_8;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000C4E4(a1, a2, v30);
      _os_log_impl(&_mh_execute_header, v8, v23, "Found entry for altDSID %s", v24, 0xCu);
      sub_10000C60C(v25);

      goto LABEL_7;
    }

    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100978850);

    v13 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v13, v27))
    {
LABEL_14:

      v11 = 0;
      return v11 & 1;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000C4E4(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v13, v27, "No handle found for: %s", v28, 0xCu);
    sub_10000C60C(v29);

LABEL_13:

    goto LABEL_14;
  }

  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100978850);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_8;
  }

  v10 = swift_slowAlloc();
  *v10 = 0;
  _os_log_impl(&_mh_execute_header, v8, v9, "Found match in staged entries", v10, 2u);
LABEL_7:

LABEL_8:

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_100325FFC(uint64_t a1, void *a2)
{
  if (*(v2 + 32) != 1)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100978850);
    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, v16, "Store not loaded", v17, 2u);
    }

    goto LABEL_12;
  }

  v5 = *(v2 + 16);
  v31[1] = 0xE800000000000000;
  v6 = v5;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v31[0] = 0;
  v9 = [v6 valueForKey:v8 valueType:swift_getObjCClassFromMetadata() error:v31];

  if (v31[0])
  {
    v10 = v31[0];

    swift_willThrow();
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100978850);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to query db", v14, 2u);
    }

LABEL_12:
    return 0;
  }

  if (!v9)
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100978850);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10000C4E4(a1, a2, v31);
      _os_log_impl(&_mh_execute_header, v27, v28, "No local altDSID found for: %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    return 0;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100978850);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_10000C4E4(v19, v21, v31);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10000C4E4(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v23, v24, "Found local altDSID %s for handle %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  return v19;
}

uint64_t sub_10032653C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 32) == 1)
  {
    v7 = *(v3 + 16);
    v34[1] = 0xE600000000000000;
    v8 = v7;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    String.append(_:)(v9);
    v10 = String._bridgeToObjectiveC()();

    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v34[0] = 0;
    v11 = [v8 valueForKey:v10 valueType:swift_getObjCClassFromMetadata() error:v34];

    if (v34[0])
    {
      v12 = v34[0];

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100978850);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to query db", v16, 2u);
      }
    }

    else
    {
      if (v11)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[0] = 0;
        v26 = sub_10032A938(v24, v25);

        if (v26)
        {
          Date.init(timeIntervalSince1970:)();

          v27 = type metadata accessor for Date();
          return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
        }
      }

      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_100978850);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_10000C4E4(a1, a2, v34);
        _os_log_impl(&_mh_execute_header, v29, v30, "No retry date found for: %s", v31, 0xCu);
        sub_10000C60C(v32);
      }
    }

    v33 = type metadata accessor for Date();
    return (*(*(v33 - 8) + 56))(a3, 1, 1, v33);
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100978850);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Store not loaded", v20, 2u);
    }

    v21 = type metadata accessor for Date();
    v22 = *(*(v21 - 8) + 56);

    return v22(a3, 1, 1, v21);
  }
}

uint64_t sub_100326A50(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v36 = a3;
  v37 = a4;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[3];
  sub_100325FFC(v17, v18);
  if (v20)
  {

    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100978850);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000C4E4(v17, v18, &v38);
      _os_log_impl(&_mh_execute_header, v22, v23, v36, v24, 0xCu);
      sub_10000C60C(v25);
    }

    v26 = 0;
  }

  else
  {
    v27 = v37;
    sub_10032653C(v17, v18, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
      v26 = 1;
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000C4AC(v28, qword_100978850);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, v27, v31, 2u);
      }

      static Date.now.getter();
      sub_10032B348(&qword_10097E910, &type metadata accessor for Date);
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *(v10 + 8);
      v33(v14, v9);
      v33(v16, v9);
      v26 = v32 ^ 1;
    }
  }

  return v26 & 1;
}

void *sub_100326E88()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *v0;
    v2 = swift_allocObject();
    *(v2 + 16) = &_swiftEmptySetSingleton;
    v3 = swift_allocObject();
    *(v3 + 16) = &_swiftEmptySetSingleton;
    v4 = v0[2];
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v3;
    v6[4] = v1;
    aBlock[4] = sub_10032B410;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032765C;
    aBlock[3] = &unk_1008DBE90;
    v7 = _Block_copy(aBlock);
    v8 = v4;

    aBlock[0] = 0;
    v9 = [v8 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v7];
    _Block_release(v7);

    if (v9)
    {
      v10 = aBlock[0];
    }

    else
    {
      v16 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_100978850);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to query retry handles", v20, 2u);
      }
    }

    swift_beginAccess();
    v15 = *(v2 + 16);
    swift_beginAccess();
    v21 = *(v3 + 16);
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100978850);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Store not loaded", v14, 2u);
    }

    return &_swiftEmptySetSingleton;
  }

  return v15;
}

uint64_t sub_100327270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a5;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19._countAndFlagsBits = 0x2D7972746572;
  v19._object = 0xE600000000000000;
  if (!String.hasPrefix(_:)(v19))
  {
  }

  v31[2] = 0;
  v20 = sub_10032A938(v16, v18);

  if (!v20)
  {
  }

  v21 = String.count.getter();
  sub_10032AA40(v21, v13, v15);

  v22 = static String._fromSubstring(_:)();
  v24 = v23;

  Date.init(timeIntervalSince1970:)();
  static Date.now.getter();
  sub_10032B348(&qword_10097E910, &type metadata accessor for Date);
  v25 = dispatch thunk of static Comparable.< infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v10, v5);
  if (v25)
  {
    v26(v12, v5);
  }

  sub_1000276B4(0, &qword_100978820, NSPredicate_ptr);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007F5670;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100026764();
  *(v28 + 32) = 0xD000000000000029;
  *(v28 + 40) = 0x800000010078C260;
  v29 = NSPredicate.init(format:_:)();
  v30 = String._bridgeToObjectiveC()();
  [v29 evaluateWithObject:v30];

  swift_beginAccess();
  sub_10046DAAC(&v32, v22, v24);
  swift_endAccess();

  return (v26)(v12, v5);
}

void sub_10032765C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(v10, v9, a4);
}

uint64_t sub_1003276F0()
{
  v1[25] = v0;
  v1[26] = *v0;
  v2 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v1[27] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[30] = v4;
  v5 = *(v4 - 8);
  v1[31] = v5;
  v6 = *(v5 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v7 = static IDMSActor.shared;
  v1[35] = static IDMSActor.shared;

  return _swift_task_switch(sub_1003278A0, v7, 0);
}

uint64_t sub_1003278A0()
{
  v1 = v0[25];
  swift_beginAccess();
  if (*(*(v1 + 56) + 16))
  {
    v2 = swift_task_alloc();
    v0[36] = v2;
    *v2 = v0;
    v2[1] = sub_100327AC8;
    v3 = v0[25];

    return sub_100324F0C();
  }

  else
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100978850);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No staged changes - skipping store", v8, 2u);
    }

    v10 = v0[33];
    v9 = v0[34];
    v11 = v0[32];
    v13 = v0[28];
    v12 = v0[29];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100327AC8()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_100327C04, v2, 0);
}

uint64_t sub_100327C04()
{
  v177 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[25];
  sub_10032A41C(v3);
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  URL.appendingPathComponent(_:)();
  v9 = *(v4 + 8);
  v9(v3, v5);
  URL.appendingPathComponent(_:)();
  v9(v1, v5);
  URL.appendingPathExtension(_:)();
  v9(v3, v5);
  URL.path.getter();
  v9(v2, v5);
  if (qword_100973620 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100978850);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Starting store operation", v13, 2u);
    }

    v14 = v170;
    v15 = v170[25];

    v16 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
    v17 = *(v15 + 24);
    *(v15 + 24) = v16;

    v18 = *(v15 + 24);
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    v170[20] = 0;
    v21 = [v19 startAtPath:v20 error:v170 + 20];

    v22 = v170[20];
    if (!v21)
    {
      break;
    }

    v23 = v22;
LABEL_7:
    v24 = *(v170[25] + 56);
    v165 = v15;
    v25 = -1;
    v26 = -1 << *(v24 + 32);
    if (-v26 < 64)
    {
      v25 = ~(-1 << -v26);
    }

    v27 = v25 & *(v24 + 64);
    v28 = (63 - v26) >> 6;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    v30 = _swiftEmptyArrayStorage;
    if (!v27)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = (*(v24 + 56) + 48 * (v31 | (v29 << 6)));
        v33 = v32[1];
        if (v33)
        {
          break;
        }

        if (!v27)
        {
          goto LABEL_12;
        }
      }

      v35 = v32[5];
      v167 = v32[4];
      v36 = v32[3];
      v160 = v32[2];
      v162 = *v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10028E93C(0, *(v30 + 2) + 1, 1, v30);
      }

      v37 = v30;
      v38 = *(v30 + 2);
      v39 = v37;
      v40 = *(v37 + 3);
      if (v38 >= v40 >> 1)
      {
        v39 = sub_10028E93C((v40 > 1), v38 + 1, 1, v39);
      }

      *(v39 + 2) = v38 + 1;
      v41 = &v39[48 * v38];
      v30 = v39;
      *(v41 + 4) = v162;
      *(v41 + 5) = v33;
      *(v41 + 6) = v160;
      *(v41 + 7) = v36;
      *(v41 + 8) = v167;
      *(v41 + 9) = v35;
    }

    while (v27);
    while (1)
    {
LABEL_12:
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      if (v34 >= v28)
      {
        break;
      }

      v27 = *(v24 + 64 + 8 * v34);
      ++v29;
      if (v27)
      {
        v29 = v34;
        goto LABEL_10;
      }
    }

    v42 = *(v30 + 2);
    if (v42)
    {
      v43 = 0;
      v44 = (v30 + 40);
      v45 = _swiftEmptyArrayStorage;
      while (v43 < *(v30 + 2))
      {
        v47 = *(v44 - 1);
        v46 = *v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_10028E1C8(0, *(v45 + 2) + 1, 1, v45);
        }

        v49 = *(v45 + 2);
        v48 = *(v45 + 3);
        if (v49 >= v48 >> 1)
        {
          v45 = sub_10028E1C8((v48 > 1), v49 + 1, 1, v45);
        }

        ++v43;
        *(v45 + 2) = v49 + 1;
        v50 = &v45[16 * v49];
        *(v50 + 4) = v47;
        *(v50 + 5) = v46;
        v44 += 6;
        if (v42 == v43)
        {
          goto LABEL_32;
        }
      }

LABEL_86:
      __break(1u);
    }

    else
    {
      v45 = _swiftEmptyArrayStorage;
LABEL_32:
      v168 = v30;
      v14 = v170;
      v51 = v170[25];
      v52 = sub_100292D28(v45);

      if (*(v51 + 64))
      {

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Drop all requested - not re-adding existing entries", v55, 2u);
        }
      }

      else
      {
        v59 = v170[26];
        v60 = v170[25];
        v61 = swift_allocObject();
        *(v61 + 16) = 0;
        v62 = swift_allocObject();
        *(v62 + 16) = 0;
        *(v62 + 24) = 256;
        v63 = *(v60 + 16);
        sub_1000276B4(0, &qword_100974E28, NSString_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v65 = swift_allocObject();
        v65[2] = v60;
        v65[3] = v61;
        v65[4] = v62;
        v65[5] = v52;
        v65[6] = v59;
        v170[6] = sub_10032AA30;
        v170[7] = v65;
        v170[2] = _NSConcreteStackBlock;
        v170[3] = 1107296256;
        v170[4] = sub_10032765C;
        v170[5] = &unk_1008DBE18;
        v66 = _Block_copy(v170 + 2);
        v67 = v170[7];
        v68 = v63;
        v14 = v170;

        v170[21] = 0;
        LODWORD(v67) = [v68 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:v170 + 21 handler:v66];
        _Block_release(v66);

        v69 = v170[21];
        if (!v67)
        {
          v116 = v69;

          _convertNSErrorToError(_:)();

LABEL_75:
          swift_willThrow();

          goto LABEL_76;
        }

        swift_beginAccess();
        if (*(v62 + 25) != 1)
        {
          v139 = *(v62 + 24);
          v140 = *(v62 + 16);
          v141 = v69;

          sub_10032B0C0();
          swift_allocError();
          *v142 = v140;
          *(v142 + 8) = v139 & 1;
          goto LABEL_75;
        }

        v70 = v69;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 134217984;
          swift_beginAccess();
          *(v73 + 4) = *(v61 + 16);

          _os_log_impl(&_mh_execute_header, v71, v72, "Added %ld existing entries", v73, 0xCu);
        }

        else
        {
        }
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = *(v168 + 2);

        _os_log_impl(&_mh_execute_header, v56, v57, "Adding %ld new entries", v58, 0xCu);

        if (v42)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (v42)
        {
LABEL_44:
          v74 = 0;
          v75 = v168;
          v76 = (v168 + 72);
          while (v74 < *(v75 + 2))
          {
            v77 = v14[25];
            v78 = *(v76 - 1);
            v79 = *v76;
            v80 = *(v76 - 3);
            v81 = *(v76 - 2);
            v82 = *(v76 - 4);
            v171 = *(v76 - 5);
            v172 = v82;
            v173 = v80;
            v174 = v81;
            v175 = v78;
            v176 = v79;

            sub_10032AE5C(&v171, v77);

            ++v74;
            v76 += 6;
            v75 = v168;
            v14 = v170;
            if (v42 == v74)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_88;
        }
      }

LABEL_47:
      v164 = v14[29];
      v157 = v14[28];
      aBlock = v14[27];
      v83 = v14[25];

      swift_beginAccess();
      v84 = *(v83 + 72);
      v85 = v84 + 64;
      v86 = -1;
      v87 = -1 << *(v84 + 32);
      if (-v87 < 64)
      {
        v86 = ~(-1 << -v87);
      }

      v88 = v86 & *(v84 + 64);
      v89 = (63 - v87) >> 6;
      v169 = v84;
      swift_bridgeObjectRetain_n();
      v90 = 0;
      v158 = v89;
      v159 = v85;
      while (v88)
      {
LABEL_57:
        v92 = v14[29];
        v93 = __clz(__rbit64(v88)) | (v90 << 6);
        v94 = *(v169 + 56);
        v95 = (*(v169 + 48) + 16 * v93);
        v97 = *v95;
        v96 = v95[1];
        v98 = type metadata accessor for Date();
        v99 = *(v98 - 8);
        v100 = v94 + *(v99 + 72) * v93;
        v101 = v98;
        (*(v99 + 16))(v92 + aBlock[12], v100);
        *v92 = v97;
        *(v164 + 8) = v96;
        v102 = *(v165 + 24);
        if (v102)
        {
          v103 = v14[28];
          v161 = v14[29];
          v171 = 0x2D7972746572;
          v172 = 0xE600000000000000;

          v163 = v102;
          v104._countAndFlagsBits = v97;
          v104._object = v96;
          String.append(_:)(v104);
          v105 = String._bridgeToObjectiveC()();

          sub_10000FF90(v161, v103, &qword_1009750E8, &qword_1007FBB20);
          v106 = *(v157 + 8);

          v107 = aBlock[12];
          Date.timeIntervalSince1970.getter();
          (*(v99 + 8))(v103 + v107, v101);
          Double.description.getter();
          v108 = String._bridgeToObjectiveC()();

          v14[22] = 0;
          LOBYTE(v107) = [v163 addKey:v105 value:v108 error:v14 + 22];

          v109 = v14[22];
          if ((v107 & 1) == 0)
          {
            v155 = v14[29];
            v156 = v109;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_100005508(v155, &qword_1009750E8, &qword_1007FBB20);

            goto LABEL_76;
          }

          v110 = v109;
        }

        else
        {
        }

        v85 = v159;
        v88 &= v88 - 1;
        sub_100005508(v14[29], &qword_1009750E8, &qword_1007FBB20);
        v89 = v158;
      }

      while (1)
      {
        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        if (v91 >= v89)
        {

          v111 = *(v165 + 24);
          if (v111)
          {
            v14[23] = 0;
            v112 = [v111 finishAndReturnError:v14 + 23];
            v22 = v14[23];
            if (!v112)
            {
              goto LABEL_63;
            }

            v113 = *(v165 + 24);
            v114 = v22;
          }

          else
          {
            v113 = 0;
          }

          *(v165 + 24) = 0;

          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&_mh_execute_header, v117, v118, "Store successful", v119, 2u);
          }

          v120 = v14[25];

          [*(v120 + 16) close];
          sub_1000276B4(0, &qword_100974E28, NSString_ptr);
          v121 = objc_allocWithZone(CUKeyValueStoreReader);
          v122 = swift_getObjCClassFromMetadata();
          v123 = [v121 initWithKeyType:v122 valueType:v122];
          v124 = *(v120 + 16);
          *(v120 + 16) = v123;
          v125 = v123;

          v126 = String._bridgeToObjectiveC()();

          v14[24] = 0;
          LODWORD(v120) = [v125 openAtPath:v126 error:v14 + 24];

          v127 = v14[24];
          if (v120)
          {
            v128 = v127;
          }

          else
          {
            v129 = v127;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              *v132 = 0;
              _os_log_impl(&_mh_execute_header, v130, v131, "Failed to re-open reader", v132, 2u);
            }
          }

          sub_100328CEC(v14[25]);
          v134 = v14[33];
          v133 = v14[34];
          v135 = v14[32];
          v137 = v14[28];
          v136 = v14[29];

          v138 = v14[1];
          goto LABEL_79;
        }

        v88 = *(v85 + 8 * v91);
        ++v90;
        if (v88)
        {
          v90 = v91;
          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

LABEL_63:
  v115 = v22;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_76:
  swift_errorRetain();
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *v145 = 138412290;
    swift_errorRetain();
    v147 = _swift_stdlib_bridgeErrorToNSError();
    *(v145 + 4) = v147;
    *v146 = v147;
    _os_log_impl(&_mh_execute_header, v143, v144, "Failed to store entries %@", v145, 0xCu);
    sub_100005508(v146, &qword_100975400, &qword_1007F65D0);
  }

  v149 = v14[33];
  v148 = v14[34];
  v150 = v170[32];
  v151 = v170[29];
  v152 = v170[28];
  v153 = v170[25];

  swift_willThrow();
  sub_100328CEC(v153);

  v138 = v170[1];
LABEL_79:

  return v138();
}

uint64_t sub_100328CEC(uint64_t a1)
{
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100978850);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all staged state", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(a1 + 56);
  *(a1 + 56) = &_swiftEmptyDictionarySingleton;

  *(a1 + 64) = 0;
  swift_beginAccess();
  v7 = *(a1 + 80);
  *(a1 + 80) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v8 = *(a1 + 72);
  *(a1 + 72) = &_swiftEmptyDictionarySingleton;
}

void sub_100328E44(uint64_t a1, NSObject *a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a3;
  v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v86 - v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v90 = a2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20._countAndFlagsBits = 0x2D4449656C707061;
  v20._object = 0xE800000000000000;
  if (!String.hasPrefix(_:)(v20))
  {

LABEL_13:
    v42._countAndFlagsBits = 0x2D7972746572;
    v42._object = 0xE600000000000000;
    if (!String.hasPrefix(_:)(v42))
    {

      return;
    }

    v88 = a6;
    v43 = String.count.getter();
    sub_10032AA40(v43, v17, v19);

    v44 = static String._fromSubstring(_:)();
    v46 = v45;

    if (sub_100569230(v44, v46, a7))
    {

      if (qword_100973620 == -1)
      {
LABEL_16:
        v47 = type metadata accessor for Logger();
        sub_10000C4AC(v47, qword_100978850);
        v90 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v90, v48, "Removing retry handle, matching add entry found", v49, 2u);
        }

        v50 = v90;

        return;
      }

LABEL_60:
      swift_once();
      goto LABEL_16;
    }

    swift_beginAccess();
    v51 = a4[9];
    if (*(v51 + 16) && (v52 = sub_100012854(v44, v46), (v53 & 1) != 0))
    {
      v54 = v52;
      v55 = *(v51 + 56);
      v56 = type metadata accessor for Date();
      v57 = *(v56 - 8);
      (*(v57 + 16))(v16, v55 + *(v57 + 72) * v54, v56);
      (*(v57 + 56))(v16, 0, 1, v56);
    }

    else
    {
      v56 = type metadata accessor for Date();
      (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
    }

    swift_endAccess();

    type metadata accessor for Date();
    v59 = (*(*(v56 - 8) + 48))(v16, 1, v56);
    sub_100005508(v16, &qword_10097A7F0, &unk_1007FB600);
    if (v59 == 1)
    {
      swift_beginAccess();
      v60 = *(a5 + 16);
      v30 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (!v30)
      {
        *(a5 + 16) = v61;
        v62 = a4[3];
        if (v62)
        {
          v92 = 0;
          v63 = [v62 addKey:a1 value:v90 error:&v92];
          v64 = v92;
          if (!v63)
          {
            v90 = v92;
            v83 = v92;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_100973620 != -1)
            {
              swift_once();
            }

            v84 = type metadata accessor for Logger();
            sub_10000C4AC(v84, qword_100978850);
            swift_errorRetain();
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v67, v68))
            {
              goto LABEL_43;
            }

            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *v69 = 138412290;
            swift_errorRetain();
            v85 = _swift_stdlib_bridgeErrorToNSError();
            *(v69 + 4) = v85;
            *v70 = v85;
            v72 = "Retry entry write error %@";
            goto LABEL_42;
          }

          v65 = v64;
        }

        return;
      }

      __break(1u);
    }

    else if (qword_100973620 == -1)
    {
LABEL_45:
      v74 = type metadata accessor for Logger();
      sub_10000C4AC(v74, qword_100978850);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v75, v76))
      {
LABEL_52:

        return;
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Removing previous retry entry", v77, 2u);
LABEL_51:

      goto LABEL_52;
    }

    swift_once();
    goto LABEL_45;
  }

  sub_10032B114(&v95);
  v21 = v96;
  if (!v96)
  {
    goto LABEL_13;
  }

  v88 = a6;
  v22 = v95;
  v23 = v97;
  v24 = v98;
  v25 = v100;
  v87 = v99;

  swift_beginAccess();
  v26 = a4[7];
  if (*(v26 + 16))
  {
    v27 = sub_100012854(v87, v25);
    if ((v28 & 1) != 0 && !*(*(v26 + 56) + 48 * v27 + 8))
    {
      swift_endAccess();
      if (qword_100973620 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_10000C4AC(v78, qword_100978850);
      v92 = v22;
      v93 = v21;
      v94[0] = v23;
      v94[1] = v24;
      sub_10032B2EC(&v92, &v101);
      sub_10032B2EC(v94, &v101);

      v75 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      sub_10032B298(&v92);
      sub_10032B298(v94);

      if (!os_log_type_enabled(v75, v79))
      {

        sub_10032B298(&v92);
        v58 = v94;
        goto LABEL_28;
      }

      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v101 = v81;
      *v80 = 136315138;

      sub_10032B298(&v92);
      sub_10032B298(v94);

      v82 = sub_10000C4E4(v87, v25, &v101);

      *(v80 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v79, "ContactID %s staged for deletion - removing entry from DB", v80, 0xCu);
      sub_10000C60C(v81);

      goto LABEL_51;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v29 = *(a5 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(a5 + 16) = v31;
  v32 = a4[3];
  if (!v32)
  {
    goto LABEL_27;
  }

  v92 = 0;
  if (![v32 addKey:a1 value:v90 error:&v92])
  {
    v91[0] = v22;
    v91[1] = v21;
    v41 = v92;
    sub_10032B298(v91);
    v101 = v23;
    v102 = v24;
    sub_10032B298(&v101);

    goto LABEL_38;
  }

  v33 = a4[3];
  v34 = v92;
  if (!v33)
  {
LABEL_27:
    v101 = v22;
    v102 = v21;
    sub_10032B298(&v101);
    v92 = v23;
    v93 = v24;
    v58 = &v92;
LABEL_28:
    sub_10032B298(v58);

    return;
  }

  v92 = 0x2D44495344746C61;
  v93 = 0xE800000000000000;
  v35 = v33;
  v36._countAndFlagsBits = v23;
  v36._object = v24;
  String.append(_:)(v36);
  v37 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();
  v92 = 0;
  v39 = [v35 addKey:v37 value:v38 error:&v92];
  v101 = v22;
  v102 = v21;
  sub_10032B298(&v101);

  v40 = v92;
  if ((v39 & 1) == 0)
  {
    v41 = v40;
LABEL_38:
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000C4AC(v66, qword_100978850);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_43;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412290;
    swift_errorRetain();
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 4) = v71;
    *v70 = v71;
    v72 = "Main entry write error %@";
LABEL_42:
    _os_log_impl(&_mh_execute_header, v67, v68, v72, v69, 0xCu);
    sub_100005508(v70, &qword_100975400, &qword_1007F65D0);

LABEL_43:

    *v89 = 1;

    v73 = v88;
    swift_beginAccess();
    *(v73 + 16) = 0;
    *(v73 + 24) = 1;
  }
}

uint64_t sub_1003299F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v6 = static IDMSActor.shared;

  return _swift_task_switch(sub_100329A94, v6, 0);
}

uint64_t sub_100329A94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_opt_self();
  sub_1002A9924(v1, v2);
  v4 = [v3 standardUserDefaults];
  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v7 = v0[2];
    v6 = v0[3];
    sub_100294008(v7, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10028BCC0(v7, v6);
  }

  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[2];
  v10 = v0[3];
  v12 = *(v8 + 104);
  v13 = *(v8 + 112);
  v14 = String._bridgeToObjectiveC()();
  [v4 setObject:isa forKey:v14];

  swift_unknownObjectRelease();
  sub_10028BCC0(v11, v10);
  v15 = [v3 standardUserDefaults];
  if (v9)
  {
    v16 = v0[4];
    v17 = v0[5];
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[6];
  v20 = *(v19 + 88);
  v21 = *(v19 + 96);
  v22 = String._bridgeToObjectiveC()();
  [v15 setObject:v18 forKey:v22];

  swift_unknownObjectRelease();
  v23 = v0[1];

  return v23();
}

uint64_t sub_100329C34()
{
  v1[3] = v0;
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v5 = static IDMSActor.shared;

  return _swift_task_switch(sub_100329D70, v5, 0);
}

uint64_t sub_100329D70()
{
  v1 = v0[3];
  if (*(v1 + 32) == 1)
  {
    [*(v1 + 16) close];
  }

  v37 = v1;
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100978850);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Destroy called", v5, 2u);
  }

  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  sub_10032A41C(v8);
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);
  URL.appendingPathComponent(_:)();
  v14 = *(v9 + 8);
  v14(v8, v10);
  URL.appendingPathComponent(_:)();
  v14(v6, v10);
  URL.appendingPathExtension(_:)();
  v14(v8, v10);
  URL.path.getter();
  v14(v7, v10);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = String._bridgeToObjectiveC()();
  LODWORD(v12) = [v16 fileExistsAtPath:v17];

  if (!v12)
  {

    goto LABEL_11;
  }

  v18 = [v15 defaultManager];
  v19 = String._bridgeToObjectiveC()();

  v0[2] = 0;
  v20 = [v18 removeItemAtPath:v19 error:v0 + 2];

  v21 = v0[2];
  if (v20)
  {
    v22 = v21;
LABEL_11:
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    v26 = v0[3];
    *(v37 + 32) = 0;
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = *(v26 + 104);
    v29 = *(v26 + 112);
    v30 = String._bridgeToObjectiveC()();
    [v27 setObject:0 forKey:v30];

    v31 = v0[1];
    goto LABEL_13;
  }

  v33 = v0[7];
  v32 = v0[8];
  v34 = v0[6];
  v35 = v21;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v31 = v0[1];
LABEL_13:

  return v31();
}

uint64_t sub_10032A164()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return v0;
}

uint64_t sub_10032A1BC()
{
  sub_10032A164();

  return swift_deallocClassInstance();
}

uint64_t sub_10032A214(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10032A22C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10032A240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10032A290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_10032A2EC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10032A32C()
{
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v1 = objc_allocWithZone(CUKeyValueStoreReader);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 16) = [v1 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  strcpy((v0 + 40), "AirDropIDMSDB");
  *(v0 + 54) = -4864;
  *(v0 + 56) = &_swiftEmptyDictionarySingleton;
  *(v0 + 64) = 0;
  *(v0 + 72) = &_swiftEmptyDictionarySingleton;
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0xD000000000000022;
  *(v0 + 96) = 0x800000010078C200;
  *(v0 + 104) = 0xD000000000000028;
  *(v0 + 112) = 0x800000010078C230;
  return v0;
}

id sub_10032A41C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  sub_1000276B4(0, &qword_100978950, NSFileManager_ptr);
  sub_1002EFD6C(v5);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  if (qword_100973620 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100978850);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Protected container URL missing", v11, 2u);
  }

  result = sub_1001F149C();
  if (result)
  {
    v13 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032A640(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100978978, &qword_1007FBC00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10032B828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10032A7E0()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x49746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_10032A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10032B4C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10032A864(uint64_t a1)
{
  v2 = sub_10032B828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032A8A0(uint64_t a1)
{
  v2 = sub_10032B828();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10032A8DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10032B5DC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_10032A938(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_10032AA40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10032AAF0(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v29 = v12;
  v11(v10, a1);
  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  sub_10028088C(&qword_100978960, &unk_1007FBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v18;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v19 = NSFileProtectionKey;
  v20 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100281848(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009746C0, &qword_1007F65A0);
  type metadata accessor for FileAttributeKey(0);
  sub_10032B348(&qword_100974750, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = 0;
  v22 = [v13 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:isa error:&v30];

  if (v22)
  {
    v23 = v30;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    (*(v27 + 8))(v5, v28);
  }

  else
  {
    v24 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v7 + 8))(v10, v29);
}

uint64_t *sub_10032AE5C(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result[2];
    v5 = result[3];
    v7 = result[4];
    v6 = result[5];
    v9 = *result;
    v8 = result[1];
    v10 = v2;
    v11._countAndFlagsBits = v9;
    v11._object = v8;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    v28 = v8;

    v13._countAndFlagsBits = 124;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v4;
    v14._object = v5;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 124;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v7;
    v16._object = v26;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();

    v27 = 0;
    LODWORD(v9) = [v10 addKey:v12 value:v17 error:&v27];

    v18 = v27;
    if (!v9)
    {
      goto LABEL_6;
    }

    v19 = *(a2 + 24);
    result = v27;
    if (!v19)
    {
      return result;
    }

    v27 = 0x2D44495344746C61;
    v28 = 0xE800000000000000;
    v20 = v19;
    v21._countAndFlagsBits = v4;
    v21._object = v5;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();
    v27 = 0;
    v24 = [v20 addKey:v22 value:v23 error:&v27];

    v18 = v27;
    if (v24)
    {
      return v27;
    }

    else
    {
LABEL_6:
      v25 = v18;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10032B0C0()
{
  result = qword_10097A950;
  if (!qword_10097A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A950);
  }

  return result;
}

uint64_t sub_10032B114@<X0>(uint64_t *a1@<X8>)
{
  sub_10001229C();
  v2 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (v2[2] != 3)
  {

    v7 = 0;
    v9 = 0;
    v15 = 0;
    v17 = 0;
    v22 = 0;
    v24 = 0;
    goto LABEL_6;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  if (v2[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v11 = v2[8];
    v12 = v2[9];
    v13 = v2[10];
    v14 = v2[11];

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    if (v2[2] >= 3uLL)
    {
      v18 = v2[12];
      v19 = v2[13];
      v20 = v2[14];
      v21 = v2[15];

      v22 = static String._fromSubstring(_:)();
      v24 = v23;

LABEL_6:
      *a1 = v7;
      a1[1] = v9;
      a1[2] = v15;
      a1[3] = v17;
      a1[4] = v22;
      a1[5] = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032B348(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_10032B390@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10032B41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10032B464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10032B4C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
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

uint64_t sub_10032B5DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978968, &qword_1007FBBF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10032B828();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000C60C(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_10032B828()
{
  result = qword_100978970;
  if (!qword_100978970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978970);
  }

  return result;
}

unint64_t sub_10032B890()
{
  result = qword_100978980;
  if (!qword_100978980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978980);
  }

  return result;
}

unint64_t sub_10032B8E8()
{
  result = qword_100978988;
  if (!qword_100978988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978988);
  }

  return result;
}

unint64_t sub_10032B940()
{
  result = qword_100978990;
  if (!qword_100978990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978990);
  }

  return result;
}

id sub_10032B99C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v22, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v24 = *v9;
      v28 = v9[1];

      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v26 = v9;
    }

    else
    {
      sub_1003325DC(v22, v18, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_10032C0AC();
      v24 = UUID.uuidString.getter();
      (*(v11 + 8))(v14, v10);
      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v26 = v18;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1003325DC(v22, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v27 = &v5[*(v2 + 20)];
    v24 = UUID.uuidString.getter();
    v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v26 = v5;
LABEL_7:
    sub_10033257C(v26, v25);
    return v24;
  }

  v29 = *v22;
  result = [*v22 identifier];
  if (result)
  {
    v31 = result;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032BCF4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v17, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v23 = v5 + *(v2 + 20);
      UUID.uuidString.getter();
      v24 = String.utf8CString.getter();

      v25 = String.utf8CString.getter();
      v26 = String.utf8CString.getter();
      bonjour_service = nw_endpoint_create_bonjour_service((v24 + 32), (v25 + 32), (v26 + 32));

      sub_10028088C(&unk_100985A50, &qword_1007F8340);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007F5670;
      v28 = *v5;
      v29 = v5[1];
      *(v27 + 32) = *v5;
      *(v27 + 40) = v29;
      sub_100294008(v28, v29);
      isa = Array._bridgeToObjectiveC()().super.isa;

      nw_endpoint_set_public_keys();

      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v22 = v5;
      goto LABEL_9;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v17, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v31 = &v9[*(v6 + 20)];
      v32 = NWEndpoint.nw.getter();
      if (v32)
      {
        bonjour_service = v32;
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
        v22 = v9;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1003325DC(v17, v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v19 = NWEndpoint.nw.getter();
      if (v19)
      {
        bonjour_service = v19;
        v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v22 = v13;
LABEL_9:
        sub_10033257C(v22, v21);
        return bonjour_service;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10032C0AC()
{
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
  }

  nw_endpoint_get_service_identifier();
  swift_unknownObjectRelease();
  return UUID.init(uuid:)();
}

uint64_t sub_10032C154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {

      v28 = enum case for SFAirDrop.DeviceRelationship.classroom(_:);
      v29 = type metadata accessor for SFAirDrop.DeviceRelationship();
      return (*(*(v29 - 8) + 104))(a1, v28, v29);
    }

    sub_1003325DC(v19, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (v7[*(v4 + 36)] == 1)
    {
      v24 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
      v25 = type metadata accessor for SFAirDrop.DeviceRelationship();
      (*(*(v25 - 8) + 104))(a1, v24, v25);
    }

    else
    {
      v30 = *&v7[*(v4 + 28) + 8];
      v31 = type metadata accessor for SFAirDrop.DeviceRelationship();
      if (v30)
      {
        v32 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v32 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }

      (*(*(v31 - 8) + 104))(a1, *v32, v31);
    }

    v36 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v37 = v7;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v19, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v11[*(v8 + 52)] == 1)
    {
      v26 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
      v27 = type metadata accessor for SFAirDrop.DeviceRelationship();
      (*(*(v27 - 8) + 104))(a1, v26, v27);
    }

    else
    {
      v33 = *&v11[*(v8 + 44) + 8];
      v34 = type metadata accessor for SFAirDrop.DeviceRelationship();
      if (v33)
      {
        v35 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v35 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }

      (*(*(v34 - 8) + 104))(a1, *v35, v34);
    }

    v36 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v37 = v11;
  }

  else
  {
    sub_1003325DC(v19, v15, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C8E4() & 0x80000) != 0)
    {
      v23 = &enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);
    }

    else
    {
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        return result;
      }

      contact_id = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (contact_id)
      {
        String.init(cString:)();

        v23 = &enum case for SFAirDrop.DeviceRelationship.contact(_:);
      }

      else
      {
        v23 = &enum case for SFAirDrop.DeviceRelationship.stranger(_:);
      }
    }

    v38 = *v23;
    v39 = type metadata accessor for SFAirDrop.DeviceRelationship();
    (*(*(v39 - 8) + 104))(a1, v38, v39);
    v36 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v37 = v15;
  }

  return sub_10033257C(v37, v36);
}

uint64_t sub_10032C610()
{
  v0 = type metadata accessor for SFString();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      return 0;
    }

    v7 = String.init(cString:)();
    v9 = v8;
    if ((sub_10032C8E4() & 0x4000000000) != 0)
    {
      (*(v1 + 104))(v4, enum case for SFString.maybeContact(_:), v0);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1007F5670;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100026764();
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
      v7 = SFString.format(_:)();

      (*(v1 + 8))(v4, v0);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032C7EC()
{
  if ((sub_10032C8E4() & 0x4000000000) != 0 || (sub_10032C8E4() & 0x8000000000) != 0)
  {
    if ((sub_10032C8E4() & 0x4000000000) != 0 || (sub_10032C8E4() & 8) != 0)
    {
      return 1;
    }

    sub_10032C610();
    if (v0)
    {
      v1._countAndFlagsBits = 4408910;
      v1._object = 0xE300000000000000;
      v2 = String.hasPrefix(_:)(v1);

      return v2;
    }
  }

  return 0;
}

uint64_t sub_10032C8E4()
{
  v0 = sub_10028088C(&unk_100978CB0, &qword_1007FC088);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v32[-1] - v2;
  v4 = type metadata accessor for NWTXTRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWEndpoint.txtRecord.getter();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v3, v4);
    result = NWTXTRecord.subscript.getter();
    if (!v10)
    {
      (*(v5 + 8))(v8, v4);
      return 0;
    }

    v11 = v10;
    v12 = HIBYTE(v10) & 0xF;
    v13 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      (*(v5 + 8))(v8, v4);

      return 0;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      v33 = 0;
      v16 = sub_1003304CC(result, v11, 10);
      v29 = v30;
LABEL_69:
      (*(v5 + 8))(v8, v4);

      result = v16;
      if ((v29 & 1) == 0)
      {
        return result;
      }

      return 0;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v32[0] = result;
      v32[1] = v11 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v12)
        {
          if (--v12)
          {
            v16 = 0;
            v24 = v32 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                break;
              }

              v19 = __CFADD__(10 * v16, v25);
              v16 = 10 * v16 + v25;
              if (v19)
              {
                break;
              }

              ++v24;
              if (!--v12)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_78:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v12)
        {
          v16 = 0;
          v27 = v32;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = __CFADD__(10 * v16, v28);
            v16 = 10 * v16 + v28;
            if (v19)
            {
              break;
            }

            ++v27;
            if (!--v12)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v20 = v32 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = 10 * v16 >= v21;
            v16 = 10 * v16 - v21;
            if (!v19)
            {
              break;
            }

            ++v20;
            if (!--v12)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v15 = *result;
      if (v15 == 43)
      {
        if (v13 >= 1)
        {
          v12 = v13 - 1;
          if (v13 != 1)
          {
            v16 = 0;
            if (result)
            {
              v22 = (result + 1);
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  goto LABEL_67;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  goto LABEL_67;
                }

                v19 = __CFADD__(10 * v16, v23);
                v16 = 10 * v16 + v23;
                if (v19)
                {
                  goto LABEL_67;
                }

                ++v22;
                if (!--v12)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v15 != 45)
      {
        if (v13)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              v26 = *result - 48;
              if (v26 > 9)
              {
                goto LABEL_67;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                goto LABEL_67;
              }

              v19 = __CFADD__(10 * v16, v26);
              v16 = 10 * v16 + v26;
              if (v19)
              {
                goto LABEL_67;
              }

              ++result;
              if (!--v13)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_67:
        v16 = 0;
        LOBYTE(v12) = 1;
        goto LABEL_68;
      }

      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_67;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                goto LABEL_67;
              }

              v19 = 10 * v16 >= v18;
              v16 = 10 * v16 - v18;
              if (!v19)
              {
                goto LABEL_67;
              }

              ++v17;
              if (!--v12)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_59:
          LOBYTE(v12) = 0;
LABEL_68:
          v33 = v12;
          v29 = v12;
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_100005508(v3, &unk_100978CB0, &qword_1007FC088);
  return 0;
}

void sub_10032CD80()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032C0AC();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v1 + 8))(v4, v0);
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    String.init(cString:)();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_10032C610();
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_14;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    String.init(cString:)();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = sub_10032C8E4();
  Hasher._combine(_:)(v8);
  v9 = sub_10032C8E4();
  Hasher._combine(_:)(v9);
}

void sub_10032D050()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v4 = v0 + v3[6];
  if (v4[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  v6 = (v0 + v3[7]);
  if (v6[1])
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = (v0 + v3[8]);
  if (v8[1])
  {
    v9 = *v8;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = (v0 + v3[9]);
  if (v10[1])
  {
    v11 = *v10;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = (v0 + v3[10]);
  if (v12[1])
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = (v0 + v3[11]);
  if (v14[1])
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = (v0 + v3[12]);
  if (v16[1])
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + v3[13]));
  v18 = (v0 + v3[14]);
  if (v18[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v18;
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

uint64_t sub_10032D2B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_10032D2C8()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = (v1 + v4[7]);
  if (v6[1])
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v4[9]));
  return Hasher._finalize()();
}

void sub_10032D3D4()
{
  v1 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v25 = *v16;
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();

      return;
    }

    sub_1003325DC(v16, v4, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    Hasher._combine(_:)(2uLL);
    v20 = *v4;
    v21 = v4[1];
    Data.hash(into:)();
    v22 = v1[5];
    type metadata accessor for UUID();
    sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v23 = (v4 + v1[7]);
    if (v23[1])
    {
      v24 = *v23;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(*(v4 + v1[9]));
    v18 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v19 = v4;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v16, v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    Hasher._combine(_:)(1uLL);
    sub_10032D050();
    v18 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v19 = v8;
  }

  else
  {
    sub_1003325DC(v16, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    Hasher._combine(_:)(0);
    sub_10032CD80();
    v18 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v19 = v12;
  }

  sub_10033257C(v19, v18);
}

void sub_10032D728(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = (v4 + a2[7]);
  if (v8[1])
  {
    v9 = *v8;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v4 + a2[9]));
}

Swift::Int sub_10032D810(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_10032FAFC(&qword_100976170, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = (v4 + a2[7]);
  if (v8[1])
  {
    v9 = *v8;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v4 + a2[9]));
  return Hasher._finalize()();
}

uint64_t sub_10032D910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  result = UUID.uuidString.getter();
  *a2 = result;
  a2[1] = v6;
  return result;
}

Swift::Int sub_10032D95C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10032D9C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

id sub_10032DA04@<X0>(void *a1@<X8>)
{
  result = sub_10032B99C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10032E398()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003325DC(v13, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v16 = &v5[*(v2 + 36)];
      v15 = *v16;
      v17 = v16[1];

      sub_10033257C(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      sub_1003325DC(v13, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v15 = sub_10032C610();
      sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    return v15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    return 0;
  }

  v18 = *v13;
  result = [*v13 displayName];
  if (result)
  {
    v20 = result;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032E5E4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10033257C(v13, v17);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v13, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v18 = &v5[*(v2 + 32)];
    device_model = *v18;
    v19 = v18[1];

    v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v21 = v5;
LABEL_12:
    sub_10033257C(v21, v20);
    return device_model;
  }

  sub_1003325DC(v13, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_model = nw_endpoint_get_device_model();
    swift_unknownObjectRelease();
    if (device_model)
    {
      device_model = String.init(cString:)();
    }

    v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v21 = v9;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032E82C()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10033257C(v13, v17);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v13, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v18 = &v5[*(v2 + 28)];
    device_id = *v18;
    v19 = v18[1];

    v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v21 = v5;
LABEL_12:
    sub_10033257C(v21, v20);
    return device_id;
  }

  sub_1003325DC(v13, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      device_id = String.init(cString:)();
    }

    v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v21 = v9;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032EA74()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_10033257C(v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return 0;
    }

    sub_1003325DC(v17, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v21 = &v5[*(v2 + 28)];
    contact_id = *v21;
    v22 = v21[1];

    v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v24 = v5;
LABEL_11:
    sub_10033257C(v24, v23);
    return contact_id;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v17, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v25 = &v9[*(v6 + 44)];
    contact_id = *v25;
    v26 = v25[1];

    v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v24 = v9;
    goto LABEL_11;
  }

  sub_1003325DC(v17, v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      contact_id = String.init(cString:)();
    }

    v23 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v24 = v13;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032ED50()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v17, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v20 = v9[*(v6 + 40)];
      sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return v20;
    }

    sub_10033257C(v17, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v17, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v21 = &v5[*(v2 + 24)];
    v22 = *v21;
    v23 = v21[8];
    sub_10033257C(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if ((v23 & 1) == 0)
    {
      return (v22 >> 15) & 1;
    }

    return 0;
  }

  sub_1003325DC(v17, v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  v19 = sub_10032C8E4();
  sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  return (v19 >> 4) & 1;
}

uint64_t sub_10032F010()
{
  v26 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v1 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v31 = v0;
  sub_10032C154(&v26 - v14);
  v16 = v9[13];
  v16(v13, enum case for SFAirDrop.DeviceRelationship.contact(_:), v8);
  sub_10032FAFC(&unk_100978CF0, &type metadata accessor for SFAirDrop.DeviceRelationship);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = v9[1];
  v17(v13, v8);
  v17(v15, v8);
  if (v33 == v32)
  {
    v18 = 1;
  }

  else
  {
    sub_10032C154(v15);
    v16(v13, enum case for SFAirDrop.DeviceRelationship.sameAccount(_:), v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17(v13, v8);
    v17(v15, v8);
    v18 = v33 == v32;
  }

  sub_1002940CC(v31, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = v29;
      sub_1003325DC(v7, v29, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      if (v18)
      {
        v18 = 1;
      }

      else
      {
        v18 = *(v22 + *(v26 + 32));
      }

      v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v21 = v22;
      goto LABEL_15;
    }

    sub_10033257C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return 0;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v21 = v7;
LABEL_15:
      sub_10033257C(v21, v20);
      return v18;
    }

    v23 = v27;
    sub_1003325DC(v7, v27, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v24 = *(v23 + *(v28 + 40) + 8);

    sub_10033257C(v23, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v24)
    {
    }

    else if ((v18 & 1) == 0)
    {
      return 0;
    }

    return 1;
  }
}

uint64_t SDAirDropFlags.hashValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032F4CC()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

void sub_10032F508()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SDAirDropFlags.hash(into:)(v1);
}

uint64_t sub_10032F594()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10032F648()
{
  type metadata accessor for NWEndpoint();
  if (v0 <= 0x3F)
  {
    sub_10032F750();
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10032F750()
{
  if (!qword_100978AA0)
  {
    type metadata accessor for SDAirDropFlags(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100978AA0);
    }
  }
}

void sub_10032F7C8()
{
  sub_10032F8B8(319, &qword_100978B90, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if (v0 <= 0x3F)
  {
    sub_10032F8B8(319, &qword_100978B98, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v1 <= 0x3F)
    {
      sub_10032F8B8(319, &qword_100978BA0, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      if (v2 <= 0x3F)
      {
        sub_10032F924();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10032F8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

ValueMetadata *sub_10032F924()
{
  result = qword_100978BA8;
  if (!qword_100978BA8)
  {
    result = &_s17ClassroomEndpointVN;
    atomic_store(&_s17ClassroomEndpointVN, &qword_100978BA8);
  }

  return result;
}

void sub_10032F97C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10032FA44();
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10032FA44()
{
  result = qword_100978C40;
  if (!qword_100978C40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100978C40);
  }

  return result;
}

uint64_t sub_10032FAFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10032FC64(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002940CC(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1003325DC(v11, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v16 = &v7[*(v4 + 20)];
      UUID.uuidString.getter();
      sub_10033257C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    }

    else
    {
      v17 = *v11;
      v18 = [*v11 identifier];
      if (v18)
      {
        v19 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10033257C(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    }

    else
    {
      sub_10033257C(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v13 = [a2 idSelfIdentity];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 idsDeviceID];

        if (v15)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          return;
        }
      }
    }

    sub_100469844();
  }
}

uint64_t sub_10032FEAC()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return 3;
    }

    else
    {
      sub_10033257C(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1003325DC(v13, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v17 = &v5[*(v2 + 24)];
    v18 = *v17;
    v19 = v17[8];
    sub_10033257C(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v19 & 1 | ((v18 & 0x1000) == 0))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1003325DC(v13, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v15 = sub_10032C8E4();
    sub_10033257C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((v15 & 8) != 0)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_100330108@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100330338(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100331450(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100026AC0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100330108(v13, a3, a4, &v12);
  v10 = v4;
  sub_100026AC0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unsigned __int8 *sub_1003304CC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100330FDC();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100330A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100330FDC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100330FDC()
{
  v0 = String.subscript.getter();
  v4 = sub_10033105C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10033105C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100015E10(v9, 0);
  v12 = sub_1003311B4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1003311B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1003313D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1003313D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1003313D4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100331450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100330108(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100331508(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100294008(a3, a4);
          return sub_100330338(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100331670()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v40 - v6;
  sub_10032C0AC();
  sub_10032C0AC();
  v8 = static UUID.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    v12 = String.init(cString:)();
    contact_id = v13;
  }

  else
  {
    v12 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_62;
  }

  v14 = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = String.init(cString:)();
    if (contact_id)
    {
      if (!v16)
      {
        goto LABEL_56;
      }

      if (v12 == v15 && contact_id == v16)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v16)
    {
      goto LABEL_56;
    }
  }

  else if (contact_id)
  {
    goto LABEL_56;
  }

  v18 = sub_10032C610();
  v20 = v19;
  v21 = sub_10032C610();
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_56;
    }

    if (v18 == v21 && v20 == v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_56;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_63;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    v25 = String.init(cString:)();
    device_id = v26;
  }

  else
  {
    v25 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_64;
  }

  v27 = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (v27)
  {
    v28 = String.init(cString:)();
    if (device_id)
    {
      if (!v29)
      {
        goto LABEL_56;
      }

      if (v25 == v28 && device_id == v29)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v29)
    {
      goto LABEL_56;
    }
  }

  else if (device_id)
  {
    goto LABEL_56;
  }

  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_65;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    v32 = String.init(cString:)();
    device_model = v33;
  }

  else
  {
    v32 = 0;
  }

  result = NWEndpoint.nw.getter();
  if (result)
  {
    v34 = nw_endpoint_get_device_model();
    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = String.init(cString:)();
      if (device_model)
      {
        if (v36)
        {
          if (v32 == v35 && device_model == v36)
          {
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v37 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_59;
        }

LABEL_56:

        return 0;
      }

      if (v36)
      {
        goto LABEL_56;
      }
    }

    else if (device_model)
    {
      goto LABEL_56;
    }

LABEL_59:
    v38 = sub_10032C8E4();
    if (v38 == sub_10032C8E4())
    {
      v39 = sub_10032C8E4();
      return v39 == sub_10032C8E4();
    }

    return 0;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100331B60(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = v5[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    if (*v15 != *v17 || v16 != v18)
    {
      v20 = v5;
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v20;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v5[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v28 = v5;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v30 = v5[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }

    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v5;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  v37 = v5[11];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v5;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v5[12];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (!v46)
  {
    if (!v48)
    {
      goto LABEL_54;
    }

    return 0;
  }

  if (!v48)
  {
    return 0;
  }

  if (*v45 != *v47 || v46 != v48)
  {
    v49 = v5;
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v5 = v49;
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_54:
  if (*(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v52 = v5[14];
  v54 = *(a1 + v52);
  v53 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v57 = *v55;
  v56 = v55[1];
  if (v53 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      sub_1002A9924(v54, v53);
      sub_1002A9924(v57, v56);
      sub_10028BCC0(v54, v53);
      return 1;
    }

    goto LABEL_60;
  }

  if (v56 >> 60 == 15)
  {
LABEL_60:
    sub_1002A9924(v54, v53);
    sub_1002A9924(v57, v56);
    sub_10028BCC0(v54, v53);
    sub_10028BCC0(v57, v56);
    return 0;
  }

  sub_1002A9924(v54, v53);
  sub_1002A9924(v57, v56);
  v58 = sub_100331508(v54, v53, v57, v56);
  sub_10028BCC0(v57, v56);
  sub_10028BCC0(v54, v53);
  return v58 & 1;
}

uint64_t sub_100331EC8(uint64_t a1, uint64_t a2)
{
  if ((sub_100331508(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (v10)
    {
      v11 = *v7 == *v9 && v8 == v10;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  if (v10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  return v12 & 1;
}

uint64_t sub_100331F88(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v51 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v51 - 1) + 64);
  __chkstk_darwin(v51);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = (&v50 - v22);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v26 = sub_10028088C(&unk_100978CD0, &unk_1007FC090);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v50 - v29;
  v31 = *(v28 + 56);
  sub_1002940CC(a1, &v50 - v29);
  sub_1002940CC(v53, &v30[v31]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002940CC(v30, v23);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10033257C(v23, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        goto LABEL_23;
      }

      sub_1003325DC(&v30[v31], v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v44 = sub_100331B60(v23, v8);
      sub_10033257C(v8, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v45 = v23;
      v46 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      sub_1002940CC(v30, v25);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10033257C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_23:
        sub_100005508(v30, &unk_100978CD0, &unk_1007FC090);
LABEL_24:
        v44 = 0;
        return v44 & 1;
      }

      sub_1003325DC(&v30[v31], v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v44 = sub_100331670();
      sub_10033257C(v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v45 = v25;
      v46 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10033257C(v45, v46);
LABEL_27:
    sub_10033257C(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return v44 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1002940CC(v30, v17);
    v47 = *v17;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_23;
    }

    v48 = *&v30[v31];
    sub_100332530();
    v44 = static NSObject.== infix(_:_:)();

    goto LABEL_27;
  }

  sub_1002940CC(v30, v20);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10033257C(v20, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    goto LABEL_23;
  }

  v33 = &v30[v31];
  v34 = v52;
  sub_1003325DC(v33, v52, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  if ((sub_100331508(*v20, *(v20 + 1), *v34, *(v34 + 8)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v35 = v51[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v36 = v51[7];
  v37 = &v20[v36];
  v38 = *&v20[v36 + 8];
  v39 = (v34 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_14;
    }

LABEL_30:
    sub_10033257C(v34, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    sub_10033257C(v20, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    goto LABEL_31;
  }

  if (!v40 || (*v37 != *v39 || v38 != v40) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v41 = v51[9];
  v42 = v20[v41];
  v43 = *(v34 + v41);
  sub_10033257C(v34, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  sub_10033257C(v20, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  if (v42 != v43)
  {
LABEL_31:
    sub_10033257C(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_24;
  }

  sub_10033257C(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v44 = 1;
  return v44 & 1;
}

unint64_t sub_100332530()
{
  result = qword_1009772D8;
  if (!qword_1009772D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009772D8);
  }

  return result;
}

uint64_t sub_10033257C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003325DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100332644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v16 + 88))(v19, v15) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v11 + 32))(v14, v19, v10);
    (*(v11 + 16))(v9, v14, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v27 = 0;
    sub_100333278(v9, v7);
    v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v21 = swift_allocObject();
    sub_1003332E8(v7, v21 + v20);
    *(v21 + ((v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v27 = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = 0;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_100332AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v32 = a1;
  v33 = v11;
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    v37 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v15 = a1 + v37;
    v16 = *(v12 + 56);
    v40 = (v12 + 16);
    v35 = (v12 - 8);
    v17 = _swiftEmptyArrayStorage;
    v38 = v14;
    v39 = v8;
    v36 = v16;
    v14(v10, v15, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v35)(v10, v3);
      }

      else
      {
        v18 = v12;
        v19 = *v40;
        (*v40)(v8, v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v41;
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v17 = v41;
        }

        v17[2] = v22 + 1;
        v23 = v17 + v37 + v22 * v36;
        v16 = v36;
        v8 = v39;
        v19(v23, v39, v3);
        v12 = v18;
        v13 = v38;
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v13(v10, v15, v3);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v24 = v17[2];
  if (v24)
  {
    if (v24 != v33)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v41 = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = 0;
  }

  else
  {

    v41 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 1;
    *(v30 + 32) = v32;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100332F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerMixedTypes();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_100332F4C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1(1);
}

void sub_10033300C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x5F434952454E4547;
    v7 = inited + 32;
    *(inited + 40) = 0xEC0000004D455449;
    *(inited + 48) = v5;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v7, &qword_100981D40, &unk_1007FA6C0);
    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1007F5670;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v5;
      static String.localizedStringWithFormat(_:_:)();

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003331B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1003CF9FC(a1, a2, a3, v8, v9);
}

uint64_t sub_100333278(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003332E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100333358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C00;

  return sub_1003D0ED8(a1, a2, a3, v3 + v9, v10);
}

uint64_t sub_100333488()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978DC0);
  v1 = sub_10000C4AC(v0, qword_100978DC0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100333550(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = a2;
  v40 = type metadata accessor for SFNWInterfaceType();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v40);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0x800000010078C360;
  v7 = String._bridgeToObjectiveC()();
  v8 = SFLocalizedStringForKey();

  if (v8)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v9;
  }

  else
  {
    v37 = 0xD000000000000012;
  }

  v10 = 0x800000010078C380;
  v11 = String._bridgeToObjectiveC()();
  v12 = SFLocalizedStringForKey();

  if (v12)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v13;
  }

  else
  {
    v36 = 0xD000000000000016;
  }

  v14 = 0x800000010078C3A0;
  v15 = 0xD00000000000001ALL;
  v16 = String._bridgeToObjectiveC()();
  v17 = SFLocalizedStringForKey();

  v43 = v6;
  if (v17)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v18;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = SFLocalizedStringForKey();

  v35 = v15;
  if (v20)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v34 = 0xD000000000000018;
  }

  v21 = 0xD000000000000013;
  v22 = String._bridgeToObjectiveC()();
  v23 = SFLocalizedStringForKey();

  v42 = v10;
  if (v23)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = SFLocalizedStringForKey();

  v41 = v14;
  if (v25)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v33 = 0xD000000000000012;
  }

  v26 = 0xD000000000000013;
  v27 = String._bridgeToObjectiveC()();
  v28 = SFLocalizedStringForKey();

  if (v28)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SFAirDropUserDefaults();
  v29 = static SFAirDropUserDefaults.shared.getter();
  v30 = SFAirDropUserDefaults.verboseWalkAway.getter();

  sub_100638724(v5);
  v31 = (*(v2 + 88))(v5, v40);
  if (v31 == enum case for SFNWInterfaceType.awdl(_:))
  {

    if (v30)
    {
      return v37;
    }

    goto LABEL_24;
  }

  if (v31 == enum case for SFNWInterfaceType.cellular(_:))
  {

    return v36;
  }

  if (v31 == enum case for SFNWInterfaceType.directWired(_:))
  {

    goto LABEL_27;
  }

  if (v31 == enum case for SFNWInterfaceType.localWiFi(_:))
  {

    if (v30)
    {
      return v34;
    }

    goto LABEL_24;
  }

  if (v31 == enum case for SFNWInterfaceType.other(_:))
  {

    if (v30)
    {
      return v21;
    }

    goto LABEL_24;
  }

  if (v31 == enum case for SFNWInterfaceType.wifi(_:))
  {

    if (v30)
    {
      return v33;
    }

LABEL_24:

    return v39;
  }

  if (v31 != enum case for SFNWInterfaceType.wired(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (v30)
  {

    return v26;
  }

LABEL_27:

  return v35;
}

uint64_t sub_100333B60()
{
  v36 = type metadata accessor for SFNWInterfaceType();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0x800000010078C360;
  v5 = String._bridgeToObjectiveC()();
  v6 = SFLocalizedStringForKey();

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v8;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  v9 = 0x800000010078C380;
  v10 = String._bridgeToObjectiveC()();
  v11 = SFLocalizedStringForKey();

  v34 = v7;
  if (v11)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;
  }

  else
  {
    v33 = 0xD000000000000016;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = SFLocalizedStringForKey();

  v38 = v4;
  if (v14)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v15;
  }

  else
  {
    v32 = 0xD00000000000001ALL;
    v35 = 0x800000010078C3A0;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = SFLocalizedStringForKey();

  if (v17)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = 0xD000000000000018;
  }

  v18 = 0xD000000000000013;
  v19 = String._bridgeToObjectiveC()();
  v20 = SFLocalizedStringForKey();

  v37 = v9;
  if (v20)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = SFLocalizedStringForKey();

  if (v22)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v30 = 0xD000000000000012;
  }

  v23 = 0xD000000000000013;
  v24 = String._bridgeToObjectiveC()();
  v25 = SFLocalizedStringForKey();

  if (v25)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SFAirDropUserDefaults();
  v26 = static SFAirDropUserDefaults.shared.getter();
  v27 = SFAirDropUserDefaults.verboseWalkAway.getter();

  sub_1002FCB68(v3);
  v28 = (*(v0 + 88))(v3, v36);
  if (v28 == enum case for SFNWInterfaceType.awdl(_:))
  {

    if (v27)
    {
      return v34;
    }

LABEL_25:

    return 0;
  }

  if (v28 == enum case for SFNWInterfaceType.cellular(_:))
  {

    return v33;
  }

  if (v28 == enum case for SFNWInterfaceType.directWired(_:))
  {

    return v32;
  }

  if (v28 == enum case for SFNWInterfaceType.localWiFi(_:))
  {

    if (v27)
    {
      return v31;
    }

    goto LABEL_25;
  }

  if (v28 == enum case for SFNWInterfaceType.other(_:))
  {

    if (v27)
    {
      return v18;
    }

    goto LABEL_25;
  }

  if (v28 == enum case for SFNWInterfaceType.wifi(_:))
  {

    if (v27)
    {
      return v30;
    }

    goto LABEL_25;
  }

  if (v28 == enum case for SFNWInterfaceType.wired(_:))
  {

    if (v27)
    {
      v18 = v23;
    }

    else
    {
      v18 = v32;
    }

    return v18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100334168()
{
  v1[5] = v0;
  v2 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDropSend.Failure();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer.State();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v1[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_10033436C, v12, 0);
}

uint64_t sub_10033436C()
{
  v81 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v79 = *(v3 + 16);
  v79(v1, v7 + v8, v2);
  SFAirDropSend.Transfer.state.getter();
  v78 = *(v3 + 8);
  v78(v1, v2);
  v9 = (*(v6 + 88))(v4, v5);
  if (v9 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
  {
    v10 = *(v0 + 104);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    (*(*(v0 + 88) + 96))(v10, *(v0 + 80));
    v14 = sub_10028088C(&unk_100986210, &unk_1008042C0);
    (*(v12 + 32))(v11, v10 + *(v14 + 48), v13);
    v15 = (*(v12 + 88))(v11, v13);
    v18 = v15 == enum case for SFAirDropSend.Failure.resolveFailure(_:) || v15 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v15 == enum case for SFAirDropSend.Failure.cancelled(_:) || v15 == enum case for SFAirDropSend.Failure.insufficientStorage(_:);
    v19 = !v18;
    if (!v18)
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }

    v20 = *(v0 + 104);
    v21 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v21 - 8) + 8))(v20, v21);
    if (v19)
    {
      v22 = *(v0 + 144);
      v24 = *(v0 + 40);
      v23 = *(v0 + 48);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      v26 = sub_100337888(&qword_100977C00, type metadata accessor for AirDropActor);
      v27 = swift_allocObject();
      v27[2] = v22;
      v27[3] = v26;
      v27[4] = v24;
      v28 = v24;

      *(v0 + 152) = sub_1002B3098(0, 0, v23, &unk_1007FC1F8, v27);
      v29 = async function pointer to Task<>.value.getter[1];
      v30 = swift_task_alloc();
      *(v0 + 160) = v30;
      *v30 = v0;
      v30[1] = sub_100334B5C;

      return Task<>.value.getter();
    }
  }

  else if (v9 == enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
  {
    v31 = *(v0 + 104);
    (*(*(v0 + 88) + 96))(v31, *(v0 + 80));
    v32 = *(v31 + *(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48) + 8);

    v33 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v33 - 8) + 8))(v31, v33);
  }

  else
  {
    v34 = *(v0 + 40);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    v72 = v8;
    if (os_log_type_enabled(v35, v36))
    {
      v74 = v36;
      v37 = *(v0 + 128);
      v76 = v7;
      v38 = *(v0 + 112);
      v39 = *(v0 + 88);
      v40 = *(v0 + 96);
      v41 = *(v0 + 80);
      buf = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v80 = v73;
      *buf = 136315138;
      v79(v37, v76 + v8, v38);
      SFAirDropSend.Transfer.state.getter();
      v78(v37, v38);
      sub_100337888(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v45 = *(v39 + 8);
      v46 = v40;
      v7 = v76;
      v45(v46, v41);
      v47 = sub_10000C4E4(v42, v44, &v80);

      *(buf + 4) = v47;
      _os_log_impl(&_mh_execute_header, v35, v74, "runPostTransferEndedSteps invalid transfer state. Skipping. {transfer.state: %s}", buf, 0xCu);
      sub_10000C60C(v73);
    }

    else
    {
      v48 = *(v0 + 88);

      v45 = *(v48 + 8);
    }

    v45(*(v0 + 104), *(v0 + 80));
    v8 = v72;
  }

  v49 = *(v0 + 40);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 128);
    v53 = *(v0 + 112);
    v54 = v8;
    v55 = v7;
    v57 = *(v0 + 88);
    v56 = *(v0 + 96);
    v75 = *(v0 + 80);
    v58 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v80 = v77;
    *v58 = 136315138;
    v79(v52, v55 + v54, v53);
    SFAirDropSend.Transfer.state.getter();
    v78(v52, v53);
    sub_100337888(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v57 + 8))(v56, v75);
    v62 = sub_10000C4E4(v59, v61, &v80);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "Transer Linger SKIPPED. {transfer.state: %s}", v58, 0xCu);
    sub_10000C60C(v77);
  }

  v64 = *(v0 + 128);
  v63 = *(v0 + 136);
  v66 = *(v0 + 96);
  v65 = *(v0 + 104);
  v67 = *(v0 + 72);
  v68 = *(v0 + 48);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_100334B5C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_100334C6C, v2, 0);
}

uint64_t sub_100334C6C()
{
  v1 = v0[19];

  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100334D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100334E14, v8, 0);
}

uint64_t sub_100334E14()
{
  v1 = v0[6];
  v0[11] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transfer Linger START", v4, 2u);
  }

  v5 = v0[9];

  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100334F6C;
  v7 = v0[9];

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100334F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 80);
  if (v0)
  {
    v9 = sub_1003351D4;
  }

  else
  {
    v9 = sub_1003350F4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003350F4()
{
  v1 = v0[6] + v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Send StateMachine Linger END", v4, 2u);
  }

  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003351D4()
{
  v20 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_10000C4E4(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Transfer Linger FAILED {error: %s}", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
    v15 = v0[13];
  }

  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003353F4@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v69 = a6;
  v63 = a3;
  v64 = a4;
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = __chkstk_darwin(v9);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v15 = a2(0);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v57 - v21;
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  v25 = v16[2];
  v67 = a1;
  v65 = v25;
  v25(&v57 - v23, a1, v15);
  v26 = v6;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v62 = v28;
  v29 = os_log_type_enabled(v27, v28);
  v30 = &unk_1009A0000;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v57 = v24;
    v32 = v31;
    v60 = v31;
    v59 = swift_slowAlloc();
    v71[0] = v59;
    *v32 = 136315394;
    v58 = v27;
    v33 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v34 = v70;
    v35 = (*(v70 + 16))(v14, &v26[v33], v9);
    v63(v35);
    (*(v34 + 8))(v14, v9);
    v65(v61, v22, v15);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v63 = v16[1];
    (v63)(v22, v15);
    v39 = sub_10000C4E4(v36, v38, v71);

    v40 = v60;
    *(v60 + 4) = v39;
    *(v40 + 12) = 2080;
    v41 = v57;
    v65(v22, v57, v15);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    (v63)(v41, v15);
    v45 = sub_10000C4E4(v42, v44, v71);
    v30 = &unk_1009A0000;

    v46 = v60;
    *(v60 + 14) = v45;
    v47 = v58;
    _os_log_impl(&_mh_execute_header, v58, v62, v64, v46, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (v16[1])(v24, v15);
  }

  v48 = v30[243];
  swift_beginAccess();
  v49 = v70;
  v50 = *(v70 + 16);
  v51 = v66;
  v50(v66, &v26[v48], v9);
  v68(v67);
  v52 = *(v49 + 8);
  v52(v51, v9);
  swift_beginAccess();
  (*(v49 + 40))(&v26[v48], v14, v9);
  swift_endAccess();
  v53 = *&v26[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject];
  v50(v14, &v26[v48], v9);
  CurrentValueSubject.send(_:)();
  v52(v14, v9);
  v55 = *&v26[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  v54 = *&v26[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield + 8];
  v50(v14, &v26[v48], v9);
  v55(v14);
  v52(v14, v9);
  return (v50)(v69, &v26[v48], v9);
}

uint64_t sub_100335980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v49 - v10;
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v57 = a1;
  sub_100337818(a1, &v49 - v21);
  v23 = v2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v52 = v25;
    v53 = v24;
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59[0] = v50;
    v51 = v26;
    *v26 = 136315394;
    v27 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    (*(v5 + 16))(v13, &v23[v27], v4);
    SFAirDropSend.Transfer.activeInterfaceType.getter();
    v54 = v5;
    (*(v5 + 8))(v13, v4);
    v28 = type metadata accessor for SFNWInterfaceType();
    v29 = *(v28 - 8);
    v49 = *(v29 + 48);
    if (v49(v20, 1, v28) == 1)
    {
      sub_100005508(v20, &qword_100977DC0, &unk_1007FB320);
      v30 = 0x8000000100789F30;
      v31 = 0xD000000000000015;
    }

    else
    {
      v31 = SFNWInterfaceType.description.getter();
      v30 = v32;
      (*(v29 + 8))(v20, v28);
    }

    v33 = sub_10000C4E4(v31, v30, v59);

    v34 = v51;
    *(v51 + 1) = v33;
    *(v34 + 6) = 2080;
    v35 = v55;
    sub_100337818(v22, v55);
    if (v49(v35, 1, v28) == 1)
    {
      sub_100005508(v35, &qword_100977DC0, &unk_1007FB320);
      v36 = 0x8000000100789F30;
      v5 = v54;
      v37 = 0xD000000000000015;
    }

    else
    {
      v37 = SFNWInterfaceType.description.getter();
      v36 = v38;
      (*(v29 + 8))(v35, v28);
      v5 = v54;
    }

    sub_100005508(v22, &qword_100977DC0, &unk_1007FB320);
    v39 = sub_10000C4E4(v37, v36, v59);

    *(v34 + 14) = v39;
    v40 = v53;
    _os_log_impl(&_mh_execute_header, v53, v52, "Transfer changed active interface type %s -> %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005508(v22, &qword_100977DC0, &unk_1007FB320);
  }

  v41 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v42 = *(v5 + 16);
  v43 = v56;
  v42(v56, &v23[v41], v4);
  SFAirDropSend.Transfer.update(activeInterfaceType:)();
  v44 = *(v5 + 8);
  v44(v43, v4);
  swift_beginAccess();
  (*(v5 + 40))(&v23[v41], v11, v4);
  swift_endAccess();
  v45 = *&v23[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject];
  v42(v11, &v23[v41], v4);
  CurrentValueSubject.send(_:)();
  v44(v11, v4);
  v47 = *&v23[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  v46 = *&v23[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield + 8];
  v42(v11, &v23[v41], v4);
  v47(v11);
  v44(v11, v4);
  return (v42)(v58, &v23[v41], v4);
}

uint64_t sub_100335F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for SFAirDropSend.Transfer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Transfer changed network metrics", v13, 2u);
  }

  v14 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v15 = *(v4 + 16);
  v15(v8, v2 + v14, v3);
  SFAirDropSend.Transfer.update(networkMetrics:)();
  v16 = *(v4 + 8);
  v16(v8, v3);
  v17 = v16;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v14, v10, v3);
  swift_endAccess();
  v18 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject);
  v15(v10, v2 + v14, v3);
  CurrentValueSubject.send(_:)();
  v19 = v17;
  v17(v10, v3);
  v21 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield);
  v20 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield + 8);
  v15(v10, v2 + v14, v3);
  v21(v10);
  v19(v10, v3);
  return (v15)(v24, v2 + v14, v3);
}

uint64_t sub_100336238(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropSend.Transfer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136315138;
    SFAirDropSend.Transfer.id.getter();
    v18 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v31 = a1;
    v20 = v19;
    (*(v33 + 8))(v7, v34);
    (*(v9 + 8))(v12, v8);
    v21 = sub_10000C4E4(v18, v20, v35);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Begin Send OSTransaction and Power Assertion %s", v16, 0xCu);
    sub_10000C60C(v17);

    v2 = v32;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v35, "airdrop.send[");
  HIWORD(v35[1]) = -4864;
  SFAirDropSend.Transfer.id.getter();
  v22 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
  v24 = v23;
  (*(v33 + 8))(v7, v34);
  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  String.utf8CString.getter();

  v27 = os_transaction_create();

  v28 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction);
  *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction) = v27;
  swift_unknownObjectRelease();
  result = sub_1000925A4();
  v30 = v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion;
  *v30 = result;
  *(v30 + 4) = 0;
  return result;
}