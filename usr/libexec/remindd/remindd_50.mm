unint64_t sub_1004A8118()
{
  result = qword_1009429C8;
  if (!qword_1009429C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009429C8);
  }

  return result;
}

unint64_t sub_1004A81B8()
{
  result = qword_100948EF8;
  if (!qword_100948EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948EF8);
  }

  return result;
}

unint64_t sub_1004A8240()
{
  result = qword_100948F10;
  if (!qword_100948F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948F10);
  }

  return result;
}

uint64_t sub_1004A8294()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948F18);
  v1 = sub_100006654(v0, qword_100948F18);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004A835C(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(REMStoreInvocationResult) init];
  v46 = a1;
  v15 = [a1 storeController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v17)
    {
      v44 = v14;
      v45 = v2;
      v43 = v3;
      v18 = v17;
      v19 = [v17 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v10 + 8))(v13, v9);
      v20 = String._bridgeToObjectiveC()();

      v21 = [v16 storeForAccountIdentifier:v20];

      if (v21)
      {
        v22 = *(sub_1000F5104(&qword_100946030, qword_1007A74D0) + 48);
        v23 = v43;
        v24 = [v43 fromDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = [v23 toDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        swift_storeEnumTagMultiPayload();
        v26 = sub_100043AA8();
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        v27 = [objc_allocWithZone(NSFetchRequest) init];
        v28 = [swift_getObjCClassFromMetadata() entity];
        [v27 setEntity:v28];

        [v27 setAffectedStores:0];
        [v27 setPredicate:v26];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1007953F0;
        *(v29 + 32) = v21;
        sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
        v30 = v21;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setAffectedStores:isa];

        v32 = v45;
        v33 = NSManagedObjectContext.count<A>(for:)();
        if (v32)
        {
          sub_1000513B4(v8);
          v14 = v44;
        }

        else
        {
          v39 = [objc_allocWithZone(NSNumber) initWithInteger:v33];
          v40 = REMAppStoreCreatedOrCompletedRemindersLastMonthCountFetchResultKey;
          v41 = v44;
          [v44 storeProperty:v39 forKey:v40];

          v14 = v41;
          sub_1000513B4(v8);
        }

        return v14;
      }

      v14 = v44;
    }

    else
    {
    }
  }

  if (qword_100936280 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100948F18);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "REMAppStoreDataViewInvocation: No primary CloudKit account signed in. Returning no results", v37, 2u);
  }

  return v14;
}

id sub_1004A88D8()
{
  v0 = [objc_opt_self() sharedConfiguration];
  v1 = [v0 appStoreReviewCreatedOrCompletedRemindersCountThreshold];
  v2 = [v0 appStoreReviewNumberOfForegroundsThreshold];
  [v0 appStoreReviewTimeIntervalOfInterest];
  v4 = v3;
  [v0 appStoreReviewTimeIntervalSinceInitialForeground];
  v6 = v5;
  [v0 appStoreReviewTimeIntervalSinceLastPrompt];
  v8 = v7;
  [v0 appStoreReviewTimeIntervalSinceLastFetch];
  v10 = [objc_allocWithZone(REMAppStoreDataViewConfigurationsInvocationResult) initWithCreatedOrCompletedRemindersCountThreshold:v1 numberOfForegroundsThreshold:v2 timeIntervalOfInterest:v4 timeIntervalSinceInitialForeground:v6 timeIntervalSinceLastPrompt:v8 timeIntervalSinceLastFetch:v9];

  return v10;
}

uint64_t sub_1004A89E8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948F30);
  v1 = sub_100006654(v0, qword_100948F30);
  if (qword_100936488 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004A8AB0()
{
  v1 = v0;
  v55 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v55);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1[2];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = v1[3];
  if (v14)
  {
    v13 = *(v14 + 16);
    v15 = qword_100936288;

    if (v15 == -1)
    {
LABEL_4:
      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100948F30);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v57 = v50;
        v51 = v19;
        *v19 = 136446210;
        v20 = *(v13 + 16);
        if (v20)
        {
          v46 = v18;
          v47 = v17;
          v49 = v1;
          v56 = _swiftEmptyArrayStorage;
          sub_100026EF4(0, v20, 0);
          v21 = v56;
          v22 = v2 + 16;
          v23 = *(v2 + 16);
          v24 = *(v2 + 80);
          v48 = v13;
          v25 = v13 + ((v24 + 32) & ~v24);
          v52 = *(v22 + 56);
          v53 = v23;
          v54 = v22;
          v26 = (v22 - 8);
          do
          {
            v27 = v55;
            v53(v5, v25, v55);
            v28 = REMAccountsListDataView.Model.GroupChild.objectID.getter();
            v29 = [v28 stringRepresentation];

            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            (*v26)(v5, v27);
            v56 = v21;
            v34 = v21[2];
            v33 = v21[3];
            if (v34 >= v33 >> 1)
            {
              sub_100026EF4((v33 > 1), v34 + 1, 1);
              v21 = v56;
            }

            v21[2] = v34 + 1;
            v35 = &v21[2 * v34];
            v35[4] = v30;
            v35[5] = v32;
            v25 += v52;
            --v20;
          }

          while (v20);
          v13 = v48;
          v1 = v49;
          v17 = v47;
          LOBYTE(v18) = v46;
        }

        v40 = Array.description.getter();
        v42 = v41;

        v43 = sub_10000668C(v40, v42, &v57);

        v44 = v51;
        *(v51 + 1) = v43;
        _os_log_impl(&_mh_execute_header, v17, v18, "Updating application shortcuts from RDApplicationShortcutEngine {lists: %{public}s}", v44, 0xCu);
        sub_10000607C(v50);
      }

      if (v1[5])
      {
        sub_1001A7284(v13);
      }

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100936288 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_100948F30);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "RDApplicationShortcutEngine has no provider; not updating shortcuts", v39, 2u);
  }
}

uint64_t sub_1004A8FA8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9018()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948FF8);
  v1 = sub_100006654(v0, qword_100948FF8);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A90E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6465696669646F6DLL;
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
    v5 = 0xEC00000065746144;
  }

  if (*a2)
  {
    v6 = 0x6465696669646F6DLL;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v7 = 0xEC00000065746144;
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

Swift::Int sub_1004A9190()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004A921C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1004A9294()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004A931C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0BF0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1004A937C(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x6465696669646F6DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC00000065746144;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004A93C4@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E0BF0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1004A9428()
{
  if (*v0)
  {
    result = 0x6465696669646F6DLL;
  }

  else
  {
    result = 0x44497463656A626FLL;
  }

  *v0;
  return result;
}

Swift::Int sub_1004A947C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004A94F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004A9544@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E38E0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1004A95B8@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1660, v3);

  *a2 = v5 != 0;
  return result;
}

void sub_1004A963C(id a1, char *a2, char *a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v159[-v10];
  v12 = type metadata accessor for UUID();
  v176 = *(v12 - 8);
  v177 = v12;
  v13 = *(v176 + 64);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v159[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v178 = a3;
  v17 = [a3 remObjectID];
  if (!v17)
  {
LABEL_11:
    v241 = 0;
    v242 = 0xE000000000000000;
    _StringGuts.grow(_:)(177);
    v39._countAndFlagsBits = 0xD00000000000007ELL;
    v39._object = 0x80000001007F9E00;
    String.append(_:)(v39);
    v40 = [*(v4 + 16) description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);

    v45._object = 0x80000001007F9E80;
    v45._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v45);
    v46 = [a1 remObjectID];
    v47 = [v46 description];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51._countAndFlagsBits = v48;
    v51._object = v50;
    String.append(_:)(v51);

    v52._countAndFlagsBits = 0xD000000000000018;
    v52._object = 0x80000001007F9EA0;
    String.append(_:)(v52);
    v53 = [v178 identifier];
    if (v53)
    {
      v54 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v176 + 56))(v11, 0, 1, v177);
    }

    else
    {
      (*(v176 + 56))(v11, 1, 1, v177);
    }

    v55 = objc_opt_self();
    v56 = Optional.descriptionOrNil.getter();
    v58 = v57;
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);

    v60._countAndFlagsBits = 125;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    v61 = String._bridgeToObjectiveC()();

    [v55 internalErrorWithDebugDescription:v61];

    swift_willThrow();
    return;
  }

  v18 = v17;
  v171 = v16;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v173 = v4;
  v19 = *(v4 + 16);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    v4 = v173;
    goto LABEL_11;
  }

  v172 = [a1 listType];
  v20 = [a1 listID];
  v174 = a2;
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();

    a2 = v174;
  }

  v170 = v20;
  v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = v175;
  if (qword_100936290 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v24 = type metadata accessor for Logger();
    v25 = sub_100006654(v24, qword_100948FF8);
    v26 = a1;

    v166 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v29 = os_log_type_enabled(v27, v28);
    v169 = v26;
    if (v29)
    {
      v167 = v18;
      v30 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *v30 = 136315650;
      LOWORD(v179) = v172;
      type metadata accessor for REMManualOrderingListType(0);
      v31 = String.init<A>(describing:)();
      v33 = sub_10000668C(v31, v32, &v241);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v34 = v22;
      *(v30 + 14) = sub_10000668C(v168, v22, &v241);
      *(v30 + 22) = 2048;
      v35 = [v26 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v36 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v169;

      *(v30 + 24) = v37;

      _os_log_impl(&_mh_execute_header, v27, v28, "merging manual ordering {list type: %s, list ID: %s, top-level reminders count: %ld}", v30, 0x20u);
      swift_arrayDestroy();

      v18 = v167;
      v22 = v34;
      a2 = v174;
      v23 = v175;
    }

    else
    {
    }

    v62 = v172;
    [a2 setListTypeRawValue:v172];
    v63 = v170;
    [a2 setListID:v170];

    v64 = objc_opt_self();
    v65 = [v64 sharedConfiguration];
    v66 = [v65 manualSortHintLastAccessedUpdatePolicy];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = v174;
    v71._countAndFlagsBits = v67;
    v71._object = v69;
    v72 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v71);

    if (v72 >= 3)
    {
      v73 = 2;
    }

    else
    {
      v73 = v72;
    }

    sub_1002D68D0(v73);
    v74 = [v70 storeControllerManagedObjectContext];
    if (!v74)
    {

      return;
    }

    v75 = v74;
    v170 = v22;
    v76 = sub_1004AAFEC(v178, v62);
    if (v23)
    {

      return;
    }

    v77 = v76;
    v241 = 0;
    __chkstk_darwin(v76);
    *&v159[-32] = v78;
    *&v159[-24] = v75;
    *&v159[-16] = &v241;

    v79 = v75;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v165 = v79;
    v80 = v241;
    if (!v241)
    {
      v80 = sub_10038DB14(_swiftEmptyArrayStorage);
    }

    v81 = v169;
    sub_1004FDD00(v81, v80, v77, v165, &v181);
    sub_100226C14(&v243);
    a2 = 0;
    v167 = v18;
    v162 = v77;
    if (!v243)
    {

      v163 = v182;
      v164 = v183;
      v160 = 1;
      v169 = v181;
      goto LABEL_30;
    }

    v175 = 0;
    v198 = v243;
    v199 = v244;
    v200 = v245;
    sub_1004AB2C4(&v181, 1, v184);
    v238[0] = v181;
    sub_1000050A4(v238, &unk_10093B300, &unk_100797780);
    v237 = v182;
    sub_1000050A4(&v237, &qword_100939A08, &unk_100796A80);
    v236 = *(&v182 + 1);
    sub_1000050A4(&v236, &unk_100945230, &qword_1007A2590);
    v235 = v183;
    sub_1000050A4(&v235, &qword_10093E9C0, qword_100794F90);
    v234 = *(&v183 + 1);
    sub_1000050A4(&v234, &unk_100945240, &qword_1007A0A70);
    v125 = [v64 sharedConfiguration];
    [v125 manualSortHintClientSideExpiration];

    sub_100452DF0(&v185);
    v233 = v184[0];
    sub_1000050A4(&v233, &unk_10093B300, &unk_100797780);
    v232 = v184[1];
    sub_1000050A4(&v232, &qword_100939A08, &unk_100796A80);
    v231 = v184[2];
    sub_1000050A4(&v231, &unk_100945230, &qword_1007A2590);
    v230 = v184[3];
    sub_1000050A4(&v230, &qword_10093E9C0, qword_100794F90);
    v229 = v184[4];
    sub_1000050A4(&v229, &unk_100945240, &qword_1007A0A70);
    v169 = v185;
    if (sub_1003AD2E8(v185, v198) & 1) != 0 && (sub_1004ADA04(v186, v199) & 1) != 0 && (sub_1004ADBAC(*(&v186 + 1), *(&v199 + 1)) & 1) != 0 && (sub_1004ADD50(v187, v200))
    {
      v178 = *(&v200 + 1);
      if (sub_1005A544C(*(&v187 + 1), *(&v200 + 1)))
      {

        return;
      }
    }

    v139 = v175;
    sub_100451CD4(&v188);
    if (!v139)
    {

      v201 = v199;
      sub_1000050A4(&v201, &qword_100939A08, &unk_100796A80);
      v202 = *(&v199 + 1);
      sub_1000050A4(&v202, &unk_100945230, &qword_1007A2590);
      v203 = v200;
      sub_1000050A4(&v203, &qword_10093E9C0, qword_100794F90);
      v204 = *(&v200 + 1);
      sub_1000050A4(&v204, &unk_100945240, &qword_1007A0A70);
      sub_100451CD4(&v193);
      v175 = 0;

      v151 = v188;
      if (sub_1003AD2E8(v188, v193))
      {
        if (sub_1004ADA04(v189, v194))
        {
          if (sub_1004ADBAC(v190, v195))
          {
            v178 = v151;
            if (sub_1004ADD50(v191, v196))
            {
              v168 = v197;
              LODWORD(v170) = sub_1005A544C(v192, v197);

              v163 = v186;
              v164 = v187;
              v160 = v170 ^ 1;
LABEL_89:
              a2 = v175;
              goto LABEL_30;
            }

            v210 = v197;
            sub_1000050A4(&v210, &unk_100945240, &qword_1007A0A70);

            v209 = v192;
            v152 = &v209;
          }

          else
          {

            v214 = v196;
            sub_1000050A4(&v214, &qword_10093E9C0, qword_100794F90);
            v213 = v197;
            sub_1000050A4(&v213, &unk_100945240, &qword_1007A0A70);

            v212 = v191;
            sub_1000050A4(&v212, &qword_10093E9C0, qword_100794F90);
            v211 = v192;
            v152 = &v211;
          }
        }

        else
        {

          v220 = v195;
          sub_1000050A4(&v220, &unk_100945230, &qword_1007A2590);
          v219 = v196;
          sub_1000050A4(&v219, &qword_10093E9C0, qword_100794F90);
          v218 = v197;
          sub_1000050A4(&v218, &unk_100945240, &qword_1007A0A70);

          v217 = v190;
          sub_1000050A4(&v217, &unk_100945230, &qword_1007A2590);
          v216 = v191;
          sub_1000050A4(&v216, &qword_10093E9C0, qword_100794F90);
          v215 = v192;
          v152 = &v215;
        }
      }

      else
      {

        v228 = v194;
        sub_1000050A4(&v228, &qword_100939A08, &unk_100796A80);
        v227 = v195;
        sub_1000050A4(&v227, &unk_100945230, &qword_1007A2590);
        v226 = v196;
        sub_1000050A4(&v226, &qword_10093E9C0, qword_100794F90);
        v225 = v197;
        sub_1000050A4(&v225, &unk_100945240, &qword_1007A0A70);

        v224 = v189;
        sub_1000050A4(&v224, &qword_100939A08, &unk_100796A80);
        v223 = v190;
        sub_1000050A4(&v223, &unk_100945230, &qword_1007A2590);
        v222 = v191;
        sub_1000050A4(&v222, &qword_10093E9C0, qword_100794F90);
        v221 = v192;
        v152 = &v221;
      }

      sub_1000050A4(v152, &unk_100945240, &qword_1007A0A70);
      v160 = 1;
      v163 = v186;
      v164 = v187;
      goto LABEL_89;
    }

    v205 = v199;
    sub_1000050A4(&v205, &qword_100939A08, &unk_100796A80);
    v206 = *(&v199 + 1);
    sub_1000050A4(&v206, &unk_100945230, &qword_1007A2590);
    v207 = v200;
    sub_1000050A4(&v207, &qword_10093E9C0, qword_100794F90);
    v208 = *(&v200 + 1);
    sub_1000050A4(&v208, &unk_100945240, &qword_1007A0A70);
    a2 = 0;
    v163 = v186;
    v164 = v187;
    v82 = v170;

    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v175 = 0;
      v86 = v85;
      v241 = swift_slowAlloc();
      *v86 = 136315650;
      LOWORD(v179) = v172;
      type metadata accessor for REMManualOrderingListType(0);
      v87 = String.init<A>(describing:)();
      v89 = sub_10000668C(v87, v88, &v241);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      v90 = sub_10000668C(v168, v82, &v241);

      *(v86 + 14) = v90;
      *(v86 + 22) = 2080;
      swift_getErrorValue();
      v91 = Error.localizedDescription.getter();
      v93 = sub_10000668C(v91, v92, &v241);

      *(v86 + 24) = v93;
      _os_log_impl(&_mh_execute_header, v83, v84, "Error upon merging manual ordering {list type: %s, listID: %s, error: %s}", v86, 0x20u);
      swift_arrayDestroy();

      a2 = v175;
    }

    else
    {
    }

    v160 = 1;
