const char *sub_100573D10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v108[1] = a4;
  v109 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v110 = v6;
  v111 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v108[0] = v108 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v108 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v108 - v18;
  __chkstk_darwin(v17);
  v21 = v108 - v20;
  v22 = type metadata accessor for DIPError.Code();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  __chkstk_darwin(v22);
  v114 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v25 = *(a1 + 40);
  if (!v25)
  {
    sub_1005507F8();
    v25 = *(a1 + 40);
    if (!v25)
    {
      (*(v112 + 104))(v114, enum case for DIPError.Code.databaseInaccessible(_:), v113);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_prepare_v3(v25, (v26 + 32), -1, 0, &ppStmt, 0);

  v115 = v25;
  if (v27)
  {
    result = sqlite3_errmsg(v25);
    if (result)
    {
      v29 = String.init(cString:)();
      v31 = v30;
      defaultLogger()();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v116 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_100141FE4(v29, v31, &v116);
        _os_log_impl(&_mh_execute_header, v32, v33, "coreidvd: failed to prepare delete pre-generated assessments statement %{public}s", v34, 0xCu);
        sub_10000BB78(v35);
      }

      (*(v111 + 8))(v21, v110);
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v36._countAndFlagsBits = 0xD00000000000003CLL;
      v36._object = 0x8000000100720290;
      String.append(_:)(v36);
      v37._countAndFlagsBits = v29;
      v37._object = v31;
      String.append(_:)(v37);

      (*(v112 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v113);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v38 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v39 = *(*v38 + 72);
      v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1006BF520;
      v42 = v41 + v40;
      v43 = v42 + v38[14];
      v44 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v45 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v45 - 8) + 104))(v42, v44, v45);
      v46 = sqlite3_errcode(v115);
      *(v43 + 24) = &type metadata for Int32;
      *(v43 + 32) = &protocol witness table for Int32;
      *v43 = v46;
      sub_10003C9C0(v41);
      swift_setDeallocating();
      sub_10000BE18(v42, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v47 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v48 = qword_1008823D0;
  v49 = String.utf8CString.getter();
  v50 = sqlite3_bind_text(v47, 1, (v49 + 32), -1, v48);

  if (v50)
  {
    result = sqlite3_errmsg(v115);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v51 = String.init(cString:)();
    v53 = v52;
    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v116 = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_100141FE4(v51, v53, &v116);
      _os_log_impl(&_mh_execute_header, v54, v55, "coreidvd: failure binding workflowID: %{public}s", v56, 0xCu);
      sub_10000BB78(v57);
    }

    (*(v111 + 8))(v19, v110);
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v116 = 0xD00000000000002BLL;
    v117 = 0x80000001007202D0;
    v58._countAndFlagsBits = v51;
    v58._object = v53;
    String.append(_:)(v58);

    (*(v112 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v113);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v59 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v60 = *(*v59 + 72);
    v61 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1006BF520;
    v63 = v62 + v61;
    v64 = v63 + v59[14];
    v65 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v66 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v66 - 8) + 104))(v63, v65, v66);
    v67 = sqlite3_errcode(v115);
    *(v64 + 24) = &type metadata for Int32;
    *(v64 + 32) = &protocol witness table for Int32;
    *v64 = v67;
    sub_10003C9C0(v62);
    swift_setDeallocating();
    sub_10000BE18(v63, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 2, v68))
  {
    result = sqlite3_errmsg(v115);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v69 = String.init(cString:)();
    v71 = v70;
    defaultLogger()();

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v116 = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_100141FE4(v69, v71, &v116);
      _os_log_impl(&_mh_execute_header, v72, v73, "coreidvd: failure binding createdBefore: %{public}s", v74, 0xCu);
      sub_10000BB78(v75);
    }

    (*(v111 + 8))(v16, v110);
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v116 = 0xD00000000000002ELL;
    v117 = 0x8000000100720300;
    v76._countAndFlagsBits = v69;
    v76._object = v71;
    String.append(_:)(v76);

    (*(v112 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v113);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v77 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v78 = *(*v77 + 72);
    v79 = (*(*v77 + 80) + 32) & ~*(*v77 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1006BF520;
    v81 = v80 + v79;
    v82 = v81 + v77[14];
    v83 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v84 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v84 - 8) + 104))(v81, v83, v84);
    v85 = sqlite3_errcode(v115);
    *(v82 + 24) = &type metadata for Int32;
    *(v82 + 32) = &protocol witness table for Int32;
    *v82 = v85;
    sub_10003C9C0(v80);
    swift_setDeallocating();
    sub_10000BE18(v81, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v116 = v89;
      *v88 = 136315138;
      *(v88 + 4) = sub_100141FE4(v109, a3, &v116);
      _os_log_impl(&_mh_execute_header, v86, v87, "coreidvd: deleted old pre-generated assessments for workflow %s", v88, 0xCu);
      sub_10000BB78(v89);
    }

    (*(v111 + 8))(v11, v110);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v115);
  if (result)
  {
    v90 = String.init(cString:)();
    v92 = v91;
    v93 = v108[0];
    defaultLogger()();

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v116 = v97;
      *v96 = 136446210;
      *(v96 + 4) = sub_100141FE4(v90, v92, &v116);
      _os_log_impl(&_mh_execute_header, v94, v95, "coreidvd: failure deleting pre-generated assessments: %{public}s", v96, 0xCu);
      sub_10000BB78(v97);
    }

    (*(v111 + 8))(v93, v110);
    v116 = 0;
    v117 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v116 = 0xD000000000000022;
    v117 = 0x800000010071F600;
    v98._countAndFlagsBits = v90;
    v98._object = v92;
    String.append(_:)(v98);

    (*(v112 + 104))(v114, enum case for DIPError.Code.sqliteError(_:), v113);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v99 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v100 = *(*v99 + 72);
    v101 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1006BF520;
    v103 = v102 + v101;
    v104 = v103 + v99[14];
    v105 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v106 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v106 - 8) + 104))(v103, v105, v106);
    v107 = sqlite3_errcode(v115);
    *(v104 + 24) = &type metadata for Int32;
    *(v104 + 32) = &protocol witness table for Int32;
    *v104 = v107;
    sub_10003C9C0(v102);
    swift_setDeallocating();
    sub_10000BE18(v103, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_100574FE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v79 = v2;
  v80 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v79 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v79 - v12;
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  __chkstk_darwin(v16);
  v83 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v19 = *(a1 + 40);
  if (!v19)
  {
    sub_1005507F8();
    v19 = *(a1 + 40);
    if (!v19)
    {
      (*(v81 + 104))(v83, enum case for DIPError.Code.databaseInaccessible(_:), v82);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_14:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v20 = String.utf8CString.getter();
  v21 = sqlite3_prepare_v3(v19, (v20 + 32), -1, 0, &ppStmt, 0);

  if (v21)
  {
    result = sqlite3_errmsg(v19);
    if (result)
    {
      v23 = String.init(cString:)();
      v25 = v24;
      defaultLogger()();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v84 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_100141FE4(v23, v25, &v84);
        _os_log_impl(&_mh_execute_header, v26, v27, "coreidvd: failed to prepare delete pre-generated assessments statement %{public}s", v28, 0xCu);
        sub_10000BB78(v29);
      }

      (*(v80 + 8))(v15, v79);
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v30._countAndFlagsBits = 0xD00000000000003CLL;
      v30._object = 0x8000000100720290;
      String.append(_:)(v30);
      v31._countAndFlagsBits = v23;
      v31._object = v25;
      String.append(_:)(v31);

      v80 = v84;
      (*(v81 + 104))(v83, enum case for DIPError.Code.sqliteError(_:), v82);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1006BF520;
      v36 = v35 + v34;
      v37 = v36 + v32[14];
      v38 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v39 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v39 - 8) + 104))(v36, v38, v39);
      v40 = sqlite3_errcode(v19);
      *(v37 + 24) = &type metadata for Int32;
      *(v37 + 32) = &protocol witness table for Int32;
      *v37 = v40;
      sub_10003C9C0(v35);
      swift_setDeallocating();
      sub_10000BE18(v36, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 1, v41))
  {
    result = sqlite3_errmsg(v19);
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v42 = String.init(cString:)();
    v44 = v43;
    defaultLogger()();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v84 = v48;
      *v47 = 136446210;
      *(v47 + 4) = sub_100141FE4(v42, v44, &v84);
      _os_log_impl(&_mh_execute_header, v45, v46, "coreidvd: failure binding createdBefore: %{public}s", v47, 0xCu);
      sub_10000BB78(v48);
    }

    (*(v80 + 8))(v13, v79);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v84 = 0xD00000000000002ELL;
    v85 = 0x8000000100720300;
    v49._countAndFlagsBits = v42;
    v49._object = v44;
    String.append(_:)(v49);

    v80 = v84;
    (*(v81 + 104))(v83, enum case for DIPError.Code.sqliteError(_:), v82);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v50 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v51 = *(*v50 + 72);
    v52 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1006BF520;
    v54 = v53 + v52;
    v55 = v54 + v50[14];
    v56 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v57 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v57 - 8) + 104))(v54, v56, v57);
    v58 = sqlite3_errcode(v19);
    *(v55 + 24) = &type metadata for Int32;
    *(v55 + 32) = &protocol witness table for Int32;
    *v55 = v58;
    sub_10003C9C0(v53);
    swift_setDeallocating();
    sub_10000BE18(v54, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "coreidvd: deleted old pre-generated assessments for all workflows", v61, 2u);
    }

    (*(v80 + 8))(v7, v79);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v19);
  if (result)
  {
    v62 = String.init(cString:)();
    v64 = v63;
    defaultLogger()();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v84 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_100141FE4(v62, v64, &v84);
      _os_log_impl(&_mh_execute_header, v65, v66, "coreidvd: failure deleting pre-generated assessments: %{public}s", v67, 0xCu);
      sub_10000BB78(v68);
    }

    (*(v80 + 8))(v10, v79);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v84 = 0xD000000000000022;
    v85 = 0x800000010071F600;
    v69._countAndFlagsBits = v62;
    v69._object = v64;
    String.append(_:)(v69);

    v80 = v84;
    (*(v81 + 104))(v83, enum case for DIPError.Code.sqliteError(_:), v82);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v70 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v71 = *(*v70 + 72);
    v72 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1006BF520;
    v74 = v73 + v72;
    v75 = v74 + v70[14];
    v76 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v77 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v77 - 8) + 104))(v74, v76, v77);
    v78 = sqlite3_errcode(v19);
    *(v75 + 24) = &type metadata for Int32;
    *(v75 + 32) = &protocol witness table for Int32;
    *v75 = v78;
    sub_10003C9C0(v73);
    swift_setDeallocating();
    sub_10000BE18(v74, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100575E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerifiedClaim(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100575EDC()
{
  result = qword_100848078;
  if (!qword_100848078)
  {
    sub_10000B870(&qword_100848070, &unk_1006E8370);
    sub_10057628C(&qword_100848080, type metadata accessor for VerifiedEncryptedDataWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848078);
  }

  return result;
}

unint64_t sub_100575F98()
{
  result = qword_100848090;
  if (!qword_100848090)
  {
    sub_10000B870(&qword_100848088, &qword_1006E8388);
    sub_10057601C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848090);
  }

  return result;
}

unint64_t sub_10057601C()
{
  result = qword_100848098;
  if (!qword_100848098)
  {
    sub_10000B870(&qword_100848070, &unk_1006E8370);
    sub_10057628C(&qword_1008480A0, type metadata accessor for VerifiedEncryptedDataWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848098);
  }

  return result;
}

unint64_t sub_1005760D8()
{
  result = qword_1008480A8;
  if (!qword_1008480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008480A8);
  }

  return result;
}

unint64_t sub_10057612C()
{
  result = qword_1008480B0;
  if (!qword_1008480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008480B0);
  }

  return result;
}

uint64_t sub_100576180()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005761DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100576224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057628C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005762D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100576340()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], v5);
  os_unfair_lock_unlock(v2 + 54);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_100031918(v5);
    v3 = sub_10054BCA8();

    v4 = [v3 newBackgroundContext];

    *(v0 + 16) = v4;
  }
}

id sub_100576468()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v21[0] = 0;
  if ([v6 save:v21])
  {
    return v21[0];
  }

  v8 = v21[0];
  v9 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  v10._object = 0x8000000100721E40;
  String.append(_:)(v10);
  v20[6] = v9;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v20[1] = v21[0];
  (*(v2 + 104))(v5, enum case for DIPError.Code.coreDataErrorBiomeDataContextSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = v14 + v13;
  v16 = (v15 + v11[14]);
  v17 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  swift_getErrorValue();
  swift_errorRetain();
  v19 = dispatch thunk of Error._code.getter();
  v16[3] = &type metadata for Int;
  v16[4] = &protocol witness table for Int;
  *v16 = v19;
  sub_10003C9C0(v14);
  swift_setDeallocating();
  sub_100224AFC(v15);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100576834(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1005776B8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816B78;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1005769C8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  return a1(v4);
}

uint64_t sub_100576B70(uint64_t a1, void *a2)
{
  v4 = v2;
  v35 = type metadata accessor for DIPError.Code();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v36 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  [v12 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v13 = swift_allocObject();
  v34 = xmmword_1006BF520;
  *(v13 + 16) = xmmword_1006BF520;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10057762C();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = NSPredicate.init(format:_:)();
  [v12 setPredicate:v14];

  v15 = *(v4 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v17._countAndFlagsBits = 0xD000000000000035;
    v17._object = 0x8000000100721DB0;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x3A726F727265203ALL;
    v19._object = 0xE900000000000020;
    String.append(_:)(v19);
    v39 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v33[1] = v37;
    (*(v7 + 104))(v36, enum case for DIPError.Code.coreDataErrorFetchBiomeMetadataFailed(_:), v35);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v20 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v21 = *(*v20 + 72);
    v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v34;
    v24 = v23 + v22;
    v25 = (v23 + v22 + v20[14]);
    v26 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v27 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v27 - 8) + 104))(v24, v26, v27);
    swift_getErrorValue();
    swift_errorRetain();
    v28 = dispatch thunk of Error._code.getter();
    v25[3] = &type metadata for Int;
    v25[4] = &protocol witness table for Int;
    *v25 = v28;
    v29 = sub_10003C9C0(v23);
    swift_setDeallocating();
    sub_100224AFC(v24);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v29;
  }

  v30 = sub_10057A0CC(v16);

  if (!v30)
  {
LABEL_12:

    return 0;
  }

  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v30 + 32);
