uint64_t sub_10022EDD0()
{
  (*(v0[76] + 8))(v0[78], v0[75]);
  v1 = v0[111];
  v2 = v0[89];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[66];
  v7 = v0[65];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v2(v3, v5);
  v0[52] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v8 = v0[68];
    v9 = v0[67];
    v10 = v0[66];
    v11 = v0[65];
    v13 = v0[63];
    v12 = v0[64];
    v14 = v0[61];
    v15 = v0[62];
    (*(v9 + 56))(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    DIPError.code.getter();
    v59 = *(v15 + 104);
    v59(v13, enum case for DIPError.Code.failedToStorePIIToken(_:), v14);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v16 = *(v15 + 8);
    v16(v13, v14);
    v16(v12, v14);
    if (v0[53] == v0[54])
    {
      goto LABEL_4;
    }

    v17 = v0[68];
    v19 = v0[63];
    v18 = v0[64];
    v20 = v0[61];
    DIPError.code.getter();
    v59(v19, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v20);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v16(v19, v20);
    v16(v18, v20);
    if (v0[55] == v0[56])
    {
LABEL_4:
      v21 = v0[88];
      v22 = v0[87];
      v23 = v0[86];
      v43 = v0[85];
      v44 = v0[84];
      v45 = v0[83];
      v46 = v0[82];
      v47 = v0[81];
      v48 = v0[78];
      v49 = v0[77];
      v51 = v0[74];
      v24 = v0[68];
      v25 = v0[67];
      v26 = v0[66];
      v53 = v0[71];
      v55 = v0[65];
      v57 = v0[64];
      v60 = v0[63];
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v25 + 16))(v27, v24, v26);
      swift_willThrow();

      (*(v25 + 8))(v24, v26);

      v28 = v0[1];
      goto LABEL_7;
    }

    (*(v0[67] + 8))(v0[68], v0[66]);
  }

  else
  {
    v29 = v0[67];
    v30 = v0[66];
    v31 = v0[65];

    (*(v29 + 56))(v31, 1, 1, v30);
    sub_10000BE18(v31, &qword_100833A88, qword_1006BF8E0);
  }

  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[86];
  v35 = v0[85];
  v36 = v0[84];
  v37 = v0[83];
  v38 = v0[82];
  v39 = v0[81];
  v40 = v0[78];
  v41 = v0[77];
  v50 = v0[74];
  v52 = v0[71];
  v54 = v0[68];
  v56 = v0[65];
  v58 = v0[64];
  v61 = v0[63];

  v28 = v0[1];
LABEL_7:

  return v28();
}

uint64_t sub_10022F360()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 832);
  v5 = *(v0 + 712);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v5(v6, v8);
  *(v0 + 416) = v4;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 488);
    v18 = *(v0 + 496);
    (*(v12 + 56))(v14, 0, 1, v13);
    (*(v12 + 32))(v11, v14, v13);
    DIPError.code.getter();
    v62 = *(v18 + 104);
    v62(v16, enum case for DIPError.Code.failedToStorePIIToken(_:), v17);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v18 + 8);
    v19(v16, v17);
    v19(v15, v17);
    if (*(v0 + 424) == *(v0 + 432))
    {
      goto LABEL_4;
    }

    v20 = *(v0 + 544);
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);
    v23 = *(v0 + 488);
    DIPError.code.getter();
    v62(v22, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v23);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19(v22, v23);
    v19(v21, v23);
    if (*(v0 + 440) == *(v0 + 448))
    {
LABEL_4:
      v24 = *(v0 + 704);
      v25 = *(v0 + 696);
      v26 = *(v0 + 688);
      v46 = *(v0 + 680);
      v47 = *(v0 + 672);
      v48 = *(v0 + 664);
      v49 = *(v0 + 656);
      v50 = *(v0 + 648);
      v51 = *(v0 + 624);
      v52 = *(v0 + 616);
      v54 = *(v0 + 592);
      v27 = *(v0 + 544);
      v28 = *(v0 + 536);
      v29 = *(v0 + 528);
      v56 = *(v0 + 568);
      v58 = *(v0 + 520);
      v60 = *(v0 + 512);
      v63 = *(v0 + 504);
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v28 + 16))(v30, v27, v29);
      swift_willThrow();

      (*(v28 + 8))(v27, v29);

      v31 = *(v0 + 8);
      goto LABEL_7;
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  }

  else
  {
    v32 = *(v0 + 536);
    v33 = *(v0 + 528);
    v34 = *(v0 + 520);

    (*(v32 + 56))(v34, 1, 1, v33);
    sub_10000BE18(v34, &qword_100833A88, qword_1006BF8E0);
  }

  v35 = *(v0 + 704);
  v36 = *(v0 + 696);
  v37 = *(v0 + 688);
  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  v40 = *(v0 + 664);
  v41 = *(v0 + 656);
  v42 = *(v0 + 648);
  v43 = *(v0 + 624);
  v44 = *(v0 + 616);
  v53 = *(v0 + 592);
  v55 = *(v0 + 568);
  v57 = *(v0 + 544);
  v59 = *(v0 + 520);
  v61 = *(v0 + 512);
  v64 = *(v0 + 504);

  v31 = *(v0 + 8);
LABEL_7:

  return v31();
}

size_t sub_10022F900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = type metadata accessor for ProofingSession();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = sub_1005791C8(a1, a2);
  if (v3)
  {
    return result;
  }

  v31 = 0;
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  v28 = result;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  result = v28;
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_4:
  v17 = result;
  v33 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = a3;
    v18 = v33;
    v19 = v17;
    v32 = v7;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        v21 = v19;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v33 = v18;
        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          sub_100173040(v22 > 1, v23 + 1, 1);
          v18 = v33;
        }

        ++v20;
        v18[2] = v23 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v14, v32);
        v19 = v21;
      }

      while (v16 != v20);
    }

    else
    {
      v24 = 32;
      do
      {
        v25 = *(v17 + v24);
        ProofingSession.init(_:)();
        v33 = v18;
        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          sub_100173040(v26 > 1, v27 + 1, 1);
          v18 = v33;
        }

        v18[2] = v27 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v12, v32);
        v24 += 8;
        --v16;
      }

      while (v16);
    }

    *v30 = v18;
  }

  return result;
}

void sub_10022FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v79 = a8;
  v77 = a7;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v75 = v21;
  v76 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v63 - v27;
  v29 = sub_1005792EC(a2, a3);
  if (v14)
  {
    return;
  }

  v70 = a3;
  v71 = a1;
  v68 = v28;
  v69 = a4;
  v30 = v77;
  v31 = v79;
  v72 = a2;
  v74 = 0;
  if (v29)
  {
    v32 = a5;
    v73 = v29;
    v33 = (a14 + *(type metadata accessor for PendingActionContext(0) + 128));
    v34 = v33[1];
    if (v34)
    {
      v35 = *v33;
      v36 = v33[1];
    }

    else
    {
      v35 = 0;
    }

    v44 = v73;
    v45 = [v73 managedObjectContext];
    if (v45)
    {
      v65 = a13;
      v66 = v35;
      v67 = a12;
      v64 = a9;
      v77 = v45;
      v46 = swift_allocObject();
      v46[2] = v44;
      v46[3] = v32;
      v46[4] = a6;
      v46[5] = v30;
      v46[6] = v31;
      v47 = v65;
      v46[7] = v64;
      v46[8] = a10;
      v46[9] = a11;
      v46[10] = a12;
      v48 = v66;
      v46[11] = v47;
      v46[12] = v48;
      v46[13] = v34;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_10026C26C;
      *(v49 + 24) = v46;
      aBlock[4] = sub_10026CBB8;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10057E264;
      aBlock[3] = &unk_10080B668;
      v50 = _Block_copy(aBlock);
      v51 = v44;

      sub_10000B8B8(a11, v67);

      v52 = v77;
      [v77 performBlockAndWait:v50];

      _Block_release(v50);
      LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

      if ((v50 & 1) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_13:
    v53 = v74;
    sub_1005783D4();
    v54 = v72;
    if (v53)
    {
    }

    else
    {
      v55 = v68;
      defaultLogger()();
      v56 = v70;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v59 = 136315394;
        *(v59 + 4) = sub_100141FE4(v54, v56, aBlock);
        *(v59 + 12) = 2080;
        v60 = IdentityTarget.debugDescription.getter();
        v62 = sub_100141FE4(v60, v61, aBlock);

        *(v59 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v57, v58, "Successfully saved provisioning identifiers for %s and target %s", v59, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v76 + 8))(v55, v75);
    }

    return;
  }

  defaultLogger()();
  v37 = v70;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_100141FE4(v72, v37, aBlock);
    *(v40 + 12) = 2080;
    v41 = IdentityTarget.debugDescription.getter();
    v43 = sub_100141FE4(v41, v42, aBlock);

    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unable to find proofing session with proofingSessionID %s for target %s. Will not save provisioning identifiers", v40, 0x16u);
    swift_arrayDestroy();
  }

  (*(v76 + 8))(v26, v75);
}

void sub_1002301B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v135 = a8;
  v136 = a7;
  v137 = a6;
  v132 = a5;
  v144 = a1;
  v129 = type metadata accessor for DIPError.Code();
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  __chkstk_darwin(v129);
  v133 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DIPError();
  v130 = *(v131 - 8);
  v13 = *(v130 + 64);
  __chkstk_darwin(v131);
  v134 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Logger();
  v139 = *(v140 - 8);
  v15 = *(v139 + 64);
  v16 = __chkstk_darwin(v140);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v118 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v118 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v118 - v26;
  __chkstk_darwin(v25);
  v29 = &v118 - v28;
  v30 = a2;
  v138 = a3;
  v31 = v141;
  sub_10057BE48(a2, a3);
  if (v31)
  {
    return;
  }

  v33 = v32;
  v126 = v29;
  v122 = v27;
  v124 = v21;
  v125 = v18;
  v127 = v30;
  v141 = 0;
  v34 = v138;
  v35 = v24;
  if (v32)
  {
    v36 = [v32 credentialIdentifier];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = [v33 workflowID];
      if (v41)
      {
        v118 = v38;
        v119 = v40;
        v123 = v33;
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = v132;
        swift_beginAccess();
        v47 = v46[3];
        v120 = v43;
        v46[2] = v43;
        v46[3] = v45;
        v121 = v45;

        v48 = v126;
        defaultLogger()();

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *&v142[0] = swift_slowAlloc();
          *v51 = 136315394;
          v52 = IdentityTarget.debugDescription.getter();
          v54 = sub_100141FE4(v52, v53, v142);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2080;
          *(v51 + 14) = sub_100141FE4(v127, v34, v142);
          _os_log_impl(&_mh_execute_header, v49, v50, "Successfully fetched proofing session for target: %s, proofingSesionID: %s", v51, 0x16u);
          swift_arrayDestroy();
        }

        v55 = v140;
        v132 = *(v139 + 8);
        (v132)(v48, v140);
        v56 = v137;
        v57 = v133;
        v58 = v135;
        swift_beginAccess();
        v59 = *(v56 + 24);
        v60 = v119;
        *(v56 + 16) = v118;
        *(v56 + 24) = v60;

        v61 = IdentityTarget.rawValue.getter();
        if (v61 == IdentityTarget.rawValue.getter())
        {
          v62 = [v123 pairingID];
          if (v62)
          {
            v63 = v62;
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;
          }

          else
          {
            v64 = 0;
            v66 = 0;
          }

          v73 = v136;
          swift_beginAccess();
          v74 = *(v73 + 24);
          *(v73 + 16) = v64;
          *(v73 + 24) = v66;

          v58 = v135;
        }

        sub_10057F780(*v58, v58[1], v58[2], v58[3], v58[4], v58[5]);
        v75 = v141;
        sub_10057BA64();
        v141 = v75;
        v76 = v134;
        if (v75)
        {
          *&v142[0] = 0;
          *(&v142[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(66);
          v77._countAndFlagsBits = 0xD000000000000040;
          v77._object = 0x8000000100707F80;
          String.append(_:)(v77);
          v143 = v141;
          sub_100007224(&qword_100833B90, &qword_1006D95C0);
          _print_unlocked<A, B>(_:_:)();
          (*(v128 + 104))(v57, enum case for DIPError.Code.unableToSaveProvisioningIdentifiers(_:), v129);
          sub_1000402AC(&_swiftEmptyArrayStorage);
          v78 = v140;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
          v79 = v131;
          swift_allocError();
          v80 = v130;
          (*(v130 + 16))(v81, v76, v79);
          v82 = v124;
          defaultLogger()();
          DIPRecordError(_:message:log:)();
          v83 = v132;
          (v132)(v82, v78);

          v84 = v125;
          defaultLogger()();
          v85 = v76;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v132 = v83;
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "Ignoring the error and continuing the provisioning flow", v88, 2u);

            (v132)(v84, v78);
          }

          else
          {

            (v83)(v84, v78);
          }

          (*(v80 + 8))(v85, v79);
          v141 = 0;
        }

        else
        {
          v89 = v122;
          defaultLogger()();

          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *&v142[0] = swift_slowAlloc();
            *v92 = 136315394;
            v93 = IdentityTarget.debugDescription.getter();
            v95 = sub_100141FE4(v93, v94, v142);

            *(v92 + 4) = v95;
            *(v92 + 12) = 2080;
            *(v92 + 14) = sub_100141FE4(v127, v34, v142);
            _os_log_impl(&_mh_execute_header, v90, v91, "Successfully updated provisioning identifiers for target: %s, proofingSesionID: %s", v92, 0x16u);
            swift_arrayDestroy();

            v96 = v89;
            v97 = v140;
          }

          else
          {

            v96 = v89;
            v97 = v55;
          }

          (v132)(v96, v97);
        }

        v98 = v136;
        v99 = v137;
        swift_beginAccess();
        v100 = *(v99 + 24);
        v140 = *(v99 + 16);
        swift_beginAccess();
        v101 = *(v98 + 24);
        v139 = *(v98 + 16);
        v144 = v101;

        v102 = [v123 productIdentifier];
        if (v102)
        {
          v103 = v102;
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0;
        }

        v107 = v123;
        v108 = [v123 supplementalProvisioningData];
        if (v108)
        {
          v109 = v104;
          v110 = v108;
          v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v104 = v109;
        }

        else
        {

          v111 = 0;
          v113 = 0xF000000000000000;
        }

        swift_beginAccess();
        v114 = *(a9 + 64);
        v142[2] = *(a9 + 48);
        v142[3] = v114;
        v142[4] = *(a9 + 80);
        v115 = *(a9 + 16);
        v142[1] = *(a9 + 32);
        v142[0] = v115;
        *(a9 + 16) = v140;
        *(a9 + 24) = v100;
        v116 = v121;
        *(a9 + 32) = v120;
        *(a9 + 40) = v116;
        v117 = v144;
        *(a9 + 48) = v139;
        *(a9 + 56) = v117;
        *(a9 + 64) = v104;
        *(a9 + 72) = v106;
        *(a9 + 80) = v111;
        *(a9 + 88) = v113;
        sub_10000BE18(v142, &qword_10083E3F8, &unk_1006DBD40);
        return;
      }
    }

    else
    {
    }
  }

  defaultLogger()();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *&v142[0] = swift_slowAlloc();
    *v69 = 136315394;
    v70 = IdentityTarget.debugDescription.getter();
    v72 = sub_100141FE4(v70, v71, v142);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_100141FE4(v127, v34, v142);
    _os_log_impl(&_mh_execute_header, v67, v68, "Unable to retrieve proofing session for target: %s, proofingSessionID: %s", v69, 0x16u);
    swift_arrayDestroy();
  }

  (*(v139 + 8))(v35, v140);
}

uint64_t sub_100230F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[128] = v4;
  v5[127] = a4;
  v5[126] = a3;
  v5[125] = a2;
  v5[124] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[129] = v6;
  v7 = *(v6 - 8);
  v5[130] = v7;
  v8 = *(v7 + 64) + 15;
  v5[131] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v5[132] = v9;
  v10 = *(v9 - 8);
  v5[133] = v10;
  v11 = *(v10 + 64) + 15;
  v5[134] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100835968, &qword_1006DBC90) - 8) + 64) + 15;
  v5[137] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100840960, &qword_1006DBCB0) - 8) + 64) + 15;
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[150] = v15;
  v16 = *(v15 - 8);
  v5[151] = v16;
  v17 = *(v16 + 64) + 15;
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v18 = type metadata accessor for ActionRequest(0);
  v5[169] = v18;
  v19 = *(v18 - 8);
  v5[170] = v19;
  v5[171] = *(v19 + 64);
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();
  v5[176] = swift_task_alloc();
  v5[177] = swift_task_alloc();
  v5[178] = swift_task_alloc();
  v5[179] = swift_task_alloc();
  v20 = *(*(sub_100007224(&qword_10083E3E8, &unk_1006DBD00) - 8) + 64) + 15;
  v5[180] = swift_task_alloc();
  v5[181] = swift_task_alloc();
  v5[182] = swift_task_alloc();
  v5[183] = swift_task_alloc();
  v5[184] = swift_task_alloc();
  v5[185] = swift_task_alloc();
  v5[186] = swift_task_alloc();
  v5[187] = swift_task_alloc();

  return _swift_task_switch(sub_100231408, 0, 0);
}

uint64_t sub_100231408()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 992);
  v5 = *(v2 + 56);
  *(v0 + 1504) = v5;
  *(v0 + 1512) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = *(v4 + 128);
  *(v0 + 928) = v6;
  *(v0 + 936) = v6;
  sub_10000BBC4(v0 + 928, v0 + 944, &qword_1008377E0, &qword_1006C9940);
  sub_10021F3E8(v0 + 936);
  sub_10021F9A4(v0 + 936);
  sub_10021FF40(v0 + 936);
  v7 = *(v0 + 936);
  *(v0 + 1520) = v7;
  v8 = *(v7 + 16);
  *(v0 + 1528) = v8;
  v471 = v8;
  if (v8)
  {
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1360);
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);

    v13 = _swiftEmptyArrayStorage;
    do
    {
      v14 = *(v0 + 1432);
      sub_100269FE8(v11, v14, type metadata accessor for ActionRequest);
      v15 = *v14;
      v16 = *(v9 + 8);

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      v18 = _findStringSwitchCase(cases:string:)(&off_1007F86A0, v17);

      if (v18 >= 0xA)
      {
        sub_100267A1C(*(v0 + 1432), type metadata accessor for ActionRequest);
      }

      else
      {
        sub_100267A1C(*(v0 + 1432), type metadata accessor for ActionRequest);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1003C5494(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1003C5494((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v13[v20 + 32] = v18;
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  *(v0 + 1536) = sub_10069746C(v13);

  if (!v471)
  {
LABEL_94:

    v196 = *(v0 + 1536);
    v197 = *(v0 + 1520);
    v198 = *(v0 + 1496);
    v199 = *(v0 + 1448);
    v200 = *(v0 + 1360);
    v201 = *(v0 + 1352);

    sub_10000BBC4(v198, v199, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v200 + 48))(v199, 1, v201) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v202 = *(v0 + 1496);
      v203 = *(v0 + 1488);
      v204 = *(v0 + 1480);
      v205 = *(v0 + 1472);
      v206 = *(v0 + 1464);
      v207 = *(v0 + 1456);
      v208 = *(v0 + 1440);
      v209 = *(v0 + 1432);
      v378 = *(v0 + 1424);
      v380 = *(v0 + 1416);
      v382 = *(v0 + 1408);
      v384 = *(v0 + 1400);
      v386 = *(v0 + 1392);
      v388 = *(v0 + 1384);
      v390 = *(v0 + 1376);
      v392 = *(v0 + 1344);
      v394 = *(v0 + 1336);
      v396 = *(v0 + 1328);
      v398 = *(v0 + 1320);
      v400 = *(v0 + 1312);
      v402 = *(v0 + 1304);
      v404 = *(v0 + 1296);
      v406 = *(v0 + 1288);
      v408 = *(v0 + 1280);
      v410 = *(v0 + 1272);
      v412 = *(v0 + 1264);
      v414 = *(v0 + 1256);
      v416 = *(v0 + 1248);
      v418 = *(v0 + 1240);
      v420 = *(v0 + 1232);
      v422 = *(v0 + 1224);
      v424 = *(v0 + 1216);
      v426 = *(v0 + 1192);
      v428 = *(v0 + 1184);
      v430 = *(v0 + 1176);
      v432 = *(v0 + 1168);
      v434 = *(v0 + 1160);
      v436 = *(v0 + 1152);
      v438 = *(v0 + 1144);
      v440 = *(v0 + 1136);
      v443 = *(v0 + 1128);
      v445 = *(v0 + 1120);
      v450 = *(v0 + 1112);
      v455 = *(v0 + 1104);
      v458 = *(v0 + 1096);
      v462 = *(v0 + 1088);
      v464 = *(v0 + 1080);
      v466 = *(v0 + 1072);
      v472 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v210 = *(v0 + 8);
LABEL_96:

      return v210();
    }

    else
    {
      v212 = *(v0 + 1512);
      v213 = *(v0 + 1504);
      v214 = *(v0 + 1440);
      v215 = *(v0 + 1376);
      v216 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v215, type metadata accessor for ActionRequest);
      sub_100269FE8(v215, v214, type metadata accessor for ActionRequest);
      v213(v214, 0, 1, v216);
      v217 = swift_task_alloc();
      *(v0 + 1880) = v217;
      *v217 = v0;
      v217[1] = sub_10024F280;
      v218 = *(v0 + 1440);
      v219 = *(v0 + 1024);
      v220 = *(v0 + 1008);
      v221 = *(v0 + 1000);

      return sub_1002550B8(v218, v221, v220);
    }
  }

  v21 = 0;
  v442 = (v0 + 984);
  v22 = *(v0 + 1360);
  *(v0 + 1544) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager;
  *(v0 + 1896) = *(v22 + 80);
  *(v0 + 1552) = kSecValueData;
  *(v0 + 1900) = enum case for DIPError.Code.failedToStorePIITokenCredentialIdentifierNil(_:);
  v23 = 3;
  while (1)
  {
    *(v0 + 1568) = v21;
    *(v0 + 1908) = v23;
    *(v0 + 1560) = 0;
    v32 = *(v0 + 1520);
    if (v21 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_159;
    }

    v33 = *(v0 + 1424);
    v34 = *(v0 + 1016);
    v35 = *(v0 + 1008);
    v36 = *(v0 + 1000);
    v37 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v32 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v37 * v21, v33, type metadata accessor for ActionRequest);
    sub_10025DCD8(v33, v36, v35, v34);
    v38 = *v33;
    v39 = v33[1];

    v474._countAndFlagsBits = v38;
    v474._object = v39;
    v40 = sub_10025DC8C(v474);
    if (v40 > 4)
    {
      if (v40 <= 7)
      {
        if (v40 != 6)
        {
          if (v40 == 7)
          {
            v41 = *(v0 + 1264);
            defaultLogger()();
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.debug.getter();
            v44 = os_log_type_enabled(v42, v43);
            v45 = *(v0 + 1424);
            v46 = *(v0 + 1264);
            v47 = *(v0 + 1208);
            v48 = *(v0 + 1200);
            if (v44)
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              v50 = v43;
              v51 = v42;
              v52 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          v222 = *(v0 + 1424);
          v223 = *(v0 + 1400);
          v224 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v222, v223, type metadata accessor for ActionRequest);
          v225 = Logger.logObject.getter();
          v226 = static os_log_type_t.debug.getter();
          v227 = os_log_type_enabled(v225, v226);
          v228 = *(v0 + 1400);
          LOBYTE(v471) = v23;
          if (!v227)
          {
            v259 = *(v0 + 1296);
            v260 = *(v0 + 1208);
            v261 = *(v0 + 1200);

            sub_100267A1C(v228, type metadata accessor for ActionRequest);
            v262 = *(v260 + 8);
            v262(v259, v261);
LABEL_125:
            v468 = v262;
            *(v0 + 1608) = v262;
            v288 = *(*(v0 + 1520) + 16);
            if (v288)
            {
              v289 = 0;
              v290 = 0;
              while (1)
              {
                v291 = *(v0 + 1520);
                if (v290 >= *(v291 + 16))
                {
                  break;
                }

                v292 = *(v0 + 1392);
                sub_100269FE8(v291 + v289 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v292, type metadata accessor for ActionRequest);
                v293 = *v292 == 0x5F4F545F444E4553 && v292[1] == 0xED0000454D4F4942;
                if (v293 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v294 = 0;
                  goto LABEL_136;
                }

                ++v290;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v289 += v37;
                if (v288 == v290)
                {
                  goto LABEL_134;
                }
              }

LABEL_173:
              __break(1u);
              goto LABEL_174;
            }

LABEL_134:
            v294 = 1;
LABEL_136:
            v295 = *(v0 + 1512);
            v296 = *(v0 + 1488);
            v297 = *(v0 + 1480);
            v298 = *(v0 + 1288);
            (*(v0 + 1504))(v296, v294, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v296, v297, &qword_10083E3E8, &unk_1006DBD00);
            v299 = Logger.logObject.getter();
            v300 = static os_log_type_t.debug.getter();
            v301 = os_log_type_enabled(v299, v300);
            v302 = *(v0 + 1480);
            if (v301)
            {
              v303 = *(v0 + 1360);
              v304 = *(v0 + 1352);
              v305 = swift_slowAlloc();
              *v305 = 67109120;
              LODWORD(v304) = (*(v303 + 48))(v302, 1, v304) != 1;
              sub_10000BE18(v302, &qword_10083E3E8, &unk_1006DBD00);
              *(v305 + 4) = v304;
              _os_log_impl(&_mh_execute_header, v299, v300, "Biome data exists to be donated? -> %{BOOL}d", v305, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v306 = v299;
            v307 = *(v0 + 1544);
            v308 = *(v0 + 1488);
            v309 = *(v0 + 1472);
            v310 = *(v0 + 1360);
            v311 = *(v0 + 1352);
            v312 = *(v0 + 1288);
            v313 = *(v0 + 1208);
            v314 = *(v0 + 1200);
            v315 = *(v0 + 1024);

            *(v0 + 1616) = (v313 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v468(v312, v314);
            v316 = *(v315 + v307);
            sub_10000BBC4(v308, v309, &qword_10083E3E8, &unk_1006DBD00);
            v317 = *(v310 + 48);
            v318 = v317(v309, 1, v311);
            v319 = *(v0 + 1472);
            v461 = v317;
            if (v318 == 1)
            {
              v320 = *(v0 + 1160);

              sub_10000BE18(v319, &qword_10083E3E8, &unk_1006DBD00);
              v321 = type metadata accessor for PendingActionContext(0);
              (*(*(v321 - 8) + 56))(v320, 1, 1, v321);
            }

            else
            {
              sub_10000BBC4(v319 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v319, type metadata accessor for ActionRequest);
            }

            v322 = *(v0 + 1160);
            v323 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v322);

            sub_10000BE18(v322, &unk_100840960, &qword_1006DBCB0);
            if (*(v323 + 152) == 1)
            {
LABEL_160:
              v346 = *(v0 + 1424);
              v347 = *(v0 + 1152);
              v348 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v348;
              sub_10000BBC4(v346 + v348, v347, &unk_100840960, &qword_1006DBCB0);
              v349 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v349;
              v350 = *(v349 - 8);
              v351 = *(v350 + 48);
              *(v0 + 1632) = v351;
              *(v0 + 1640) = (v350 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v470 = v351;
              v352 = v351(v347, 1, v349);
              v353 = *(v0 + 1152);
              v447 = v348;
              v452 = v346;
              if (v352 == 1)
              {
                sub_10000BE18(v353, &unk_100840960, &qword_1006DBCB0);
                v460 = 0;
                v354 = 0;
              }

              else
              {
                v354 = *(v353 + 72);
                v460 = *(v353 + 64);
                v355 = *(v0 + 1152);

                sub_100267A1C(v355, type metadata accessor for PendingActionContext);
              }

              v457 = v354;
              *(v0 + 1648) = v354;
              v356 = *(v0 + 1488);
              v357 = *(v0 + 1456);
              v358 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v356, v357, &qword_10083E3E8, &unk_1006DBD00);
              v359 = v461(v357, 1, v358);
              v360 = *(v0 + 1456);
              if (v359 == 1)
              {
                v361 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v350 + 56))(v361, 1, 1, v349);
                v362 = v471;
                v364 = v447;
                v363 = v452;
              }

              else
              {
                v365 = *(v0 + 1144);
                sub_10000BBC4(v360 + *(*(v0 + 1352) + 20), v365, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v360, type metadata accessor for ActionRequest);
                v362 = v471;
                v364 = v447;
                v363 = v452;
                v470(v365, 1, v349);
              }

              v366 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v363 + v364, v366, &unk_100840960, &qword_1006DBCB0);
              v367 = v470(v366, 1, v349);
              v368 = *(v0 + 1136);
              if (v367 == 1)
              {
                sub_10000BE18(v368, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v369 = *(v368 + *(v349 + 124));
                sub_100267A1C(v368, type metadata accessor for PendingActionContext);
              }

              v370 = swift_task_alloc();
              *(v0 + 1656) = v370;
              *v370 = v0;
              v370[1] = sub_100239F30;
              v371 = *(v0 + 1536);
              v372 = *(v0 + 1464);
              v373 = *(v0 + 1024);
              v374 = *(v0 + 1016);
              v375 = *(v0 + 1008);
              v376 = *(v0 + 1000);

              return sub_10025744C(v460, v457, v371, v376, v375, v374, v362, v372);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_160;
            }

LABEL_159:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_160;
          }

          v229 = *(v0 + 1352);
          v230 = *(v0 + 1168);
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          *(v0 + 968) = v232;
          *v231 = 136315138;
          sub_10000BBC4(v228 + *(v229 + 20), v230, &unk_100840960, &qword_1006DBCB0);
          v233 = type metadata accessor for PendingActionContext(0);
          v234 = (*(*(v233 - 8) + 48))(v230, 1, v233);
          v235 = *(v0 + 1168);
          if (v234 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v280 = *(v235 + 64);
            v281 = *(v235 + 72);

            sub_100267A1C(v235, type metadata accessor for PendingActionContext);
            if (v281)
            {
              v282 = String.debugDescription.getter();
              v284 = v283;

LABEL_124:
              v467 = *(v0 + 1296);
              v285 = *(v0 + 1208);
              v286 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v287 = sub_100141FE4(v282, v284, (v0 + 968));

              *(v231 + 4) = v287;
              _os_log_impl(&_mh_execute_header, v225, v226, "server requested an action to set state:%s", v231, 0xCu);
              sub_10000BB78(v232);

              v262 = *(v285 + 8);
              v262(v467, v286);
              goto LABEL_125;
            }
          }

          v282 = 0;
          v284 = 0xE000000000000000;
          goto LABEL_124;
        }

        LODWORD(v471) = v23;
        v104 = *(v0 + 1344);
        defaultLogger()();
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "display notification received", v107, 2u);
        }

        v24 = *(v0 + 1512);
        v25 = *(v0 + 1504);
        v26 = *(v0 + 1496);
        v27 = *(v0 + 1424);
        v28 = *(v0 + 1352);
        v29 = *(v0 + 1344);
        v30 = *(v0 + 1208);
        v31 = *(v0 + 1200);

        (*(v30 + 8))(v29, v31);
        sub_10000BE18(v26, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v27, v26, type metadata accessor for ActionRequest);
        v25(v26, 0, 1, v28);
        goto LABEL_15;
      }

      if (v40 != 8)
      {
        if (v40 != 10)
        {
          v244 = *(v0 + 1248);
          defaultLogger()();
          v245 = Logger.logObject.getter();
          v246 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v245, v246))
          {
            v247 = swift_slowAlloc();
            *v247 = 0;
            _os_log_impl(&_mh_execute_header, v245, v246, "server requested an action to store token", v247, 2u);
          }

          v248 = *(v0 + 1424);
          v249 = *(v0 + 1352);
          v250 = *(v0 + 1248);
          v251 = *(v0 + 1208);
          v252 = *(v0 + 1200);
          v253 = *(v0 + 1104);

          v254 = *(v251 + 8);
          *(v0 + 1672) = v254;
          v254(v250, v252);
          sub_10000BBC4(v248 + *(v249 + 20), v253, &unk_100840960, &qword_1006DBCB0);
          v255 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v255 - 8) + 48))(v253, 1, v255) == 1)
          {
            v256 = *(v0 + 1536);
            v257 = *(v0 + 1520);
            v258 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v258, &unk_100840960, &qword_1006DBCB0);