LABEL_30:
    v175 = a2;
    v238[1] = v169;
    v239 = v163;
    v240 = v164;
    v94 = *(&v164 + 1);
    v95 = *(*(&v164 + 1) + 32);
    v96 = v95 & 0x3F;
    v166 = ((1 << v95) + 63) >> 6;
    v97 = 8 * v166;

    v178 = v94;
    if (v96 <= 0xD)
    {
      goto LABEL_31;
    }

    v153 = v166;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v94 = v178;

LABEL_31:
    v161 = v159;
    __chkstk_darwin(v98);
    v168 = &v159[-((v97 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v168, v97);
    v170 = 0;
    a1 = 0;
    v100 = *(v94 + 7);
    v23 = v94 + 56;
    v99 = v100;
    v101 = 1 << *(v23 - 24);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v22 = v102 & v99;
    v18 = ((v101 + 63) >> 6);
    v103 = v174;
    while (v22)
    {
      v104 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_41:
      v107 = v104 | (a1 << 6);
      v108 = (*(v178 + 6) + 16 * v107);
      v109 = *v108;
      a2 = v108[1];

      v110._countAndFlagsBits = 0x7C6C61636F6CLL;
      v110._object = 0xE600000000000000;
      v111 = String.hasPrefix(_:)(v110);

      v103 = v174;
      if (v111)
      {
        *&v168[(v107 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v107;
        if (__OFADD__(v170++, 1))
        {
          __break(1u);
LABEL_45:
          v113 = sub_1001A0BCC(v168, v166, v170, v178);
          goto LABEL_46;
        }
      }
    }

    v105 = a1;
    while (1)
    {
      a1 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (a1 >= v18)
      {
        goto LABEL_45;
      }

      v106 = *&v23[8 * a1];
      ++v105;
      if (v106)
      {
        v104 = __clz(__rbit64(v106));
        v22 = (v106 - 1) & v106;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_83:
    swift_once();
  }

  v155 = swift_slowAlloc();
  v156 = v175;
  v157 = sub_1004ADE8C(v155, v153, v178, sub_1004FD8D0);
  v175 = v156;
  if (v156)
  {

    __break(1u);
  }

  else
  {
    v158 = v157;

    v113 = v158;
    v103 = v174;
LABEL_46:
    sub_1002D6764(v113);
    v114 = sub_1004FE558(1, v169, v163, *(&v163 + 1));
    sub_1002D6778(v114);
    v115 = [v103 concatenatedContainerIDsWithLocalContainerIDPrefix];
    v116 = v175;
    if (v115)
    {
      v117 = v103;
      v118 = v115;
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v241 = v119;
      v242 = v121;
      v122 = *&v117[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
      v179 = *&v117[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
      v180 = v122;
      sub_10013BCF4();
      v123 = StringProtocol.components<A>(separatedBy:)();

      v124 = sub_1001A5660(v123);
    }

    else
    {
      v124 = _swiftEmptySetSingleton;
    }

    v126 = v167;
    v127 = v173;
    v128 = v124[2];

    if (v128)
    {
      goto LABEL_64;
    }

    v129 = v174;
    v130 = [v174 concatenatedElementIDsWithLocalElementIDPrefix];
    if (v130)
    {
      v131 = v130;
      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v126;
      v135 = v134;

      v241 = v132;
      v242 = v135;
      v136 = *&v129[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
      v179 = *&v129[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
      v180 = v136;
      sub_10013BCF4();
      v137 = StringProtocol.components<A>(separatedBy:)();
      v126 = v133;
      v127 = v173;

      v138 = sub_1001A5660(v137);
    }

    else
    {
      v138 = _swiftEmptySetSingleton;
    }

    v140 = v138[2];

    if (v140)
    {
LABEL_64:
      v141 = *(v127 + 24);
      if (qword_100936298 != -1)
      {
        v154 = *(v127 + 24);
        swift_once();
        v141 = v154;
      }

      [v141 postNotificationName:qword_100974EB0 object:0];
    }

    v142 = sub_10015D850();
    if (v116)
    {
    }

    else
    {
      v144 = v142;
      v145 = v143;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v144, v145);
      v147 = v174;
      [v174 setHintData:isa];

      if (v160)
      {
        v148 = v171;
        UUID.init()();
        v149 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v176 + 8))(v148, v177);
        [v147 setETag:v149];
      }

      [v147 setSerializationVersion:1];
      if (v172 > 3u && v172 - 4 < 3)
      {
        v150 = [v147 minimumSupportedVersion];
        if (v150 == kREMSupportedVersionUnset)
        {
          [v147 setMinimumSupportedVersion:kREMSupportedVersionFor2022];
        }
      }
    }
  }
}

uint64_t sub_1004AAFEC(uint64_t a1, unsigned __int16 a2)
{
  if (a2 <= 6u)
  {
    if (((1 << a2) & 0x3A) != 0)
    {
      sub_1006B038C();
      v3 = v2;
      v4 = type metadata accessor for RDManualSortIDCache();
      if (qword_100936508 != -1)
      {
        v4 = swift_once();
      }

      __chkstk_darwin(v4);
      OS_dispatch_queue.sync<A>(execute:)();
      type metadata accessor for RDManualSortIDAdapter();
      swift_allocObject();
      v5 = v16;
      v6 = v3;
      v7 = 0;
      return sub_100214ECC(v5, v6, v7);
    }

    if (((1 << a2) & 0x44) != 0)
    {
      sub_1006B038C();
      v9 = v8;
      v10 = type metadata accessor for RDManualSortIDCache();
      if (qword_100936508 != -1)
      {
        v10 = swift_once();
      }

      __chkstk_darwin(v10);
      OS_dispatch_queue.sync<A>(execute:)();
      type metadata accessor for RDManualSortIDAdapter();
      swift_allocObject();
      v5 = v16;
      v6 = v9;
      v7 = 1;
      return sub_100214ECC(v5, v6, v7);
    }
  }

  v12 = objc_opt_self();
  _StringGuts.grow(_:)(108);
  v13._object = 0x80000001007F9EF0;
  v13._countAndFlagsBits = 0xD00000000000006ALL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v12 internalErrorWithDebugDescription:{v15, 0, 0xE000000000000000}];

  return swift_willThrow();
}

uint64_t sub_1004AB2C4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v100 = sub_1000F5104(&qword_1009491C0, &qword_1007AD228);
  v98 = *(v100 - 8);
  v8 = *(v98 + 64);
  __chkstk_darwin(v100);
  v99 = &v91 - v9;
  v103 = v4;
  if (a2)
  {
    v10 = a1[4];
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v122 = a1[4];
    v116[0] = v122;
    __chkstk_darwin(v122);
    *(&v91 - 2) = v4;
    *(&v91 - 1) = a1;

    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
    v4 = v103;
    v10 = Sequence.compactMapToSet<A>(_:)();
    sub_1000050A4(&v122, &unk_100945240, &qword_1007A0A70);
  }

  v11 = sub_100453404(v10, v4[4]);

  if (v11)
  {

    v12 = *a1;
    v13 = a1[1];
    v15 = a1[2];
    v14 = a1[3];
    v16 = a1[4];

LABEL_70:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v15;
    a3[3] = v14;
    a3[4] = v16;
    return result;
  }

  v96 = a3;
  sub_10045226C(v10, v112);
  sub_10045226C(v10, v116);

  v121 = v112[0];
  v110[0] = v112[0];
  v108 = v116[0];
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  BidirectionalCollection<>.difference<A>(from:)();
  v18 = *v4;
  v19 = sub_1000F5104(&qword_1009491C8, &qword_1007AD230);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = MutableOrderedSet.init(_:)();
  v23 = *(v19 + 48);
  v24 = *(v19 + 52);
  swift_allocObject();
  v25 = MutableOrderedSet.init(_:)();
  v120 = v116[1];
  sub_1000050A4(&v120, &qword_100939A08, &unk_100796A80);
  v119 = v116[2];
  sub_1000050A4(&v119, &unk_100945230, &qword_1007A2590);
  v118 = v116[3];
  sub_1000050A4(&v118, &qword_10093E9C0, qword_100794F90);
  v117 = v116[4];
  sub_1000050A4(&v117, &unk_100945240, &qword_1007A0A70);
  v111 = v4[1];

  v26 = CollectionDifference.removals.getter();

  sub_1004AE2BC(v26);
  v97 = 0;

  v101 = v22;

  v104 = v25;
  LOBYTE(v26) = MutableOrderedSet.isEmpty.getter();
  v27 = CollectionDifference.insertions.getter();
  v28 = *(v27 + 16);
  v102 = v27;
  if (v26)
  {
    if (v28)
    {
      v29 = 0;
      v30 = v27 + 40;
      v31 = _swiftEmptyArrayStorage;
      do
      {
        v32 = v30 + 40 * v29;
        v33 = v29;
        while (1)
        {
          if (v33 >= *(v27 + 16))
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v29 = v33 + 1;
          if (*(v32 + 25) != 1)
          {
            break;
          }

          v32 += 40;
          ++v33;
          if (v28 == v29)
          {
            goto LABEL_44;
          }
        }

        v35 = *v32;
        v34 = *(v32 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100365788(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        v27 = v102;
        if (v37 >= v36 >> 1)
        {
          v31 = sub_100365788((v36 > 1), v37 + 1, 1, v31);
          v27 = v102;
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[16 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        v4 = v103;
      }

      while (v28 - 1 != v33);
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

LABEL_44:

    MutableOrderedSet.addValues(from:)(v31);
    goto LABEL_45;
  }

  if (!v28)
  {
LABEL_45:

    v48 = v112[1];

    v49 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110[0] = v49;
    v51 = v97;
    sub_1004AE3B4(v48, sub_1004AE274, 0, isUniquelyReferenced_nonNull_native, v110);
    v97 = v51;
    v102 = v48;

    v13 = v110[0];

    v52 = MutableOrderedSet.array.getter();
    v15 = sub_10038E004(_swiftEmptyArrayStorage);
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = 0;
      v55 = v52 + 40;
      v92 = v53 - 1;
      v94 = v13;
      v93 = v52 + 40;
      do
      {
        v105 = v15;
        v56 = v113;
        v57 = (v55 + 16 * v54);
        v58 = v54;
        while (1)
        {
          if (v58 >= *(v52 + 16))
          {
            __break(1u);
            goto LABEL_72;
          }

          v60 = *(v57 - 1);
          v59 = *v57;
          v61 = *(v56 + 16);

          if (v61)
          {
            v62 = sub_100005F4C(v60, v59);
            if (v63)
            {
              break;
            }
          }

          v64 = v4[2];
          if (*(v64 + 16))
          {
            v62 = sub_100005F4C(v60, v59);
            if (v65)
            {
              v56 = v64;
              break;
            }
          }

          ++v58;

          v57 += 2;
          if (v53 == v58)
          {
            v15 = v105;
            goto LABEL_68;
          }
        }

        v66 = (*(v56 + 56) + 16 * v62);
        v67 = v66[1];
        v95 = *v66;

        v68 = v105;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v68;
        v71 = sub_100005F4C(v60, v59);
        v72 = *(v68 + 16);
        v73 = (v70 & 1) == 0;
        v74 = v72 + v73;
        if (__OFADD__(v72, v73))
        {
          goto LABEL_78;
        }

        v75 = v70;
        if (*(v68 + 24) >= v74)
        {
          if ((v69 & 1) == 0)
          {
            sub_100373664();
          }
        }

        else
        {
          sub_10036A8F0(v74, v69);
          v76 = sub_100005F4C(v60, v59);
          if ((v75 & 1) != (v77 & 1))
          {
            goto LABEL_81;
          }

          v71 = v76;
        }

        v78 = v110[0];
        if (v75)
        {
          v79 = (*(v110[0] + 56) + 16 * v71);
          v80 = v79[1];
          *v79 = v95;
          v79[1] = v67;
          swift_bridgeObjectRelease_n();
          v4 = v103;
          v13 = v94;
          v15 = v78;
        }

        else
        {
          *(v110[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
          v81 = (v78[6] + 16 * v71);
          *v81 = v60;
          v81[1] = v59;
          v82 = (v78[7] + 16 * v71);
          *v82 = v95;
          v82[1] = v67;
          v83 = v78[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_79;
          }

          v15 = v78;
          v78[2] = v85;
          v4 = v103;
          v13 = v94;
        }

        v54 = v58 + 1;

        v55 = v93;
      }

      while (v92 != v58);
    }

LABEL_68:

    v110[0] = v4[3];
    v86 = v110[0];
    v87 = v114;
    sub_1004AE8BC(v110, &v108);

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v86;
    v89 = v97;
    sub_1004AE640(v87, sub_1004AE25C, 0, v88, &v108);

    if (v89)
    {
      goto LABEL_80;
    }

    sub_1000050A4(&v121, &unk_10093B300, &unk_100797780);

    v14 = v108;
    v108 = v113;
    sub_1000050A4(&v108, &unk_100945230, &qword_1007A2590);

    v106 = v115;
    sub_1000050A4(&v106, &unk_100945240, &qword_1007A0A70);

    v16 = sub_1001A6DC0(v90);
    v12 = MutableOrderedSet.array.getter();

    (*(v98 + 8))(v99, v100);

    a3 = v96;
    goto LABEL_70;
  }

  v39 = 0;
  v40 = (v27 + 65);
  while (v39 < *(v27 + 16))
  {
    if (*v40)
    {
      goto LABEL_25;
    }

    v41 = *(v40 - 33);
    v42 = *(v40 - 17);
    v43 = *(v40 - 9);
    v44 = *(v40 - 1);
    v110[0] = *(v40 - 25);
    v110[1] = v42;
    v105 = v43;
    if (!v41)
    {
      swift_bridgeObjectRetain_n();
      MutableOrderedSet.value(at:)();
      if (!v107)
      {
        goto LABEL_39;
      }

      v108 = v106;
      v109 = v107;
      MutableOrderedSet.index(of:)();
      if (v47)
      {

LABEL_39:
        MutableOrderedSet.add(_:)();

LABEL_42:
        sub_1004AE8B4();
        goto LABEL_24;
      }

      MutableOrderedSet.insert(_:at:)();

LABEL_41:
      MutableOrderedSet.insert(_:at:)();

      goto LABEL_42;
    }

    if (__OFSUB__(v41, 1))
    {
      goto LABEL_74;
    }

    if (v41 - 1 < 0)
    {
      goto LABEL_75;
    }

    swift_bridgeObjectRetain_n();
    MutableOrderedSet.value(at:)();
    if (v107)
    {
      v108 = v106;
      v109 = v107;
      v45 = MutableOrderedSet.index(of:)();
      if ((v46 & 1) == 0)
      {
        if (v45 == -1)
        {
          goto LABEL_77;
        }

        MutableOrderedSet.insert(_:at:)();

        v4 = v103;
        if (v41 < 0)
        {
          goto LABEL_76;
        }

        goto LABEL_41;
      }
    }

    MutableOrderedSet.add(_:)();

    sub_1004AE8B4();
    v4 = v103;
LABEL_24:
    v27 = v102;
LABEL_25:
    ++v39;
    v40 += 40;
    if (v28 == v39)
    {
      goto LABEL_45;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
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

uint64_t sub_1004ABF38()
{
  v1 = *v0;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007953F0;
  v3 = *(v1 + 16);
  *(v2 + 32) = v3;
  v4 = v3;
  return v2;
}

NSString sub_1004ABF98()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EB0 = result;
  return result;
}

uint64_t sub_1004ABFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = __chkstk_darwin(v4);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - v9;
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = sub_1000F5104(&qword_100949238, &qword_1007AD458);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = &v60 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a1;
  v65 = a2;
  v21 = 0;
  v22 = *(a1 + 64);
  v62 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v68 = v17;
  v69 = (v77 + 32);
  v75 = v12;
  v76 = (v77 + 8);
  v67 = &v60 - v19;
  v63 = v26;
  v74 = v77 + 16;
  v61 = v10;
  while (v25)
  {
    v27 = v10;
    v66 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_17:
    v33 = v64;
    v34 = v77;
    (*(v77 + 16))(v12, *(v64 + 48) + *(v77 + 72) * v28, v4);
    v35 = *(*(v33 + 56) + 8 * v28);
    v36 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
    v37 = *(v36 + 48);
    v38 = *(v34 + 32);
    v39 = v68;
    v38(v68, v12, v4);
    *&v39[v37] = v35;
    v17 = v39;
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);

    v20 = v67;
    v10 = v27;
LABEL_18:
    sub_100031B58(v17, v20, &qword_100949238, &qword_1007AD458);
    v40 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
    v41 = 1;
    if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
    {
      return v41;
    }

    v42 = *(v40 + 48);
    (*v69)(v10, v20, v4);
    v43 = *&v20[v42];
    v44 = v65;
    v45 = sub_100363F20(v10);
    v47 = v46;
    v48 = *v76;
    (*v76)(v10, v4);
    if ((v47 & 1) == 0 || (v49 = *(*(v44 + 56) + 8 * v45), v50 = *(v49 + 16), v50 != *(v43 + 16)))
    {
LABEL_32:

      return 0;
    }

    if (v50 && v49 != v43)
    {
      v51 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v71 = v49 + v51;
      v72 = v43;
      v70 = v43 + v51;

      v52 = 0;
      while (v52 < *(v49 + 16))
      {
        v53 = *(v77 + 72) * v52;
        v54 = *(v77 + 16);
        v55 = v75;
        result = v54(v75, v71 + v53, v4);
        if (v52 >= *(v72 + 16))
        {
          goto LABEL_37;
        }

        v56 = v70 + v53;
        v57 = v73;
        v54(v73, v56, v4);
        sub_10018E4E0();
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48(v57, v4);
        result = (v48)(v55, v4);
        if ((v58 & 1) == 0)
        {

          goto LABEL_32;
        }

        if (v50 == ++v52)
        {

          v10 = v61;
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v12 = v75;
    v20 = v67;
    v17 = v68;
    v26 = v63;
    v25 = v66;
  }

  if (v26 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v59 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
      (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
      v66 = 0;
      v21 = v30;
      goto LABEL_18;
    }

    v32 = *(v62 + 8 * v31);
    ++v21;
    if (v32)
    {
      v27 = v10;
      v66 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1004AC5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v71 = type metadata accessor for UUID();
  v65 = *(v71 - 8);
  v11 = *(v65 + 64);
  v12 = __chkstk_darwin(v71);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v56 - v14;
  v15 = sub_1000F5104(&qword_100949228, &qword_1007AD448);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v17);
  v68 = &v56 - v20;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v21 = 0;
  v60 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v56 = (v25 + 63) >> 6;
  v57 = v23;
  v58 = a2;
  v59 = v65 + 16;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  v63 = v8;
  v61 = v10;
  while (v27)
  {
    v28 = (v27 - 1) & v27;
    v29 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v35 = v60;
    v37 = v64;
    v36 = v65;
    v38 = v71;
    (*(v65 + 16))(v64, *(v60 + 48) + *(v65 + 72) * v29, v71);
    sub_1001CD744(*(v35 + 56) + *(v70 + 72) * v29, v10);
    v39 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v42 = v67;
    v41(v67, v37, v38);
    sub_10013FE70(v10, v42 + v40);
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    v32 = v68;
    v27 = v28;
    a2 = v58;
LABEL_17:
    sub_100031B58(v42, v32, &qword_100949228, &qword_1007AD448);
    v43 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
    v44 = (*(*(v43 - 8) + 48))(v32, 1, v43);
    v45 = v44 == 1;
    if (v44 == 1)
    {
      return v45;
    }

    v46 = *(v43 + 48);
    v47 = v66;
    v48 = v71;
    (*v69)(v66, v32, v71);
    v49 = v32 + v46;
    v50 = v63;
    sub_10013FE70(v49, v63);
    v51 = sub_100363F20(v47);
    LOBYTE(v46) = v52;
    (*v62)(v47, v48);
    if ((v46 & 1) == 0)
    {
      sub_1001CB574(v50);
      return 0;
    }

    v53 = *(a2 + 56) + *(v70 + 72) * v51;
    v10 = v61;
    sub_1001CD744(v53, v61);
    v54 = sub_1001C8F1C(v10, v50);
    sub_1001CB574(v10);
    result = sub_1001CB574(v50);
    if ((v54 & 1) == 0)
    {
      return v45;
    }
  }

  if (v56 <= v21 + 1)
  {
    v30 = v21 + 1;
  }

  else
  {
    v30 = v56;
  }

  v31 = v30 - 1;
  v32 = v68;
  while (1)
  {
    v33 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v33 >= v56)
    {
      v55 = sub_1000F5104(&qword_100949230, &qword_1007AD450);
      v42 = v67;
      (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
      v27 = 0;
      v21 = v31;
      goto LABEL_17;
    }

    v34 = *(v57 + 8 * v33);
    ++v21;
    if (v34)
    {
      v28 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v21 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004ACB00(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for UUID();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = v50 - v7;
  v8 = sub_1000F5104(&qword_100949200, &qword_1007AD418);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_100031B58(v35, v53, &qword_100949200, &qword_1007AD418);
    v37 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_100363F20(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_1003AEA7C(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = sub_1000F5104(&qword_100949208, &qword_1007AD420);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004ACF8C(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for UUID();
  v56 = *(v62 - 8);
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v62);
  v59 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = v52 - v7;
  v8 = sub_1000F5104(&qword_100949210, &qword_1007AD428);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = v52 - v12;
  v58 = v13;
  v14 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v52[0] = v16;
  v52[1] = v56 + 16;
  v60 = (v56 + 32);
  v54 = (v56 + 8);
  while (v20)
  {
    v61 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_17:
    v29 = v53;
    v30 = v56;
    (*(v56 + 16))(v55, *(v53 + 48) + *(v56 + 72) * v22, v62);
    v31 = (*(v29 + 56) + 16 * v22);
    v33 = *v31;
    v32 = v31[1];
    v34 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
    v35 = (v58 + *(v34 + 48));
    v26 = v58;
    (*(v30 + 32))();
    *v35 = v33;
    v35[1] = v32;
    (*(*(v34 - 8) + 56))(v26, 0, 1, v34);

    v25 = v57;
LABEL_18:
    sub_100031B58(v26, v25, &qword_100949210, &qword_1007AD428);
    v36 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
    v37 = (*(*(v36 - 8) + 48))(v25, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = (v25 + *(v36 + 48));
    v40 = v59;
    v41 = v62;
    (*v60)(v59, v25, v62);
    v42 = *v39;
    v43 = v39[1];
    v44 = sub_100363F20(v40);
    v46 = v45;
    result = (*v54)(v40, v41);
    if ((v46 & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v47 = (*(a2 + 56) + 16 * v44);
    v48 = v47[1];
    if (v48)
    {
      if (!v43)
      {
        return v38;
      }

      if (*v47 == v42 && v48 == v43)
      {

        v20 = v61;
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = v61;
        if ((v50 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else
    {
      v20 = v61;
      if (v43)
      {
        goto LABEL_31;
      }
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v25 = v57;
  v26 = v58;
  while (1)
  {
    v27 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v27 >= v21)
    {
      v51 = sub_1000F5104(&qword_100949218, &qword_1007AD430);
      (*(*(v51 - 8) + 56))(v26, 1, 1, v51);
      v61 = 0;
      v14 = v24;
      goto LABEL_18;
    }

    v28 = *(v52[0] + 8 * v27);
    ++v14;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v22 = __clz(__rbit64(v28)) | (v27 << 6);
      v14 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AD468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v72 = *(v4 - 8);
  v5 = v72[8];
  v6 = __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v65 = &v58 - v10;
  v11 = __chkstk_darwin(v9);
  v64 = &v58 - v12;
  __chkstk_darwin(v11);
  v73 = &v58 - v13;
  v14 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  result = __chkstk_darwin(v16);
  v67 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v67 + 16))
  {
    return 0;
  }

  v63 = &v58 - v18;
  v66 = v19;
  v20 = 0;
  v60 = a1;
  v21 = *(a1 + 64);
  v58 = a1 + 64;
  v59 = v8;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v69 = v72 + 2;
  v70 = (v72 + 4);
  v61 = v25;
  v62 = (v72 + 1);
  while (v24)
  {
    v71 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v20 << 6);
LABEL_16:
    v32 = v60;
    v33 = v72;
    v34 = v72[9] * v26;
    v35 = v72[2];
    v35(v73, *(v60 + 48) + v34, v4);
    v36 = v64;
    v35(v64, *(v32 + 56) + v34, v4);
    v37 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
    v38 = *(v37 + 48);
    v39 = v33[4];
    v40 = v66;
    v39(v66, v73, v4);
    v41 = v36;
    v29 = v40;
    v39(v40 + v38, v41, v4);
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
    v8 = v59;
LABEL_17:
    v42 = v29;
    v43 = v63;
    sub_100031B58(v42, v63, &qword_100949220, &qword_1007AD438);
    v44 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    v68 = v45 == 1;
    if (v45 == 1)
    {
      return v68;
    }

    v46 = v4;
    v47 = v73;
    v48 = *(v44 + 48);
    v49 = *v70;
    v50 = v65;
    (*v70)(v65, v43, v46);
    v49(v8, v43 + v48, v46);
    v51 = v67;
    v52 = v8;
    v53 = sub_100363F20(v50);
    LOBYTE(v48) = v54;
    v55 = *v62;
    (*v62)(v50, v46);
    if ((v48 & 1) == 0)
    {
      v55(v52, v46);
      return 0;
    }

    (v72[2])(v47, *(v51 + 56) + v72[9] * v53, v46);
    sub_10018E4E0();
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55(v47, v46);
    result = (v55)(v52, v46);
    v8 = v52;
    v4 = v46;
    v25 = v61;
    v24 = v71;
    if ((v56 & 1) == 0)
    {
      return v68;
    }
  }

  if (v25 <= v20 + 1)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 - 1;
  v29 = v66;
  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v25)
    {
      v57 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      (*(*(v57 - 8) + 56))(v29, 1, 1, v57);
      v71 = 0;
      v20 = v28;
      goto LABEL_17;
    }

    v31 = *(v58 + 8 * v30);
    ++v20;
    if (v31)
    {
      v71 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v20 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004ADA04(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100005F4C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1004ADBAC(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100005F4C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004ADD50(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100005F4C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004ADE8C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1004AE0E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1004ADF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1004AE0E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1001A0BCC(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AE25C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1004AE274@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1004AE2BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40 * v1 + 25);
    do
    {
      if (*v2 == 1)
      {
        v3 = *(v2 - 17);
        v4 = *(v2 - 9);
        v5 = *(v2 - 25);
        v6 = *(v2 - 33);
        v7 = *(v2 - 1);
        swift_bridgeObjectRetain_n();
        MutableOrderedSet.remove(_:)();
        sub_100369184(v5, v3);

        MutableOrderedSet.remove(_:)();

        result = sub_1004AE8B4();
      }

      v2 -= 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1004AE3B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_100005F4C(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_10037443C();
      }
    }

    else
    {
      v30 = v49;
      sub_10036C5F8(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_100005F4C(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004AE640(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v45[0] = *v15;
    v45[1] = v16;
    v45[2] = v17;

    a2(&v42, v45);

    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = *a5;
    v23 = sub_100005F4C(v42, v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v40 & 1) == 0)
      {
        sub_100373044();
      }
    }

    else
    {
      sub_100369F58(v26, v40 & 1);
      v28 = *a5;
      v29 = sub_100005F4C(v18, v19);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v23 = v29;
    }

    v9 &= v9 - 1;
    v31 = *a5;
    if (v27)
    {

      *(v31[7] + 8 * v23) = v20;
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004AE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004AE92C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004AE96C(*a1, a1[1], *(*(v2 + 16) + 24), *(*(v2 + 24) + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1004AE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (*(a3 + 16))
  {
    v8 = sub_100005F4C(a1, a2);
    if (v9)
    {
      if (!*(a4 + 16))
      {
        return 0;
      }

      v10 = *(*(a3 + 56) + 8 * v8);
      v11 = sub_100005F4C(v5, a2);
      if ((v12 & 1) == 0 || v10 >= *(*(a4 + 56) + 8 * v11))
      {
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1004AEA88()
{
  result = qword_1009491E0;
  if (!qword_1009491E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009491E0);
  }

  return result;
}

unint64_t sub_1004AEB24()
{
  result = qword_1009491F8;
  if (!qword_1009491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009491F8);
  }

  return result;
}

uint64_t sub_1004AEB78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x664F7368746E6F6DLL;
    v4 = 0x7469736F50746573;
    if (a1 != 8)
    {
      v4 = 0x54664F736B656577;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0x636E657571657266;
    if (a1 != 5)
    {
      v5 = 0x6C61767265746E69;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x4965746144646E65;
    if (a1 != 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0x6854664F73796164;
    }

    if (a1 <= 1u)
    {
      return 0x6854664F73796164;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1004AECE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100949288, &qword_1007AD5C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004B1230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  HIBYTE(v17) = 0;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  sub_1004B1310(&qword_100949290);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v18 = v3[1];
    HIBYTE(v17) = 1;
    sub_1000F5104(&qword_100949270, &qword_1007AD5B8);
    sub_1004B137C(&qword_100949298, sub_1004B13F4);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[2];
    HIBYTE(v17) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v3[3];
    v12 = *(v3 + 32);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = v3[5];
    LOBYTE(v18) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[6];
    LOBYTE(v18) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[7];
    LOBYTE(v18) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[8];
    HIBYTE(v17) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[9];
    HIBYTE(v17) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[10];
    HIBYTE(v17) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004AF088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004B0628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004AF0BC(uint64_t a1)
{
  v2 = sub_1004B1230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AF0F8(uint64_t a1)
{
  v2 = sub_1004B1230();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1004AF134@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004B098C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1004AF1A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1004AF488(v7, v9) & 1;
}

uint64_t sub_1004AF214(void *a1)
{
  v3 = sub_1000F5104(&qword_100949258, &qword_1007AD5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004B11DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1004AF39C(uint64_t a1)
{
  v2 = sub_1004B11DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AF3D8(uint64_t a1)
{
  v2 = sub_1004B11DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004AF414@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004B1034(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1004AF440(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1004AF214(a1);
}

uint64_t sub_1004AF488(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v2 + 16);
    if (v4 != *(v3 + 16))
    {
      return 0;
    }

    if (v4)
    {
      v5 = v2 == v3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = (v2 + 32);
      v7 = (v3 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          return 0;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_59;
    }
  }

  else if (v3)
  {
    return 0;
  }

LABEL_14:
  v8 = *(result + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = v8[1].i64[0];
    if (v10 != v9[1].i64[0])
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = v8 + 2;
      v13 = v9 + 2;
      while (v10)
      {
        v14 = vmovn_s64(vceqq_s64(*v12, *v13));
        if ((v14.i32[0] & v14.i32[1] & 1) == 0)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_65;
    }
  }

  else if (v9)
  {
    return 0;
  }

LABEL_27:
  v15 = *(result + 16);
  v16 = *(a2 + 16);
  if (!v15)
  {
    if (v16)
    {
      return 0;
    }

LABEL_40:
    v21 = *(a2 + 32);
    if (*(result + 32))
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 24) != *(a2 + 24))
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (*(result + 40) != *(a2 + 40) || *(result + 48) != *(a2 + 48) || *(result + 56) != *(a2 + 56))
    {
      return 0;
    }

    v22 = *(a2 + 64);
    if (*(result + 64))
    {
      if (!v22)
      {
        return 0;
      }

      v23 = result;
      v24 = a2;
      v25 = sub_1003AE66C(*(result + 64), *(a2 + 64));
      a2 = v24;
      v26 = v25;
      result = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }

    v4 = *(a2 + 72);
    if (*(result + 72))
    {
      if (v4)
      {
        v27 = result;
        v28 = a2;
        v29 = sub_1003AE66C(*(result + 72), *(a2 + 72));
        a2 = v28;
        v30 = v29;
        result = v27;
        if (v30)
        {
LABEL_60:
          v31 = *(result + 80);
          a2 = *(a2 + 80);
          if (v31)
          {
            return a2 && (sub_1003AE66C(v31, a2) & 1) != 0;
          }

LABEL_65:
          if (!a2)
          {
            return 1;
          }
        }
      }

      return 0;
    }

LABEL_59:
    if (!v4)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = *(v15 + 16);
  if (v17 != *(v16 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v15 == v16;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_40;
  }

  v19 = (v15 + 32);
  v20 = (v16 + 32);
  while (v17)
  {
    if (*v19 != *v20)
    {
      return 0;
    }

    ++v19;
    ++v20;
    if (!--v17)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

void sub_1004AF6D8(id a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = &v104 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = __chkstk_darwin(v8).n128_u64[0];
  v105 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 daysOfTheMonth];
  v112 = a1;
  v113 = v9;
  if (!v13)
  {
    v109 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:

    v109 = _swiftEmptyArrayStorage;
    a1 = v112;
    goto LABEL_16;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_4:
  v114 = _swiftEmptyArrayStorage;
  sub_100253830(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  v17 = 0;
  v18 = v114;
  do
  {
    v19 = v18;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v15 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = [v20 integerValue];

    v18 = v19;
    v114 = v19;
    v23 = v19[2];
    v24 = v18[3];
    if (v23 >= v24 >> 1)
    {
      sub_100253830((v24 > 1), v23 + 1, 1);
      v18 = v114;
    }

    ++v17;
    v18[2] = v23 + 1;
    v18[v23 + 4] = v22;
  }

  while (v16 != v17);
  v109 = v18;

  a1 = v112;
  v9 = v113;
LABEL_16:
  v25 = [a1 daysOfTheWeek];
  if (!v25)
  {
    v108 = 0;
    goto LABEL_31;
  }

  v26 = v25;
  sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_30:

    v108 = _swiftEmptyArrayStorage;
    a1 = v112;
    goto LABEL_31;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_19:
  v114 = _swiftEmptyArrayStorage;
  sub_100253800(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v107 = v8;
  v29 = 0;
  v30 = v114;
  do
  {
    v31 = v30;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v32 = *(v27 + 8 * v29 + 32);
    }

    v33 = v32;
    v34 = [v32 dayOfTheWeek];
    v35 = [v33 weekNumber];

    v30 = v31;
    v114 = v31;
    v36 = v31[2];
    v37 = v30[3];
    if (v36 >= v37 >> 1)
    {
      sub_100253800((v37 > 1), v36 + 1, 1);
      v30 = v114;
    }

    ++v29;
    v30[2] = v36 + 1;
    v38 = &v30[2 * v36];
    v38[4] = v34;
    v38[5] = v35;
  }

  while (v28 != v29);
  v108 = v30;

  a1 = v112;
  v9 = v113;
  v8 = v107;
LABEL_31:
  v39 = [a1 daysOfTheYear];
  if (!v39)
  {
    v107 = 0;
    goto LABEL_46;
  }

  v40 = v39;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_34;
    }

LABEL_45:

    v107 = _swiftEmptyArrayStorage;
    a1 = v112;
    goto LABEL_46;
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
  if (!v42)
  {
    goto LABEL_45;
  }

LABEL_34:
  v114 = _swiftEmptyArrayStorage;
  sub_100253830(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v43 = 0;
  v44 = v114;
  do
  {
    v45 = v44;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *(v41 + 8 * v43 + 32);
    }

    v47 = v46;
    v48 = [v46 integerValue];

    v44 = v45;
    v114 = v45;
    v49 = v45[2];
    v50 = v44[3];
    if (v49 >= v50 >> 1)
    {
      sub_100253830((v50 > 1), v49 + 1, 1);
      v44 = v114;
    }

    ++v43;
    v44[2] = v49 + 1;
    v44[v49 + 4] = v48;
  }

  while (v42 != v43);
  v107 = v44;

  a1 = v112;
  v9 = v113;
LABEL_46:
  v51 = [a1 recurrenceEnd];
  if (!v51)
  {
    v55 = v111;
    (*(v9 + 56))(v111, 1, 1, v8);
LABEL_52:
    sub_1001AAD5C(v55);
    v56 = 0;
    v57 = 1;
    goto LABEL_54;
  }

  v52 = v51;
  v53 = [v51 endDate];

  v54 = v106;
  if (v53)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 56))(v54, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v106, 1, 1, v8);
  }

  v55 = v111;
  sub_10012F7FC(v54, v111);
  if ((*(v9 + 48))(v55, 1, v8) == 1)
  {
    goto LABEL_52;
  }

  v58 = v105;
  (*(v9 + 32))(v105, v55, v8);
  Date.timeIntervalSinceReferenceDate.getter();
  v56 = v59;
  (*(v9 + 8))(v58, v8);
  v57 = 0;
LABEL_54:
  v115 = v57;
  v60 = [a1 firstDayOfTheWeek];
  v61 = [a1 frequency];
  v62 = [a1 interval];
  v63 = [a1 monthsOfTheYear];
  v111 = v60;
  v105 = v62;
  v106 = v61;
  if (!v63)
  {
    v68 = 0;
    goto LABEL_69;
  }

  v64 = v63;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_57;
    }

LABEL_68:

    v68 = _swiftEmptyArrayStorage;
    goto LABEL_69;
  }

  v66 = _CocoaArrayWrapper.endIndex.getter();
  if (!v66)
  {
    goto LABEL_68;
  }

LABEL_57:
  v114 = _swiftEmptyArrayStorage;
  sub_100253830(0, v66 & ~(v66 >> 63), 0);
  if (v66 < 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v67 = 0;
  v68 = v114;
  do
  {
    if ((v65 & 0xC000000000000001) != 0)
    {
      v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v69 = *(v65 + 8 * v67 + 32);
    }

    v70 = v69;
    v71 = [v69 integerValue];

    v114 = v68;
    v73 = v68[2];
    v72 = v68[3];
    if (v73 >= v72 >> 1)
    {
      sub_100253830((v72 > 1), v73 + 1, 1);
      v68 = v114;
    }

    ++v67;
    v68[2] = v73 + 1;
    v68[v73 + 4] = v71;
  }

  while (v66 != v67);

  a1 = v112;
LABEL_69:
  v74 = [a1 setPositions];
  if (!v74)
  {
    v79 = 0;
    goto LABEL_84;
  }

  v75 = v74;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v76 >> 62))
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_72;
    }

LABEL_83:

    v79 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v77 = _CocoaArrayWrapper.endIndex.getter();
  if (!v77)
  {
    goto LABEL_83;
  }

LABEL_72:
  v114 = _swiftEmptyArrayStorage;
  sub_100253830(0, v77 & ~(v77 >> 63), 0);
  if (v77 < 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v78 = 0;
  v79 = v114;
  do
  {
    if ((v76 & 0xC000000000000001) != 0)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v80 = *(v76 + 8 * v78 + 32);
    }

    v81 = v80;
    v82 = [v80 integerValue];

    v114 = v79;
    v84 = v79[2];
    v83 = v79[3];
    if (v84 >= v83 >> 1)
    {
      sub_100253830((v83 > 1), v84 + 1, 1);
      v79 = v114;
    }

    ++v78;
    v79[2] = v84 + 1;
    v79[v84 + 4] = v82;
  }

  while (v77 != v78);

  a1 = v112;
LABEL_84:
  v85 = [a1 weeksOfTheYear];
  if (!v85)
  {

    v91 = 0;
LABEL_99:
    v99 = v115;
    v100 = v110;
    v101 = v108;
    *v110 = v109;
    v100[1] = v101;
    v100[2] = v107;
    v100[3] = v56;
    *(v100 + 32) = v99;
    v102 = v105;
    v103 = v106;
    v100[5] = v111;
    v100[6] = v103;
    v100[7] = v102;
    v100[8] = v68;
    v100[9] = v79;
    v100[10] = v91;
    return;
  }

  v86 = v85;
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v88 = v87;
  if (!(v87 >> 62))
  {
    v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      goto LABEL_87;
    }

    goto LABEL_98;
  }

  v89 = _CocoaArrayWrapper.endIndex.getter();
  if (!v89)
  {
LABEL_98:

    v91 = _swiftEmptyArrayStorage;
    goto LABEL_99;
  }

LABEL_87:
  v114 = _swiftEmptyArrayStorage;
  sub_100253830(0, v89 & ~(v89 >> 63), 0);
  if ((v89 & 0x8000000000000000) == 0)
  {
    v90 = 0;
    v91 = v114;
    v92 = v88;
    v113 = v88 & 0xC000000000000001;
    v93 = v89;
    do
    {
      if (v113)
      {
        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v94 = *(v92 + 8 * v90 + 32);
      }

      v95 = v94;
      v96 = [v94 integerValue];

      v114 = v91;
      v98 = v91[2];
      v97 = v91[3];
      if (v98 >= v97 >> 1)
      {
        sub_100253830((v97 > 1), v98 + 1, 1);
        v91 = v114;
      }

      ++v90;
      v91[2] = v98 + 1;
      v91[v98 + 4] = v96;
      v92 = v88;
    }

    while (v93 != v90);

    goto LABEL_99;
  }

LABEL_105:
  __break(1u);
}

uint64_t destroy for RDSavedRecurrenceRule(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[8];

  v6 = a1[9];

  v7 = a1[10];
}

uint64_t initializeWithCopy for RDSavedRecurrenceRule(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;

  return a1;
}

uint64_t *assignWithCopy for RDSavedRecurrenceRule(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a2[3];
  *(a1 + 32) = *(a2 + 32);
  a1[3] = v7;
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  v8 = a1[8];
  a1[8] = a2[8];

  v9 = a1[9];
  a1[9] = a2[9];

  v10 = a1[10];
  a1[10] = a2[10];

  return a1;
}

__n128 initializeWithTake for RDSavedRecurrenceRule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t *assignWithTake for RDSavedRecurrenceRule(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  a1[3] = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 5) = *(a2 + 40);
  a1[7] = *(a2 + 56);
  v7 = a1[8];

  v8 = a1[9];
  *(a1 + 4) = *(a2 + 64);

  v9 = a1[10];
  a1[10] = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedRecurrenceRule(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RDSavedRecurrenceRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1004B0628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6854664F73796164 && a2 == 0xEE0068746E6F4D65;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00007261655965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4965746144646E65 && a2 == 0xEF6C61767265746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007EA820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x664F7368746E6F6DLL && a2 == 0xEF72616559656854 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469736F50746573 && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x54664F736B656577 && a2 == 0xEE00726165596568)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1004B098C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100949260, &qword_1007AD5A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004B1230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v32 = a2;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  LOBYTE(v33) = 0;
  sub_1004B1310(&qword_10093EED8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v39[0];
  sub_1000F5104(&qword_100949270, &qword_1007AD5B8);
  LOBYTE(v33) = 1;
  sub_1004B137C(&qword_100949278, sub_1004B1284);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v39[0];
  LOBYTE(v33) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v39[0];
  LOBYTE(v39[0]) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v11 & 1;
  LOBYTE(v39[0]) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v39[0]) = 5;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v39[0]) = 6;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v33) = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v39[0];
  LOBYTE(v33) = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v39[0];
  v49 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v23 = v47;
  *&v33 = v31;
  *(&v33 + 1) = v30;
  v13 = v29;
  *&v34 = v29;
  *(&v34 + 1) = v28;
  v14 = v48;
  LOBYTE(v35) = v48;
  v15 = v27;
  *(&v35 + 1) = v27;
  *&v36 = v12;
  v16 = v26;
  v17 = v25;
  *(&v36 + 1) = v26;
  *&v37 = v25;
  v18 = v24;
  *(&v37 + 1) = v24;
  v38 = v47;
  sub_1004B12D8(&v33, v39);
  sub_10000607C(a1);
  v39[0] = v31;
  v39[1] = v30;
  v39[2] = v13;
  v39[3] = v28;
  v40 = v14;
  v41 = v15;
  v42 = v12;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v23;
  result = sub_100311E40(v39);
  v20 = v36;
  v21 = v32;
  *(v32 + 32) = v35;
  *(v21 + 48) = v20;
  *(v21 + 64) = v37;
  *(v21 + 80) = v38;
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  return result;
}

uint64_t sub_1004B1034(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_100949248, &qword_1007AD598);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004B11DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v8;
}

unint64_t sub_1004B11DC()
{
  result = qword_100949250;
  if (!qword_100949250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949250);
  }

  return result;
}

unint64_t sub_1004B1230()
{
  result = qword_100949268;
  if (!qword_100949268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949268);
  }

  return result;
}

unint64_t sub_1004B1284()
{
  result = qword_100949280;
  if (!qword_100949280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949280);
  }

  return result;
}

uint64_t sub_1004B1310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094EC10, &qword_1007AD5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004B137C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100949270, &qword_1007AD5B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004B13F4()
{
  result = qword_1009492A0;
  if (!qword_1009492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedRecurrenceRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedRecurrenceRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004B15AC()
{
  result = qword_1009492A8;
  if (!qword_1009492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492A8);
  }

  return result;
}

unint64_t sub_1004B1604()
{
  result = qword_1009492B0;
  if (!qword_1009492B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492B0);
  }

  return result;
}

unint64_t sub_1004B165C()
{
  result = qword_1009492B8;
  if (!qword_1009492B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492B8);
  }

  return result;
}

unint64_t sub_1004B16B4()
{
  result = qword_1009492C0;
  if (!qword_1009492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492C0);
  }

  return result;
}

unint64_t sub_1004B170C()
{
  result = qword_1009492C8;
  if (!qword_1009492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492C8);
  }

  return result;
}

unint64_t sub_1004B1764()
{
  result = qword_1009492D0;
  if (!qword_1009492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009492D0);
  }

  return result;
}

uint64_t sub_1004B17B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009492E0);
  v1 = sub_100006654(v0, qword_1009492E0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B1880()
{
  v0 = type metadata accessor for Date();
  sub_1000EECAC(v0, qword_1009492F8);
  sub_100006654(v0, qword_1009492F8);
  return Date.init(timeIntervalSinceReferenceDate:)();
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.__allocating_init(maxReminderCountToMigrate:lastModifiedAfterDate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = a1;
  sub_10012F78C(a2, &v5[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
  return v6;
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.init(maxReminderCountToMigrate:lastModifiedAfterDate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = a1;
  sub_10012F78C(a2, &v2[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_1000050A4(a2, &unk_100938850, qword_100795AE0);
  return v6;
}

Swift::Void __swiftcall RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  if (qword_1009362A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_1009492E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders: migrating if needed", v7, 2u);
  }

  *&v12 = 0xD000000000000044;
  *(&v12 + 1) = 0x80000001007AD7D0;
  v8 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1000050A4(v14, &qword_100939ED0, &qword_100791B10);
LABEL_13:
    sub_1004B1E6C(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v14[0] = 0xD000000000000044;
    *(&v14[0] + 1) = 0x80000001007AD7D0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = [v11 integerValue];

  if (v9 < 1)
  {
    goto LABEL_13;
  }
}

void sub_1004B1E6C(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v45 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  *&v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v52 + 1) = v16;
  v17 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  aBlock = v52;
  v49 = v53;
  if (*(&v53 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    UUID.init(uuidString:)();

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v30 = *(v10 + 32);
      v45[1] = v10 + 32;
      v46 = v30;
      v30(v15, v8, v9);
      v31 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
      v32 = [isEscapingClosureAtFileLocation persistentStoreCoordinator];
      [v31 setPersistentStoreCoordinator:v32];

      v33 = v10;
      v47 = v10;
      v34 = v31;
      [v31 setTransactionAuthor:RDStoreControllerUpdateAlternativeDueDatesOfCalDavRemindersMigrationAuthor];
      (*(v33 + 16))(v12, v15, v9);
      v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v45[0] = v2;
      v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      v46(v38 + v35, v12, v9);
      *(v38 + v36) = v34;
      *(v38 + v37) = isEscapingClosureAtFileLocation;
      v39 = v45[0];
      *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45[0];
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1004B4180;
      *(v40 + 24) = v38;
      v50 = sub_1000529DC;
      v51 = v40;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v49 = sub_10000F160;
      *(&v49 + 1) = &unk_1008F3F70;
      v41 = _Block_copy(&aBlock);
      v42 = v34;
      v43 = isEscapingClosureAtFileLocation;
      v44 = v39;

      [v42 performBlockAndWait:v41];
      _Block_release(v41);

      (*(v47 + 8))(v15, v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_17;
    }

    v18 = &unk_100939D90;
    v19 = "8\n\r";
    p_aBlock = v8;
  }

  else
  {
    v18 = &qword_100939ED0;
    v19 = &qword_100791B10;
    p_aBlock = &aBlock;
  }

  sub_1000050A4(p_aBlock, v18, v19);
LABEL_10:
  if (qword_1009362A0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_1009492E0);
  v22 = isEscapingClosureAtFileLocation;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&aBlock = v26;
    *v25 = 136446210;
    v27 = sub_1003533B0();
    v29 = sub_10000668C(v27, v28, &aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "UpdateAlternativeDueDatesOfCalDavReminders: accountIdentifier is nil, skip migration {store: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }
}

void sub_1004B24A8(uint64_t a1, void (**a2)(char *, uint64_t), void *a3)
{
  v5 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [v5 objectIDWithUUID:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_10000F8A4(v8, 0, 1u);

  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];
  v13 = NSManagedObjectContext.fetch<A>(_:)();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:

    if (qword_1009362A0 == -1)
    {
LABEL_28:
      v58 = type metadata accessor for Logger();
      sub_100006654(v58, qword_1009492E0);
      v59 = v9;
      v60 = a3;
      v70 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v71 = v64;
        *v62 = 138412546;
        *(v62 + 4) = v59;
        *v63 = v59;
        *(v62 + 12) = 2082;
        v65 = v59;
        v66 = sub_1003533B0();
        v68 = sub_10000668C(v66, v67, &v71);

        *(v62 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v70, v61, "UpdateAlternativeDueDatesOfCalDavReminders: account not found {accountID: %@, store: %{public}s}", v62, 0x16u);
        sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

        sub_10000607C(v64);

        return;
      }

      goto LABEL_31;
    }

LABEL_36:
    swift_once();
    goto LABEL_28;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v14 = *(v13 + 32);
LABEL_6:
  v70 = v14;

  v15 = [v70 accountTypeHost];
  v16 = [v15 isCalDav];

  if (v16)
  {
    if (qword_1009362A0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_1009492E0);
    v18 = a3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71 = v69;
      *v21 = 136446210;
      v22 = sub_1003533B0();
      v24 = v9;
      v25 = v18;
      v26 = sub_10000668C(v22, v23, &v71);

      *(v21 + 4) = v26;
      v18 = v25;
      v9 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "UpdateAlternativeDueDatesOfCalDavReminders BEGIN {store: %{public}s}", v21, 0xCu);
      sub_10000607C(v69);
    }

    v27 = objc_autoreleasePoolPush();
    sub_1004B310C(a2, v18);
    objc_autoreleasePoolPop(v27);
    if ([a2 hasChanges])
    {
      v71 = 0;
      if ([a2 save:&v71])
      {
        v41 = v71;
      }

      else
      {
        v42 = v71;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v71 = v46;
          *v45 = 136446210;
          swift_getErrorValue();
          v47 = Error.rem_errorDescription.getter();
          v49 = sub_10000668C(v47, v48, &v71);

          *(v45 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v43, v44, "UpdateAlternativeDueDatesOfCalDavReminders: error saving MOC {error: %{public}s}", v45, 0xCu);
          sub_10000607C(v46);
        }

        else
        {
        }
      }
    }

    v50 = v18;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71 = v54;
      *v53 = 136446210;
      v55 = sub_1003533B0();
      v57 = sub_10000668C(v55, v56, &v71);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "UpdateAlternativeDueDatesOfCalDavReminders END {store: %{public}s}", v53, 0xCu);
      sub_10000607C(v54);
    }

    return;
  }

  if (qword_1009362A0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_1009492E0);
  v29 = v9;
  v30 = a3;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v71 = v35;
    *v33 = 138412546;
    *(v33 + 4) = v29;
    *v34 = v29;
    *(v33 + 12) = 2082;
    v36 = v29;
    v37 = sub_1003533B0();
    v39 = sub_10000668C(v37, v38, &v71);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "UpdateAlternativeDueDatesOfCalDavReminders: skip non-CalDAV account {accountID: %@, store: %{public}s}", v33, 0x16u);
    sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

    sub_10000607C(v35);

    return;
  }

LABEL_31:
}

unint64_t sub_1004B310C(void (**a1)(char *, uint64_t), unint64_t a2)
{
  result = sub_1004B3414(a1, a2);
  if (!v2)
  {
    v4 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          v9 = objc_autoreleasePoolPush();
          sub_1004B4224(v8);
          objc_autoreleasePoolPop(v9);
        }
      }
    }
  }

  return result;
}

void (**sub_1004B3414(void (**a1)(char *, uint64_t), unint64_t a2))(char *, uint64_t)
{
  v64 = a1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate, v7);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v70 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  if (qword_100936058 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v10 = qword_100974E08;
    v63[3] = v9;
    *(v9 + 32) = qword_100974E08;
    v11 = *(v2 + OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100799D70;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = v70;
    *(v13 + 32) = a2;
    v14 = v10;
    v15 = a2;
    v67 = v7;
    v16 = sub_100043AA8();
    v17 = [objc_allocWithZone(NSFetchRequest) init];
    v18 = [swift_getObjCClassFromMetadata() entity];
    [v17 setEntity:v18];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v63[1] = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v17 setAffectedStores:isa];

    [v17 setPredicate:v16];
    [v17 setFetchLimit:v11];
    v66 = v17;
    [v17 setFetchOffset:0];
    v73 = _swiftEmptyArrayStorage;
    a2 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_1002E0F3C();
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v75 = _swiftEmptyArrayStorage;
    v2 = &v75;
    v9 = sub_100026EF4(0, 3, 0);
    v21 = inited;
    v7 = v75;
    v22 = inited & 0xFFFFFFFFFFFFFF8;
    v23 = v21 & 0xC000000000000001;
    v68 = v21;
    v63[2] = v8;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v22 + 16))
      {
        goto LABEL_40;
      }

      v24 = *(v21 + 32);
    }

    v2 = v24;
    v25 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v26)
    {
      goto LABEL_50;
    }

    a2 = v25;
    v27 = v26;

    v8 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v8 >= v28 >> 1)
    {
      v2 = &v75;
      v9 = sub_100026EF4((v28 > 1), v8 + 1, 1);
      v7 = v75;
    }

    *(v7 + 2) = v8 + 1;
    v29 = &v7[16 * v8];
    *(v29 + 4) = a2;
    *(v29 + 5) = v27;
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v22 + 16) < 2uLL)
      {
        goto LABEL_40;
      }

      v24 = *(v68 + 40);
    }

    v2 = v24;
    v30 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v31)
    {
      goto LABEL_50;
    }

    a2 = v30;
    v32 = v31;

    v75 = v7;
    v8 = *(v7 + 2);
    v33 = *(v7 + 3);
    if (v8 >= v33 >> 1)
    {
      v2 = &v75;
      v9 = sub_100026EF4((v33 > 1), v8 + 1, 1);
      v7 = v75;
    }

    *(v7 + 2) = v8 + 1;
    v34 = &v7[16 * v8];
    *(v34 + 4) = a2;
    *(v34 + 5) = v32;
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_20;
    }

    if (*(v22 + 16) >= 3uLL)
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v54 = v9;
    swift_once();
    v9 = v54;
  }

  v24 = *(v68 + 48);

LABEL_20:
  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v36)
  {
    goto LABEL_50;
  }

  v37 = v35;
  v38 = v36;

  v75 = v7;
  v40 = *(v7 + 2);
  v39 = *(v7 + 3);
  if (v40 >= v39 >> 1)
  {
    sub_100026EF4((v39 > 1), v40 + 1, 1);
    v7 = v75;
  }

  *(v7 + 2) = v40 + 1;
  v41 = &v7[16 * v40];
  *(v41 + 4) = v37;
  *(v41 + 5) = v38;
  v76 = v7;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v42 = v76;
  sub_10003450C(v76);
  v43 = Array._bridgeToObjectiveC()().super.isa;

  v44 = v66;
  [v66 setPropertiesToFetch:v43];

  v71 = sub_1003EBAD0();
  sub_100271EA8(_swiftEmptyArrayStorage);
  v45 = sub_100235FA0(Predicate);

  v46 = sub_100277CC0(v45);

  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
    v47 = *(v46 + 16);
    v24 = v67;
    if (!v47)
    {
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  v47 = _CocoaArrayWrapper.endIndex.getter();
  v24 = v67;
  if (v47)
  {
LABEL_26:
    v75 = _swiftEmptyArrayStorage;
    v2 = &v75;
    v9 = sub_100026EF4(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
LABEL_48:
      v73 = 0;
      v74 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v61._object = 0x80000001007EC120;
      v61._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v61);
      for (i = v23; ; i = v24)
      {
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_50:
        v73 = 0;
        v74 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v62._object = 0x80000001007EC120;
        v62._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v62);
      }
    }

    v63[0] = v42;
    a2 = 0;
    v48 = v75;
    v69 = v47;
    *&v70 = v46 & 0xC000000000000001;
    while (1)
    {
      v7 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v70)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v46 + 16))
        {
          goto LABEL_39;
        }

        v23 = *(v46 + 8 * a2 + 32);
      }

      v2 = v23;
      v49 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v50)
      {
        goto LABEL_48;
      }

      v24 = v49;
      v51 = v50;

      v75 = v48;
      v8 = *(v48 + 2);
      v52 = *(v48 + 3);
      if (v8 >= v52 >> 1)
      {
        v2 = &v75;
        v9 = sub_100026EF4((v52 > 1), v8 + 1, 1);
        v48 = v75;
      }

      *(v48 + 2) = v8 + 1;
      v53 = &v48[16 * v8];
      *(v53 + 4) = v24;
      *(v53 + 5) = v51;
      ++a2;
      if (v7 == v69)
      {

        v44 = v66;
        v24 = v67;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:

  v48 = _swiftEmptyArrayStorage;
LABEL_44:
  sub_100271EA8(v48);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v55 = Array._bridgeToObjectiveC()().super.isa;

  [v44 setRelationshipKeyPathsForPrefetching:v55];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v56 = Array._bridgeToObjectiveC()().super.isa;
  [v44 setSortDescriptors:v56];

  v57 = v64;
  v58 = v65;
  v59 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v58)
  {
    v57 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v59);
  }

  sub_1000513B4(v24);
  return v57;
}

void sub_1004B3D30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 importedICSData];
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

void sub_1004B3D98(uint64_t *a1, void **a2)
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
  [v2 setImportedICSData:?];
}

uint64_t sub_1004B3E10@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 alternativeDisplayDateDate_forCalendar];
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

  return v7(a2, v5, 1, v6);
}