LABEL_9:
    v29 = v32;

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005770D4()
{
  v2 = v0;
  v3 = type metadata accessor for DIPError.Code();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithEntityName:v7];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  v31 = xmmword_1006BF520;
  *(v9 + 16) = xmmword_1006BF520;
  v10 = IdentityDocumentType.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10057762C();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v13];

  v14 = *(v2 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v16._countAndFlagsBits = 0xD00000000000002FLL;
    v16._object = 0x8000000100721D00;
    String.append(_:)(v16);
    v17._countAndFlagsBits = IdentityDocumentType.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x203A726F72726520;
    v18._object = 0xE800000000000000;
    String.append(_:)(v18);
    v37 = v1;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v30[1] = v35;
    (*(v32 + 104))(v34, enum case for DIPError.Code.coreDataErrorFetchBiomeMetadataFailed(_:), v33);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v19 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v20 = *(*v19 + 72);
    v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    v23 = v22 + v21;
    v24 = (v23 + v19[14]);
    v25 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v26 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v26 - 8) + 104))(v23, v25, v26);
    swift_getErrorValue();
    swift_errorRetain();
    v27 = dispatch thunk of Error._code.getter();
    v24[3] = &type metadata for Int;
    v24[4] = &protocol witness table for Int;
    *v24 = v27;
    sub_10003C9C0(v22);
    swift_setDeallocating();
    sub_100224AFC(v23);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v29 = sub_10057A0CC(v15);

    return v29;
  }
}

unint64_t sub_1005775E0()
{
  result = qword_1008481C0;
  if (!qword_1008481C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008481C0);
  }

  return result;
}

unint64_t sub_10057762C()
{
  result = qword_1008481D0;
  if (!qword_1008481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008481D0);
  }

  return result;
}

uint64_t sub_100577680()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005776B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1005769C8(*(v0 + 16));
}

uint64_t sub_1005776D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1005776EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = String._bridgeToObjectiveC()();
  [a1 setProofingSessionID:v22];

  if (a5)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [a1 setDob:{v23, a12}];

  if (a7)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [a1 setGender:v24];

  if (a9)
  {
    v25 = String._bridgeToObjectiveC()();
    [a1 setEthnicity:v25];

    if (a11)
    {
      v26 = 0;
    }

    else
    {
      v26 = a10;
    }

    [a1 setSkinTone:v26];
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    [a1 setEthnicity:0];
    if (a11)
    {
      v28 = 0;
    }

    else
    {
      v28 = a10;
    }

    [a1 setSkinTone:v28];
    v27 = 0;
  }

  [a1 setEthnicity:v27];

  if (a13)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [a1 setDeviceLanguage:v29];

  if (a15)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [a1 setIssuer:v30];

  [a1 setShouldDonateProofingDecision:a16 & 1];
  if (a17)
  {
    v31.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v31.super.isa = 0;
  }

  [a1 setAxSettings:v31.super.isa];

  if (a19)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  [a1 setIdentityType:?];
}

void sub_1005779B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v50 = a15;
  v51 = a9;
  [a1 setLivenessAssessment:a2];
  [a1 setGestureAssessment:a3];
  if (a5)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [a1 setPadtoolVersion:v52];

  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  [a1 setPrdVersion:a7];

  if (a9)
  {
    v51 = String._bridgeToObjectiveC()();
  }

  [a1 setFacePoseVersion:v51];

  [a1 setPassiveLivenessAssessment:a10];
  [a1 setPassiveGestureAssessment:a11];
  if (a13)
  {
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  [a1 setPassiveLivenessFacVersion:v53];

  if (a15)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  [a1 setPassiveLivenessFacePoseVersion:v50];

  if (a17)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  [a1 setPassiveLivenessPrdVersion:v54];

  if (a19)
  {
    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  [a1 setPassiveLivenessPadtoolVersion:v55];

  [a1 setDidStepUp:a20 & 1];
  if (a22)
  {
    v56 = String._bridgeToObjectiveC()();
  }

  else
  {
    v56 = 0;
  }

  [a1 setLivenessShadowLabel:v56];

  if (a24)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  [a1 setLivenessShadowFacVersion:v57];

  if (a26)
  {
    v58 = String._bridgeToObjectiveC()();
  }

  else
  {
    v58 = 0;
  }

  [a1 setLivenessShadowFacePoseVersion:v58];

  if (a28)
  {
    v59 = String._bridgeToObjectiveC()();
  }

  else
  {
    v59 = 0;
  }

  [a1 setLivenessShadowPrdVersion:v59];

  if (a30)
  {
    v60 = String._bridgeToObjectiveC()();
  }

  else
  {
    v60 = 0;
  }

  [a1 setLivenessShadowPadtoolVersion:v60];

  if (a32)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  [a1 setLivenessShadowLivenessAssessment:v61];

  if (a34)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  else
  {
    v62 = 0;
  }

  [a1 setLivenessShadowGestureAssessment:v62];

  if (a36)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [a1 setLivenessShadowLivenessType:v63];

  if (a38)
  {
    v64 = String._bridgeToObjectiveC()();
    [a1 setFaceMatchingModelVersion:v64];

    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    [a1 setFaceMatchingModelVersion:0];
    v65 = 0;
  }

  [a1 setFaceMatchingModelVersion:v65];

  if (a40)
  {
    v66 = String._bridgeToObjectiveC()();
  }

  else
  {
    v66 = 0;
  }

  [a1 setFaceMatchingDetectorModelVersion:v66];

  if (a42)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  [a1 setFaceMatchingShadowAssessment:v67];

  if (a44)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  [a1 setFaceMatchingShadowModelVersion:v68];

  if (a46)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;
  [a1 setFaceMatchingShadowDetectorModelVersion:?];
}

uint64_t sub_100577FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_100578014()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingBiomeData();
  v7 = static StoredProofingBiomeData.fetchRequest()();
  v8 = *(v0 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.coreDataErrorAsyncFetchProofingBiomeDataFailed(_:), v2);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v11 = *(*v10 + 72);
    v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BF520;
    v14 = v13 + v12;
    v15 = (v14 + v10[14]);
    v16 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    swift_getErrorValue();
    swift_errorRetain();
    v18 = dispatch thunk of Error._code.getter();
    v15[3] = &type metadata for Int;
    v15[4] = &protocol witness table for Int;
    *v15 = v18;
    v19 = sub_10003C9C0(v13);
    swift_setDeallocating();
    sub_100224AFC(v14);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v19;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v21 = result;
  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = v21;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(result + 32);
LABEL_8:
    v19 = v20;

    return v19;
  }

  __break(1u);
  return result;
}

id sub_1005783D4()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_10057847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for StoredProofingSession();
  v8 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  v9 = &unk_1006BF000;
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10057762C();
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  if (a1 == 3)
  {
    v4 = v3;
    v9 = &unk_1006BF000;
  }

  v11 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v12 = swift_allocObject();
  v32 = v9[82];
  *(v12 + 16) = v32;
  v13 = v11;
  v14 = IdentityTarget.rawValue.getter();
  *(v12 + 56) = &type metadata for Int64;
  *(v12 + 64) = &protocol witness table for Int64;
  *(v12 + 32) = v14;
  v15 = NSPredicate.init(format:_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v32;
  v17 = IdentityDocumentType.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10057762C();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006E8400;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v20;
  v22 = v15;
  v23 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v8 setPredicate:v25];
  v26 = *(v33 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    v28 = v23;
    v23 = v22;
    v25 = v13;
LABEL_14:

    return v20;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    v20 = 0;
    goto LABEL_13;
  }

  v30 = result;
  v31 = _CocoaArrayWrapper.endIndex.getter();
  result = v30;
  if (!v31)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(result + 32);
LABEL_10:
    v20 = v29;

LABEL_13:
    v28 = v22;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057886C(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 16) objectWithID:a1];
  type metadata accessor for StoredProofingSession();
  result = swift_dynamicCastClass();
  if (!result)
  {

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v10 = [a1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0xD00000000000001FLL;
    v15._object = 0x80000001007094F0;
    String.append(_:)(v15);
    (*(v4 + 104))(v7, enum case for DIPError.Code.coreDataError(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_100578AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoredProofingSession();
  v25 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_10057762C();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v9;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = NSPredicate.init(format:_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BF520;
  v14 = IdentityTarget.rawValue.getter();
  *(v13 + 56) = &type metadata for Int64;
  *(v13 + 64) = &protocol witness table for Int64;
  *(v13 + 32) = v14;
  v15 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006E8400;
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  *(v16 + 48) = v15;
  v17 = v10;
  v18 = v12;
  v19 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v25 setPredicate:v21];
  v22 = *(v26 + 16);
  v23 = NSManagedObjectContext.fetch<A>(_:)();

  return v23;
}

uint64_t sub_100578D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100578E3C, 0, 0);
}

uint64_t sub_100578E3C()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[6] + 16);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_100578F8C;
  v11 = v0[9];
  v12 = v0[5];
  v13 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v11, sub_10057A074, v6, v12);
}

uint64_t sub_100578F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_100579164, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_100579164()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1005791C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredProofingSession();
  v6 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10057762C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v8];

  v9 = *(v3 + 16);
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  return v10;
}

unint64_t sub_1005792EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredProofingSession();
  v4 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10057762C();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = NSPredicate.init(format:_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = IdentityTarget.rawValue.getter();
  *(v7 + 56) = &type metadata for Int64;
  *(v7 + 64) = &protocol witness table for Int64;
  *(v7 + 32) = v8;
  v9 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006DAEA0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  v11 = v6;
  v12 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v4 setPredicate:v14];
  v15 = *(v20 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v21)
  {

LABEL_11:
    return v9;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  v18 = result;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  result = v18;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_8:
    v9 = v17;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005795AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredProofingSession();
  v5 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10057762C();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v7];
  v8 = *(v2 + 16);
  v9 = NSManagedObjectContext.fetch<A>(_:)();

  return v9;
}

uint64_t sub_1005796D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StoredProofingSession();
  v7 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_10057762C();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v9;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006DAEA0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v14 = v10;
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v7 setPredicate:v17];
  v18 = *(v22 + 16);
  v19 = NSManagedObjectContext.fetch<A>(_:)();

  return v19;
}

uint64_t sub_1005798F8()
{
  v1 = type metadata accessor for DIPError.Code();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  __chkstk_darwin(v1);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingBiomeData();
  v4 = static StoredProofingBiomeData.fetchRequest()();
  [v4 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  v27 = xmmword_1006BF520;
  *(v5 + 16) = xmmword_1006BF520;
  v6 = IdentityDocumentType.description.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10057762C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v9];

  v10 = *(v0 + 16);
  v11 = v31;
  v12 = NSManagedObjectContext.fetch<A>(_:)();

  if (v11)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v13._countAndFlagsBits = 0xD000000000000033;
    v13._object = 0x8000000100721F30;
    String.append(_:)(v13);
    v14._countAndFlagsBits = IdentityDocumentType.description.getter();
    v31 = v12;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x3A726F727265203ALL;
    v15._object = 0xE900000000000020;
    String.append(_:)(v15);
    v34 = v11;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v26[1] = v32;
    (*(v28 + 104))(v30, enum case for DIPError.Code.coreDataError(_:), v29);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v27;
    v20 = v19 + v18;
    v21 = (v20 + v16[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    sub_10003C9C0(v19);
    swift_setDeallocating();
    sub_100224AFC(v20);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v31;
  }

  return v12;
}

unint64_t sub_100579D9C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  type metadata accessor for StoredProofingSession();
  v8 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10057762C();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v10];

  v11 = *(v5 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return v4;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v4 = v13;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100579F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100027B9C;

  return sub_100578D74(a1, a2, a3, a4);
}

uint64_t sub_10057A03C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10057A074()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void *sub_10057A0FC(uint64_t a1, void (*a2)(void))
{
  v9 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v9;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10001F2EC(i, v8);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = v9[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v9;
    }
  }

  return 0;
}

void *sub_10057A210(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10057A388(uint64_t a1, unint64_t a2, char a3)
{
  v43 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityDocumentType.Category();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  sub_1005775E0();
  v15 = sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v16 = swift_allocObject();
  v39 = xmmword_1006BF520;
  *(v16 + 16) = xmmword_1006BF520;
  v17 = IdentityTarget.rawValue.getter();
  *(v16 + 56) = &type metadata for Int64;
  *(v16 + 64) = &protocol witness table for Int64;
  *(v16 + 32) = v17;
  v18 = NSPredicate.init(format:_:)();
  if (a3)
  {
    [v14 setPredicate:v18];
  }

  else
  {
    v38 = v14;
    IdentityDocumentType.category.getter();
    v19 = (*(v8 + 88))(v11, v7);
    if (v19 == enum case for IdentityDocumentType.Category.mDL(_:))
    {
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1006DAEA0;
      *(v20 + 32) = v18;
      v21 = v18;
      *(v20 + 40) = sub_10057B7D4();
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = [objc_opt_self() andPredicateWithSubpredicates:v22.super.isa];
    }

    else
    {
      if (v19 != enum case for IdentityDocumentType.Category.passport(_:))
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v34._countAndFlagsBits = 0xD000000000000016;
        v34._object = 0x8000000100721FC0;
        String.append(_:)(v34);
        v35._countAndFlagsBits = IdentityDocumentType.description.getter();
        v47 = v7;
        String.append(_:)(v35);

        v36._countAndFlagsBits = 0xD00000000000001ELL;
        v36._object = 0x8000000100721FE0;
        String.append(_:)(v36);
        v43 = v46;
        v44 = v45;
        (*(v40 + 104))(v42, enum case for DIPError.Code.unexpectedIDType(_:), v41);
        v15 = 0x8000000100722040;
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v8 + 8))(v11, v47);
        return v15;
      }

      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1006DAEA0;
      *(v24 + 32) = v18;
      v15 = swift_allocObject();
      *(v15 + 16) = v39;
      v25 = v18;
      v26 = IdentityDocumentType.description.getter();
      v28 = v27;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_10057762C();
      *(v15 + 32) = v26;
      *(v15 + 40) = v28;
      *(v24 + 40) = NSPredicate.init(format:_:)();
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = [objc_opt_self() andPredicateWithSubpredicates:v22.super.isa];
    }

    v29 = v23;

    v14 = v38;
    [v38 setPredicate:v29];
  }

  v30 = *(v44 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v31 = v47;
  v32 = NSManagedObjectContext.fetch<A>(_:)();
  if (v31)
  {
  }

  else
  {
    v15 = sub_10057A210(v32, &type metadata accessor for StoredProofingSession);
  }

  return v15;
}

