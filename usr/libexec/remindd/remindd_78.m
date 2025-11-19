uint64_t sub_1006EE2F4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v116 = a6;
  v115 = a5;
  v110 = a2;
  v111 = a1;
  v93 = type metadata accessor for REMRemindersListDataView.Diff();
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v90 - v13;
  v105 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v104 = *(v105 - 8);
  v14 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v100 = *(v102 - 8);
  v16 = *(v100 + 64);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v99 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = _s9UtilitiesO12SortingStyleOMa();
  v21 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v106 = *(v107 - 8);
  v24 = *(v106 + 64);
  __chkstk_darwin(v107);
  v108 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000F5104(&qword_100950AA0, &qword_1007B6908);
  v94 = *(v96 - 8);
  v26 = *(v94 + 64);
  __chkstk_darwin(v96);
  v95 = &v90 - v27;
  v119 = type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters();
  v113 = *(v119 - 8);
  v28 = *(v113 + 64);
  __chkstk_darwin(v119);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v112 = &v90 - v32;
  v33 = type metadata accessor for CodingUserInfoKey();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PropertyListDecoder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v120 = PropertyListDecoder.init()();
  v109 = a3;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v40 = type metadata accessor for REMStoreObjectsContainer();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  v43 = a4;
  v44 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v124 = v40;
  v123 = v44;
  v118 = v44;

  v45 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v123, v36);
  v45(&ObjectType, 0);
  sub_10000F85C(&qword_100950AA8, &type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters);
  v46 = v119;
  v47 = v117;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v47)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100950598);
    swift_errorRetain();
    v49 = v114;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v123 = v40;
      *v52 = 136315394;
      swift_getErrorValue();
      v53 = Error.rem_errorDescription.getter();
      v55 = sub_10000668C(v53, v54, &v123);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950AB0, &unk_1007B6910);
      v56 = String.init<A>(describing:)();
      v58 = sub_10000668C(v56, v57, &v123);

      *(v52 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v52, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v117 = v43;
    (*(v113 + 32))(v112, v30, v46);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
    v116 = [v60 initWithFetchResultTokenToDiffAgainst:v109];
    v115 = REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
    v61 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v62 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v62 - 8) + 104))(v23, v61, v62);
    swift_storeEnumTagMultiPayload();
    sub_100539164(v99);
    sub_100715370(v23, _s9UtilitiesO12SortingStyleOMa);
    (*(v100 + 104))(v101, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v102);
    (*(v104 + 104))(v103, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v105);
    REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
    v63 = sub_100753DE0(v110);
    v64 = v116;
    sub_100754818(v63);
    v66 = v65;

    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    v67 = sub_100006654(v105, qword_100951B08);
    v115 = &v90;
    v123 = v66;
    __chkstk_darwin(v67);
    *(&v90 - 2) = v68;
    v111 = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
    v69 = Sequence.map<A>(skippingError:_:)();

    v70 = v117;
    v123 = v69;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
    sub_1001EB528();
    v71 = Sequence<>.unique()();

    (*(v106 + 8))(v108, v107);

    v72 = *(v71 + 16);

    v73 = [v114 fetchResultTokenToDiffAgainst];
    v74 = v97;
    sub_100534D44(v73, v97);

    v123 = v72;
    v75 = v92;
    v76 = v93;
    (*(v92 + 16))(v91, v74, v93);
    v77 = v70;
    v78 = v95;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v75 + 8))(v74, v76);
    v79 = type metadata accessor for PropertyListEncoder();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v82 = *(v40 + 48);
    v83 = *(v40 + 52);
    swift_allocObject();
    v84 = v77;
    v85 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v124 = v40;
    v123 = v85;

    v86 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v87 = v36;
    v88 = v78;
    sub_10000E350(&v123, v87);
    v86(&ObjectType, 0);
    sub_10000CB48(&qword_100950AB8, &qword_100950AA0, &qword_1007B6908);
    v89 = v96;
    v40 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v94 + 8))(v88, v89);
    (*(v113 + 8))(v112, v119);
  }

  return v40;
}

uint64_t sub_1006EF458(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v131 = a6;
  v130 = a5;
  v123 = a3;
  v125 = a2;
  v126 = a1;
  v9 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v116 = &v105 - v11;
  v112 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v111 = *(v112 - 8);
  v12 = *(v111 + 64);
  __chkstk_darwin(v112);
  v120 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v105 - v15;
  v16 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v105 = &v105 - v18;
  v115 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v114 = *(v115 - 8);
  v19 = *(v114 + 64);
  __chkstk_darwin(v115);
  v108 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v118 = &v105 - v22;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v106 = *(Configuration - 8);
  v23 = *(v106 + 64);
  __chkstk_darwin(Configuration);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for REMRemindersListDataView.Diff();
  v110 = *(v119 - 8);
  v26 = *(v110 + 64);
  __chkstk_darwin(v119);
  v109 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v124 = &v105 - v29;
  v117 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v113 = *(v117 - 8);
  v30 = *(v113 + 64);
  __chkstk_darwin(v117);
  v32 = &v105 - v31;
  v134 = type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters();
  v127 = *(v134 - 8);
  v33 = *(v127 + 64);
  __chkstk_darwin(v134);
  v35 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v128 = &v105 - v37;
  v38 = type metadata accessor for CodingUserInfoKey();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PropertyListDecoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v135 = PropertyListDecoder.init()();
  v122 = v32;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v45 = type metadata accessor for REMStoreObjectsContainer();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = a4;
  v49 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v139 = v45;
  v138 = v49;
  v133 = v49;

  v50 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v138, v41);
  v50(&ObjectType, 0);
  sub_10000F85C(&qword_100950A90, &type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters);
  v51 = v134;
  v52 = v132;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v52)
  {
    v53 = v129;
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100950598);
    swift_errorRetain();
    v55 = v53;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v51 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v51 = 136315394;
      swift_getErrorValue();
      v58 = Error.rem_errorDescription.getter();
      v60 = sub_10000668C(v58, v59, &v138);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A98, &qword_1007B6900);
      v61 = String.init<A>(describing:)();
      v63 = sub_10000668C(v61, v62, &v138);

      *(v51 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v51, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v51;
  }

  v64 = v128;
  (*(v127 + 32))(v128, v35, v51);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v66 = v125;
  v132 = sub_10022574C(v125, v64);
  sub_1002262A8(v66);
  LODWORD(v131) = v67;
  v130 = v68;
  v69 = [v129 fetchResultTokenToDiffAgainst];
  sub_100534D44(v69, v124);

  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v70 = v118;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v106 + 8))(v25, Configuration);
  v71 = v114;
  v72 = v108;
  v73 = v70;
  v74 = v115;
  (*(v114 + 16))(v108, v73, v115);
  v75 = (*(v71 + 88))(v72, v74);
  if (v75 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v71 + 96))(v72, v74);
    sub_10053DB98(*v72, v132, v125, v48, 0);
    v76 = v116;
LABEL_19:
    (*(v71 + 8))(v118, v74);
    if (v131)
    {
      v85 = 1;
    }

    else
    {
      v86 = *(v132 + 16);
      REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
      v85 = 0;
    }

    v87 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v87 - 8) + 56))(v76, v85, 1, v87);
    v88 = v121;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v89 = v111;
    v90 = v112;
    (*(v111 + 16))(v120, v88, v112);
    v91 = v110;
    (*(v110 + 16))(v109, v124, v119);
    v132 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v89 + 8))(v121, v90);
    (*(v91 + 8))(v124, v119);
    v92 = type metadata accessor for PropertyListEncoder();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v95 = *(v45 + 48);
    v96 = *(v45 + 52);
    swift_allocObject();
    v97 = v48;
    v98 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v139 = v45;
    v138 = v98;

    v99 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v100 = v41;
    v101 = v122;
    sub_10000E350(&v138, v100);
    v99(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0);
    v102 = v117;
    v103 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v104 = v128;
    v51 = v103;
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v113 + 8))(v101, v102);
    (*(v127 + 8))(v104, v134);

    return v51;
  }

  v76 = v116;
  if (v75 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v71 + 96))(v72, v74);
    sub_10053E698(*v72, v124, v125, v48, 0);
    goto LABEL_19;
  }

  if (v75 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v71 + 96))(v72, v74);
    v77 = *v72;
    v78 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v79 = v105;
    sub_100031B58(v72 + *(v78 + 48), v105, &qword_10094B8E0, &unk_1007AABD0);
    v80 = v77;
    v81 = v132;
    v82 = v125;
    sub_10053DB98(v80, v132, v125, v48, 0);
    v83 = v82;
    v74 = v115;
    sub_10053EBE4(v79, v81, v83, v48, 0);
    v84 = v79;
    v76 = v116;
    sub_1000050A4(v84, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_19;
  }

  if (v75 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v71 = v114;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F0620(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v66 = a5;
  v61 = a3;
  v60 = a2;
  v63 = a1;
  v59 = sub_1000F5104(&qword_100950A78, &qword_1007B68F0);
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v59);
  v62 = &v57 - v11;
  v70 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v70);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v57 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v71 = PropertyListDecoder.init()();
  v65 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v75 = v25;
  v74[0] = v29;
  v69 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v74, v21);
  v30(v73, 0);
  sub_10000F85C(&qword_100950828, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters);
  v31 = v70;
  v32 = v68;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v65;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v74);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v73[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A80, &qword_1007B68F8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v74);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    (*(v12 + 32))(v64, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v46 = v72;
    sub_100261E24(v60, v28, v62);
    v68 = v46;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v25 + 48);
    v51 = *(v25 + 52);
    swift_allocObject();
    v52 = v28;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v75 = v25;
    v74[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v74, v21);
    v54(v73, 0);
    sub_10000CB48(&qword_100950A88, &qword_100950A78, &qword_1007B68F0);
    v55 = v62;
    v56 = v59;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v58 + 8))(v55, v56);
    (*(v44 + 8))(v64, v70);
  }

  return v35;
}

char *sub_1006F0FC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a6;
  v85 = a3;
  v87 = a2;
  v88 = a1;
  v9 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = &v74 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  __chkstk_darwin(v78);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v74 - v15;
  v83 = type metadata accessor for REMRemindersListDataView.Diff();
  v76 = *(v83 - 8);
  v16 = *(v76 + 64);
  __chkstk_darwin(v83);
  v74 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v86 = &v74 - v19;
  v20 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  __chkstk_darwin(v20);
  v84 = &v74 - v22;
  v95 = type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation.Parameters();
  v89 = *(v95 - 8);
  v23 = *(v89 + 64);
  __chkstk_darwin(v95);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v90 = &v74 - v27;
  v28 = type metadata accessor for CodingUserInfoKey();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PropertyListDecoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v96 = PropertyListDecoder.init()();
  v80 = v20;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v35 = type metadata accessor for REMStoreObjectsContainer();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  v38 = a4;
  v39 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v100 = v35;
  v99 = v39;
  v94 = v39;

  v40 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v99, v31);
  v40(&ObjectType, 0);
  sub_10000F85C(&qword_100950A50, &type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation.Parameters);
  v41 = v95;
  v42 = v93;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v42)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100950598);
    swift_errorRetain();
    v44 = v91;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v25 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v25 = 136315394;
      swift_getErrorValue();
      v47 = Error.rem_errorDescription.getter();
      v49 = sub_10000668C(v47, v48, &v99);

      *(v25 + 4) = v49;
      *(v25 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A58, &qword_1007B68D8);
      v50 = String.init<A>(describing:)();
      v52 = sub_10000668C(v50, v51, &v99);

      *(v25 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v25, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v93 = v38;
    v53 = v89;
    (*(v89 + 32))(v90, v25, v41);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    sub_100294100(v87);
    v55 = [v91 fetchResultTokenToDiffAgainst];
    v56 = v86;
    sub_100534D44(v55, v86);

    v57 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v57 - 8) + 56))(v75, 1, 1, v57);
    v58 = v82;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v59 = v56;
    v60 = v77;
    v61 = v78;
    (*(v77 + 16))(v81, v58, v78);
    v62 = v76;
    (*(v76 + 16))(v74, v59, v83);
    v92 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v60 + 8))(v82, v61);
    (*(v62 + 8))(v86, v83);
    v63 = type metadata accessor for PropertyListEncoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v66 = *(v35 + 48);
    v67 = *(v35 + 52);
    swift_allocObject();
    v68 = v93;
    v69 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v100 = v35;
    v99 = v69;

    v70 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v71 = v31;
    v72 = v84;
    sub_10000E350(&v99, v71);
    v70(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0);
    v73 = v80;
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v79 + 8))(v72, v73);
    (*(v53 + 8))(v90, v95);
  }

  return v25;
}

NSObject *sub_1006F1CF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, __n128), unint64_t *a9, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t, char *), uint64_t *a13, uint64_t *a14)
{
  v121 = a6;
  v120 = a5;
  v106 = a3;
  v111 = a2;
  v114 = a1;
  v113 = a14;
  v112 = a13;
  v119 = a11;
  v118 = a10;
  v104 = type metadata accessor for REMRemindersListDataView.Diff();
  v100 = *(v104 - 8);
  v17 = *(v100 + 64);
  __chkstk_darwin(v104);
  v99 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = &v97 - v20;
  v21 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v105 = &v97 - v23;
  v108 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v107 = *(v108 - 8);
  v24 = *(v107 + 64);
  __chkstk_darwin(v108);
  v98 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v110 = &v97 - v27;
  v103 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v101 = *(v103 - 8);
  v28 = *(v101 + 64);
  v29 = __chkstk_darwin(v103);
  v102 = &v97 - v30;
  v124 = a8(0, v29);
  v116 = *(v124 - 8);
  v31 = *(v116 + 64);
  __chkstk_darwin(v124);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v115 = &v97 - v35;
  v36 = type metadata accessor for CodingUserInfoKey();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PropertyListDecoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v125 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v43 = type metadata accessor for REMStoreObjectsContainer();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();

  v46 = a4;
  v47 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v129 = v43;
  v128 = v47;
  v123 = v47;

  v48 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v128, v39);
  v48(&ObjectType, 0);
  sub_10000F85C(a9, v118);
  v49 = v124;
  v50 = v122;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v50)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_100950598);
    swift_errorRetain();
    v52 = v117;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v55 = 136315394;
      swift_getErrorValue();
      v56 = Error.rem_errorDescription.getter();
      v58 = sub_10000668C(v56, v57, &v128);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(v112, v113);
      v59 = String.init<A>(describing:)();
      v61 = sub_10000668C(v59, v60, &v128);

      *(v55 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v55, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v122 = v46;
    v62 = v115;
    (*(v116 + 32))(v115, v33, v49);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    a12(v111, v62);
    v64 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v64 - 8) + 56))(v105, 1, 1, v64);
    v65 = v110;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v66 = [v117 fetchResultTokenToDiffAgainst];
    v67 = v109;
    sub_100534D44(v66, v109);

    v68 = v107;
    v69 = *(v107 + 16);
    v121 = 0;
    v70 = v65;
    v71 = v108;
    v69(v98, v70, v108);
    v72 = v100;
    (*(v100 + 16))(v99, v67, v104);
    v120 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    v73 = v102;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v72 + 8))(v67, v104);
    v74 = v71;
    v75 = v73;
    (*(v68 + 8))(v110, v74);
    v76 = type metadata accessor for PropertyListEncoder();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v79 = *(v43 + 48);
    v80 = *(v43 + 52);
    swift_allocObject();
    v81 = v122;
    v82 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v129 = v43;
    v128 = v82;

    v83 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v128, v39);
    v83(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0);
    v84 = v103;
    v85 = v121;
    v86 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v85)
    {
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100006654(v87, qword_100950598);
      v88 = v117;
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v89))
      {
        v90 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v128 = v122;
        *v90 = 136315394;
        swift_getErrorValue();
        v91 = Error.rem_errorDescription.getter();
        v93 = sub_10000668C(v91, v92, &v128);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(v112, v113);
        v94 = String.init<A>(describing:)();
        v96 = sub_10000668C(v94, v95, &v128);

        *(v90 + 14) = v96;
        v75 = v102;
        _os_log_impl(&_mh_execute_header, v53, v89, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v90, 0x16u);
        swift_arrayDestroy();

        v84 = v103;
      }

      swift_willThrow();

      (*(v101 + 8))(v75, v84);
      (*(v116 + 8))(v115, v124);
    }

    else
    {
      v53 = v86;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v101 + 8))(v73, v84);
      (*(v116 + 8))(v115, v124);
    }
  }

  return v53;
}