LABEL_153:
            v333 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v333, type metadata accessor for ActionRequest);
            v334 = *(v0 + 1488);
            v335 = *(v0 + 1480);
            v336 = *(v0 + 1472);
            v337 = *(v0 + 1464);
            v338 = *(v0 + 1456);
            v339 = *(v0 + 1448);
            v340 = *(v0 + 1440);
            v341 = *(v0 + 1432);
            v377 = *(v0 + 1424);
            v379 = *(v0 + 1416);
            v381 = *(v0 + 1408);
            v383 = *(v0 + 1400);
            v385 = *(v0 + 1392);
            v387 = *(v0 + 1384);
            v389 = *(v0 + 1376);
            v391 = *(v0 + 1344);
            v393 = *(v0 + 1336);
            v395 = *(v0 + 1328);
            v397 = *(v0 + 1320);
            v399 = *(v0 + 1312);
            v401 = *(v0 + 1304);
            v403 = *(v0 + 1296);
            v405 = *(v0 + 1288);
            v407 = *(v0 + 1280);
            v409 = *(v0 + 1272);
            v411 = *(v0 + 1264);
            v413 = *(v0 + 1256);
            v415 = *(v0 + 1248);
            v417 = *(v0 + 1240);
            v419 = *(v0 + 1232);
            v421 = *(v0 + 1224);
            v423 = *(v0 + 1216);
            v425 = *(v0 + 1192);
            v427 = *(v0 + 1184);
            v429 = *(v0 + 1176);
            v431 = *(v0 + 1168);
            v433 = *(v0 + 1160);
            v435 = *(v0 + 1152);
            v437 = *(v0 + 1144);
            v439 = *(v0 + 1136);
            v441 = *(v0 + 1128);
            v444 = *(v0 + 1120);
            v446 = *(v0 + 1112);
            v451 = *(v0 + 1104);
            v456 = *(v0 + 1096);
            v459 = *(v0 + 1088);
            v463 = *(v0 + 1080);
            v465 = *(v0 + 1072);
            v469 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v210 = *(v0 + 8);
            goto LABEL_96;
          }

          v263 = *(v0 + 1104);
          v264 = (v263 + *(v255 + 128));
          v265 = *v264;
          *(v0 + 1680) = *v264;
          v266 = v264[1];
          *(v0 + 1688) = v266;
          v267 = v264[2];
          *(v0 + 1696) = v264[3];
          sub_1000AB7D8(v265, v266);
          sub_100267A1C(v263, type metadata accessor for PendingActionContext);
          if (!v266)
          {
            v331 = *(v0 + 1536);
            v332 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_153;
          }

          v268 = *(v0 + 1072);
          v269 = *(v0 + 1064);
          v270 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v271 = String.data(using:allowLossyConversion:)();
          v273 = v272;
          *(v0 + 1704) = v271;
          *(v0 + 1712) = v272;
          (*(v269 + 8))(v268, v270);
          if (v273 >> 60 == 15)
          {
            v274 = *(v0 + 1536);
            v275 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_153;
          }

          if (qword_100832C20 == -1)
          {
LABEL_155:
            v342 = *(qword_100882228 + 16);
            *(v0 + 1720) = v342;
            v343 = v342;
            v344 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v344;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v345 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v345;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v343 retrievePIITokenFromSyncableKeyStoreForIdentifier:v344 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_174:
          swift_once();
          goto LABEL_155;
        }

        v69 = *(v0 + 1232);
        defaultLogger()();
        v42 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        v71 = os_log_type_enabled(v42, v70);
        v45 = *(v0 + 1424);
        v46 = *(v0 + 1232);
        v47 = *(v0 + 1208);
        v48 = *(v0 + 1200);
        if (v71)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = v70;
          v51 = v42;
          v52 = "INVALID ACTION REQUEST";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v108 = *(v0 + 1424);
      v109 = *(v0 + 1384);
      v110 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v108, v109, type metadata accessor for ActionRequest);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = *(v0 + 1384);
      LODWORD(v471) = v23;
      if (!v113)
      {
        v136 = *(v0 + 1256);
        v137 = *(v0 + 1208);
        v138 = *(v0 + 1200);

        sub_100267A1C(v114, type metadata accessor for ActionRequest);
        (*(v137 + 8))(v136, v138);
LABEL_78:
        v176 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v176, &unk_100840960, &qword_1006DBCB0);
        v177 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v177 - 8) + 48))(v176, 1, v177) == 1)
        {
          v178 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v178, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_16;
        }

        v179 = *(v0 + 1112);
        v180 = (v179 + *(v177 + 112));
        v182 = *v180;
        v181 = v180[1];

        sub_100267A1C(v179, type metadata accessor for PendingActionContext);
        if (v181)
        {
          v183 = *(v0 + 1088);
          v184 = *(v0 + 1080);
          v185 = *(v0 + 1024);
          v186 = type metadata accessor for TaskPriority();
          v187 = *(v186 - 8);
          (*(v187 + 56))(v183, 1, 1, v186);
          v188 = swift_allocObject();
          v188[2] = 0;
          v188[3] = 0;
          v188[4] = v185;
          v188[5] = v182;
          v188[6] = v181;
          sub_10000BBC4(v183, v184, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v183) = (*(v187 + 48))(v184, 1, v186);

          v189 = *(v0 + 1080);
          if (v183 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v187 + 8))(v189, v186);
          }

          v190 = v188[2];
          v191 = v188[3];
          swift_unknownObjectRetain();

          v23 = v471;
          if (v190)
          {
            swift_getObjectType();
            v192 = dispatch thunk of Actor.unownedExecutor.getter();
            v194 = v193;
            swift_unknownObjectRelease();
          }

          else
          {
            v192 = 0;
            v194 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v194 | v192)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v192;
            *(v0 + 872) = v194;
          }

          v45 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_48;
        }

        v168 = *(v0 + 1424);
        goto LABEL_84;
      }

      v115 = *(v0 + 1352);
      v116 = *(v0 + 1120);
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *(v0 + 960) = v118;
      *v117 = 136315138;
      sub_10000BBC4(v114 + *(v115 + 20), v116, &unk_100840960, &qword_1006DBCB0);
      v119 = type metadata accessor for PendingActionContext(0);
      v120 = (*(*(v119 - 8) + 48))(v116, 1, v119);
      v121 = *(v0 + 1120);
      if (v120 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v169 = (v121 + *(v119 + 112));
        v170 = *v169;
        v171 = v169[1];

        sub_100267A1C(v121, type metadata accessor for PendingActionContext);
        if (v171)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v172 = *(v0 + 1256);
          v173 = *(v0 + 1208);
          v174 = *(v0 + 1200);
          v175 = sub_100141FE4(v170, v171, (v0 + 960));

          *(v117 + 4) = v175;
          _os_log_impl(&_mh_execute_header, v111, v112, "server requested to delete the Account Key Signing Key with identifier %s", v117, 0xCu);
          sub_10000BB78(v118);

          (*(v173 + 8))(v172, v174);
          v23 = v471;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v171 = 0xE300000000000000;
      v170 = 4999502;
      goto LABEL_77;
    }

    if (v40 <= 2)
    {
      break;
    }

    if (v40 == 3)
    {
      v72 = *(v0 + 1424);
      v73 = *(v0 + 1408);
      v74 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v72, v73, type metadata accessor for ActionRequest);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v75, v76))
      {
        v131 = *(v0 + 1424);
        v132 = *(v0 + 1408);
        v133 = *(v0 + 1304);
        v134 = *(v0 + 1208);
        v135 = *(v0 + 1200);

        sub_100267A1C(v132, type metadata accessor for ActionRequest);
        (*(v134 + 8))(v133, v135);
        sub_100267A1C(v131, type metadata accessor for ActionRequest);
        goto LABEL_16;
      }

      v77 = *(v0 + 1408);
      v78 = *(v0 + 1352);
      v79 = *(v0 + 1176);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *(v0 + 976) = v81;
      *v80 = 136315138;
      sub_10000BBC4(v77 + *(v78 + 20), v79, &unk_100840960, &qword_1006DBCB0);
      v82 = type metadata accessor for PendingActionContext(0);
      v83 = (*(*(v82 - 8) + 48))(v79, 1, v82);
      v84 = *(v0 + 1176);
      LODWORD(v471) = v23;
      if (v83 == 1)
      {
        sub_10000BE18(v84, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_72;
      }

      v159 = *(v84 + 48);
      v160 = *(v84 + 56);
      v161 = *(v0 + 1176);

      sub_100267A1C(v161, type metadata accessor for PendingActionContext);
      if (v160)
      {
        v162 = String.debugDescription.getter();
        v164 = v163;
      }

      else
      {
LABEL_72:
        v162 = 0;
        v164 = 0xE000000000000000;
      }

      v449 = *(v0 + 1304);
      v454 = *(v0 + 1424);
      v165 = *(v0 + 1208);
      v166 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v167 = sub_100141FE4(v162, v164, (v0 + 976));

      *(v80 + 4) = v167;
      _os_log_impl(&_mh_execute_header, v75, v76, "server requested an action to self heal: %s", v80, 0xCu);
      sub_10000BB78(v81);

      (*(v165 + 8))(v449, v166);
      v168 = v454;
LABEL_84:
      sub_100267A1C(v168, type metadata accessor for ActionRequest);
LABEL_15:
      v23 = v471;
      goto LABEL_16;
    }

    LODWORD(v471) = v23;
    v85 = *(v0 + 1336);
    defaultLogger()();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "display message received", v88, 2u);
    }

    v89 = *(v0 + 1424);
    v90 = *(v0 + 1352);
    v91 = *(v0 + 1336);
    v92 = *(v0 + 1208);
    v93 = *(v0 + 1200);
    v94 = *(v0 + 1024);
    v95 = *(v0 + 1008);
    v96 = *(v0 + 1000);

    v97 = *(v92 + 8);
    v97(v91, v93);
    sub_1002556F0(v89 + *(v90 + 20), v96, v95);
    type metadata accessor for IdentityProofingDataContext();
    v98 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v99 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v99 + 54);
    sub_100031B5C(&v99[4], v0 + 408);
    os_unfair_lock_unlock(v99 + 54);
    v100 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v461 = 0;
    v139 = sub_10054C274();
    v140 = *(v0 + 1896);
    v141 = *(v0 + 1424);
    v142 = *(v0 + 1416);
    v143 = *(v0 + 1368);
    v448 = v97;
    v453 = *(v0 + 1016);
    v144 = *(v0 + 1008);
    v145 = *(v0 + 1000);

    v146 = [v139 newBackgroundContext];
    *(v98 + 16) = v146;
    [v146 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v141, v142, type metadata accessor for ActionRequest);
    v147 = swift_allocObject();
    v147[2] = v98;
    v147[3] = v145;
    v147[4] = v144;
    v147[5] = v453;
    sub_100269F80(v142, v147 + ((v140 + 48) & ~v140), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v148 = *(v98 + 16);
    v149 = swift_allocObject();
    v149[2] = sub_100267BF8;
    v149[3] = v147;
    v149[4] = v442;
    v150 = swift_allocObject();
    *(v150 + 16) = sub_100267C5C;
    *(v150 + 24) = v149;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v150;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v151 = _Block_copy((v0 + 800));
    v152 = *(v0 + 840);

    [v148 performBlockAndWait:v151];
    _Block_release(v151);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_173;
    }

    v154 = *v442;
    if (*v442)
    {
      swift_willThrow();
      v461 = v154;

      v23 = v471;
      v155 = *(v0 + 1328);
      v156 = *(v0 + 1200);
      v157 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v448(v155, v156);
    }

    else
    {

      v23 = v471;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_16:
    v21 = *(v0 + 1568) + 1;
    if (v21 == *(v0 + 1528))
    {
      v195 = *(v0 + 1520);
      goto LABEL_94;
    }
  }

  if (!v40)
  {
    v101 = *(v0 + 1272);
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    v103 = os_log_type_enabled(v42, v102);
    v45 = *(v0 + 1424);
    v46 = *(v0 + 1272);
    v47 = *(v0 + 1208);
    v48 = *(v0 + 1200);
    if (v103)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v102;
      v51 = v42;
      v52 = "server requested an action to wait for update";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v51, v50, v52, v49, 2u);
    }

LABEL_47:

    (*(v47 + 8))(v46, v48);
LABEL_48:
    sub_100267A1C(v45, type metadata accessor for ActionRequest);
    goto LABEL_16;
  }

  if (v40 != 2)
  {
    v236 = *(v0 + 1312);
    defaultLogger()();
    v237 = Logger.logObject.getter();
    v238 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      *v239 = 0;
      _os_log_impl(&_mh_execute_header, v237, v238, "Starting Provisioning flow", v239, 2u);
    }

    v240 = *(v0 + 1312);
    v241 = *(v0 + 1208);
    v242 = *(v0 + 1200);
    v243 = *(v0 + 992);

    (*(v241 + 8))(v240, v242);
    if (*(v243 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v324 = *(v0 + 1424);
    v325 = *(*(v0 + 1352) + 20);
    v326 = swift_task_alloc();
    *(v0 + 1592) = v326;
    *v326 = v0;
    v326[1] = sub_10023710C;
    v327 = *(v0 + 1024);
    v328 = *(v0 + 1016);
    v329 = *(v0 + 1008);
    v330 = *(v0 + 1000);

    return sub_100229698(v324 + v325, v330, v329, v328, 0x61746E6567616DLL, 0xE700000000000000);
  }

  v53 = *(v0 + 1320);
  defaultLogger()();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "server requested an action to execute new workflow", v56, 2u);
  }

  v57 = *(v0 + 1424);
  v58 = *(v0 + 1352);
  v59 = *(v0 + 1320);
  v60 = *(v0 + 1208);
  v61 = *(v0 + 1200);
  v62 = *(v0 + 1192);

  (*(v60 + 8))(v59, v61);
  v63 = *(v58 + 20);
  sub_10000BBC4(v57 + v63, v62, &unk_100840960, &qword_1006DBCB0);
  v64 = type metadata accessor for PendingActionContext(0);
  v65 = *(*(v64 - 8) + 48);
  v66 = v65(v62, 1, v64);
  v67 = *(v0 + 1192);
  if (v66 == 1)
  {
    sub_10000BE18(v67, &unk_100840960, &qword_1006DBCB0);
    v68 = 3;
  }

  else
  {
    v68 = *(v67 + *(v64 + 76));
    sub_100267A1C(v67, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v68;
  v122 = *(v0 + 1184);
  sub_10000BBC4(v57 + v63, v122, &unk_100840960, &qword_1006DBCB0);
  v123 = v65(v122, 1, v64);
  v124 = *(v0 + 1184);
  v125 = *(v0 + 1096);
  if (v123 == 1)
  {
    sub_10000BE18(v124, &unk_100840960, &qword_1006DBCB0);
    v126 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v126 - 8) + 56))(v125, 1, 1, v126);
  }

  else
  {
    v127 = *(v64 + 72);
    v128 = *(v0 + 1184);
    sub_10000BBC4(v124 + v127, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v128, type metadata accessor for PendingActionContext);
  }

  v129 = *(v0 + 1096);
  v130 = *(v0 + 1024);
  sub_1002593E4(v129);
  sub_10000BE18(v129, &qword_100835968, &qword_1006DBC90);
  if (v68 <= 1)
  {
    v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v158)
    {
      goto LABEL_118;
    }

    goto LABEL_69;
  }

  if (v68 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v23 = *(v0 + 1909);
    goto LABEL_16;
  }

LABEL_118:
  v276 = swift_task_alloc();
  *(v0 + 1576) = v276;
  *v276 = v0;
  v276[1] = sub_1002342A8;
  v277 = *(v0 + 1024);
  v278 = *(v0 + 1008);
  v279 = *(v0 + 1000);

  return sub_100259898(v57 + v63, v279, v278);
}

uint64_t sub_1002342A8()
{
  v2 = *v1;
  v3 = *(*v1 + 1576);
  v8 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v4 = *(v2 + 1536);
    v5 = *(v2 + 1520);
    swift_bridgeObjectRelease_n();

    v6 = sub_10024F720;
  }

  else
  {
    v6 = sub_1002343D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1002343D4()
{
  v430 = *(v1 + 1584);
  sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
  v2 = *(v1 + 1568) + 1;
  if (v2 == *(v1 + 1528))
  {
    goto LABEL_2;
  }

  v404 = (v1 + 984);
  while (2)
  {
    LODWORD(v427) = *(v1 + 1909);
    while (1)
    {
      *(v1 + 1568) = v2;
      *(v1 + 1908) = v427;
      *(v1 + 1560) = v430;
      v26 = *(v1 + 1520);
      if (v2 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_158;
      }

      v27 = *(v1 + 1424);
      v28 = *(v1 + 1016);
      v29 = *(v1 + 1008);
      v30 = *(v1 + 1000);
      v31 = *(*(v1 + 1360) + 72);
      sub_100269FE8(v26 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)) + v31 * v2, v27, type metadata accessor for ActionRequest);
      sub_10025DCD8(v27, v30, v29, v28);
      v32 = *v27;
      v33 = v27[1];

      v436._countAndFlagsBits = v32;
      v436._object = v33;
      v34 = sub_10025DC8C(v436);
      if (v34 > 5)
      {
        if (v34 <= 7)
        {
          if (v34 == 6)
          {
            v62 = *(v1 + 1344);
            defaultLogger()();
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&_mh_execute_header, v63, v64, "display notification received", v65, 2u);
            }

            v19 = *(v1 + 1512);
            v20 = *(v1 + 1504);
            v21 = *(v1 + 1496);
            v0 = *(v1 + 1424);
            v22 = *(v1 + 1352);
            v23 = *(v1 + 1344);
            v24 = *(v1 + 1208);
            v25 = *(v1 + 1200);

            (*(v24 + 8))(v23, v25);
            sub_10000BE18(v21, &qword_10083E3E8, &unk_1006DBD00);
            sub_100269F80(v0, v21, type metadata accessor for ActionRequest);
            v20(v21, 0, 1, v22);
            goto LABEL_10;
          }

          v68 = *(v1 + 1264);
          defaultLogger()();
          v36 = Logger.logObject.getter();
          v0 = static os_log_type_t.debug.getter();
          v69 = os_log_type_enabled(v36, v0);
          v38 = *(v1 + 1424);
          v39 = *(v1 + 1264);
          v40 = *(v1 + 1208);
          v41 = *(v1 + 1200);
          if (v69)
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = v0;
            v44 = v36;
            v45 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_35:
            _os_log_impl(&_mh_execute_header, v44, v43, v45, v42, 2u);
          }

          goto LABEL_36;
        }

        if (v34 != 8)
        {
          if (v34 != 10)
          {
            v198 = *(v1 + 1248);
            defaultLogger()();
            v199 = Logger.logObject.getter();
            v200 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v199, v200))
            {
              v201 = swift_slowAlloc();
              *v201 = 0;
              _os_log_impl(&_mh_execute_header, v199, v200, "server requested an action to store token", v201, 2u);
            }

            v202 = *(v1 + 1424);
            v203 = *(v1 + 1352);
            v204 = *(v1 + 1248);
            v205 = *(v1 + 1208);
            v206 = *(v1 + 1200);
            v207 = *(v1 + 1104);

            v208 = *(v205 + 8);
            *(v1 + 1672) = v208;
            v208(v204, v206);
            sub_10000BBC4(v202 + *(v203 + 20), v207, &unk_100840960, &qword_1006DBCB0);
            v209 = type metadata accessor for PendingActionContext(0);
            if ((*(*(v209 - 8) + 48))(v207, 1, v209) == 1)
            {
              v210 = *(v1 + 1536);
              v211 = *(v1 + 1520);
              v212 = *(v1 + 1104);

              swift_bridgeObjectRelease_n();
              sub_10000BE18(v212, &unk_100840960, &qword_1006DBCB0);
            }

            else
            {
              v225 = *(v1 + 1104);
              v226 = (v225 + *(v209 + 128));
              v227 = *v226;
              *(v1 + 1680) = *v226;
              v228 = v226[1];
              *(v1 + 1688) = v228;
              v229 = v226[2];
              *(v1 + 1696) = v226[3];
              sub_1000AB7D8(v227, v228);
              sub_100267A1C(v225, type metadata accessor for PendingActionContext);
              if (v228)
              {
                v230 = *(v1 + 1072);
                v231 = *(v1 + 1064);
                v232 = *(v1 + 1056);
                static String.Encoding.utf8.getter();
                v233 = String.data(using:allowLossyConversion:)();
                v235 = v234;
                *(v1 + 1704) = v233;
                *(v1 + 1712) = v234;
                (*(v231 + 8))(v230, v232);
                if (v235 >> 60 != 15)
                {
                  if (qword_100832C20 != -1)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_142;
                }

                v236 = *(v1 + 1536);
                v237 = *(v1 + 1520);
                swift_bridgeObjectRelease_n();
              }

              else
              {
                v289 = *(v1 + 1536);
                v290 = *(v1 + 1520);

                swift_bridgeObjectRelease_n();
              }
            }

            v291 = *(v1 + 1424);
            (*(*(v1 + 1040) + 104))(*(v1 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v1 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v291, type metadata accessor for ActionRequest);
            v292 = *(v1 + 1488);
            v293 = *(v1 + 1480);
            v294 = *(v1 + 1472);
            v295 = *(v1 + 1464);
            v296 = *(v1 + 1456);
            v297 = *(v1 + 1448);
            v298 = *(v1 + 1440);
            v299 = *(v1 + 1432);
            v338 = *(v1 + 1424);
            v340 = *(v1 + 1416);
            v342 = *(v1 + 1408);
            v344 = *(v1 + 1400);
            v346 = *(v1 + 1392);
            v348 = *(v1 + 1384);
            v350 = *(v1 + 1376);
            v352 = *(v1 + 1344);
            v354 = *(v1 + 1336);
            v356 = *(v1 + 1328);
            v358 = *(v1 + 1320);
            v360 = *(v1 + 1312);
            v362 = *(v1 + 1304);
            v364 = *(v1 + 1296);
            v366 = *(v1 + 1288);
            v368 = *(v1 + 1280);
            v370 = *(v1 + 1272);
            v372 = *(v1 + 1264);
            v374 = *(v1 + 1256);
            v376 = *(v1 + 1248);
            v378 = *(v1 + 1240);
            v380 = *(v1 + 1232);
            v382 = *(v1 + 1224);
            v384 = *(v1 + 1216);
            v386 = *(v1 + 1192);
            v388 = *(v1 + 1184);
            v390 = *(v1 + 1176);
            v392 = *(v1 + 1168);
            v394 = *(v1 + 1160);
            v396 = *(v1 + 1152);
            v398 = *(v1 + 1144);
            v400 = *(v1 + 1136);
            v402 = *(v1 + 1128);
            v405 = *(v1 + 1120);
            v407 = *(v1 + 1112);
            v411 = *(v1 + 1104);
            v414 = *(v1 + 1096);
            v417 = *(v1 + 1088);
            v420 = *(v1 + 1080);
            v426 = *(v1 + 1072);
            v429 = *(v1 + 1048);
            sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v18 = *(v1 + 8);
            goto LABEL_4;
          }

          v35 = *(v1 + 1232);
          defaultLogger()();
          v36 = Logger.logObject.getter();
          v0 = static os_log_type_t.error.getter();
          v37 = os_log_type_enabled(v36, v0);
          v38 = *(v1 + 1424);
          v39 = *(v1 + 1232);
          v40 = *(v1 + 1208);
          v41 = *(v1 + 1200);
          if (v37)
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = v0;
            v44 = v36;
            v45 = "INVALID ACTION REQUEST";
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        v70 = *(v1 + 1424);
        v71 = *(v1 + 1384);
        v72 = *(v1 + 1256);
        defaultLogger()();
        sub_100269FE8(v70, v71, type metadata accessor for ActionRequest);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v1 + 1384);
        if (!v75)
        {
          v0 = *(v1 + 1256);
          v97 = *(v1 + 1208);
          v98 = *(v1 + 1200);

          sub_100267A1C(v76, type metadata accessor for ActionRequest);
          (*(v97 + 8))(v0, v98);
LABEL_54:
          v124 = *(v1 + 1112);
          sub_10000BBC4(*(v1 + 1424) + *(*(v1 + 1352) + 20), v124, &unk_100840960, &qword_1006DBCB0);
          v125 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
          {
            v126 = *(v1 + 1112);
            sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
            sub_10000BE18(v126, &unk_100840960, &qword_1006DBCB0);
            goto LABEL_10;
          }

          v127 = *(v1 + 1112);
          v128 = (v127 + *(v125 + 112));
          v130 = *v128;
          v129 = v128[1];

          sub_100267A1C(v127, type metadata accessor for PendingActionContext);
          if (!v129)
          {
            sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
            goto LABEL_10;
          }

          v131 = *(v1 + 1088);
          v132 = *(v1 + 1080);
          v133 = *(v1 + 1024);
          v134 = type metadata accessor for TaskPriority();
          v135 = *(v134 - 8);
          (*(v135 + 56))(v131, 1, 1, v134);
          v136 = swift_allocObject();
          v136[2] = 0;
          v136[3] = 0;
          v136[4] = v133;
          v136[5] = v130;
          v136[6] = v129;
          sub_10000BBC4(v131, v132, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v131) = (*(v135 + 48))(v132, 1, v134);

          v137 = *(v1 + 1080);
          if (v131 == 1)
          {
            sub_10000BE18(*(v1 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v135 + 8))(v137, v134);
          }

          v0 = v136[2];
          v145 = v136[3];
          swift_unknownObjectRetain();

          if (v0)
          {
            swift_getObjectType();
            v146 = dispatch thunk of Actor.unownedExecutor.getter();
            v148 = v147;
            swift_unknownObjectRelease();
          }

          else
          {
            v146 = 0;
            v148 = 0;
          }

          sub_10000BE18(*(v1 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v148 | v146)
          {
            *(v1 + 848) = 0;
            *(v1 + 856) = 0;
            *(v1 + 864) = v146;
            *(v1 + 872) = v148;
          }

          v38 = *(v1 + 1424);
          swift_task_create();

          goto LABEL_37;
        }

        v77 = *(v1 + 1352);
        v78 = *(v1 + 1120);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *(v1 + 960) = v80;
        *v79 = 136315138;
        sub_10000BBC4(v76 + *(v77 + 20), v78, &unk_100840960, &qword_1006DBCB0);
        v81 = type metadata accessor for PendingActionContext(0);
        v82 = (*(*(v81 - 8) + 48))(v78, 1, v81);
        v83 = *(v1 + 1120);
        if (v82 == 1)
        {
          sub_10000BE18(*(v1 + 1120), &unk_100840960, &qword_1006DBCB0);
        }

        else
        {
          v118 = (v83 + *(v81 + 112));
          v119 = *v118;
          v120 = v118[1];

          sub_100267A1C(v83, type metadata accessor for PendingActionContext);
          if (v120)
          {
            sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);
LABEL_53:
            v0 = *(v1 + 1256);
            v121 = *(v1 + 1208);
            v122 = *(v1 + 1200);
            v123 = sub_100141FE4(v119, v120, (v1 + 960));

            *(v79 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v73, v74, "server requested to delete the Account Key Signing Key with identifier %s", v79, 0xCu);
            sub_10000BB78(v80);

            (*(v121 + 8))(v0, v122);
            goto LABEL_54;
          }
        }

        sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);

        v120 = 0xE300000000000000;
        v119 = 4999502;
        goto LABEL_53;
      }

      if (v34 <= 2)
      {
        break;
      }

      if (v34 == 3)
      {
        v84 = *(v1 + 1424);
        v85 = *(v1 + 1408);
        v86 = *(v1 + 1304);
        defaultLogger()();
        sub_100269FE8(v84, v85, type metadata accessor for ActionRequest);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = *(v1 + 1408);
          v90 = *(v1 + 1352);
          v91 = *(v1 + 1176);
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *(v1 + 976) = v93;
          *v92 = 136315138;
          sub_10000BBC4(v89 + *(v90 + 20), v91, &unk_100840960, &qword_1006DBCB0);
          v94 = type metadata accessor for PendingActionContext(0);
          v95 = (*(*(v94 - 8) + 48))(v91, 1, v94);
          v96 = *(v1 + 1176);
          if (v95 == 1)
          {
            sub_10000BE18(*(v1 + 1176), &unk_100840960, &qword_1006DBCB0);
            goto LABEL_61;
          }

          v138 = *(v96 + 48);
          v139 = *(v96 + 56);

          sub_100267A1C(v96, type metadata accessor for PendingActionContext);
          if (v139)
          {
            v140 = String.debugDescription.getter();
            v142 = v141;
          }

          else
          {
LABEL_61:
            v140 = 0;
            v142 = 0xE000000000000000;
          }

          v424 = *(v1 + 1424);
          v410 = *(v1 + 1304);
          v143 = *(v1 + 1208);
          v0 = *(v1 + 1200);
          sub_100267A1C(*(v1 + 1408), type metadata accessor for ActionRequest);
          v144 = sub_100141FE4(v140, v142, (v1 + 976));

          *(v92 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v87, v88, "server requested an action to self heal: %s", v92, 0xCu);
          sub_10000BB78(v93);

          (*(v143 + 8))(v410, v0);
          sub_100267A1C(v424, type metadata accessor for ActionRequest);
          goto LABEL_10;
        }

        v99 = *(v1 + 1424);
        v0 = *(v1 + 1408);
        v100 = *(v1 + 1304);
        v101 = *(v1 + 1208);
        v102 = *(v1 + 1200);

        sub_100267A1C(v0, type metadata accessor for ActionRequest);
        (*(v101 + 8))(v100, v102);
        sub_100267A1C(v99, type metadata accessor for ActionRequest);
      }

      else
      {
        if (v34 != 4)
        {
          v184 = *(v1 + 1424);
          v185 = *(v1 + 1400);
          v186 = *(v1 + 1296);
          defaultLogger()();
          sub_100269FE8(v184, v185, type metadata accessor for ActionRequest);
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.debug.getter();
          v189 = os_log_type_enabled(v187, v188);
          v190 = *(v1 + 1400);
          if (v189)
          {
            v191 = *(v1 + 1352);
            v192 = *(v1 + 1168);
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            *(v1 + 968) = v194;
            *v193 = 136315138;
            sub_10000BBC4(v190 + *(v191 + 20), v192, &unk_100840960, &qword_1006DBCB0);
            v195 = type metadata accessor for PendingActionContext(0);
            v196 = (*(*(v195 - 8) + 48))(v192, 1, v195);
            v197 = *(v1 + 1168);
            if (v196 == 1)
            {
              sub_10000BE18(*(v1 + 1168), &unk_100840960, &qword_1006DBCB0);
              goto LABEL_110;
            }

            v238 = *(v197 + 64);
            v239 = *(v197 + 72);

            sub_100267A1C(v197, type metadata accessor for PendingActionContext);
            if (v239)
            {
              v240 = String.debugDescription.getter();
              v242 = v241;
            }

            else
            {
LABEL_110:
              v240 = 0;
              v242 = 0xE000000000000000;
            }

            v433 = *(v1 + 1296);
            v243 = *(v1 + 1208);
            v244 = *(v1 + 1200);
            sub_100267A1C(*(v1 + 1400), type metadata accessor for ActionRequest);
            v245 = sub_100141FE4(v240, v242, (v1 + 968));

            *(v193 + 4) = v245;
            _os_log_impl(&_mh_execute_header, v187, v188, "server requested an action to set state:%s", v193, 0xCu);
            sub_10000BB78(v194);

            v224 = *(v243 + 8);
            v224(v433, v244);
          }

          else
          {
            v221 = *(v1 + 1296);
            v222 = *(v1 + 1208);
            v223 = *(v1 + 1200);

            sub_100267A1C(v190, type metadata accessor for ActionRequest);
            v224 = *(v222 + 8);
            v224(v221, v223);
          }

          *(v1 + 1608) = v224;
          v246 = *(*(v1 + 1520) + 16);
          if (!v246)
          {
LABEL_121:
            v252 = 1;
LABEL_123:
            v253 = *(v1 + 1512);
            v254 = *(v1 + 1488);
            v255 = *(v1 + 1480);
            v256 = *(v1 + 1288);
            (*(v1 + 1504))(v254, v252, 1, *(v1 + 1352));
            defaultLogger()();
            sub_10000BBC4(v254, v255, &qword_10083E3E8, &unk_1006DBD00);
            v257 = Logger.logObject.getter();
            v258 = static os_log_type_t.debug.getter();
            v259 = os_log_type_enabled(v257, v258);
            v260 = *(v1 + 1480);
            v434 = v224;
            if (v259)
            {
              v261 = *(v1 + 1360);
              v262 = *(v1 + 1352);
              v263 = swift_slowAlloc();
              *v263 = 67109120;
              LODWORD(v262) = (*(v261 + 48))(v260, 1, v262) != 1;
              sub_10000BE18(v260, &qword_10083E3E8, &unk_1006DBD00);
              *(v263 + 4) = v262;
              _os_log_impl(&_mh_execute_header, v257, v258, "Biome data exists to be donated? -> %{BOOL}d", v263, 8u);
            }

            else
            {
              sub_10000BE18(v260, &qword_10083E3E8, &unk_1006DBD00);
            }

            v264 = v257;
            v265 = *(v1 + 1544);
            v266 = *(v1 + 1488);
            v267 = *(v1 + 1472);
            v268 = *(v1 + 1360);
            v269 = *(v1 + 1352);
            v270 = *(v1 + 1288);
            v271 = *(v1 + 1208);
            v272 = *(v1 + 1200);
            v273 = *(v1 + 1024);

            *(v1 + 1616) = (v271 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v434(v270, v272);
            v274 = *(v273 + v265);
            sub_10000BBC4(v266, v267, &qword_10083E3E8, &unk_1006DBD00);
            v275 = *(v268 + 48);
            v276 = v275(v267, 1, v269);
            v277 = *(v1 + 1472);
            v425 = v275;
            if (v276 == 1)
            {
              v278 = *(v1 + 1160);

              sub_10000BE18(v277, &qword_10083E3E8, &unk_1006DBD00);
              v279 = type metadata accessor for PendingActionContext(0);
              (*(*(v279 - 8) + 56))(v278, 1, 1, v279);
            }

            else
            {
              sub_10000BBC4(v277 + *(*(v1 + 1352) + 20), *(v1 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v277, type metadata accessor for ActionRequest);
            }

            v280 = *(v1 + 1160);
            v281 = *(v1 + 992);
            sub_100300724(*(v1 + 1000), *(v1 + 1008), v280);

            sub_10000BE18(v280, &unk_100840960, &qword_1006DBCB0);
            if (*(v281 + 152) != 1)
            {
              if (*(*(v1 + 992) + 136) > 1u)
              {
                if (*(*(v1 + 992) + 136) == 2)
                {
                }
              }

              else
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();
              }
            }

            v304 = *(v1 + 1424);
            v305 = *(v1 + 1152);
            v306 = *(*(v1 + 1352) + 20);
            *(v1 + 1904) = v306;
            sub_10000BBC4(v304 + v306, v305, &unk_100840960, &qword_1006DBCB0);
            v307 = type metadata accessor for PendingActionContext(0);
            *(v1 + 1624) = v307;
            v308 = *(v307 - 8);
            v309 = *(v308 + 48);
            *(v1 + 1632) = v309;
            *(v1 + 1640) = (v308 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
            v310 = v309(v305, 1, v307);
            v311 = *(v1 + 1152);
            v412 = v306;
            v415 = v304;
            if (v310 == 1)
            {
              sub_10000BE18(v311, &unk_100840960, &qword_1006DBCB0);
              v421 = 0;
              v312 = 0;
            }

            else
            {
              v312 = *(v311 + 72);
              v421 = *(v311 + 64);
              v313 = *(v1 + 1152);

              sub_100267A1C(v313, type metadata accessor for PendingActionContext);
            }

            v418 = v312;
            *(v1 + 1648) = v312;
            v314 = *(v1 + 1488);
            v315 = *(v1 + 1456);
            v316 = *(v1 + 1352);
            sub_10000BBC4(*(v1 + 1496), *(v1 + 1464), &qword_10083E3E8, &unk_1006DBD00);
            sub_10000BBC4(v314, v315, &qword_10083E3E8, &unk_1006DBD00);
            v317 = v425(v315, 1, v316);
            v318 = *(v1 + 1456);
            if (v317 == 1)
            {
              v319 = *(v1 + 1144);
              sub_10000BE18(*(v1 + 1456), &qword_10083E3E8, &unk_1006DBD00);
              (*(v308 + 56))(v319, 1, 1, v307);
              v321 = v412;
              v320 = v415;
            }

            else
            {
              v322 = *(v1 + 1144);
              sub_10000BBC4(v318 + *(*(v1 + 1352) + 20), v322, &unk_100840960, &qword_1006DBCB0);
              sub_100267A1C(v318, type metadata accessor for ActionRequest);
              v321 = v412;
              v320 = v415;
              v309(v322, 1, v307);
            }

            v323 = *(v1 + 1136);
            sub_10000BE18(*(v1 + 1144), &unk_100840960, &qword_1006DBCB0);
            sub_10000BBC4(v320 + v321, v323, &unk_100840960, &qword_1006DBCB0);
            v324 = v309(v323, 1, v307);
            v325 = *(v1 + 1136);
            if (v324 == 1)
            {
              sub_10000BE18(v325, &unk_100840960, &qword_1006DBCB0);
            }

            else
            {
              v326 = *(v325 + *(v307 + 124));
              sub_100267A1C(v325, type metadata accessor for PendingActionContext);
            }

            v327 = swift_task_alloc();
            *(v1 + 1656) = v327;
            *v327 = v1;
            v327[1] = sub_100239F30;
            v328 = *(v1 + 1536);
            v329 = *(v1 + 1464);
            v330 = *(v1 + 1024);
            v331 = *(v1 + 1016);
            v332 = *(v1 + 1008);
            v333 = *(v1 + 1000);

            sub_10025744C(v421, v418, v328, v333, v332, v331, v427, v329);
            return;
          }

          v247 = 0;
          v248 = 0;
          while (1)
          {
            v249 = *(v1 + 1520);
            if (v248 >= *(v249 + 16))
            {
              break;
            }

            v250 = *(v1 + 1392);
            sub_100269FE8(v249 + v247 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)), v250, type metadata accessor for ActionRequest);
            v251 = *v250 == 0x5F4F545F444E4553 && v250[1] == 0xED0000454D4F4942;
            if (v251 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_100269F80(*(v1 + 1392), *(v1 + 1488), type metadata accessor for ActionRequest);
              v252 = 0;
              goto LABEL_123;
            }

            ++v248;
            sub_100267A1C(*(v1 + 1392), type metadata accessor for ActionRequest);
            v247 += v31;
            if (v246 == v248)
            {
              goto LABEL_121;
            }
          }

LABEL_163:
          __break(1u);
LABEL_164:
          swift_once();
LABEL_142:
          v300 = *(qword_100882228 + 16);
          *(v1 + 1720) = v300;
          v301 = v300;
          v302 = String._bridgeToObjectiveC()();
          *(v1 + 1728) = v302;
          *(v1 + 16) = v1;
          *(v1 + 56) = v1 + 880;
          *(v1 + 24) = sub_10023D0AC;
          v303 = swift_continuation_init();
          *(v1 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
          *(v1 + 640) = v303;
          *(v1 + 608) = _NSConcreteStackBlock;
          *(v1 + 616) = 1107296256;
          *(v1 + 624) = sub_100672A4C;
          *(v1 + 632) = &unk_10080B0F0;
          [v301 retrievePIITokenFromSyncableKeyStoreForIdentifier:v302 completion:v1 + 608];

          _swift_continuation_await(v1 + 16);
          return;
        }

        v46 = *(v1 + 1336);
        defaultLogger()();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "display message received", v49, 2u);
        }

        v50 = *(v1 + 1424);
        v51 = *(v1 + 1352);
        v52 = *(v1 + 1336);
        v53 = *(v1 + 1208);
        v54 = *(v1 + 1200);
        v55 = *(v1 + 1024);
        v56 = *(v1 + 1008);
        v57 = *(v1 + 1000);

        v423 = *(v53 + 8);
        v423(v52, v54);
        sub_1002556F0(v50 + *(v51 + 20), v57, v56);
        type metadata accessor for IdentityProofingDataContext();
        v58 = swift_allocObject();
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v59 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v59 + 54);
        sub_100031B5C(&v59[4], v1 + 408);
        os_unfair_lock_unlock(v59 + 54);
        if (v430)
        {
          return;
        }

        v60 = *(v1 + 448);

        sub_100031918(v1 + 408);
        v61 = sub_10054C274();
        v103 = *(v1 + 1896);
        v104 = *(v1 + 1424);
        v105 = *(v1 + 1416);
        v106 = *(v1 + 1368);
        v432 = *(v1 + 1016);
        v0 = *(v1 + 1008);
        v409 = *(v1 + 1000);
        v107 = v61;

        v108 = [v107 newBackgroundContext];
        *(v58 + 16) = v108;
        [v108 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

        sub_100269FE8(v104, v105, type metadata accessor for ActionRequest);
        v109 = swift_allocObject();
        v109[2] = v58;
        v109[3] = v409;
        v109[4] = v0;
        v109[5] = v432;
        sub_100269F80(v105, v109 + ((v103 + 48) & ~v103), type metadata accessor for ActionRequest);
        *(v1 + 984) = 0;
        v110 = *(v58 + 16);
        v111 = swift_allocObject();
        v111[2] = sub_100267BF8;
        v111[3] = v109;
        v111[4] = v404;
        v112 = swift_allocObject();
        *(v112 + 16) = sub_100267C5C;
        *(v112 + 24) = v111;
        *(v1 + 832) = sub_10026CBB8;
        *(v1 + 840) = v112;
        *(v1 + 800) = _NSConcreteStackBlock;
        *(v1 + 808) = 1107296256;
        *(v1 + 816) = sub_10057E264;
        *(v1 + 824) = &unk_10080B258;
        v113 = _Block_copy((v1 + 800));
        v114 = *(v1 + 840);

        [v110 performBlockAndWait:v113];
        _Block_release(v113);
        LOBYTE(v113) = swift_isEscapingClosureAtFileLocation();

        if (v113)
        {
          __break(1u);
          goto LABEL_163;
        }

        if (*v404)
        {
          v115 = *v404;
          swift_willThrow();

          v116 = *(v1 + 1328);
          v117 = *(v1 + 1200);
          v0 = *(v1 + 1208) + 8;
          defaultLogger()();
          DIPRecordError(_:message:log:)();

          v423(v116, v117);
        }

        else
        {
        }

        sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
        v430 = 0;
      }