void *sub_10057A980()
{
  v2 = type metadata accessor for DIPError.Code();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v29 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  IdentityDocumentType.category.getter();
  v13 = (*(v6 + 88))(v9, v5);
  if (v13 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v14 = sub_10057B7D4();
  }

  else
  {
    if (v13 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v21._countAndFlagsBits = 0xD000000000000016;
      v21._object = 0x8000000100721FC0;
      String.append(_:)(v21);
      v22._countAndFlagsBits = IdentityDocumentType.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD00000000000001ELL;
      v23._object = 0x8000000100721FE0;
      String.append(_:)(v23);
      v25[1] = v28;
      v25[2] = v27;
      (*(v26 + 104))(v29, enum case for DIPError.Code.unexpectedIDType(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v6 + 8))(v9, v5);
      return v5;
    }

    sub_1005775E0();
    sub_100007224(&unk_1008483D0, &unk_1006E83E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006BF520;
    v16 = IdentityDocumentType.description.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10057762C();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v14 = NSPredicate.init(format:_:)();
  }

  v5 = v14;
  [v12 setPredicate:v14];

  v19 = *(v0 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v5 = sub_10057A210(v20, &type metadata accessor for StoredProofingSession);
  }

  return v5;
}

uint64_t sub_10057ADE4(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithEntityName:v12];

  [v13 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v14 = swift_allocObject();
  v40 = xmmword_1006BF520;
  *(v14 + 16) = xmmword_1006BF520;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10057762C();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v15];

  v16 = *(v4 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v18._countAndFlagsBits = 0xD000000000000037;
    v18._object = 0x80000001007220E0;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x3A726F727265203ALL;
    v20._object = 0xE900000000000020;
    String.append(_:)(v20);
    v44 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v39[1] = v42;
    (*(v8 + 104))(v41, enum case for DIPError.Code.coreDataErrorProofingSessionFetchPrearmTrustFailed(_:), v7);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v21 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v22 = *(*v21 + 72);
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v40;
    v25 = v24 + v23;
    v26 = (v24 + v23 + v21[14]);
    v27 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v28 - 8) + 104))(v25, v27, v28);
    swift_getErrorValue();
    swift_errorRetain();
    v29 = dispatch thunk of Error._code.getter();
    v26[3] = &type metadata for Int;
    v26[4] = &protocol witness table for Int;
    *v26 = v29;
    v30 = sub_10003C9C0(v24);
    swift_setDeallocating();
    sub_100224AFC(v25);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v30;
  }

  v31 = v17;
  if (v17 >> 62)
  {
    type metadata accessor for StoredPrearmTrust();

    v38 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v31 = v38;
  }

  else
  {
    v32 = v17 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredPrearmTrust();
    if (swift_dynamicCastMetatype() || (v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v36 = (v32 + 32);
      while (1)
      {
        v37 = *v36;
        if (!swift_dynamicCastClass())
        {
          break;
        }

        ++v36;
        if (!--v35)
        {
          goto LABEL_5;
        }
      }

      v31 = v32 | 1;
    }
  }

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v31 + 32);
LABEL_11:
    v30 = v34;

    return v30;
  }

  __break(1u);
  return result;
}

void sub_10057B404(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10057ADE4(a1, a2);
  if (v3)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v12._object = 0x8000000100722070;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x203A726F72726520;
    v14._object = 0xE800000000000000;
    String.append(_:)(v14);
    v29 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v26[1] = v27;
    (*(v7 + 104))(v10, enum case for DIPError.Code.coreDataErrorProofingSessionDeletePrearmTrustFailed(_:), v6);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v15 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v16 = *(*v15 + 72);
    v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006BF520;
    v19 = v18 + v17;
    v20 = (v19 + v15[14]);
    v21 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    swift_getErrorValue();
    swift_errorRetain();
    v23 = dispatch thunk of Error._code.getter();
    v20[3] = &type metadata for Int;
    v20[4] = &protocol witness table for Int;
    *v20 = v23;
    sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_100224AFC(v19);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else if (v11)
  {
    v24 = *(v2 + 16);
    v25 = v11;
    [v24 deleteObject:v11];
  }
}

id sub_10057B7D4()
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF520;
  v1 = IdentityDocumentType.description.getter();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  v4 = sub_10057762C();
  *(v0 + 64) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = NSPredicate.init(format:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = IdentityDocumentType.description.getter();
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = v4;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityDocumentType.description.getter();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v4;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006E8400;
  *(v14 + 32) = v5;
  *(v14 + 40) = v9;
  *(v14 + 48) = v13;
  v15 = v5;
  v16 = v9;
  v17 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  return v19;
}

void *sub_10057B9D0@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for IdentityProofingAsyncDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

id sub_10057BA64()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  result = [v6 hasChanges];
  if (result)
  {
    v21[0] = 0;
    if ([v6 save:v21])
    {
      return v21[0];
    }

    else
    {
      v8 = v21[0];
      v9 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v10._countAndFlagsBits = 0xD00000000000002ELL;
      v10._object = 0x8000000100721E40;
      String.append(_:)(v10);
      v20[6] = v9;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      v20[1] = v21[0];
      (*(v2 + 104))(v5, enum case for DIPError.Code.coreDataErrorSavingProofingDataFailed(_:), v1);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v12 = *(*v11 + 72);
      v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1006BF520;
      v15 = v14 + v13;
      v16 = (v15 + v11[14]);
      v17 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v18 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v18 - 8) + 104))(v15, v17, v18);
      swift_getErrorValue();
      swift_errorRetain();
      v19 = dispatch thunk of Error._code.getter();
      v16[3] = &type metadata for Int;
      v16[4] = &protocol witness table for Int;
      *v16 = v19;
      sub_10003C9C0(v14);
      swift_setDeallocating();
      sub_100224AFC(v15);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return result;
}

void sub_10057BE48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithEntityName:v7];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10057762C();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  v12 = IdentityTarget.rawValue.getter();
  *(v11 + 56) = &type metadata for Int64;
  *(v11 + 64) = &protocol witness table for Int64;
  *(v11 + 32) = v12;
  v13 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006DAEA0;
  *(v14 + 32) = v10;
  *(v14 + 40) = v13;
  v15 = v10;
  v16 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v8 setPredicate:v18];
  v19 = *(v3 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v24)
  {

    return;
  }

  if (v20 >> 62)
  {
    v22 = v20;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v22;
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v20 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v21 = *(v20 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for StoredProofingSession();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10057C18C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100267C5C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10057E5F8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816C18;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

void sub_10057C320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v45 = a6;
  v46 = a4;
  v10 = type metadata accessor for Logger();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v40 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IdentityDocumentType.Category();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredProofingSession();
  v47 = static StoredProofingSession.fetchRequest()();
  v38[1] = a1;
  IdentityDocumentType.category.getter();
  v41 = v14;
  v18 = *(v14 + 88);
  v39 = v13;
  v19 = v18(v17, v13);
  if (v19 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v20 = sub_10057E984(a2, a3, v46, a5 & 1);
  }

  else
  {
    v21 = v46;
    if (v19 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v28 = v40;
      defaultLogger()();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v49 = v32;
        *v31 = 136315138;
        v33 = IdentityDocumentType.description.getter();
        v35 = sub_100141FE4(v33, v34, &v49);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "invalid documentType: %s cannot fetch proofing session", v31, 0xCu);
        sub_10000BB78(v32);
      }

      (*(v42 + 8))(v28, v43);
      (*(v41 + 8))(v17, v39);
      return;
    }

    v22 = String.lowercased()();
    v20 = sub_10057E638(v22._countAndFlagsBits, v22._object, v21, a5 & 1);
  }

  v23 = v47;
  [v47 setPredicate:v20];
  v24 = *(v44 + 16);
  v25 = v48;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v25)
  {

    return;
  }

  if (v26 >> 62)
  {
    v36 = v26;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v36;
    if (v37)
    {
      goto LABEL_9;
    }

LABEL_17:

    return;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v26 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
LABEL_12:

    return;
  }

  __break(1u);
}

unint64_t sub_10057C738(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  type metadata accessor for StoredProofingSession();
  v7 = static StoredProofingSession.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10057762C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];
  v10 = *(v2 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

LABEL_11:
    return v4;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v4 = 0;
    goto LABEL_11;
  }

  v13 = result;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v4 = v12;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_10057C8F0(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10057DC18(a1, a2);
  if (v3)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    v12._object = 0x8000000100722070;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x203A726F72726520;
    v14._object = 0xE800000000000000;
    String.append(_:)(v14);
    v29 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v26[1] = v27;
    (*(v7 + 104))(v10, enum case for DIPError.Code.coreDataErrorDeletePrearmTrustFailed(_:), v6);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v15 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v16 = *(*v15 + 72);
    v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006BF520;
    v19 = v18 + v17;
    v20 = (v19 + v15[14]);
    v21 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    swift_getErrorValue();
    swift_errorRetain();
    v23 = dispatch thunk of Error._code.getter();
    v20[3] = &type metadata for Int;
    v20[4] = &protocol witness table for Int;
    *v20 = v23;
    sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_100224AFC(v19);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else if (v11)
  {
    v24 = *(v2 + 16);
    v25 = v11;
    [v24 deleteObject:v11];
  }
}

void sub_10057CCBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10057762C();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = NSPredicate.init(format:_:)();
  [v9 setPredicate:v11];

  v12 = *(v4 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    sub_10057A0B4(v13);
  }
}

void sub_10057CE48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithEntityName:v7];

  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10057762C();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = NSPredicate.init(format:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  v12 = IdentityTarget.rawValue.getter();
  *(v11 + 56) = &type metadata for Int64;
  *(v11 + 64) = &protocol witness table for Int64;
  *(v11 + 32) = v12;
  v13 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006DAEA0;
  *(v14 + 32) = v10;
  *(v14 + 40) = v13;
  v15 = v10;
  v16 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v8 setPredicate:v18];
  v19 = *(v3 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v24)
  {

    return;
  }

  if (v20 >> 62)
  {
    v22 = v20;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v22;
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v20 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v21 = *(v20 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for StoredProofingSession();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10057D18C()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  v10 = *(v0 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v12._countAndFlagsBits = 0xD000000000000029;
    v12._object = 0x8000000100722280;
    String.append(_:)(v12);
    v28 = v1;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v25[1] = v26;
    (*(v3 + 104))(v6, enum case for DIPError.Code.coreDataErrorFetchProofingBiomeDataFailed(_:), v2);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v13 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v14 = *(*v13 + 72);
    v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BF520;
    v17 = v16 + v15;
    v18 = (v17 + v13[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    sub_100224AFC(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v6;
  }

  v22 = sub_10057A1F8(v11);

  if (!v22)
  {
LABEL_12:

    return 0;
  }

  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
LABEL_9:
    v6 = v24;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057D604(uint64_t a1, void *a2)
{
  v4 = v2;
  v40 = type metadata accessor for DIPError.Code();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v40);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  [v12 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v13 = swift_allocObject();
  v39 = xmmword_1006BF520;
  *(v13 + 16) = xmmword_1006BF520;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10057762C();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = NSPredicate.init(format:_:)();
  [v12 setPredicate:v14];

  v15 = *(v4 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v17._countAndFlagsBits = 0xD000000000000038;
    v17._object = 0x8000000100722210;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x3A726F727265203ALL;
    v19._object = 0xE900000000000020;
    String.append(_:)(v19);
    v44 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v38[1] = v42;
    (*(v7 + 104))(v41, enum case for DIPError.Code.coreDataErrorFetchProofingDataForBiomeFailed(_:), v40);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v20 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v21 = *(*v20 + 72);
    v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v39;
    v24 = v23 + v22;
    v25 = (v23 + v22 + v20[14]);
    v26 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v27 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v27 - 8) + 104))(v24, v26, v27);
    swift_getErrorValue();
    swift_errorRetain();
    v28 = dispatch thunk of Error._code.getter();
    v25[3] = &type metadata for Int;
    v25[4] = &protocol witness table for Int;
    *v25 = v28;
    v29 = sub_10003C9C0(v23);
    swift_setDeallocating();
    sub_100224AFC(v24);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v29;
  }

  v30 = v16;
  if (v16 >> 62)
  {
    type metadata accessor for StoredProofingBiomeData();

    v37 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v30 = v37;
  }

  else
  {
    v31 = v16 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredProofingBiomeData();
    if (swift_dynamicCastMetatype() || (v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v35 = (v31 + 32);
      while (1)
      {
        v36 = *v35;
        if (!swift_dynamicCastClass())
        {
          break;
        }

        ++v35;
        if (!--v34)
        {
          goto LABEL_5;
        }
      }

      v30 = v31 | 1;
    }
  }

  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v30 + 32);
LABEL_11:
    v29 = v33;

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057DC18(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithEntityName:v12];

  [v13 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v14 = swift_allocObject();
  v40 = xmmword_1006BF520;
  *(v14 + 16) = xmmword_1006BF520;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10057762C();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v15];

  v16 = *(v4 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v18._countAndFlagsBits = 0xD000000000000037;
    v18._object = 0x80000001007220E0;
    String.append(_:)(v18);
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x3A726F727265203ALL;
    v20._object = 0xE900000000000020;
    String.append(_:)(v20);
    v44 = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v39[1] = v42;
    (*(v8 + 104))(v41, enum case for DIPError.Code.coreDataErrorFetchPrearmInfoFailed(_:), v7);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v21 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v22 = *(*v21 + 72);
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v40;
    v25 = v24 + v23;
    v26 = (v24 + v23 + v21[14]);
    v27 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v28 - 8) + 104))(v25, v27, v28);
    swift_getErrorValue();
    swift_errorRetain();
    v29 = dispatch thunk of Error._code.getter();
    v26[3] = &type metadata for Int;
    v26[4] = &protocol witness table for Int;
    *v26 = v29;
    v30 = sub_10003C9C0(v24);
    swift_setDeallocating();
    sub_100224AFC(v25);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v30;
  }

  v31 = v17;
  if (v17 >> 62)
  {
    type metadata accessor for StoredPrearmTrust();

    v38 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v31 = v38;
  }

  else
  {
    v32 = v17 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredPrearmTrust();
    if (swift_dynamicCastMetatype() || (v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v36 = (v32 + 32);
      while (1)
      {
        v37 = *v36;
        if (!swift_dynamicCastClass())
        {
          break;
        }

        ++v36;
        if (!--v35)
        {
          goto LABEL_5;
        }
      }

      v31 = v32 | 1;
    }
  }

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v31 + 32);
LABEL_11:
    v30 = v34;

    return v30;
  }

  __break(1u);
  return result;
}