uint64_t sub_1006F2A7C(void (**a1)(uint64_t, uint64_t), unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, unint64_t, uint64_t), uint64_t a7)
{
  v173 = a6;
  v162 = a3;
  v167 = a2;
  v168 = a1;
  v148 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v147 = *(v148 - 8);
  v10 = *(v147 + 64);
  __chkstk_darwin(v148);
  v157 = v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = v141 - v13;
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v144 = v141 - v16;
  v165 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v166 = *(v165 - 8);
  v17 = *(v166 + 64);
  __chkstk_darwin(v165);
  v160 = v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = v141 - v20;
  v155 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v154 = *(v155 - 8);
  v21 = *(v154 + 64);
  __chkstk_darwin(v155);
  v152 = (v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v159 = v141 - v24;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v150 = *(Configuration - 8);
  v25 = *(v150 + 64);
  __chkstk_darwin(Configuration);
  v27 = v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for REMRemindersListDataView.Diff();
  v146 = *(v156 - 8);
  v28 = *(v146 + 64);
  __chkstk_darwin(v156);
  v145 = v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v163 = v141 - v31;
  v32 = sub_1000F5104(&qword_100950A20, &qword_1007B68C0);
  v149 = *(v32 - 8);
  v33 = *(v149 + 64);
  __chkstk_darwin(v32);
  v161 = v141 - v34;
  v175 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters();
  v170 = *(v175 - 8);
  v35 = *(v170 + 64);
  __chkstk_darwin(v175);
  v37 = v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v169 = v141 - v39;
  v40 = type metadata accessor for CodingUserInfoKey();
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v176 = v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for PropertyListDecoder();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v177 = PropertyListDecoder.init()();
  v153 = v32;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v46 = type metadata accessor for REMStoreObjectsContainer();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  v49 = a4;
  v50 = REMStoreObjectsContainer.init(store:storages:)();
  v51 = v176;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v181 = v46;
  v180 = v50;
  v172 = v50;

  v52 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v180, v51);
  v52(&ObjectType, 0);
  sub_10000F85C(&qword_100950A28, &type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
  v53 = v174;
  v54 = v175;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v53)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100950598);
    swift_errorRetain();
    v56 = v171;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      a5 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *a5 = 136315394;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = sub_10000668C(v59, v60, &v180);

      *(a5 + 4) = v61;
      *(a5 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A30, &qword_1007B68C8);
      v62 = String.init<A>(describing:)();
      v64 = sub_10000668C(v62, v63, &v180);

      *(a5 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", a5, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return a5;
  }

  v143 = v49;
  v65 = v169;
  (*(v170 + 32))(v169, v37, v54);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v67 = sub_1002AA40C(v167, v65);
  v68 = v171;
  v174 = v67;
  sub_1002AC9DC();
  v141[1] = v69;
  v142 = v70;
  v71 = [v68 fetchResultTokenToDiffAgainst];
  v72 = v163;
  sub_100534D44(v71, v163);

  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v73 = v159;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v150 + 8))(v27, Configuration);
  v74 = v154;
  v75 = v152;
  v76 = v155;
  (*(v154 + 16))(v152, v73, v155);
  v77 = (*(v74 + 88))(v75, v76);
  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v74 + 96))(v75, v76);
    v160 = *v75;
    v78 = *(v174 + 16);
    if (v78)
    {
      v173 = *(v166 + 16);
      v79 = v174 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v162 = *(v166 + 72);
      v166 += 16;
      v168 = (v166 - 8);
      v80 = _swiftEmptyArrayStorage;
      while (1)
      {
        v82 = v164;
        v83 = v165;
        v173(v164, v79, v165);
        v84 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
        (*v168)(v82, v83);
        v85 = *(v84 + 16);
        v86 = v80[2];
        v87 = v86 + v85;
        if (__OFADD__(v86, v85))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v87 > v80[3] >> 1)
        {
          if (v86 <= v87)
          {
            v89 = v86 + v85;
          }

          else
          {
            v89 = v86;
          }

          v80 = sub_100365A24(isUniquelyReferenced_nonNull_native, v89, 1, v80);
        }

        if (*(v84 + 16))
        {
          v86 = v80[2];
          v90 = (v80[3] >> 1) - v86;
          v91 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v90 < v85)
          {
            goto LABEL_60;
          }

          v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
          v93 = *(v91 + 72);
          swift_arrayInitWithCopy();

          v81 = v167;
          if (v85)
          {
            v94 = v80[2];
            v95 = __OFADD__(v94, v85);
            v96 = v94 + v85;
            if (v95)
            {
              goto LABEL_61;
            }

            v80[2] = v96;
          }
        }

        else
        {

          v81 = v167;
          if (v85)
          {
            goto LABEL_59;
          }
        }

        v79 += v162;
        if (!--v78)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      swift_once();
      v129 = type metadata accessor for Logger();
      sub_100006654(v129, qword_100950598);
      v130 = v171;
      swift_errorRetain();
      a5 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(a5, v131))
      {
        v132 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v176 = v86;
        *v132 = 136315394;
        swift_getErrorValue();
        v133 = Error.rem_errorDescription.getter();
        v135 = sub_10000668C(v133, v134, &v180);

        *(v132 + 4) = v135;
        *(v132 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_100950A30, &qword_1007B68C8);
        v136 = String.init<A>(describing:)();
        v138 = sub_10000668C(v136, v137, &v180);

        *(v132 + 14) = v138;
        v78 = v175;
        _os_log_impl(&_mh_execute_header, a5, v131, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v132, 0x16u);
        swift_arrayDestroy();

        v46 = v153;
      }

      swift_willThrow();

      (*(v149 + 8))(v161, v46);
      (*(v170 + 8))(v169, v78);

      return a5;
    }

    v80 = _swiftEmptyArrayStorage;
    v81 = v167;
LABEL_48:
    sub_10053DB98(v160, v80, v81, v143, 0);

    (*(v154 + 8))(v159, v155);
LABEL_49:
    v54 = v175;
    goto LABEL_50;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v74 + 96))(v75, v76);
    sub_10053E698(*v75, v72, v167, v143, 0);
    (*(v74 + 8))(v159, v76);
LABEL_50:
    v113 = v158;
    REMRemindersListDataView.DatesModel.init(groups:completedRemindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v114 = v147;
    v115 = v148;
    (*(v147 + 16))(v157, v113, v148);
    v116 = v146;
    (*(v146 + 16))(v145, v163, v156);
    sub_10000F85C(&qword_100940638, &type metadata accessor for REMRemindersListDataView.DatesModel);
    sub_10000F85C(&qword_100940640, &type metadata accessor for REMRemindersListDataView.DatesModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v114 + 8))(v158, v115);
    (*(v116 + 8))(v163, v156);
    v117 = type metadata accessor for PropertyListEncoder();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v120 = *(v46 + 48);
    v121 = *(v46 + 52);
    swift_allocObject();
    v122 = v143;
    v123 = REMStoreObjectsContainer.init(store:storages:)();
    v124 = v176;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v181 = v46;
    v180 = v123;

    v125 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v126 = v124;
    v127 = v161;
    sub_10000E350(&v180, v126);
    v125(&ObjectType, 0);
    sub_10000CB48(&qword_100950A38, &qword_100950A20, &qword_1007B68C0);
    v128 = v153;
    a5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v149 + 8))(v127, v128);
    (*(v170 + 8))(v169, v54);

    return a5;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v74 + 96))(v75, v76);
    v162 = *v75;
    v97 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v75 + *(v97 + 48), v144, &qword_10094B8E0, &unk_1007AABD0);
    v78 = *(v174 + 16);
    if (v78)
    {
      v173 = *(v166 + 16);
      v98 = v174 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v164 = *(v166 + 72);
      v166 += 16;
      v168 = (v166 - 8);
      v99 = _swiftEmptyArrayStorage;
      while (1)
      {
        v100 = v160;
        v101 = v165;
        v173(v160, v98, v165);
        v102 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
        (*v168)(v100, v101);
        v103 = *(v102 + 16);
        v86 = v99[2];
        v104 = v86 + v103;
        if (__OFADD__(v86, v103))
        {
          goto LABEL_62;
        }

        v105 = swift_isUniquelyReferenced_nonNull_native();
        if (!v105 || v104 > v99[3] >> 1)
        {
          if (v86 <= v104)
          {
            v106 = v86 + v103;
          }

          else
          {
            v106 = v86;
          }

          v99 = sub_100365A24(v105, v106, 1, v99);
        }

        if (*(v102 + 16))
        {
          v86 = v99[2];
          v107 = (v99[3] >> 1) - v86;
          v108 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v107 < v103)
          {
            goto LABEL_64;
          }

          v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v110 = *(v108 + 72);
          swift_arrayInitWithCopy();

          v86 = v167;
          if (v103)
          {
            v111 = v99[2];
            v95 = __OFADD__(v111, v103);
            v112 = v111 + v103;
            if (v95)
            {
              goto LABEL_65;
            }

            v99[2] = v112;
          }
        }

        else
        {

          v86 = v167;
          if (v103)
          {
            goto LABEL_63;
          }
        }

        v98 += v164;
        if (!--v78)
        {
          goto LABEL_57;
        }
      }
    }

    v99 = _swiftEmptyArrayStorage;
    v86 = v167;
LABEL_57:
    v139 = v143;
    sub_10053DB98(v162, v99, v86, v143, 0);
    v140 = v144;
    sub_10053EBE4(v144, v99, v86, v139, 0);

    sub_1000050A4(v140, &qword_10094B8E0, &unk_1007AABD0);
    (*(v154 + 8))(v159, v155);
    goto LABEL_49;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v74 + 8))(v159, v76);
    goto LABEL_50;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F4084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v65 = a5;
  v60 = a3;
  v59 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v57 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v57);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Parameters();
  v63 = *(v69 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v69);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CodingUserInfoKey();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PropertyListDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = a4;
  v28 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v24;
  v73[0] = v28;
  v68 = v28;

  v29 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v20);
  v29(v72, 0);
  sub_10000F85C(&qword_100950A00, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Parameters);
  v30 = v69;
  v31 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v31)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100950598);
    swift_errorRetain();
    v33 = v64;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v36 = 136315394;
      swift_getErrorValue();
      v37 = Error.rem_errorDescription.getter();
      v39 = sub_10000668C(v37, v38, v73);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A08, &qword_1007B68B8);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000668C(v40, v41, v73);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v36, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v43 = v16;
    (*(v63 + 32))(v16, v13, v30);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v45 = sub_10000F85C(&qword_100950A10, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation);
    v46 = v61;
    (*(v45 + 24))(&v71, v59, v60, v27, v43, ObjectType, v45);
    v67 = v43;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v24 + 48);
    v51 = *(v24 + 52);
    swift_allocObject();
    v52 = v27;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v24;
    v73[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v20);
    v54(v72, 0);
    sub_10000F85C(&qword_100950A18, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result);
    v55 = v57;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v56 + 8))(v46, v55);

    (*(v63 + 8))(v67, v30);
  }

  return v34;
}

NSObject *sub_1006F4A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v65 = a5;
  v60 = a3;
  v59 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v57 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v57);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Parameters();
  v63 = *(v69 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v69);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CodingUserInfoKey();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PropertyListDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = a4;
  v28 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v24;
  v73[0] = v28;
  v68 = v28;

  v29 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v20);
  v29(v72, 0);
  sub_10000F85C(&qword_1009509E0, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Parameters);
  v30 = v69;
  v31 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v31)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100950598);
    swift_errorRetain();
    v33 = v64;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v36 = 136315394;
      swift_getErrorValue();
      v37 = Error.rem_errorDescription.getter();
      v39 = sub_10000668C(v37, v38, v73);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509E8, &qword_1007B68B0);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000668C(v40, v41, v73);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v36, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v43 = v16;
    (*(v63 + 32))(v16, v13, v30);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v45 = sub_10000F85C(&qword_1009509F0, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation);
    v46 = v61;
    (*(v45 + 24))(&v71, v59, v60, v27, v43, ObjectType, v45);
    v67 = v43;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v24 + 48);
    v51 = *(v24 + 52);
    swift_allocObject();
    v52 = v27;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v24;
    v73[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v20);
    v54(v72, 0);
    sub_10000F85C(&qword_1009509F8, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result);
    v55 = v57;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v56 + 8))(v46, v55);

    (*(v63 + 8))(v67, v30);
  }

  return v34;
}

NSObject *sub_1006F5484(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v65 = a5;
  v60 = a3;
  v59 = a2;
  v62 = a1;
  v58 = type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v58);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v69);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v56 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  v64 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v25;
  v73[0] = v29;
  v68 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v21);
  v30(v72, 0);
  sub_10000F85C(&qword_1009509C8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters);
  v31 = v69;
  v32 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v64;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v73);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509D0, &qword_1007B68A8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v73);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    (*(v12 + 32))(v63, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v46 = v71;
    sub_1002E0080(v59, v61);
    v67 = v46;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v25 + 48);
    v51 = *(v25 + 52);
    swift_allocObject();
    v52 = v28;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v25;
    v73[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v21);
    v54(v72, 0);
    sub_10000F85C(&qword_1009509D8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result);
    v55 = v58;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v57 + 8))(v61, v55);
    (*(v44 + 8))(v63, v31);
  }

  return v35;
}

NSObject *sub_1006F5E18(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a6;
  v69 = a5;
  v64 = a3;
  v63 = a2;
  v66 = a1;
  v62 = type metadata accessor for REMSuggestedAttributesTrainer.Result();
  v61 = *(v62 - 8);
  v10 = *(v61 + 64);
  __chkstk_darwin(v62);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v12 = *(v73 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v73);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = &v60 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v74 = PropertyListDecoder.init()();
  v68 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v78 = v25;
  v77[0] = v29;
  v72 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v77, v21);
  v30(v76, 0);
  sub_10000F85C(&qword_1009509B0, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters);
  v31 = v73;
  v32 = v71;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v68;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v77);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v76[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509B8, &qword_1007B68A0);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v77);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v67;
    (*(v12 + 32))(v67, v15, v31);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v75;
    v48 = objc_autoreleasePoolPush();
    sub_1002E2298(v47, v63, v28, v45, v65);
    v71 = v47;
    objc_autoreleasePoolPop(v48);
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v53 = *(v25 + 48);
    v54 = *(v25 + 52);
    swift_allocObject();
    v55 = v28;
    v56 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v78 = v25;
    v77[0] = v56;

    v57 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v77, v21);
    v57(v76, 0);
    sub_10000F85C(&qword_1009509C0, &type metadata accessor for REMSuggestedAttributesTrainer.Result);
    v58 = v65;
    v59 = v62;
    v70 = v52;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v61 + 8))(v58, v59);
    (*(v44 + 8))(v67, v31);
  }

  return v35;
}

NSObject *sub_1006F6800(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950990, &qword_1007B6890);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950998, &type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509A0, &qword_1007B6898);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_10030953C(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_1009509A8, &qword_100950990, &qword_1007B6890);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

NSObject *sub_1006F71A4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a6;
  v90 = a5;
  v81 = a3;
  v85 = a2;
  v86 = a1;
  v73 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v73);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v71 - v12;
  v79 = type metadata accessor for REMRemindersListDataView.Diff();
  v71 = *(v79 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v79);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v71 - v16;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v84 = *(Configuration - 8);
  v17 = *(v84 + 64);
  __chkstk_darwin(Configuration);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000F5104(&qword_1009507E8, &qword_1007B67C8);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v75);
  v22 = &v71 - v21;
  v94 = type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters();
  v87 = *(v94 - 8);
  v23 = *(v87 + 64);
  __chkstk_darwin(v94);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v71 - v27;
  v28 = type metadata accessor for CodingUserInfoKey();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PropertyListDecoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v95 = PropertyListDecoder.init()();
  v80 = v22;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v35 = type metadata accessor for REMStoreObjectsContainer();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  v38 = a4;
  v39 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v99 = v35;
  v98 = v39;
  v93 = v39;

  v40 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v98, v31);
  v40(&ObjectType, 0);
  sub_10000F85C(&qword_100950980, &type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters);
  v41 = v94;
  v42 = v92;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v42)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100950598);
    swift_errorRetain();
    v44 = v89;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v47 = 136315394;
      swift_getErrorValue();
      v48 = Error.rem_errorDescription.getter();
      v50 = sub_10000668C(v48, v49, &v98);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950988, &qword_1007B6888);
      v51 = String.init<A>(describing:)();
      v53 = sub_10000668C(v51, v52, &v98);

      *(v47 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v47, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v87 + 32))(v88, v25, v41);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters.configuration.getter();
    sub_100352264(v85);
    (*(v84 + 8))(v19, Configuration);
    v55 = [v89 fetchResultTokenToDiffAgainst];
    v56 = v82;
    sub_100534D44(v55, v82);

    v57 = v78;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v58 = v72;
    v59 = v73;
    (*(v72 + 16))(v77, v57, v73);
    v60 = v71;
    (*(v71 + 16))(v76, v56, v79);
    sub_10000F85C(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    sub_10000F85C(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v58 + 8))(v78, v59);
    (*(v60 + 8))(v82, v79);
    v61 = type metadata accessor for PropertyListEncoder();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v64 = *(v35 + 48);
    v65 = *(v35 + 52);
    swift_allocObject();
    v66 = v38;
    v67 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v99 = v35;
    v68 = v80;
    v98 = v67;

    v69 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v98, v31);
    v69(&ObjectType, 0);
    sub_10000CB48(&qword_100950800, &qword_1009507E8, &qword_1007B67C8);
    v70 = v75;
    v45 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v74 + 8))(v68, v70);
    (*(v87 + 8))(v88, v94);
  }

  return v45;
}