LABEL_10:
      v2 = *(v1 + 1568) + 1;
      if (v2 == *(v1 + 1528))
      {
        goto LABEL_2;
      }
    }

    if (!v34)
    {
      v66 = *(v1 + 1272);
      defaultLogger()();
      v36 = Logger.logObject.getter();
      v0 = static os_log_type_t.debug.getter();
      v67 = os_log_type_enabled(v36, v0);
      v38 = *(v1 + 1424);
      v39 = *(v1 + 1272);
      v40 = *(v1 + 1208);
      v41 = *(v1 + 1200);
      if (v67)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = v0;
        v44 = v36;
        v45 = "server requested an action to wait for update";
        goto LABEL_35;
      }

LABEL_36:

      (*(v40 + 8))(v39, v41);
LABEL_37:
      sub_100267A1C(v38, type metadata accessor for ActionRequest);
      goto LABEL_10;
    }

    if (v34 == 1)
    {
      v213 = *(v1 + 1312);
      defaultLogger()();
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        *v216 = 0;
        _os_log_impl(&_mh_execute_header, v214, v215, "Starting Provisioning flow", v216, 2u);
      }

      v217 = *(v1 + 1312);
      v218 = *(v1 + 1208);
      v219 = *(v1 + 1200);
      v220 = *(v1 + 992);

      (*(v218 + 8))(v217, v219);
      if (*(v220 + 152) != 1 && (*(*(v1 + 992) + 136) <= 1u || *(*(v1 + 992) + 136) == 2))
      {
      }

      v282 = *(v1 + 1424);
      v283 = *(*(v1 + 1352) + 20);
      v284 = swift_task_alloc();
      *(v1 + 1592) = v284;
      *v284 = v1;
      v284[1] = sub_10023710C;
      v285 = *(v1 + 1024);
      v286 = *(v1 + 1016);
      v287 = *(v1 + 1008);
      v288 = *(v1 + 1000);

      sub_100229698(v282 + v283, v288, v287, v286, 0x61746E6567616DLL, 0xE700000000000000);
      return;
    }

    v149 = *(v1 + 1320);
    defaultLogger()();
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "server requested an action to execute new workflow", v152, 2u);
    }

    v153 = *(v1 + 1424);
    v154 = *(v1 + 1352);
    v155 = *(v1 + 1320);
    v156 = *(v1 + 1208);
    v157 = *(v1 + 1200);
    v158 = *(v1 + 1192);

    (*(v156 + 8))(v155, v157);
    v427 = *(v154 + 20);
    sub_10000BBC4(v153 + v427, v158, &unk_100840960, &qword_1006DBCB0);
    v159 = type metadata accessor for PendingActionContext(0);
    v160 = *(*(v159 - 8) + 48);
    v161 = v160(v158, 1, v159);
    v162 = *(v1 + 1192);
    if (v161 == 1)
    {
      sub_10000BE18(v162, &unk_100840960, &qword_1006DBCB0);
      v163 = 3;
    }

    else
    {
      v163 = *(v162 + *(v159 + 76));
      sub_100267A1C(v162, type metadata accessor for PendingActionContext);
    }

    *(v1 + 1909) = v163;
    v164 = *(v1 + 1184);
    v0 = v153;
    sub_10000BBC4(v153 + v427, v164, &unk_100840960, &qword_1006DBCB0);
    v165 = v160(v164, 1, v159);
    v166 = *(v1 + 1184);
    v167 = *(v1 + 1096);
    if (v165 == 1)
    {
      sub_10000BE18(v166, &unk_100840960, &qword_1006DBCB0);
      v168 = type metadata accessor for WorkflowRecommendationResponse();
      (*(*(v168 - 8) + 56))(v167, 1, 1, v168);
    }

    else
    {
      v169 = *(v159 + 72);
      v170 = *(v1 + 1184);
      sub_10000BBC4(v166 + v169, *(v1 + 1096), &qword_100835968, &qword_1006DBC90);
      sub_100267A1C(v170, type metadata accessor for PendingActionContext);
    }

    v171 = *(v1 + 1096);
    v172 = *(v1 + 1024);
    sub_1002593E4(v171);
    sub_10000BE18(v171, &qword_100835968, &qword_1006DBC90);
    if (v163 > 1)
    {
      if (v163 == 3)
      {
LABEL_86:
        sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
        v2 = *(v1 + 1568) + 1;
        if (v2 != *(v1 + 1528))
        {
          continue;
        }

LABEL_2:
        v3 = *(v1 + 1520);

        v4 = *(v1 + 1536);
        v5 = *(v1 + 1520);
        v6 = *(v1 + 1496);
        v7 = *(v1 + 1448);
        v8 = *(v1 + 1360);
        v9 = *(v1 + 1352);

        sub_10000BBC4(v6, v7, &qword_10083E3E8, &unk_1006DBD00);
        if ((*(v8 + 48))(v7, 1, v9) == 1)
        {
          sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);
          v10 = *(v1 + 1496);
          v11 = *(v1 + 1488);
          v12 = *(v1 + 1480);
          v13 = *(v1 + 1472);
          v14 = *(v1 + 1464);
          v15 = *(v1 + 1456);
          v16 = *(v1 + 1440);
          v17 = *(v1 + 1432);
          v339 = *(v1 + 1424);
          v341 = *(v1 + 1416);
          v343 = *(v1 + 1408);
          v345 = *(v1 + 1400);
          v347 = *(v1 + 1392);
          v349 = *(v1 + 1384);
          v351 = *(v1 + 1376);
          v353 = *(v1 + 1344);
          v355 = *(v1 + 1336);
          v357 = *(v1 + 1328);
          v359 = *(v1 + 1320);
          v361 = *(v1 + 1312);
          v363 = *(v1 + 1304);
          v365 = *(v1 + 1296);
          v367 = *(v1 + 1288);
          v369 = *(v1 + 1280);
          v371 = *(v1 + 1272);
          v373 = *(v1 + 1264);
          v375 = *(v1 + 1256);
          v377 = *(v1 + 1248);
          v379 = *(v1 + 1240);
          v381 = *(v1 + 1232);
          v383 = *(v1 + 1224);
          v385 = *(v1 + 1216);
          v387 = *(v1 + 1192);
          v389 = *(v1 + 1184);
          v391 = *(v1 + 1176);
          v393 = *(v1 + 1168);
          v395 = *(v1 + 1160);
          v397 = *(v1 + 1152);
          v399 = *(v1 + 1144);
          v401 = *(v1 + 1136);
          v403 = *(v1 + 1128);
          v406 = *(v1 + 1120);
          v408 = *(v1 + 1112);
          v413 = *(v1 + 1104);
          v416 = *(v1 + 1096);
          v419 = *(v1 + 1088);
          v422 = *(v1 + 1080);
          v428 = *(v1 + 1072);
          v431 = *(v1 + 1048);
          sub_10000BE18(*(v1 + 1448), &qword_10083E3E8, &unk_1006DBD00);

          v18 = *(v1 + 8);
LABEL_4:

          v18();
        }

        else
        {
          v174 = *(v1 + 1512);
          v175 = *(v1 + 1504);
          v176 = *(v1 + 1440);
          v177 = *(v1 + 1376);
          v178 = *(v1 + 1352);
          sub_100269F80(*(v1 + 1448), v177, type metadata accessor for ActionRequest);
          sub_100269FE8(v177, v176, type metadata accessor for ActionRequest);
          v175(v176, 0, 1, v178);
          v179 = swift_task_alloc();
          *(v1 + 1880) = v179;
          *v179 = v1;
          v179[1] = sub_10024F280;
          v180 = *(v1 + 1440);
          v181 = *(v1 + 1024);
          v182 = *(v1 + 1008);
          v183 = *(v1 + 1000);

          sub_1002550B8(v180, v183, v182);
        }

        return;
      }

LABEL_158:

      goto LABEL_159;
    }

    break;
  }

  v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v173 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_159:
  v334 = swift_task_alloc();
  *(v1 + 1576) = v334;
  *v334 = v1;
  v334[1] = sub_1002342A8;
  v335 = *(v1 + 1024);
  v336 = *(v1 + 1008);
  v337 = *(v1 + 1000);

  sub_100259898(v0 + v427, v337, v336);
}

uint64_t sub_10023710C()
{
  v2 = *v1;
  v3 = *(*v1 + 1592);
  v8 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v4 = *(v2 + 1536);
    v5 = *(v2 + 1520);
    swift_bridgeObjectRelease_n();

    v6 = sub_10024FA84;
  }

  else
  {
    v6 = sub_100237238;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100237238()
{
  sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
  v1 = *(v0 + 1568) + 1;
  if (v1 == *(v0 + 1528))
  {
LABEL_2:
    v2 = *(v0 + 1520);

    v3 = *(v0 + 1536);
    v4 = *(v0 + 1520);
    v5 = *(v0 + 1496);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1360);
    v8 = *(v0 + 1352);

    sub_10000BBC4(v5, v6, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v7 + 48))(v6, 1, v8) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v9 = *(v0 + 1496);
      v10 = *(v0 + 1488);
      v11 = *(v0 + 1480);
      v12 = *(v0 + 1472);
      v13 = *(v0 + 1464);
      v14 = *(v0 + 1456);
      v15 = *(v0 + 1440);
      v16 = *(v0 + 1432);
      v356 = *(v0 + 1424);
      v358 = *(v0 + 1416);
      v360 = *(v0 + 1408);
      v362 = *(v0 + 1400);
      v364 = *(v0 + 1392);
      v366 = *(v0 + 1384);
      v368 = *(v0 + 1376);
      v370 = *(v0 + 1344);
      v372 = *(v0 + 1336);
      v374 = *(v0 + 1328);
      v376 = *(v0 + 1320);
      v378 = *(v0 + 1312);
      v380 = *(v0 + 1304);
      v382 = *(v0 + 1296);
      v384 = *(v0 + 1288);
      v386 = *(v0 + 1280);
      v388 = *(v0 + 1272);
      v390 = *(v0 + 1264);
      v392 = *(v0 + 1256);
      v394 = *(v0 + 1248);
      v396 = *(v0 + 1240);
      v398 = *(v0 + 1232);
      v400 = *(v0 + 1224);
      v402 = *(v0 + 1216);
      v404 = *(v0 + 1192);
      v406 = *(v0 + 1184);
      v408 = *(v0 + 1176);
      v410 = *(v0 + 1168);
      v412 = *(v0 + 1160);
      v414 = *(v0 + 1152);
      v416 = *(v0 + 1144);
      v418 = *(v0 + 1136);
      v421 = *(v0 + 1128);
      v423 = *(v0 + 1120);
      v427 = *(v0 + 1112);
      v432 = *(v0 + 1104);
      v435 = *(v0 + 1096);
      v438 = *(v0 + 1088);
      v441 = *(v0 + 1080);
      v444 = *(v0 + 1072);
      v446 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v17 = *(v0 + 8);
LABEL_4:

      v17();
    }

    else
    {
      v190 = *(v0 + 1512);
      v191 = *(v0 + 1504);
      v192 = *(v0 + 1440);
      v193 = *(v0 + 1376);
      v194 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v193, type metadata accessor for ActionRequest);
      sub_100269FE8(v193, v192, type metadata accessor for ActionRequest);
      v191(v192, 0, 1, v194);
      v195 = swift_task_alloc();
      *(v0 + 1880) = v195;
      *v195 = v0;
      v195[1] = sub_10024F280;
      v196 = *(v0 + 1440);
      v197 = *(v0 + 1024);
      v198 = *(v0 + 1008);
      v199 = *(v0 + 1000);

      sub_1002550B8(v196, v199, v198);
    }

    return;
  }

  v419 = (v0 + 984);
  v18 = *(v0 + 1908);
  v447 = *(v0 + 1600);
  v439 = "redential list provided";
  v19 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v1;
    *(v0 + 1908) = v18;
    *(v0 + 1560) = v447;
    v28 = *(v0 + 1520);
    if (v1 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v29 = *(v0 + 1424);
    v30 = *(v0 + 1016);
    v31 = *(v0 + 1008);
    v32 = *(v0 + 1000);
    v33 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v28 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v33 * v1, v29, type metadata accessor for ActionRequest);
    sub_10025DCD8(v29, v32, v31, v30);
    v34 = *v29;
    v35 = v29[1];

    v453._countAndFlagsBits = v34;
    v453._object = v35;
    v36 = sub_10025DC8C(v453);
    if (v36 > 4)
    {
      if (v36 <= 7)
      {
        if (v36 != 6)
        {
          if (v36 == 7)
          {
            v37 = *(v0 + 1264);
            defaultLogger()();
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.debug.getter();
            v40 = os_log_type_enabled(v38, v39);
            v41 = *(v0 + 1424);
            v42 = *(v0 + 1264);
            v43 = *(v0 + 1208);
            v44 = *(v0 + 1200);
            if (v40)
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              v46 = v39;
              v47 = v38;
              v48 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v47, v46, v48, v45, 2u);
              v19 = &unk_1006BF9D0;

              goto LABEL_43;
            }

            goto LABEL_43;
          }

          v200 = *(v0 + 1424);
          v201 = *(v0 + 1400);
          v202 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v200, v201, type metadata accessor for ActionRequest);
          v203 = Logger.logObject.getter();
          v204 = static os_log_type_t.debug.getter();
          v205 = os_log_type_enabled(v203, v204);
          v206 = *(v0 + 1400);
          LOBYTE(v443) = v18;
          if (!v205)
          {
            v237 = *(v0 + 1296);
            v238 = *(v0 + 1208);
            v239 = *(v0 + 1200);

            sub_100267A1C(v206, type metadata accessor for ActionRequest);
            v240 = *(v238 + 8);
            v240(v237, v239);
LABEL_115:
            v450 = v240;
            *(v0 + 1608) = v240;
            v266 = *(*(v0 + 1520) + 16);
            if (v266)
            {
              v267 = 0;
              v268 = 0;
              while (1)
              {
                v269 = *(v0 + 1520);
                if (v268 >= *(v269 + 16))
                {
                  break;
                }

                v270 = *(v0 + 1392);
                sub_100269FE8(v269 + v267 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v270, type metadata accessor for ActionRequest);
                v271 = *v270 == 0x5F4F545F444E4553 && v270[1] == 0xED0000454D4F4942;
                if (v271 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v272 = 0;
                  goto LABEL_126;
                }

                ++v268;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v267 += v33;
                if (v266 == v268)
                {
                  goto LABEL_124;
                }
              }

LABEL_163:
              __break(1u);
              goto LABEL_164;
            }

LABEL_124:
            v272 = 1;
LABEL_126:
            v273 = *(v0 + 1512);
            v274 = *(v0 + 1488);
            v275 = *(v0 + 1480);
            v276 = *(v0 + 1288);
            (*(v0 + 1504))(v274, v272, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v274, v275, &qword_10083E3E8, &unk_1006DBD00);
            v277 = Logger.logObject.getter();
            v278 = static os_log_type_t.debug.getter();
            v279 = os_log_type_enabled(v277, v278);
            v280 = *(v0 + 1480);
            if (v279)
            {
              v281 = *(v0 + 1360);
              v282 = *(v0 + 1352);
              v283 = swift_slowAlloc();
              *v283 = 67109120;
              LODWORD(v282) = (*(v281 + 48))(v280, 1, v282) != 1;
              sub_10000BE18(v280, &qword_10083E3E8, &unk_1006DBD00);
              *(v283 + 4) = v282;
              _os_log_impl(&_mh_execute_header, v277, v278, "Biome data exists to be donated? -> %{BOOL}d", v283, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v284 = v277;
            v285 = *(v0 + 1544);
            v286 = *(v0 + 1488);
            v287 = *(v0 + 1472);
            v288 = *(v0 + 1360);
            v289 = *(v0 + 1352);
            v290 = *(v0 + 1288);
            v291 = *(v0 + 1208);
            v292 = *(v0 + 1200);
            v293 = *(v0 + 1024);

            *(v0 + 1616) = (v291 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v450(v290, v292);
            v294 = *(v293 + v285);
            sub_10000BBC4(v286, v287, &qword_10083E3E8, &unk_1006DBD00);
            v295 = *(v288 + 48);
            v296 = (v295)(v287, 1, v289);
            v297 = *(v0 + 1472);
            if (v296 == 1)
            {
              v298 = *(v0 + 1160);

              sub_10000BE18(v297, &qword_10083E3E8, &unk_1006DBD00);
              v299 = type metadata accessor for PendingActionContext(0);
              (*(*(v299 - 8) + 56))(v298, 1, 1, v299);
            }

            else
            {
              sub_10000BBC4(v297 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v297, type metadata accessor for ActionRequest);
            }

            v300 = *(v0 + 1160);
            v301 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v300);

            sub_10000BE18(v300, &unk_100840960, &qword_1006DBCB0);
            v439 = v295;
            if (*(v301 + 152) == 1)
            {
LABEL_150:
              v324 = *(v0 + 1424);
              v325 = *(v0 + 1152);
              v326 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v326;
              sub_10000BBC4(v324 + v326, v325, &unk_100840960, &qword_1006DBCB0);
              v327 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v327;
              v328 = *(v327 - 8);
              v329 = *(v328 + 48);
              *(v0 + 1632) = v329;
              *(v0 + 1640) = (v328 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v451 = v329;
              v330 = v329(v325, 1, v327);
              v331 = *(v0 + 1152);
              v426 = v326;
              v431 = v324;
              if (v330 == 1)
              {
                sub_10000BE18(v331, &unk_100840960, &qword_1006DBCB0);
                v437 = 0;
                v332 = 0;
              }

              else
              {
                v332 = *(v331 + 72);
                v437 = *(v331 + 64);
                v333 = *(v0 + 1152);

                sub_100267A1C(v333, type metadata accessor for PendingActionContext);
              }

              v434 = v332;
              *(v0 + 1648) = v332;
              v334 = *(v0 + 1488);
              v335 = *(v0 + 1456);
              v336 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v334, v335, &qword_10083E3E8, &unk_1006DBD00);
              v337 = (v439)(v335, 1, v336);
              v338 = *(v0 + 1456);
              if (v337 == 1)
              {
                v339 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v328 + 56))(v339, 1, 1, v327);
                v340 = v443;
                v342 = v426;
                v341 = v431;
              }

              else
              {
                v343 = *(v0 + 1144);
                sub_10000BBC4(v338 + *(*(v0 + 1352) + 20), v343, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v338, type metadata accessor for ActionRequest);
                v340 = v443;
                v342 = v426;
                v341 = v431;
                v451(v343, 1, v327);
              }

              v344 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v341 + v342, v344, &unk_100840960, &qword_1006DBCB0);
              v345 = v451(v344, 1, v327);
              v346 = *(v0 + 1136);
              if (v345 == 1)
              {
                sub_10000BE18(v346, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v347 = *(v346 + *(v327 + 124));
                sub_100267A1C(v346, type metadata accessor for PendingActionContext);
              }

              v348 = swift_task_alloc();
              *(v0 + 1656) = v348;
              *v348 = v0;
              v348[1] = sub_100239F30;
              v349 = *(v0 + 1536);
              v350 = *(v0 + 1464);
              v351 = *(v0 + 1024);
              v352 = *(v0 + 1016);
              v353 = *(v0 + 1008);
              v354 = *(v0 + 1000);

              sub_10025744C(v437, v434, v349, v354, v353, v352, v340, v350);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_150;
            }

LABEL_149:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_150;
          }

          v207 = *(v0 + 1352);
          v208 = *(v0 + 1168);
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          *(v0 + 968) = v210;
          *v209 = 136315138;
          sub_10000BBC4(v206 + *(v207 + 20), v208, &unk_100840960, &qword_1006DBCB0);
          v211 = type metadata accessor for PendingActionContext(0);
          v212 = (*(*(v211 - 8) + 48))(v208, 1, v211);
          v213 = *(v0 + 1168);
          if (v212 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v258 = *(v213 + 64);
            v259 = *(v213 + 72);

            sub_100267A1C(v213, type metadata accessor for PendingActionContext);
            if (v259)
            {
              v260 = String.debugDescription.getter();
              v262 = v261;

LABEL_114:
              v449 = *(v0 + 1296);
              v263 = *(v0 + 1208);
              v264 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v265 = sub_100141FE4(v260, v262, (v0 + 968));

              *(v209 + 4) = v265;
              _os_log_impl(&_mh_execute_header, v203, v204, "server requested an action to set state:%s", v209, 0xCu);
              sub_10000BB78(v210);

              v240 = *(v263 + 8);
              v240(v449, v264);
              goto LABEL_115;
            }
          }

          v260 = 0;
          v262 = 0xE000000000000000;
          goto LABEL_114;
        }

        v443 = v18;
        v100 = *(v0 + 1344);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "display notification received", v103, 2u);
        }

        v20 = *(v0 + 1512);
        v21 = *(v0 + 1504);
        v22 = *(v0 + 1496);
        v23 = *(v0 + 1424);
        v24 = *(v0 + 1352);
        v25 = *(v0 + 1344);
        v26 = *(v0 + 1208);
        v27 = *(v0 + 1200);

        (*(v26 + 8))(v25, v27);
        sub_10000BE18(v22, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v23, v22, type metadata accessor for ActionRequest);
        v21(v22, 0, 1, v24);
        goto LABEL_9;
      }

      if (v36 != 8)
      {
        if (v36 != 10)
        {
          v222 = *(v0 + 1248);
          defaultLogger()();
          v223 = Logger.logObject.getter();
          v224 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v223, v224))
          {
            v225 = swift_slowAlloc();
            *v225 = 0;
            _os_log_impl(&_mh_execute_header, v223, v224, "server requested an action to store token", v225, 2u);
          }

          v226 = *(v0 + 1424);
          v227 = *(v0 + 1352);
          v228 = *(v0 + 1248);
          v229 = *(v0 + 1208);
          v230 = *(v0 + 1200);
          v231 = *(v0 + 1104);

          v232 = *(v229 + 8);
          *(v0 + 1672) = v232;
          v232(v228, v230);
          sub_10000BBC4(v226 + *(v227 + 20), v231, &unk_100840960, &qword_1006DBCB0);
          v233 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v233 - 8) + 48))(v231, 1, v233) == 1)
          {
            v234 = *(v0 + 1536);
            v235 = *(v0 + 1520);
            v236 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v236, &unk_100840960, &qword_1006DBCB0);