void sub_10057E28C()
{
  v2 = *v0;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_1000318FC(&v3[4], v6);
  os_unfair_lock_unlock(v3 + 54);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_100031918(v6);
    v4 = sub_10054C274();

    v5 = [v4 newBackgroundContext];
    v0[2] = v5;
    [v5 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  }
}

uint64_t sub_10057E3E4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  return a1(v4);
}

uint64_t sub_10057E5B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10057E5F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10057E620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10057E638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10057762C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = IdentityDocumentType.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10057762C();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  if (a4)
  {
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006DAEA0;
    *(v14 + 32) = v8;
    *(v14 + 40) = v13;
    v15 = v8;
    v16 = v13;
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() andPredicateWithSubpredicates:v17.super.isa];
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006BF520;
    v20 = IdentityTarget.rawValue.getter();
    *(v19 + 56) = &type metadata for Int64;
    *(v19 + 64) = &protocol witness table for Int64;
    *(v19 + 32) = v20;
    v21 = NSPredicate.init(format:_:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006E8400;
    *(v22 + 32) = v8;
    *(v22 + 40) = v21;
    *(v22 + 48) = v13;
    v23 = v8;
    v16 = v21;
    v24 = v13;
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() andPredicateWithSubpredicates:v17.super.isa];
  }

  return v18;
}

id sub_10057E984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_10057762C();
  *(v6 + 64) = v7;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v8 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = IdentityDocumentType.description.getter();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v7;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v12 = NSPredicate.init(format:_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BF520;
  v14 = IdentityDocumentType.description.getter();
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v7;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = NSPredicate.init(format:_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006BF520;
  v18 = IdentityDocumentType.description.getter();
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v7;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006E8400;
  *(v21 + 32) = v12;
  *(v21 + 40) = v16;
  *(v21 + 48) = v20;
  v22 = v12;
  v23 = v16;
  v24 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = objc_opt_self();
  v27 = [v26 orPredicateWithSubpredicates:isa];

  if (a4)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1006DAEA0;
    *(v28 + 32) = v8;
    *(v28 + 40) = v27;
    v29 = v8;
    v30 = v27;
    v31.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = [v26 andPredicateWithSubpredicates:v31.super.isa];
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006BF520;
    v34 = IdentityTarget.rawValue.getter();
    *(v33 + 56) = &type metadata for Int64;
    *(v33 + 64) = &protocol witness table for Int64;
    *(v33 + 32) = v34;
    v35 = NSPredicate.init(format:_:)();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006E8400;
    *(v36 + 32) = v8;
    *(v36 + 40) = v35;
    *(v36 + 48) = v27;
    v37 = v8;
    v30 = v35;
    v38 = v27;
    v31.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = [v26 andPredicateWithSubpredicates:v31.super.isa];
  }

  return v32;
}

id sub_10057ED84(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581C74;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816D80;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057EF08(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  result = [v1 managedObjectContext];
  if (result)
  {
    v7 = result;
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005823B0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_100817410;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v7 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F148(uint64_t a1, char a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = a1;
    *(v8 + 32) = a2 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100581CD4;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100816E70;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F2D0(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581C88;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816DF8;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F454(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1005822E0;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817398;
    v10 = _Block_copy(v12);
    v11 = v3;
    sub_1000363B4(a1, a2);

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F5EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100581E9C;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817050;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  result = [v7 managedObjectContext];
  if (result)
  {
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = v7;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a5;
    v16[8] = a6;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100582244;
    *(v17 + 24) = v16;
    v21[4] = sub_10026CBB8;
    v21[5] = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10057E264;
    v21[3] = &unk_100817320;
    v18 = _Block_copy(v21);

    v19 = v7;

    [v15 performBlockAndWait:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F944(uint64_t a1, uint64_t a2)
{
  result = [v2 managedObjectContext];
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100582164;
    *(v8 + 24) = v7;
    v12[4] = sub_10026CBB8;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817230;
    v9 = _Block_copy(v12);

    v10 = v2;

    [v6 performBlockAndWait:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = [v4 managedObjectContext];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100582140;
    *(v13 + 24) = v12;
    v16[4] = sub_10026CBB8;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10057E264;
    v16[3] = &unk_1008171B8;
    v14 = _Block_copy(v16);
    v15 = v5;

    [v11 performBlockAndWait:v14];

    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FC7C(void *a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1005820D4;
    *(v7 + 24) = v6;
    v11[4] = sub_10026CBB8;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10057E264;
    v11[3] = &unk_100817140;
    v8 = _Block_copy(v11);
    v9 = a1;

    v10 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = aBlock - v12;
  result = [v4 managedObjectContext];
  if (result)
  {
    v15 = result;
    sub_10000BBC4(a4, v13, &unk_100844540, &unk_1006BFBC0);
    v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    sub_10034CEB4(v13, v17 + v16);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100582020;
    *(v18 + 24) = v17;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_1008170C8;
    v19 = _Block_copy(aBlock);
    v20 = v4;

    [v15 performBlockAndWait:v19];

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100580054(uint64_t a1, uint64_t a2)
{
  result = [v2 managedObjectContext];
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1005821CC;
    *(v8 + 24) = v7;
    v12[4] = sub_10026CBB8;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_1008172A8;
    v9 = _Block_copy(v12);

    v10 = v2;

    [v6 performBlockAndWait:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005801E4(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581E58;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816EE8;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100580368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  result = [v5 managedObjectContext];
  if (result)
  {
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a1;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    *(v14 + 48) = a4;
    *(v14 + 56) = a5 & 1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100581E88;
    *(v15 + 24) = v14;
    v18[4] = sub_10026CBB8;
    v18[5] = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10057E264;
    v18[3] = &unk_100816FD8;
    v16 = _Block_copy(v18);

    v17 = v6;

    [v13 performBlockAndWait:v16];

    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10058051C(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581E6C;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816F60;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005806A0(uint64_t a1, unint64_t a2, __int16 a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100581A74;
    *(v11 + 24) = v10;
    v14[4] = sub_10026CBB8;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10057E264;
    v14[3] = &unk_100816D08;
    v12 = _Block_copy(v14);
    v13 = v4;
    sub_10000B8B8(a1, a2);

    [v9 performBlockAndWait:v12];

    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100580840(void *a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5, uint64_t a6, NSString a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, char a34, uint64_t a35, char a36, unsigned __int8 a37, unsigned __int8 a38, unsigned __int8 a39, uint64_t a40, unsigned __int8 a41, unsigned __int8 a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, unint64_t a47, uint64_t a48, void *a49, uint64_t a50, unint64_t a51)
{
  v55 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v59 = &v86[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v57);
  v61 = &v86[-v60];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [a1 setState:a3];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v62 = a10;
  [a1 setCountry:a5];

  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  v63 = a12;
  [a1 setCredentialIdentifier:a7];

  [a1 setTarget:IdentityTarget.rawValue.getter()];
  if (a10)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  [a1 setWorkflowID:v62];

  if (a12)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  [a1 setProofingSessionID:v63];

  if (a14)
  {
    v64 = String._bridgeToObjectiveC()();
  }

  else
  {
    v64 = 0;
  }

  v93 = a19;
  [a1 setPairingID:v64];

  [a1 setManualCheckInterval:a15];
  sub_10000BBC4(a16, v61, &unk_100849400, &unk_1006BFBB0);
  v65 = type metadata accessor for Date();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  isa = 0;
  if (v67(v61, 1, v65) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v66 + 8))(v61, v65);
  }

  [a1 setCreatedAt:isa];

  if (a18)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  [a1 setProvisioningCredentialID:v69];

  sub_10000BBC4(v93, v59, &unk_100849400, &unk_1006BFBB0);
  if (v67(v59, 1, v65) == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = Date._bridgeToObjectiveC()().super.isa;
    (*(v66 + 8))(v59, v65);
  }

  v71 = a24;
  [a1 setProvisioningAttemptDate:v70];

  [a1 setProvisioningRetryTimeout:a20];
  if (a22)
  {
    v72 = String._bridgeToObjectiveC()();
  }

  else
  {
    v72 = 0;
  }

  [a1 setProvisioningTargetInstanceID:v72];

  if (a24)
  {
    v71 = String._bridgeToObjectiveC()();
  }

  v74 = a28;
  [a1 setPartnerSchemeID:v71];

  if (a26)
  {
    a25 = IdentityProofingActionStatus.rawValue.getter();
  }

  v93 = a40;
  v75 = a33;
  [a1 setProofingActionStatus:a25];
  if (a28)
  {
    v74 = String._bridgeToObjectiveC()();
  }

  v92 = a44;
  v90 = a41;
  v91 = a42;
  v88 = a38;
  v89 = a39;
  v87 = a37;
  [a1 setLastExecutedActionIdentifier:v74];

  if (a29)
  {
    v76 = a29;
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  sub_1003D6FB8(v76);

  v77 = objc_allocWithZone(NSSet);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  v79 = [v77 initWithArray:v78];

  [a1 setUploadAssets:v79];
  [a1 setCloudKitUploadsMaxRetryCount:a30];
  IdentityDocumentType.description.getter();
  v80 = String._bridgeToObjectiveC()();

  [a1 setDocumentType:v80];

  if (a33)
  {
    v75 = String._bridgeToObjectiveC()();
  }

  [a1 setLearnMoreURLString:v75];

  [a1 setShouldScheduleUploads:a34 & 1];
  if (a36)
  {
    v81 = 2;
  }

  else
  {
    v81 = a35;
  }

  [a1 setConnectToWifiReminderInDays:v81];
  [a1 setDidShowWifiReminderAlert:v87 & 1];
  [a1 setShouldShowNotificationOnWatch:v88 & 1];
  [a1 setCanUploadOnExpensiveNetwork:v89 & 1];
  [a1 setTotalUploadAssetsFileSizeInBytes:v93];
  [a1 setDidNotifyOnUploadsCompletion:v90 & 1];
  [a1 setHasUserConsentToShareBiomeData:v91 & 1];
  if (v92)
  {
    v82 = String._bridgeToObjectiveC()();
  }

  else
  {
    v82 = 0;
  }

  v83 = a49;
  [a1 setProductIdentifier:v82];

  [a1 setDidAttemptComboProofing:a45 & 1];
  if (a47 >> 60 == 15)
  {
    v84 = 0;
  }

  else
  {
    v84 = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setSupplementalProvisioningData:v84];

  if (a49)
  {
    v83 = String._bridgeToObjectiveC()();
  }

  [a1 setAnalyticsSessionID:v83];

  if (a51 >> 60 == 15)
  {
    v85 = 0;
  }

  else
  {
    v85 = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setLivenessManualReviewEncryptedMessage:v85];
}

void sub_100580FC8(void *a1)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  [a1 setProvisioningAttemptDate:isa];
}

void sub_100581024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = String._bridgeToObjectiveC()();
  [a1 setWorkflowID:v14];

  v15 = String._bridgeToObjectiveC()();
  [a1 setProofingSessionID:v15];

  [a1 setManualCheckInterval:a6];
  sub_10000BBC4(a7, v13, &unk_100849400, &unk_1006BFBB0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  isa = 0;
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v13, v16);
  }

  [a1 setCreatedAt:isa];
}

id sub_1005811E4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a2 = IdentityProofingActionStatus.rawValue.getter();
    a1 = v5;
    v3 = vars8;
  }

  return [a1 setProofingActionStatus:a2];
}

void sub_100581238(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  if (a3)
  {
    v5 = a1;
    a3 = String._bridgeToObjectiveC()();
    a1 = v5;
  }

  v6 = a3;
  [a1 *a4];
}

void sub_10058129C(id a1@<X1>, unint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (a2 >> 62)
  {
    v8 = a2;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v8;
    if (v9 >= 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    [a1 setUploadAssets:0];
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1003D6FB8(a2);
  v5 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  [a1 setUploadAssets:v7];
LABEL_7:
  *a3 = 0;
}

void sub_1005813A0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    a1 = v4;
  }

  v5 = isa;
  [a1 setLivenessManualReviewEncryptedMessage:?];
}

void sub_10058143C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = String._bridgeToObjectiveC()();
  [a1 setProvisioningCredentialID:v13];

  v14 = String._bridgeToObjectiveC()();
  [a1 setProvisioningTargetInstanceID:v14];

  v15 = String._bridgeToObjectiveC()();
  [a1 setPartnerSchemeID:v15];

  if (a9 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setServerAttestedProvisioningData:isa];

  [a1 setIssuerCurrentCredentialCapacity:a10];
  if (a12)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [a1 setPiiTokenIdentifier:?];
}

void sub_1005815B0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 setMessage:v3];
}

void sub_100581648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = String._bridgeToObjectiveC()();
  [a1 setTitle:v11];

  [a1 setActionType:IdentityProofingPrecursorPassMessageActionType.rawValue.getter()];
  sub_10000BBC4(a5, v10, &unk_100844540, &unk_1006BFBC0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v10, v12);
  }

  [a1 setActionURL:v15];
}

id sub_1005817D8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setKeyBlob:isa];

  return [a1 setVersion:a4];
}

id sub_10058184C(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581A08;
    *(v7 + 24) = v6;
    v10[4] = sub_10021E8E8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816C90;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1005819D0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100581A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100581A34()
{
  sub_10000B90C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 42, 7);
}

void sub_100581AC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7, SEL *a8, SEL *a9, SEL *a10)
{
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [a1 *a8];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [a1 *a9];

  if (a7)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [a1 *a10];
}

id sub_100581BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, char a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [a1 setProofingSessionID:v9];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [a1 setProofingDecision:a5];

  return [a1 setIsDonated:a6 & 1];
}

uint64_t sub_100581C9C()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_100581CD4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32) == 1)
  {
    v2 = IdentityProofingActionStatus.rawValue.getter();
  }

  else
  {
    v2 = *(v0 + 24);
  }

  return [v1 setProofingActionStatus:v2];
}