uint64_t sub_1006F7F1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v129 = a6;
  v121 = a3;
  v124 = a2;
  v125 = a1;
  v111 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v110 = *(v111 - 8);
  v9 = *(v110 + 64);
  __chkstk_darwin(v111);
  v118 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v101 - v12;
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v102 = &v101 - v15;
  v114 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v113 = *(v114 - 8);
  v16 = *(v113 + 64);
  __chkstk_darwin(v114);
  v106 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v116 = &v101 - v19;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v104 = *(Configuration - 8);
  v20 = *(v104 + 64);
  __chkstk_darwin(Configuration);
  v103 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for REMRemindersListDataView.Diff();
  v109 = *(v117 - 8);
  v22 = *(v109 + 64);
  __chkstk_darwin(v117);
  v108 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v101 - v25;
  v26 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v107 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v123 = &v101 - v30;
  v31 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v112 = *(v31 - 8);
  v32 = *(v112 + 64);
  __chkstk_darwin(v31);
  v34 = &v101 - v33;
  v132 = type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters();
  v126 = *(v132 - 8);
  v35 = *(v126 + 64);
  __chkstk_darwin(v132);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v127 = &v101 - v39;
  v40 = type metadata accessor for CodingUserInfoKey();
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PropertyListDecoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v133 = PropertyListDecoder.init()();
  v115 = v31;
  v120 = v34;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v47 = type metadata accessor for REMStoreObjectsContainer();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();

  v50 = a4;
  v51 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v137 = v47;
  v136 = v51;
  v131 = v51;

  v52 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v136, v43);
  v52(&ObjectType, 0);
  sub_10000F85C(&qword_100950918, &type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters);
  v53 = v132;
  v54 = v130;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v54)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100950598);
    swift_errorRetain();
    v56 = v128;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v53 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v53 = 136315394;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = sub_10000668C(v59, v60, &v136);

      *(v53 + 4) = v61;
      *(v53 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950920, &qword_1007B6860);
      v62 = String.init<A>(describing:)();
      v64 = sub_10000668C(v62, v63, &v136);

      *(v53 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v53, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v53;
  }

  v65 = v50;
  v66 = v126;
  v67 = v127;
  (*(v126 + 32))(v127, v37, v53);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v69 = v124;
  v130 = sub_1003FA7F4(v124, v67);
  v70 = v128;
  sub_1003FA464(v69, v123);
  v71 = [v70 fetchResultTokenToDiffAgainst];
  v72 = v122;
  sub_100534D44(v71, v122);

  v73 = v103;
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v104 + 8))(v73, Configuration);
  v74 = v113;
  v75 = v106;
  v76 = v114;
  (*(v113 + 16))();
  v77 = (*(v74 + 88))(v75, v76);
  v101 = v65;
  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v74 + 96))(v75, v76);
    sub_10053DB98(*v75, v130, v124, v65, 0);
LABEL_15:
    v78 = v123;
LABEL_16:
    (*(v74 + 8))(v116, v76);
    sub_100010364(v78, v107, &qword_100938A70, &qword_1007ACC60);
    v79 = v119;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v80 = v110;
    v81 = v111;
    (*(v110 + 16))(v118, v79, v111);
    v82 = v109;
    (*(v109 + 16))(v108, v122, v117);
    v130 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v80 + 8))(v119, v81);
    (*(v82 + 8))(v122, v117);
    sub_1000050A4(v123, &qword_100938A70, &qword_1007ACC60);
    v83 = type metadata accessor for PropertyListEncoder();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v86 = *(v47 + 48);
    v87 = *(v47 + 52);
    swift_allocObject();
    v88 = v101;
    v89 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v137 = v47;
    v136 = v89;

    v90 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v91 = v43;
    v92 = v120;
    sub_10000E350(&v136, v91);
    v90(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0);
    v93 = v115;
    v53 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v112 + 8))(v92, v93);
    (*(v66 + 8))(v127, v132);

    return v53;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v74 + 96))(v75, v76);
    sub_10053E698(*v75, v72, v124, v65, 0);
    goto LABEL_15;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v74 + 96))(v75, v76);
    v94 = *v75;
    v95 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v96 = v102;
    sub_100031B58(v75 + *(v95 + 48), v102, &qword_10094B8E0, &unk_1007AABD0);
    v97 = v94;
    v98 = v130;
    v99 = v124;
    sub_10053DB98(v97, v130, v124, v65, 0);
    v100 = v98;
    v76 = v114;
    sub_10053EBE4(v96, v100, v99, v65, 0);
    v66 = v126;
    sub_1000050A4(v96, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_15;
  }

  if (v77 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v78 = v123;
    v74 = v113;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F9100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMSuggestedAttributesHarvester.Response();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950900, &type metadata accessor for REMSuggestedAttributesHarvester.Request);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950908, &qword_1007B6858);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_100418990(v73, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_100950910, &type metadata accessor for REMSuggestedAttributesHarvester.Response);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_1006F9A94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v65 = a5;
  v60 = a3;
  v59 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v57 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionResponse();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v57);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  v63 = *(v69 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v69);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CodingUserInfoKey();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PropertyListDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = a4;
  v28 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v24;
  v73[0] = v28;
  v68 = v28;

  v29 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v20);
  v29(v72, 0);
  sub_10000F85C(&qword_1009508E0, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest);
  v30 = v69;
  v31 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v31)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100950598);
    swift_errorRetain();
    v33 = v64;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v36 = 136315394;
      swift_getErrorValue();
      v37 = Error.rem_errorDescription.getter();
      v39 = sub_10000668C(v37, v38, v73);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009508E8, &qword_1007B6850);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000668C(v40, v41, v73);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v36, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v43 = v16;
    (*(v63 + 32))(v16, v13, v30);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v45 = sub_10000F85C(&qword_1009508F0, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation);
    v46 = v61;
    (*(v45 + 24))(&v71, v59, v60, v27, v43, ObjectType, v45);
    v67 = v43;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v24 + 48);
    v51 = *(v24 + 52);
    swift_allocObject();
    v52 = v27;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v24;
    v73[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v20);
    v54(v72, 0);
    sub_10000F85C(&qword_1009508F8, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionResponse);
    v55 = v57;
    v34 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v56 + 8))(v46, v55);

    (*(v63 + 8))(v67, v30);
  }

  return v34;
}

NSObject *sub_1006FA494(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMRemindersListDataView.ListInvocation.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950878, &type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950880, &unk_1007B6808);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_10044C1A4(v61, v62, v28, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_100950888, &type metadata accessor for REMRemindersListDataView.ListInvocation.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_1006FAE28(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950858, &qword_1007B67F8);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = (&v58 - v11);
  v71 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950860, &type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950868, &qword_1007B6800);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_100464BAC(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950870, &qword_100950858, &qword_1007B67F8);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

NSObject *sub_1006FB7CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950820, &qword_1007B67E0);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950828, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950830, &qword_1007B67E8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_100501B70(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950838, &qword_100950820, &qword_1007B67E0);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

NSObject *sub_1006FC170(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v65 = a5;
  v60 = a3;
  v59 = a2;
  v62 = a1;
  v58 = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingModel();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v58);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation.Parameters();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v69);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v56 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  v64 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v25;
  v73[0] = v29;
  v68 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v21);
  v30(v72, 0);
  sub_10000F85C(&qword_100950808, &type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation.Parameters);
  v31 = v69;
  v32 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v64;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v73);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950810, &qword_1007B67D8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v73);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    (*(v12 + 32))(v63, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v46 = v71;
    sub_10052DEFC(v59, v61);
    v67 = v46;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v25 + 48);
    v51 = *(v25 + 52);
    swift_allocObject();
    v52 = v28;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v25;
    v73[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v21);
    v54(v72, 0);
    sub_10000F85C(&qword_100950818, &type metadata accessor for REMRemindersListDataView.TodaySectionOrderingModel);
    v55 = v58;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v57 + 8))(v61, v55);
    (*(v44 + 8))(v63, v31);
  }

  return v35;
}

uint64_t sub_1006FCB04(char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7)
{
  v198 = a6;
  v197 = a5;
  v184 = a3;
  v191 = a2;
  v192 = a1;
  v171 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v170 = *(v171 - 8);
  v9 = *(v170 + 64);
  __chkstk_darwin(v171);
  v168 = v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v169 = v163 - v12;
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v165 = v163 - v15;
  v188 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v189 = *(v188 - 8);
  v16 = *(v189 + 64);
  __chkstk_darwin(v188);
  v182 = v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v186 = v163 - v19;
  v177 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v176 = *(v177 - 8);
  v20 = *(v176 + 64);
  __chkstk_darwin(v177);
  v174 = (v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v181 = v163 - v23;
  v180 = type metadata accessor for REMRemindersListDataView.Diff();
  v167 = *(v180 - 8);
  v24 = *(v167 + 64);
  __chkstk_darwin(v180);
  v166 = v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v185 = v163 - v27;
  v178 = _s10PredicatesOMa(0);
  v28 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v179 = v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v190 = *(Configuration - 8);
  v30 = *(v190 + 64);
  __chkstk_darwin(Configuration);
  v173 = v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v163 - v33;
  __chkstk_darwin(v35);
  v37 = v163 - v36;
  v175 = sub_1000F5104(&qword_1009507E8, &qword_1007B67C8);
  v172 = *(v175 - 8);
  v38 = *(v172 + 64);
  __chkstk_darwin(v175);
  v183 = v163 - v39;
  v201 = type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters();
  v194 = *(v201 - 8);
  v40 = *(v194 + 64);
  __chkstk_darwin(v201);
  v42 = v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v193 = v163 - v44;
  v45 = type metadata accessor for CodingUserInfoKey();
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v200 = v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for PropertyListDecoder();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v202 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v51 = type metadata accessor for REMStoreObjectsContainer();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();

  v54 = a4;
  v55 = REMStoreObjectsContainer.init(store:storages:)();
  v56 = v200;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v206 = v51;
  v205 = v55;
  v196 = v55;

  v57 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v205, v56);
  v57(&ObjectType, 0);
  sub_10000F85C(&qword_1009507F0, &type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters);
  v58 = v201;
  v59 = v199;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v59)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100950598);
    swift_errorRetain();
    v61 = v195;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v42 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *v42 = 136315394;
      swift_getErrorValue();
      v64 = Error.rem_errorDescription.getter();
      v66 = sub_10000668C(v64, v65, &v205);

      *(v42 + 4) = v66;
      *(v42 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507F8, &qword_1007B67D0);
      v67 = String.init<A>(describing:)();
      v69 = sub_10000668C(v67, v68, &v205);

      *(v42 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v42, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v42;
  }

  v164 = v54;
  v199 = v51;
  (*(v194 + 32))(v193, v42, v58);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v192 = sub_100545318(v191, v37);
  v72 = v190 + 8;
  v71 = *(v190 + 8);
  v73 = Configuration;
  v71(v37, Configuration);
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v74 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v190 = v72;
  v71(v34, v73);
  v163[3] = v74;
  if (v74)
  {
    v75 = v179;
    swift_storeEnumTagMultiPayload();
    v76 = sub_100043AA8();
    sub_100715370(v75, _s10PredicatesOMa);
    sub_100345DB0();
    v77 = [objc_allocWithZone(NSFetchRequest) init];
    v78 = [swift_getObjCClassFromMetadata() entity];
    [v77 setEntity:v78];

    [v77 setAffectedStores:0];
    [v77 setPredicate:v76];
    v79 = NSManagedObjectContext.count<A>(for:)();
    v80 = v164;
    v179 = v79;
  }

  else
  {
    v179 = 0;
    v80 = v164;
  }

  v81 = [v195 fetchResultTokenToDiffAgainst];
  v82 = v185;
  sub_100534D44(v81, v185);

  v83 = v173;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v84 = v181;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v71(v83, Configuration);
  v85 = v176;
  v86 = v174;
  v87 = v177;
  (*(v176 + 16))(v174, v84, v177);
  v88 = (*(v85 + 88))(v86, v87);
  if (v88 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v108 = v191;
    if (v88 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v85 + 96))(v86, v87);
      sub_10053E698(*v86, v82, v108, v80, 0);
      (*(v85 + 8))(v181, v87);
    }

    else if (v88 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      (*(v85 + 96))(v86, v87);
      v190 = *v86;
      v109 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      sub_100031B58(v86 + *(v109 + 48), v165, &qword_10094B8E0, &unk_1007AABD0);
      v89 = *(v192 + 2);
      if (v89)
      {
        v198 = *(v189 + 16);
        v110 = &v192[(*(v189 + 80) + 32) & ~*(v189 + 80)];
        v197 = *(v189 + 72);
        v189 += 16;
        v111 = (v189 - 8);
        v112 = _swiftEmptyArrayStorage;
        do
        {
          v113 = v182;
          v114 = v188;
          v198(v182, v110, v188);
          v115 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
          (*v111)(v113, v114);
          v116 = *(v115 + 16);
          v97 = v112[2];
          v117 = v97 + v116;
          if (__OFADD__(v97, v116))
          {
            goto LABEL_63;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v117 > v112[3] >> 1)
          {
            if (v97 <= v117)
            {
              v119 = v97 + v116;
            }

            else
            {
              v119 = v97;
            }

            v112 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v119, 1, v112);
          }

          if (*(v115 + 16))
          {
            v97 = v112[2];
            v120 = (v112[3] >> 1) - v97;
            v121 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
            if (v120 < v116)
            {
              goto LABEL_65;
            }

            v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
            v123 = *(v121 + 72);
            swift_arrayInitWithCopy();

            if (v116)
            {
              v124 = v112[2];
              v106 = __OFADD__(v124, v116);
              v125 = v124 + v116;
              if (v106)
              {
                goto LABEL_66;
              }

              v112[2] = v125;
            }
          }

          else
          {

            if (v116)
            {
              goto LABEL_64;
            }
          }

          v110 += v197;
          --v89;
        }

        while (v89);
      }

      v159 = Array<A>.reminders.getter();

      v160 = v191;
      v161 = v164;
      sub_10053DB98(v190, v159, v191, v164, 0);
      v162 = v165;
      sub_10053EBE4(v165, v159, v160, v161, 0);

      sub_1000050A4(v162, &qword_10094B8E0, &unk_1007AABD0);
      (*(v176 + 8))(v181, v177);
    }

    else
    {
      if (v88 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v85 + 8))(v181, v87);
    }

LABEL_52:
    v127 = v169;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v128 = v170;
    v129 = v171;
    (*(v170 + 16))(v168, v127, v171);
    v130 = v167;
    (*(v167 + 16))(v166, v185, v180);
    sub_10000F85C(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    sub_10000F85C(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v128 + 8))(v127, v129);
    (*(v130 + 8))(v185, v180);
    v131 = type metadata accessor for PropertyListEncoder();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v134 = v199;
    v135 = *(v199 + 48);
    v136 = *(v199 + 52);
    swift_allocObject();
    v137 = v164;
    v138 = REMStoreObjectsContainer.init(store:storages:)();
    v139 = v200;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v206 = v134;
    v205 = v138;

    v140 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v141 = v139;
    v142 = v183;
    sub_10000E350(&v205, v141);
    v140(&ObjectType, 0);
    sub_10000CB48(&qword_100950800, &qword_1009507E8, &qword_1007B67C8);
    v143 = v175;
    v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v172 + 8))(v142, v143);
    (*(v194 + 8))(v193, v201);

    return v42;
  }

  (*(v85 + 96))(v86, v87);
  v190 = *v86;
  v89 = *(v192 + 2);
  if (!v89)
  {
LABEL_51:
    v126 = Array<A>.reminders.getter();

    sub_10053DB98(v190, v126, v191, v164, 0);

    (*(v176 + 8))(v181, v177);
    goto LABEL_52;
  }

  v198 = *(v189 + 16);
  v90 = &v192[(*(v189 + 80) + 32) & ~*(v189 + 80)];
  v197 = *(v189 + 72);
  v189 += 16;
  v91 = (v189 - 8);
  v92 = _swiftEmptyArrayStorage;
  while (1)
  {
    v93 = v186;
    v94 = v188;
    v198(v186, v90, v188);
    v95 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v91)(v93, v94);
    v96 = *(v95 + 16);
    v97 = v92[2];
    v98 = v97 + v96;
    if (__OFADD__(v97, v96))
    {
      break;
    }

    v99 = swift_isUniquelyReferenced_nonNull_native();
    if (v99 && v98 <= v92[3] >> 1)
    {
      if (*(v95 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v97 <= v98)
      {
        v100 = v97 + v96;
      }

      else
      {
        v100 = v97;
      }

      v92 = sub_100365A4C(v99, v100, 1, v92);
      if (*(v95 + 16))
      {
LABEL_28:
        v97 = v92[2];
        v101 = (v92[3] >> 1) - v97;
        v102 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
        if (v101 < v96)
        {
          goto LABEL_61;
        }

        v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v104 = *(v102 + 72);
        swift_arrayInitWithCopy();

        if (v96)
        {
          v105 = v92[2];
          v106 = __OFADD__(v105, v96);
          v107 = v105 + v96;
          if (v106)
          {
            goto LABEL_62;
          }

          v92[2] = v107;
        }

        goto LABEL_18;
      }
    }

    if (v96)
    {
      goto LABEL_60;
    }

LABEL_18:
    v90 += v197;
    if (!--v89)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  swift_once();
  v144 = type metadata accessor for Logger();
  sub_100006654(v144, qword_100950598);
  v145 = v195;
  swift_errorRetain();
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v200 = v89;
    v149 = v148;
    v205 = swift_slowAlloc();
    *v149 = 136315394;
    swift_getErrorValue();
    v150 = Error.rem_errorDescription.getter();
    v152 = sub_10000668C(v150, v151, &v205);

    *(v149 + 4) = v152;
    *(v149 + 12) = 2080;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&qword_1009507F8, &qword_1007B67D0);
    v153 = String.init<A>(describing:)();
    v155 = sub_10000668C(v153, v154, &v205);

    *(v149 + 14) = v155;
    v97 = v201;
    _os_log_impl(&_mh_execute_header, v146, v147, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v149, 0x16u);
    swift_arrayDestroy();
  }

  v156 = v194;
  v42 = v175;
  v157 = v172;
  v158 = v183;
  swift_willThrow();

  (*(v157 + 8))(v158, v42);
  (*(v156 + 8))(v193, v97);

  return v42;
}