LABEL_143:
            v311 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v311, type metadata accessor for ActionRequest);
            v312 = *(v0 + 1488);
            v313 = *(v0 + 1480);
            v314 = *(v0 + 1472);
            v315 = *(v0 + 1464);
            v316 = *(v0 + 1456);
            v317 = *(v0 + 1448);
            v318 = *(v0 + 1440);
            v319 = *(v0 + 1432);
            v355 = *(v0 + 1424);
            v357 = *(v0 + 1416);
            v359 = *(v0 + 1408);
            v361 = *(v0 + 1400);
            v363 = *(v0 + 1392);
            v365 = *(v0 + 1384);
            v367 = *(v0 + 1376);
            v369 = *(v0 + 1344);
            v371 = *(v0 + 1336);
            v373 = *(v0 + 1328);
            v375 = *(v0 + 1320);
            v377 = *(v0 + 1312);
            v379 = *(v0 + 1304);
            v381 = *(v0 + 1296);
            v383 = *(v0 + 1288);
            v385 = *(v0 + 1280);
            v387 = *(v0 + 1272);
            v389 = *(v0 + 1264);
            v391 = *(v0 + 1256);
            v393 = *(v0 + 1248);
            v395 = *(v0 + 1240);
            v397 = *(v0 + 1232);
            v399 = *(v0 + 1224);
            v401 = *(v0 + 1216);
            v403 = *(v0 + 1192);
            v405 = *(v0 + 1184);
            v407 = *(v0 + 1176);
            v409 = *(v0 + 1168);
            v411 = *(v0 + 1160);
            v413 = *(v0 + 1152);
            v415 = *(v0 + 1144);
            v417 = *(v0 + 1136);
            v420 = *(v0 + 1128);
            v422 = *(v0 + 1120);
            v425 = *(v0 + 1112);
            v430 = *(v0 + 1104);
            v433 = *(v0 + 1096);
            v436 = *(v0 + 1088);
            v440 = *(v0 + 1080);
            v442 = *(v0 + 1072);
            v445 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v17 = *(v0 + 8);
            goto LABEL_4;
          }

          v241 = *(v0 + 1104);
          v242 = (v241 + *(v233 + 128));
          v243 = *v242;
          *(v0 + 1680) = *v242;
          v244 = v242[1];
          *(v0 + 1688) = v244;
          v245 = v242[2];
          *(v0 + 1696) = v242[3];
          sub_1000AB7D8(v243, v244);
          sub_100267A1C(v241, type metadata accessor for PendingActionContext);
          if (!v244)
          {
            v309 = *(v0 + 1536);
            v310 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_143;
          }

          v246 = *(v0 + 1072);
          v247 = *(v0 + 1064);
          v248 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v249 = String.data(using:allowLossyConversion:)();
          v251 = v250;
          *(v0 + 1704) = v249;
          *(v0 + 1712) = v250;
          (*(v247 + 8))(v246, v248);
          if (v251 >> 60 == 15)
          {
            v252 = *(v0 + 1536);
            v253 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_143;
          }

          if (qword_100832C20 == -1)
          {
LABEL_145:
            v320 = *(qword_100882228 + 16);
            *(v0 + 1720) = v320;
            v321 = v320;
            v322 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v322;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v323 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v323;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v321 retrievePIITokenFromSyncableKeyStoreForIdentifier:v322 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_164:
          swift_once();
          goto LABEL_145;
        }

        v65 = *(v0 + 1232);
        defaultLogger()();
        v38 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        v67 = os_log_type_enabled(v38, v66);
        v41 = *(v0 + 1424);
        v42 = *(v0 + 1232);
        v43 = *(v0 + 1208);
        v44 = *(v0 + 1200);
        if (!v67)
        {
          goto LABEL_43;
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = v66;
        v47 = v38;
        v48 = "INVALID ACTION REQUEST";
        goto LABEL_42;
      }

      v104 = *(v0 + 1424);
      v105 = *(v0 + 1384);
      v106 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v104, v105, type metadata accessor for ActionRequest);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();
      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v0 + 1384);
      v443 = v18;
      if (!v109)
      {
        v132 = *(v0 + 1256);
        v133 = *(v0 + 1208);
        v134 = *(v0 + 1200);

        sub_100267A1C(v110, type metadata accessor for ActionRequest);
        (*(v133 + 8))(v132, v134);
LABEL_74:
        v170 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v170, &unk_100840960, &qword_1006DBCB0);
        v171 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v171 - 8) + 48))(v170, 1, v171) == 1)
        {
          v172 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v172, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_11;
        }

        v173 = *(v0 + 1112);
        v174 = (v173 + *(v171 + 112));
        v176 = *v174;
        v175 = v174[1];

        sub_100267A1C(v173, type metadata accessor for PendingActionContext);
        if (!v175)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v18 = v443;
          goto LABEL_11;
        }

        v177 = *(v0 + 1088);
        v178 = *(v0 + 1080);
        v179 = v19;
        v180 = *(v0 + 1024);
        v181 = type metadata accessor for TaskPriority();
        v182 = *(v181 - 8);
        (*(v182 + 56))(v177, 1, 1, v181);
        v183 = swift_allocObject();
        v183[2] = 0;
        v183[3] = 0;
        v183[4] = v180;
        v183[5] = v176;
        v183[6] = v175;
        sub_10000BBC4(v177, v178, &unk_100845860, v179);
        LODWORD(v177) = (*(v182 + 48))(v178, 1, v181);

        v184 = *(v0 + 1080);
        if (v177 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v179);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v182 + 8))(v184, v181);
        }

        v19 = v179;
        v186 = v183[2];
        v185 = v183[3];
        swift_unknownObjectRetain();

        v18 = v443;
        if (v186)
        {
          swift_getObjectType();
          v187 = dispatch thunk of Actor.unownedExecutor.getter();
          v189 = v188;
          swift_unknownObjectRelease();
        }

        else
        {
          v187 = 0;
          v189 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v179);
        if (v189 | v187)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v187;
          *(v0 + 872) = v189;
        }

        v41 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_44;
      }

      v111 = *(v0 + 1352);
      v112 = *(v0 + 1120);
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *(v0 + 960) = v114;
      *v113 = 136315138;
      sub_10000BBC4(v110 + *(v111 + 20), v112, &unk_100840960, &qword_1006DBCB0);
      v115 = type metadata accessor for PendingActionContext(0);
      v116 = (*(*(v115 - 8) + 48))(v112, 1, v115);
      v117 = *(v0 + 1120);
      if (v116 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v163 = (v117 + *(v115 + 112));
        v164 = *v163;
        v165 = v163[1];

        sub_100267A1C(v117, type metadata accessor for PendingActionContext);
        if (v165)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v166 = *(v0 + 1256);
          v167 = *(v0 + 1208);
          v168 = *(v0 + 1200);
          v169 = sub_100141FE4(v164, v165, (v0 + 960));

          *(v113 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v107, v108, "server requested to delete the Account Key Signing Key with identifier %s", v113, 0xCu);
          sub_10000BB78(v114);

          (*(v167 + 8))(v166, v168);
          v18 = v443;
          v19 = &unk_1006BF9D0;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v165 = 0xE300000000000000;
      v164 = 4999502;
      goto LABEL_73;
    }

    if (v36 <= 2)
    {
      break;
    }

    if (v36 == 3)
    {
      v68 = *(v0 + 1424);
      v69 = *(v0 + 1408);
      v70 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v68, v69, type metadata accessor for ActionRequest);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = *(v0 + 1408);
        v74 = *(v0 + 1352);
        v75 = *(v0 + 1176);
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *(v0 + 976) = v77;
        *v76 = 136315138;
        sub_10000BBC4(v73 + *(v74 + 20), v75, &unk_100840960, &qword_1006DBCB0);
        v78 = type metadata accessor for PendingActionContext(0);
        v79 = (*(*(v78 - 8) + 48))(v75, 1, v78);
        v80 = *(v0 + 1176);
        v443 = v18;
        if (v79 == 1)
        {
          sub_10000BE18(v80, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_68;
        }

        v154 = *(v80 + 48);
        v155 = *(v80 + 56);
        v156 = *(v0 + 1176);

        sub_100267A1C(v156, type metadata accessor for PendingActionContext);
        if (v155)
        {
          v157 = String.debugDescription.getter();
          v159 = v158;
        }

        else
        {
LABEL_68:
          v157 = 0;
          v159 = 0xE000000000000000;
        }

        v424 = *(v0 + 1304);
        v429 = *(v0 + 1424);
        v160 = *(v0 + 1208);
        v161 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v162 = sub_100141FE4(v157, v159, (v0 + 976));

        *(v76 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v71, v72, "server requested an action to self heal: %s", v76, 0xCu);
        sub_10000BB78(v77);

        (*(v160 + 8))(v424, v161);
        sub_100267A1C(v429, type metadata accessor for ActionRequest);
LABEL_9:
        v18 = v443;
      }

      else
      {
        v127 = *(v0 + 1424);
        v128 = *(v0 + 1408);
        v129 = *(v0 + 1304);
        v130 = *(v0 + 1208);
        v131 = *(v0 + 1200);

        sub_100267A1C(v128, type metadata accessor for ActionRequest);
        (*(v130 + 8))(v129, v131);
        sub_100267A1C(v127, type metadata accessor for ActionRequest);
      }

      v19 = &unk_1006BF9D0;
      goto LABEL_11;
    }

    v443 = v18;
    v81 = *(v0 + 1336);
    defaultLogger()();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "display message received", v84, 2u);
    }

    v85 = *(v0 + 1424);
    v86 = *(v0 + 1352);
    v87 = *(v0 + 1336);
    v88 = *(v0 + 1208);
    v89 = *(v0 + 1200);
    v90 = *(v0 + 1024);
    v91 = *(v0 + 1008);
    v92 = *(v0 + 1000);

    v93 = *(v88 + 8);
    v93(v87, v89);
    sub_1002556F0(v85 + *(v86 + 20), v92, v91);
    type metadata accessor for IdentityProofingDataContext();
    v94 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v95 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v95 + 54);
    sub_100031B5C(&v95[4], v0 + 408);
    os_unfair_lock_unlock(v95 + 54);
    if (v447)
    {
      return;
    }

    v96 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v135 = sub_10054C274();
    v428 = v93;
    v136 = *(v0 + 1896);
    v137 = *(v0 + 1424);
    v138 = *(v0 + 1416);
    v139 = *(v0 + 1368);
    v448 = *(v0 + 1016);
    v140 = *(v0 + 1008);
    v141 = *(v0 + 1000);

    v142 = [v135 newBackgroundContext];
    *(v94 + 16) = v142;
    [v142 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v137, v138, type metadata accessor for ActionRequest);
    v143 = swift_allocObject();
    v143[2] = v94;
    v143[3] = v141;
    v143[4] = v140;
    v143[5] = v448;
    sub_100269F80(v138, v143 + ((v136 + 48) & ~v136), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v144 = *(v94 + 16);
    v145 = swift_allocObject();
    v145[2] = sub_100267BF8;
    v145[3] = v143;
    v145[4] = v419;
    v146 = swift_allocObject();
    *(v146 + 16) = sub_100267C5C;
    *(v146 + 24) = v145;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v146;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v147 = _Block_copy((v0 + 800));
    v148 = *(v0 + 840);

    [v144 performBlockAndWait:v147];
    _Block_release(v147);
    LOBYTE(v147) = swift_isEscapingClosureAtFileLocation();

    if (v147)
    {
      __break(1u);
      goto LABEL_163;
    }

    if (*v419)
    {
      v149 = *v419;
      swift_willThrow();

      v18 = v443;
      v19 = &unk_1006BF9D0;
      v150 = *(v0 + 1328);
      v151 = *(v0 + 1200);
      v152 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v428(v150, v151);
    }

    else
    {

      v18 = v443;
      v19 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v447 = 0;
LABEL_11:
    v1 = *(v0 + 1568) + 1;
    if (v1 == *(v0 + 1528))
    {
      goto LABEL_2;
    }
  }

  if (!v36)
  {
    v97 = *(v0 + 1272);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    v99 = os_log_type_enabled(v38, v98);
    v41 = *(v0 + 1424);
    v42 = *(v0 + 1272);
    v43 = *(v0 + 1208);
    v44 = *(v0 + 1200);
    if (v99)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = v98;
      v47 = v38;
      v48 = "server requested an action to wait for update";
      goto LABEL_42;
    }

LABEL_43:

    (*(v43 + 8))(v42, v44);
LABEL_44:
    sub_100267A1C(v41, type metadata accessor for ActionRequest);
    goto LABEL_11;
  }

  if (v36 != 2)
  {
    v214 = *(v0 + 1312);
    defaultLogger()();
    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      *v217 = 0;
      _os_log_impl(&_mh_execute_header, v215, v216, "Starting Provisioning flow", v217, 2u);
    }

    v218 = *(v0 + 1312);
    v219 = *(v0 + 1208);
    v220 = *(v0 + 1200);
    v221 = *(v0 + 992);

    (*(v219 + 8))(v218, v220);
    if (*(v221 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v302 = *(v0 + 1424);
    v303 = *(*(v0 + 1352) + 20);
    v304 = swift_task_alloc();
    *(v0 + 1592) = v304;
    *v304 = v0;
    v304[1] = sub_10023710C;
    v305 = *(v0 + 1024);
    v306 = *(v0 + 1016);
    v307 = *(v0 + 1008);
    v308 = *(v0 + 1000);

    sub_100229698(v302 + v303, v308, v307, v306, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  v49 = *(v0 + 1320);
  defaultLogger()();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "server requested an action to execute new workflow", v52, 2u);
  }

  v53 = *(v0 + 1424);
  v54 = *(v0 + 1352);
  v55 = *(v0 + 1320);
  v56 = *(v0 + 1208);
  v57 = *(v0 + 1200);
  v58 = *(v0 + 1192);

  (*(v56 + 8))(v55, v57);
  v59 = *(v54 + 20);
  sub_10000BBC4(v53 + v59, v58, &unk_100840960, &qword_1006DBCB0);
  v60 = type metadata accessor for PendingActionContext(0);
  v61 = *(*(v60 - 8) + 48);
  v62 = v61(v58, 1, v60);
  v63 = *(v0 + 1192);
  if (v62 == 1)
  {
    sub_10000BE18(v63, &unk_100840960, &qword_1006DBCB0);
    v64 = 3;
  }

  else
  {
    v64 = *(v63 + *(v60 + 76));
    sub_100267A1C(v63, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v64;
  v118 = *(v0 + 1184);
  sub_10000BBC4(v53 + v59, v118, &unk_100840960, &qword_1006DBCB0);
  v119 = v61(v118, 1, v60);
  v120 = *(v0 + 1184);
  v121 = *(v0 + 1096);
  if (v119 == 1)
  {
    sub_10000BE18(v120, &unk_100840960, &qword_1006DBCB0);
    v122 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v122 - 8) + 56))(v121, 1, 1, v122);
  }

  else
  {
    v123 = *(v60 + 72);
    v124 = *(v0 + 1184);
    sub_10000BBC4(v120 + v123, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v124, type metadata accessor for PendingActionContext);
  }

  v125 = *(v0 + 1096);
  v126 = *(v0 + 1024);
  sub_1002593E4(v125);
  sub_10000BE18(v125, &qword_100835968, &qword_1006DBC90);
  if (v64 <= 1)
  {
    v19 = &unk_1006BF9D0;
    v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v153)
    {
      goto LABEL_108;
    }

    goto LABEL_65;
  }

  v19 = &unk_1006BF9D0;
  if (v64 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v18 = *(v0 + 1909);
    goto LABEL_11;
  }

LABEL_108:
  v254 = swift_task_alloc();
  *(v0 + 1576) = v254;
  *v254 = v0;
  v254[1] = sub_1002342A8;
  v255 = *(v0 + 1024);
  v256 = *(v0 + 1008);
  v257 = *(v0 + 1000);

  sub_100259898(v53 + v59, v257, v256);
}

uint64_t sub_100239F30()
{
  v2 = *v1;
  v3 = (*v1)[207];
  v4 = *v1;
  v2[208] = v0;

  v5 = v2[206];
  if (v0)
  {
    v6 = v2[192];
    v7 = v2[190];
    sub_10000BE18(v2[183], &qword_10083E3E8, &unk_1006DBD00);

    swift_bridgeObjectRelease_n();

    v8 = sub_10024FDE8;
  }

  else
  {
    sub_10000BE18(v2[183], &qword_10083E3E8, &unk_1006DBD00);

    v8 = sub_10023A0BC;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_10023A0BC()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1128);
  sub_10000BBC4(*(v0 + 1424) + *(v0 + 1904), v4, &unk_100840960, &qword_1006DBCB0);
  if (v2(v4, 1, v3) != 1)
  {
    v7 = *(v0 + 1128);
    v9 = *(v7 + 64);
    v8 = *(v7 + 72);

    sub_100267A1C(v7, type metadata accessor for PendingActionContext);
    if (v8)
    {
      v478._countAndFlagsBits = v9;
      v478._object = v8;
      v10 = sub_100265C7C(v478);
      if (v10 <= 2)
      {
        if (!v10)
        {

LABEL_13:
          v12 = *(v0 + 1280);
          defaultLogger()();
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v13, v14, "Setting notificationAction to nil...", v15, 2u);
          }

          v16 = *(v0 + 1616);
          v17 = *(v0 + 1608);
          v467 = *(v0 + 1504);
          v470 = *(v0 + 1512);
          v18 = *(v0 + 1496);
          v19 = *(v0 + 1488);
          v20 = *(v0 + 1424);
          v21 = *(v0 + 1352);
          v22 = *(v0 + 1280);
          v23 = *(v0 + 1200);

          v17(v22, v23);
          sub_10000BE18(v19, &qword_10083E3E8, &unk_1006DBD00);
          sub_100267A1C(v20, type metadata accessor for ActionRequest);
          sub_10000BE18(v18, &qword_10083E3E8, &unk_1006DBD00);
          v467(v18, 1, 1, v21);
          goto LABEL_17;
        }
      }

      else if (v10 > 4 && v10 != 5)
      {
        goto LABEL_16;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v24 = *(v0 + 1424);
    sub_10000BE18(*(v0 + 1488), &qword_10083E3E8, &unk_1006DBD00);
    sub_100267A1C(v24, type metadata accessor for ActionRequest);
    goto LABEL_17;
  }

  v5 = *(v0 + 1424);
  v6 = *(v0 + 1128);
  sub_10000BE18(*(v0 + 1488), &qword_10083E3E8, &unk_1006DBD00);
  sub_100267A1C(v5, type metadata accessor for ActionRequest);
  sub_10000BE18(v6, &unk_100840960, &qword_1006DBCB0);
LABEL_17:
  v25 = *(v0 + 1568) + 1;
  if (v25 == *(v0 + 1528))
  {
LABEL_18:
    v26 = *(v0 + 1520);

    v27 = *(v0 + 1536);
    v28 = *(v0 + 1520);
    v29 = *(v0 + 1496);
    v30 = *(v0 + 1448);
    v31 = *(v0 + 1360);
    v32 = *(v0 + 1352);

    sub_10000BBC4(v29, v30, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v31 + 48))(v30, 1, v32) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v33 = *(v0 + 1496);
      v34 = *(v0 + 1488);
      v35 = *(v0 + 1480);
      v36 = *(v0 + 1472);
      v37 = *(v0 + 1464);
      v38 = *(v0 + 1456);
      v39 = *(v0 + 1440);
      v40 = *(v0 + 1432);
      v380 = *(v0 + 1424);
      v382 = *(v0 + 1416);
      v384 = *(v0 + 1408);
      v386 = *(v0 + 1400);
      v388 = *(v0 + 1392);
      v390 = *(v0 + 1384);
      v392 = *(v0 + 1376);
      v394 = *(v0 + 1344);
      v396 = *(v0 + 1336);
      v398 = *(v0 + 1328);
      v400 = *(v0 + 1320);
      v402 = *(v0 + 1312);
      v404 = *(v0 + 1304);
      v406 = *(v0 + 1296);
      v408 = *(v0 + 1288);
      v410 = *(v0 + 1280);
      v412 = *(v0 + 1272);
      v414 = *(v0 + 1264);
      v416 = *(v0 + 1256);
      v418 = *(v0 + 1248);
      v420 = *(v0 + 1240);
      v422 = *(v0 + 1232);
      v424 = *(v0 + 1224);
      v426 = *(v0 + 1216);
      v428 = *(v0 + 1192);
      v430 = *(v0 + 1184);
      v432 = *(v0 + 1176);
      v434 = *(v0 + 1168);
      v436 = *(v0 + 1160);
      v438 = *(v0 + 1152);
      v440 = *(v0 + 1144);
      v442 = *(v0 + 1136);
      v445 = *(v0 + 1128);
      v447 = *(v0 + 1120);
      v451 = *(v0 + 1112);
      v456 = *(v0 + 1104);
      v459 = *(v0 + 1096);
      v462 = *(v0 + 1088);
      v465 = *(v0 + 1080);
      v468 = *(v0 + 1072);
      v471 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v41 = *(v0 + 8);
LABEL_20:

      v41();
    }

    else
    {
      v214 = *(v0 + 1512);
      v215 = *(v0 + 1504);
      v216 = *(v0 + 1440);
      v217 = *(v0 + 1376);
      v218 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v217, type metadata accessor for ActionRequest);
      sub_100269FE8(v217, v216, type metadata accessor for ActionRequest);
      v215(v216, 0, 1, v218);
      v219 = swift_task_alloc();
      *(v0 + 1880) = v219;
      *v219 = v0;
      v219[1] = sub_10024F280;
      v220 = *(v0 + 1440);
      v221 = *(v0 + 1024);
      v222 = *(v0 + 1008);
      v223 = *(v0 + 1000);

      sub_1002550B8(v220, v223, v222);
    }

    return;
  }

  v443 = (v0 + 984);
  v42 = *(v0 + 1908);
  v472 = *(v0 + 1664);
  v463 = "redential list provided";
  v43 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v25;
    *(v0 + 1908) = v42;
    *(v0 + 1560) = v472;
    v52 = *(v0 + 1520);
    if (v25 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_165;
    }

    v53 = *(v0 + 1424);
    v54 = *(v0 + 1016);
    v55 = *(v0 + 1008);
    v56 = *(v0 + 1000);
    v57 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v52 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v57 * v25, v53, type metadata accessor for ActionRequest);
    sub_10025DCD8(v53, v56, v55, v54);
    v58 = *v53;
    v59 = v53[1];

    v479._countAndFlagsBits = v58;
    v479._object = v59;
    v60 = sub_10025DC8C(v479);
    if (v60 > 4)
    {
      if (v60 <= 7)
      {
        if (v60 != 6)
        {
          if (v60 == 7)
          {
            v61 = *(v0 + 1264);
            defaultLogger()();
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.debug.getter();
            v64 = os_log_type_enabled(v62, v63);
            v65 = *(v0 + 1424);
            v66 = *(v0 + 1264);
            v67 = *(v0 + 1208);
            v68 = *(v0 + 1200);
            if (v64)
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              v70 = v63;
              v71 = v62;
              v72 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_58:
              _os_log_impl(&_mh_execute_header, v71, v70, v72, v69, 2u);
              v43 = &unk_1006BF9D0;

              goto LABEL_59;
            }

            goto LABEL_59;
          }

          v224 = *(v0 + 1424);
          v225 = *(v0 + 1400);
          v226 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v224, v225, type metadata accessor for ActionRequest);
          v227 = Logger.logObject.getter();
          v228 = static os_log_type_t.debug.getter();
          v229 = os_log_type_enabled(v227, v228);
          v230 = *(v0 + 1400);
          LOBYTE(v467) = v42;
          if (!v229)
          {
            v261 = *(v0 + 1296);
            v262 = *(v0 + 1208);
            v263 = *(v0 + 1200);

            sub_100267A1C(v230, type metadata accessor for ActionRequest);
            v264 = *(v262 + 8);
            v264(v261, v263);
LABEL_131:
            v475 = v264;
            *(v0 + 1608) = v264;
            v290 = *(*(v0 + 1520) + 16);
            if (v290)
            {
              v291 = 0;
              v292 = 0;
              while (1)
              {
                v293 = *(v0 + 1520);
                if (v292 >= *(v293 + 16))
                {
                  break;
                }

                v294 = *(v0 + 1392);
                sub_100269FE8(v293 + v291 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v294, type metadata accessor for ActionRequest);
                v295 = *v294 == 0x5F4F545F444E4553 && v294[1] == 0xED0000454D4F4942;
                if (v295 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v296 = 0;
                  goto LABEL_142;
                }

                ++v292;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v291 += v57;
                if (v290 == v292)
                {
                  goto LABEL_140;
                }
              }

LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

LABEL_140:
            v296 = 1;
LABEL_142:
            v297 = *(v0 + 1512);
            v298 = *(v0 + 1488);
            v299 = *(v0 + 1480);
            v300 = *(v0 + 1288);
            (*(v0 + 1504))(v298, v296, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v298, v299, &qword_10083E3E8, &unk_1006DBD00);
            v301 = Logger.logObject.getter();
            v302 = static os_log_type_t.debug.getter();
            v303 = os_log_type_enabled(v301, v302);
            v304 = *(v0 + 1480);
            if (v303)
            {
              v305 = *(v0 + 1360);
              v306 = *(v0 + 1352);
              v307 = swift_slowAlloc();
              *v307 = 67109120;
              LODWORD(v306) = (*(v305 + 48))(v304, 1, v306) != 1;
              sub_10000BE18(v304, &qword_10083E3E8, &unk_1006DBD00);
              *(v307 + 4) = v306;
              _os_log_impl(&_mh_execute_header, v301, v302, "Biome data exists to be donated? -> %{BOOL}d", v307, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v308 = v301;
            v309 = *(v0 + 1544);
            v310 = *(v0 + 1488);
            v311 = *(v0 + 1472);
            v312 = *(v0 + 1360);
            v313 = *(v0 + 1352);
            v314 = *(v0 + 1288);
            v315 = *(v0 + 1208);
            v316 = *(v0 + 1200);
            v317 = *(v0 + 1024);

            *(v0 + 1616) = (v315 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v475(v314, v316);
            v318 = *(v317 + v309);
            sub_10000BBC4(v310, v311, &qword_10083E3E8, &unk_1006DBD00);
            v319 = *(v312 + 48);
            v320 = (v319)(v311, 1, v313);
            v321 = *(v0 + 1472);
            if (v320 == 1)
            {
              v322 = *(v0 + 1160);

              sub_10000BE18(v321, &qword_10083E3E8, &unk_1006DBD00);
              v323 = type metadata accessor for PendingActionContext(0);
              (*(*(v323 - 8) + 56))(v322, 1, 1, v323);
            }

            else
            {
              sub_10000BBC4(v321 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v321, type metadata accessor for ActionRequest);
            }

            v324 = *(v0 + 1160);
            v325 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v324);

            sub_10000BE18(v324, &unk_100840960, &qword_1006DBCB0);
            v463 = v319;
            if (*(v325 + 152) == 1)
            {
LABEL_166:
              v348 = *(v0 + 1424);
              v349 = *(v0 + 1152);
              v350 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v350;
              sub_10000BBC4(v348 + v350, v349, &unk_100840960, &qword_1006DBCB0);
              v351 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v351;
              v352 = *(v351 - 8);
              v353 = *(v352 + 48);
              *(v0 + 1632) = v353;
              *(v0 + 1640) = (v352 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v476 = v353;
              v354 = v353(v349, 1, v351);
              v355 = *(v0 + 1152);
              v450 = v350;
              v455 = v348;
              if (v354 == 1)
              {
                sub_10000BE18(v355, &unk_100840960, &qword_1006DBCB0);
                v461 = 0;
                v356 = 0;
              }

              else
              {
                v356 = *(v355 + 72);
                v461 = *(v355 + 64);
                v357 = *(v0 + 1152);

                sub_100267A1C(v357, type metadata accessor for PendingActionContext);
              }

              v458 = v356;
              *(v0 + 1648) = v356;
              v358 = *(v0 + 1488);
              v359 = *(v0 + 1456);
              v360 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v358, v359, &qword_10083E3E8, &unk_1006DBD00);
              v361 = (v463)(v359, 1, v360);
              v362 = *(v0 + 1456);
              if (v361 == 1)
              {
                v363 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v352 + 56))(v363, 1, 1, v351);
                v364 = v467;
                v366 = v450;
                v365 = v455;
              }

              else
              {
                v367 = *(v0 + 1144);
                sub_10000BBC4(v362 + *(*(v0 + 1352) + 20), v367, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v362, type metadata accessor for ActionRequest);
                v364 = v467;
                v366 = v450;
                v365 = v455;
                v476(v367, 1, v351);
              }

              v368 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v365 + v366, v368, &unk_100840960, &qword_1006DBCB0);
              v369 = v476(v368, 1, v351);
              v370 = *(v0 + 1136);
              if (v369 == 1)
              {
                sub_10000BE18(v370, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v371 = *(v370 + *(v351 + 124));
                sub_100267A1C(v370, type metadata accessor for PendingActionContext);
              }

              v372 = swift_task_alloc();
              *(v0 + 1656) = v372;
              *v372 = v0;
              v372[1] = sub_100239F30;
              v373 = *(v0 + 1536);
              v374 = *(v0 + 1464);
              v375 = *(v0 + 1024);
              v376 = *(v0 + 1016);
              v377 = *(v0 + 1008);
              v378 = *(v0 + 1000);

              sub_10025744C(v461, v458, v373, v378, v377, v376, v364, v374);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_166;
            }

LABEL_165:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_166;
          }

          v231 = *(v0 + 1352);
          v232 = *(v0 + 1168);
          v233 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          *(v0 + 968) = v234;
          *v233 = 136315138;
          sub_10000BBC4(v230 + *(v231 + 20), v232, &unk_100840960, &qword_1006DBCB0);
          v235 = type metadata accessor for PendingActionContext(0);
          v236 = (*(*(v235 - 8) + 48))(v232, 1, v235);
          v237 = *(v0 + 1168);
          if (v236 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v282 = *(v237 + 64);
            v283 = *(v237 + 72);

            sub_100267A1C(v237, type metadata accessor for PendingActionContext);
            if (v283)
            {
              v284 = String.debugDescription.getter();
              v286 = v285;

LABEL_130:
              v474 = *(v0 + 1296);
              v287 = *(v0 + 1208);
              v288 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v289 = sub_100141FE4(v284, v286, (v0 + 968));

              *(v233 + 4) = v289;
              _os_log_impl(&_mh_execute_header, v227, v228, "server requested an action to set state:%s", v233, 0xCu);
              sub_10000BB78(v234);

              v264 = *(v287 + 8);
              v264(v474, v288);
              goto LABEL_131;
            }
          }

          v284 = 0;
          v286 = 0xE000000000000000;
          goto LABEL_130;
        }

        LODWORD(v467) = v42;
        v124 = *(v0 + 1344);
        defaultLogger()();
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v125, v126, "display notification received", v127, 2u);
        }

        v44 = *(v0 + 1512);
        v45 = *(v0 + 1504);
        v46 = *(v0 + 1496);
        v47 = *(v0 + 1424);
        v48 = *(v0 + 1352);
        v49 = *(v0 + 1344);
        v50 = *(v0 + 1208);
        v51 = *(v0 + 1200);

        (*(v50 + 8))(v49, v51);
        sub_10000BE18(v46, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v47, v46, type metadata accessor for ActionRequest);
        v45(v46, 0, 1, v48);
        goto LABEL_25;
      }

      if (v60 != 8)
      {
        if (v60 != 10)
        {
          v246 = *(v0 + 1248);
          defaultLogger()();
          v247 = Logger.logObject.getter();
          v248 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v247, v248))
          {
            v249 = swift_slowAlloc();
            *v249 = 0;
            _os_log_impl(&_mh_execute_header, v247, v248, "server requested an action to store token", v249, 2u);
          }

          v250 = *(v0 + 1424);
          v251 = *(v0 + 1352);
          v252 = *(v0 + 1248);
          v253 = *(v0 + 1208);
          v254 = *(v0 + 1200);
          v255 = *(v0 + 1104);

          v256 = *(v253 + 8);
          *(v0 + 1672) = v256;
          v256(v252, v254);
          sub_10000BBC4(v250 + *(v251 + 20), v255, &unk_100840960, &qword_1006DBCB0);
          v257 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v257 - 8) + 48))(v255, 1, v257) == 1)
          {
            v258 = *(v0 + 1536);
            v259 = *(v0 + 1520);
            v260 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v260, &unk_100840960, &qword_1006DBCB0);
LABEL_159:
            v335 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v335, type metadata accessor for ActionRequest);
            v336 = *(v0 + 1488);
            v337 = *(v0 + 1480);
            v338 = *(v0 + 1472);
            v339 = *(v0 + 1464);
            v340 = *(v0 + 1456);
            v341 = *(v0 + 1448);
            v342 = *(v0 + 1440);
            v343 = *(v0 + 1432);
            v379 = *(v0 + 1424);
            v381 = *(v0 + 1416);
            v383 = *(v0 + 1408);
            v385 = *(v0 + 1400);
            v387 = *(v0 + 1392);
            v389 = *(v0 + 1384);
            v391 = *(v0 + 1376);
            v393 = *(v0 + 1344);
            v395 = *(v0 + 1336);
            v397 = *(v0 + 1328);
            v399 = *(v0 + 1320);
            v401 = *(v0 + 1312);
            v403 = *(v0 + 1304);
            v405 = *(v0 + 1296);
            v407 = *(v0 + 1288);
            v409 = *(v0 + 1280);
            v411 = *(v0 + 1272);
            v413 = *(v0 + 1264);
            v415 = *(v0 + 1256);
            v417 = *(v0 + 1248);
            v419 = *(v0 + 1240);
            v421 = *(v0 + 1232);
            v423 = *(v0 + 1224);
            v425 = *(v0 + 1216);
            v427 = *(v0 + 1192);
            v429 = *(v0 + 1184);
            v431 = *(v0 + 1176);
            v433 = *(v0 + 1168);
            v435 = *(v0 + 1160);
            v437 = *(v0 + 1152);
            v439 = *(v0 + 1144);
            v441 = *(v0 + 1136);
            v444 = *(v0 + 1128);
            v446 = *(v0 + 1120);
            v449 = *(v0 + 1112);
            v454 = *(v0 + 1104);
            v457 = *(v0 + 1096);
            v460 = *(v0 + 1088);
            v464 = *(v0 + 1080);
            v466 = *(v0 + 1072);
            v469 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v41 = *(v0 + 8);
            goto LABEL_20;
          }

          v265 = *(v0 + 1104);
          v266 = (v265 + *(v257 + 128));
          v267 = *v266;
          *(v0 + 1680) = *v266;
          v268 = v266[1];
          *(v0 + 1688) = v268;
          v269 = v266[2];
          *(v0 + 1696) = v266[3];
          sub_1000AB7D8(v267, v268);
          sub_100267A1C(v265, type metadata accessor for PendingActionContext);
          if (!v268)
          {
            v333 = *(v0 + 1536);
            v334 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_159;
          }

          v270 = *(v0 + 1072);
          v271 = *(v0 + 1064);
          v272 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v273 = String.data(using:allowLossyConversion:)();
          v275 = v274;
          *(v0 + 1704) = v273;
          *(v0 + 1712) = v274;
          (*(v271 + 8))(v270, v272);
          if (v275 >> 60 == 15)
          {
            v276 = *(v0 + 1536);
            v277 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_159;
          }

          if (qword_100832C20 == -1)
          {
LABEL_161:
            v344 = *(qword_100882228 + 16);
            *(v0 + 1720) = v344;
            v345 = v344;
            v346 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v346;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v347 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v347;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v345 retrievePIITokenFromSyncableKeyStoreForIdentifier:v346 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_180:
          swift_once();
          goto LABEL_161;
        }

        v89 = *(v0 + 1232);
        defaultLogger()();
        v62 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        v91 = os_log_type_enabled(v62, v90);
        v65 = *(v0 + 1424);
        v66 = *(v0 + 1232);
        v67 = *(v0 + 1208);
        v68 = *(v0 + 1200);
        if (!v91)
        {
          goto LABEL_59;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = v90;
        v71 = v62;
        v72 = "INVALID ACTION REQUEST";
        goto LABEL_58;
      }

      v128 = *(v0 + 1424);
      v129 = *(v0 + 1384);
      v130 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v128, v129, type metadata accessor for ActionRequest);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.info.getter();
      v133 = os_log_type_enabled(v131, v132);
      v134 = *(v0 + 1384);
      LODWORD(v467) = v42;
      if (!v133)
      {
        v156 = *(v0 + 1256);
        v157 = *(v0 + 1208);
        v158 = *(v0 + 1200);

        sub_100267A1C(v134, type metadata accessor for ActionRequest);
        (*(v157 + 8))(v156, v158);
LABEL_90:
        v194 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v194, &unk_100840960, &qword_1006DBCB0);
        v195 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v195 - 8) + 48))(v194, 1, v195) == 1)
        {
          v196 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v196, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_27;
        }

        v197 = *(v0 + 1112);
        v198 = (v197 + *(v195 + 112));
        v200 = *v198;
        v199 = v198[1];

        sub_100267A1C(v197, type metadata accessor for PendingActionContext);
        if (!v199)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v42 = v467;
          goto LABEL_27;
        }

        v201 = *(v0 + 1088);
        v202 = *(v0 + 1080);
        v203 = v43;
        v204 = *(v0 + 1024);
        v205 = type metadata accessor for TaskPriority();
        v206 = *(v205 - 8);
        (*(v206 + 56))(v201, 1, 1, v205);
        v207 = swift_allocObject();
        v207[2] = 0;
        v207[3] = 0;
        v207[4] = v204;
        v207[5] = v200;
        v207[6] = v199;
        sub_10000BBC4(v201, v202, &unk_100845860, v203);
        LODWORD(v201) = (*(v206 + 48))(v202, 1, v205);

        v208 = *(v0 + 1080);
        if (v201 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v203);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v206 + 8))(v208, v205);
        }

        v43 = v203;
        v210 = v207[2];
        v209 = v207[3];
        swift_unknownObjectRetain();

        v42 = v467;
        if (v210)
        {
          swift_getObjectType();
          v211 = dispatch thunk of Actor.unownedExecutor.getter();
          v213 = v212;
          swift_unknownObjectRelease();
        }

        else
        {
          v211 = 0;
          v213 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v203);
        if (v213 | v211)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v211;
          *(v0 + 872) = v213;
        }

        v65 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_60;
      }

      v135 = *(v0 + 1352);
      v136 = *(v0 + 1120);
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *(v0 + 960) = v138;
      *v137 = 136315138;
      sub_10000BBC4(v134 + *(v135 + 20), v136, &unk_100840960, &qword_1006DBCB0);
      v139 = type metadata accessor for PendingActionContext(0);
      v140 = (*(*(v139 - 8) + 48))(v136, 1, v139);
      v141 = *(v0 + 1120);
      if (v140 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v187 = (v141 + *(v139 + 112));
        v188 = *v187;
        v189 = v187[1];

        sub_100267A1C(v141, type metadata accessor for PendingActionContext);
        if (v189)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_89:
          v190 = *(v0 + 1256);
          v191 = *(v0 + 1208);
          v192 = *(v0 + 1200);
          v193 = sub_100141FE4(v188, v189, (v0 + 960));

          *(v137 + 4) = v193;
          _os_log_impl(&_mh_execute_header, v131, v132, "server requested to delete the Account Key Signing Key with identifier %s", v137, 0xCu);
          sub_10000BB78(v138);

          (*(v191 + 8))(v190, v192);
          v42 = v467;
          v43 = &unk_1006BF9D0;
          goto LABEL_90;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v189 = 0xE300000000000000;
      v188 = 4999502;
      goto LABEL_89;
    }

    if (v60 <= 2)
    {
      break;
    }

    if (v60 == 3)
    {
      v92 = *(v0 + 1424);
      v93 = *(v0 + 1408);
      v94 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v92, v93, type metadata accessor for ActionRequest);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = *(v0 + 1408);
        v98 = *(v0 + 1352);
        v99 = *(v0 + 1176);
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *(v0 + 976) = v101;
        *v100 = 136315138;
        sub_10000BBC4(v97 + *(v98 + 20), v99, &unk_100840960, &qword_1006DBCB0);
        v102 = type metadata accessor for PendingActionContext(0);
        v103 = (*(*(v102 - 8) + 48))(v99, 1, v102);
        v104 = *(v0 + 1176);
        LODWORD(v467) = v42;
        if (v103 == 1)
        {
          sub_10000BE18(v104, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_84;
        }

        v178 = *(v104 + 48);
        v179 = *(v104 + 56);
        v180 = *(v0 + 1176);

        sub_100267A1C(v180, type metadata accessor for PendingActionContext);
        if (v179)
        {
          v181 = String.debugDescription.getter();
          v183 = v182;
        }

        else
        {
LABEL_84:
          v181 = 0;
          v183 = 0xE000000000000000;
        }

        v448 = *(v0 + 1304);
        v453 = *(v0 + 1424);
        v184 = *(v0 + 1208);
        v185 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v186 = sub_100141FE4(v181, v183, (v0 + 976));

        *(v100 + 4) = v186;
        _os_log_impl(&_mh_execute_header, v95, v96, "server requested an action to self heal: %s", v100, 0xCu);
        sub_10000BB78(v101);

        (*(v184 + 8))(v448, v185);
        sub_100267A1C(v453, type metadata accessor for ActionRequest);
LABEL_25:
        v42 = v467;
      }

      else
      {
        v151 = *(v0 + 1424);
        v152 = *(v0 + 1408);
        v153 = *(v0 + 1304);
        v154 = *(v0 + 1208);
        v155 = *(v0 + 1200);

        sub_100267A1C(v152, type metadata accessor for ActionRequest);
        (*(v154 + 8))(v153, v155);
        sub_100267A1C(v151, type metadata accessor for ActionRequest);
      }

      v43 = &unk_1006BF9D0;
      goto LABEL_27;
    }

    LODWORD(v467) = v42;
    v105 = *(v0 + 1336);
    defaultLogger()();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "display message received", v108, 2u);
    }

    v109 = *(v0 + 1424);
    v110 = *(v0 + 1352);
    v111 = *(v0 + 1336);
    v112 = *(v0 + 1208);
    v113 = *(v0 + 1200);
    v114 = *(v0 + 1024);
    v115 = *(v0 + 1008);
    v116 = *(v0 + 1000);

    v117 = *(v112 + 8);
    v117(v111, v113);
    sub_1002556F0(v109 + *(v110 + 20), v116, v115);
    type metadata accessor for IdentityProofingDataContext();
    v118 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v119 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v119 + 54);
    sub_100031B5C(&v119[4], v0 + 408);
    os_unfair_lock_unlock(v119 + 54);
    if (v472)
    {
      return;
    }

    v120 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v159 = sub_10054C274();
    v452 = v117;
    v160 = *(v0 + 1896);
    v161 = *(v0 + 1424);
    v162 = *(v0 + 1416);
    v163 = *(v0 + 1368);
    v473 = *(v0 + 1016);
    v164 = *(v0 + 1008);
    v165 = *(v0 + 1000);

    v166 = [v159 newBackgroundContext];
    *(v118 + 16) = v166;
    [v166 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v161, v162, type metadata accessor for ActionRequest);
    v167 = swift_allocObject();
    v167[2] = v118;
    v167[3] = v165;
    v167[4] = v164;
    v167[5] = v473;
    sub_100269F80(v162, v167 + ((v160 + 48) & ~v160), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v168 = *(v118 + 16);
    v169 = swift_allocObject();
    v169[2] = sub_100267BF8;
    v169[3] = v167;
    v169[4] = v443;
    v170 = swift_allocObject();
    *(v170 + 16) = sub_100267C5C;
    *(v170 + 24) = v169;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v170;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v171 = _Block_copy((v0 + 800));
    v172 = *(v0 + 840);

    [v168 performBlockAndWait:v171];
    _Block_release(v171);
    LOBYTE(v171) = swift_isEscapingClosureAtFileLocation();

    if (v171)
    {
      __break(1u);
      goto LABEL_179;
    }

    if (*v443)
    {
      v173 = *v443;
      swift_willThrow();

      v42 = v467;
      v43 = &unk_1006BF9D0;
      v174 = *(v0 + 1328);
      v175 = *(v0 + 1200);
      v176 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v452(v174, v175);
    }

    else
    {

      v42 = v467;
      v43 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v472 = 0;
LABEL_27:
    v25 = *(v0 + 1568) + 1;
    if (v25 == *(v0 + 1528))
    {
      goto LABEL_18;
    }
  }

  if (!v60)
  {
    v121 = *(v0 + 1272);
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    v123 = os_log_type_enabled(v62, v122);
    v65 = *(v0 + 1424);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1208);
    v68 = *(v0 + 1200);
    if (v123)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = v122;
      v71 = v62;
      v72 = "server requested an action to wait for update";
      goto LABEL_58;
    }