void sub_100581D30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [a1 setProofingSessionID:v8];

  v9 = String._bridgeToObjectiveC()();
  [a1 setCredentialIdentifier:v9];

  [a1 setOptInStatus:a6 & 1];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [a1 setOptInDate:isa];

  IdentityDocumentType.description.getter();
  v11 = String._bridgeToObjectiveC()();

  [a1 setDocumentType:v11];
}

void sub_100581E9C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = String._bridgeToObjectiveC()();
  [v2 setDocumentType:v4];
}

uint64_t sub_100581EF8()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100582020()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_100581648(v2, v3, v4, v5, v6);
}

uint64_t sub_100582094()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005820EC(uint64_t a1)
{
  v3 = *(v1 + 32);

  v4 = *(v1 + 48);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100582140()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1005815B0(*(v0 + 16));
}

uint64_t sub_10058218C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005821F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100582290()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005822EC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1005823B0()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v2 setOptInDate:isa];
}

__n128 sub_100582444(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100582460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005824A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005825E4(uint64_t a1, uint64_t a2)
{
  result = sub_100582C9C(a1, a2);
  if (!v3 && !result)
  {
    type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v2 + 16)];
    v6 = String._bridgeToObjectiveC()();
    [v5 setApplicationIdentifier:v6];

    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v5 setInstallationIdentifier:isa];

    return v5;
  }

  return result;
}

id sub_1005826A4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v21[0] = 0;
  if ([v6 save:v21])
  {
    return v21[0];
  }

  v8 = v21[0];
  v9 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v10._countAndFlagsBits = 0xD00000000000003CLL;
  v10._object = 0x8000000100722320;
  String.append(_:)(v10);
  v20[6] = v9;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v20[1] = v21[0];
  (*(v2 + 104))(v5, enum case for DIPError.Code.coreDataErrorMobileDocumentReaderSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = v14 + v13;
  v16 = (v15 + v11[14]);
  v17 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  swift_getErrorValue();
  swift_errorRetain();
  v19 = dispatch thunk of Error._code.getter();
  v16[3] = &type metadata for Int;
  v16[4] = &protocol witness table for Int;
  *v16 = v19;
  sub_10003C9C0(v14);
  swift_setDeallocating();
  sub_100224AFC(v15);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100584390(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

unint64_t sub_100582AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v6 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF740;
  v8 = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  v9 = sub_10057762C();
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x80000001006FDBB0;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v10];

  [v6 setFetchLimit:1];
  v11 = *(v3 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v16)
  {

    return v8;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v8 = v13;

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_100582C9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  v3 = static StoredMobileDocumentReaderApplicationInstallation.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFE10;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10057762C();
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x800000010070FBD0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = &qword_100848540;
  *(v4 + 96) = sub_10001F8D4(0, &qword_100848540, NSUUID_ptr);
  v8 = sub_1005846DC(&qword_100848548, &qword_100848540, NSUUID_ptr);
  *(v4 + 72) = isa;
  *(v4 + 136) = &type metadata for String;
  *(v4 + 144) = v5;
  *(v4 + 104) = v8;
  *(v4 + 112) = 0xD000000000000015;
  *(v4 + 120) = 0x80000001006FDC70;
  *(v4 + 176) = &type metadata for String;
  *(v4 + 184) = v5;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  [v3 setFetchLimit:1];
  v10 = *(v16 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v17)
  {

    return v7;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v7 = v12;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_100582F18()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for StoredMobileDocumentReaderSigningKey();
  v4 = static StoredMobileDocumentReaderSigningKey.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10057762C();
  *(v5 + 32) = 0x626F6C4279656BLL;
  *(v5 + 40) = 0xE700000000000000;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v5 + 96) = sub_10001F8D4(0, &unk_100845EE8, NSData_ptr);
  *(v5 + 104) = sub_1005846DC(&qword_100848538, &unk_100845EE8, NSData_ptr);
  *(v5 + 72) = isa;
  v7 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v7];

  [v4 setFetchLimit:1];
  v8 = *(v3 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v2 = v10;

    return v2;
  }

  __break(1u);
  return result;
}

void *sub_10058314C@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for MobileDocumentReaderDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1005831B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005831E0, 0, 0);
}

uint64_t sub_1005831E0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.write<A>(_:)(v9, &unk_1006E8748, v5, v8);
}

uint64_t sub_1005832E0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100584780, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10058341C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return v9(a1, v5);
}

uint64_t sub_100583520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583548, 0, 0);
}

uint64_t sub_100583548()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.read<A>(_:)(v9, &unk_1006E8730, v5, v8);
}

uint64_t sub_100583648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583670, 0, 0);
}

uint64_t sub_100583670()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v9, sub_10058472C, v5, v8);
}

uint64_t sub_100583770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583798, 0, 0);
}

uint64_t sub_100583798()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100583898;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.performRead<A>(_:)(v9, sub_100584440, v5, v8);
}

uint64_t sub_100583898()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005839D4, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1005839D4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100583A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_1005831B8(a1, &unk_1006E8738, v10, a4);
}

uint64_t sub_100583B60(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100399D0C;

  return v8(a1, v3 + 16);
}

uint64_t sub_100583C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_100583520(a1, &unk_1006E8718, v10, a4);
}

uint64_t sub_100583D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_100583648(a1, sub_100584768, v10, a4);
}

uint64_t sub_100583E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100583F74;

  return sub_100583770(a1, sub_100584410, v10, a4);
}

uint64_t sub_100583F74()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100584084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10058414C, 0, 0);
}

uint64_t sub_10058414C()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[6] + 16);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  sub_100577FA0(v1);
  v7 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100578F8C;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v9, sub_10057A074, v6, v10);
}

uint64_t sub_100584284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100027B9C;

  return sub_100584084(a1, a2, a3, a4);
}

uint64_t sub_100584390(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005843D8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100584410(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_100584440(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

uint64_t sub_10058446C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_100583B60(a1, a2, v7);
}

uint64_t sub_10058453C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_10058341C(a1, a2, v7);
}

uint64_t sub_10058460C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100027B9C;

  return sub_10058341C(a1, a2, v7);
}

uint64_t sub_1005846DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F8D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100584784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v200 = a2;
  v3 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v185 = &v171 - v5;
  v6 = sub_100007224(&qword_100841BB0, &unk_1006DF080);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v181 = &v171 - v8;
  v9 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v193 = &v171 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v189 = v12;
  v190 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v184 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DIPError.Code();
  v186 = *(v16 - 8);
  v187 = v16;
  v17 = *(v186 + 64);
  __chkstk_darwin(v16);
  countAndFlagsBits = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v201 = *(v199 - 8);
  v19 = *(v201 + 64);
  __chkstk_darwin(v199);
  v182 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v192 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v194 = &v171 - v25;
  v26 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v171 - v31;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v196 = v33;
  v197 = v34;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v183 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v191 = &v171 - v39;
  __chkstk_darwin(v38);
  v195 = &v171 - v40;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v202 = v41;
  v203 = v42;
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v46 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v49 = &v171 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v171 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v171 - v54;
  v56 = __chkstk_darwin(v53);
  v58 = &v171 - v57;
  __chkstk_darwin(v56);
  v60 = &v171 - v59;
  v61 = [a1 sessionIdentifier];
  if (!v61)
  {
    defaultLogger()();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not have a sessionIdentifier", v75, 2u);
    }

    v203[1](v60, v202);
    goto LABEL_13;
  }

  v62 = v61;
  v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v198 = v63;

  v64 = [a1 certificateChain];
  v65 = a1;
  if (!v64 || (v204 = 0, v66 = v64, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v66, !v204))
  {
    defaultLogger()();
    v67 = v198;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v204 = v71;
      *v70 = 136315138;
      v72 = sub_100141FE4(v180, v67, &v204);

      *(v70 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain a certificateChain for sessionIdentifier %s", v70, 0xCu);
      sub_10000BB78(v71);
    }

    else
    {
    }

    v203[1](v49, v202);
    goto LABEL_13;
  }

  v80 = decodeCertificateChain(fromDER:)();

  v81 = [v65 signingKey];
  if (!v81)
  {
    goto LABEL_24;
  }

  v82 = v81;
  v83 = [v81 keyBlob];
  if (!v83)
  {

LABEL_24:

    defaultLogger()();
    v96 = v198;

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v204 = v100;
      *v99 = 136315138;
      v101 = sub_100141FE4(v180, v96, &v204);

      *(v99 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v97, v98, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain a signing key for sessionIdentifier %s", v99, 0xCu);
      sub_10000BB78(v100);
    }

    else
    {
    }

    v203[1](v52, v202);
    goto LABEL_13;
  }

  v176 = 0;
  v177 = v82;
  v84 = v83;
  v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v179 = v85;

  v86 = [v65 applicationInstallation];
  if (!v86 || (v87 = v86, v88 = [v86 applicationIdentifier], v87, !v88))
  {

LABEL_33:
    v102 = v202;
    defaultLogger()();
    v103 = v198;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v204 = v107;
      *v106 = 136315138;
      v108 = sub_100141FE4(v180, v103, &v204);

      *(v106 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v104, v105, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain an application installation for sessionIdentifier %s", v106, 0xCu);
      sub_10000BB78(v107);

      sub_10000B90C(v178, v179);
    }

    else
    {

      sub_10000B90C(v178, v179);
    }

    v203[1](v55, v102);
    goto LABEL_13;
  }

  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = [v65 applicationInstallation];
  if (!v91)
  {

    (*(v197 + 56))(v32, 1, 1, v196);
LABEL_32:
    sub_10000BE18(v32, &unk_100849F90, &qword_1006DEAA0);
    goto LABEL_33;
  }

  v174 = v90;
  v175 = v80;
  v92 = v91;
  v93 = [v91 installationIdentifier];

  v94 = v196;
  if (v93)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = v197;
    (*(v197 + 56))(v30, 0, 1, v94);
  }

  else
  {
    v95 = v197;
    (*(v197 + 56))(v30, 1, 1, v196);
  }

  sub_1000B1FC8(v30, v32, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v95 + 48))(v32, 1, v94) == 1)
  {

    goto LABEL_32;
  }

  v173 = v65;
  v171 = *(v95 + 32);
  v171(v195, v32, v94);
  defaultLogger()();
  v109 = v198;

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v204 = v113;
    *v112 = 136315138;
    *(v112 + 4) = sub_100141FE4(v180, v109, &v204);
    _os_log_impl(&_mh_execute_header, v110, v111, "MobileDocumentReaderAuthenticationCertificate successfully initialized with sessionIdentifier %s", v112, 0xCu);
    sub_10000BB78(v113);
  }

  v114 = v58;
  v115 = v202;
  v203[1](v114, v202);
  v116 = v193;
  v117 = [v173 externalData];
  if (v117)
  {
    v118 = v117;
    v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    type metadata accessor for MobileDocumentReaderExternalData();
    v122 = type metadata accessor for CBORDecoder();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    swift_allocObject();
    sub_10000B8B8(v119, v121);
    CBORDecoder.init()();
    sub_100586A3C(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData);
    sub_100586A3C(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData);
    v125 = v176;
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    if (v125)
    {

      sub_10000B90C(v178, v179);
      sub_10000B90C(v119, v121);
      (*(v197 + 8))(v195, v94);
      v126 = v173;
LABEL_5:
      defaultLogger()();
      DIPLogError(_:message:log:)();

      v203[1](v46, v115);
LABEL_13:
      v76 = 1;
      v78 = v199;
      v77 = v200;
      return (*(v201 + 56))(v77, v76, 1, v78);
    }

    v176 = 0;
    sub_10000B90C(v119, v121);
    v127 = 0;
    v116 = v193;
  }

  else
  {
    v127 = 1;
  }

  v128 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v129 = v194;
  (*(*(v128 - 8) + 56))(v194, v127, 1, v128);
  v130 = *(v197 + 16);
  v130(v191, v195, v94);
  v131 = [v173 merchantLogo];
  if (v131)
  {
    v132 = v131;
    v193 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v202 = v133;
  }

  else
  {
    v193 = 0;
    v202 = 0xF000000000000000;
  }

  sub_100355554(v129, v192);
  if (v175 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134 = v190;
  if (!result)
  {

    (*(v186 + 104))(countAndFlagsBits, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v187);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100586A3C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v193, v202);
    sub_10000B90C(v178, v179);
    goto LABEL_56;
  }

  if ((v175 & 0xC000000000000001) != 0)
  {
    sub_10000B8B8(v178, v179);
    v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_53:
    v137 = v136;
    SecCertificateRef.expirationDate.getter();
    v138 = v189;
    if ((*(v134 + 48))(v116, 1, v189) == 1)
    {
      v139 = v178;
      sub_10000B90C(v178, v179);

      sub_10000BE18(v116, &unk_100849400, &unk_1006BFBB0);
      (*(v186 + 104))(countAndFlagsBits, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v187);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100586A3C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BD94(v193, v202);
      sub_10000B90C(v139, v179);

LABEL_56:
      sub_10000BE18(v192, &qword_100835D88, &qword_1006DE890);
      v140 = v196;
      v141 = *(v197 + 8);
      v141(v191, v196);
      sub_10000BE18(v194, &qword_100835D88, &qword_1006DE890);
      v141(v195, v140);
      v126 = v173;
      goto LABEL_5;
    }

    v142 = *(v134 + 32);
    v190 = v134 + 32;
    v203 = v142;
    (v142)(v184, v116, v138);
    v143 = SecCertificateRef.pseudonym.getter();
    v145 = v144;
    v146 = v181;
    v147 = v176;
    SecCertificateRef.logotype.getter();
    if (v147)
    {

      v148 = type metadata accessor for Logotype();
      (*(*(v148 - 8) + 56))(v146, 1, 1, v148);
      sub_10000BE18(v146, &qword_100841BB0, &unk_1006DF080);
      v149 = 0;
    }

    else
    {
      v169 = type metadata accessor for Logotype();
      v170 = (*(*(v169 - 8) + 48))(v146, 1, v169);
      sub_10000BE18(v146, &qword_100841BB0, &unk_1006DF080);
      v149 = 0;
      if (v170 != 1)
      {
        v150 = v177;
        if (v145)
        {
          SecCertificateRef.localizedRelyingPartyNames.getter();
          v151 = v145;
          v152 = v143;
          v149 = 1;
          goto LABEL_61;
        }

LABEL_60:
        v151 = v145;
        v152 = v143;
        v153 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
        (*(*(v153 - 8) + 56))(v185, 1, 1, v153);
LABEL_61:
        v154 = v191;
        v130(v183, v191, v94);
        v155 = SecCertificateRef.uid()();
        countAndFlagsBits = v155.value._countAndFlagsBits;

        sub_10000B90C(v178, v179);
        v156 = *(v197 + 8);
        v156(v154, v94);
        sub_10000BE18(v194, &qword_100835D88, &qword_1006DE890);
        v156(v195, v94);
        if (v149)
        {
          v158 = v199;
          v157 = v200;
          v159 = v198;
          v160 = v202;
          v161 = v193;
        }

        else
        {
          sub_10000BD94(v193, v202);

          v152 = 0;
          v151 = 0;
          v161 = 0;
          v160 = 0xF000000000000000;
          v158 = v199;
          v157 = v200;
          v159 = v198;
        }

        v162 = v182;
        sub_1000B1FC8(v185, &v182[v158[12]], &qword_100841B98, &unk_1006DF0D0);
        (v203)(&v162[v158[13]], v184, v189);
        *v162 = v180;
        *(v162 + 1) = v159;
        v163 = v174;
        *(v162 + 2) = v172;
        *(v162 + 3) = v163;
        v171(&v162[v158[6]], v183, v196);
        *&v162[v158[7]] = v175;
        v164 = &v162[v158[8]];
        v165 = v179;
        *v164 = v178;
        *(v164 + 1) = v165;
        v166 = &v162[v158[9]];
        *v166 = countAndFlagsBits;
        v166[1] = v155.value._object;
        v167 = &v162[v158[10]];
        *v167 = v161;
        v167[1] = v160;
        v168 = &v162[v158[11]];
        *v168 = v152;
        v168[1] = v151;
        sub_1000B1FC8(v192, &v162[v158[14]], &qword_100835D88, &qword_1006DE890);
        sub_100355438(v162, v157);
        v78 = v158;
        v77 = v157;
        v76 = 0;
        return (*(v201 + 56))(v77, v76, 1, v78);
      }
    }

    v150 = v177;
    goto LABEL_60;
  }

  if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v135 = *(v175 + 32);
    sub_10000B8B8(v178, v179);
    v136 = v135;
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_100585F78(void *a1)
{
  v2 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v100[-v7];
  v9 = type metadata accessor for UUID();
  v119 = *(v9 - 8);
  v120 = v9;
  v10 = *(v119 + 64);
  v11 = __chkstk_darwin(v9);
  v113 = &v100[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v112 = &v100[-v14];
  __chkstk_darwin(v13);
  v115 = &v100[-v15];
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v100[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v100[-v24];
  v26 = __chkstk_darwin(v23);
  v114 = &v100[-v27];
  __chkstk_darwin(v26);
  v29 = &v100[-v28];
  v30 = [a1 certificateData];
  if (!v30)
  {
    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "MobileDocumentReaderIdentityKey could not initialize because certificate data is missing in CoreData record", v50, 2u);
    }

    (*(v17 + 8))(v29, v16);
    return 0;
  }

  v31 = v30;
  v118 = v16;
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v33;
  v117 = v32;

  v34 = a1;
  v35 = [a1 applicationInstallation];
  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = v35;
  v37 = [v35 applicationIdentifier];

  if (!v37)
  {
    goto LABEL_15;
  }

  v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [a1 applicationInstallation];
  if (!v40)
  {

    (*(v119 + 56))(v8, 1, 1, v120);
LABEL_14:
    sub_10000BE18(v8, &unk_100849F90, &qword_1006DEAA0);
LABEL_15:
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "MobileDocumentReaderIdentityKey could not initialize because application installation is missing.", v54, 2u);
    }

    sub_10000B90C(v117, v116);

    (*(v17 + 8))(v22, v118);
    return 0;
  }

  v111 = a1;
  v41 = v39;
  v42 = v40;
  v43 = [v40 installationIdentifier];

  if (v43)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v119;
    v45 = *(v119 + 56);
    v46 = v6;
    v47 = 0;
  }

  else
  {
    v44 = v119;
    v45 = *(v119 + 56);
    v46 = v6;
    v47 = 1;
  }

  v51 = v120;
  v45(v46, v47, 1, v120);
  sub_1000B1FC8(v6, v8, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v44 + 48))(v8, 1, v51) == 1)
  {

    goto LABEL_14;
  }

  v56 = *(v44 + 32);
  v56(v115, v8, v51);
  v57 = [v111 signingKey];
  v58 = v118;
  v59 = v116;
  if (!v57)
  {
LABEL_24:

    defaultLogger()();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "MobileDocumentReaderIdentityKey could not initialize because signing key is missing.", v68, 2u);
    }

    sub_10000B90C(v117, v59);

    (*(v17 + 8))(v25, v58);
    (*(v119 + 8))(v115, v120);
    return 0;
  }

  v60 = v57;
  v61 = [v57 keyBlob];
  if (!v61)
  {

    goto LABEL_24;
  }

  v109 = v60;
  v62 = v61;
  v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v106 = decodeCertificate(fromDER:)();
  v107 = v63;
  v108 = v65;
  v69 = v114;
  defaultLogger()();
  v70 = v119;
  v71 = *(v119 + 16);
  v72 = v112;
  v105 = v119 + 16;
  v104 = v71;
  v71(v112, v115, v120);
  v73 = v41;

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v121 = v103;
    *v77 = 136315394;
    *(v77 + 4) = sub_100141FE4(v110, v73, &v121);
    *(v77 + 12) = 2080;
    sub_100586A3C(&qword_100845DE0, &type metadata accessor for UUID);
    v102 = v74;
    v101 = v75;
    v78 = v120;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v119 = *(v70 + 8);
    (v119)(v72, v78);
    v82 = sub_100141FE4(v79, v81, &v121);

    *(v77 + 14) = v82;
    v83 = v102;
    _os_log_impl(&_mh_execute_header, v102, v101, "MobileDocumentReaderIdentityKey successfully initialized with applicationIdentifier %s and installationIdentifier %s", v77, 0x16u);
    swift_arrayDestroy();

    v59 = v116;

    (*(v17 + 8))(v114, v118);
    v84 = v78;
  }

  else
  {

    v85 = v120;
    v119 = *(v70 + 8);
    (v119)(v72, v120);
    (*(v17 + 8))(v69, v118);
    v84 = v85;
  }

  v86 = v110;
  v87 = v73;
  v88 = v113;
  v89 = v115;
  v104(v113, v115, v84);
  v90 = type metadata accessor for SESKeystore();
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  v93 = SESKeystore.init()();
  v122 = type metadata accessor for DateProvider();
  v123 = &protocol witness table for DateProvider;
  sub_100032DBC(&v121);
  DateProvider.init()();

  sub_10000B90C(v117, v59);
  (v119)(v89, v84);
  v94 = type metadata accessor for MobileDocumentReaderIdentityKey();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  v97 = swift_allocObject();
  *(v97 + 16) = v86;
  *(v97 + 24) = v87;
  v56((v97 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier), v88, v84);
  v98 = (v97 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v99 = v108;
  *v98 = v107;
  v98[1] = v99;
  *(v97 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate) = v106;
  *(v97 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore) = v93;
  sub_10001F358(&v121, v97 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider);
  return v97;
}