void sub_1004B3EB4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAlternativeDisplayDateDate_forCalendar:isa];
}

uint64_t sub_1004B3FE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100005EF0(a1, &v4);
  sub_1000060C8(0, &qword_100949360, ICSTodo_ptr);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t type metadata accessor for RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders()
{
  result = qword_100949348;
  if (!qword_100949348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B40E0()
{
  sub_100140DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1004B4180()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004B24A8(v0 + v2, v5, v6);
}

void sub_1004B4224(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  *&v9 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v11 = &v47 - v10;
  v12 = [a1 alternativeDisplayDateDate_forCalendar];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v11, 0, 1, v2);
    sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
    return;
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
  v14 = [a1 importedICSData];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = objc_allocWithZone(ICSDocument);
    sub_100029344(v16, v18);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v16, v18);
    v53 = 0;
    v21 = [v19 initWithData:isa options:0 error:&v53];

    if (v21)
    {
      v22 = v53;
      v51 = v21;
      v23 = [v21 calendar];
      if (!v23)
      {
        goto LABEL_11;
      }

      v24 = v23;
      v25 = [v23 components];

      if (!v25)
      {
        goto LABEL_11;
      }

      v52 = v25;
      v49 = sub_1000060C8(0, &qword_100949358, NSMutableArray_ptr);
      sub_1000060C8(0, &qword_100949360, ICSTodo_ptr);
      v50 = v16;
      sub_1004B4864();
      v16 = v50;
      Sequence.firstMap<A>(_:)();

      v26 = v53;
      if (v53)
      {
        v27 = [v53 x_apple_alternative_due_date_for_calendar];
        if (v27)
        {
          v49 = v27;
          v28 = [v27 rem_dateAsUTC];
          if (v28)
          {
            v29 = v28;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v30.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v3 + 8))(v6, v2);
          }

          else
          {
            v30.super.isa = 0;
          }

          [a1 setAlternativeDisplayDateDate_forCalendar:v30.super.isa];

          v36 = [a1 remObjectID];
          if (qword_1009362A0 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100006654(v37, qword_1009492E0);
          v38 = v36;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v47 = v18;
            v48 = v38;
            v43 = v42;
            v52 = v36;
            v53 = v42;
            *v41 = 136446210;
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v44 = Optional.descriptionOrNil.getter();
            v46 = sub_10000668C(v44, v45, &v53);

            *(v41 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v39, v40, "UpdateAlternativeDueDatesOfCalDavReminders: set ADD {reminderID: %{public}s}}", v41, 0xCu);
            sub_10000607C(v43);

            sub_10001BBA0(v16, v47);
          }

          else
          {
            sub_10001BBA0(v16, v18);
          }

          return;
        }
      }

      else
      {
LABEL_11:
        v31 = objc_opt_self();
        v32 = String._bridgeToObjectiveC()();
        [v31 internalErrorWithDebugDescription:v32];

        swift_willThrow();
      }
    }

    else
    {
      v33 = v16;
      v34 = v18;
      v35 = v53;
      _convertNSErrorToError(_:)();

      v18 = v34;
      v16 = v33;
      swift_willThrow();
    }

    sub_10001BBA0(v16, v18);
  }
}