LABEL_59:

    (*(v67 + 8))(v66, v68);
LABEL_60:
    sub_100267A1C(v65, type metadata accessor for ActionRequest);
    goto LABEL_27;
  }

  if (v60 != 2)
  {
    v238 = *(v0 + 1312);
    defaultLogger()();
    v239 = Logger.logObject.getter();
    v240 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&_mh_execute_header, v239, v240, "Starting Provisioning flow", v241, 2u);
    }

    v242 = *(v0 + 1312);
    v243 = *(v0 + 1208);
    v244 = *(v0 + 1200);
    v245 = *(v0 + 992);

    (*(v243 + 8))(v242, v244);
    if (*(v245 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v326 = *(v0 + 1424);
    v327 = *(*(v0 + 1352) + 20);
    v328 = swift_task_alloc();
    *(v0 + 1592) = v328;
    *v328 = v0;
    v328[1] = sub_10023710C;
    v329 = *(v0 + 1024);
    v330 = *(v0 + 1016);
    v331 = *(v0 + 1008);
    v332 = *(v0 + 1000);

    sub_100229698(v326 + v327, v332, v331, v330, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  v73 = *(v0 + 1320);
  defaultLogger()();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "server requested an action to execute new workflow", v76, 2u);
  }

  v77 = *(v0 + 1424);
  v78 = *(v0 + 1352);
  v79 = *(v0 + 1320);
  v80 = *(v0 + 1208);
  v81 = *(v0 + 1200);
  v82 = *(v0 + 1192);

  (*(v80 + 8))(v79, v81);
  v83 = *(v78 + 20);
  sub_10000BBC4(v77 + v83, v82, &unk_100840960, &qword_1006DBCB0);
  v84 = type metadata accessor for PendingActionContext(0);
  v85 = *(*(v84 - 8) + 48);
  v86 = v85(v82, 1, v84);
  v87 = *(v0 + 1192);
  if (v86 == 1)
  {
    sub_10000BE18(v87, &unk_100840960, &qword_1006DBCB0);
    v88 = 3;
  }

  else
  {
    v88 = *(v87 + *(v84 + 76));
    sub_100267A1C(v87, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v88;
  v142 = *(v0 + 1184);
  sub_10000BBC4(v77 + v83, v142, &unk_100840960, &qword_1006DBCB0);
  v143 = v85(v142, 1, v84);
  v144 = *(v0 + 1184);
  v145 = *(v0 + 1096);
  if (v143 == 1)
  {
    sub_10000BE18(v144, &unk_100840960, &qword_1006DBCB0);
    v146 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v146 - 8) + 56))(v145, 1, 1, v146);
  }

  else
  {
    v147 = *(v84 + 72);
    v148 = *(v0 + 1184);
    sub_10000BBC4(v144 + v147, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v148, type metadata accessor for PendingActionContext);
  }

  v149 = *(v0 + 1096);
  v150 = *(v0 + 1024);
  sub_1002593E4(v149);
  sub_10000BE18(v149, &qword_100835968, &qword_1006DBC90);
  if (v88 <= 1)
  {
    v43 = &unk_1006BF9D0;
    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v177)
    {
      goto LABEL_124;
    }

    goto LABEL_81;
  }

  v43 = &unk_1006BF9D0;
  if (v88 == 3)
  {
LABEL_81:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v42 = *(v0 + 1909);
    goto LABEL_27;
  }

LABEL_124:
  v278 = swift_task_alloc();
  *(v0 + 1576) = v278;
  *v278 = v0;
  v278[1] = sub_1002342A8;
  v279 = *(v0 + 1024);
  v280 = *(v0 + 1008);
  v281 = *(v0 + 1000);

  sub_100259898(v77 + v83, v281, v280);
}

uint64_t sub_10023D0AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1736) = v2;
  if (v2)
  {
    v3 = sub_100250168;
  }

  else
  {
    v3 = sub_10023D1BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10023D1BC()
{
  v1 = v0[216];
  v2 = v0[111];

  v3 = v0[195];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_100031B5C(&v4[4], (v0 + 26));
  if (v3)
  {

    os_unfair_lock_unlock(v4 + 54);
  }

  else
  {
    v5 = v0[127];
    v6 = v0[126];
    v7 = v0[125];
    os_unfair_lock_unlock(v4 + 54);
    v8 = v0[33];
    v0[218] = v8;

    sub_100031918((v0 + 26));
    v9 = swift_allocObject();
    v0[219] = v9;
    v9[2] = v7;
    v9[3] = v6;
    v9[4] = v5;
    v10 = *(v8 + 16);
    v11 = swift_allocObject();
    v0[220] = v11;
    *(v11 + 16) = sub_100267AA8;
    *(v11 + 24) = v9;
    v12 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v13 = swift_task_alloc();
    v0[221] = v13;
    v14 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    *v13 = v0;
    v13[1] = sub_10023D3CC;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 112, sub_100267AC8, v11, v14);
  }
}

uint64_t sub_10023D3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1768);
  v12 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v4 = *(v2 + 1760);
    v5 = *(v2 + 1696);
    v6 = *(v2 + 1688);

    v7 = sub_100240874;
  }

  else
  {
    v8 = *(v2 + 1760);
    v9 = *(v2 + 1752);
    v10 = *(v2 + 1744);

    *(v2 + 1784) = *(v2 + 896);
    v7 = sub_10023D534;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10023D534()
{
  if (*(v0 + 1792))
  {
    v506 = *(v0 + 1784);
    v1 = *(v0 + 1720);
    v2 = *(v0 + 1712);
    v3 = *(v0 + 1704);
    v4 = *(v0 + 1688);
    v5 = *(v0 + 1680);
    if (*(v0 + 1736))
    {
      v6 = v0 + 80;
      v499 = *(v0 + 1720);
      v7 = String._bridgeToObjectiveC()();
      *(v0 + 1800) = v7;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 1808) = isa;
      v9 = String._bridgeToObjectiveC()();
      *(v0 + 1816) = v9;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_10024382C;
      v10 = swift_continuation_init();
      *(v0 + 728) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 704) = v10;
      *(v0 + 672) = _NSConcreteStackBlock;
      *(v0 + 680) = 1107296256;
      *(v0 + 688) = sub_100429100;
      *(v0 + 696) = &unk_10080B168;
      [v499 storePIITokenInSyncableKeyStoreForIdentifier:v7 data:isa credentialIdentifier:v9 completion:v0 + 672];
    }

    else
    {
      v6 = v0 + 144;
      v37 = *(v0 + 1552);
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1006BF520;
      *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v38 + 72) = &type metadata for Data;
      *(v38 + 40) = v39;
      *(v38 + 48) = v3;
      *(v38 + 56) = v2;
      sub_1000363B4(v3, v2);
      sub_10003D8DC(v38);
      swift_setDeallocating();
      sub_10000BE18(v38 + 32, &qword_100834450, &unk_1006BFED0);
      swift_deallocClassInstance();
      v40 = String._bridgeToObjectiveC()();
      *(v0 + 1832) = v40;
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 1840) = v41;

      v42 = String._bridgeToObjectiveC()();
      *(v0 + 1848) = v42;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_100246764;
      v43 = swift_continuation_init();
      *(v0 + 792) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 768) = v43;
      *(v0 + 736) = _NSConcreteStackBlock;
      *(v0 + 744) = 1107296256;
      *(v0 + 752) = sub_100429100;
      *(v0 + 760) = &unk_10080B190;
      [v1 updatePIITokenInSyncableKeyStoreForIdentifier:v40 attributesToUpdate:v41 credentialIdentifier:v42 completion:v0 + 736];
    }

    v44 = v6;
    goto LABEL_12;
  }

  v11 = *(v0 + 1696);
  v12 = *(v0 + 1688);
  v13 = *(v0 + 1900);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1032);

  (*(v15 + 104))(v14, v13, v16);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  v17 = swift_allocError();
  v404 = 0x8000000100707AB0;
  v405 = 791;
  v403 = 0xD000000000000032;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  if (*(v0 + 1736))
  {
    v18 = *(v0 + 1536);
    v19 = *(v0 + 1520);
    swift_bridgeObjectRelease_n();

    v493 = *(v0 + 1712);
    v485 = *(v0 + 1720);
    v489 = *(v0 + 1704);
    v481 = *(v0 + 1424);
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1040);
    v22 = *(v0 + 1032);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD00000000000001BLL;
    v23._object = 0x8000000100707AF0;
    String.append(_:)(v23);
    *(v0 + 952) = v17;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v24 = *(v0 + 912);
    v25 = *(v0 + 920);
    (*(v21 + 104))(v20, enum case for DIPError.Code.failedToStorePIIToken(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    v26 = v481;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v489, v493);

LABEL_6:
    sub_100267A1C(v26, type metadata accessor for ActionRequest);
    v27 = *(v0 + 1488);
    v28 = *(v0 + 1480);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1456);
    v32 = *(v0 + 1448);
    v33 = *(v0 + 1440);
    v34 = *(v0 + 1432);
    v406 = *(v0 + 1424);
    v407 = *(v0 + 1416);
    v409 = *(v0 + 1408);
    v411 = *(v0 + 1400);
    v413 = *(v0 + 1392);
    v415 = *(v0 + 1384);
    v417 = *(v0 + 1376);
    v419 = *(v0 + 1344);
    v421 = *(v0 + 1336);
    v423 = *(v0 + 1328);
    v425 = *(v0 + 1320);
    v427 = *(v0 + 1312);
    v429 = *(v0 + 1304);
    v431 = *(v0 + 1296);
    v433 = *(v0 + 1288);
    v435 = *(v0 + 1280);
    v437 = *(v0 + 1272);
    v439 = *(v0 + 1264);
    v441 = *(v0 + 1256);
    v443 = *(v0 + 1248);
    v445 = *(v0 + 1240);
    v447 = *(v0 + 1232);
    v449 = *(v0 + 1224);
    v451 = *(v0 + 1216);
    v453 = *(v0 + 1192);
    v455 = *(v0 + 1184);
    v457 = *(v0 + 1176);
    v459 = *(v0 + 1168);
    v461 = *(v0 + 1160);
    v463 = *(v0 + 1152);
    v466 = *(v0 + 1144);
    v468 = *(v0 + 1136);
    v470 = *(v0 + 1128);
    v472 = *(v0 + 1120);
    v476 = *(v0 + 1112);
    v482 = *(v0 + 1104);
    v486 = *(v0 + 1096);
    v490 = *(v0 + 1088);
    v494 = *(v0 + 1080);
    v497 = *(v0 + 1072);
    v500 = *(v0 + 1048);
    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

    v35 = *(v0 + 8);
    goto LABEL_7;
  }

  v495 = v17;
  v45 = *(v0 + 1224);
  defaultLogger()();
  swift_errorRetain();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    swift_errorRetain();
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to update PII Token: %@", v48, 0xCu);
    sub_10000BE18(v49, &unk_100833B50, &unk_1006D8FB0);
  }

  v51 = *(v0 + 1712);
  v52 = *(v0 + 1704);
  v53 = *(v0 + 1672);
  v54 = *(v0 + 1424);
  v55 = *(v0 + 1224);
  v56 = *(v0 + 1208);
  v57 = *(v0 + 1200);

  sub_10000BD94(v52, v51);

  v53(v55, v57);
  sub_100267A1C(v54, type metadata accessor for ActionRequest);
  v58 = *(v0 + 1568) + 1;
  if (v58 == *(v0 + 1528))
  {
LABEL_18:
    v59 = *(v0 + 1520);

    v60 = *(v0 + 1536);
    v61 = *(v0 + 1520);
    v62 = *(v0 + 1496);
    v63 = *(v0 + 1448);
    v64 = *(v0 + 1360);
    v65 = *(v0 + 1352);

    sub_10000BBC4(v62, v63, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v64 + 48))(v63, 1, v65) != 1)
    {
      v247 = *(v0 + 1512);
      v248 = *(v0 + 1504);
      v249 = *(v0 + 1440);
      v250 = *(v0 + 1376);
      v251 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v250, type metadata accessor for ActionRequest);
      sub_100269FE8(v250, v249, type metadata accessor for ActionRequest);
      v248(v249, 0, 1, v251);
      v252 = swift_task_alloc();
      *(v0 + 1880) = v252;
      *v252 = v0;
      v252[1] = sub_10024F280;
      v253 = *(v0 + 1440);
      v254 = *(v0 + 1024);
      v255 = *(v0 + 1008);
      v256 = *(v0 + 1000);

      return sub_1002550B8(v253, v256, v255);
    }

    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
    v66 = *(v0 + 1496);
    v67 = *(v0 + 1488);
    v68 = *(v0 + 1480);
    v69 = *(v0 + 1472);
    v70 = *(v0 + 1464);
    v71 = *(v0 + 1456);
    v72 = *(v0 + 1440);
    v73 = *(v0 + 1432);
    v408 = *(v0 + 1424);
    v410 = *(v0 + 1416);
    v412 = *(v0 + 1408);
    v414 = *(v0 + 1400);
    v416 = *(v0 + 1392);
    v418 = *(v0 + 1384);
    v420 = *(v0 + 1376);
    v422 = *(v0 + 1344);
    v424 = *(v0 + 1336);
    v426 = *(v0 + 1328);
    v428 = *(v0 + 1320);
    v430 = *(v0 + 1312);
    v432 = *(v0 + 1304);
    v434 = *(v0 + 1296);
    v436 = *(v0 + 1288);
    v438 = *(v0 + 1280);
    v440 = *(v0 + 1272);
    v442 = *(v0 + 1264);
    v444 = *(v0 + 1256);
    v446 = *(v0 + 1248);
    v448 = *(v0 + 1240);
    v450 = *(v0 + 1232);
    v452 = *(v0 + 1224);
    v454 = *(v0 + 1216);
    v456 = *(v0 + 1192);
    v458 = *(v0 + 1184);
    v460 = *(v0 + 1176);
    v462 = *(v0 + 1168);
    v464 = *(v0 + 1160);
    v467 = *(v0 + 1152);
    v469 = *(v0 + 1144);
    v471 = *(v0 + 1136);
    v473 = *(v0 + 1128);
    v477 = *(v0 + 1120);
    v483 = *(v0 + 1112);
    v487 = *(v0 + 1104);
    v491 = *(v0 + 1096);
    v496 = *(v0 + 1088);
    v498 = *(v0 + 1080);
    v501 = *(v0 + 1072);
    v507 = *(v0 + 1048);
    sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

    v35 = *(v0 + 8);
LABEL_7:

    return v35();
  }

  v465 = (v0 + 984);
  v74 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v58;
    *(v0 + 1908) = v74;
    *(v0 + 1560) = 0;
    v83 = *(v0 + 1520);
    if (v58 >= *(v83 + 16))
    {
      __break(1u);
      goto LABEL_157;
    }

    v84 = *(v0 + 1424);
    v85 = *(v0 + 1016);
    v86 = *(v0 + 1008);
    v87 = *(v0 + 1000);
    v88 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v83 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v88 * v58, v84, type metadata accessor for ActionRequest);
    sub_10025DCD8(v84, v87, v86, v85);
    v89 = *v84;
    v90 = v84[1];

    v509._countAndFlagsBits = v89;
    v509._object = v90;
    v91 = sub_10025DC8C(v509);
    if (v91 > 4)
    {
      if (v91 <= 7)
      {
        if (v91 != 6)
        {
          if (v91 == 7)
          {
            v92 = *(v0 + 1264);
            defaultLogger()();
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.debug.getter();
            v95 = os_log_type_enabled(v93, v94);
            v96 = *(v0 + 1424);
            v97 = *(v0 + 1264);
            v98 = *(v0 + 1208);
            v99 = *(v0 + 1200);
            if (v95)
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              v101 = v94;
              v102 = v93;
              v103 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          v257 = *(v0 + 1424);
          v258 = *(v0 + 1400);
          v259 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v257, v258, type metadata accessor for ActionRequest);
          v260 = Logger.logObject.getter();
          v261 = static os_log_type_t.debug.getter();
          v262 = os_log_type_enabled(v260, v261);
          v263 = *(v0 + 1400);
          LOBYTE(v505) = v74;
          if (!v262)
          {
            v294 = *(v0 + 1296);
            v295 = *(v0 + 1208);
            v296 = *(v0 + 1200);

            sub_100267A1C(v263, type metadata accessor for ActionRequest);
            v297 = *(v295 + 8);
            v297(v294, v296);
LABEL_125:
            v503 = v297;
            *(v0 + 1608) = v297;
            v323 = *(*(v0 + 1520) + 16);
            if (v323)
            {
              v324 = 0;
              v325 = 0;
              while (1)
              {
                v326 = *(v0 + 1520);
                if (v325 >= *(v326 + 16))
                {
                  break;
                }

                v327 = *(v0 + 1392);
                sub_100269FE8(v326 + v324 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v327, type metadata accessor for ActionRequest);
                v328 = *v327 == 0x5F4F545F444E4553 && v327[1] == 0xED0000454D4F4942;
                if (v328 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v329 = 0;
                  goto LABEL_136;
                }

                ++v325;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v324 += v88;
                if (v323 == v325)
                {
                  goto LABEL_134;
                }
              }

LABEL_171:
              __break(1u);
              goto LABEL_172;
            }

LABEL_134:
            v329 = 1;
LABEL_136:
            v330 = *(v0 + 1512);
            v331 = *(v0 + 1488);
            v332 = *(v0 + 1480);
            v333 = *(v0 + 1288);
            (*(v0 + 1504))(v331, v329, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v331, v332, &qword_10083E3E8, &unk_1006DBD00);
            v334 = Logger.logObject.getter();
            v335 = static os_log_type_t.debug.getter();
            v336 = os_log_type_enabled(v334, v335);
            v337 = *(v0 + 1480);
            if (v336)
            {
              v338 = *(v0 + 1360);
              v339 = *(v0 + 1352);
              v340 = swift_slowAlloc();
              *v340 = 67109120;
              LODWORD(v339) = (*(v338 + 48))(v337, 1, v339) != 1;
              sub_10000BE18(v337, &qword_10083E3E8, &unk_1006DBD00);
              *(v340 + 4) = v339;
              _os_log_impl(&_mh_execute_header, v334, v335, "Biome data exists to be donated? -> %{BOOL}d", v340, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v341 = v334;
            v342 = *(v0 + 1544);
            v343 = *(v0 + 1488);
            v344 = *(v0 + 1472);
            v345 = *(v0 + 1360);
            v346 = *(v0 + 1352);
            v347 = *(v0 + 1288);
            v348 = *(v0 + 1208);
            v349 = *(v0 + 1200);
            v350 = *(v0 + 1024);

            *(v0 + 1616) = (v348 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v503(v347, v349);
            v351 = *(v350 + v342);
            sub_10000BBC4(v343, v344, &qword_10083E3E8, &unk_1006DBD00);
            v352 = *(v345 + 48);
            v353 = v352(v344, 1, v346);
            v354 = *(v0 + 1472);
            if (v353 == 1)
            {
              v355 = *(v0 + 1160);

              sub_10000BE18(v354, &qword_10083E3E8, &unk_1006DBD00);
              v356 = type metadata accessor for PendingActionContext(0);
              (*(*(v356 - 8) + 56))(v355, 1, 1, v356);
            }

            else
            {
              sub_10000BBC4(v354 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v354, type metadata accessor for ActionRequest);
            }

            v357 = *(v0 + 1160);
            v358 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v357);

            sub_10000BE18(v357, &unk_100840960, &qword_1006DBCB0);
            v495 = v352;
            if (*(v358 + 152) == 1)
            {
LABEL_158:
              v372 = *(v0 + 1424);
              v373 = *(v0 + 1152);
              v374 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v374;
              sub_10000BBC4(v372 + v374, v373, &unk_100840960, &qword_1006DBCB0);
              v375 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v375;
              v376 = *(v375 - 8);
              v377 = *(v376 + 48);
              *(v0 + 1632) = v377;
              *(v0 + 1640) = (v376 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v504 = v377;
              v378 = v377(v373, 1, v375);
              v379 = *(v0 + 1152);
              v480 = v374;
              v484 = v372;
              if (v378 == 1)
              {
                sub_10000BE18(v379, &unk_100840960, &qword_1006DBCB0);
                v492 = 0;
                v380 = 0;
              }

              else
              {
                v380 = *(v379 + 72);
                v492 = *(v379 + 64);
                v381 = *(v0 + 1152);

                sub_100267A1C(v381, type metadata accessor for PendingActionContext);
              }

              v488 = v380;
              *(v0 + 1648) = v380;
              v382 = *(v0 + 1488);
              v383 = *(v0 + 1456);
              v384 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v382, v383, &qword_10083E3E8, &unk_1006DBD00);
              v385 = v495(v383, 1, v384);
              v386 = *(v0 + 1456);
              if (v385 == 1)
              {
                v387 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v376 + 56))(v387, 1, 1, v375);
                v388 = v505;
                v390 = v480;
                v389 = v484;
              }

              else
              {
                v391 = *(v0 + 1144);
                sub_10000BBC4(v386 + *(*(v0 + 1352) + 20), v391, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v386, type metadata accessor for ActionRequest);
                v388 = v505;
                v390 = v480;
                v389 = v484;
                v504(v391, 1, v375);
              }

              v392 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v389 + v390, v392, &unk_100840960, &qword_1006DBCB0);
              v393 = v504(v392, 1, v375);
              v394 = *(v0 + 1136);
              if (v393 == 1)
              {
                sub_10000BE18(v394, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v395 = *(v394 + *(v375 + 124));
                sub_100267A1C(v394, type metadata accessor for PendingActionContext);
              }

              v396 = swift_task_alloc();
              *(v0 + 1656) = v396;
              *v396 = v0;
              v396[1] = sub_100239F30;
              v397 = *(v0 + 1536);
              v398 = *(v0 + 1464);
              v399 = *(v0 + 1024);
              v400 = *(v0 + 1016);
              v401 = *(v0 + 1008);
              v402 = *(v0 + 1000);

              return sub_10025744C(v492, v488, v397, v402, v401, v400, v388, v398);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_158;
            }

LABEL_157:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_158;
          }

          v264 = *(v0 + 1352);
          v265 = *(v0 + 1168);
          v266 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *(v0 + 968) = v267;
          *v266 = 136315138;
          sub_10000BBC4(v263 + *(v264 + 20), v265, &unk_100840960, &qword_1006DBCB0);
          v268 = type metadata accessor for PendingActionContext(0);
          v269 = (*(*(v268 - 8) + 48))(v265, 1, v268);
          v270 = *(v0 + 1168);
          if (v269 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v315 = *(v270 + 64);
            v316 = *(v270 + 72);

            sub_100267A1C(v270, type metadata accessor for PendingActionContext);
            if (v316)
            {
              v317 = String.debugDescription.getter();
              v319 = v318;

LABEL_124:
              v502 = *(v0 + 1296);
              v320 = *(v0 + 1208);
              v321 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v322 = sub_100141FE4(v317, v319, (v0 + 968));

              *(v266 + 4) = v322;
              _os_log_impl(&_mh_execute_header, v260, v261, "server requested an action to set state:%s", v266, 0xCu);
              sub_10000BB78(v267);

              v297 = *(v320 + 8);
              v297(v502, v321);
              goto LABEL_125;
            }
          }

          v317 = 0;
          v319 = 0xE000000000000000;
          goto LABEL_124;
        }

        v505 = v74;
        v156 = *(v0 + 1344);
        defaultLogger()();
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&_mh_execute_header, v157, v158, "display notification received", v159, 2u);
        }

        v75 = *(v0 + 1512);
        v76 = *(v0 + 1504);
        v77 = *(v0 + 1496);
        v78 = *(v0 + 1424);
        v79 = *(v0 + 1352);
        v80 = *(v0 + 1344);
        v81 = *(v0 + 1208);
        v82 = *(v0 + 1200);

        (*(v81 + 8))(v80, v82);
        sub_10000BE18(v77, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v78, v77, type metadata accessor for ActionRequest);
        v76(v77, 0, 1, v79);
        goto LABEL_22;
      }

      if (v91 != 8)
      {
        if (v91 != 10)
        {
          v279 = *(v0 + 1248);
          defaultLogger()();
          v280 = Logger.logObject.getter();
          v281 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v280, v281))
          {
            v282 = swift_slowAlloc();
            *v282 = 0;
            _os_log_impl(&_mh_execute_header, v280, v281, "server requested an action to store token", v282, 2u);
          }

          v283 = *(v0 + 1424);
          v284 = *(v0 + 1352);
          v285 = *(v0 + 1248);
          v286 = *(v0 + 1208);
          v287 = *(v0 + 1200);
          v288 = *(v0 + 1104);

          v289 = *(v286 + 8);
          *(v0 + 1672) = v289;
          v289(v285, v287);
          sub_10000BBC4(v283 + *(v284 + 20), v288, &unk_100840960, &qword_1006DBCB0);
          v290 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v290 - 8) + 48))(v288, 1, v290) == 1)
          {
            v291 = *(v0 + 1536);
            v292 = *(v0 + 1520);
            v293 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v293, &unk_100840960, &qword_1006DBCB0);
LABEL_153:
            v26 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            goto LABEL_6;
          }

          v298 = *(v0 + 1104);
          v299 = (v298 + *(v290 + 128));
          v300 = *v299;
          *(v0 + 1680) = *v299;
          v301 = v299[1];
          *(v0 + 1688) = v301;
          v302 = v299[2];
          *(v0 + 1696) = v299[3];
          sub_1000AB7D8(v300, v301);
          sub_100267A1C(v298, type metadata accessor for PendingActionContext);
          if (!v301)
          {
            v366 = *(v0 + 1536);
            v367 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_153;
          }

          v303 = *(v0 + 1072);
          v304 = *(v0 + 1064);
          v305 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v306 = String.data(using:allowLossyConversion:)();
          v308 = v307;
          *(v0 + 1704) = v306;
          *(v0 + 1712) = v307;
          (*(v304 + 8))(v303, v305);
          if (v308 >> 60 == 15)
          {
            v309 = *(v0 + 1536);
            v310 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_153;
          }

          if (qword_100832C20 == -1)
          {
LABEL_155:
            v368 = *(qword_100882228 + 16);
            *(v0 + 1720) = v368;
            v369 = v368;
            v370 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v370;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v371 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v371;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v369 retrievePIITokenFromSyncableKeyStoreForIdentifier:v370 completion:v0 + 608];
            v44 = v0 + 16;
LABEL_12:

            return _swift_continuation_await(v44);
          }