uint64_t sub_100586A3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100586A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v6 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF740;
  v8 = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  v9 = sub_10057762C();
  *(v7 + 32) = 0xD000000000000015;
  *(v7 + 40) = 0x80000001006FDC70;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v10];

  [v6 setFetchLimit:1];
  v11 = *(v3 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v16)
  {

    return v8;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v8 = v13;

    return v8;
  }

  __break(1u);
  return result;
}

id sub_100586C6C(uint64_t a1, void *a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  type metadata accessor for StoredMobileDocumentRegistration();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v2 + 16)];
  MobileDocumentRegistration.documentIdentifier.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setDocumentIdentifier:v9];

  MobileDocumentRegistration.documentType.getter();
  v10 = String._bridgeToObjectiveC()();

  [v8 setDocumentType:v10];

  MobileDocumentRegistration.invalidationDate.getter();
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v7, v11);
  }

  [v8 setInvalidationDate:isa];

  MobileDocumentRegistration.authorityKeyIdentifiers.getter();
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setAuthorityKeyIdentifiers:v14];

  [v8 setApplicationInstallation:a2];
  [a2 addMobileDocumentRegistrationsObject:v8];
  return v8;
}

id sub_100586EA0()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v21[0] = 0;
  if ([v6 save:v21])
  {
    return v21[0];
  }

  v8 = v21[0];
  v9 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v10._countAndFlagsBits = 0xD000000000000042;
  v10._object = 0x80000001007224F0;
  String.append(_:)(v10);
  v20[6] = v9;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v20[1] = v21[0];
  (*(v2 + 104))(v5, enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = v14 + v13;
  v16 = (v15 + v11[14]);
  v17 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  swift_getErrorValue();
  swift_errorRetain();
  v19 = dispatch thunk of Error._code.getter();
  v16[3] = &type metadata for Int;
  v16[4] = &protocol witness table for Int;
  *v16 = v19;
  sub_10003C9C0(v14);
  swift_setDeallocating();
  sub_100224AFC(v15);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100588194(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void *sub_1005872A0@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for MobileDocumentRegistrationDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_10058730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100587334, 0, 0);
}

uint64_t sub_100587334()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.write<A>(_:)(v9, &unk_1006E88B0, v5, v8);
}

uint64_t sub_100587434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10058745C, 0, 0);
}

uint64_t sub_10058745C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.read<A>(_:)(v9, &unk_1006E8898, v5, v8);
}

uint64_t sub_10058755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100587584, 0, 0);
}

uint64_t sub_100587584()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1005832E0;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v9, sub_10058472C, v5, v8);
}

uint64_t sub_100587684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005876AC, 0, 0);
}

uint64_t sub_1005876AC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0[6] + 16);
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100583898;
  v8 = v0[5];
  v9 = v0[2];

  return AsyncCoreDataContainer.performRead<A>(_:)(v9, sub_100584440, v5, v8);
}

uint64_t sub_1005877D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_10058730C(a1, &unk_1006E88A0, v10, a4);
}

uint64_t sub_1005878D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_100587434(a1, &unk_1006E8880, v10, a4);
}

uint64_t sub_1005879D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100584764;

  return sub_10058755C(a1, sub_100584768, v10, a4);
}

uint64_t sub_100587ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v5 + 16) = v10;
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *v4;

  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_100583F74;

  return sub_100587684(a1, sub_100584410, v10, a4);
}

uint64_t sub_100587BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100587CA8, 0, 0);
}

uint64_t sub_100587CA8()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[6] + 16);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  sub_100577FA0(v1);
  v7 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100578F8C;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v9, sub_10057A074, v6, v10);
}

uint64_t sub_100587DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100027B9C;

  return sub_100587BE0(a1, a2, a3, a4);
}

uint64_t sub_100587EEC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100587F24(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_100583B60(a1, a2, v7);
}

uint64_t sub_100587FF4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_10058341C(a1, a2, v7);
}

uint64_t sub_1005880C4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100027B9C;

  return sub_10058341C(a1, a2, v7);
}

uint64_t sub_100588194(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005881FC()
{
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF740;
  *(v0 + 32) = static DaemonDefaultsKeys.bootstrapURL.getter();
  *(v0 + 40) = v1;
  result = static DaemonDefaultsKeys.environmentName.getter();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_1008486A0 = v0;
  return result;
}

uint64_t sub_100588260()
{
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF520;
  result = static SharedInternalDefaultsKeys.doNotRequireHSA2.getter();
  *(v0 + 32) = result;
  *(v0 + 40) = v2;
  qword_1008486A8 = v0;
  return result;
}

uint64_t sub_1005882BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "identityProofing";
  v4 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v6 = "identityProofing";
  }

  else
  {
    v6 = "randomizedBackgroundActivity";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "PhotoID";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "randomizedBackgroundActivity";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "PhotoID";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100588394@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10058A164(*a1);
  *a2 = result;
  return result;
}

void sub_1005883C4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "identityProofing";
  v4 = 0xD00000000000001CLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "randomizedBackgroundActivity";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "PhotoID";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

Swift::Int sub_100588420()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005884BC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100588544()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005885F8()
{
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v1 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);
  v2 = *(v1 + 2);
  v0[2] = v2;

  os_unfair_lock_unlock(v1 + 6);
  v3 = swift_task_alloc();
  v0[3] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100588748;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x6361436E61656C63, 0xEE00293A5F286568, sub_10058A0F0, v3, &type metadata for () + 8);
}

uint64_t sub_100588748()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1005888C8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100588864;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100588864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005888C8()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

uint64_t sub_100588954()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[3] = v2;
  if (v2)
  {
    v0[4] = 0;
    v3 = *(v1 + 32);
    v4 = off_100817828[v3];
    v5 = off_100817840[v3];
    v10 = (v5[1] + *v5[1]);
    v6 = *(v5[1] + 1);
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_100588AC8;

    return v10(v4, v5);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100588AC8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100588BC4, 0, 0);
}

uint64_t sub_100588BC4()
{
  v1 = v0[4] + 1;
  if (v1 == v0[3])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = *(v0[2] + v1 + 32);
    v5 = off_100817828[v4];
    v6 = off_100817840[v4];
    v9 = (v6[1] + *v6[1]);
    v7 = *(v6[1] + 1);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_100588AC8;

    return v9(v5, v6);
  }
}