unint64_t sub_1004B4864()
{
  result = qword_100949368;
  if (!qword_100949368)
  {
    sub_1000060C8(255, &qword_100949358, NSMutableArray_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949368);
  }

  return result;
}

void sub_1004B48E4(uint64_t *a1)
{
  v2 = v1;
  v152 = *v1;
  v148 = type metadata accessor for UUID();
  v150 = *(v148 - 8);
  v4 = *(v150 + 8);
  __chkstk_darwin(v148);
  v147 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v153 = *(v6 - 8);
  v7 = *(v153 + 64);
  __chkstk_darwin(v6);
  v143 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = v133 - v10;
  __chkstk_darwin(v11);
  v13 = v133 - v12;
  __chkstk_darwin(v14);
  v16 = v133 - v15;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100949378);
  swift_retain_n();
  v146 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v145 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v16;
    v24 = a1;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v154 = v23;
    v149 = v6;
    v27 = v26;
    v157 = v26;
    *v22 = 136446978;
    v155 = v152;
    swift_getMetatypeMetadata();
    v28 = String.init<A>(describing:)();
    v30 = v2;
    v31 = sub_10000668C(v28, v29, &v157);

    *(v22 + 4) = v31;
    v2 = v30;
    *(v22 + 12) = 2114;
    v32 = v30[2];
    v33 = v30[3];
    *(v22 + 14) = v32;
    *(v22 + 22) = 2114;
    *(v22 + 24) = v33;
    *v25 = v32;
    v25[1] = v33;
    *(v22 + 32) = 2048;
    v34 = v32;
    v35 = v33;

    *(v22 + 34) = 50;

    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Start execution {templateObjectID: %{public}@, sourceListObjectID: %{public}@, limitPerSave: %ld}", v22, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    a1 = v24;

    sub_10000607C(v27);
    v6 = v149;
    v16 = v154;
  }

  else
  {
  }

  Date.init()();
  v36 = v2[2];
  v37 = v151;
  v38 = sub_10034AE0C(v36, a1, 0, 0);
  if (v37)
  {
    (*(v153 + 8))(v16, v6);
    return;
  }

  v154 = v16;
  v39 = v38;
  v40 = [v38 objectID];

  v41 = (*(*v2 + 144))(a1);
  v141 = v40;
  v138 = 0;
  v42 = *(v153 + 16);
  v43 = v145;
  v133[1] = v153 + 16;
  v133[0] = v42;
  v42(v145, v154, v6);
  swift_bridgeObjectRetain_n();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = os_log_type_enabled(v44, v45);
  v149 = v6;
  v142 = a1;
  v136 = v36;
  if (v46)
  {
    v47 = v6;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v139 = v49;
    v151 = swift_slowAlloc();
    v157 = v151;
    *v48 = 136446978;
    v155 = v152;
    swift_getMetatypeMetadata();
    v50 = String.init<A>(describing:)();
    LODWORD(v140) = v45;
    v52 = sub_10000668C(v50, v51, &v157);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2114;
    v53 = v2[3];
    *(v48 + 14) = v53;
    *v49 = v53;
    *(v48 + 22) = 2048;
    v54 = *(v41 + 2);
    v55 = v53;

    *(v48 + 24) = v54;

    *(v48 + 32) = 2048;
    v56 = v144;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v58 = v57;
    v59 = v43;
    v60 = *(v153 + 8);
    v60(v56, v47);
    v137 = v60;
    v60(v59, v47);
    *(v48 + 34) = v58;
    _os_log_impl(&_mh_execute_header, v44, v140, "%{public}s: Fetched reminders in source list {sourceListObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v48, 0x2Au);
    sub_1000050A4(v139, &unk_100938E70, &unk_100797230);

    sub_10000607C(v151);

    v36 = v136;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v137 = *(v153 + 8);
    v137(v43, v6);
  }

  v145 = v41;
  v155 = v41;
  sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
  sub_10048F8E0();
  v151 = BidirectionalCollection<>.slices(by:)();
  v155 = 0;
  v61 = [v36 uuid];
  v62 = v147;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = UUID.uuidString.getter();
  v65 = v64;
  v66 = *(v150 + 1);
  v150 += 8;
  v134 = v66;
  v66(v62, v148);
  v135 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v157 = v135;
  type metadata accessor for REMCDManualSortHint();
  v140 = v2;
  v67 = v2[4];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v139 = v67;
  v68 = [v142 persistentStoreOfAccountWithAccountID:?];
  v69 = "Index";
  if (v68)
  {
    v70 = v68;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1007953F0;
    *(v71 + 32) = v70;
  }

  else
  {
    v71 = 0;
  }

  v72 = v65;
  v73 = sub_1000398EC(6uLL, v63, v65, v67);
  v74 = [objc_allocWithZone(NSFetchRequest) init];
  v75 = [swift_getObjCClassFromMetadata() entity];
  [v74 setEntity:v75];

  if (v71)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v76.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v76.super.isa = 0;
  }

  [v74 setAffectedStores:v76.super.isa];

  [v74 setPredicate:v73];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007953F0;
  if (qword_100935AA8 != -1)
  {
    swift_once();
  }

  v78 = qword_100974C08;
  *(v77 + 32) = qword_100974C08;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v79 = v78;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 setSortDescriptors:isa];

  v81 = v138;
  v82 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v81)
  {
    if (v82 >> 62)
    {
      v88 = v82;
      v89 = _CocoaArrayWrapper.endIndex.getter();
      v82 = v88;
      v83 = &selRef_hack_willSaveHandled;
      if (v89)
      {
LABEL_25:
        if ((v82 & 0xC000000000000001) != 0)
        {
          goto LABEL_43;
        }

        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          for (i = *(v82 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
          {
            v85 = i;

            v139 = [v85 v83[433]];
            v83 = type metadata accessor for REMMutableManualOrdering();
            [objc_opt_self() newObjectID];
            v86 = [v136 uuid];
            v87 = v147;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            UUID.uuidString.getter();
            v134(v87, v148);
            v150 = REMMutableManualOrdering.__allocating_init(objectID:listType:listID:)();

            v74 = v140;
LABEL_33:
            v100 = v151[2];
            if (!v100)
            {
              break;
            }

            v101 = 0;
            v102 = (v151 + 7);
            while (v101 < v151[2])
            {
              v103 = *(v102 - 1);
              v83 = *v102;
              v104 = *(v102 - 3);
              v105 = *(v102 - 2);
              swift_unknownObjectRetain();
              v106 = objc_autoreleasePoolPush();
              v107 = v105;
              v74 = v140;
              sub_1004B865C(v142, v141, v104, v107, v103, v83, v140, &v157, v150, &v155, v139, v145, v154, v152, &v156);
              ++v101;
              objc_autoreleasePoolPop(v106);
              swift_unknownObjectRelease();
              v102 += 4;
              if (v100 == v101)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_43:
            ;
          }

LABEL_37:

          v72 = v142;
          v82 = (*(*v74 + 152))(v142);
          v78 = v149;
          v69 = v154;
          if (!(v82 >> 62))
          {
            v108 = v143;
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_41:
              v109 = v72;
              v110 = v141;
              sub_1004B7184(v82, v157, v141, v109);
              v138 = 0;
              goto LABEL_47;
            }

LABEL_46:
            v138 = 0;
            v110 = v141;
LABEL_47:

            (v133[0])(v108, v69, v78);
            swift_retain_n();
            v113 = Logger.logObject.getter();
            v114 = v69;
            v115 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v113, v115))
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v156 = swift_slowAlloc();
              v118 = v156;
              *v116 = 136447234;
              v119 = sub_1001424F8();
              v121 = sub_10000668C(v119, v120, &v156);

              *(v116 + 4) = v121;
              *(v116 + 12) = 2114;
              v122 = v136;
              *(v116 + 14) = v136;
              *(v116 + 22) = 2114;
              v123 = v74[3];
              *(v116 + 24) = v123;
              *v117 = v122;
              v117[1] = v123;
              *(v116 + 32) = 2048;
              v124 = v122;
              v125 = v123;

              *(v116 + 34) = 50;

              *(v116 + 42) = 2048;
              v126 = v144;
              Date.init()();
              v127 = v143;
              Date.timeIntervalSince(_:)();
              v129 = v128;
              v130 = v126;
              v131 = v137;
              v137(v130, v78);
              v131(v127, v78);
              *(v116 + 44) = v129;
              _os_log_impl(&_mh_execute_header, v113, v115, "%{public}s: Finished execution {templateObjectID: %{public}@, sourceListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v116, 0x34u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              sub_10000607C(v118);

              v131(v154, v78);
            }

            else
            {

              v132 = v137;
              v137(v108, v78);
              v132(v114, v78);
            }

            goto LABEL_38;
          }
        }

        else
        {
          __break(1u);
        }

        v111 = v82;
        v112 = _CocoaArrayWrapper.endIndex.getter();
        v82 = v111;
        v108 = v143;
        if (v112)
        {
          goto LABEL_41;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v83 = &selRef_hack_willSaveHandled;
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    v74 = v140;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v156 = v94;
      *v92 = 136446466;
      v95 = sub_1001424F8();
      v83 = v96;
      v97 = sub_10000668C(v95, v96, &v156);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2114;
      v98 = v136;
      *(v92 + 14) = v136;
      *v93 = v98;
      v99 = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "%{public}s: Failed to fetch manual sort hint of template {templateObjectID: %{public}@}", v92, 0x16u);
      sub_1000050A4(v93, &unk_100938E70, &unk_100797230);
      v74 = v140;

      sub_10000607C(v94);
    }

    v150 = 0;
    v139 = 0;
    goto LABEL_33;
  }

  v137(v154, v149);