LABEL_172:
          swift_once();
          goto LABEL_155;
        }

        v120 = *(v0 + 1232);
        defaultLogger()();
        v93 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        v122 = os_log_type_enabled(v93, v121);
        v96 = *(v0 + 1424);
        v97 = *(v0 + 1232);
        v98 = *(v0 + 1208);
        v99 = *(v0 + 1200);
        if (v122)
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          v101 = v121;
          v102 = v93;
          v103 = "INVALID ACTION REQUEST";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      v160 = *(v0 + 1424);
      v161 = *(v0 + 1384);
      v162 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v160, v161, type metadata accessor for ActionRequest);
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.info.getter();
      v165 = os_log_type_enabled(v163, v164);
      v166 = *(v0 + 1384);
      v505 = v74;
      if (!v165)
      {
        v188 = *(v0 + 1256);
        v189 = *(v0 + 1208);
        v190 = *(v0 + 1200);

        sub_100267A1C(v166, type metadata accessor for ActionRequest);
        (*(v189 + 8))(v188, v190);
LABEL_85:
        v228 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v228, &unk_100840960, &qword_1006DBCB0);
        v229 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v229 - 8) + 48))(v228, 1, v229) == 1)
        {
          v230 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v230, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_23;
        }

        v231 = *(v0 + 1112);
        v232 = (v231 + *(v229 + 112));
        v234 = *v232;
        v233 = v232[1];

        sub_100267A1C(v231, type metadata accessor for PendingActionContext);
        if (v233)
        {
          v235 = *(v0 + 1088);
          v236 = *(v0 + 1080);
          v237 = *(v0 + 1024);
          v238 = type metadata accessor for TaskPriority();
          v239 = *(v238 - 8);
          (*(v239 + 56))(v235, 1, 1, v238);
          v240 = swift_allocObject();
          v240[2] = 0;
          v240[3] = 0;
          v240[4] = v237;
          v240[5] = v234;
          v240[6] = v233;
          sub_10000BBC4(v235, v236, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v235) = (*(v239 + 48))(v236, 1, v238);

          v241 = *(v0 + 1080);
          if (v235 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v239 + 8))(v241, v238);
          }

          v242 = v240[2];
          v243 = v240[3];
          swift_unknownObjectRetain();

          v74 = v505;
          if (v242)
          {
            swift_getObjectType();
            v244 = dispatch thunk of Actor.unownedExecutor.getter();
            v246 = v245;
            swift_unknownObjectRelease();
          }

          else
          {
            v244 = 0;
            v246 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v246 | v244)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v244;
            *(v0 + 872) = v246;
          }

          v96 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_55;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_22;
      }

      v167 = *(v0 + 1352);
      v168 = *(v0 + 1120);
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *(v0 + 960) = v170;
      *v169 = 136315138;
      sub_10000BBC4(v166 + *(v167 + 20), v168, &unk_100840960, &qword_1006DBCB0);
      v171 = type metadata accessor for PendingActionContext(0);
      v172 = (*(*(v171 - 8) + 48))(v168, 1, v171);
      v173 = *(v0 + 1120);
      if (v172 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v221 = (v173 + *(v171 + 112));
        v222 = *v221;
        v223 = v221[1];

        sub_100267A1C(v173, type metadata accessor for PendingActionContext);
        if (v223)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_84:
          v224 = *(v0 + 1256);
          v225 = *(v0 + 1208);
          v226 = *(v0 + 1200);
          v227 = sub_100141FE4(v222, v223, (v0 + 960));

          *(v169 + 4) = v227;
          _os_log_impl(&_mh_execute_header, v163, v164, "server requested to delete the Account Key Signing Key with identifier %s", v169, 0xCu);
          sub_10000BB78(v170);

          (*(v225 + 8))(v224, v226);
          v74 = v505;
          goto LABEL_85;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v223 = 0xE300000000000000;
      v222 = 4999502;
      goto LABEL_84;
    }

    if (v91 <= 2)
    {
      break;
    }

    if (v91 == 3)
    {
      v123 = *(v0 + 1424);
      v124 = *(v0 + 1408);
      v125 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v123, v124, type metadata accessor for ActionRequest);
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v126, v127))
      {
        v183 = *(v0 + 1424);
        v184 = *(v0 + 1408);
        v185 = *(v0 + 1304);
        v186 = *(v0 + 1208);
        v187 = *(v0 + 1200);

        sub_100267A1C(v184, type metadata accessor for ActionRequest);
        (*(v186 + 8))(v185, v187);
        sub_100267A1C(v183, type metadata accessor for ActionRequest);
        goto LABEL_23;
      }

      v505 = v74;
      v128 = *(v0 + 1408);
      v129 = *(v0 + 1352);
      v130 = *(v0 + 1176);
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *(v0 + 976) = v132;
      *v131 = 136315138;
      sub_10000BBC4(v128 + *(v129 + 20), v130, &unk_100840960, &qword_1006DBCB0);
      v133 = type metadata accessor for PendingActionContext(0);
      v134 = (*(*(v133 - 8) + 48))(v130, 1, v133);
      v135 = *(v0 + 1176);
      if (v134 == 1)
      {
        sub_10000BE18(v135, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_79;
      }

      v212 = *(v135 + 48);
      v213 = *(v135 + 56);
      v214 = *(v0 + 1176);

      sub_100267A1C(v214, type metadata accessor for PendingActionContext);
      if (v213)
      {
        v215 = String.debugDescription.getter();
        v217 = v216;
      }

      else
      {
LABEL_79:
        v215 = 0;
        v217 = 0xE000000000000000;
      }

      v475 = *(v0 + 1304);
      v479 = *(v0 + 1424);
      v218 = *(v0 + 1208);
      v219 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v220 = sub_100141FE4(v215, v217, (v0 + 976));

      *(v131 + 4) = v220;
      _os_log_impl(&_mh_execute_header, v126, v127, "server requested an action to self heal: %s", v131, 0xCu);
      sub_10000BB78(v132);

      (*(v218 + 8))(v475, v219);
      sub_100267A1C(v479, type metadata accessor for ActionRequest);
LABEL_22:
      v74 = v505;
      goto LABEL_23;
    }

    v505 = v74;
    v136 = *(v0 + 1336);
    defaultLogger()();
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "display message received", v139, 2u);
    }

    v140 = *(v0 + 1424);
    v141 = *(v0 + 1352);
    v142 = *(v0 + 1336);
    v143 = *(v0 + 1208);
    v144 = *(v0 + 1200);
    v145 = *(v0 + 1024);
    v146 = *(v0 + 1008);
    v147 = *(v0 + 1000);

    v148 = *(v143 + 8);
    v148(v142, v144);
    v149 = v148;
    sub_1002556F0(v140 + *(v141 + 20), v147, v146);
    type metadata accessor for IdentityProofingDataContext();
    v150 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v151 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v151 + 54);
    sub_100031B5C(&v151[4], v0 + 408);
    os_unfair_lock_unlock(v151 + 54);
    v152 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v495 = 0;
    v191 = sub_10054C274();
    v192 = *(v0 + 1896);
    v193 = *(v0 + 1424);
    v194 = *(v0 + 1416);
    v195 = *(v0 + 1368);
    v474 = v149;
    v478 = *(v0 + 1016);
    v196 = *(v0 + 1008);
    v197 = *(v0 + 1000);

    v198 = [v191 newBackgroundContext];
    *(v150 + 16) = v198;
    [v198 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v193, v194, type metadata accessor for ActionRequest);
    v199 = swift_allocObject();
    v199[2] = v150;
    v199[3] = v197;
    v199[4] = v196;
    v199[5] = v478;
    sub_100269F80(v194, v199 + ((v192 + 48) & ~v192), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v200 = *(v150 + 16);
    v201 = swift_allocObject();
    v201[2] = sub_100267BF8;
    v201[3] = v199;
    v201[4] = v465;
    v202 = swift_allocObject();
    *(v202 + 16) = sub_100267C5C;
    *(v202 + 24) = v201;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v202;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v203 = _Block_copy((v0 + 800));
    v204 = *(v0 + 840);

    [v200 performBlockAndWait:v203];
    _Block_release(v203);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_171;
    }

    v206 = *v465;
    if (*v465)
    {
      v207 = *v465;
      swift_willThrow();
      v495 = v206;

      v74 = v505;
      v208 = *(v0 + 1328);
      v209 = *(v0 + 1200);
      v210 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v474(v208, v209);
    }

    else
    {

      v74 = v505;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_23:
    v58 = *(v0 + 1568) + 1;
    if (v58 == *(v0 + 1528))
    {
      goto LABEL_18;
    }
  }

  if (!v91)
  {
    v153 = *(v0 + 1272);
    defaultLogger()();
    v93 = Logger.logObject.getter();
    v154 = static os_log_type_t.debug.getter();
    v155 = os_log_type_enabled(v93, v154);
    v96 = *(v0 + 1424);
    v97 = *(v0 + 1272);
    v98 = *(v0 + 1208);
    v99 = *(v0 + 1200);
    if (v155)
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      v101 = v154;
      v102 = v93;
      v103 = "server requested an action to wait for update";
LABEL_53:
      _os_log_impl(&_mh_execute_header, v102, v101, v103, v100, 2u);
    }

LABEL_54:

    (*(v98 + 8))(v97, v99);
LABEL_55:
    sub_100267A1C(v96, type metadata accessor for ActionRequest);
    goto LABEL_23;
  }

  if (v91 != 2)
  {
    v271 = *(v0 + 1312);
    defaultLogger()();
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&_mh_execute_header, v272, v273, "Starting Provisioning flow", v274, 2u);
    }

    v275 = *(v0 + 1312);
    v276 = *(v0 + 1208);
    v277 = *(v0 + 1200);
    v278 = *(v0 + 992);

    (*(v276 + 8))(v275, v277);
    if (*(v278 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v359 = *(v0 + 1424);
    v360 = *(*(v0 + 1352) + 20);
    v361 = swift_task_alloc();
    *(v0 + 1592) = v361;
    *v361 = v0;
    v361[1] = sub_10023710C;
    v362 = *(v0 + 1024);
    v363 = *(v0 + 1016);
    v364 = *(v0 + 1008);
    v365 = *(v0 + 1000);

    return sub_100229698(v359 + v360, v365, v364, v363, 0x61746E6567616DLL, 0xE700000000000000);
  }

  v104 = *(v0 + 1320);
  defaultLogger()();
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&_mh_execute_header, v105, v106, "server requested an action to execute new workflow", v107, 2u);
  }

  v108 = *(v0 + 1424);
  v109 = *(v0 + 1352);
  v110 = *(v0 + 1320);
  v111 = *(v0 + 1208);
  v112 = *(v0 + 1200);
  v113 = *(v0 + 1192);

  (*(v111 + 8))(v110, v112);
  v114 = *(v109 + 20);
  sub_10000BBC4(v108 + v114, v113, &unk_100840960, &qword_1006DBCB0);
  v115 = type metadata accessor for PendingActionContext(0);
  v116 = *(*(v115 - 8) + 48);
  v117 = v116(v113, 1, v115);
  v118 = *(v0 + 1192);
  if (v117 == 1)
  {
    sub_10000BE18(v118, &unk_100840960, &qword_1006DBCB0);
    v119 = 3;
  }

  else
  {
    v119 = *(v118 + *(v115 + 76));
    sub_100267A1C(v118, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v119;
  v174 = *(v0 + 1184);
  sub_10000BBC4(v108 + v114, v174, &unk_100840960, &qword_1006DBCB0);
  v175 = v116(v174, 1, v115);
  v176 = *(v0 + 1184);
  v177 = *(v0 + 1096);
  if (v175 == 1)
  {
    sub_10000BE18(v176, &unk_100840960, &qword_1006DBCB0);
    v178 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v178 - 8) + 56))(v177, 1, 1, v178);
  }

  else
  {
    v179 = *(v115 + 72);
    v180 = *(v0 + 1184);
    sub_10000BBC4(v176 + v179, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v180, type metadata accessor for PendingActionContext);
  }

  v181 = *(v0 + 1096);
  v182 = *(v0 + 1024);
  sub_1002593E4(v181);
  sub_10000BE18(v181, &qword_100835968, &qword_1006DBC90);
  if (v119 <= 1)
  {
    v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v211)
    {
      goto LABEL_118;
    }

    goto LABEL_76;
  }

  if (v119 == 3)
  {
LABEL_76:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v74 = *(v0 + 1909);
    goto LABEL_23;
  }

LABEL_118:
  v311 = swift_task_alloc();
  *(v0 + 1576) = v311;
  *v311 = v0;
  v311[1] = sub_1002342A8;
  v312 = *(v0 + 1024);
  v313 = *(v0 + 1008);
  v314 = *(v0 + 1000);

  return sub_100259898(v108 + v114, v314, v313);
}

uint64_t sub_100240874()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1744);

  v3 = *(v0 + 1776);
  if (*(v0 + 1736))
  {
    v4 = *(v0 + 1536);
    v5 = *(v0 + 1520);
    swift_bridgeObjectRelease_n();

    v471 = *(v0 + 1712);
    v465 = *(v0 + 1720);
    v468 = *(v0 + 1704);
    v460 = *(v0 + 1424);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1040);
    v8 = *(v0 + 1032);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    v9._object = 0x8000000100707AF0;
    String.append(_:)(v9);
    *(v0 + 952) = v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v10 = *(v0 + 912);
    v11 = *(v0 + 920);
    (*(v7 + 104))(v6, enum case for DIPError.Code.failedToStorePIIToken(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v12 = v460;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v468, v471);

LABEL_3:
    sub_100267A1C(v12, type metadata accessor for ActionRequest);
    v13 = *(v0 + 1488);
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1472);
    v16 = *(v0 + 1464);
    v17 = *(v0 + 1456);
    v18 = *(v0 + 1448);
    v19 = *(v0 + 1440);
    v20 = *(v0 + 1432);
    v379 = *(v0 + 1424);
    v380 = *(v0 + 1416);
    v382 = *(v0 + 1408);
    v384 = *(v0 + 1400);
    v386 = *(v0 + 1392);
    v388 = *(v0 + 1384);
    v390 = *(v0 + 1376);
    v392 = *(v0 + 1344);
    v394 = *(v0 + 1336);
    v396 = *(v0 + 1328);
    v398 = *(v0 + 1320);
    v400 = *(v0 + 1312);
    v402 = *(v0 + 1304);
    v404 = *(v0 + 1296);
    v406 = *(v0 + 1288);
    v408 = *(v0 + 1280);
    v410 = *(v0 + 1272);
    v412 = *(v0 + 1264);
    v414 = *(v0 + 1256);
    v416 = *(v0 + 1248);
    v418 = *(v0 + 1240);
    v420 = *(v0 + 1232);
    v422 = *(v0 + 1224);
    v424 = *(v0 + 1216);
    v426 = *(v0 + 1192);
    v428 = *(v0 + 1184);
    v430 = *(v0 + 1176);
    v432 = *(v0 + 1168);
    v434 = *(v0 + 1160);
    v436 = *(v0 + 1152);
    v438 = *(v0 + 1144);
    v440 = *(v0 + 1136);
    v442 = *(v0 + 1128);
    v444 = *(v0 + 1120);
    v447 = *(v0 + 1112);
    v450 = *(v0 + 1104);
    v455 = *(v0 + 1096);
    v461 = *(v0 + 1088);
    v466 = *(v0 + 1080);
    v469 = *(v0 + 1072);
    v472 = *(v0 + 1048);
    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

    v21 = *(v0 + 8);
    goto LABEL_4;
  }

  v23 = *(v0 + 1224);
  defaultLogger()();
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to update PII Token: %@", v26, 0xCu);
    sub_10000BE18(v27, &unk_100833B50, &unk_1006D8FB0);
  }

  v29 = *(v0 + 1712);
  v30 = *(v0 + 1704);
  v31 = *(v0 + 1672);
  v32 = *(v0 + 1424);
  v33 = *(v0 + 1224);
  v34 = *(v0 + 1208);
  v35 = *(v0 + 1200);

  sub_10000BD94(v30, v29);

  v31(v33, v35);
  sub_100267A1C(v32, type metadata accessor for ActionRequest);
  v36 = *(v0 + 1568) + 1;
  if (v36 == *(v0 + 1528))
  {
LABEL_10:
    v37 = *(v0 + 1520);

    v38 = *(v0 + 1536);
    v39 = *(v0 + 1520);
    v40 = *(v0 + 1496);
    v41 = *(v0 + 1448);
    v42 = *(v0 + 1360);
    v43 = *(v0 + 1352);

    sub_10000BBC4(v40, v41, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v42 + 48))(v41, 1, v43) != 1)
    {
      v223 = *(v0 + 1512);
      v224 = *(v0 + 1504);
      v225 = *(v0 + 1440);
      v226 = *(v0 + 1376);
      v227 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v226, type metadata accessor for ActionRequest);
      sub_100269FE8(v226, v225, type metadata accessor for ActionRequest);
      v224(v225, 0, 1, v227);
      v228 = swift_task_alloc();
      *(v0 + 1880) = v228;
      *v228 = v0;
      v228[1] = sub_10024F280;
      v229 = *(v0 + 1440);
      v230 = *(v0 + 1024);
      v231 = *(v0 + 1008);
      v232 = *(v0 + 1000);

      return sub_1002550B8(v229, v232, v231);
    }

    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1488);
    v46 = *(v0 + 1480);
    v47 = *(v0 + 1472);
    v48 = *(v0 + 1464);
    v49 = *(v0 + 1456);
    v50 = *(v0 + 1440);
    v51 = *(v0 + 1432);
    v381 = *(v0 + 1424);
    v383 = *(v0 + 1416);
    v385 = *(v0 + 1408);
    v387 = *(v0 + 1400);
    v389 = *(v0 + 1392);
    v391 = *(v0 + 1384);
    v393 = *(v0 + 1376);
    v395 = *(v0 + 1344);
    v397 = *(v0 + 1336);
    v399 = *(v0 + 1328);
    v401 = *(v0 + 1320);
    v403 = *(v0 + 1312);
    v405 = *(v0 + 1304);
    v407 = *(v0 + 1296);
    v409 = *(v0 + 1288);
    v411 = *(v0 + 1280);
    v413 = *(v0 + 1272);
    v415 = *(v0 + 1264);
    v417 = *(v0 + 1256);
    v419 = *(v0 + 1248);
    v421 = *(v0 + 1240);
    v423 = *(v0 + 1232);
    v425 = *(v0 + 1224);
    v427 = *(v0 + 1216);
    v429 = *(v0 + 1192);
    v431 = *(v0 + 1184);
    v433 = *(v0 + 1176);
    v435 = *(v0 + 1168);
    v437 = *(v0 + 1160);
    v439 = *(v0 + 1152);
    v441 = *(v0 + 1144);
    v443 = *(v0 + 1136);
    v445 = *(v0 + 1128);
    v448 = *(v0 + 1120);
    v451 = *(v0 + 1112);
    v456 = *(v0 + 1104);
    v462 = *(v0 + 1096);
    v467 = *(v0 + 1088);
    v470 = *(v0 + 1080);
    v473 = *(v0 + 1072);
    v478 = *(v0 + 1048);
    sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

    v21 = *(v0 + 8);
LABEL_4:

    return v21();
  }

  v446 = (v0 + 984);
  v52 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v36;
    *(v0 + 1908) = v52;
    *(v0 + 1560) = 0;
    v61 = *(v0 + 1520);
    if (v36 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_151;
    }

    v62 = *(v0 + 1424);
    v63 = *(v0 + 1016);
    v64 = *(v0 + 1008);
    v65 = *(v0 + 1000);
    v66 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v61 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v66 * v36, v62, type metadata accessor for ActionRequest);
    sub_10025DCD8(v62, v65, v64, v63);
    v67 = *v62;
    v68 = v62[1];

    v480._countAndFlagsBits = v67;
    v480._object = v68;
    v69 = sub_10025DC8C(v480);
    if (v69 > 4)
    {
      if (v69 <= 7)
      {
        if (v69 != 6)
        {
          if (v69 == 7)
          {
            v70 = *(v0 + 1264);
            defaultLogger()();
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.debug.getter();
            v73 = os_log_type_enabled(v71, v72);
            v74 = *(v0 + 1424);
            v75 = *(v0 + 1264);
            v76 = *(v0 + 1208);
            v77 = *(v0 + 1200);
            if (v73)
            {
              v78 = swift_slowAlloc();
              *v78 = 0;
              v79 = v72;
              v80 = v71;
              v81 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_45;
            }

            goto LABEL_46;
          }

          v233 = *(v0 + 1424);
          v234 = *(v0 + 1400);
          v235 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v233, v234, type metadata accessor for ActionRequest);
          v236 = Logger.logObject.getter();
          v237 = static os_log_type_t.debug.getter();
          v238 = os_log_type_enabled(v236, v237);
          v239 = *(v0 + 1400);
          LOBYTE(v477) = v52;
          if (!v238)
          {
            v270 = *(v0 + 1296);
            v271 = *(v0 + 1208);
            v272 = *(v0 + 1200);

            sub_100267A1C(v239, type metadata accessor for ActionRequest);
            v273 = *(v271 + 8);
            v273(v270, v272);
LABEL_117:
            v475 = v273;
            *(v0 + 1608) = v273;
            v299 = *(*(v0 + 1520) + 16);
            if (v299)
            {
              v300 = 0;
              v301 = 0;
              while (1)
              {
                v302 = *(v0 + 1520);
                if (v301 >= *(v302 + 16))
                {
                  break;
                }

                v303 = *(v0 + 1392);
                sub_100269FE8(v302 + v300 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v303, type metadata accessor for ActionRequest);
                v304 = *v303 == 0x5F4F545F444E4553 && v303[1] == 0xED0000454D4F4942;
                if (v304 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v305 = 0;
                  goto LABEL_128;
                }

                ++v301;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v300 += v66;
                if (v299 == v301)
                {
                  goto LABEL_126;
                }
              }

LABEL_165:
              __break(1u);
              goto LABEL_166;
            }

LABEL_126:
            v305 = 1;
LABEL_128:
            v306 = *(v0 + 1512);
            v307 = *(v0 + 1488);
            v308 = *(v0 + 1480);
            v309 = *(v0 + 1288);
            (*(v0 + 1504))(v307, v305, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v307, v308, &qword_10083E3E8, &unk_1006DBD00);
            v310 = Logger.logObject.getter();
            v311 = static os_log_type_t.debug.getter();
            v312 = os_log_type_enabled(v310, v311);
            v313 = *(v0 + 1480);
            if (v312)
            {
              v314 = *(v0 + 1360);
              v315 = *(v0 + 1352);
              v316 = swift_slowAlloc();
              *v316 = 67109120;
              LODWORD(v315) = (*(v314 + 48))(v313, 1, v315) != 1;
              sub_10000BE18(v313, &qword_10083E3E8, &unk_1006DBD00);
              *(v316 + 4) = v315;
              _os_log_impl(&_mh_execute_header, v310, v311, "Biome data exists to be donated? -> %{BOOL}d", v316, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v317 = v310;
            v318 = *(v0 + 1544);
            v319 = *(v0 + 1488);
            v320 = *(v0 + 1472);
            v321 = *(v0 + 1360);
            v322 = *(v0 + 1352);
            v323 = *(v0 + 1288);
            v324 = *(v0 + 1208);
            v325 = *(v0 + 1200);
            v326 = *(v0 + 1024);

            *(v0 + 1616) = (v324 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v475(v323, v325);
            v327 = *(v326 + v318);
            sub_10000BBC4(v319, v320, &qword_10083E3E8, &unk_1006DBD00);
            v328 = *(v321 + 48);
            v329 = v328(v320, 1, v322);
            v330 = *(v0 + 1472);
            if (v329 == 1)
            {
              v331 = *(v0 + 1160);

              sub_10000BE18(v330, &qword_10083E3E8, &unk_1006DBD00);
              v332 = type metadata accessor for PendingActionContext(0);
              (*(*(v332 - 8) + 56))(v331, 1, 1, v332);
            }

            else
            {
              sub_10000BBC4(v330 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v330, type metadata accessor for ActionRequest);
            }

            v333 = *(v0 + 1160);
            v334 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v333);

            sub_10000BE18(v333, &unk_100840960, &qword_1006DBCB0);
            v464 = v328;
            if (*(v334 + 152) == 1)
            {
LABEL_152:
              v348 = *(v0 + 1424);
              v349 = *(v0 + 1152);
              v350 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v350;
              sub_10000BBC4(v348 + v350, v349, &unk_100840960, &qword_1006DBCB0);
              v351 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v351;
              v352 = *(v351 - 8);
              v353 = *(v352 + 48);
              *(v0 + 1632) = v353;
              *(v0 + 1640) = (v352 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v476 = v353;
              v354 = v353(v349, 1, v351);
              v355 = *(v0 + 1152);
              v449 = v350;
              v454 = v348;
              if (v354 == 1)
              {
                sub_10000BE18(v355, &unk_100840960, &qword_1006DBCB0);
                v463 = 0;
                v356 = 0;
              }

              else
              {
                v356 = *(v355 + 72);
                v463 = *(v355 + 64);
                v357 = *(v0 + 1152);

                sub_100267A1C(v357, type metadata accessor for PendingActionContext);
              }

              v459 = v356;
              *(v0 + 1648) = v356;
              v358 = *(v0 + 1488);
              v359 = *(v0 + 1456);
              v360 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v358, v359, &qword_10083E3E8, &unk_1006DBD00);
              v361 = v464(v359, 1, v360);
              v362 = *(v0 + 1456);
              if (v361 == 1)
              {
                v363 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v352 + 56))(v363, 1, 1, v351);
                v364 = v477;
                v366 = v449;
                v365 = v454;
              }

              else
              {
                v367 = *(v0 + 1144);
                sub_10000BBC4(v362 + *(*(v0 + 1352) + 20), v367, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v362, type metadata accessor for ActionRequest);
                v364 = v477;
                v366 = v449;
                v365 = v454;
                v476(v367, 1, v351);
              }

              v368 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v365 + v366, v368, &unk_100840960, &qword_1006DBCB0);
              v369 = v476(v368, 1, v351);
              v370 = *(v0 + 1136);
              if (v369 == 1)
              {
                sub_10000BE18(v370, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v371 = *(v370 + *(v351 + 124));
                sub_100267A1C(v370, type metadata accessor for PendingActionContext);
              }

              v372 = swift_task_alloc();
              *(v0 + 1656) = v372;
              *v372 = v0;
              v372[1] = sub_100239F30;
              v373 = *(v0 + 1536);
              v374 = *(v0 + 1464);
              v375 = *(v0 + 1024);
              v376 = *(v0 + 1016);
              v377 = *(v0 + 1008);
              v378 = *(v0 + 1000);

              return sub_10025744C(v463, v459, v373, v378, v377, v376, v364, v374);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_152;
            }

LABEL_151:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_152;
          }

          v240 = *(v0 + 1352);
          v241 = *(v0 + 1168);
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          *(v0 + 968) = v243;
          *v242 = 136315138;
          sub_10000BBC4(v239 + *(v240 + 20), v241, &unk_100840960, &qword_1006DBCB0);
          v244 = type metadata accessor for PendingActionContext(0);
          v245 = (*(*(v244 - 8) + 48))(v241, 1, v244);
          v246 = *(v0 + 1168);
          if (v245 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v291 = *(v246 + 64);
            v292 = *(v246 + 72);

            sub_100267A1C(v246, type metadata accessor for PendingActionContext);
            if (v292)
            {
              v293 = String.debugDescription.getter();
              v295 = v294;

LABEL_116:
              v474 = *(v0 + 1296);
              v296 = *(v0 + 1208);
              v297 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v298 = sub_100141FE4(v293, v295, (v0 + 968));

              *(v242 + 4) = v298;
              _os_log_impl(&_mh_execute_header, v236, v237, "server requested an action to set state:%s", v242, 0xCu);
              sub_10000BB78(v243);

              v273 = *(v296 + 8);
              v273(v474, v297);
              goto LABEL_117;
            }
          }

          v293 = 0;
          v295 = 0xE000000000000000;
          goto LABEL_116;
        }

        v477 = v52;
        v133 = *(v0 + 1344);
        defaultLogger()();
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v134, v135, "display notification received", v136, 2u);
        }

        v53 = *(v0 + 1512);
        v54 = *(v0 + 1504);
        v55 = *(v0 + 1496);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1352);
        v58 = *(v0 + 1344);
        v59 = *(v0 + 1208);
        v60 = *(v0 + 1200);

        (*(v59 + 8))(v58, v60);
        sub_10000BE18(v55, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v56, v55, type metadata accessor for ActionRequest);
        v54(v55, 0, 1, v57);
        goto LABEL_14;
      }

      if (v69 != 8)
      {
        if (v69 != 10)
        {
          v255 = *(v0 + 1248);
          defaultLogger()();
          v256 = Logger.logObject.getter();
          v257 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            *v258 = 0;
            _os_log_impl(&_mh_execute_header, v256, v257, "server requested an action to store token", v258, 2u);
          }

          v259 = *(v0 + 1424);
          v260 = *(v0 + 1352);
          v261 = *(v0 + 1248);
          v262 = *(v0 + 1208);
          v263 = *(v0 + 1200);
          v264 = *(v0 + 1104);

          v265 = *(v262 + 8);
          *(v0 + 1672) = v265;
          v265(v261, v263);
          sub_10000BBC4(v259 + *(v260 + 20), v264, &unk_100840960, &qword_1006DBCB0);
          v266 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v266 - 8) + 48))(v264, 1, v266) == 1)
          {
            v267 = *(v0 + 1536);
            v268 = *(v0 + 1520);
            v269 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v269, &unk_100840960, &qword_1006DBCB0);
LABEL_145:
            v12 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            goto LABEL_3;
          }

          v274 = *(v0 + 1104);
          v275 = (v274 + *(v266 + 128));
          v276 = *v275;
          *(v0 + 1680) = *v275;
          v277 = v275[1];
          *(v0 + 1688) = v277;
          v278 = v275[2];
          *(v0 + 1696) = v275[3];
          sub_1000AB7D8(v276, v277);
          sub_100267A1C(v274, type metadata accessor for PendingActionContext);
          if (!v277)
          {
            v342 = *(v0 + 1536);
            v343 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_145;
          }

          v279 = *(v0 + 1072);
          v280 = *(v0 + 1064);
          v281 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v282 = String.data(using:allowLossyConversion:)();
          v284 = v283;
          *(v0 + 1704) = v282;
          *(v0 + 1712) = v283;
          (*(v280 + 8))(v279, v281);
          if (v284 >> 60 == 15)
          {
            v285 = *(v0 + 1536);
            v286 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_145;
          }

          if (qword_100832C20 == -1)
          {
LABEL_147:
            v344 = *(qword_100882228 + 16);
            *(v0 + 1720) = v344;
            v345 = v344;
            v346 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v346;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v347 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v347;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v345 retrievePIITokenFromSyncableKeyStoreForIdentifier:v346 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_166:
          swift_once();
          goto LABEL_147;
        }

        v98 = *(v0 + 1232);
        defaultLogger()();
        v71 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();
        v100 = os_log_type_enabled(v71, v99);
        v74 = *(v0 + 1424);
        v75 = *(v0 + 1232);
        v76 = *(v0 + 1208);
        v77 = *(v0 + 1200);
        if (v100)
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          v79 = v99;
          v80 = v71;
          v81 = "INVALID ACTION REQUEST";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      v137 = *(v0 + 1424);
      v138 = *(v0 + 1384);
      v139 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v137, v138, type metadata accessor for ActionRequest);
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.info.getter();
      v142 = os_log_type_enabled(v140, v141);
      v143 = *(v0 + 1384);
      v477 = v52;
      if (!v142)
      {
        v165 = *(v0 + 1256);
        v166 = *(v0 + 1208);
        v167 = *(v0 + 1200);

        sub_100267A1C(v143, type metadata accessor for ActionRequest);
        (*(v166 + 8))(v165, v167);
LABEL_77:
        v204 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v204, &unk_100840960, &qword_1006DBCB0);
        v205 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v205 - 8) + 48))(v204, 1, v205) == 1)
        {
          v206 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v206, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v207 = *(v0 + 1112);
        v208 = (v207 + *(v205 + 112));
        v210 = *v208;
        v209 = v208[1];

        sub_100267A1C(v207, type metadata accessor for PendingActionContext);
        if (v209)
        {
          v211 = *(v0 + 1088);
          v212 = *(v0 + 1080);
          v213 = *(v0 + 1024);
          v214 = type metadata accessor for TaskPriority();
          v215 = *(v214 - 8);
          (*(v215 + 56))(v211, 1, 1, v214);
          v216 = swift_allocObject();
          v216[2] = 0;
          v216[3] = 0;
          v216[4] = v213;
          v216[5] = v210;
          v216[6] = v209;
          sub_10000BBC4(v211, v212, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v211) = (*(v215 + 48))(v212, 1, v214);

          v217 = *(v0 + 1080);
          if (v211 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v215 + 8))(v217, v214);
          }

          v218 = v216[2];
          v219 = v216[3];
          swift_unknownObjectRetain();

          v52 = v477;
          if (v218)
          {
            swift_getObjectType();
            v220 = dispatch thunk of Actor.unownedExecutor.getter();
            v222 = v221;
            swift_unknownObjectRelease();
          }

          else
          {
            v220 = 0;
            v222 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v222 | v220)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v220;
            *(v0 + 872) = v222;
          }

          v74 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_47;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_14;
      }

      v144 = *(v0 + 1352);
      v145 = *(v0 + 1120);
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *(v0 + 960) = v147;
      *v146 = 136315138;
      sub_10000BBC4(v143 + *(v144 + 20), v145, &unk_100840960, &qword_1006DBCB0);
      v148 = type metadata accessor for PendingActionContext(0);
      v149 = (*(*(v148 - 8) + 48))(v145, 1, v148);
      v150 = *(v0 + 1120);
      if (v149 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v197 = (v150 + *(v148 + 112));
        v198 = *v197;
        v199 = v197[1];

        sub_100267A1C(v150, type metadata accessor for PendingActionContext);
        if (v199)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_76:
          v200 = *(v0 + 1256);
          v201 = *(v0 + 1208);
          v202 = *(v0 + 1200);
          v203 = sub_100141FE4(v198, v199, (v0 + 960));

          *(v146 + 4) = v203;
          _os_log_impl(&_mh_execute_header, v140, v141, "server requested to delete the Account Key Signing Key with identifier %s", v146, 0xCu);
          sub_10000BB78(v147);

          (*(v201 + 8))(v200, v202);
          v52 = v477;
          goto LABEL_77;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v199 = 0xE300000000000000;
      v198 = 4999502;
      goto LABEL_76;
    }

    if (v69 <= 2)
    {
      break;
    }

    if (v69 == 3)
    {
      v101 = *(v0 + 1424);
      v102 = *(v0 + 1408);
      v103 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v101, v102, type metadata accessor for ActionRequest);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v104, v105))
      {
        v160 = *(v0 + 1424);
        v161 = *(v0 + 1408);
        v162 = *(v0 + 1304);
        v163 = *(v0 + 1208);
        v164 = *(v0 + 1200);

        sub_100267A1C(v161, type metadata accessor for ActionRequest);
        (*(v163 + 8))(v162, v164);
        sub_100267A1C(v160, type metadata accessor for ActionRequest);
        goto LABEL_15;
      }

      v106 = *(v0 + 1408);
      v107 = *(v0 + 1352);
      v108 = *(v0 + 1176);
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *(v0 + 976) = v110;
      *v109 = 136315138;
      sub_10000BBC4(v106 + *(v107 + 20), v108, &unk_100840960, &qword_1006DBCB0);
      v111 = type metadata accessor for PendingActionContext(0);
      v112 = (*(*(v111 - 8) + 48))(v108, 1, v111);
      v113 = *(v0 + 1176);
      v477 = v52;
      if (v112 == 1)
      {
        sub_10000BE18(v113, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_71;
      }

      v188 = *(v113 + 48);
      v189 = *(v113 + 56);
      v190 = *(v0 + 1176);

      sub_100267A1C(v190, type metadata accessor for PendingActionContext);
      if (v189)
      {
        v191 = String.debugDescription.getter();
        v193 = v192;
      }

      else
      {
LABEL_71:
        v191 = 0;
        v193 = 0xE000000000000000;
      }

      v453 = *(v0 + 1304);
      v458 = *(v0 + 1424);
      v194 = *(v0 + 1208);
      v195 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v196 = sub_100141FE4(v191, v193, (v0 + 976));

      *(v109 + 4) = v196;
      _os_log_impl(&_mh_execute_header, v104, v105, "server requested an action to self heal: %s", v109, 0xCu);
      sub_10000BB78(v110);

      (*(v194 + 8))(v453, v195);
      sub_100267A1C(v458, type metadata accessor for ActionRequest);
LABEL_14:
      v52 = v477;
      goto LABEL_15;
    }

    v477 = v52;
    v114 = *(v0 + 1336);
    defaultLogger()();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "display message received", v117, 2u);
    }

    v118 = *(v0 + 1424);
    v119 = *(v0 + 1352);
    v120 = *(v0 + 1336);
    v121 = *(v0 + 1208);
    v122 = *(v0 + 1200);
    v123 = *(v0 + 1024);
    v124 = *(v0 + 1008);
    v125 = *(v0 + 1000);

    v126 = *(v121 + 8);
    v126(v120, v122);
    sub_1002556F0(v118 + *(v119 + 20), v125, v124);
    type metadata accessor for IdentityProofingDataContext();
    v127 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v128 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v128 + 54);
    sub_100031B5C(&v128[4], v0 + 408);
    os_unfair_lock_unlock(v128 + 54);
    v129 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v464 = 0;
    v168 = sub_10054C274();
    v169 = *(v0 + 1896);
    v170 = *(v0 + 1424);
    v171 = *(v0 + 1416);
    v172 = *(v0 + 1368);
    v452 = v126;
    v457 = *(v0 + 1016);
    v173 = *(v0 + 1008);
    v174 = *(v0 + 1000);

    v175 = [v168 newBackgroundContext];
    *(v127 + 16) = v175;
    [v175 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v170, v171, type metadata accessor for ActionRequest);
    v176 = swift_allocObject();
    v176[2] = v127;
    v176[3] = v174;
    v176[4] = v173;
    v176[5] = v457;
    sub_100269F80(v171, v176 + ((v169 + 48) & ~v169), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v177 = *(v127 + 16);
    v178 = swift_allocObject();
    v178[2] = sub_100267BF8;
    v178[3] = v176;
    v178[4] = v446;
    v179 = swift_allocObject();
    *(v179 + 16) = sub_100267C5C;
    *(v179 + 24) = v178;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v179;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v180 = _Block_copy((v0 + 800));
    v181 = *(v0 + 840);

    [v177 performBlockAndWait:v180];
    _Block_release(v180);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_165;
    }

    v183 = *v446;
    v52 = v477;
    if (*v446)
    {
      swift_willThrow();
      v464 = v183;

      v184 = *(v0 + 1328);
      v185 = *(v0 + 1200);
      v186 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v452(v184, v185);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_15:
    v36 = *(v0 + 1568) + 1;
    if (v36 == *(v0 + 1528))
    {
      goto LABEL_10;
    }
  }

  if (!v69)
  {
    v130 = *(v0 + 1272);
    defaultLogger()();
    v71 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    v132 = os_log_type_enabled(v71, v131);
    v74 = *(v0 + 1424);
    v75 = *(v0 + 1272);
    v76 = *(v0 + 1208);
    v77 = *(v0 + 1200);
    if (v132)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = v131;
      v80 = v71;
      v81 = "server requested an action to wait for update";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v80, v79, v81, v78, 2u);
    }