uint64_t sub_100588D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D8DC(_swiftEmptyArrayStorage);
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = objc_opt_self();
      v7 = (a1 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10 = [v6 standardUserDefaults];
        v11 = String._bridgeToObjectiveC()();
        v12 = [v10 valueForKey:v11];

        if (!v12)
        {

          goto LABEL_5;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10001F2EC(&v74, &v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v4;
        v14 = sub_10003ADCC(v9, v8);
        v16 = *(v4 + 16);
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_54;
        }

        v20 = v15;
        if (*(v4 + 24) >= v19)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = v14;
            sub_10016F6B4();
            v14 = v24;
            if (v20)
            {
LABEL_13:
              v22 = v14;

              v4 = *&v70[0];
              v23 = (*(*&v70[0] + 56) + 32 * v22);
              sub_10000BB78(v23);
              sub_10001F348(&v71, v23);
              sub_10000BB78(&v74);
              goto LABEL_5;
            }

            goto LABEL_15;
          }
        }

        else
        {
          sub_100166280(v19, isUniquelyReferenced_nonNull_native);
          v14 = sub_10003ADCC(v9, v8);
          if ((v20 & 1) != (v21 & 1))
          {
            goto LABEL_58;
          }
        }

        if (v20)
        {
          goto LABEL_13;
        }

LABEL_15:
        v4 = *&v70[0];
        *(*&v70[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v25 = (*(v4 + 48) + 16 * v14);
        *v25 = v9;
        v25[1] = v8;
        sub_10001F348(&v71, (*(v4 + 56) + 32 * v14));
        sub_10000BB78(&v74);
        v26 = *(v4 + 16);
        v18 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v18)
        {
          goto LABEL_56;
        }

        *(v4 + 16) = v27;
LABEL_5:
        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }

  if (_isInternalBuild.getter())
  {
    if (a2)
    {
      v28 = *(a2 + 16);
      if (v28)
      {
        v29 = objc_opt_self();
        v30 = (a2 + 40);
        do
        {
          v32 = *(v30 - 1);
          v31 = *v30;

          v33 = [v29 standardUserDefaults];
          v34 = String._bridgeToObjectiveC()();
          v35 = [v33 valueForKey:v34];

          if (!v35)
          {

            goto LABEL_22;
          }

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10001F2EC(&v74, &v71);
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *&v70[0] = v4;
          v37 = sub_10003ADCC(v32, v31);
          v39 = *(v4 + 16);
          v40 = (v38 & 1) == 0;
          v18 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v18)
          {
            goto LABEL_55;
          }

          v42 = v38;
          if (*(v4 + 24) >= v41)
          {
            if ((v36 & 1) == 0)
            {
              v46 = v37;
              sub_10016F6B4();
              v37 = v46;
              if (v42)
              {
LABEL_30:
                v44 = v37;

                v4 = *&v70[0];
                v45 = (*(*&v70[0] + 56) + 32 * v44);
                sub_10000BB78(v45);
                sub_10001F348(&v71, v45);
                sub_10000BB78(&v74);
                goto LABEL_22;
              }

              goto LABEL_32;
            }
          }

          else
          {
            sub_100166280(v41, v36);
            v37 = sub_10003ADCC(v32, v31);
            if ((v42 & 1) != (v43 & 1))
            {
              goto LABEL_58;
            }
          }

          if (v42)
          {
            goto LABEL_30;
          }

LABEL_32:
          v4 = *&v70[0];
          *(*&v70[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v47 = (*(v4 + 48) + 16 * v37);
          *v47 = v32;
          v47[1] = v31;
          sub_10001F348(&v71, (*(v4 + 56) + 32 * v37));
          sub_10000BB78(&v74);
          v48 = *(v4 + 16);
          v18 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v18)
          {
            goto LABEL_57;
          }

          *(v4 + 16) = v49;
LABEL_22:
          v30 += 2;
          --v28;
        }

        while (v28);
      }
    }
  }

  v50 = [objc_opt_self() mainBundle];
  v51 = [v50 bundleIdentifier];

  if (v51)
  {
    v52 = [objc_opt_self() standardUserDefaults];
    [v52 removePersistentDomainForName:v51];
  }

  v53 = 0;
  v54 = 1 << *(v4 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v4 + 64);
  v57 = (v54 + 63) >> 6;
  if (v56)
  {
    while (1)
    {
      v58 = v53;
LABEL_47:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = v61 | (v58 << 6);
      v63 = (*(v4 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      sub_10001F2EC(*(v4 + 56) + 32 * v62, v70);
      *&v71 = v65;
      *(&v71 + 1) = v64;
      sub_10001F348(v70, &v72);

      v60 = v58;
LABEL_48:
      v74 = v71;
      v75[0] = v72;
      v75[1] = v73;
      if (!*(&v71 + 1))
      {
      }

      sub_10001F348(v75, &v71);
      v66 = [objc_opt_self() standardUserDefaults];
      sub_10000BA08(&v71, *(&v72 + 1));
      v67 = _bridgeAnythingToObjectiveC<A>(_:)();
      v68 = String._bridgeToObjectiveC()();

      [v66 setObject:v67 forKey:v68];

      swift_unknownObjectRelease();
      sub_10000BB78(&v71);
      v53 = v60;
      if (!v56)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    if (v57 <= v53 + 1)
    {
      v59 = v53 + 1;
    }

    else
    {
      v59 = v57;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v58 >= v57)
      {
        v56 = 0;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        goto LABEL_48;
      }

      v56 = *(v4 + 64 + 8 * v58);
      ++v53;
      if (v56)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100589394(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for TimeoutError();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005894F8, 0, 0);
}

uint64_t sub_1005894F8()
{
  v48 = v0;
  v1 = v0[20];
  v2 = v0[7];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  v7 = v0[12];
  v8 = v0[13];
  if (v5)
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_100141FE4(v12, v13, &v47);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeleteUtility deleteData called with entityTypes %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[21] = v15;
  v16 = v0[8];
  if (v16)
  {
    v17 = v0[19];
    v18 = v0[8];

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "DeleteUtility deleteData attempting to delete legacy SQL store", v21, 2u);
    }

    v22 = v0[19];
    v23 = v0[12];
    v24 = v0[13];

    v15(v22, v23);
    v25 = *(v16 + 16);
    OS_dispatch_queue.sync<A>(execute:)();
    v36 = v0[18];
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[18];
    v41 = v0[12];
    v42 = v0[13];
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "DeleteUtility deleteData successfully deleted legacy SQL store", v43, 2u);
    }

    else
    {
    }

    v34 = v40;
    v35 = v41;
  }

  else
  {
    v26 = v0[16];
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[16];
    v31 = v0[12];
    v32 = v0[13];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "DeleteUtility deleteData sqliteLocalStore is nil, skipping deletion.", v33, 2u);
    }

    v34 = v30;
    v35 = v31;
  }

  v15(v34, v35);
  v44 = swift_task_alloc();
  v0[22] = v44;
  *v44 = v0;
  v44[1] = sub_100589A28;
  v45 = v0[7];

  return sub_100588934(v45);
}

uint64_t sub_100589A28()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_100589B24, 0, 0);
}

uint64_t sub_100589B24()
{
  type metadata accessor for DIPKeystoreKeychain();
  static DIPKeystoreKeychain.deleteAll()();
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  [qword_100882498 removeAllCachedResponses];
  if (qword_100832CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1008486A0;
  if (qword_100832CB8 != -1)
  {
    v5 = qword_1008486A0;
    swift_once();
    v1 = v5;
  }

  sub_100588D40(v1, qword_1008486A8);
  v2 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_100589CB0;
  v4.n128_u64[0] = 8.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v3, &unk_1006E88F0, 0, &type metadata for () + 8, v4);
}

uint64_t sub_100589CB0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100589E84;
  }

  else
  {
    v3 = sub_100589DC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100589DC4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100589E84()
{
  v0[5] = v0[24];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v3 = swift_dynamicCast();
  v4 = v0[24];
  if (v3)
  {
    v5 = v0[15];
    v6 = v0[24];

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = 0x4020000000000000;
      _os_log_impl(&_mh_execute_header, v7, v8, "all ODN cleanup timed out after %{public}f seconds", v9, 0xCu);
    }

    v10 = v0[21];
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];

    v10(v11, v12);
    (*(v15 + 8))(v14, v16);
    v17 = v0[5];
  }

  else
  {
    v18 = v0[21];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v22 = v0[5];

    defaultLogger()();
    DIPLogError(_:message:log:)();

    v18(v19, v21);
  }

  v24 = v0[19];
  v23 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[14];
  v30 = v0[11];

  v31 = v0[1];

  return v31();
}

unint64_t sub_10058A110()
{
  result = qword_1008486B0;
  if (!qword_1008486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008486B0);
  }

  return result;
}

unint64_t sub_10058A164(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC238, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_10058A1C0(uint64_t a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  v6 = *(a1 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v7 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v8 = sub_10057A0B4(v7);

    if (v8)
    {
      if (v8 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v10 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          [v6 deleteObject:v11];

          ++v10;
          if (v13 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:
    }

    type metadata accessor for StoredUploadAsset();
    v14 = static StoredUploadAsset.fetchRequest()();
    v15 = NSManagedObjectContext.fetch<A>(_:)();

    if (v15 >> 62)
    {
      goto LABEL_30;
    }

    for (j = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v6 deleteObject:v18];

        ++v17;
        if (v20 == j)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:

    type metadata accessor for StoredPrearmTrust();
    v21 = static StoredPrearmTrust.fetchRequest()();
    v22 = NSManagedObjectContext.fetch<A>(_:)();

    if (v22 >> 62)
    {
      goto LABEL_43;
    }

    for (k = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        [v6 deleteObject:v25];

        ++v24;
        if (v27 == k)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    sub_10057BA64();
  }
}

uint64_t sub_10058A538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058A5D8();
}

uint64_t sub_10058A5D8()
{
  v1 = type metadata accessor for Logger();
  v0[43] = v1;
  v2 = *(v1 - 8);
  v0[44] = v2;
  v3 = *(v2 + 64) + 15;
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();

  return _swift_task_switch(sub_10058A6C4, 0, 0);
}

uint64_t sub_10058A6C4()
{
  v1 = v0[49];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility attempting to delete data", v4, 2u);
  }

  v5 = v0[49];
  v6 = v0[43];
  v7 = v0[44];

  v8 = *(v7 + 8);
  v0[50] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[51] = v9;
  v10 = v9;

  sub_10057C18C(sub_10058B2E0, v10);

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_1000318FC(&v11[4], (v0 + 10));
  os_unfair_lock_unlock(v11 + 54);
  v12 = v0[20];

  sub_100031918((v0 + 10));
  v13 = *(v12 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  os_unfair_lock_unlock((v13 + 24));

  if (v14 <= 0)
  {
    v25 = swift_task_alloc();
    v0[52] = v25;
    *v25 = v0;
    v25[1] = sub_10058ABB8;

    return sub_1002A0440();
  }

  else
  {
    v15 = v0[48];
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "IdentityProofingDeletionUtility attempting to delete acl", v18, 2u);
    }

    v19 = v0[50];
    v20 = v0[48];
    v21 = v0[43];
    v22 = v0[44];

    v19(v20, v21);
    if (qword_100832C18 != -1)
    {
      swift_once();
    }

    v23 = *(qword_100882220 + 16);
    v0[2] = v0;
    v0[7] = v0 + 54;
    v0[3] = sub_10058AEA8;
    v24 = swift_continuation_init();
    v0[42] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
    v0[35] = _NSConcreteStackBlock;
    v0[36] = 1107296256;
    v0[37] = sub_10058DEE8;
    v0[38] = &unk_100817888;
    v0[39] = v24;
    [v23 deleteGlobalAuthACLWithOutcomeCompletion:v0 + 35];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10058ABB8()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return _swift_task_switch(sub_10058ACB4, 0, 0);
}

uint64_t sub_10058ACB4()
{
  v1 = v0[48];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility attempting to delete acl", v4, 2u);
  }

  v5 = v0[50];
  v6 = v0[48];
  v7 = v0[43];
  v8 = v0[44];

  v5(v6, v7);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100882220 + 16);
  v0[2] = v0;
  v0[7] = v0 + 54;
  v0[3] = sub_10058AEA8;
  v10 = swift_continuation_init();
  v0[42] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
  v0[35] = _NSConcreteStackBlock;
  v0[36] = 1107296256;
  v0[37] = sub_10058DEE8;
  v0[38] = &unk_100817888;
  v0[39] = v10;
  [v9 deleteGlobalAuthACLWithOutcomeCompletion:v0 + 35];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10058AEA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_10058B1D0;
  }

  else
  {
    v3 = sub_10058AFB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10058AFB8()
{
  if (*(v0 + 432) == 1)
  {
    v1 = *(v0 + 376);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility phone acl was deleted", v4, 2u);
    }

    v6 = *(v0 + 400);
    v5 = *(v0 + 408);
    v7 = *(v0 + 376);
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);

    v6(v7, v8);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendBoundBiometricDeletedEvent()();
  }

  else
  {
    v10 = *(v0 + 368);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 400);
    v14 = *(v0 + 408);
    v16 = *(v0 + 368);
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingDeletionUtility no phone acl to delete", v19, 2u);
    }

    else
    {
      v20 = *(v0 + 408);
    }

    v15(v16, v17);
  }

  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v24 = *(v0 + 368);
  v23 = *(v0 + 376);
  v25 = *(v0 + 360);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10058B1D0()
{
  v1 = v0[53];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[53];
  v4 = v0[50];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4(v5, v7);
  v9 = v0[48];
  v8 = v0[49];
  v11 = v0[46];
  v10 = v0[47];
  v12 = v0[45];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10058B324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058B3C4();
}

uint64_t sub_10058B3C4()
{
  v1 = type metadata accessor for Logger();
  v0[40] = v1;
  v2 = *(v1 - 8);
  v0[41] = v2;
  v3 = *(v2 + 64) + 15;
  v0[42] = swift_task_alloc();

  return _swift_task_switch(sub_10058B480, 0, 0);
}

uint64_t sub_10058B480()
{
  v1 = *(v0 + 336);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderDeletionUtility attempting to delete data", v4, 2u);
  }

  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 320);

  (*(v6 + 8))(v5, v7);
  v8 = type metadata accessor for SESKeystore();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 344) = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_1000318FC(&v11[4], v0 + 16);
  os_unfair_lock_unlock(v11 + 54);
  v12 = *(v0 + 80);

  sub_100031918(v0 + 16);
  *(v0 + 304) = type metadata accessor for MobileDocumentReaderDataContainer();
  *(v0 + 312) = sub_10039469C();
  *(v0 + 280) = v12;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  inited = swift_initStackObject();
  *(v0 + 352) = inited;
  sub_10001F358((v0 + 280), inited + 24);
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *v14 = v0;
  v14[1] = sub_10058B6AC;

  return sub_1003545A4();
}