uint64_t sub_1006FE380(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v189 = a6;
  v188 = a5;
  v178 = a3;
  v182 = a2;
  v183 = a1;
  v168 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v167 = *(v168 - 8);
  v9 = *(v167 + 64);
  __chkstk_darwin(v168);
  v165 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v157 - v12;
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v161 = &v157 - v15;
  v181 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v162 = *(v181 - 8);
  v16 = *(v162 + 64);
  __chkstk_darwin(v181);
  v177 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v180 = &v157 - v19;
  v174 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v173 = *(v174 - 8);
  v20 = *(v173 + 64);
  __chkstk_darwin(v174);
  v170 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v176 = &v157 - v23;
  v175 = type metadata accessor for REMRemindersListDataView.Diff();
  v164 = *(v175 - 8);
  v24 = *(v164 + 64);
  __chkstk_darwin(v175);
  v163 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v179 = &v157 - v27;
  v28 = _s10PredicatesOMa(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1000F5104(&qword_1009506B8, &qword_1007B6740);
  v169 = *(v172 - 8);
  v32 = *(v169 + 64);
  __chkstk_darwin(v172);
  v171 = &v157 - v33;
  v191 = type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters();
  v184 = *(v191 - 8);
  v34 = *(v184 + 64);
  __chkstk_darwin(v191);
  v36 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v185 = &v157 - v38;
  v39 = type metadata accessor for CodingUserInfoKey();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v192 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PropertyListDecoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v193 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v45 = type metadata accessor for REMStoreObjectsContainer();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = a4;
  v49 = REMStoreObjectsContainer.init(store:storages:)();
  v50 = v192;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v197 = v45;
  v196 = v49;
  v187 = v49;

  v51 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v196, v50);
  v51(&ObjectType, 0);
  sub_10000F85C(&qword_1009507D8, &type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters);
  v52 = v190;
  v53 = v191;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v52)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100950598);
    swift_errorRetain();
    v55 = v186;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *v58 = 136315394;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = sub_10000668C(v59, v60, &v196);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507E0, &qword_1007B67C0);
      v62 = String.init<A>(describing:)();
      v64 = sub_10000668C(v62, v63, &v196);

      *(v58 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v58, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v56;
  }

  v160 = v48;
  v189 = v45;
  v65 = v184;
  (*(v184 + 32))(v185, v36, v53);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v67 = sub_10054D590(v182);
  v190 = 0;
  v68 = v67;
  v159 = REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  if (v159)
  {
    swift_storeEnumTagMultiPayload();
    v56 = sub_100043AA8();
    sub_100715370(v31, _s10PredicatesOMa);
    sub_100345DB0();
    v69 = [objc_allocWithZone(NSFetchRequest) init];
    v70 = [swift_getObjCClassFromMetadata() entity];
    [v69 setEntity:v70];

    [v69 setAffectedStores:0];
    [v69 setPredicate:v56];
    v71 = v190;
    v72 = NSManagedObjectContext.count<A>(for:)();
    v190 = v71;
    if (v71)
    {

      v65 = v184;
      v73 = v185;
LABEL_18:
      (*(v65 + 8))(v73, v53);

      return v56;
    }

    v158 = v72;

    v65 = v184;
  }

  else
  {
    v158 = 0;
  }

  v73 = v185;
  v56 = [v186 fetchResultTokenToDiffAgainst];
  v74 = v179;
  v75 = v190;
  sub_100534D44(v56, v179);
  v190 = v75;
  if (v75)
  {

    goto LABEL_18;
  }

  v76 = v176;
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  v77 = v173;
  v78 = v170;
  v79 = v76;
  v80 = v174;
  (*(v173 + 16))(v170, v79, v174);
  v81 = (*(v77 + 88))(v78, v80);
  if (v81 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v77 + 96))(v78, v80);
    v178 = *v78;
    v53 = v68[2];
    v157 = v68;
    if (v53)
    {
      v188 = *(v162 + 16);
      v82 = v68 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v183 = *(v162 + 72);
      v83 = (v162 + 8);
      v84 = _swiftEmptyArrayStorage;
      while (1)
      {
        v85 = v180;
        v86 = v181;
        v188(v180, v82, v181);
        v87 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v83)(v85, v86);
        v88 = *(v87 + 16);
        v89 = v84[2];
        v90 = v89 + v88;
        if (__OFADD__(v89, v88))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          swift_once();
LABEL_63:
          v141 = type metadata accessor for Logger();
          sub_100006654(v141, qword_100950598);
          v142 = v186;
          swift_errorRetain();
          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            *v145 = 136315394;
            swift_getErrorValue();
            v146 = Error.rem_errorDescription.getter();
            v148 = sub_10000668C(v146, v147, &v196);

            *(v145 + 4) = v148;
            *(v145 + 12) = 2080;
            ObjectType = swift_getObjectType();
            sub_1000F5104(&qword_1009507E0, &qword_1007B67C0);
            v149 = String.init<A>(describing:)();
            v151 = sub_10000668C(v149, v150, &v196);

            *(v145 + 14) = v151;
            _os_log_impl(&_mh_execute_header, v143, v144, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v145, 0x16u);
            swift_arrayDestroy();

            v53 = v191;
          }

          v56 = v185;
          v152 = v172;
          v153 = v169;
          swift_willThrow();

          (*(v153 + 8))(v171, v152);
          (*(v184 + 8))(v56, v53);

          return v56;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v90 <= v84[3] >> 1)
        {
          if (*(v87 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v89 <= v90)
          {
            v92 = v89 + v88;
          }

          else
          {
            v92 = v89;
          }

          v84 = sub_100365A24(isUniquelyReferenced_nonNull_native, v92, 1, v84);
          if (*(v87 + 16))
          {
LABEL_33:
            v93 = (v84[3] >> 1) - v84[2];
            v94 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
            if (v93 < v88)
            {
              goto LABEL_71;
            }

            v95 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            v96 = *(v94 + 72);
            swift_arrayInitWithCopy();

            if (v88)
            {
              v97 = v84[2];
              v98 = __OFADD__(v97, v88);
              v99 = v97 + v88;
              if (v98)
              {
                goto LABEL_72;
              }

              v84[2] = v99;
            }

            goto LABEL_23;
          }
        }

        if (v88)
        {
          goto LABEL_70;
        }

LABEL_23:
        v82 += v183;
        if (!--v53)
        {
          goto LABEL_57;
        }
      }
    }

    v84 = _swiftEmptyArrayStorage;
LABEL_57:
    sub_10053DB98(v178, v84, v182, v160, 0);

    (*(v173 + 8))(v176, v174);
    goto LABEL_58;
  }

  v100 = v160;
  if (v81 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v101 = v170;
    (*(v77 + 96))(v170, v80);
    sub_10053E698(*v101, v74, v182, v100, 0);
    (*(v77 + 8))(v176, v80);
    goto LABEL_61;
  }

  if (v81 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v102 = v170;
    (*(v77 + 96))(v170, v80);
    v180 = *v102;
    v103 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v102 + *(v103 + 48), v161, &qword_10094B8E0, &unk_1007AABD0);
    v53 = v68[2];
    v157 = v68;
    if (v53)
    {
      v188 = *(v162 + 16);
      v104 = v68 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v183 = *(v162 + 72);
      v105 = (v162 + 8);
      v106 = _swiftEmptyArrayStorage;
      do
      {
        v107 = v177;
        v108 = v181;
        v188(v177, v104, v181);
        v109 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v105)(v107, v108);
        v110 = *(v109 + 16);
        v111 = v106[2];
        v112 = v111 + v110;
        if (__OFADD__(v111, v110))
        {
          goto LABEL_73;
        }

        v113 = swift_isUniquelyReferenced_nonNull_native();
        if (!v113 || v112 > v106[3] >> 1)
        {
          if (v111 <= v112)
          {
            v114 = v111 + v110;
          }

          else
          {
            v114 = v111;
          }

          v106 = sub_100365A24(v113, v114, 1, v106);
        }

        if (*(v109 + 16))
        {
          v115 = (v106[3] >> 1) - v106[2];
          v116 = *(type metadata accessor for REMRemindersListDataView.ReminderLite() - 8);
          if (v115 < v110)
          {
            goto LABEL_75;
          }

          v117 = (*(v116 + 80) + 32) & ~*(v116 + 80);
          v118 = *(v116 + 72);
          swift_arrayInitWithCopy();

          if (v110)
          {
            v119 = v106[2];
            v98 = __OFADD__(v119, v110);
            v120 = v119 + v110;
            if (v98)
            {
              goto LABEL_76;
            }

            v106[2] = v120;
          }
        }

        else
        {

          if (v110)
          {
            goto LABEL_74;
          }
        }

        v104 += v183;
        --v53;
      }

      while (v53);
    }

    else
    {
      v106 = _swiftEmptyArrayStorage;
    }

    v154 = v182;
    v155 = v160;
    sub_10053DB98(v180, v106, v182, v160, 0);
    v156 = v161;
    sub_10053EBE4(v161, v106, v154, v155, 0);

    sub_1000050A4(v156, &qword_10094B8E0, &unk_1007AABD0);
    (*(v173 + 8))(v176, v174);
LABEL_58:
    v53 = v191;
    goto LABEL_61;
  }

  if (v81 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v77 + 8))(v176, v80);
LABEL_61:
  v121 = v166;
  REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  v122 = v167;
  v123 = v168;
  (*(v167 + 16))(v165, v121, v168);
  v124 = v164;
  (*(v164 + 16))(v163, v179, v175);
  sub_10000F85C(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel);
  sub_10000F85C(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel);
  v125 = v171;
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
  (*(v122 + 8))(v121, v123);
  (*(v124 + 8))(v179, v175);
  v126 = type metadata accessor for PropertyListEncoder();
  v127 = *(v126 + 48);
  v128 = *(v126 + 52);
  swift_allocObject();
  v129 = v125;
  v130 = PropertyListEncoder.init()();
  sub_10003B2E4(_swiftEmptyArrayStorage);
  v131 = v189;
  v132 = *(v189 + 48);
  v133 = *(v189 + 52);
  swift_allocObject();
  v134 = v160;
  v135 = REMStoreObjectsContainer.init(store:storages:)();
  v136 = v192;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v197 = v131;
  v196 = v135;

  v137 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_10000E350(&v196, v136);
  v137(&ObjectType, 0);
  sub_10000CB48(&qword_1009506D0, &qword_1009506B8, &qword_1007B6740);
  v138 = v172;
  v139 = v190;
  v140 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v139)
  {
    v192 = v130;
    if (qword_100936760 != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_63;
  }

  v56 = v140;
  dispatch thunk of REMStoreObjectsContainer.storages.getter();

  (*(v169 + 8))(v129, v138);
  (*(v184 + 8))(v185, v53);

  return v56;
}

NSObject *sub_1006FFA30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a6;
  v91 = a3;
  v99 = a2;
  v100 = a1;
  v89 = type metadata accessor for REMRemindersListDataView.Diff();
  v84 = *(v89 - 8);
  v9 = *(v84 + 64);
  __chkstk_darwin(v89);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v82 - v12;
  v13 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v90 = &v82 - v15;
  v96 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v93 = *(v96 - 8);
  v16 = *(v93 + 64);
  __chkstk_darwin(v96);
  v88 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v82 - v19;
  v95 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v20 = *(v95 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v95);
  v97 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  __chkstk_darwin(v23);
  v87 = &v82 - v25;
  v107 = type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters();
  v102 = *(v107 - 8);
  v26 = *(v102 + 64);
  __chkstk_darwin(v107);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v101 = &v82 - v30;
  v31 = type metadata accessor for CodingUserInfoKey();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PropertyListDecoder();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v108 = PropertyListDecoder.init()();
  v86 = v23;
  v98 = v20;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v38 = type metadata accessor for REMStoreObjectsContainer();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v41 = a4;
  v42 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v112 = v38;
  v111 = v42;
  v106 = v42;

  v43 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v111, v34);
  v43(&ObjectType, 0);
  sub_10000F85C(&qword_1009507C0, &type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
  v44 = v107;
  v45 = v105;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v45)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100950598);
    swift_errorRetain();
    v47 = v103;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v50 = 136315394;
      swift_getErrorValue();
      v51 = Error.rem_errorDescription.getter();
      v53 = sub_10000668C(v51, v52, &v111);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507C8, &qword_1007B67B8);
      v54 = String.init<A>(describing:)();
      v56 = sub_10000668C(v54, v55, &v111);

      *(v50 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v105 = v41;
    (*(v102 + 32))(v101, v28, v44);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    sub_10054E5F4(v99);

    v58 = v97;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v59 = v98;
    v60 = v90;
    v61 = v58;
    v62 = v95;
    (*(v98 + 16))(v90, v61, v95);
    (*(v59 + 56))(v60, 0, 1, v62);
    v63 = v92;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v64 = [v103 fetchResultTokenToDiffAgainst];
    v65 = v94;
    sub_100534D44(v64, v94);

    v66 = v93;
    (*(v93 + 16))(v88, v63, v96);
    v67 = v84;
    (*(v84 + 16))(v83, v65, v89);
    v104 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    v68 = v65;
    v69 = v87;
    v70 = v96;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v67 + 8))(v68, v89);
    (*(v66 + 8))(v63, v70);
    (*(v98 + 8))(v97, v95);
    v71 = type metadata accessor for PropertyListEncoder();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v74 = *(v38 + 48);
    v75 = *(v38 + 52);
    swift_allocObject();
    v76 = v105;
    v77 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v112 = v38;
    v111 = v77;

    v78 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v111, v34);
    v78(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0);
    v79 = v86;
    v80 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v81 = v102;
    v48 = v80;
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v85 + 8))(v69, v79);
    (*(v81 + 8))(v101, v107);
  }

  return v48;
}