LABEL_46:

    (*(v76 + 8))(v75, v77);
LABEL_47:
    sub_100267A1C(v74, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v69 != 2)
  {
    v247 = *(v0 + 1312);
    defaultLogger()();
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v248, v249, "Starting Provisioning flow", v250, 2u);
    }

    v251 = *(v0 + 1312);
    v252 = *(v0 + 1208);
    v253 = *(v0 + 1200);
    v254 = *(v0 + 992);

    (*(v252 + 8))(v251, v253);
    if (*(v254 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v335 = *(v0 + 1424);
    v336 = *(*(v0 + 1352) + 20);
    v337 = swift_task_alloc();
    *(v0 + 1592) = v337;
    *v337 = v0;
    v337[1] = sub_10023710C;
    v338 = *(v0 + 1024);
    v339 = *(v0 + 1016);
    v340 = *(v0 + 1008);
    v341 = *(v0 + 1000);

    return sub_100229698(v335 + v336, v341, v340, v339, 0x61746E6567616DLL, 0xE700000000000000);
  }

  v82 = *(v0 + 1320);
  defaultLogger()();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "server requested an action to execute new workflow", v85, 2u);
  }

  v86 = *(v0 + 1424);
  v87 = *(v0 + 1352);
  v88 = *(v0 + 1320);
  v89 = *(v0 + 1208);
  v90 = *(v0 + 1200);
  v91 = *(v0 + 1192);

  (*(v89 + 8))(v88, v90);
  v92 = *(v87 + 20);
  sub_10000BBC4(v86 + v92, v91, &unk_100840960, &qword_1006DBCB0);
  v93 = type metadata accessor for PendingActionContext(0);
  v94 = *(*(v93 - 8) + 48);
  v95 = v94(v91, 1, v93);
  v96 = *(v0 + 1192);
  if (v95 == 1)
  {
    sub_10000BE18(v96, &unk_100840960, &qword_1006DBCB0);
    v97 = 3;
  }

  else
  {
    v97 = *(v96 + *(v93 + 76));
    sub_100267A1C(v96, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v97;
  v151 = *(v0 + 1184);
  sub_10000BBC4(v86 + v92, v151, &unk_100840960, &qword_1006DBCB0);
  v152 = v94(v151, 1, v93);
  v153 = *(v0 + 1184);
  v154 = *(v0 + 1096);
  if (v152 == 1)
  {
    sub_10000BE18(v153, &unk_100840960, &qword_1006DBCB0);
    v155 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v155 - 8) + 56))(v154, 1, 1, v155);
  }

  else
  {
    v156 = *(v93 + 72);
    v157 = *(v0 + 1184);
    sub_10000BBC4(v153 + v156, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v157, type metadata accessor for PendingActionContext);
  }

  v158 = *(v0 + 1096);
  v159 = *(v0 + 1024);
  sub_1002593E4(v158);
  sub_10000BE18(v158, &qword_100835968, &qword_1006DBC90);
  if (v97 <= 1)
  {
    v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v187)
    {
      goto LABEL_110;
    }

    goto LABEL_68;
  }

  if (v97 == 3)
  {
LABEL_68:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v52 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_110:
  v287 = swift_task_alloc();
  *(v0 + 1576) = v287;
  *v287 = v0;
  v287[1] = sub_1002342A8;
  v288 = *(v0 + 1024);
  v289 = *(v0 + 1008);
  v290 = *(v0 + 1000);

  return sub_100259898(v86 + v92, v290, v289);
}

uint64_t sub_10024382C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1824) = v3;
  if (v3)
  {
    v4 = v1[224];
    v5 = v1[212];
    v6 = v1[211];

    v7 = sub_100250498;
  }

  else
  {
    v7 = sub_10024395C;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10024395C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1016);

  v4 = IdentityTarget.rawValue.getter();
  if (v4 == IdentityTarget.rawValue.getter())
  {
    v5 = *(v0 + 1688);
    v6 = swift_task_alloc();
    *(v0 + 1864) = v6;
    *v6 = v0;
    v6[1] = sub_10024969C;
    v7 = *(v0 + 1792);
    v8 = *(v0 + 1784);
    v9 = *(v0 + 1680);

    sub_10025F680(v9, v5, v8, v7);
    return;
  }

  v10 = *(v0 + 1792);
  v11 = *(v0 + 1720);
  v12 = *(v0 + 1712);
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1696);
  v15 = *(v0 + 1688);
  sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
  sub_10000BD94(v13, v12);

  v16 = *(v0 + 1568) + 1;
  if (v16 == *(v0 + 1528))
  {
LABEL_6:
    v17 = *(v0 + 1520);

    v18 = *(v0 + 1536);
    v19 = *(v0 + 1520);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1448);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 1352);

    sub_10000BBC4(v20, v21, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v22 + 48))(v21, 1, v23) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v24 = *(v0 + 1496);
      v25 = *(v0 + 1488);
      v26 = *(v0 + 1480);
      v27 = *(v0 + 1472);
      v28 = *(v0 + 1464);
      v29 = *(v0 + 1456);
      v30 = *(v0 + 1440);
      v31 = *(v0 + 1432);
      v371 = *(v0 + 1424);
      v373 = *(v0 + 1416);
      v375 = *(v0 + 1408);
      v377 = *(v0 + 1400);
      v379 = *(v0 + 1392);
      v381 = *(v0 + 1384);
      v383 = *(v0 + 1376);
      v385 = *(v0 + 1344);
      v387 = *(v0 + 1336);
      v389 = *(v0 + 1328);
      v391 = *(v0 + 1320);
      v393 = *(v0 + 1312);
      v395 = *(v0 + 1304);
      v397 = *(v0 + 1296);
      v399 = *(v0 + 1288);
      v401 = *(v0 + 1280);
      v403 = *(v0 + 1272);
      v405 = *(v0 + 1264);
      v407 = *(v0 + 1256);
      v409 = *(v0 + 1248);
      v411 = *(v0 + 1240);
      v413 = *(v0 + 1232);
      v415 = *(v0 + 1224);
      v417 = *(v0 + 1216);
      v419 = *(v0 + 1192);
      v421 = *(v0 + 1184);
      v423 = *(v0 + 1176);
      v425 = *(v0 + 1168);
      v427 = *(v0 + 1160);
      v429 = *(v0 + 1152);
      v431 = *(v0 + 1144);
      v433 = *(v0 + 1136);
      v436 = *(v0 + 1128);
      v438 = *(v0 + 1120);
      v442 = *(v0 + 1112);
      v447 = *(v0 + 1104);
      v450 = *(v0 + 1096);
      v453 = *(v0 + 1088);
      v456 = *(v0 + 1080);
      v459 = *(v0 + 1072);
      v461 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v32 = *(v0 + 8);
LABEL_8:

      v32();
    }

    else
    {
      v205 = *(v0 + 1512);
      v206 = *(v0 + 1504);
      v207 = *(v0 + 1440);
      v208 = *(v0 + 1376);
      v209 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v208, type metadata accessor for ActionRequest);
      sub_100269FE8(v208, v207, type metadata accessor for ActionRequest);
      v206(v207, 0, 1, v209);
      v210 = swift_task_alloc();
      *(v0 + 1880) = v210;
      *v210 = v0;
      v210[1] = sub_10024F280;
      v211 = *(v0 + 1440);
      v212 = *(v0 + 1024);
      v213 = *(v0 + 1008);
      v214 = *(v0 + 1000);

      sub_1002550B8(v211, v214, v213);
    }

    return;
  }

  v434 = (v0 + 984);
  v33 = *(v0 + 1908);
  v462 = *(v0 + 1776);
  v454 = "redential list provided";
  v34 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v16;
    *(v0 + 1908) = v33;
    *(v0 + 1560) = v462;
    v43 = *(v0 + 1520);
    if (v16 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_153;
    }

    v44 = *(v0 + 1424);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v43 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v48 * v16, v44, type metadata accessor for ActionRequest);
    sub_10025DCD8(v44, v47, v46, v45);
    v49 = *v44;
    v50 = v44[1];

    v468._countAndFlagsBits = v49;
    v468._object = v50;
    v51 = sub_10025DC8C(v468);
    if (v51 > 4)
    {
      if (v51 <= 7)
      {
        if (v51 != 6)
        {
          if (v51 == 7)
          {
            v52 = *(v0 + 1264);
            defaultLogger()();
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.debug.getter();
            v55 = os_log_type_enabled(v53, v54);
            v56 = *(v0 + 1424);
            v57 = *(v0 + 1264);
            v58 = *(v0 + 1208);
            v59 = *(v0 + 1200);
            if (v55)
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              v61 = v54;
              v62 = v53;
              v63 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_46:
              _os_log_impl(&_mh_execute_header, v62, v61, v63, v60, 2u);
              v34 = &unk_1006BF9D0;

              goto LABEL_47;
            }

            goto LABEL_47;
          }

          v215 = *(v0 + 1424);
          v216 = *(v0 + 1400);
          v217 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v215, v216, type metadata accessor for ActionRequest);
          v218 = Logger.logObject.getter();
          v219 = static os_log_type_t.debug.getter();
          v220 = os_log_type_enabled(v218, v219);
          v221 = *(v0 + 1400);
          LOBYTE(v458) = v33;
          if (!v220)
          {
            v252 = *(v0 + 1296);
            v253 = *(v0 + 1208);
            v254 = *(v0 + 1200);

            sub_100267A1C(v221, type metadata accessor for ActionRequest);
            v255 = *(v253 + 8);
            v255(v252, v254);
LABEL_119:
            v465 = v255;
            *(v0 + 1608) = v255;
            v281 = *(*(v0 + 1520) + 16);
            if (v281)
            {
              v282 = 0;
              v283 = 0;
              while (1)
              {
                v284 = *(v0 + 1520);
                if (v283 >= *(v284 + 16))
                {
                  break;
                }

                v285 = *(v0 + 1392);
                sub_100269FE8(v284 + v282 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v285, type metadata accessor for ActionRequest);
                v286 = *v285 == 0x5F4F545F444E4553 && v285[1] == 0xED0000454D4F4942;
                if (v286 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v287 = 0;
                  goto LABEL_130;
                }

                ++v283;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v282 += v48;
                if (v281 == v283)
                {
                  goto LABEL_128;
                }
              }

LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

LABEL_128:
            v287 = 1;
LABEL_130:
            v288 = *(v0 + 1512);
            v289 = *(v0 + 1488);
            v290 = *(v0 + 1480);
            v291 = *(v0 + 1288);
            (*(v0 + 1504))(v289, v287, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v289, v290, &qword_10083E3E8, &unk_1006DBD00);
            v292 = Logger.logObject.getter();
            v293 = static os_log_type_t.debug.getter();
            v294 = os_log_type_enabled(v292, v293);
            v295 = *(v0 + 1480);
            if (v294)
            {
              v296 = *(v0 + 1360);
              v297 = *(v0 + 1352);
              v298 = swift_slowAlloc();
              *v298 = 67109120;
              LODWORD(v297) = (*(v296 + 48))(v295, 1, v297) != 1;
              sub_10000BE18(v295, &qword_10083E3E8, &unk_1006DBD00);
              *(v298 + 4) = v297;
              _os_log_impl(&_mh_execute_header, v292, v293, "Biome data exists to be donated? -> %{BOOL}d", v298, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v299 = v292;
            v300 = *(v0 + 1544);
            v301 = *(v0 + 1488);
            v302 = *(v0 + 1472);
            v303 = *(v0 + 1360);
            v304 = *(v0 + 1352);
            v305 = *(v0 + 1288);
            v306 = *(v0 + 1208);
            v307 = *(v0 + 1200);
            v308 = *(v0 + 1024);

            *(v0 + 1616) = (v306 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v465(v305, v307);
            v309 = *(v308 + v300);
            sub_10000BBC4(v301, v302, &qword_10083E3E8, &unk_1006DBD00);
            v310 = *(v303 + 48);
            v311 = (v310)(v302, 1, v304);
            v312 = *(v0 + 1472);
            if (v311 == 1)
            {
              v313 = *(v0 + 1160);

              sub_10000BE18(v312, &qword_10083E3E8, &unk_1006DBD00);
              v314 = type metadata accessor for PendingActionContext(0);
              (*(*(v314 - 8) + 56))(v313, 1, 1, v314);
            }

            else
            {
              sub_10000BBC4(v312 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v312, type metadata accessor for ActionRequest);
            }

            v315 = *(v0 + 1160);
            v316 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v315);

            sub_10000BE18(v315, &unk_100840960, &qword_1006DBCB0);
            v454 = v310;
            if (*(v316 + 152) == 1)
            {
LABEL_154:
              v339 = *(v0 + 1424);
              v340 = *(v0 + 1152);
              v341 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v341;
              sub_10000BBC4(v339 + v341, v340, &unk_100840960, &qword_1006DBCB0);
              v342 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v342;
              v343 = *(v342 - 8);
              v344 = *(v343 + 48);
              *(v0 + 1632) = v344;
              *(v0 + 1640) = (v343 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v466 = v344;
              v345 = v344(v340, 1, v342);
              v346 = *(v0 + 1152);
              v441 = v341;
              v446 = v339;
              if (v345 == 1)
              {
                sub_10000BE18(v346, &unk_100840960, &qword_1006DBCB0);
                v452 = 0;
                v347 = 0;
              }

              else
              {
                v347 = *(v346 + 72);
                v452 = *(v346 + 64);
                v348 = *(v0 + 1152);

                sub_100267A1C(v348, type metadata accessor for PendingActionContext);
              }

              v449 = v347;
              *(v0 + 1648) = v347;
              v349 = *(v0 + 1488);
              v350 = *(v0 + 1456);
              v351 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v349, v350, &qword_10083E3E8, &unk_1006DBD00);
              v352 = (v454)(v350, 1, v351);
              v353 = *(v0 + 1456);
              if (v352 == 1)
              {
                v354 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v343 + 56))(v354, 1, 1, v342);
                v355 = v458;
                v357 = v441;
                v356 = v446;
              }

              else
              {
                v358 = *(v0 + 1144);
                sub_10000BBC4(v353 + *(*(v0 + 1352) + 20), v358, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v353, type metadata accessor for ActionRequest);
                v355 = v458;
                v357 = v441;
                v356 = v446;
                v466(v358, 1, v342);
              }

              v359 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v356 + v357, v359, &unk_100840960, &qword_1006DBCB0);
              v360 = v466(v359, 1, v342);
              v361 = *(v0 + 1136);
              if (v360 == 1)
              {
                sub_10000BE18(v361, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v362 = *(v361 + *(v342 + 124));
                sub_100267A1C(v361, type metadata accessor for PendingActionContext);
              }

              v363 = swift_task_alloc();
              *(v0 + 1656) = v363;
              *v363 = v0;
              v363[1] = sub_100239F30;
              v364 = *(v0 + 1536);
              v365 = *(v0 + 1464);
              v366 = *(v0 + 1024);
              v367 = *(v0 + 1016);
              v368 = *(v0 + 1008);
              v369 = *(v0 + 1000);

              sub_10025744C(v452, v449, v364, v369, v368, v367, v355, v365);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_154;
            }

LABEL_153:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_154;
          }

          v222 = *(v0 + 1352);
          v223 = *(v0 + 1168);
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          *(v0 + 968) = v225;
          *v224 = 136315138;
          sub_10000BBC4(v221 + *(v222 + 20), v223, &unk_100840960, &qword_1006DBCB0);
          v226 = type metadata accessor for PendingActionContext(0);
          v227 = (*(*(v226 - 8) + 48))(v223, 1, v226);
          v228 = *(v0 + 1168);
          if (v227 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v273 = *(v228 + 64);
            v274 = *(v228 + 72);

            sub_100267A1C(v228, type metadata accessor for PendingActionContext);
            if (v274)
            {
              v275 = String.debugDescription.getter();
              v277 = v276;

LABEL_118:
              v464 = *(v0 + 1296);
              v278 = *(v0 + 1208);
              v279 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v280 = sub_100141FE4(v275, v277, (v0 + 968));

              *(v224 + 4) = v280;
              _os_log_impl(&_mh_execute_header, v218, v219, "server requested an action to set state:%s", v224, 0xCu);
              sub_10000BB78(v225);

              v255 = *(v278 + 8);
              v255(v464, v279);
              goto LABEL_119;
            }
          }

          v275 = 0;
          v277 = 0xE000000000000000;
          goto LABEL_118;
        }

        v458 = v33;
        v115 = *(v0 + 1344);
        defaultLogger()();
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&_mh_execute_header, v116, v117, "display notification received", v118, 2u);
        }

        v35 = *(v0 + 1512);
        v36 = *(v0 + 1504);
        v37 = *(v0 + 1496);
        v38 = *(v0 + 1424);
        v39 = *(v0 + 1352);
        v40 = *(v0 + 1344);
        v41 = *(v0 + 1208);
        v42 = *(v0 + 1200);

        (*(v41 + 8))(v40, v42);
        sub_10000BE18(v37, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v38, v37, type metadata accessor for ActionRequest);
        v36(v37, 0, 1, v39);
        goto LABEL_13;
      }

      if (v51 != 8)
      {
        if (v51 != 10)
        {
          v237 = *(v0 + 1248);
          defaultLogger()();
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&_mh_execute_header, v238, v239, "server requested an action to store token", v240, 2u);
          }

          v241 = *(v0 + 1424);
          v242 = *(v0 + 1352);
          v243 = *(v0 + 1248);
          v244 = *(v0 + 1208);
          v245 = *(v0 + 1200);
          v246 = *(v0 + 1104);

          v247 = *(v244 + 8);
          *(v0 + 1672) = v247;
          v247(v243, v245);
          sub_10000BBC4(v241 + *(v242 + 20), v246, &unk_100840960, &qword_1006DBCB0);
          v248 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v248 - 8) + 48))(v246, 1, v248) == 1)
          {
            v249 = *(v0 + 1536);
            v250 = *(v0 + 1520);
            v251 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v251, &unk_100840960, &qword_1006DBCB0);
LABEL_147:
            v326 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v326, type metadata accessor for ActionRequest);
            v327 = *(v0 + 1488);
            v328 = *(v0 + 1480);
            v329 = *(v0 + 1472);
            v330 = *(v0 + 1464);
            v331 = *(v0 + 1456);
            v332 = *(v0 + 1448);
            v333 = *(v0 + 1440);
            v334 = *(v0 + 1432);
            v370 = *(v0 + 1424);
            v372 = *(v0 + 1416);
            v374 = *(v0 + 1408);
            v376 = *(v0 + 1400);
            v378 = *(v0 + 1392);
            v380 = *(v0 + 1384);
            v382 = *(v0 + 1376);
            v384 = *(v0 + 1344);
            v386 = *(v0 + 1336);
            v388 = *(v0 + 1328);
            v390 = *(v0 + 1320);
            v392 = *(v0 + 1312);
            v394 = *(v0 + 1304);
            v396 = *(v0 + 1296);
            v398 = *(v0 + 1288);
            v400 = *(v0 + 1280);
            v402 = *(v0 + 1272);
            v404 = *(v0 + 1264);
            v406 = *(v0 + 1256);
            v408 = *(v0 + 1248);
            v410 = *(v0 + 1240);
            v412 = *(v0 + 1232);
            v414 = *(v0 + 1224);
            v416 = *(v0 + 1216);
            v418 = *(v0 + 1192);
            v420 = *(v0 + 1184);
            v422 = *(v0 + 1176);
            v424 = *(v0 + 1168);
            v426 = *(v0 + 1160);
            v428 = *(v0 + 1152);
            v430 = *(v0 + 1144);
            v432 = *(v0 + 1136);
            v435 = *(v0 + 1128);
            v437 = *(v0 + 1120);
            v440 = *(v0 + 1112);
            v445 = *(v0 + 1104);
            v448 = *(v0 + 1096);
            v451 = *(v0 + 1088);
            v455 = *(v0 + 1080);
            v457 = *(v0 + 1072);
            v460 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v32 = *(v0 + 8);
            goto LABEL_8;
          }

          v256 = *(v0 + 1104);
          v257 = (v256 + *(v248 + 128));
          v258 = *v257;
          *(v0 + 1680) = *v257;
          v259 = v257[1];
          *(v0 + 1688) = v259;
          v260 = v257[2];
          *(v0 + 1696) = v257[3];
          sub_1000AB7D8(v258, v259);
          sub_100267A1C(v256, type metadata accessor for PendingActionContext);
          if (!v259)
          {
            v324 = *(v0 + 1536);
            v325 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_147;
          }

          v261 = *(v0 + 1072);
          v262 = *(v0 + 1064);
          v263 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v264 = String.data(using:allowLossyConversion:)();
          v266 = v265;
          *(v0 + 1704) = v264;
          *(v0 + 1712) = v265;
          (*(v262 + 8))(v261, v263);
          if (v266 >> 60 == 15)
          {
            v267 = *(v0 + 1536);
            v268 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_147;
          }

          if (qword_100832C20 == -1)
          {
LABEL_149:
            v335 = *(qword_100882228 + 16);
            *(v0 + 1720) = v335;
            v336 = v335;
            v337 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v337;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v338 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v338;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v336 retrievePIITokenFromSyncableKeyStoreForIdentifier:v337 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_168:
          swift_once();
          goto LABEL_149;
        }

        v80 = *(v0 + 1232);
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v82 = os_log_type_enabled(v53, v81);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1232);
        v58 = *(v0 + 1208);
        v59 = *(v0 + 1200);
        if (!v82)
        {
          goto LABEL_47;
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = v81;
        v62 = v53;
        v63 = "INVALID ACTION REQUEST";
        goto LABEL_46;
      }

      v119 = *(v0 + 1424);
      v120 = *(v0 + 1384);
      v121 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v119, v120, type metadata accessor for ActionRequest);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 1384);
      v458 = v33;
      if (!v124)
      {
        v147 = *(v0 + 1256);
        v148 = *(v0 + 1208);
        v149 = *(v0 + 1200);

        sub_100267A1C(v125, type metadata accessor for ActionRequest);
        (*(v148 + 8))(v147, v149);
LABEL_78:
        v185 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v185, &unk_100840960, &qword_1006DBCB0);
        v186 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v186 - 8) + 48))(v185, 1, v186) == 1)
        {
          v187 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v187, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v188 = *(v0 + 1112);
        v189 = (v188 + *(v186 + 112));
        v191 = *v189;
        v190 = v189[1];

        sub_100267A1C(v188, type metadata accessor for PendingActionContext);
        if (!v190)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v33 = v458;
          goto LABEL_15;
        }

        v192 = *(v0 + 1088);
        v193 = *(v0 + 1080);
        v194 = v34;
        v195 = *(v0 + 1024);
        v196 = type metadata accessor for TaskPriority();
        v197 = *(v196 - 8);
        (*(v197 + 56))(v192, 1, 1, v196);
        v198 = swift_allocObject();
        v198[2] = 0;
        v198[3] = 0;
        v198[4] = v195;
        v198[5] = v191;
        v198[6] = v190;
        sub_10000BBC4(v192, v193, &unk_100845860, v194);
        LODWORD(v192) = (*(v197 + 48))(v193, 1, v196);

        v199 = *(v0 + 1080);
        if (v192 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v194);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v197 + 8))(v199, v196);
        }

        v34 = v194;
        v201 = v198[2];
        v200 = v198[3];
        swift_unknownObjectRetain();

        v33 = v458;
        if (v201)
        {
          swift_getObjectType();
          v202 = dispatch thunk of Actor.unownedExecutor.getter();
          v204 = v203;
          swift_unknownObjectRelease();
        }

        else
        {
          v202 = 0;
          v204 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v194);
        if (v204 | v202)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v202;
          *(v0 + 872) = v204;
        }

        v56 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_48;
      }

      v126 = *(v0 + 1352);
      v127 = *(v0 + 1120);
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *(v0 + 960) = v129;
      *v128 = 136315138;
      sub_10000BBC4(v125 + *(v126 + 20), v127, &unk_100840960, &qword_1006DBCB0);
      v130 = type metadata accessor for PendingActionContext(0);
      v131 = (*(*(v130 - 8) + 48))(v127, 1, v130);
      v132 = *(v0 + 1120);
      if (v131 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v178 = (v132 + *(v130 + 112));
        v179 = *v178;
        v180 = v178[1];

        sub_100267A1C(v132, type metadata accessor for PendingActionContext);
        if (v180)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v181 = *(v0 + 1256);
          v182 = *(v0 + 1208);
          v183 = *(v0 + 1200);
          v184 = sub_100141FE4(v179, v180, (v0 + 960));

          *(v128 + 4) = v184;
          _os_log_impl(&_mh_execute_header, v122, v123, "server requested to delete the Account Key Signing Key with identifier %s", v128, 0xCu);
          sub_10000BB78(v129);

          (*(v182 + 8))(v181, v183);
          v33 = v458;
          v34 = &unk_1006BF9D0;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v180 = 0xE300000000000000;
      v179 = 4999502;
      goto LABEL_77;
    }

    if (v51 <= 2)
    {
      break;
    }

    if (v51 == 3)
    {
      v83 = *(v0 + 1424);
      v84 = *(v0 + 1408);
      v85 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v83, v84, type metadata accessor for ActionRequest);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = *(v0 + 1408);
        v89 = *(v0 + 1352);
        v90 = *(v0 + 1176);
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *(v0 + 976) = v92;
        *v91 = 136315138;
        sub_10000BBC4(v88 + *(v89 + 20), v90, &unk_100840960, &qword_1006DBCB0);
        v93 = type metadata accessor for PendingActionContext(0);
        v94 = (*(*(v93 - 8) + 48))(v90, 1, v93);
        v95 = *(v0 + 1176);
        v458 = v33;
        if (v94 == 1)
        {
          sub_10000BE18(v95, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_72;
        }

        v169 = *(v95 + 48);
        v170 = *(v95 + 56);
        v171 = *(v0 + 1176);

        sub_100267A1C(v171, type metadata accessor for PendingActionContext);
        if (v170)
        {
          v172 = String.debugDescription.getter();
          v174 = v173;
        }

        else
        {
LABEL_72:
          v172 = 0;
          v174 = 0xE000000000000000;
        }

        v439 = *(v0 + 1304);
        v444 = *(v0 + 1424);
        v175 = *(v0 + 1208);
        v176 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v177 = sub_100141FE4(v172, v174, (v0 + 976));

        *(v91 + 4) = v177;
        _os_log_impl(&_mh_execute_header, v86, v87, "server requested an action to self heal: %s", v91, 0xCu);
        sub_10000BB78(v92);

        (*(v175 + 8))(v439, v176);
        sub_100267A1C(v444, type metadata accessor for ActionRequest);
LABEL_13:
        v33 = v458;
      }

      else
      {
        v142 = *(v0 + 1424);
        v143 = *(v0 + 1408);
        v144 = *(v0 + 1304);
        v145 = *(v0 + 1208);
        v146 = *(v0 + 1200);

        sub_100267A1C(v143, type metadata accessor for ActionRequest);
        (*(v145 + 8))(v144, v146);
        sub_100267A1C(v142, type metadata accessor for ActionRequest);
      }

      v34 = &unk_1006BF9D0;
      goto LABEL_15;
    }

    v458 = v33;
    v96 = *(v0 + 1336);
    defaultLogger()();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "display message received", v99, 2u);
    }

    v100 = *(v0 + 1424);
    v101 = *(v0 + 1352);
    v102 = *(v0 + 1336);
    v103 = *(v0 + 1208);
    v104 = *(v0 + 1200);
    v105 = *(v0 + 1024);
    v106 = *(v0 + 1008);
    v107 = *(v0 + 1000);

    v108 = *(v103 + 8);
    v108(v102, v104);
    sub_1002556F0(v100 + *(v101 + 20), v107, v106);
    type metadata accessor for IdentityProofingDataContext();
    v109 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v110 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v110 + 54);
    sub_100031B5C(&v110[4], v0 + 408);
    os_unfair_lock_unlock(v110 + 54);
    if (v462)
    {
      return;
    }

    v111 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v150 = sub_10054C274();
    v443 = v108;
    v151 = *(v0 + 1896);
    v152 = *(v0 + 1424);
    v153 = *(v0 + 1416);
    v154 = *(v0 + 1368);
    v463 = *(v0 + 1016);
    v155 = *(v0 + 1008);
    v156 = *(v0 + 1000);

    v157 = [v150 newBackgroundContext];
    *(v109 + 16) = v157;
    [v157 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v152, v153, type metadata accessor for ActionRequest);
    v158 = swift_allocObject();
    v158[2] = v109;
    v158[3] = v156;
    v158[4] = v155;
    v158[5] = v463;
    sub_100269F80(v153, v158 + ((v151 + 48) & ~v151), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v159 = *(v109 + 16);
    v160 = swift_allocObject();
    v160[2] = sub_100267BF8;
    v160[3] = v158;
    v160[4] = v434;
    v161 = swift_allocObject();
    *(v161 + 16) = sub_100267C5C;
    *(v161 + 24) = v160;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v161;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v162 = _Block_copy((v0 + 800));
    v163 = *(v0 + 840);

    [v159 performBlockAndWait:v162];
    _Block_release(v162);
    LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

    if (v162)
    {
      __break(1u);
      goto LABEL_167;
    }

    v33 = v458;
    v34 = &unk_1006BF9D0;
    if (*v434)
    {
      v164 = *v434;
      swift_willThrow();

      v165 = *(v0 + 1328);
      v166 = *(v0 + 1200);
      v167 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v443(v165, v166);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v462 = 0;
LABEL_15:
    v16 = *(v0 + 1568) + 1;
    if (v16 == *(v0 + 1528))
    {
      goto LABEL_6;
    }
  }

  if (!v51)
  {
    v112 = *(v0 + 1272);
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v114 = os_log_type_enabled(v53, v113);
    v56 = *(v0 + 1424);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1208);
    v59 = *(v0 + 1200);
    if (v114)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = v113;
      v62 = v53;
      v63 = "server requested an action to wait for update";
      goto LABEL_46;
    }