uint64_t sub_10058B6AC()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_10058B7A8, 0, 0);
}

uint64_t sub_10058B7A8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];

  swift_setDeallocating();
  sub_10000BB78((v2 + 24));

  v4 = v0[1];

  return v4();
}

void sub_10058B834(uint64_t a1)
{
  type metadata accessor for StoredRandomizedBackgroundActivity();
  v3 = static StoredRandomizedBackgroundActivity.fetchRequest()();
  v4 = *(a1 + 16);
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v4 deleteObject:v8];

        ++v7;
        if (v10 == i)
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

    sub_10057BA64();
  }
}

uint64_t sub_10058B978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058BA18();
}

uint64_t sub_10058BA18()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10058BAE0, 0, 0);
}

uint64_t sub_10058BAE0()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RandomizedBackgroundActivityDeletionUtility attempting to delete data", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  (*(v7 + 8))(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v9 = v8;

  sub_10057C18C(sub_10058BCA4, v9);

  v11 = v0[4];
  v10 = v0[5];

  v12 = v0[1];

  return v12();
}

id sub_10058BCC0()
{
  result = [*v0 externalizedContext];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10058BD44(uint64_t a1)
{
  v8 = 0;
  v2 = [v1 evaluationMechanismsForPolicy:a1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;
  }

  else
  {
    v5 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_10058BE40(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = [v2 evaluationMechanismsForAccessControl:a1 operation:a2 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = v3;
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10058BF20()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    return 1;
  }

  if (v10 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 2;
  }

  (*(v1 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v0);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10058C1A8(unsigned __int8 a1, uint64_t a2)
{
  sub_100007224(&qword_1008486C8, &qword_1006E8B18);
  v4 = sub_100007224(&qword_100834928, &qword_1006C0130);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  if (a2 == 3)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1006BF520;
        v52 = *(v4 + 48);
        v53 = enum case for EncryptedMessageEntity.issuer(_:);
        v54 = type metadata accessor for EncryptedMessageEntity();
        (*(*(v54 - 8) + 104))(v51 + v6, v53, v54);
        *(v51 + v6 + v52) = &off_1007FB440;
        v29 = sub_10003F4CC(v51);
        swift_setDeallocating();
        sub_10058CDD4(v51 + v6);
        goto LABEL_13;
      }

      v30 = 2 * v5;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1006BFF90;
      v31 = v8 + v6;
      v32 = *(v4 + 48);
      v33 = enum case for EncryptedMessageEntity.idvServer(_:);
      v34 = type metadata accessor for EncryptedMessageEntity();
      v35 = *(*(v34 - 8) + 104);
      v35(v31, v33, v34);
      *(v31 + v32) = &off_1007FB468;
      v36 = v31 + v5;
      v37 = *(v4 + 48);
      v35(v36, enum case for EncryptedMessageEntity.issuer(_:), v34);
      *(v36 + v37) = &off_1007FB490;
      v16 = v31 + v30;
      v17 = *(v4 + 48);
      v35(v31 + v30, enum case for EncryptedMessageEntity.livenessReview(_:), v34);
      v18 = &off_1007FB4B8;
    }

    else
    {
      v7 = 2 * v5;
      if (a1 == 2)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1006BFF90;
        v38 = v8 + v6;
        v39 = *(v4 + 48);
        v40 = enum case for EncryptedMessageEntity.idvServer(_:);
        v41 = type metadata accessor for EncryptedMessageEntity();
        v42 = *(*(v41 - 8) + 104);
        v42(v38, v40, v41);
        *(v38 + v39) = &off_1007FB4E0;
        v43 = v38 + v5;
        v44 = *(v4 + 48);
        v42(v43, enum case for EncryptedMessageEntity.issuer(_:), v41);
        *(v43 + v44) = &off_1007FB508;
        v16 = v38 + v7;
        v17 = *(v4 + 48);
        v42(v38 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v41);
        v18 = &off_1007FB530;
      }

      else
      {
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1006BFF90;
        v9 = v8 + v6;
        v10 = *(v4 + 48);
        if (a1 == 3)
        {
          v11 = enum case for EncryptedMessageEntity.idvServer(_:);
          v12 = type metadata accessor for EncryptedMessageEntity();
          v13 = *(*(v12 - 8) + 104);
          v13(v9, v11, v12);
          *(v9 + v10) = &off_1007FB558;
          v14 = v9 + v5;
          v15 = *(v4 + 48);
          v13(v14, enum case for EncryptedMessageEntity.issuer(_:), v12);
          *(v14 + v15) = &off_1007FB580;
          v16 = v9 + v7;
          v17 = *(v4 + 48);
          v13(v9 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v12);
          v18 = &off_1007FB5A8;
        }

        else
        {
          v45 = enum case for EncryptedMessageEntity.idvServer(_:);
          v46 = type metadata accessor for EncryptedMessageEntity();
          v47 = *(*(v46 - 8) + 104);
          v47(v9, v45, v46);
          *(v9 + v10) = &off_1007FB5D0;
          v48 = v9 + v5;
          v49 = *(v4 + 48);
          v47(v48, enum case for EncryptedMessageEntity.issuer(_:), v46);
          *(v48 + v49) = &off_1007FB5F8;
          v16 = v9 + v7;
          v17 = *(v4 + 48);
          v47(v9 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v46);
          v18 = &off_1007FB620;
        }
      }
    }

    *(v16 + v17) = v18;
    v29 = sub_10003F4CC(v8);
    swift_setDeallocating();
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006BFE10;
    v20 = v19 + v6;
    v21 = *(v4 + 48);
    v22 = enum case for EncryptedMessageEntity.assessor(_:);
    v23 = type metadata accessor for EncryptedMessageEntity();
    v24 = *(*(v23 - 8) + 104);
    v24(v20, v22, v23);
    *(v20 + v21) = &off_1007FB648;
    v25 = *(v4 + 48);
    v24(v20 + v5, enum case for EncryptedMessageEntity.issuer(_:), v23);
    *(v20 + v5 + v25) = &off_1007FB670;
    v26 = *(v4 + 48);
    v24(v20 + 2 * v5, enum case for EncryptedMessageEntity.idvServer(_:), v23);
    *(v20 + 2 * v5 + v26) = &off_1007FB698;
    v27 = v20 + 3 * v5;
    v28 = *(v4 + 48);
    v24(v27, enum case for EncryptedMessageEntity.livenessReview(_:), v23);
    *(v27 + v28) = &off_1007FB6C0;
    v29 = sub_10003F4CC(v19);
    swift_setDeallocating();
  }

  swift_arrayDestroy();
LABEL_13:
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_10058C864()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for IdentityDocumentType.Category.mDL(_:) || v10 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 0xD000000000000025;
  }

  (*(v1 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v0);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10058CB08()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for IdentityDocumentType.Category.mDL(_:) || v10 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 0xD000000000000024;
  }

  (*(v1 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v0);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10058CDD4(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834928, &qword_1006C0130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10058CE3C(uint64_t a1)
{
  v2 = type metadata accessor for ProofingDisplayMessageAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v45 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v45 - v16;
  v18 = ProofingDisplayMessage.title.getter();
  if (!v19)
  {
    v32 = v10;
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "IdentityProofingPrecursorPassMessage failed to map action; missing title", v35, 2u);
    }

    v36 = type metadata accessor for ProofingDisplayMessage();
    (*(*(v36 - 8) + 8))(a1, v36);
    (*(v11 + 8))(v17, v32);
    return 0;
  }

  v47 = v18;
  v48 = v19;
  v20 = ProofingDisplayMessage.message.getter();
  if (!v21)
  {
    v37 = v10;

    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "IdentityProofingPrecursorPassMessage failed to map action; missing title", v40, 2u);
    }

    v41 = type metadata accessor for ProofingDisplayMessage();
    (*(*(v41 - 8) + 8))(a1, v41);
    (*(v11 + 8))(v15, v37);
    return 0;
  }

  v22 = v20;
  v45[3] = v21;
  v46 = a1;
  v23 = ProofingDisplayMessage.actions.getter();
  v52 = _swiftEmptyArrayStorage;
  v24 = *(v23 + 16);
  if (v24)
  {
    v45[2] = v22;
    v25 = type metadata accessor for IdentityProofingPrecursorPassMessageAction();
    v28 = *(v3 + 16);
    v27 = v3 + 16;
    v26 = v28;
    v29 = *(v27 + 64);
    v45[1] = v23;
    v30 = v23 + ((v29 + 32) & ~v29);
    v50 = *(v27 + 56);
    v51 = v25;
    v49 = _swiftEmptyArrayStorage;
    v28(v9, v30, v2);
    while (1)
    {
      v26(v7, v9, v2);
      v31 = sub_10058D30C(v7);
      (*(v27 - 8))(v9, v2);
      if (v31)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v49 = v52;
      }

      v30 += v50;
      if (!--v24)
      {
        break;
      }

      v26(v9, v30, v2);
    }
  }

  v43 = dispatch thunk of IdentityProofingPrecursorPassMessage.__allocating_init(title:message:actions:)();
  v44 = type metadata accessor for ProofingDisplayMessage();
  (*(*(v44 - 8) + 8))(v46, v44);
  return v43;
}

uint64_t sub_10058D30C(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  ProofingDisplayMessageAction.title.getter();
  if (!v12)
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "IdentityProofingPrecursorPassMessageAction failed to map action; missing title", v20, 2u);
    }

    v21 = type metadata accessor for ProofingDisplayMessageAction();
    (*(*(v21 - 8) + 8))(a1, v21);
    (*(v5 + 8))(v11, v4);
    return 0;
  }

  ProofingDisplayMessageAction.actionType.getter();
  IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
  if (v13)
  {

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingPrecursorPassMessageAction failed to map action; missing actionType", v16, 2u);
    }

    v17 = type metadata accessor for ProofingDisplayMessageAction();
    (*(*(v17 - 8) + 8))(a1, v17);
    (*(v5 + 8))(v9, v4);
    return 0;
  }

  ProofingDisplayMessageAction.actionURL.getter();
  v23 = dispatch thunk of IdentityProofingPrecursorPassMessageAction.__allocating_init(title:actionType:actionURL:)();
  v24 = type metadata accessor for ProofingDisplayMessageAction();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v23;
}

uint64_t sub_10058D658(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xD)
  {
    return qword_1006E8B20[a1];
  }

  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  v20[0] = v2;
  _StringGuts.grow(_:)(97);
  v18._countAndFlagsBits = 0xD00000000000005FLL;
  v18._object = 0x80000001007226C0;
  String.append(_:)(v18);
  v20[1] = a1;
  _print_unlocked<A, B>(_:_:)();
  (*(v8 + 104))(v11, enum case for DIPError.Code.unknownProofingActionStatus(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v13 + 16))(v19, v16, v12);
  defaultLogger()();
  DIPLogError(_:message:log:)();
  (*(v3 + 8))(v6, v20[0]);
  (*(v13 + 8))(v16, v12);

  return 4;
}

uint64_t sub_10058D9B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v46 - v6;
  v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v46 - v10;
  v12 = IdentityProofingPrecursorPassMessage.title.getter();
  if (!v13)
  {
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "IdentityProofingPrecursorPassMessage could not be converted to PKIdentityProofingDisplayMessage: missing title", v37, 2u);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  v14 = v13;
  v46[3] = v12;
  v15 = IdentityProofingPrecursorPassMessage.message.getter();
  if (!v16)
  {

    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "IdentityProofingPrecursorPassMessage could not be converted to PKIdentityProofingDisplayMessage: missing message", v40, 2u);
    }

    (*(v1 + 8))(v7, v0);
    return 0;
  }

  v17 = v15;
  v18 = v16;
  v19 = IdentityProofingPrecursorPassMessage.actions.getter();
  if (!v19)
  {
LABEL_27:
    v41 = objc_allocWithZone(PKIdentityProofingDisplayMessage);
    v42 = String._bridgeToObjectiveC()();

    v43 = String._bridgeToObjectiveC()();

    sub_10058DE9C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = [v41 initWithTitle:v42 message:v43 actions:isa];

    return v45;
  }

  v20 = v19;
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_26:

    goto LABEL_27;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_6:
  v46[0] = v17;
  v46[1] = v18;
  v46[2] = v14;
  v48 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v47 = v20 & 0xC000000000000001;
    do
    {
      if (v47)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      IdentityProofingPrecursorPassMessageAction.title.getter();
      v27 = IdentityProofingPrecursorPassMessageAction.actionType.getter();
      if (v27)
      {
        v28 = 2 * (v27 == 1);
      }

      else
      {
        v28 = 1;
      }

      IdentityProofingPrecursorPassMessageAction.actionURL.getter();
      v29 = String._bridgeToObjectiveC()();

      v30 = type metadata accessor for URL();
      v31 = *(v30 - 8);
      v33 = 0;
      if ((*(v31 + 48))(v11, 1, v30) != 1)
      {
        URL._bridgeToObjectiveC()(v32);
        v33 = v34;
        (*(v31 + 8))(v11, v30);
      }

      ++v23;
      [objc_allocWithZone(PKIdentityProofingDisplayMessageAction) initWithTitle:v29 actionType:v28 actionURL:v33];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = v48[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v23);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t sub_10058DE9C()
{
  result = qword_1008486D0;
  if (!qword_1008486D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008486D0);
  }

  return result;
}

uint64_t sub_10058DEE8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10058DFB4()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_10058E0D4, 0, 0);
}

uint64_t sub_10058E0D4()
{
  v1 = v0[29];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DIPACLCleanerUpper deleteBoundACL", v4, 2u);
  }

  v5 = v0[29];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];

  v9 = *(v7 + 8);
  v0[30] = v9;
  v9(v5, v6);
  v10 = *(*(v8 + 16) + 16);
  v0[2] = v0;
  v0[7] = v0 + 39;
  v0[3] = sub_10058E2A0;
  v11 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10058DEE8;
  v0[13] = &unk_100817968;
  v0[14] = v11;
  [v10 deleteGlobalAuthACLWithOutcomeCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10058E2A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_10058E664;
  }

  else
  {
    v3 = sub_10058E3B0;
  }

  return _swift_task_switch(v3, 0, 0);
}