NSObject *sub_100700888(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_1009507A0, &type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009507A8, &qword_1007B67A8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_100552A10(v73, v61, v62, v28, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_1009507B0, &type metadata accessor for REMRemindersListDataView.GroupInvocation.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_10070121C(uint64_t a1, void (**a2)(void, void), void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950780, &qword_1007B6798);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950788, &type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950790, &qword_1007B67A0);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_10055DDF4(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950798, &qword_100950780, &qword_1007B6798);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

uint64_t sub_100701BC0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v115 = a6;
  v114 = a5;
  v109 = a3;
  v108 = a2;
  v111 = a1;
  v101 = type metadata accessor for REMListPickerDataView.Model();
  v100 = *(v101 - 8);
  v9 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v93 - v12;
  v97 = type metadata accessor for REMAccountsListDataView.Model();
  v96 = *(v97 - 8);
  v13 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v106 = *(Options - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(Options);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v93 = *(v94 - 8);
  v18 = *(v93 + 64);
  __chkstk_darwin(v94);
  v110 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMListPickerDataView.Invocation.Result();
  v102 = *(v20 - 8);
  v21 = *(v102 + 64);
  __chkstk_darwin(v20);
  v104 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for REMListPickerDataView.Invocation.Parameters();
  v23 = *(v118 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v118);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v112 = &v93 - v28;
  v29 = type metadata accessor for CodingUserInfoKey();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PropertyListDecoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v119 = PropertyListDecoder.init()();
  v103 = v20;
  v105 = v17;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v36 = type metadata accessor for REMStoreObjectsContainer();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  v39 = a4;
  v40 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v123 = v36;
  v122 = v40;
  v117 = v40;

  v41 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v122, v32);
  v41(&ObjectType, 0);
  sub_10000F85C(&qword_100950600, &type metadata accessor for REMListPickerDataView.Invocation.Parameters);
  v42 = v118;
  v43 = v116;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v43)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100950598);
    swift_errorRetain();
    v45 = v113;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v42 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v42 = 136315394;
      swift_getErrorValue();
      v48 = Error.rem_errorDescription.getter();
      v50 = sub_10000668C(v48, v49, &v122);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950608, &unk_1007B66E0);
      v51 = String.init<A>(describing:)();
      v53 = sub_10000668C(v51, v52, &v122);

      *(v42 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v42, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v54 = v23;
    (*(v23 + 32))(v112, v26, v42);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v56 = v120;
    type metadata accessor for REMAccountsListDataView.Invocation();
    v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v58 = v105;
    static REMAccountsListDataView.FetchOptions.accountsOnly.getter();
    v116 = v56;
    sub_10000ABF4(v108, v109, v39, v58, v110);
    v115 = v54;
    (*(v106 + 8))(v58, Options);

    v59 = v95;
    v60 = v110;
    REMAccountsListDataView.Invocation.Result.model.getter();
    (*(v93 + 8))(v60, v94);
    v61 = REMAccountsListDataView.Model.accounts.getter();
    (*(v96 + 8))(v59, v97);
    v62 = v112;
    v63 = REMListPickerDataView.Invocation.Parameters.shouldIncludeCustomSmartLists.getter();
    __chkstk_darwin(v63);
    *(&v93 - 2) = v62;
    *(&v93 - 8) = v64 & 1;
    sub_1003DEA00(sub_1007127FC, (&v93 - 4), v61);
    v114 = 0;

    v65 = v98;
    REMListPickerDataView.Model.init(accounts:)();
    v66 = v100;
    v67 = v101;
    (*(v100 + 16))(v99, v65, v101);
    v68 = v104;
    REMListPickerDataView.Invocation.Result.init(model:)();
    (*(v66 + 8))(v65, v67);
    v69 = type metadata accessor for PropertyListEncoder();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v72 = PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v73 = *(v36 + 48);
    v74 = *(v36 + 52);
    swift_allocObject();
    v75 = v39;
    v76 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v123 = v36;
    v122 = v76;

    v77 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v122, v32);
    v77(&ObjectType, 0);
    sub_10000F85C(&qword_100950610, &type metadata accessor for REMListPickerDataView.Invocation.Result);
    v78 = v103;
    v79 = v114;
    v80 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v79)
    {
      v114 = v72;
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100006654(v81, qword_100950598);
      v82 = v113;
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v83))
      {
        v84 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v84 = 136315394;
        swift_getErrorValue();
        v85 = Error.rem_errorDescription.getter();
        v87 = sub_10000668C(v85, v86, &v122);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_100950608, &unk_1007B66E0);
        v88 = String.init<A>(describing:)();
        v90 = sub_10000668C(v88, v89, &v122);

        *(v84 + 14) = v90;
        v91 = v112;
        _os_log_impl(&_mh_execute_header, v42, v83, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v84, 0x16u);
        swift_arrayDestroy();

        v78 = v103;

        v92 = v104;
      }

      else
      {

        v92 = v104;
        v91 = v112;
      }

      swift_willThrow();

      (*(v102 + 8))(v92, v78);
      (*(v115 + 8))(v91, v118);
    }

    else
    {
      v42 = v80;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v102 + 8))(v68, v78);
      (*(v115 + 8))(v112, v118);
    }
  }

  return v42;
}

NSObject *sub_10070299C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a6;
  v69 = a5;
  v64 = a3;
  v63 = a2;
  v66 = a1;
  v62 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v61 = *(v62 - 8);
  v10 = *(v61 + 64);
  __chkstk_darwin(v62);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v13 = *(Style - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(Style);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v67 = &v60 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PropertyListDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v74 = PropertyListDecoder.init()();
  v65 = v12;
  v68 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v26 = type metadata accessor for REMStoreObjectsContainer();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = a4;
  v30 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v78 = v26;
  v77[0] = v30;
  v72 = v30;

  v31 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v77, v22);
  v31(v76, 0);
  sub_10000F85C(&qword_100950708, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle);
  v32 = Style;
  v33 = v71;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v33)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100950598);
    swift_errorRetain();
    v35 = v68;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v38 = 136315394;
      swift_getErrorValue();
      v39 = Error.rem_errorDescription.getter();
      v41 = sub_10000668C(v39, v40, v77);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v76[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950710, &qword_1007B6760);
      v42 = String.init<A>(describing:)();
      v44 = sub_10000668C(v42, v43, v77);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v38, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v45 = v13;
    v46 = v67;
    (*(v13 + 32))(v67, v16, v32);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = [objc_opt_self() daemonUserDefaults];
    sub_100035608(v63, v48, &off_1008F7C98, v64, v46, v65);

    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v53 = *(v26 + 48);
    v54 = *(v26 + 52);
    swift_allocObject();
    v55 = v29;
    v56 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v78 = v26;
    v77[0] = v56;

    v57 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v77, v22);
    v57(v76, 0);
    sub_10000F85C(&qword_100950718, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result);
    v58 = v65;
    v59 = v62;
    v71 = v52;
    v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v61 + 8))(v58, v59);

    (*(v45 + 8))(v67, v32);
  }

  return v36;
}

NSObject *sub_100703370(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950690, &type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950698, &qword_1007B6730);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_1005B86C8(v61, v62, v28, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_1009506A0, &type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_100703D04(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_1009506A8, &type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506B0, &qword_1007B6738);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_1005B1AA0(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950630, &qword_100950618, &qword_1007B66F0);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

uint64_t sub_1007046A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a6;
  v81 = a3;
  v86 = a2;
  v87 = a1;
  v79 = type metadata accessor for REMRemindersListDataView.Diff();
  v75 = *(v79 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v79);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v73 - v12;
  v83 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v82 = *(v83 - 8);
  v13 = *(v82 + 64);
  __chkstk_darwin(v83);
  v78 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v85 = &v73 - v16;
  v17 = sub_1000F5104(&qword_1009506B8, &qword_1007B6740);
  v76 = *(v17 - 8);
  v18 = *(v76 + 64);
  __chkstk_darwin(v17);
  v80 = &v73 - v19;
  v94 = type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters();
  v88 = *(v94 - 8);
  v20 = *(v88 + 64);
  __chkstk_darwin(v94);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v89 = &v73 - v24;
  v25 = type metadata accessor for CodingUserInfoKey();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PropertyListDecoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v95 = PropertyListDecoder.init()();
  v77 = v17;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v32 = type metadata accessor for REMStoreObjectsContainer();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v35 = a4;
  v36 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v99 = v32;
  v98 = v36;
  v93 = v36;

  v37 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v98, v28);
  v37(v97, 0);
  sub_10000F85C(&qword_1009506C0, &type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters);
  v38 = v94;
  v39 = v92;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v39)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100950598);
    swift_errorRetain();
    v41 = v90;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v44 = 136315394;
      swift_getErrorValue();
      v45 = Error.rem_errorDescription.getter();
      v47 = sub_10000668C(v45, v46, &v98);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v97[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506C8, &qword_1007B6748);
      v48 = String.init<A>(describing:)();
      v50 = sub_10000668C(v48, v49, &v98);

      *(v44 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v44, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v92 = v35;
    v51 = v88;
    v52 = v89;
    (*(v88 + 32))(v89, v22, v38);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v54 = v86;
    sub_1005A2B88(v86, v52);
    v55 = v90;
    sub_1005A3E80(v54);
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v56 = [v55 fetchResultTokenToDiffAgainst];
    v57 = v84;
    sub_100534D44(v56, v84);

    v58 = v57;
    v59 = v82;
    v60 = v83;
    (*(v82 + 16))(v78, v85, v83);
    v61 = v75;
    (*(v75 + 16))(v74, v58, v79);
    v91 = sub_10000F85C(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel);
    sub_10000F85C(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v61 + 8))(v84, v79);
    (*(v59 + 8))(v85, v60);
    v62 = type metadata accessor for PropertyListEncoder();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v65 = *(v32 + 48);
    v66 = *(v32 + 52);
    swift_allocObject();
    v67 = v92;
    v68 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v99 = v32;
    v98 = v68;

    v69 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v70 = v28;
    v71 = v80;
    sub_10000E350(&v98, v70);
    v69(v97, 0);
    sub_10000CB48(&qword_1009506D0, &qword_1009506B8, &qword_1007B6740);
    v72 = v77;
    v43 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v76 + 8))(v71, v72);
    (*(v51 + 8))(v89, v94);
  }

  return v43;
}

NSObject *sub_100705394(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_1009505B0, &qword_1007B66B0);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = (&v58 - v11);
  v71 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_1009505B8, &type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009505C0, &unk_1007B66B8);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_10074F2D4(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_1009505C8, &qword_1009505B0, &qword_1007B66B0);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

uint64_t sub_100705D38(void *a1, uint64_t a2, void (*a3)(char *, unint64_t, uint64_t), void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v199 = a6;
  v8 = v7;
  v198 = a5;
  v193 = a2;
  v194 = a1;
  v176 = type metadata accessor for REMRemindersListDataView.GroupSectionsModel();
  v12 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v174 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v175 = *(v184 - 8);
  v14 = *(v175 + 64);
  __chkstk_darwin(v184);
  v172 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v173 = &v160 - v17;
  v18 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v166 = &v160 - v20;
  v192 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v167 = *(v192 - 8);
  v21 = *(v167 + 64);
  __chkstk_darwin(v192);
  v187 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v191 = &v160 - v24;
  v183 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v182 = *(v183 - 8);
  v25 = *(v182 + 64);
  __chkstk_darwin(v183);
  v179 = (&v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v185 = &v160 - v28;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v188 = *(Configuration - 8);
  v29 = *(v188 + 64);
  __chkstk_darwin(Configuration);
  v168 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v178 = &v160 - v32;
  v171 = type metadata accessor for REMRemindersListDataView.Diff();
  v170 = *(v171 - 8);
  v33 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v189 = &v160 - v36;
  v180 = sub_1000F5104(&qword_1009505D0, &qword_1007B66C8);
  v177 = *(v180 - 8);
  v37 = *(v177 + 64);
  __chkstk_darwin(v180);
  v39 = &v160 - v38;
  v201 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters();
  v195 = *(v201 - 8);
  v40 = *(v195 + 64);
  __chkstk_darwin(v201);
  v42 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v160 - v44;
  v45 = type metadata accessor for CodingUserInfoKey();
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PropertyListDecoder();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v202 = PropertyListDecoder.init()();
  v181 = v39;
  v190 = a3;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v52 = type metadata accessor for REMStoreObjectsContainer();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  v55 = a4;
  v56 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v206 = v52;
  v205 = v56;
  v197 = v56;

  v57 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v205, v48);
  v57(&ObjectType, 0);
  sub_10000F85C(&qword_1009505D8, &type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);
  v58 = v200;
  v59 = v201;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v58)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100950598);
    swift_errorRetain();
    v61 = v7;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v55 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *v55 = 136315394;
      swift_getErrorValue();
      v64 = Error.rem_errorDescription.getter();
      v66 = sub_10000668C(v64, v65, &v205);

      *(v55 + 4) = v66;
      *(v55 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009505E0, &unk_1007B66D0);
      v67 = String.init<A>(describing:)();
      v69 = sub_10000668C(v67, v68, &v205);

      *(v55 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v55, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v55;
  }

  v164 = v52;
  v165 = v55;
  v200 = v48;
  v70 = v196;
  (*(v195 + 32))(v196, v42, v59);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v199 = v203;
  v72 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v73 = v193;
  v74 = v165;
  v194 = sub_10074C5B4(v193, v165, v72);

  v75 = sub_10074D280(v199, v73, v190, v74, v70);
  v163 = v76;
  v77 = v75;
  v78 = [v8 fetchResultTokenToDiffAgainst];
  v79 = v189;
  sub_100534D44(v78, v189);
  v198 = 0;
  v162 = v77;
  v161 = v8;

  v80 = v178;
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  v81 = v185;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v82 = *(v188 + 8);
  v188 += 8;
  v82(v80, Configuration);
  v83 = v182;
  v84 = v179;
  v85 = v183;
  (*(v182 + 16))(v179, v81, v183);
  v86 = (*(v83 + 88))(v84, v85);
  if (v86 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v178 = v82;
    (*(v83 + 96))(v84, v85);
    v179 = *v84;
    v87 = *(v162 + 16);
    v88 = v165;
    if (v87)
    {
      v190 = *(v167 + 16);
      v89 = v162 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v187 = *(v167 + 72);
      v90 = (v167 + 8);
      v91 = _swiftEmptyArrayStorage;
      while (1)
      {
        v92 = v191;
        v93 = v192;
        v190(v191, v89, v192);
        v94 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v90)(v92, v93);
        v95 = *(v94 + 16);
        v96 = v91[2];
        v97 = v96 + v95;
        if (__OFADD__(v96, v95))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v97 > v91[3] >> 1)
        {
          if (v96 <= v97)
          {
            v99 = v96 + v95;
          }

          else
          {
            v99 = v96;
          }

          v91 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v99, 1, v91);
        }

        if (*(v94 + 16))
        {
          v100 = (v91[3] >> 1) - v91[2];
          v101 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
          if (v100 < v95)
          {
            goto LABEL_61;
          }

          v102 = (*(v101 + 80) + 32) & ~*(v101 + 80);
          v103 = *(v101 + 72);
          swift_arrayInitWithCopy();

          v88 = v165;
          if (v95)
          {
            v104 = v91[2];
            v105 = __OFADD__(v104, v95);
            v106 = v104 + v95;
            if (v105)
            {
              goto LABEL_62;
            }

            v91[2] = v106;
          }
        }

        else
        {

          v88 = v165;
          if (v95)
          {
            goto LABEL_60;
          }
        }

        v89 += v187;
        if (!--v87)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_47:
    v127 = Array<A>.reminders.getter();

    sub_10053DB98(v179, v127, v193, v88, 0);

    (*(v182 + 8))(v185, v183);
LABEL_48:
    v128 = v168;
    v82 = v178;
    goto LABEL_52;
  }

  v107 = v193;
  v108 = v165;
  if (v86 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v83 + 96))(v84, v85);
    sub_10053E698(*v84, v79, v107, v108, 0);
    (*(v83 + 8))(v185, v85);
LABEL_51:
    v128 = v168;
LABEL_52:
    REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v82(v128, Configuration);
    v129 = v173;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v130 = v175;
    (*(v175 + 16))(v172, v129, v184);
    v131 = v194;
    REMRemindersListDataView.GroupSectionsModel.init(listSections:group:)();
    v132 = v170;
    v133 = v171;
    (*(v170 + 16))(v169, v189, v171);
    sub_10000F85C(&qword_1009505E8, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel);
    sub_10000F85C(&qword_1009505F0, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel);
    v134 = v181;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v130 + 8))(v129, v184);
    (*(v132 + 8))(v189, v133);
    v135 = type metadata accessor for PropertyListEncoder();
    v136 = *(v135 + 48);
    v137 = *(v135 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v138 = v164;
    v139 = *(v164 + 48);
    v140 = *(v164 + 52);
    swift_allocObject();
    v141 = v165;
    v142 = REMStoreObjectsContainer.init(store:storages:)();
    v143 = v200;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v206 = v138;
    v205 = v142;

    v144 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v205, v143);
    v144(&ObjectType, 0);
    sub_10000CB48(&qword_1009505F8, &qword_1009505D0, &qword_1007B66C8);
    v87 = v180;
    v145 = v198;
    v146 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v145)
    {
      v55 = v146;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v177 + 8))(v134, v87);
      (*(v195 + 8))(v196, v201);

      return v55;
    }

    if (qword_100936760 == -1)
    {
LABEL_54:
      v147 = type metadata accessor for Logger();
      sub_100006654(v147, qword_100950598);
      v148 = v161;
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v149))
      {
        v150 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v205 = v200;
        *v150 = 136315394;
        swift_getErrorValue();
        v151 = Error.rem_errorDescription.getter();
        v153 = sub_10000668C(v151, v152, &v205);

        *(v150 + 4) = v153;
        *(v150 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_1009505E0, &unk_1007B66D0);
        v154 = String.init<A>(describing:)();
        v156 = sub_10000668C(v154, v155, &v205);

        *(v150 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v55, v149, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v150, 0x16u);
        swift_arrayDestroy();

        v87 = v180;
      }

      swift_willThrow();

      (*(v177 + 8))(v181, v87);
      (*(v195 + 8))(v196, v201);

      return v55;
    }