LABEL_47:

    (*(v58 + 8))(v57, v59);
LABEL_48:
    sub_100267A1C(v56, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v51 != 2)
  {
    v229 = *(v0 + 1312);
    defaultLogger()();
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      *v232 = 0;
      _os_log_impl(&_mh_execute_header, v230, v231, "Starting Provisioning flow", v232, 2u);
    }

    v233 = *(v0 + 1312);
    v234 = *(v0 + 1208);
    v235 = *(v0 + 1200);
    v236 = *(v0 + 992);

    (*(v234 + 8))(v233, v235);
    if (*(v236 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v317 = *(v0 + 1424);
    v318 = *(*(v0 + 1352) + 20);
    v319 = swift_task_alloc();
    *(v0 + 1592) = v319;
    *v319 = v0;
    v319[1] = sub_10023710C;
    v320 = *(v0 + 1024);
    v321 = *(v0 + 1016);
    v322 = *(v0 + 1008);
    v323 = *(v0 + 1000);

    sub_100229698(v317 + v318, v323, v322, v321, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  v64 = *(v0 + 1320);
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "server requested an action to execute new workflow", v67, 2u);
  }

  v68 = *(v0 + 1424);
  v69 = *(v0 + 1352);
  v70 = *(v0 + 1320);
  v71 = *(v0 + 1208);
  v72 = *(v0 + 1200);
  v73 = *(v0 + 1192);

  (*(v71 + 8))(v70, v72);
  v74 = *(v69 + 20);
  sub_10000BBC4(v68 + v74, v73, &unk_100840960, &qword_1006DBCB0);
  v75 = type metadata accessor for PendingActionContext(0);
  v76 = *(*(v75 - 8) + 48);
  v77 = v76(v73, 1, v75);
  v78 = *(v0 + 1192);
  if (v77 == 1)
  {
    sub_10000BE18(v78, &unk_100840960, &qword_1006DBCB0);
    v79 = 3;
  }

  else
  {
    v79 = *(v78 + *(v75 + 76));
    sub_100267A1C(v78, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v79;
  v133 = *(v0 + 1184);
  sub_10000BBC4(v68 + v74, v133, &unk_100840960, &qword_1006DBCB0);
  v134 = v76(v133, 1, v75);
  v135 = *(v0 + 1184);
  v136 = *(v0 + 1096);
  if (v134 == 1)
  {
    sub_10000BE18(v135, &unk_100840960, &qword_1006DBCB0);
    v137 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
  }

  else
  {
    v138 = *(v75 + 72);
    v139 = *(v0 + 1184);
    sub_10000BBC4(v135 + v138, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v139, type metadata accessor for PendingActionContext);
  }

  v140 = *(v0 + 1096);
  v141 = *(v0 + 1024);
  sub_1002593E4(v140);
  sub_10000BE18(v140, &qword_100835968, &qword_1006DBC90);
  if (v79 <= 1)
  {
    v34 = &unk_1006BF9D0;
    v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v168)
    {
      goto LABEL_112;
    }

    goto LABEL_69;
  }

  v34 = &unk_1006BF9D0;
  if (v79 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v33 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_112:
  v269 = swift_task_alloc();
  *(v0 + 1576) = v269;
  *v269 = v0;
  v269[1] = sub_1002342A8;
  v270 = *(v0 + 1024);
  v271 = *(v0 + 1008);
  v272 = *(v0 + 1000);

  sub_100259898(v68 + v74, v272, v271);
}

uint64_t sub_100246764()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1856) = v3;
  if (v3)
  {
    v4 = v1[224];
    v5 = v1[212];
    v6 = v1[211];

    v7 = sub_1002509E4;
  }

  else
  {
    v7 = sub_100246894;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_100246894()
{
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1016);

  v4 = IdentityTarget.rawValue.getter();
  if (v4 == IdentityTarget.rawValue.getter())
  {
    v5 = *(v0 + 1688);
    v6 = swift_task_alloc();
    *(v0 + 1864) = v6;
    *v6 = v0;
    v6[1] = sub_10024969C;
    v7 = *(v0 + 1792);
    v8 = *(v0 + 1784);
    v9 = *(v0 + 1680);

    sub_10025F680(v9, v5, v8, v7);
    return;
  }

  v10 = *(v0 + 1792);
  v11 = *(v0 + 1720);
  v12 = *(v0 + 1712);
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1696);
  v15 = *(v0 + 1688);
  sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
  sub_10000BD94(v13, v12);

  v16 = *(v0 + 1568) + 1;
  if (v16 == *(v0 + 1528))
  {
LABEL_6:
    v17 = *(v0 + 1520);

    v18 = *(v0 + 1536);
    v19 = *(v0 + 1520);
    v20 = *(v0 + 1496);
    v21 = *(v0 + 1448);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 1352);

    sub_10000BBC4(v20, v21, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v22 + 48))(v21, 1, v23) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      v24 = *(v0 + 1496);
      v25 = *(v0 + 1488);
      v26 = *(v0 + 1480);
      v27 = *(v0 + 1472);
      v28 = *(v0 + 1464);
      v29 = *(v0 + 1456);
      v30 = *(v0 + 1440);
      v31 = *(v0 + 1432);
      v371 = *(v0 + 1424);
      v373 = *(v0 + 1416);
      v375 = *(v0 + 1408);
      v377 = *(v0 + 1400);
      v379 = *(v0 + 1392);
      v381 = *(v0 + 1384);
      v383 = *(v0 + 1376);
      v385 = *(v0 + 1344);
      v387 = *(v0 + 1336);
      v389 = *(v0 + 1328);
      v391 = *(v0 + 1320);
      v393 = *(v0 + 1312);
      v395 = *(v0 + 1304);
      v397 = *(v0 + 1296);
      v399 = *(v0 + 1288);
      v401 = *(v0 + 1280);
      v403 = *(v0 + 1272);
      v405 = *(v0 + 1264);
      v407 = *(v0 + 1256);
      v409 = *(v0 + 1248);
      v411 = *(v0 + 1240);
      v413 = *(v0 + 1232);
      v415 = *(v0 + 1224);
      v417 = *(v0 + 1216);
      v419 = *(v0 + 1192);
      v421 = *(v0 + 1184);
      v423 = *(v0 + 1176);
      v425 = *(v0 + 1168);
      v427 = *(v0 + 1160);
      v429 = *(v0 + 1152);
      v431 = *(v0 + 1144);
      v433 = *(v0 + 1136);
      v436 = *(v0 + 1128);
      v438 = *(v0 + 1120);
      v442 = *(v0 + 1112);
      v447 = *(v0 + 1104);
      v450 = *(v0 + 1096);
      v453 = *(v0 + 1088);
      v456 = *(v0 + 1080);
      v459 = *(v0 + 1072);
      v461 = *(v0 + 1048);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v32 = *(v0 + 8);
LABEL_8:

      v32();
    }

    else
    {
      v205 = *(v0 + 1512);
      v206 = *(v0 + 1504);
      v207 = *(v0 + 1440);
      v208 = *(v0 + 1376);
      v209 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v208, type metadata accessor for ActionRequest);
      sub_100269FE8(v208, v207, type metadata accessor for ActionRequest);
      v206(v207, 0, 1, v209);
      v210 = swift_task_alloc();
      *(v0 + 1880) = v210;
      *v210 = v0;
      v210[1] = sub_10024F280;
      v211 = *(v0 + 1440);
      v212 = *(v0 + 1024);
      v213 = *(v0 + 1008);
      v214 = *(v0 + 1000);

      sub_1002550B8(v211, v214, v213);
    }

    return;
  }

  v434 = (v0 + 984);
  v33 = *(v0 + 1908);
  v462 = *(v0 + 1776);
  v454 = "redential list provided";
  v34 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v16;
    *(v0 + 1908) = v33;
    *(v0 + 1560) = v462;
    v43 = *(v0 + 1520);
    if (v16 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_153;
    }

    v44 = *(v0 + 1424);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v43 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v48 * v16, v44, type metadata accessor for ActionRequest);
    sub_10025DCD8(v44, v47, v46, v45);
    v49 = *v44;
    v50 = v44[1];

    v468._countAndFlagsBits = v49;
    v468._object = v50;
    v51 = sub_10025DC8C(v468);
    if (v51 > 4)
    {
      if (v51 <= 7)
      {
        if (v51 != 6)
        {
          if (v51 == 7)
          {
            v52 = *(v0 + 1264);
            defaultLogger()();
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.debug.getter();
            v55 = os_log_type_enabled(v53, v54);
            v56 = *(v0 + 1424);
            v57 = *(v0 + 1264);
            v58 = *(v0 + 1208);
            v59 = *(v0 + 1200);
            if (v55)
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              v61 = v54;
              v62 = v53;
              v63 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_46:
              _os_log_impl(&_mh_execute_header, v62, v61, v63, v60, 2u);
              v34 = &unk_1006BF9D0;

              goto LABEL_47;
            }

            goto LABEL_47;
          }

          v215 = *(v0 + 1424);
          v216 = *(v0 + 1400);
          v217 = *(v0 + 1296);
          defaultLogger()();
          sub_100269FE8(v215, v216, type metadata accessor for ActionRequest);
          v218 = Logger.logObject.getter();
          v219 = static os_log_type_t.debug.getter();
          v220 = os_log_type_enabled(v218, v219);
          v221 = *(v0 + 1400);
          LOBYTE(v458) = v33;
          if (!v220)
          {
            v252 = *(v0 + 1296);
            v253 = *(v0 + 1208);
            v254 = *(v0 + 1200);

            sub_100267A1C(v221, type metadata accessor for ActionRequest);
            v255 = *(v253 + 8);
            v255(v252, v254);
LABEL_119:
            v465 = v255;
            *(v0 + 1608) = v255;
            v281 = *(*(v0 + 1520) + 16);
            if (v281)
            {
              v282 = 0;
              v283 = 0;
              while (1)
              {
                v284 = *(v0 + 1520);
                if (v283 >= *(v284 + 16))
                {
                  break;
                }

                v285 = *(v0 + 1392);
                sub_100269FE8(v284 + v282 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v285, type metadata accessor for ActionRequest);
                v286 = *v285 == 0x5F4F545F444E4553 && v285[1] == 0xED0000454D4F4942;
                if (v286 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v287 = 0;
                  goto LABEL_130;
                }

                ++v283;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v282 += v48;
                if (v281 == v283)
                {
                  goto LABEL_128;
                }
              }

LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

LABEL_128:
            v287 = 1;
LABEL_130:
            v288 = *(v0 + 1512);
            v289 = *(v0 + 1488);
            v290 = *(v0 + 1480);
            v291 = *(v0 + 1288);
            (*(v0 + 1504))(v289, v287, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v289, v290, &qword_10083E3E8, &unk_1006DBD00);
            v292 = Logger.logObject.getter();
            v293 = static os_log_type_t.debug.getter();
            v294 = os_log_type_enabled(v292, v293);
            v295 = *(v0 + 1480);
            if (v294)
            {
              v296 = *(v0 + 1360);
              v297 = *(v0 + 1352);
              v298 = swift_slowAlloc();
              *v298 = 67109120;
              LODWORD(v297) = (*(v296 + 48))(v295, 1, v297) != 1;
              sub_10000BE18(v295, &qword_10083E3E8, &unk_1006DBD00);
              *(v298 + 4) = v297;
              _os_log_impl(&_mh_execute_header, v292, v293, "Biome data exists to be donated? -> %{BOOL}d", v298, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v299 = v292;
            v300 = *(v0 + 1544);
            v301 = *(v0 + 1488);
            v302 = *(v0 + 1472);
            v303 = *(v0 + 1360);
            v304 = *(v0 + 1352);
            v305 = *(v0 + 1288);
            v306 = *(v0 + 1208);
            v307 = *(v0 + 1200);
            v308 = *(v0 + 1024);

            *(v0 + 1616) = (v306 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v465(v305, v307);
            v309 = *(v308 + v300);
            sub_10000BBC4(v301, v302, &qword_10083E3E8, &unk_1006DBD00);
            v310 = *(v303 + 48);
            v311 = (v310)(v302, 1, v304);
            v312 = *(v0 + 1472);
            if (v311 == 1)
            {
              v313 = *(v0 + 1160);

              sub_10000BE18(v312, &qword_10083E3E8, &unk_1006DBD00);
              v314 = type metadata accessor for PendingActionContext(0);
              (*(*(v314 - 8) + 56))(v313, 1, 1, v314);
            }

            else
            {
              sub_10000BBC4(v312 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v312, type metadata accessor for ActionRequest);
            }

            v315 = *(v0 + 1160);
            v316 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v315);

            sub_10000BE18(v315, &unk_100840960, &qword_1006DBCB0);
            v454 = v310;
            if (*(v316 + 152) == 1)
            {
LABEL_154:
              v339 = *(v0 + 1424);
              v340 = *(v0 + 1152);
              v341 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v341;
              sub_10000BBC4(v339 + v341, v340, &unk_100840960, &qword_1006DBCB0);
              v342 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v342;
              v343 = *(v342 - 8);
              v344 = *(v343 + 48);
              *(v0 + 1632) = v344;
              *(v0 + 1640) = (v343 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v466 = v344;
              v345 = v344(v340, 1, v342);
              v346 = *(v0 + 1152);
              v441 = v341;
              v446 = v339;
              if (v345 == 1)
              {
                sub_10000BE18(v346, &unk_100840960, &qword_1006DBCB0);
                v452 = 0;
                v347 = 0;
              }

              else
              {
                v347 = *(v346 + 72);
                v452 = *(v346 + 64);
                v348 = *(v0 + 1152);

                sub_100267A1C(v348, type metadata accessor for PendingActionContext);
              }

              v449 = v347;
              *(v0 + 1648) = v347;
              v349 = *(v0 + 1488);
              v350 = *(v0 + 1456);
              v351 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v349, v350, &qword_10083E3E8, &unk_1006DBD00);
              v352 = (v454)(v350, 1, v351);
              v353 = *(v0 + 1456);
              if (v352 == 1)
              {
                v354 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v343 + 56))(v354, 1, 1, v342);
                v355 = v458;
                v357 = v441;
                v356 = v446;
              }

              else
              {
                v358 = *(v0 + 1144);
                sub_10000BBC4(v353 + *(*(v0 + 1352) + 20), v358, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v353, type metadata accessor for ActionRequest);
                v355 = v458;
                v357 = v441;
                v356 = v446;
                v466(v358, 1, v342);
              }

              v359 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v356 + v357, v359, &unk_100840960, &qword_1006DBCB0);
              v360 = v466(v359, 1, v342);
              v361 = *(v0 + 1136);
              if (v360 == 1)
              {
                sub_10000BE18(v361, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                v362 = *(v361 + *(v342 + 124));
                sub_100267A1C(v361, type metadata accessor for PendingActionContext);
              }

              v363 = swift_task_alloc();
              *(v0 + 1656) = v363;
              *v363 = v0;
              v363[1] = sub_100239F30;
              v364 = *(v0 + 1536);
              v365 = *(v0 + 1464);
              v366 = *(v0 + 1024);
              v367 = *(v0 + 1016);
              v368 = *(v0 + 1008);
              v369 = *(v0 + 1000);

              sub_10025744C(v452, v449, v364, v369, v368, v367, v355, v365);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_154;
            }

LABEL_153:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_154;
          }

          v222 = *(v0 + 1352);
          v223 = *(v0 + 1168);
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          *(v0 + 968) = v225;
          *v224 = 136315138;
          sub_10000BBC4(v221 + *(v222 + 20), v223, &unk_100840960, &qword_1006DBCB0);
          v226 = type metadata accessor for PendingActionContext(0);
          v227 = (*(*(v226 - 8) + 48))(v223, 1, v226);
          v228 = *(v0 + 1168);
          if (v227 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v273 = *(v228 + 64);
            v274 = *(v228 + 72);

            sub_100267A1C(v228, type metadata accessor for PendingActionContext);
            if (v274)
            {
              v275 = String.debugDescription.getter();
              v277 = v276;

LABEL_118:
              v464 = *(v0 + 1296);
              v278 = *(v0 + 1208);
              v279 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v280 = sub_100141FE4(v275, v277, (v0 + 968));

              *(v224 + 4) = v280;
              _os_log_impl(&_mh_execute_header, v218, v219, "server requested an action to set state:%s", v224, 0xCu);
              sub_10000BB78(v225);

              v255 = *(v278 + 8);
              v255(v464, v279);
              goto LABEL_119;
            }
          }

          v275 = 0;
          v277 = 0xE000000000000000;
          goto LABEL_118;
        }

        v458 = v33;
        v115 = *(v0 + 1344);
        defaultLogger()();
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&_mh_execute_header, v116, v117, "display notification received", v118, 2u);
        }

        v35 = *(v0 + 1512);
        v36 = *(v0 + 1504);
        v37 = *(v0 + 1496);
        v38 = *(v0 + 1424);
        v39 = *(v0 + 1352);
        v40 = *(v0 + 1344);
        v41 = *(v0 + 1208);
        v42 = *(v0 + 1200);

        (*(v41 + 8))(v40, v42);
        sub_10000BE18(v37, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v38, v37, type metadata accessor for ActionRequest);
        v36(v37, 0, 1, v39);
        goto LABEL_13;
      }

      if (v51 != 8)
      {
        if (v51 != 10)
        {
          v237 = *(v0 + 1248);
          defaultLogger()();
          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&_mh_execute_header, v238, v239, "server requested an action to store token", v240, 2u);
          }

          v241 = *(v0 + 1424);
          v242 = *(v0 + 1352);
          v243 = *(v0 + 1248);
          v244 = *(v0 + 1208);
          v245 = *(v0 + 1200);
          v246 = *(v0 + 1104);

          v247 = *(v244 + 8);
          *(v0 + 1672) = v247;
          v247(v243, v245);
          sub_10000BBC4(v241 + *(v242 + 20), v246, &unk_100840960, &qword_1006DBCB0);
          v248 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v248 - 8) + 48))(v246, 1, v248) == 1)
          {
            v249 = *(v0 + 1536);
            v250 = *(v0 + 1520);
            v251 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v251, &unk_100840960, &qword_1006DBCB0);
LABEL_147:
            v326 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v326, type metadata accessor for ActionRequest);
            v327 = *(v0 + 1488);
            v328 = *(v0 + 1480);
            v329 = *(v0 + 1472);
            v330 = *(v0 + 1464);
            v331 = *(v0 + 1456);
            v332 = *(v0 + 1448);
            v333 = *(v0 + 1440);
            v334 = *(v0 + 1432);
            v370 = *(v0 + 1424);
            v372 = *(v0 + 1416);
            v374 = *(v0 + 1408);
            v376 = *(v0 + 1400);
            v378 = *(v0 + 1392);
            v380 = *(v0 + 1384);
            v382 = *(v0 + 1376);
            v384 = *(v0 + 1344);
            v386 = *(v0 + 1336);
            v388 = *(v0 + 1328);
            v390 = *(v0 + 1320);
            v392 = *(v0 + 1312);
            v394 = *(v0 + 1304);
            v396 = *(v0 + 1296);
            v398 = *(v0 + 1288);
            v400 = *(v0 + 1280);
            v402 = *(v0 + 1272);
            v404 = *(v0 + 1264);
            v406 = *(v0 + 1256);
            v408 = *(v0 + 1248);
            v410 = *(v0 + 1240);
            v412 = *(v0 + 1232);
            v414 = *(v0 + 1224);
            v416 = *(v0 + 1216);
            v418 = *(v0 + 1192);
            v420 = *(v0 + 1184);
            v422 = *(v0 + 1176);
            v424 = *(v0 + 1168);
            v426 = *(v0 + 1160);
            v428 = *(v0 + 1152);
            v430 = *(v0 + 1144);
            v432 = *(v0 + 1136);
            v435 = *(v0 + 1128);
            v437 = *(v0 + 1120);
            v440 = *(v0 + 1112);
            v445 = *(v0 + 1104);
            v448 = *(v0 + 1096);
            v451 = *(v0 + 1088);
            v455 = *(v0 + 1080);
            v457 = *(v0 + 1072);
            v460 = *(v0 + 1048);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v32 = *(v0 + 8);
            goto LABEL_8;
          }

          v256 = *(v0 + 1104);
          v257 = (v256 + *(v248 + 128));
          v258 = *v257;
          *(v0 + 1680) = *v257;
          v259 = v257[1];
          *(v0 + 1688) = v259;
          v260 = v257[2];
          *(v0 + 1696) = v257[3];
          sub_1000AB7D8(v258, v259);
          sub_100267A1C(v256, type metadata accessor for PendingActionContext);
          if (!v259)
          {
            v324 = *(v0 + 1536);
            v325 = *(v0 + 1520);

            swift_bridgeObjectRelease_n();
            goto LABEL_147;
          }

          v261 = *(v0 + 1072);
          v262 = *(v0 + 1064);
          v263 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v264 = String.data(using:allowLossyConversion:)();
          v266 = v265;
          *(v0 + 1704) = v264;
          *(v0 + 1712) = v265;
          (*(v262 + 8))(v261, v263);
          if (v266 >> 60 == 15)
          {
            v267 = *(v0 + 1536);
            v268 = *(v0 + 1520);
            swift_bridgeObjectRelease_n();

            goto LABEL_147;
          }

          if (qword_100832C20 == -1)
          {
LABEL_149:
            v335 = *(qword_100882228 + 16);
            *(v0 + 1720) = v335;
            v336 = v335;
            v337 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v337;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v338 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v338;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v336 retrievePIITokenFromSyncableKeyStoreForIdentifier:v337 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_168:
          swift_once();
          goto LABEL_149;
        }

        v80 = *(v0 + 1232);
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v82 = os_log_type_enabled(v53, v81);
        v56 = *(v0 + 1424);
        v57 = *(v0 + 1232);
        v58 = *(v0 + 1208);
        v59 = *(v0 + 1200);
        if (!v82)
        {
          goto LABEL_47;
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = v81;
        v62 = v53;
        v63 = "INVALID ACTION REQUEST";
        goto LABEL_46;
      }

      v119 = *(v0 + 1424);
      v120 = *(v0 + 1384);
      v121 = *(v0 + 1256);
      defaultLogger()();
      sub_100269FE8(v119, v120, type metadata accessor for ActionRequest);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 1384);
      v458 = v33;
      if (!v124)
      {
        v147 = *(v0 + 1256);
        v148 = *(v0 + 1208);
        v149 = *(v0 + 1200);

        sub_100267A1C(v125, type metadata accessor for ActionRequest);
        (*(v148 + 8))(v147, v149);
LABEL_78:
        v185 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v185, &unk_100840960, &qword_1006DBCB0);
        v186 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v186 - 8) + 48))(v185, 1, v186) == 1)
        {
          v187 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v187, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v188 = *(v0 + 1112);
        v189 = (v188 + *(v186 + 112));
        v191 = *v189;
        v190 = v189[1];

        sub_100267A1C(v188, type metadata accessor for PendingActionContext);
        if (!v190)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v33 = v458;
          goto LABEL_15;
        }

        v192 = *(v0 + 1088);
        v193 = *(v0 + 1080);
        v194 = v34;
        v195 = *(v0 + 1024);
        v196 = type metadata accessor for TaskPriority();
        v197 = *(v196 - 8);
        (*(v197 + 56))(v192, 1, 1, v196);
        v198 = swift_allocObject();
        v198[2] = 0;
        v198[3] = 0;
        v198[4] = v195;
        v198[5] = v191;
        v198[6] = v190;
        sub_10000BBC4(v192, v193, &unk_100845860, v194);
        LODWORD(v192) = (*(v197 + 48))(v193, 1, v196);

        v199 = *(v0 + 1080);
        if (v192 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v194);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v197 + 8))(v199, v196);
        }

        v34 = v194;
        v201 = v198[2];
        v200 = v198[3];
        swift_unknownObjectRetain();

        v33 = v458;
        if (v201)
        {
          swift_getObjectType();
          v202 = dispatch thunk of Actor.unownedExecutor.getter();
          v204 = v203;
          swift_unknownObjectRelease();
        }

        else
        {
          v202 = 0;
          v204 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v194);
        if (v204 | v202)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v202;
          *(v0 + 872) = v204;
        }

        v56 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_48;
      }

      v126 = *(v0 + 1352);
      v127 = *(v0 + 1120);
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *(v0 + 960) = v129;
      *v128 = 136315138;
      sub_10000BBC4(v125 + *(v126 + 20), v127, &unk_100840960, &qword_1006DBCB0);
      v130 = type metadata accessor for PendingActionContext(0);
      v131 = (*(*(v130 - 8) + 48))(v127, 1, v130);
      v132 = *(v0 + 1120);
      if (v131 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v178 = (v132 + *(v130 + 112));
        v179 = *v178;
        v180 = v178[1];

        sub_100267A1C(v132, type metadata accessor for PendingActionContext);
        if (v180)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v181 = *(v0 + 1256);
          v182 = *(v0 + 1208);
          v183 = *(v0 + 1200);
          v184 = sub_100141FE4(v179, v180, (v0 + 960));

          *(v128 + 4) = v184;
          _os_log_impl(&_mh_execute_header, v122, v123, "server requested to delete the Account Key Signing Key with identifier %s", v128, 0xCu);
          sub_10000BB78(v129);

          (*(v182 + 8))(v181, v183);
          v33 = v458;
          v34 = &unk_1006BF9D0;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v180 = 0xE300000000000000;
      v179 = 4999502;
      goto LABEL_77;
    }

    if (v51 <= 2)
    {
      break;
    }

    if (v51 == 3)
    {
      v83 = *(v0 + 1424);
      v84 = *(v0 + 1408);
      v85 = *(v0 + 1304);
      defaultLogger()();
      sub_100269FE8(v83, v84, type metadata accessor for ActionRequest);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = *(v0 + 1408);
        v89 = *(v0 + 1352);
        v90 = *(v0 + 1176);
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *(v0 + 976) = v92;
        *v91 = 136315138;
        sub_10000BBC4(v88 + *(v89 + 20), v90, &unk_100840960, &qword_1006DBCB0);
        v93 = type metadata accessor for PendingActionContext(0);
        v94 = (*(*(v93 - 8) + 48))(v90, 1, v93);
        v95 = *(v0 + 1176);
        v458 = v33;
        if (v94 == 1)
        {
          sub_10000BE18(v95, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_72;
        }

        v169 = *(v95 + 48);
        v170 = *(v95 + 56);
        v171 = *(v0 + 1176);

        sub_100267A1C(v171, type metadata accessor for PendingActionContext);
        if (v170)
        {
          v172 = String.debugDescription.getter();
          v174 = v173;
        }

        else
        {
LABEL_72:
          v172 = 0;
          v174 = 0xE000000000000000;
        }

        v439 = *(v0 + 1304);
        v444 = *(v0 + 1424);
        v175 = *(v0 + 1208);
        v176 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v177 = sub_100141FE4(v172, v174, (v0 + 976));

        *(v91 + 4) = v177;
        _os_log_impl(&_mh_execute_header, v86, v87, "server requested an action to self heal: %s", v91, 0xCu);
        sub_10000BB78(v92);

        (*(v175 + 8))(v439, v176);
        sub_100267A1C(v444, type metadata accessor for ActionRequest);
LABEL_13:
        v33 = v458;
      }

      else
      {
        v142 = *(v0 + 1424);
        v143 = *(v0 + 1408);
        v144 = *(v0 + 1304);
        v145 = *(v0 + 1208);
        v146 = *(v0 + 1200);

        sub_100267A1C(v143, type metadata accessor for ActionRequest);
        (*(v145 + 8))(v144, v146);
        sub_100267A1C(v142, type metadata accessor for ActionRequest);
      }

      v34 = &unk_1006BF9D0;
      goto LABEL_15;
    }

    v458 = v33;
    v96 = *(v0 + 1336);
    defaultLogger()();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "display message received", v99, 2u);
    }

    v100 = *(v0 + 1424);
    v101 = *(v0 + 1352);
    v102 = *(v0 + 1336);
    v103 = *(v0 + 1208);
    v104 = *(v0 + 1200);
    v105 = *(v0 + 1024);
    v106 = *(v0 + 1008);
    v107 = *(v0 + 1000);

    v108 = *(v103 + 8);
    v108(v102, v104);
    sub_1002556F0(v100 + *(v101 + 20), v107, v106);
    type metadata accessor for IdentityProofingDataContext();
    v109 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v110 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v110 + 54);
    sub_100031B5C(&v110[4], v0 + 408);
    os_unfair_lock_unlock(v110 + 54);
    if (v462)
    {
      return;
    }

    v111 = *(v0 + 448);

    sub_100031918(v0 + 408);
    v150 = sub_10054C274();
    v443 = v108;
    v151 = *(v0 + 1896);
    v152 = *(v0 + 1424);
    v153 = *(v0 + 1416);
    v154 = *(v0 + 1368);
    v463 = *(v0 + 1016);
    v155 = *(v0 + 1008);
    v156 = *(v0 + 1000);

    v157 = [v150 newBackgroundContext];
    *(v109 + 16) = v157;
    [v157 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v152, v153, type metadata accessor for ActionRequest);
    v158 = swift_allocObject();
    v158[2] = v109;
    v158[3] = v156;
    v158[4] = v155;
    v158[5] = v463;
    sub_100269F80(v153, v158 + ((v151 + 48) & ~v151), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v159 = *(v109 + 16);
    v160 = swift_allocObject();
    v160[2] = sub_100267BF8;
    v160[3] = v158;
    v160[4] = v434;
    v161 = swift_allocObject();
    *(v161 + 16) = sub_100267C5C;
    *(v161 + 24) = v160;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v161;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v162 = _Block_copy((v0 + 800));
    v163 = *(v0 + 840);

    [v159 performBlockAndWait:v162];
    _Block_release(v162);
    LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

    if (v162)
    {
      __break(1u);
      goto LABEL_167;
    }

    v33 = v458;
    v34 = &unk_1006BF9D0;
    if (*v434)
    {
      v164 = *v434;
      swift_willThrow();

      v165 = *(v0 + 1328);
      v166 = *(v0 + 1200);
      v167 = *(v0 + 1208) + 8;
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v443(v165, v166);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v462 = 0;
LABEL_15:
    v16 = *(v0 + 1568) + 1;
    if (v16 == *(v0 + 1528))
    {
      goto LABEL_6;
    }
  }

  if (!v51)
  {
    v112 = *(v0 + 1272);
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v114 = os_log_type_enabled(v53, v113);
    v56 = *(v0 + 1424);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1208);
    v59 = *(v0 + 1200);
    if (v114)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = v113;
      v62 = v53;
      v63 = "server requested an action to wait for update";
      goto LABEL_46;
    }

LABEL_47:

    (*(v58 + 8))(v57, v59);
LABEL_48:
    sub_100267A1C(v56, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v51 != 2)
  {
    v229 = *(v0 + 1312);
    defaultLogger()();
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      *v232 = 0;
      _os_log_impl(&_mh_execute_header, v230, v231, "Starting Provisioning flow", v232, 2u);
    }

    v233 = *(v0 + 1312);
    v234 = *(v0 + 1208);
    v235 = *(v0 + 1200);
    v236 = *(v0 + 992);

    (*(v234 + 8))(v233, v235);
    if (*(v236 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v317 = *(v0 + 1424);
    v318 = *(*(v0 + 1352) + 20);
    v319 = swift_task_alloc();
    *(v0 + 1592) = v319;
    *v319 = v0;
    v319[1] = sub_10023710C;
    v320 = *(v0 + 1024);
    v321 = *(v0 + 1016);
    v322 = *(v0 + 1008);
    v323 = *(v0 + 1000);

    sub_100229698(v317 + v318, v323, v322, v321, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  v64 = *(v0 + 1320);
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "server requested an action to execute new workflow", v67, 2u);
  }

  v68 = *(v0 + 1424);
  v69 = *(v0 + 1352);
  v70 = *(v0 + 1320);
  v71 = *(v0 + 1208);
  v72 = *(v0 + 1200);
  v73 = *(v0 + 1192);

  (*(v71 + 8))(v70, v72);
  v74 = *(v69 + 20);
  sub_10000BBC4(v68 + v74, v73, &unk_100840960, &qword_1006DBCB0);
  v75 = type metadata accessor for PendingActionContext(0);
  v76 = *(*(v75 - 8) + 48);
  v77 = v76(v73, 1, v75);
  v78 = *(v0 + 1192);
  if (v77 == 1)
  {
    sub_10000BE18(v78, &unk_100840960, &qword_1006DBCB0);
    v79 = 3;
  }

  else
  {
    v79 = *(v78 + *(v75 + 76));
    sub_100267A1C(v78, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v79;
  v133 = *(v0 + 1184);
  sub_10000BBC4(v68 + v74, v133, &unk_100840960, &qword_1006DBCB0);
  v134 = v76(v133, 1, v75);
  v135 = *(v0 + 1184);
  v136 = *(v0 + 1096);
  if (v134 == 1)
  {
    sub_10000BE18(v135, &unk_100840960, &qword_1006DBCB0);
    v137 = type metadata accessor for WorkflowRecommendationResponse();
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
  }

  else
  {
    v138 = *(v75 + 72);
    v139 = *(v0 + 1184);
    sub_10000BBC4(v135 + v138, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v139, type metadata accessor for PendingActionContext);
  }

  v140 = *(v0 + 1096);
  v141 = *(v0 + 1024);
  sub_1002593E4(v140);
  sub_10000BE18(v140, &qword_100835968, &qword_1006DBC90);
  if (v79 <= 1)
  {
    v34 = &unk_1006BF9D0;
    v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v168)
    {
      goto LABEL_112;
    }

    goto LABEL_69;
  }

  v34 = &unk_1006BF9D0;
  if (v79 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v33 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_112:
  v269 = swift_task_alloc();
  *(v0 + 1576) = v269;
  *v269 = v0;
  v269[1] = sub_1002342A8;
  v270 = *(v0 + 1024);
  v271 = *(v0 + 1008);
  v272 = *(v0 + 1000);

  sub_100259898(v68 + v74, v272, v271);
}