LABEL_38:
}

id sub_1004B5B48(void *a1, void *a2, void *a3, uint64_t a4)
{
  v60 = a2;
  v48 = a1;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v47 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDSavedReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_allocWithZone(ObjCClassFromMetadata);
  v47[0] = a4;
  v17 = [v16 initWithContext:a4];
  v18 = [(objc_class *)ObjCClassFromMetadata newObjectID];
  v19 = v17;
  v50 = v18;
  v20 = [v18 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v14, v10);
  [v19 setIdentifier:isa];

  v22 = [a3 account];
  [v19 setAccount:v22];

  v23 = [v19 template];
  if (!v23)
  {
    goto LABEL_3;
  }

  v24 = v23;
  type metadata accessor for REMCDTemplate();
  v25 = v19;
  v26 = a3;
  v27 = static NSObject.== infix(_:_:)();

  v19 = v25;
  if ((v27 & 1) == 0)
  {
LABEL_3:
    [v19 setTemplate:a3];
    v28 = [v19 createResolutionTokenMapIfNecessary];
    v29 = String._bridgeToObjectiveC()();
    [v28 updateForKey:v29];
  }

  if (v60)
  {
    v30 = [v60 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v11 + 56))(v9, v31, 1, v10);
  v49 = v19;
  sub_1002A77E8(v9);
  sub_1000050A4(v9, &unk_100939D90, "8\n\r");
  v32 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v33 = objc_opt_self();
  v34 = 0;
  v60 = 0x80000001007EA630;
  v58 = 0x80000001007E8FD0;
  v59 = 0x80000001007EA610;
  v56 = 0x80000001007EA5C0;
  v57 = 0x80000001007EA5E0;
  v54 = 0x80000001007EA570;
  v55 = 0x80000001007EA5A0;
  v52 = 0x80000001007EA4D0;
  v53 = 0x80000001007E8C60;
  v51 = 0xD000000000000010;
  do
  {
    v35 = *(&off_1008DD790 + v34++ + 32);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v33 resolutionTokenKeyForChangedKeyInREMReminderChangeItemOfREMCDSavedReminder:v36];

    if (v37)
    {
      [v32 updateForKey:v37];
    }
  }

  while (v34 != 15);
  v38 = v48;
  [v48 setResolutionTokenMap:v32];
  v39 = [objc_opt_self() defaultFetchOptions];
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  swift_initStackObject();
  v40 = v49;
  v41 = v47[2];
  sub_100510538(v38, v49, &off_1008DD790, 1, 0);

  if (!v41)
  {
    v43 = [v38 attachments];
    v42 = v50;
    if (!v43)
    {
LABEL_19:
      [v40 updateChangeCount];

      goto LABEL_20;
    }

    v44 = v43;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v45 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:

      goto LABEL_19;
    }

    sub_1004B634C(v45, v40, v47[0]);
    goto LABEL_18;
  }

  v42 = v50;