LABEL_67:
    swift_once();
    goto LABEL_54;
  }

  if (v86 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v178 = v82;
    (*(v83 + 96))(v84, v85);
    v160 = *v84;
    v109 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v84 + *(v109 + 48), v166, &qword_10094B8E0, &unk_1007AABD0);
    v87 = *(v162 + 16);
    if (v87)
    {
      v191 = *(v167 + 16);
      v110 = v162 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v190 = *(v167 + 72);
      v111 = (v167 + 8);
      v112 = _swiftEmptyArrayStorage;
      do
      {
        v113 = v187;
        v114 = v192;
        (v191)(v187, v110, v192);
        v115 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v111)(v113, v114);
        v116 = *(v115 + 16);
        v117 = v112[2];
        v118 = v117 + v116;
        if (__OFADD__(v117, v116))
        {
          goto LABEL_63;
        }

        v119 = swift_isUniquelyReferenced_nonNull_native();
        if (!v119 || v118 > v112[3] >> 1)
        {
          if (v117 <= v118)
          {
            v120 = v117 + v116;
          }

          else
          {
            v120 = v117;
          }

          v112 = sub_100365A4C(v119, v120, 1, v112);
        }

        if (*(v115 + 16))
        {
          v121 = (v112[3] >> 1) - v112[2];
          v122 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
          if (v121 < v116)
          {
            goto LABEL_65;
          }

          v123 = (*(v122 + 80) + 32) & ~*(v122 + 80);
          v124 = *(v122 + 72);
          swift_arrayInitWithCopy();

          v108 = v165;
          if (v116)
          {
            v125 = v112[2];
            v105 = __OFADD__(v125, v116);
            v126 = v125 + v116;
            if (v105)
            {
              goto LABEL_66;
            }

            v112[2] = v126;
          }
        }

        else
        {

          v108 = v165;
          if (v116)
          {
            goto LABEL_64;
          }
        }

        v110 += v190;
      }

      while (--v87);
    }

    v157 = Array<A>.reminders.getter();

    v158 = v193;
    sub_10053DB98(v160, v157, v193, v108, 0);
    v159 = v166;
    sub_10053EBE4(v166, v157, v158, v108, 0);

    sub_1000050A4(v159, &qword_10094B8E0, &unk_1007AABD0);
    (*(v182 + 8))(v185, v183);
    goto LABEL_48;
  }

  if (v86 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v83 + 8))(v185, v85);
    goto LABEL_51;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_10070754C(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950638, &qword_1007B6700);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950640, &type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950648, &qword_1007B6708);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_1005C4F74(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950650, &qword_100950638, &qword_1007B6700);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

NSObject *sub_100707EF0(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, id), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950658, &type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950660, &unk_1007B6710);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_1005C0538(v61, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_100950668, &type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_100708884(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMSuggestedAttributesFeatureExtractor.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for REMSuggestedAttributesFeatureExtractor.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_1009506D8, &type metadata accessor for REMSuggestedAttributesFeatureExtractor.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506E0, &qword_1007B6750);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v15, v31);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_100585A5C(v73, v61, v62, v28, v46);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_1009506E8, &type metadata accessor for REMSuggestedAttributesFeatureExtractor.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

NSObject *sub_100709288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  result = sub_1006F1CF0(a1, a2, a3, a4, a5, a6, a7, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, &qword_100950AC0, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, sub_1001B3E0C, &qword_100950AC8, &qword_1007B6920);
  if (v8)
  {
    return v11;
  }

  return result;
}

NSObject *sub_100709448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  result = sub_1006F1CF0(a1, a2, a3, a4, a5, a6, a7, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, &qword_100950A40, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, sub_1002A81EC, &qword_100950A48, &qword_1007B68D0);
  if (v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1007094F0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v44 = _swiftEmptyArrayStorage;
  v39 = v6;
  v40 = v2;
  v37 = result;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = *(*(v1 + 48) + 16 * v10 + 8);
    v12 = *(*(v1 + 56) + 8 * v10);

    v14 = sub_1006EC1D0(v13);

    v15 = v14 >> 62;
    v16 = v14;
    if (v14 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v44 >> 62;
    if (v44 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;
    v19 = __OFADD__(result, v17);
    v20 = result + v17;
    if (v19)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v18)
      {
LABEL_22:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v23 = *(v22 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = result;
      v22 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v18)
    {
      goto LABEL_22;
    }

    v21 = v44;
    v22 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v20 > *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v44 = v21;
    if (v15)
    {
      v27 = v22;
      result = _CocoaArrayWrapper.endIndex.getter();
      v22 = v27;
      v26 = result;
    }

    else
    {
      v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v26)
    {
      if (((v25 >> 1) - v24) < v42)
      {
        goto LABEL_43;
      }

      v41 = v5;
      v28 = v22 + 8 * v24 + 32;
      v38 = v22;
      if (v15)
      {
        if (v26 < 1)
        {
          goto LABEL_45;
        }

        sub_10000CB48(&qword_10093F5A0, &qword_10093F598, &qword_1007A2640);
        v29 = 0;
        v30 = v16;
        do
        {
          sub_1000F5104(&qword_10093F598, &qword_1007A2640);
          v31 = sub_10038D6F8(v43, v29, v30);
          v33 = v26;
          v34 = *v32;
          (v31)(v43, 0);
          *(v28 + 8 * v29) = v34;
          v26 = v33;
          ++v29;
        }

        while (v33 != v29);
      }

      else
      {
        type metadata accessor for REMObjectID_Codable();
        swift_arrayInitWithCopy();
      }

      v1 = v37;
      v6 = v39;
      v2 = v40;
      v5 = v41;
      if (v42 >= 1)
      {
        v35 = *(v38 + 16);
        v19 = __OFADD__(v35, v42);
        v36 = v35 + v42;
        if (v19)
        {
          goto LABEL_44;
        }

        *(v38 + 16) = v36;
      }
    }

    else
    {

      v6 = v39;
      v2 = v40;
      if (v42 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v44;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100709BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *v10;
  result = a10(a1, a4, a5, a6, a7);
  if (v11)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10070A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *v10;
  result = a10(a1, a2, a4, a5, a6, a7);
  if (v11)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10070A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950598);
  v1 = sub_100006654(v0, qword_100950598);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10070A318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a2;
  v46 = a1;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PropertyListDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v50 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v15 = type metadata accessor for REMStoreObjectsContainer();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = a3;
  v19 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v55 = v15;
  v54[0] = v19;
  v49 = v19;

  v20 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v54, v11);
  v20(v53, 0);
  sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  sub_1007151E8(&qword_100950A60, &qword_100942188);
  v21 = v48;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v21)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100950598);
    swift_errorRetain();
    v23 = v47;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v26 = 136315394;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter();
      v29 = sub_10000668C(v27, v28, v54);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v53[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A68, &unk_1007B68E0);
      v30 = String.init<A>(describing:)();
      v32 = sub_10000668C(v30, v31, v54);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v26, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v33 = v54[0];
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v34 = v52;
    v35 = sub_10026EC90(v45, v18, v33);
    v46 = v33;
    v48 = v35;
    v51 = v35;
    v37 = type metadata accessor for PropertyListEncoder();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v40 = *(v15 + 48);
    v41 = *(v15 + 52);
    swift_allocObject();
    v42 = v18;
    v43 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v55 = v15;
    v54[0] = v43;

    v44 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v54, v11);
    v44(v53, 0);
    sub_1000F5104(&qword_10093F480, qword_10079DF40);
    sub_100715284();
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
  }

  return v25;
}

NSObject *sub_10070AA9C(void (**a1)(char *), void (**a2)(char *), void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v65 = a5;
  v61[0] = a2;
  v61[1] = a1;
  v68 = type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters();
  v62 = *(v68 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v68);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = v61 - v12;
  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PropertyListDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v69 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v20 = type metadata accessor for REMStoreObjectsContainer();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = a3;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v74 = v20;
  v73[0] = v24;
  v67 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v73, v16);
  v25(v72, 0);
  sub_10000F85C(&qword_100950940, &type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters);
  v26 = v68;
  v27 = v66;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v64;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = sub_10000668C(v33, v34, v73);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v72[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950948, &qword_1007B6870);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000668C(v36, v37, v73);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v66 = v23;
    (*(v62 + 32))(v63, v10, v26);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v40 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.criteria.getter();
    v41 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchOffset.getter();
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    v44 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchLimit.getter();
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    v47 = v61[0];
    sub_1003C93D0(v40, v43, v46, v61[0]);
    v49 = v48;

    v50 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.reminderFetchOptions.getter();
    v51 = v47;
    v52 = v66;
    v65 = sub_1003ED1A4(v49, v50, v51, v66);

    v70 = v65;
    v53 = type metadata accessor for PropertyListEncoder();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v56 = *(v20 + 48);
    v57 = *(v20 + 52);
    swift_allocObject();
    v58 = v52;
    v59 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v74 = v20;
    v73[0] = v59;

    v60 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v73, v16);
    v60(v72, 0);
    sub_1000F5104(&qword_100950950, &qword_1007B6878);
    sub_100715134();
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v62 + 8))(v63, v26);
  }

  return v30;
}

NSObject *sub_10070B3D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v67 = a2;
  v68 = a1;
  v65 = _s10PredicatesOMa_3();
  v8 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for REMSiriSearchDataView.ListsResult_Codable();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v64);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters();
  v69 = *(v75 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin(v75);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v62 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v76 = PropertyListDecoder.init()();
  v63 = v12;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a3;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v80 = v25;
  v79[0] = v29;
  v74 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v79, v21);
  v30(v78, 0);
  sub_10000F85C(&qword_100950928, &type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters);
  v31 = v75;
  v32 = v73;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v71;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v79);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v78[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950930, &qword_1007B6868);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v79);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v69 + 32))(v70, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v45 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    v46 = v67;
    v73 = sub_1003CA60C(v45, v67);

    v47 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    v48 = v46;
    v49 = v66;
    *v66 = v47;
    swift_storeEnumTagMultiPayload();
    v50 = sub_100717C9C(v49, v48, 0);
    sub_100715370(v49, _s10PredicatesOMa_3);
    sub_1000271D0(v73, v28);

    sub_1000303FC(v50, v28);

    v51 = v63;
    REMSiriSearchDataView.ListsResult_Codable.init(lists:smartLists:)();
    v52 = type metadata accessor for PropertyListEncoder();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v55 = *(v25 + 48);
    v56 = *(v25 + 52);
    swift_allocObject();
    v57 = v28;
    v58 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v80 = v25;
    v59 = v51;
    v79[0] = v58;

    v60 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v79, v21);
    v60(v78, 0);
    sub_10000F85C(&qword_100950938, &type metadata accessor for REMSiriSearchDataView.ListsResult_Codable);
    v61 = v64;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v62 + 8))(v59, v61);
    (*(v69 + 8))(v70, v31);
  }

  return v35;
}

uint64_t sub_10070BF10(uint64_t a1, void *a2, uint64_t (**a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v141 = a4;
  v137 = a3;
  v136 = a2;
  v145 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v140 = *(v145 - 8);
  v9 = *(v140 + 64);
  __chkstk_darwin(v145);
  v143 = &v113[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v138 = &v113[-v12];
  v13 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v139 = &v113[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v142 = &v113[-v17];
  v18 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v127 = &v113[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v122 = *(v124 - 8);
  v22 = *(v122 + 64);
  __chkstk_darwin(v124);
  v125 = &v113[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for REMSuggestedAttributesHarvester.FeedbackRequest();
  v126 = *(v24 - 8);
  v25 = *(v126 + 64);
  __chkstk_darwin(v24);
  v135 = &v113[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v113[-v28];
  v30 = type metadata accessor for CodingUserInfoKey();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v132 = &v113[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for PropertyListDecoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v133 = PropertyListDecoder.init()();
  v130 = v29;
  v129 = v5;
  v134 = a1;
  v131 = v18;
  v128 = v19;
  v144 = v6;
  if (!a5)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v36 = type metadata accessor for REMStoreObjectsContainer();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  v39 = v136;
  v40 = REMStoreObjectsContainer.init(store:storages:)();
  v41 = v132;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v150 = v36;
  *&v149 = v40;
  v42 = v40;

  v43 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v149, v41);
  v43(&ObjectType, 0);
  sub_10000F85C(&qword_1009508D0, &type metadata accessor for REMSuggestedAttributesHarvester.FeedbackRequest);
  v44 = v135;
  v45 = v144;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v45)
  {
    if (qword_100936760 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  v120 = v39;
  v141 = v36;
  (*(v126 + 32))(v130, v44, v24);
  type metadata accessor for RDXPCSuggestedAttributesPerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v116 = v24;
  v117 = v42;
  v118 = 0;
  v115 = v153;
  sub_100247474(&v149);
  v148 = 0;
  v57 = v127;
  REMSuggestedAttributesHarvester.FeedbackRequest.source.getter();
  v58 = REMSuggestedAttributeOutput.Source.predictors.getter();
  (*(v128 + 8))(v57, v131);
  v59 = 0;
  v60 = *(v58 + 64);
  v128 = v58 + 64;
  v135 = v58;
  v61 = 1 << *(v58 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & v60;
  v127 = ((v61 + 63) >> 6);
  v134 = v140 + 16;
  v144 = (v140 + 32);
  v137 = (v140 + 88);
  LODWORD(v136) = enum case for REMSuggestedAttributeOutput.Pipeline.nlQueryParser(_:);
  LODWORD(v131) = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
  v123 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
  v121 = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
  v119 = enum case for REMSuggestedAttributeOutput.Pipeline.anchoredBubble(_:);
  v114 = enum case for REMSuggestedAttributeOutput.Pipeline.spotlight(_:);
  v42 = v139;
  v64 = v142;
  while (v63)
  {
    v65 = v59;
LABEL_24:
    v68 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
    v69 = v68 | (v65 << 6);
    v70 = v135;
    v71 = v140;
    v72 = v138;
    v73 = v145;
    (*(v140 + 16))(v138, *(v135 + 6) + *(v140 + 72) * v69, v145);
    v74 = *(*(v70 + 7) + 8 * v69);
    v75 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v76 = *(v75 + 48);
    v77 = *(v71 + 32);
    v42 = v139;
    v77(v139, v72, v73);
    *(v42 + v76) = v74;
    (*(*(v75 - 8) + 56))(v42, 0, 1, v75);

    v67 = v65;
    v64 = v142;
LABEL_25:
    sub_100031B58(v42, v64, &qword_1009467C8, &qword_1007A8A58);
    v78 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v79 = (*(*(v78 - 8) + 48))(v64, 1, v78);
    v80 = v141;
    if (v79 == 1)
    {
      goto LABEL_35;
    }

    v81 = *(v64 + *(v78 + 48));
    v82 = v143;
    v80 = v145;
    (*v144)(v143, v64, v145);
    v83 = (*v137)(v82, v80);
    if (v83 == v136 || v83 == v131)
    {
      goto LABEL_13;
    }

    if (v83 != v123)
    {
      if (v83 != v121 && v83 != v119 && v83 != v114)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_35:

        v89 = v124;
        v90 = v125;
        v91 = v132;
        if (v148)
        {
          if (qword_100935D08 != -1)
          {
            swift_once();
          }

          sub_1000F5104(&unk_10093E978, &qword_1007A1070);
          sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070);
          Subject<>.send()();
          v80 = v141;
        }

        REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
        sub_1002497E0(&v149);
        v92 = type metadata accessor for PropertyListEncoder();
        v93 = *(v92 + 48);
        v94 = *(v92 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_10003B2E4(_swiftEmptyArrayStorage);
        v95 = *(v80 + 48);
        v96 = *(v80 + 52);
        swift_allocObject();
        v97 = v120;
        v98 = REMStoreObjectsContainer.init(store:storages:)();
        static CodingUserInfoKey.remStoragesContainer.getter();
        v150 = v80;
        *&v149 = v98;

        v99 = dispatch thunk of PropertyListEncoder.userInfo.modify();
        sub_10000E350(&v149, v91);
        v99(&ObjectType, 0);
        sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse);
        v100 = v118;
        v101 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        if (v100)
        {
          if (qword_100936760 != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          sub_100006654(v102, qword_100950598);
          v103 = v129;
          swift_errorRetain();
          v42 = Logger.logObject.getter();
          v104 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v104))
          {
            v105 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *&v149 = v145;
            *v105 = 136315394;
            swift_getErrorValue();
            v106 = Error.rem_errorDescription.getter();
            v108 = sub_10000668C(v106, v107, &v149);

            *(v105 + 4) = v108;
            *(v105 + 12) = 2080;
            ObjectType = swift_getObjectType();
            sub_1000F5104(&qword_1009508D8, &unk_1007B6840);
            v109 = String.init<A>(describing:)();
            v111 = sub_10000668C(v109, v110, &v149);

            *(v105 + 14) = v111;
            _os_log_impl(&_mh_execute_header, v42, v104, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v105, 0x16u);
            swift_arrayDestroy();

            v89 = v124;
          }

          v112 = v122;
          swift_willThrow();

          (*(v112 + 8))(v125, v89);
          (*(v126 + 8))(v130, v116);
        }

        else
        {
          v42 = v101;
          dispatch thunk of REMStoreObjectsContainer.storages.getter();

          (*(v122 + 8))(v90, v89);
          (*(v126 + 8))(v130, v116);
        }

        return v42;
      }

LABEL_13:

      goto LABEL_14;
    }

    v84 = v151;
    v85 = v152;
    v146 = v151;
    v147 = v152;
    __chkstk_darwin(v83);
    v86 = v130;
    *&v113[-32] = v81;
    *&v113[-24] = v86;
    *&v113[-16] = &v148;
    sub_1002490E8(v84, v85);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();

    v87 = v85;
    v64 = v142;
    sub_100249154(v84, v87);
    sub_100138D4C(ObjectType, v155);
LABEL_14:
    v59 = v67;
  }

  if (v127 <= v59 + 1)
  {
    v66 = (v59 + 1);
  }

  else
  {
    v66 = v127;
  }

  v67 = v66 - 1;
  while (1)
  {
    v65 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v65 >= v127)
    {
      v88 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
      (*(*(v88 - 8) + 56))(v42, 1, 1, v88);
      v63 = 0;
      goto LABEL_25;
    }

    v63 = *(v128 + 8 * v65);
    ++v59;
    if (v63)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_5:
  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_100950598);
  swift_errorRetain();
  v47 = v129;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v42 = swift_slowAlloc();
    *&v149 = swift_slowAlloc();
    *v42 = 136315394;
    swift_getErrorValue();
    v50 = Error.rem_errorDescription.getter();
    v52 = sub_10000668C(v50, v51, &v149);

    *(v42 + 4) = v52;
    *(v42 + 12) = 2080;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&qword_1009508D8, &unk_1007B6840);
    v53 = String.init<A>(describing:)();
    v55 = sub_10000668C(v53, v54, &v149);

    *(v42 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v42, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  return v42;
}

NSObject *sub_10070D0CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v65 = a1;
  v64 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v59 = *(v64 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v64);
  v63 = &v59 - v8;
  v62 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v60 = *(v62 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v62);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest();
  v67 = *(v72 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v72);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v59 - v15;
  v16 = type metadata accessor for CodingUserInfoKey();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v73 = PropertyListDecoder.init()();
  if (!a5)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = a2;
  v27 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v77 = v23;
  v76[0] = v27;
  v71 = v27;

  v28 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v76, v19);
  v28(v75, 0);
  sub_10000F85C(&qword_1009508C0, &type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest);
  v29 = v72;
  v30 = v70;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v30)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100950598);
    swift_errorRetain();
    v32 = v68;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v35 = 136315394;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter();
      v38 = sub_10000668C(v36, v37, v76);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v75[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009508C8, &unk_1007B6830);
      v39 = String.init<A>(describing:)();
      v41 = sub_10000668C(v39, v40, v76);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v67 + 32))(v66, v13, v29);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v43 = qword_100974E40;
    v44 = REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.reminder.getter();
    v45 = v59;
    (*(v59 + 104))(v63, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v64);
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v43;

    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v45 + 8))(v63, v64);
    v47 = v61;
    REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v23 + 48);
    v52 = *(v23 + 52);
    swift_allocObject();
    v53 = v26;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v77 = v23;
    v76[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v56 = v19;
    v57 = v47;
    sub_10000E350(v76, v56);
    v55(v75, 0);
    sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse);
    v58 = v62;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v60 + 8))(v57, v58);

    (*(v67 + 8))(v66, v72);
  }

  return v33;
}