LABEL_20:

  return v42;
}

void sub_1004B634C(unint64_t a1, id a2, uint64_t a3)
{
  v5 = v4;
  v6 = a2;
  v74 = *v3;
  v8 = [a2 remObjectID];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 account];
    if (v10)
    {
      v11 = v10;
      v81 = [v10 remObjectID];
      if (v81)
      {
        type metadata accessor for REMSavedAttachmentCDIngestor();
        swift_initStackObject();
        if (a1 >> 62)
        {
          goto LABEL_42;
        }

        for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          type metadata accessor for REMCDSavedAttachment();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = 0;
          v80 = a1 & 0xC000000000000001;
          v72 = a1 & 0xFFFFFFFFFFFFFF8;
          v14 = REMURLAttachment_ptr;
          v76 = v6;
          v77 = v11;
          v75 = a1;
          v79 = i;
          v73 = v9;
          while (1)
          {
            if (v80)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v72 + 16))
              {
                goto LABEL_41;
              }

              v15 = *(a1 + 8 * v13 + 32);
            }

            v16 = v15;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            v84 = v13 + 1;
            v17 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a3];
            [v17 setAccount:v11];
            v86 = v17;
            [v17 setReminder:v6];
            objc_opt_self();
            v18 = swift_dynamicCastObjCClass();
            v85 = v13;
            if (!v18)
            {
              v14 = REMFileAttachment_ptr;
              objc_opt_self();
              v18 = swift_dynamicCastObjCClass();
              if (!v18)
              {
                if (qword_1009362B0 != -1)
                {
                  swift_once();
                }

                v45 = type metadata accessor for Logger();
                sub_100006654(v45, qword_100949378);
                v46 = v16;
                v47 = v6;
                v48 = Logger.logObject.getter();
                v49 = static os_log_type_t.default.getter();

                if (!os_log_type_enabled(v48, v49))
                {

                  goto LABEL_25;
                }

                v78 = v5;
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v87 = swift_slowAlloc();
                *v50 = 136446722;
                v88 = v74;
                swift_getMetatypeMetadata();
                v52 = String.init<A>(describing:)();
                v54 = sub_10000668C(v52, v53, &v87);

                *(v50 + 4) = v54;
                *(v50 + 12) = 2082;
                v55 = [v47 remObjectID];
                if (v55)
                {
                  v56 = v55;
                  v57 = [v55 description];

                  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v60 = v59;
                }

                else
                {
                  v60 = 0xE300000000000000;
                  v58 = 7104878;
                }

                v61 = sub_10000668C(v58, v60, &v87);

                *(v50 + 14) = v61;
                *(v50 + 22) = 2114;
                *(v50 + 24) = v46;
                *v51 = v46;
                v62 = v46;
                _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Skipped copying attachment into cdSavedReminder because attachment belongs to an unhandled subclass of REMAttachment {cdSavedReminder.remObjectID: %{public}s, sourceAttachment: %{public}@}", v50, 0x20u);
                sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                goto LABEL_23;
              }
            }

            v19 = v18;
            v20 = v14;
            v21 = v16;
            v22 = [(objc_class *)ObjCClassFromMetadata newObjectID];
            v23 = [objc_allocWithZone(*v20) initWithAttachment:v19 objectID:v22 accountID:v81 reminderID:v9];

            v24 = v23;
            sub_10022A984(v24, v86);
            if (v5)
            {

              goto LABEL_39;
            }

            [v86 updateChangeCount];
            if (qword_1009362B0 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_100006654(v25, qword_100949378);
            v26 = v21;
            v27 = v6;
            v28 = v24;
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v29, v30))
            {
              v78 = 0;
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              *v31 = 136446978;
              v88 = v74;
              swift_getMetatypeMetadata();
              v33 = String.init<A>(describing:)();
              v35 = sub_10000668C(v33, v34, &v87);

              *(v31 + 4) = v35;
              *(v31 + 12) = 2082;
              v36 = [v27 remObjectID];
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

              v9 = v73;
              v42 = sub_10000668C(v39, v41, &v87);

              *(v31 + 14) = v42;
              *(v31 + 22) = 2114;
              *(v31 + 24) = v26;
              *(v31 + 32) = 2114;
              *(v31 + 34) = v28;
              *v32 = v26;
              v32[1] = v28;
              v43 = v26;
              v44 = v28;
              _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Copied attachment into cdSavedReminder {cdSavedReminder.remObjectID: %{public}s, sourceAttachment: %{public}@, savedAttachment: %{public}@}", v31, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();

LABEL_23:
              v5 = v78;
              goto LABEL_24;
            }

LABEL_24:
            v6 = v76;
            v11 = v77;
            a1 = v75;
LABEL_25:
            v13 = v85 + 1;
            v14 = REMURLAttachment_ptr;
            if (v84 == v79)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          ;
        }

LABEL_43:
      }

      else
      {
        v69 = objc_opt_self();
        type metadata accessor for REMCDSavedReminder();
        v70 = swift_getObjCClassFromMetadata();
        v71 = String._bridgeToObjectiveC()();
        [v69 unexpectedNilPropertyWithClass:v70 property:v71];

        swift_willThrow();
LABEL_39:
      }
    }

    else
    {
      v66 = objc_opt_self();
      type metadata accessor for REMCDSavedReminder();
      v67 = swift_getObjCClassFromMetadata();
      v68 = String._bridgeToObjectiveC()();
      [v66 unexpectedNilPropertyWithClass:v67 property:v68];

      swift_willThrow();
    }
  }

  else
  {
    v63 = objc_opt_self();
    type metadata accessor for REMCDSavedReminder();
    v64 = swift_getObjCClassFromMetadata();
    v65 = String._bridgeToObjectiveC()();
    [v63 unexpectedNilPropertyWithClass:v64 property:v65];

    swift_willThrow();
  }
}

void sub_1004B6C94(void *a1, uint64_t a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  *(v5 + 32) = a1;
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 fetchOptionsIncludingDueDateDeltaAlerts];
  v9 = objc_allocWithZone(REMRemindersDataViewInvocation_fetchByObjectID);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithObjectIDs:isa fetchOptions:v8];

  v12 = sub_10048394C(a2);
  if (!v2)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v32 = v12;
      v15 = [v14 accountStorages];
      v16 = v7;
      if (!v15)
      {
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = Array._bridgeToObjectiveC()().super.isa;
        v16 = v7;
      }

      v17 = [v14 listStorages];
      if (!v17)
      {
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = Array._bridgeToObjectiveC()().super.isa;
        v16 = v7;
      }

      v18 = [v14 reminderStorages];
      if (!v18)
      {
        sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = Array._bridgeToObjectiveC()().super.isa;
        v16 = v7;
      }

      v19 = objc_opt_self();
      v20 = *(v33 + 48);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007953F0;
      *(v21 + 32) = v16;
      v34 = v16;
      v22 = Array._bridgeToObjectiveC()().super.isa;

      v23 = [v19 remindersFromAccountStorages:v15 listStorages:v17 reminderStorages:v18 store:v20 requestedReminderIDs:v22];

      if (v23)
      {
        sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          goto LABEL_25;
        }

        for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v30 = [v28 objectID];
            v31 = static NSObject.== infix(_:_:)();

            if (v31)
            {

              REMReminder.codable.getter();
              return;
            }

            ++v26;
            if (v29 == i)
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
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v34];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v7];
      swift_willThrow();
    }
  }
}

void sub_1004B7184(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v176 = a2;
  v184 = a1;
  v9 = *v4;
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v165 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v168 = &v150 - v14;
  v15 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v187 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v179 = &v150 - v19;
  v188 = type metadata accessor for UUID();
  v178 = *(v188 - 1);
  v20 = v178[8];
  __chkstk_darwin(v188);
  v166 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v180 = &v150 - v23;
  __chkstk_darwin(v24);
  v175 = &v150 - v25;
  __chkstk_darwin(v26);
  v185 = &v150 - v27;
  __chkstk_darwin(v28);
  v186 = &v150 - v29;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v167 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v170 = &v150 - v35;
  __chkstk_darwin(v36);
  v169 = &v150 - v37;
  __chkstk_darwin(v38);
  v40 = &v150 - v39;
  Date.init()();
  v190 = 0;
  v41 = [a4 existingObjectWithID:a3 error:&v190];
  v42 = v190;
  if (!v41)
  {
    v49 = v190;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_7:
    (*(v31 + 8))(v40, v30);
    return;
  }

  v43 = v41;
  type metadata accessor for REMCDTemplate();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    v50 = v42;

    goto LABEL_7;
  }

  v181 = v44;
  v162 = v9;
  v164 = v43;
  v45 = *(*v4 + 160);
  v46 = v42;
  v163 = v4;
  v47 = v45(a4);
  if (v5)
  {
    (*(v31 + 8))(v40, v30);
    v48 = &v193;
LABEL_76:

    return;
  }

  v161 = v47;
  v190 = _swiftEmptyArrayStorage;
  v51 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v189 = _swiftEmptyArrayStorage;
  v52 = v184;
  if (v184 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v124)
  {
    v158 = v31;
    v159 = v40;
    v174 = a4;
    v160 = v30;
    if (i)
    {
      v40 = 0;
      v172 = (v52 & 0xFFFFFFFFFFFFFF8);
      v173 = v52 & 0xC000000000000001;
      v171 = (v178 + 1);
      v177 = _swiftEmptyArrayStorage;
      a4 = v6;
      while (1)
      {
        if (v173)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= v172[2])
          {
            goto LABEL_80;
          }

          v54 = *(v52 + 8 * v40 + 32);
        }

        v55 = v54;
        v30 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_79;
        }

        v6 = i;
        v191 = 0;
        v56 = [v54 remObjectIDWithError:&v191];
        if (!v56)
        {
          v118 = v191;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v158 + 8))(v159, v160);
          goto LABEL_90;
        }

        v57 = v56;
        v58 = v191;
        v59 = sub_1004B99C4(v55, v181, v174);
        if (a4)
        {
          (*(v158 + 8))(v159, v160);

          goto LABEL_74;
        }

        v182 = v51;
        v183 = 0;
        v60 = v59;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v177 = v190;
        v61 = [v57 uuid];
        v62 = v186;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = [v60 uuid];
        v31 = v185;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = v182;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v191 = v64;
        sub_1002C81B4(v31, v62, isUniquelyReferenced_nonNull_native);

        (*v171)(v62, v188);
        v51 = v191;
        ++v40;
        i = v6;
        v66 = v30 == v6;
        a4 = v183;
        v52 = v184;
        v30 = v187;
        if (v66)
        {
          goto LABEL_25;
        }
      }
    }

    v177 = _swiftEmptyArrayStorage;
    v30 = v187;
    a4 = v6;
LABEL_25:
    sub_1005F8ACC(v177, 1);
    v6 = a4;
    if (a4)
    {
      (*(v158 + 8))(v159, v160);

LABEL_75:
      v48 = &v192;
      goto LABEL_76;
    }

    if (!v161)
    {
      break;
    }

    v31 = v160;
    if (!*(v51 + 16) || !*(v176 + 16))
    {
      v119 = _swiftEmptyArrayStorage;
      goto LABEL_70;
    }

    v182 = v51;
    v68 = *(v176 + 64);
    v177 = (v176 + 64);
    v69 = 1 << *(v176 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v51 = v70 & v68;
    v173 = (v69 + 63) >> 6;
    v157 = v178 + 2;
    v184 = (v178 + 4);
    v171 = (v178 + 1);
    v155 = (v178 + 7);
    v154 = (v178 + 6);
    v153 = (v158 + 8);
    v172 = v161;

    a4 = 0;
    isa = _swiftEmptyArrayStorage;
    v40 = v175;
    v183 = 0;
LABEL_33:
    v71 = v179;
    v72 = v177;
    v73 = v173;
    while (v51)
    {
      v76 = a4;
LABEL_46:
      v79 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v80 = v176;
      v81 = v178;
      v82 = v178[9] * (v79 | (v76 << 6));
      v83 = v178[2];
      v84 = v188;
      v83(v186, *(v176 + 48) + v82, v188);
      v85 = v185;
      v83(v185, *(v80 + 56) + v82, v84);
      v86 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      v87 = *(v86 + 48);
      v88 = v81[4];
      v30 = v187;
      v88(v187, v186, v84);
      v88((v30 + v87), v85, v84);
      (*(*(v86 - 8) + 56))(v30, 0, 1, v86);
      v71 = v179;
      v40 = v175;
      v6 = v183;
LABEL_47:
      sub_1004B9CE4(v30, v71);
      v89 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      if ((*(*(v89 - 8) + 48))(v71, 1, v89) == 1)
      {

        v31 = v160;
        v51 = v182;
        v119 = isa;
        goto LABEL_70;
      }

      v90 = *(v89 + 48);
      v91 = *v184;
      v92 = v40;
      v31 = v40;
      v93 = v188;
      (*v184)(v92, v71, v188);
      v91(v180, v71 + v90, v93);
      v94 = [v172 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100224A60();
      v95 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v95 + 16))
      {
        v96 = sub_100363F20(v31);
        v40 = v31;
        if (v97)
        {
          v98 = *(*(v95 + 56) + 8 * v96);

          v99 = [v98 groupIdentifier];
          v71 = v179;
          if (v99)
          {
            v101 = v166;
            v102 = v99;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v103 = v182;
            v104 = v165;
            if (v182[2])
            {
              v105 = sub_100363F20(v101);
              v30 = v187;
              if (v106)
              {
                (v178[2])(v168, v103[7] + v178[9] * v105, v188);
                v107 = 0;
              }

              else
              {
                v107 = 1;
              }
            }

            else
            {
              v107 = 1;
              v30 = v187;
            }

            v108 = v168;
            v109 = v188;
            (*v155)(v168, v107, 1, v188);
            sub_10018E470(v108, v104);
            static Date.now.getter();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            if ((*v154)(v104, 1, v109) == 1)
            {
              v152 = 0;
            }

            else
            {
              v152 = UUID._bridgeToObjectiveC()().super.isa;
              (*v171)(v104, v109);
            }

            v110 = objc_allocWithZone(REMMembership);
            v111 = Date._bridgeToObjectiveC()().super.isa;
            v112 = v110;
            v113 = isa;
            v31 = v152;
            v151 = [v112 initWithMemberIdentifier:isa groupIdentifier:v152 isObsolete:0 modifiedOn:v111];

            (*v153)(v169, v160);
            v114 = v151;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v117 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v30 = v187;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1000050A4(v168, &unk_100939D90, "8\n\r");
            v115 = *v171;
            v116 = v188;
            (*v171)(v166, v188);
            v115(v180, v116);
            v115(v40, v116);
            isa = v189;
            goto LABEL_33;
          }
        }

        else
        {

          v71 = v179;
        }
      }

      else
      {

        v40 = v31;
      }

      v74 = *v171;
      v75 = v188;
      (*v171)(v180, v188);
      v74(v40, v75);
      v72 = v177;
      v73 = v173;
      v30 = v187;
    }

    if (v73 <= (a4 + 1))
    {
      v77 = a4 + 1;
    }

    else
    {
      v77 = v73;
    }

    v78 = v77 - 1;
    while (1)
    {
      v76 = (a4 + 1);
      if (__OFADD__(a4, 1))
      {
        break;
      }

      if (v76 >= v73)
      {
        v100 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
        (*(*(v100 - 8) + 56))(v30, 1, 1, v100);
        v51 = 0;
        a4 = v78;
        goto LABEL_47;
      }

      v51 = v72[v76];
      ++a4;
      if (v51)
      {
        a4 = v76;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v123 = v52;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v123;
  }

  v119 = _swiftEmptyArrayStorage;
  v31 = v160;
LABEL_70:
  if (v119 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_83;
    }

LABEL_72:
    v120 = objc_allocWithZone(REMMemberships);
    sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
    v121 = Array._bridgeToObjectiveC()().super.isa;

    v122 = [v120 initWithMemberships:v121];

    v57 = v122;
    sub_10032D8A8(v122, 1);
    if (v6)
    {
      (*(v158 + 8))(v159, v31);

LABEL_74:
      goto LABEL_75;
    }
  }

  else
  {
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

LABEL_83:
  }

  [v181 updateChangeCount];
  v191 = 0;
  if ([v174 save:&v191])
  {
    v182 = v51;
    v125 = qword_1009362B0;
    v126 = v191;
    if (v125 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_100006654(v127, qword_100949378);
    v128 = v158;
    v129 = v170;
    (*(v158 + 16))(v170, v159, v31);

    v130 = Logger.logObject.getter();
    v131 = v163;
    v132 = v130;
    v133 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v183 = v6;
      v136 = v135;
      v188 = swift_slowAlloc();
      v191 = v188;
      *v134 = 136446978;
      v137 = sub_1001424F8();
      v139 = sub_10000668C(v137, v138, &v191);

      *(v134 + 4) = v139;
      v31 = v160;
      *(v134 + 12) = 2114;
      v140 = v131[2];
      v141 = v131[3];
      *(v134 + 14) = v140;
      *(v134 + 22) = 2114;
      *(v134 + 24) = v141;
      v187 = v136;
      *v136 = v140;
      *(v136 + 1) = v141;
      *(v134 + 32) = 2048;
      v142 = v140;
      v143 = v141;
      v144 = v167;
      Date.init()();
      v145 = v170;
      Date.timeIntervalSince(_:)();
      v147 = v146;
      LOBYTE(v136) = v133;
      v148 = *(v128 + 8);
      v148(v144, v31);
      v148(v145, v31);
      *(v134 + 34) = v147;
      _os_log_impl(&_mh_execute_header, v132, v136, "%{public}s: Copied Sections to template {templateObjectID: %{public}@, sourceListObjectID: %{public}@, elapsedSeconds: %f}", v134, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v188);
    }

    else
    {

      v148 = *(v128 + 8);
      v148(v129, v31);
    }

    [v174 reset];

    v148(v159, v31);
  }

  else
  {
    v149 = v191;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v158 + 8))(v159, v31);
LABEL_90:
  }
}

uint64_t sub_1004B8594()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949378);
  v1 = sub_100006654(v0, qword_100949378);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004B865C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, void *a10, void *a11, void *a12, char *a13, uint64_t a14, void *a15)
{
  v16 = v15;
  v163 = a7;
  v151 = a5;
  v150 = a4;
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v149 = &v136 - v23;
  v148 = type metadata accessor for UUID();
  v165 = *(v148 - 8);
  v24 = *(v165 + 8);
  __chkstk_darwin(v148);
  v147 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v146 = &v136 - v28;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v144 = &v136 - v35;
  v36 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v167 = *(v36 - 1);
  v168 = v36;
  v37 = v167[8];
  __chkstk_darwin(v36);
  v162 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v159 = &v136 - v41;
  v171 = 0;
  v42 = [a1 existingObjectWithID:a2 error:{&v171, v40}];
  v43 = v171;
  if (!v42)
  {
    v66 = v171;
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_13;
  }

  v44 = v42;
  type metadata accessor for REMCDTemplate();
  v166 = swift_dynamicCastClass();
  if (v166)
  {
    v142 = a8;
    v45 = v44;
    v164 = a9;
    v46 = a6 >> 1;
    v47 = v43;
    v141 = a10;
    swift_beginAccess();
    v48 = v151;
    v143 = v29;
    v156 = v30;
    v155 = v33;
    v139 = v44;
    if (v46 == v151)
    {
LABEL_4:
      if (v164 && a11)
      {
        v49 = v16;
        v169 = 0;

        v50 = a11;
        v51 = [a1 existingObjectWithID:v50 error:&v169];
        v52 = v169;
        if (!v51)
        {
          v100 = v169;
          v101 = _convertNSErrorToError(_:)();

          v16 = v101;
          swift_willThrow();

          goto LABEL_13;
        }

        v53 = v51;
        type metadata accessor for REMCDManualSortHint();
        v54 = swift_dynamicCastClass();
        v55 = v52;
        if (v54)
        {
          v56 = [v54 account];
          if (v56)
          {
            v57 = v56;
            v58 = [v56 remObjectID];
            if (v58)
            {
              v59 = v58;
              v167 = a1;
              Date.init()();
              REMMutableManualOrdering.modifiedDate.setter();
              v60 = objc_opt_self();
              v61 = v59;
              v62 = [v60 defaultCenter];
              type metadata accessor for REMManualOrderingCDIngestor();
              inited = swift_initStackObject();
              v168 = v61;
              *(inited + 16) = v61;
              *(inited + 24) = v62;
              v64 = REMMutableManualOrdering.immutableCopy()();
              sub_1004A963C(v64, v54, v57);
              if (v49)
              {

                v65 = v168;

                v16 = v49;
LABEL_13:
                *a15 = v16;
                return;
              }

              v102 = v168;

              v16 = 0;
              a1 = v167;
            }

            else
            {

              v16 = v49;
            }

            v29 = v143;
            v30 = v156;
            v33 = v155;
          }

          else
          {

            v16 = v49;
            v29 = v143;
            v30 = v156;
          }
        }

        else
        {

          v16 = v49;
          v29 = v143;
        }
      }

      v103 = v146;
      static Date.now.getter();
      (*(v30 + 56))(v103, 0, 1, v29);
      KeyPath = swift_getKeyPath();
      v105 = v166;
      sub_10013206C(KeyPath, v103);

      sub_1000050A4(v103, &unk_100938850, qword_100795AE0);
      [v105 updateChangeCount];
      v169 = 0;
      if (![a1 save:&v169])
      {
        v135 = v169;
        v16 = _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_13;
      }

      v168 = v16;
      v16 = a12;
      v45 = a13;
      v106 = qword_1009362B0;
      v107 = v169;
      if (v106 == -1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v160 = v167 + 2;
      v138 = v165 + 56;
      v161 = (v167 + 1);
      v137 = v46;
      if (v151 <= v46)
      {
        v68 = v46;
      }

      else
      {
        v68 = v151;
      }

      v140 = v68;
      v69 = v163;
      while (v48 != v140)
      {
        v70 = v167[9];
        v151 = v48;
        v157 = v70;
        v158 = v167[2];
        v158(v159, v150 + v70 * v48, v168);
        v71 = v69;
        v72 = REMRemindersListDataView.ReminderLite.objectID.getter();
        sub_1004B6C94(v72, a1);
        if (v16)
        {
          (*v161)(v159, v168);

          goto LABEL_13;
        }

        v74 = v73;

        v75 = [v74 storage];
        v76 = sub_1004B5B48(v75, 0, v166, a1);
        v69 = v71;
        v145 = v74;

        v77 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v165 = v76;
        v78 = [v77 uuid];

        v79 = v147;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v80 = v165;
        v81 = [v165 uuid];
        v82 = v149;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v138)(v82, 0, 1, v148);
        sub_10031DC2C(v82, v79);
        if (v164)
        {
          REMMutableManualOrdering.append(topLevelElementID:)();
        }

        v45 = v159;
        v83 = REMRemindersListDataView.ReminderLite.subtasks.getter();
        if (v83)
        {
          v84 = *(v83 + 16);
          v136 = v161 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v16 = 0;
          v152 = v84;
          if (v84)
          {
            v85 = 0;
            v86 = v83;
            v154 = v83;
            while (v85 < *(v83 + 16))
            {
              v88 = v167;
              v87 = v168;
              v89 = v162;
              v158(v162, v86 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v168);
              v90 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v153 = v88[1];
              v153(v89, v87);
              sub_1004B6C94(v90, a1);
              v92 = v91;

              v93 = a1;
              v94 = [v92 storage];
              v95 = v165;
              v96 = v165;
              v97 = v95;
              v98 = v93;
              v99 = sub_1004B5B48(v94, v97, v166, v93);

              v45 = v164;
              if (v164)
              {
                REMMutableManualOrdering.append(secondaryLevelElementID:forTopLevelElementID:)();
              }

              ++v85;

              v86 += v157;
              v16 = 0;
              a1 = v98;
              v69 = v163;
              v30 = v156;
              v33 = v155;
              v83 = v154;
              if (v152 == v85)
              {
                v80 = v165;
                v153(v159, v168);
                goto LABEL_34;
              }
            }

            __break(1u);
            break;
          }

          (*v161)(v159, v168);
LABEL_34:
        }

        else
        {
          (*v161)(v45, v168);
          v16 = 0;
        }

        v29 = v143;

        if (__OFADD__(*v141, 1))
        {
          goto LABEL_53;
        }

        v48 = v151 + 1;
        ++*v141;
        if (v48 == v137)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
    }

    swift_once();
LABEL_47:
    v108 = type metadata accessor for Logger();
    sub_100006654(v108, qword_100949378);
    v109 = v143;
    (*(v30 + 16))(v33, v45, v143);
    swift_bridgeObjectRetain_n();
    v110 = v33;
    v111 = v163;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v166 = v112;
      v114 = swift_slowAlloc();
      LODWORD(v165) = v113;
      v115 = v30;
      v116 = v114;
      v117 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v170 = v167;
      *v116 = 136447490;
      v118 = sub_1001424F8();
      v120 = a1;
      v121 = sub_10000668C(v118, v119, &v170);

      *(v116 + 4) = v121;
      a1 = v120;
      *(v116 + 12) = 2048;
      v122 = v141;
      swift_beginAccess();
      *(v116 + 14) = *v122;
      *(v116 + 22) = 2048;
      v123 = v16[2];

      *(v116 + 24) = v123;

      *(v116 + 32) = 2114;
      v124 = *(v111 + 16);
      v125 = *(v111 + 24);
      *(v116 + 34) = v124;
      *(v116 + 42) = 2114;
      *(v116 + 44) = v125;
      *v117 = v124;
      v117[1] = v125;
      *(v116 + 52) = 2048;
      v126 = v124;
      v127 = v125;
      v128 = v144;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v130 = v129;
      v131 = *(v115 + 8);
      v132 = v128;
      v133 = v143;
      v131(v132, v143);
      v131(v110, v133);
      *(v116 + 54) = v130;
      v134 = v166;
      _os_log_impl(&_mh_execute_header, v166, v165, "%{public}s: Copied %ld out of %ld top-level reminders to template {templateObjectID: %{public}@, sourceListObjectID: %{public}@, elapsedSeconds: %f}", v116, 0x3Eu);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v167);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v30 + 8))(v110, v109);
    }

    goto LABEL_15;
  }

  v67 = v43;

LABEL_15:
  [a1 reset];
}