NSObject *sub_10070DB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v161 = a4;
  v160 = a3;
  v150 = a1;
  v149 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v148 = *(v149 - 8);
  v7 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v127[-v8];
  v155 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v9 = *(v155 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v155);
  v146 = &v127[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v144 = &v127[-v13];
  v140 = v14;
  __chkstk_darwin(v15);
  v154 = &v127[-v16];
  v158 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v17 = *(v158 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v158);
  v145 = &v127[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v139 = &v127[-v20];
  __chkstk_darwin(v21);
  v152 = &v127[-v22];
  v23 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v141 = *(v23 - 8);
  v24 = *(v141 + 64);
  __chkstk_darwin(v23);
  v142 = &v127[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v165 = type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionRequest();
  v157 = *(v165 - 8);
  v26 = *(v157 + 64);
  __chkstk_darwin(v165);
  v28 = &v127[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v156 = &v127[-v30];
  v31 = type metadata accessor for CodingUserInfoKey();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v164 = &v127[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for PropertyListDecoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v166 = PropertyListDecoder.init()();
  v143 = v23;
  v153 = v9;
  v151 = v17;
  if (!a5)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v37 = type metadata accessor for REMStoreObjectsContainer();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  v40 = a2;
  v41 = REMStoreObjectsContainer.init(store:storages:)();
  v42 = v164;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v170 = v37;
  v169 = v41;
  v163 = v41;

  v43 = v166;
  v44 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v169, v42);
  v44(&ObjectType, 0);
  sub_10000F85C(&qword_1009508A8, &type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionRequest);
  v45 = v165;
  v46 = v162;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v46)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100950598);
    swift_errorRetain();
    v48 = v159;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      *v51 = 136315394;
      swift_getErrorValue();
      v52 = Error.rem_errorDescription.getter();
      v54 = sub_10000668C(v52, v53, &v169);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009508B0, &qword_1007B6828);
      v55 = String.init<A>(describing:)();
      v57 = sub_10000668C(v55, v56, &v169);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v51, 0x16u);
      swift_arrayDestroy();

      v43 = v166;
    }

    swift_willThrow();
  }

  else
  {
    v162 = v40;
    (*(v157 + 32))(v156, v28, v45);
    type metadata accessor for RDXPCSuggestedAttributesPerformer();
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v160 = qword_100974E40;
    v161 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionValue.getter();
    v60 = v59;
    v61 = v152;
    REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionType.getter();
    v62 = v154;
    REMSuggestedAttributesHarvester.RecordSuggestionRequest.pipeline.getter();
    v150 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.reminderID.getter();
    (*(v148 + 104))(v147, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v149);
    v63 = v158;
    if (qword_1009360C0 != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    sub_100006654(v131, qword_100946628);
    v64 = *(v151 + 16);
    v65 = v139;
    v137 = v151 + 16;
    v135 = v64;
    v64(v139, v61, v63);
    v66 = v155;
    v134 = *(v153 + 16);
    v134(v144, v62, v155);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    v69 = os_log_type_enabled(v67, v68);
    v138 = 0;
    v132 = v60;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v169 = v130;
      *v70 = 136446722;
      v129 = v67;
      v71 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
      v72 = v65;
      v73 = v144;
      v128 = v68;
      v75 = v74;
      v76 = *(v151 + 8);
      v136 = (v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v139 = v76;
      (v76)(v72, v158);
      v77 = sub_10000668C(v71, v75, &v169);

      *(v70 + 4) = v77;
      *(v70 + 12) = 2082;
      v78 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v80 = v79;
      v81 = *(v153 + 8);
      v133 = (v153 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v144 = v81;
      (v81)(v73, v155);
      v82 = sub_10000668C(v78, v80, &v169);
      v83 = v152;
      v84 = v154;

      *(v70 + 14) = v82;
      *(v70 + 22) = 2080;
      *(v70 + 24) = sub_10000668C(v161, v60, &v169);
      v85 = v129;
      _os_log_impl(&_mh_execute_header, v129, v128, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v70, 0x20u);
      swift_arrayDestroy();

      v66 = v155;
    }

    else
    {

      v86 = *(v153 + 8);
      v133 = (v153 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v87 = v144;
      v144 = v86;
      (v86)(v87, v66);
      v88 = *(v151 + 8);
      v136 = (v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v139 = v88;
      (v88)(v65, v158);
      v84 = v154;
      v83 = v152;
    }

    v135(v145, v83, v158);
    v134(v146, v84, v66);
    v89 = v151;
    v90 = (*(v151 + 80) + 24) & ~*(v151 + 80);
    v91 = (v18 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = v153;
    v93 = (*(v153 + 80) + v91 + 16) & ~*(v153 + 80);
    v94 = (v140 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    v96 = v150;
    *(v95 + 16) = v150;
    (*(v89 + 32))(v95 + v90, v145, v158);
    v97 = (v95 + v91);
    v98 = v132;
    *v97 = v161;
    v97[1] = v98;
    v99 = v155;
    (*(v92 + 32))(v95 + v93, v146, v155);
    v100 = (v95 + v94);
    *v100 = REMCDList.cleanUpAfterLocalObjectMerge();
    v100[1] = 0;
    v101 = v96;
    v102 = v147;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    (*(v148 + 8))(v102, v149);
    (v144)(v154, v99);
    (v139)(v152, v158);
    v103 = v142;
    REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
    v104 = type metadata accessor for PropertyListEncoder();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v107 = *(v37 + 48);
    v108 = *(v37 + 52);
    swift_allocObject();
    v109 = v162;
    v110 = REMStoreObjectsContainer.init(store:storages:)();
    v111 = v164;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v170 = v37;
    v169 = v110;

    v112 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v169, v111);
    v112(&ObjectType, 0);
    sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse);
    v113 = v143;
    v114 = v138;
    v115 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v114)
    {
      v116 = v103;
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      sub_100006654(v131, qword_100950598);
      v117 = v159;
      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v118))
      {
        v119 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v169 = v164;
        *v119 = 136315394;
        swift_getErrorValue();
        v120 = Error.rem_errorDescription.getter();
        v122 = sub_10000668C(v120, v121, &v169);

        *(v119 + 4) = v122;
        *(v119 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_1009508B0, &qword_1007B6828);
        v123 = String.init<A>(describing:)();
        v125 = sub_10000668C(v123, v124, &v169);

        *(v119 + 14) = v125;
        v116 = v142;
        _os_log_impl(&_mh_execute_header, v43, v118, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v119, 0x16u);
        swift_arrayDestroy();

        v113 = v143;
      }

      v126 = v157;
      swift_willThrow();

      (*(v141 + 8))(v116, v113);
      (*(v126 + 8))(v156, v165);
    }

    else
    {
      v43 = v115;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v141 + 8))(v103, v113);
      (*(v157 + 8))(v156, v165);
    }
  }

  return v43;
}

char *sub_10070ED38(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v95 = a5;
  v90 = a2;
  v91 = a1;
  v83 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v8 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v83 - v11;
  __chkstk_darwin(v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  __chkstk_darwin(v15);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters();
  v92 = *(v98 - 8);
  v18 = *(v92 + 64);
  __chkstk_darwin(v98);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v83 - v22;
  v23 = type metadata accessor for CodingUserInfoKey();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PropertyListDecoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v99 = PropertyListDecoder.init()();
  v88 = v15;
  v86 = v14;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v30 = type metadata accessor for REMStoreObjectsContainer();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();

  v33 = a3;
  v34 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v103 = v30;
  v102[0] = v34;
  v97 = v34;

  v35 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v102, v26);
  v35(v101, 0);
  sub_10000F85C(&qword_100950890, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters);
  v36 = v98;
  v37 = v96;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v37)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100950598);
    swift_errorRetain();
    v39 = v94;
    v40 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v20))
    {
      v41 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v41 = 136315394;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, v102);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v101[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950898, &unk_1007B6818);
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, v102);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v40, v20, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v96 = v33;
    v48 = v92;
    v49 = v93;
    (*(v92 + 32))(v93, v20, v36);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v51 = sub_100013674(qword_1009752E8);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 secondaryGroceryLocalesInfoAsData];
      if (v53)
      {
        v95 = v52;
        v54 = v53;
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        type metadata accessor for RDSecondaryGroceryLocalesInfo();
        sub_10000F85C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v55, v57);
        v69 = *(v102[0] + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

        v70 = v85;
        sub_100448B78(v69, v85);
        if (qword_100936178 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_100947608);
        v72 = v84;
        sub_100010364(v70, v84, &unk_10093F420, &unk_100797AE0);
        swift_bridgeObjectRetain_n();
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v102[0] = v91;
          *v75 = 136446466;
          LODWORD(v90) = v74;
          v76 = v86;
          sub_100010364(v72, v86, &unk_10093F420, &unk_100797AE0);
          v77 = String.init<A>(describing:)();
          v78 = v72;
          v80 = v79;
          sub_1000050A4(v78, &unk_10093F420, &unk_100797AE0);
          v81 = sub_10000668C(v77, v80, v102);

          *(v75 + 4) = v81;
          v48 = v92;
          *(v75 + 12) = 1024;

          *(v75 + 14) = v69 == 0;

          _os_log_impl(&_mh_execute_header, v73, v90, "REMGroceryDataView.SecondaryGroceryLocaleInvocation: %{public}s, isAutomatic: %{BOOL}d", v75, 0x12u);
          sub_10000607C(v91);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_1000050A4(v72, &unk_10093F420, &unk_100797AE0);
          v76 = v86;
        }

        v82 = v85;
        sub_100010364(v85, v76, &unk_10093F420, &unk_100797AE0);

        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();

        sub_1000050A4(v82, &unk_10093F420, &unk_100797AE0);
      }

      else
      {
        v58 = type metadata accessor for Locale();
        (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();
      }

      v59 = type metadata accessor for PropertyListEncoder();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_10003B2E4(_swiftEmptyArrayStorage);
      v62 = *(v30 + 48);
      v63 = *(v30 + 52);
      swift_allocObject();
      v64 = v96;
      v65 = REMStoreObjectsContainer.init(store:storages:)();
      static CodingUserInfoKey.remStoragesContainer.getter();
      v103 = v30;
      v102[0] = v65;

      v66 = dispatch thunk of PropertyListEncoder.userInfo.modify();
      sub_10000E350(v102, v26);
      v66(v101, 0);
      sub_10000F85C(&qword_1009508A0, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);
      v67 = v89;
      v68 = v88;
      v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v87 + 8))(v67, v68);
      (*(v48 + 8))(v93, v98);
    }

    else
    {
      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();

      (*(v48 + 8))(v49, v36);
    }
  }

  return v20;
}

NSObject *sub_10070FB9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v58 = a5;
  v54[0] = a2;
  v54[1] = a1;
  v61 = type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters();
  v55 = *(v61 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v61);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = v54 - v12;
  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PropertyListDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v62 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v20 = type metadata accessor for REMStoreObjectsContainer();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = a3;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v67 = v20;
  v66[0] = v24;
  v60 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v66, v16);
  v25(v65, 0);
  sub_10000F85C(&qword_1009506F0, &type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters);
  v26 = v61;
  v27 = v59;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v57;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = sub_10000668C(v33, v34, v66);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v65[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506F8, &qword_1007B6758);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000668C(v36, v37, v66);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v59 = v16;
    v58 = v23;
    v39 = v55;
    (*(v55 + 32))(v56, v10, v26);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v66[0] = REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.hashtagLabelNamesToSearch.getter();
    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
    v41 = Sequence.compactMapToSet<A>(_:)();

    v42 = sub_10042EC14(v41, 0, v54[0]);

    v43 = sub_1007094F0(v42);

    v66[0] = v43;
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10094CBE0, &qword_10093F598, &qword_1007A2640);
    sub_10000F85C(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    v44 = Sequence.mapToSet<A>(_:)();

    v63 = v44;
    v45 = type metadata accessor for PropertyListEncoder();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v48 = *(v20 + 48);
    v49 = *(v20 + 52);
    swift_allocObject();
    v50 = v58;
    v51 = REMStoreObjectsContainer.init(store:storages:)();
    v52 = v59;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v67 = v20;
    v66[0] = v51;

    v53 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v66, v52);
    v53(v65, 0);
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    sub_1007151E8(&qword_100950700, &qword_100942170);
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v39 + 8))(v56, v61);
  }

  return v30;
}

NSObject *sub_100710640(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v56 = a2;
  v60 = a1;
  v59 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v59);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters();
  v62 = *(v67 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin(v67);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v55 - v15;
  v16 = type metadata accessor for CodingUserInfoKey();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v68 = PropertyListDecoder.init()();
  v57 = v10;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = a3;
  v27 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v73 = v23;
  v72[0] = v27;
  v66 = v27;

  v28 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v72, v19);
  v28(v71, 0);
  sub_10000F85C(&qword_100950720, &type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters);
  v29 = v67;
  v30 = v65;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v30)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100950598);
    swift_errorRetain();
    v32 = v63;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v35 = 136315394;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter();
      v38 = sub_10000668C(v36, v37, v72);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v71[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950728, &unk_1007B6768);
      v39 = String.init<A>(describing:)();
      v41 = sub_10000668C(v39, v40, v72);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v35, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v62 + 32))(v61, v13, v29);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v43 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
    v44 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
    v45 = v57;
    REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
    v46 = sub_100584A24(v43, v44, v45, v56);
    (*(v58 + 8))(v45, v59);

    v69 = v46;
    v47 = type metadata accessor for PropertyListEncoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v50 = *(v23 + 48);
    v51 = *(v23 + 52);
    swift_allocObject();
    v52 = v26;
    v53 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v73 = v23;
    v72[0] = v53;

    v54 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v72, v19);
    v54(v71, 0);
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    sub_1007151E8(&qword_100950700, &qword_100942170);
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v62 + 8))(v61, v29);
  }

  return v33;
}