void *sub_1004B9630(uint64_t a1, const char *a2)
{
  v4 = *v2;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100949378);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = v4;
    *v8 = 136446210;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 0xCu);
    sub_10000607C(v9);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004B97BC()
{
  v1 = *v0;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100949378);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v11[2] = v1;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: fetchSectionsInSourceList(in:) should be overridden by subclass", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1004B9948()
{

  return swift_deallocClassInstance();
}

id sub_1004B99C4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDTemplateSection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a3];
  v17 = [(objc_class *)ObjCClassFromMetadata newObjectID];
  v18 = v16;
  v19 = [v17 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v14, v10);
  [v18 setIdentifier:isa];

  v21 = [a2 account];
  [v18 setAccount:v21];

  [v18 setTemplate:a2];
  v22 = v18;
  v23 = [a1 displayName];
  [v22 setDisplayName:v23];

  v24 = [a1 creationDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v9, v29);
  }

  else
  {
    v26.super.isa = 0;
  }

  [v22 setCreationDate:{v26.super.isa, v28, v29}];

  [v22 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
  [v22 updateChangeCount];

  return v17;
}

uint64_t sub_1004B9CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B9D6C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009494A0);
  v1 = sub_100006654(v0, qword_1009494A0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004B9E80(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

id sub_1004B9F24()
{
  v1 = *v0;
  v6 = 0;
  v2 = [v1 attachmentRepresentationAndReturnError:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

Swift::Int sub_1004BA00C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004BA0EC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1004BA1B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004BA294@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC2C(*a1);
  *a2 = result;
  return result;
}

void sub_1004BA2C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xE800000000000000;
  v6 = 0x657A6953656C6966;
  v7 = 0xE700000000000000;
  v8 = 0x4C5255656C6966;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001007EA7D0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6911093;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1004BA370@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BA398()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x657A6953656C6966;
  v4 = 0x4C5255656C6966;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6911093;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004BA494()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1004BA5A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC78(*a1);
  *a2 = result;
  return result;
}

void sub_1004BA5D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xE500000000000000;
  v6 = 0x6874646977;
  if (v2 != 5)
  {
    v6 = 0x746867696568;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x4C5255656C6966;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001007EA7D0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6911093;
  if (v2 != 1)
  {
    v10 = 0x657A6953656C6966;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1004BA6B4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC78(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BA6DC()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6874646977;
  if (v1 != 5)
  {
    v3 = 0x746867696568;
  }

  v4 = 0x4C5255656C6966;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6911093;
  if (v1 != 1)
  {
    v5 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1004BA804()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004BA8B8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1004BA958()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004BAA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BABE0(*a1);
  *a2 = result;
  return result;
}

void sub_1004BAA38(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (*v1 != 2)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 6911093;
    v2 = 0xE300000000000000;
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

unint64_t sub_1004BAAB8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BABE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BAAE0()
{
  v1 = 0x44497463656A626FLL;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 6911093;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1004BABE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0AD8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004BAC2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0B58, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004BAC78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0D68, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

char **sub_1004BACC4(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 0;
  v9 = [a1 remObjectIDWithError:{&v65, v6}];
  if (!v9)
  {
    v31 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v1;
  }

  v10 = v9;
  v64 = v4;
  v11 = v65;
  v1 = &selRef_attachmentRepresentationAndReturnError_;
  v12 = [a1 account];
  v13 = &selRef_persistentStoreForIdentifier_;
  if (v12)
  {
    v14 = v12;
    v15 = [v12 remObjectID];

    v13 = &selRef_persistentStoreForIdentifier_;
    if (v15)
    {
      v16 = [a1 reminder];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 remObjectID];

        if (v18)
        {
          v19 = [a1 url];
          if (v19)
          {
            v20 = v19;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v21 = [a1 metadata];
            if (v21)
            {
              v23 = v21;
              v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              URL._bridgeToObjectiveC()(v27);
              v29 = v28;
              if (v26 >> 60 == 15)
              {
                isa = 0;
              }

              else
              {
                v61.super.isa = Data._bridgeToObjectiveC()().super.isa;
                v62 = v24;
                isa = v61.super.isa;
                sub_100031A14(v62, v26);
              }
            }

            else
            {
              URL._bridgeToObjectiveC()(v22);
              v29 = v60;
              isa = 0;
            }

            v1 = [objc_allocWithZone(REMURLAttachment) initWithObjectID:v10 accountID:v15 reminderID:v18 url:v29 metadata:isa];

            (*(v64 + 8))(v8, v3);
            return v1;
          }
        }
      }

      v13 = &selRef_persistentStoreForIdentifier_;
    }
  }

  v32 = [a1 account];
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_1009494A0);
    v35 = v10;
    v33 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v36))
    {
      v1 = v13;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v35;
      *v38 = v10;
      v39 = v35;
      _os_log_impl(&_mh_execute_header, v33, v36, "REMURLAttachmentCDIngestor: cdURLAttachment.account is nil {cdURLAttachment.remObjectID: %@}", v37, 0xCu);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

      v13 = v1;
    }
  }

  v40 = [a1 v13[127]];
  if (v40)
  {
    v41 = v40;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_1009494A0);
    v43 = v10;
    v41 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v43;
      *v46 = v10;
      v47 = v43;
      _os_log_impl(&_mh_execute_header, v41, v44, "REMURLAttachmentCDIngestor: cdURLAttachment.reminder is nil {cdURLAttachment.remObjectID: %@}", v45, 0xCu);
      sub_1000050A4(v46, &unk_100938E70, &unk_100797230);
    }
  }

  v48 = [a1 uti];
  if (v48)
  {
    v49 = v48;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_1009494A0);
    v51 = v10;
    v49 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v51;
      *v54 = v10;
      v55 = v51;
      _os_log_impl(&_mh_execute_header, v49, v52, "REMURLAttachmentCDIngestor: cdURLAttachment.uti is nil {cdURLAttachment.remObjectID: %@}", v53, 0xCu);
      sub_1000050A4(v54, &unk_100938E70, &unk_100797230);
    }
  }

  v56 = objc_opt_self();
  sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = String._bridgeToObjectiveC()();

  [v56 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v58];

  swift_willThrow();
  return v1;
}

void sub_1004BB414(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v65 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = v54 - v11;
  v68 = type metadata accessor for UUID();
  v12 = *(*(v68 - 8) + 64);
  *&v14 = __chkstk_darwin(v68).n128_u64[0];
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = (a3 + 32);
    v67 = (v13 + 8);
    v63 = (v7 + 32);
    v64 = (v7 + 8);
    do
    {
      v23 = *v18++;
      v22 = v23;
      if (v23 <= 2)
      {
        if (!v22)
        {
          v19 = [a1 objectID];
          v20 = [v19 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v21.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v67)(v16, v68);
          [a2 setIdentifier:v21.super.isa];
LABEL_4:

          goto LABEL_5;
        }

        if (v22 == 1)
        {
          v21.super.isa = [a1 uti];
          if (!v21.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21.super.isa = String._bridgeToObjectiveC()();
          }

          [a2 setUti:v21.super.isa];
          goto LABEL_4;
        }

        v50 = [a1 fileSize];
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        [a2 setFileSize:v50];
      }

      else if (v22 > 4)
      {
        if (v22 == 5)
        {
          v49 = [a1 width];
          if (v49 >> 15)
          {
            goto LABEL_34;
          }

          [a2 setWidth:v49];
        }

        else
        {
          v51 = [a1 height];
          if (v51 >> 15)
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          [a2 setHeight:v51];
        }
      }

      else if (v22 == 3)
      {
        v24 = [a1 fileURL];
        if (v24)
        {
          v25 = v65;
          v26 = v24;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = v66;
          (*v63)(v66, v25, v6);
          v28 = [a2 storeControllerManagedObjectContext];
          if (v28 && (v29 = v28, v30 = [v28 storeController], v29, v30))
          {
            v60 = static REMFileDigester.sha512Sum(url:)();
            v61 = v31;
            if (v31)
            {
              v58 = v6;
              v59 = v30;
              v54[1] = URL.lastPathComponent.getter();
              v57 = v32;
              v33 = [a1 objectID];
              v34 = [v33 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v35.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              v36 = v68;
              v55 = *v67;
              isa = v35.super.isa;
              v55(v16, v68);
              v37 = [a1 accountID];
              v38 = [v37 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = UUID._bridgeToObjectiveC()().super.isa;
              v54[0] = v16;
              v55(v16, v36);
              URL.lastPathComponent.getter();
              v40 = String._bridgeToObjectiveC()();

              v41 = String._bridgeToObjectiveC()();
              URL._bridgeToObjectiveC()(v42);
              v44 = v43;
              v69 = 0;
              v45 = isa;
              LODWORD(v55) = [v59 updateAttachmentFile:isa accountID:v39 fileName:v40 sha512Sum:v41 fileURL:v43 keepSource:1 error:&v69];

              v46 = v69;
              if ((v55 & 1) == 0)
              {
                v52 = v46;

                v53 = _convertNSErrorToError(_:)();

                v62 = v53;
                swift_willThrow();

                (*v64)(v66, v58);
                return;
              }

              v47 = String._bridgeToObjectiveC()();

              [a2 setFileName:v47];

              v48 = String._bridgeToObjectiveC()();

              [a2 setSha512Sum:v48];

              v6 = v58;
              (*v64)(v66, v58);
              v16 = v54[0];
            }

            else
            {
              (*v64)(v27, v6);
            }
          }

          else
          {
            (*v64)(v27, v6);
          }
        }
      }

LABEL_5:
      --v17;
    }

    while (v17);
  }
}

void sub_1004BBAB8(void *a1, void *a2, uint64_t a3)
{
  v70 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v66 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v67 = &v53[-v10];
  v69 = type metadata accessor for UUID();
  v11 = *(*(v69 - 8) + 64);
  *&v13 = __chkstk_darwin(v69).n128_u64[0];
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (a3 + 32);
    v68 = (v12 + 8);
    v64 = (v6 + 32);
    v65 = (v6 + 8);
    v18 = &selRef_hack_willSaveHandled;
    do
    {
      v23 = *v17++;
      v22 = v23;
      if (v23 <= 1)
      {
        if (v22)
        {
          v21.super.isa = [a1 uti];
          if (!v21.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21.super.isa = String._bridgeToObjectiveC()();
          }

          [v70 setUti:v21.super.isa];
        }

        else
        {
          v19 = [a1 v18[433]];
          v20 = [v19 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v21.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v68)(v15, v69);
          [v70 setIdentifier:v21.super.isa];
        }
      }

      else if (v22 == 2)
      {
        v50 = [a1 fileSize];
        if ((v50 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        [v70 setFileSize:v50];
      }

      else if (v22 == 3)
      {
        v24 = [a1 fileURL];
        if (v24)
        {
          v25 = v66;
          v26 = v24;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = v67;
          (*v64)(v67, v25, v5);
          v28 = [v70 storeControllerManagedObjectContext];
          if (v28 && (v29 = v28, v30 = [v28 storeController], v29, v30))
          {
            v62 = static REMFileDigester.sha512Sum(url:)();
            v63 = v31;
            if (v31)
            {
              v57 = v5;
              v60 = v30;
              v58 = URL.lastPathComponent.getter();
              v59 = v32;
              v33 = [a1 v18[433]];
              v34 = [v33 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v35 = v69;
              v36 = *v68;
              (*v68)(v15, v69);
              v37 = [a1 accountID];
              v38 = [v37 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = UUID._bridgeToObjectiveC()().super.isa;
              v36(v15, v35);
              v39 = String._bridgeToObjectiveC()();
              v40 = String._bridgeToObjectiveC()();
              URL._bridgeToObjectiveC()(v41);
              v43 = v42;
              v71 = 0;
              v44 = v55;
              v45 = isa;
              v54 = [v60 updateAttachmentFile:isa accountID:v55 fileName:v39 sha512Sum:v40 fileURL:v42 keepSource:1 error:&v71];

              if ((v54 & 1) == 0)
              {
                v51 = v71;

                v52 = _convertNSErrorToError(_:)();

                v61 = v52;
                swift_willThrow();

                (*v65)(v67, v57);
                return;
              }

              v46 = v71;
              v47 = String._bridgeToObjectiveC()();

              v48 = v70;
              [v70 setFileName:v47];

              v49 = String._bridgeToObjectiveC()();

              [v48 setSha512Sum:v49];

              v5 = v57;
              (*v65)(v67, v57);
              v18 = &selRef_hack_willSaveHandled;
            }

            else
            {
              (*v65)(v27, v5);
            }
          }

          else
          {
            (*v65)(v27, v5);
          }
        }
      }

      --v16;
    }

    while (v16);
  }
}

id sub_1004BC0DC(id a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v88 - v12;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v88 - v16;
  v102 = 0;
  v18 = [a1 remObjectIDWithError:{&v102, v15}];
  if (!v18)
  {
    v44 = v102;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a1;
  }

  v97 = v3;
  v98 = v13;
  v100 = v17;
  v101 = v18;
  v19 = v102;
  v20 = [a1 account];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 remObjectID];

    v99 = v22;
    if (v22)
    {
      v23 = [a1 reminder];
      if (v23 && (v24 = v23, v25 = [v23 remObjectID], v24, v25))
      {
        v26 = [a1 uti];
        if (v26)
        {
          v27 = v10;
          v95 = v25;
          v96 = v26;
          v28 = type metadata accessor for URL();
          v29 = *(v28 - 8);
          v30 = *(v29 + 56);
          v31 = v100;
          v91 = v29 + 56;
          v92 = v30;
          v30(v100, 1, 1, v28);
          v32 = [a1 storeControllerManagedObjectContext];
          if (v32)
          {
            v94 = v29;
            v33 = v32;
            v34 = [v32 storeController];

            v29 = v94;
            v93 = v34;
            if (v34)
            {
              v35 = [a1 fileName];
              if (v35)
              {
                v89 = v35;
                v36 = [v101 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v90 = v28;
                v38 = v97[1];
                v38(v6, v2);
                v39 = [v99 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v40 = UUID._bridgeToObjectiveC()().super.isa;
                v38(v6, v2);
                v28 = v90;
                v31 = v100;
                v97 = [a1 sha512Sum];
                v41 = v89;
                v42 = [v93 URLForAttachmentFile:isa accountID:v40 fileName:v89 sha512Sum:v97];

                v29 = v94;
                v43 = v98;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1000050A4(v31, &unk_1009441F0, &qword_100795760);
                v92(v43, 0, 1, v28);
                sub_10003E8F8(v43, v31);
              }

              else
              {
              }
            }
          }

          v73 = [a1 fileSize];
          if ((v73 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          v74 = v73;
          sub_1001E0978(v31, v27);
          v75 = [a1 width];
          v76 = v75 & ~(v75 >> 31);
          v77 = [a1 height];
          v78 = v77 & ~(v77 >> 31);
          if ((*(v29 + 48))(v27, 1, v28) == 1)
          {
            v80 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v79);
            v80 = v81;
            (*(v29 + 8))(v27, v28);
          }

          v82 = objc_allocWithZone(REMImageAttachment);
          v87 = v76;
          v83 = v101;
          v84 = v99;
          v85 = v95;
          v86 = v96;
          a1 = [v82 initWithObjectID:v101 accountID:v99 reminderID:v95 UTI:v96 fileSize:v74 fileURL:v80 data:0 width:v87 height:v78];

          sub_1000050A4(v31, &unk_1009441F0, &qword_100795760);
          return a1;
        }
      }

      else
      {
        v25 = v99;
      }
    }
  }

  v45 = [a1 account];
  if (v45)
  {
    v46 = v45;
    v47 = v101;
  }

  else
  {
    v47 = v101;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_1009494A0);
    v49 = v47;
    v46 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v49;
      *v52 = v47;
      v53 = v49;
      _os_log_impl(&_mh_execute_header, v46, v50, "REMImageAttachmentCDIngestor: cdImageAttachment.account is nil {cdImageAttachment.remObjectID: %@}", v51, 0xCu);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);
    }
  }

  v54 = [a1 reminder];
  if (v54)
  {
    v55 = v54;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_1009494A0);
    v57 = v47;
    v55 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v57;
      *v60 = v47;
      v61 = v57;
      _os_log_impl(&_mh_execute_header, v55, v58, "REMImageAttachmentCDIngestor: cdImageAttachment.reminder is nil {cdImageAttachment.remObjectID: %@}", v59, 0xCu);
      sub_1000050A4(v60, &unk_100938E70, &unk_100797230);
    }
  }

  v62 = [a1 uti];
  if (v62)
  {
    v63 = v62;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009494A0);
    v65 = v47;
    v63 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v65;
      *v68 = v47;
      v69 = v65;
      _os_log_impl(&_mh_execute_header, v63, v66, "REMImageAttachmentCDIngestor: cdImageAttachment.uti is nil {cdImageAttachment.remObjectID: %@}", v67, 0xCu);
      sub_1000050A4(v68, &unk_100938E70, &unk_100797230);
    }
  }

  a1 = objc_opt_self();
  sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = String._bridgeToObjectiveC()();

  [a1 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v71];

  swift_willThrow();
  return a1;
}