uint64_t sub_100711040(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a5;
  v84 = a4;
  v80 = a1;
  v79 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v78 = *(v79 - 8);
  v10 = *(v78 + 64);
  __chkstk_darwin(v79);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v77 - v15;
  v88 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v81 = *(v88 - 8);
  v17 = *(v81 + 64);
  __chkstk_darwin(v88);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = v77 - v21;
  v22 = type metadata accessor for CodingUserInfoKey();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PropertyListDecoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v89 = PropertyListDecoder.init()();
  v83 = v6;
  v77[1] = a2;
  v77[0] = v12;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v29 = type metadata accessor for REMStoreObjectsContainer();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = a3;
  v33 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v94 = v29;
  v93[0] = v33;
  v87 = v33;

  v34 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v93, v25);
  v34(v92, 0);
  sub_10000F85C(&qword_100950758, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters);
  v35 = v88;
  v36 = v86;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v36)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_100950598);
    swift_errorRetain();
    v38 = v83;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v41 = 136315394;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, v93);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v92[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950760, &qword_1007B6788);
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, v93);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    v48 = v87;
    swift_willThrow();

    return v48;
  }

  v86 = v32;
  v49 = v81;
  v50 = v82;
  (*(v81 + 32))(v82, v19, v35);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  v52 = v78;
  v53 = v79;
  if ((*(v78 + 48))(v16, 1, v79) == 1)
  {
    sub_1000050A4(v16, &qword_100941B98, qword_1007ACBD0);
    v54 = 0;
    v55 = v86;
LABEL_16:
    sub_1000131E0(0, 2, v54);
    v59 = *(v58 + 16);
    if (v59)
    {
      v93[0] = _swiftEmptyArrayStorage;
      v60 = v58;
      specialized ContiguousArray.reserveCapacity(_:)();
      v61 = type metadata accessor for REMHashtagLabel_Codable();
      v85 = v60;
      v62 = (v60 + 40);
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v65 = objc_allocWithZone(v61);

        v66 = String._bridgeToObjectiveC()();

        [v65 initWithName:v66];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v67 = *(v93[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v62 += 2;
        --v59;
      }

      while (v59);

      v68 = v93[0];
      v49 = v81;
      v50 = v82;
      v55 = v86;
    }

    else
    {

      v68 = _swiftEmptyArrayStorage;
    }

    v86 = v68;
    v90 = v68;
    v69 = type metadata accessor for PropertyListEncoder();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v72 = *(v29 + 48);
    v73 = *(v29 + 52);
    swift_allocObject();
    v74 = v55;
    v75 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v94 = v29;
    v93[0] = v75;

    v76 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v93, v25);
    v76(v92, 0);
    sub_1000F5104(&qword_100950768, &qword_1007B6790);
    sub_100715080();
    v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v49 + 8))(v50, v88);

    return v48;
  }

  v56 = v77[0];
  (*(v52 + 16))(v77[0], v16, v53);
  v57 = (*(v52 + 88))(v56, v53);
  v54 = v57 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
  v55 = v86;
  if (v57 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) || v57 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
  {
    (*(v78 + 8))(v16, v79);
    v50 = v82;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100711BDC(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6)
{
  v83 = a5;
  v82 = a4;
  v77 = a1;
  v74 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v76 = *(v74 - 8);
  v10 = *(v76 + 64);
  __chkstk_darwin(v74);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v72 - v15;
  v85 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters();
  v78 = *(v85 - 8);
  v17 = *(v78 + 64);
  __chkstk_darwin(v85);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v72 - v21;
  v22 = type metadata accessor for CodingUserInfoKey();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PropertyListDecoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v86 = PropertyListDecoder.init()();
  v80 = v6;
  v75 = a2;
  v73 = v12;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v29 = type metadata accessor for REMStoreObjectsContainer();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = a3;
  v33 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v90 = v29;
  v89[0] = v33;
  v81 = v33;

  v34 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v89, v25);
  v34(v88, 0);
  sub_10000F85C(&qword_100950730, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters);
  v35 = v84;
  v36 = v85;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v35)
  {
    if (qword_100936760 == -1)
    {
LABEL_5:
      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_100950598);
      swift_errorRetain();
      v38 = v80;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v41 = 136315394;
        swift_getErrorValue();
        v42 = Error.rem_errorDescription.getter();
        v44 = sub_10000668C(v42, v43, v89);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        v88[0] = swift_getObjectType();
        sub_1000F5104(&qword_100950738, &qword_1007B6778);
        v45 = String.init<A>(describing:)();
        v47 = sub_10000668C(v45, v46, v89);

        *(v41 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v48 = v81;
      swift_willThrow();

      return v48;
    }

LABEL_30:
    swift_once();
    goto LABEL_5;
  }

  v84 = v32;
  v72 = v25;
  (*(v78 + 32))(v79, v19, v36);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters.sortingStyle.getter();
  v50 = v76;
  v51 = v74;
  if ((*(v76 + 48))(v16, 1, v74) == 1)
  {
    sub_1000050A4(v16, &qword_100941B98, qword_1007ACBD0);
    v52 = 0;
    goto LABEL_15;
  }

  (*(v50 + 16))(v73, v16, v51);
  v53 = (*(v50 + 88))(v73, v51);
  v52 = v53 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
  if (v53 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) || v53 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
  {
    (*(v76 + 8))(v16, v51);
LABEL_15:
    v54 = sub_10042F0DC(v52);
    v55 = v54;
    v89[0] = _swiftEmptyArrayStorage;
    if (v54 >> 62)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
      v57 = v84;
      if (v56)
      {
LABEL_17:
        v58 = 0;
        v83 = v55 & 0xC000000000000001;
        v82 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v83)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v58 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v60 = *(v55 + 8 * v58 + 32);
          }

          v61 = v60;
          v62 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          v88[0] = v60;
          sub_100582A84(v88, v87);

          if (v87[0])
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v82 = *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v82 = v89[0];
          }

          ++v58;
          v59 = v62 == v56;
          v57 = v84;
          if (v59)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v57 = v84;
      if (v56)
      {
        goto LABEL_17;
      }
    }

    v82 = _swiftEmptyArrayStorage;
LABEL_33:

    v87[1] = v82;
    v63 = type metadata accessor for PropertyListEncoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v66 = *(v29 + 48);
    v67 = *(v29 + 52);
    swift_allocObject();
    v68 = v57;
    v69 = REMStoreObjectsContainer.init(store:storages:)();
    v70 = v72;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v90 = v29;
    v89[0] = v69;

    v71 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v89, v70);
    v71(v88, 0);
    sub_1000F5104(&qword_100950740, &qword_1007B6780);
    sub_100714FCC();
    v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v78 + 8))(v79, v85);

    return v48;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10071281C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v90 = a5;
  v85 = a2;
  v86 = a1;
  v8 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = &v72 - v10;
  v11 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  v14 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v77 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for REMRemindersListDataView.Diff();
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  __chkstk_darwin(v79);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = &v72 - v19;
  v82 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v81 = *(v82 - 8);
  v20 = *(v81 + 64);
  __chkstk_darwin(v82);
  v83 = &v72 - v21;
  v93 = type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation.Parameters();
  v88 = *(v93 - 8);
  v22 = *(v88 + 64);
  __chkstk_darwin(v93);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v87 = &v72 - v26;
  v27 = type metadata accessor for CodingUserInfoKey();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PropertyListDecoder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v94 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v34 = type metadata accessor for REMStoreObjectsContainer();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = a3;
  v38 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v98 = v34;
  v97 = v38;
  v92 = v38;

  v39 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v97, v30);
  v39(v96, 0);
  sub_10000F85C(&qword_100950620, &type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation.Parameters);
  v40 = v93;
  v41 = v91;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v41)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_100950598);
    swift_errorRetain();
    v43 = v89;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v46 = 136315394;
      swift_getErrorValue();
      v47 = Error.rem_errorDescription.getter();
      v49 = sub_10000668C(v47, v48, &v97);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v96[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950628, &qword_1007B66F8);
      v50 = String.init<A>(describing:)();
      v52 = sub_10000668C(v50, v51, &v97);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v46, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v91 = v37;
    (*(v88 + 32))(v87, v24, v40);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v54 = REMRemindersListDataView.PublicTemplateInvocation.Parameters.publicTemplateObjectID.getter();
    v90 = sub_1006DF640(v54, v85, v91);
    v86 = v54;
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
        v85 = v70;
      }

      else
      {
        v85 = _swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
        v73 = v71;
      }

      else
      {
        v73 = _swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }
    }

    v55 = v84;
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    v56 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v56 - 8) + 56))(v76, 1, 1, v56);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    REMList.codable.getter();
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v74, v55, v79);
    sub_10000F85C(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    sub_10000F85C(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    v59 = v83;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v57 + 8))(v84, v58);
    v60 = type metadata accessor for PropertyListEncoder();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v63 = *(v34 + 48);
    v64 = *(v34 + 52);
    swift_allocObject();
    v65 = v91;
    v66 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v98 = v34;
    v97 = v66;

    v67 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v97, v30);
    v67(v96, 0);
    v68 = v59;
    sub_10000CB48(&qword_100950630, &qword_100950618, &qword_1007B66F0);
    v69 = v82;
    v45 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v81 + 8))(v68, v69);
    (*(v88 + 8))(v87, v93);
  }

  return v45;
}

NSObject *sub_1007135F8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a5;
  v74 = a4;
  v66 = a2;
  v71 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v68 = &v63 - v10;
  v70 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v70);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result();
  v63 = *(v64 - 8);
  v14 = *(v63 + 64);
  __chkstk_darwin(v64);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters();
  v72 = *(v78 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v78);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  v22 = type metadata accessor for CodingUserInfoKey();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PropertyListDecoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v67 = v13;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v29 = type metadata accessor for REMStoreObjectsContainer();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = a3;
  v33 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v29;
  v82[0] = v33;
  v77 = v33;

  v34 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v25);
  v34(v81, 0);
  sub_10000F85C(&qword_100950670, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
  v35 = v78;
  v36 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v36)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_100950598);
    swift_errorRetain();
    v38 = v73;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v41 = 136315394;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, v82);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950688, &qword_1007B6728);
      v45 = String.init<A>(describing:)();
      v47 = sub_10000668C(v45, v46, v82);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v48 = v21;
    (*(v72 + 32))(v21, v18, v35);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v50 = v67;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
    v51 = v68;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
    v52 = sub_1005BEC40(v66, v51);
    sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
    (*(v69 + 8))(v50, v70);
    sub_1005C2B64(v52, v32);
    v76 = v48;

    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
    v53 = type metadata accessor for PropertyListEncoder();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v56 = *(v29 + 48);
    v57 = *(v29 + 52);
    swift_allocObject();
    v58 = v32;
    v59 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v29;
    v82[0] = v59;

    v60 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v61 = v65;
    sub_10000E350(v82, v25);
    v60(v81, 0);
    sub_10000F85C(&qword_100950680, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result);
    v62 = v64;
    v39 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v63 + 8))(v61, v62);
    (*(v72 + 8))(v76, v35);
  }

  return v39;
}

NSObject *sub_100714148(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v106 = a5;
  v101 = a1;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v97 = &v93 - v11;
  v99 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v98 = *(v99 - 8);
  v12 = *(v98 + 64);
  __chkstk_darwin(v99);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result();
  v93 = *(v95 - 8);
  v15 = *(v93 + 64);
  __chkstk_darwin(v95);
  v94 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters();
  v102 = *(v108 - 8);
  v17 = *(v102 + 64);
  __chkstk_darwin(v108);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v103 = &v93 - v21;
  v22 = type metadata accessor for CodingUserInfoKey();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PropertyListDecoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v109 = PropertyListDecoder.init()();
  v100 = a2;
  v96 = v14;
  if (!a6)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v29 = type metadata accessor for REMStoreObjectsContainer();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = a3;
  v33 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v113 = v29;
  v112 = v33;
  v105 = v33;

  v34 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v112, v25);
  v34(v111, 0);
  sub_10000F85C(&qword_100950670, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
  v35 = v108;
  v36 = v107;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v36)
  {
    v106 = v32;
    (*(v102 + 32))(v103, v19, v35);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v49 = v96;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
    v50 = v97;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
    v51 = sub_1005BEC40(v100, v50);
    sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
    (*(v98 + 8))(v49, v99);
    v52 = sub_1005C2B64(v51, v106);
    v99 = v53;
    type metadata accessor for ReminderIDsMergeableOrderingHelper();
    inited = swift_initStackObject();
    *(inited + 16) = _swiftEmptyDictionarySingleton;
    *(inited + 24) = _swiftEmptyArrayStorage;
    v101 = inited;
    sub_1005C3014(v51, v52, inited, v55);
    v107 = [objc_allocWithZone(NSMutableDictionary) init];
    v98 = v52;
    if (v51 >> 62)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (!v56)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v56 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
        goto LABEL_20;
      }
    }

    if (v56 < 1)
    {
      __break(1u);
      swift_once();
      v79 = type metadata accessor for Logger();
      sub_100006654(v79, qword_100950598);
      v80 = v104;
      swift_errorRetain();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v83 = 136315394;
        swift_getErrorValue();
        v84 = Error.rem_errorDescription.getter();
        v86 = sub_10000668C(v84, v85, &v112);

        *(v83 + 4) = v86;
        v25 = v94;
        *(v83 + 12) = 2080;
        v111[0] = swift_getObjectType();
        sub_1000F5104(&qword_100950678, &qword_1007B6720);
        v87 = String.init<A>(describing:)();
        v89 = sub_10000668C(v87, v88, &v112);

        *(v83 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v81, v82, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v83, 0x16u);
        swift_arrayDestroy();
        v62 = v103;

        v49 = v95;

        v39 = v107;
      }

      else
      {

        v39 = v107;
        v62 = v103;
      }

      swift_willThrow();

      (*(v93 + 8))(v25, v49);
      goto LABEL_27;
    }

    for (i = 0; i != v56; ++i)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v58 = *(v51 + 8 * i + 32);
      }

      v59 = v58;
      [v58 updateDeletedFlagAccordingToOrphanState:v107];
    }

LABEL_20:

    sub_100393DD8(v98);
    sub_1005BF7F8(v60);

    sub_1005BFAC0();
    v112 = 0;
    v61 = [v100 save:&v112];
    v62 = v103;
    if (v61)
    {
      v63 = v112;
      v64 = v94;
      REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();

      v65 = v101;
      swift_setDeallocating();
      v66 = *(v65 + 16);

      v67 = *(v65 + 24);

      v68 = type metadata accessor for PropertyListEncoder();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_10003B2E4(_swiftEmptyArrayStorage);
      v71 = *(v29 + 48);
      v72 = *(v29 + 52);
      swift_allocObject();
      v73 = v106;
      v74 = REMStoreObjectsContainer.init(store:storages:)();
      static CodingUserInfoKey.remStoragesContainer.getter();
      v113 = v29;
      v112 = v74;

      v75 = dispatch thunk of PropertyListEncoder.userInfo.modify();
      v76 = v25;
      v77 = v64;
      sub_10000E350(&v112, v76);
      v75(v111, 0);
      sub_10000F85C(&qword_100950680, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result);
      v78 = v95;
      v39 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v93 + 8))(v77, v78);
      (*(v102 + 8))(v103, v108);

      return v39;
    }

    v90 = v112;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v91 = v101;
    swift_setDeallocating();
    v92 = *(v91 + 16);

    v39 = *(v91 + 24);

LABEL_27:
    (*(v102 + 8))(v62, v108);

    return v39;
  }

  if (qword_100936760 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100006654(v37, qword_100950598);
  swift_errorRetain();
  v38 = v104;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v41 = 136315394;
    swift_getErrorValue();
    v42 = Error.rem_errorDescription.getter();
    v44 = sub_10000668C(v42, v43, &v112);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    v111[0] = swift_getObjectType();
    sub_1000F5104(&qword_100950678, &qword_1007B6720);
    v45 = String.init<A>(describing:)();
    v47 = sub_10000668C(v45, v46, &v112);

    *(v41 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v41, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  return v39;
}

unint64_t sub_100714FCC()
{
  result = qword_100950748;
  if (!qword_100950748)
  {
    sub_1000F514C(&qword_100950740, &qword_1007B6780);
    sub_10000F85C(&qword_100950750, &type metadata accessor for REMHashtagLabelDetailed_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950748);
  }

  return result;
}

unint64_t sub_100715080()
{
  result = qword_100950770;
  if (!qword_100950770)
  {
    sub_1000F514C(&qword_100950768, &qword_1007B6790);
    sub_10000F85C(&qword_100950778, &type metadata accessor for REMHashtagLabel_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950770);
  }

  return result;
}

unint64_t sub_100715134()
{
  result = qword_100950958;
  if (!qword_100950958)
  {
    sub_1000F514C(&qword_100950950, &qword_1007B6878);
    sub_10000F85C(&qword_100950960, &type metadata accessor for REMReminder_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950958);
  }

  return result;
}