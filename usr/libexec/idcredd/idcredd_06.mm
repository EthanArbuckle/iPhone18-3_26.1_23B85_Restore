uint64_t sub_1000AC4E4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;
  *(v3 + 560) = v0;
  v15 = *(v3 + 32);
  v14 = *(v3 + 16);
  *(v3 + 568) = v14;
  v12 = *(v3 + 96);
  v13 = *(v3 + 64);
  v10 = *(v3 + 80);
  v11 = *(v3 + 48);
  v6 = *(v2 + 112);
  v7 = *(v3 + 120);

  if (v0)
  {
    v8 = sub_1000ACA48;
  }

  else
  {
    *(v3 + 128) = v14;
    *(v3 + 144) = v15;
    *(v3 + 160) = v11;
    *(v3 + 176) = v13;
    *(v3 + 192) = v10;
    *(v3 + 208) = v12;
    *(v3 + 224) = v6;
    *(v3 + 232) = v7;
    v8 = sub_1000AC66C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000AC66C()
{
  v1 = *(v0 + 568);
  sub_100046524(*(v0 + 352), *(v0 + 360), &qword_100201560, &unk_1001AB910);
  if (!v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3._object = 0x80000001001B83A0;
    v3._countAndFlagsBits = 0xD000000000000021;
    v4 = NSUserDefaults.internalBool(forKey:)(v3);

    if (v4)
    {
      v5 = *(v0 + 520);
      defaultLogger()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Using mock reader metadata due to user defaults setting", v8, 2u);
      }

      v9 = *(v0 + 520);
      v10 = *(v0 + 504);
      v11 = *(v0 + 512);

      (*(v11 + 8))(v9, v10);
    }
  }

  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  v14 = *(v0 + 392);
  v16 = *(v0 + 304);
  v15 = *(v0 + 312);
  sub_1000BCFA8(v12, v15, type metadata accessor for IdentityReaderAuthenticator);
  (*(v13 + 56))(v15, 0, 1, v14);
  v17 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_1000BD010(v15, v16 + v17, &qword_100202378, &unk_1001ACE70);
  swift_endAccess();
  v18._countAndFlagsBits = 0x3461653530636166;
  v19._countAndFlagsBits = 0xD00000000000005ELL;
  v19._object = 0x80000001001B83D0;
  v18._object = 0xE800000000000000;
  logMilestone(tag:description:)(v18, v19);
  sub_1000BB9CC(v12, type metadata accessor for IdentityReaderAuthenticator);
  v20 = *(v0 + 128);
  if (v20)
  {
    v21 = v20;
    sub_10000A0D4(v0 + 128, &qword_1002024D8, &qword_1001ACFD8);
    v22 = *(v0 + 232);
    if (v22)
    {

      v20 = 0;
    }
  }

  else
  {
    v22 = 3;
  }

  v23 = *(v0 + 496);
  v24 = *(v0 + 360);
  v25 = *(v0 + 280);
  v26 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  sub_100046524(v24, v25 + *(v26 + 32), &qword_100201560, &unk_1001AB910);
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 472);
  v33 = *(v0 + 456);
  v32 = *(v0 + 464);
  v34 = *(v0 + 448);
  v37 = *(v0 + 424);
  v38 = *(v0 + 416);
  v39 = *(v0 + 408);
  v40 = *(v0 + 384);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 312);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1000ACA48()
{
  v1 = v0[70];
  v2 = v0[62];
  v3 = v0[51];
  (*(v0[47] + 104))(v0[48], enum case for DIPError.Code.internalError(_:), v0[46]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1000BB9CC(v3, type metadata accessor for IdentityReaderAuthenticator);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[59];
  v10 = v0[57];
  v9 = v0[58];
  v11 = v0[56];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[48];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[43];
  v21 = v0[42];
  v22 = v0[39];
  (*(v0[61] + 8))(v0[62], v0[60]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000ACCF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for CredentialPresentmentRequest.UseCase();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000ACE88, 0, 0);
}

uint64_t sub_1000ACE88()
{
  v82 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[11];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v75 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v7 = v1 + v75;
    v8 = *(v4 + 56);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v70 = *(v1 + 16);
    v73 = v8;
    v6(v0[13], v1 + v75, v0[10]);
    while (1)
    {
      v11 = CredentialPresentmentRequest.UseCase.isMandatory.getter();
      v12 = v0[13];
      if (v11)
      {
        v13 = *v9;
        (*v9)(v0[12], v0[13], v0[10]);
        v81 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10010A95C(0, v10[2] + 1, 1);
          v10 = v81;
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_10010A95C(v14 > 1, v15 + 1, 1);
          v10 = v81;
        }

        v0 = v79;
        v16 = v79[12];
        v17 = v79[10];
        v10[2] = v15 + 1;
        v18 = v10 + v75 + v15 * v73;
        v8 = v73;
        v13(v18, v16, v17);
      }

      else
      {
        (*(v4 - 8))(v0[13], v0[10]);
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(v0[13], v7, v0[10]);
    }

    if (v70 == 1)
    {
      v19 = v0[14];
      v20 = v0[10];
      v21 = v0[11];
      v22 = v79[2];

      v0 = v79;
      (*(v21 + 16))(v19, v22 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2] != 1)
  {
    v24 = v0 + 9;
    v34 = v0[9];

    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Request must contain exactly one use case or mandatory use case, returning no proposals", v37, 2u);
    }

    v38 = _swiftEmptyArrayStorage;
    v39 = 7;
    v40 = 8;
LABEL_51:
    v59 = v0[13];
    v58 = v0[14];
    v60 = v0[12];
    v61 = v0[9];
    v62 = v0[6];
    (*(v0[v40] + 8))(*v24, v0[v39]);

    v63 = v0[1];

    return v63(v38);
  }

  (*(v0[11] + 16))(v0[14], v10 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)), v0[10]);

LABEL_17:
  v24 = v0 + 14;
  v23 = v0[14];
  result = CredentialPresentmentRequest.UseCase.documentRequests.getter();
  v26 = result;
  v27 = *(result + 16);
  if (!v27)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_32:

    v41 = v29[2];
    if (!v41)
    {
      v72 = v79[14];
      v74 = v79[13];
      v64 = v79[11];
      v76 = v79[12];
      v78 = v79[9];
      v66 = v79[5];
      v65 = v79[6];
      v67 = v79[4];
      v71 = v79[10];

      v69 = *(v66 + 104);
      v69(v65, enum case for DIPError.Code.idcsInvalidCredentialPresentmentRequest(_:), v67);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v64 + 8))(v72, v71);
      v69(v65, enum case for DIPError.Code.internalError(_:), v67);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v68 = v79[1];

      return v68();
    }

    v42 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v42 >= v29[2])
      {
        goto LABEL_58;
      }

      v43 = &v29[v42];
      v44 = v43[4];
      v45 = *(v44 + 16);
      v46 = v38[2];
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_59;
      }

      v48 = v43[4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v47 <= v38[3] >> 1)
      {
        if (*(v44 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v46 <= v47)
        {
          v50 = v46 + v45;
        }

        else
        {
          v50 = v46;
        }

        v38 = sub_10010076C(isUniquelyReferenced_nonNull_native, v50, 1, v38);
        if (*(v44 + 16))
        {
LABEL_46:
          v51 = (v38[3] >> 1) - v38[2];
          result = type metadata accessor for DocumentRequest();
          v52 = *(result - 8);
          if (v51 < v45)
          {
            goto LABEL_61;
          }

          v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v54 = *(v52 + 72);
          swift_arrayInitWithCopy();

          if (v45)
          {
            v55 = v38[2];
            v56 = __OFADD__(v55, v45);
            v57 = v55 + v45;
            if (v56)
            {
              goto LABEL_62;
            }

            v38[2] = v57;
          }

          goto LABEL_35;
        }
      }

      if (v45)
      {
        goto LABEL_60;
      }

LABEL_35:
      if (v41 == ++v42)
      {

        v39 = 10;
        v40 = 11;
        v0 = v79;
        goto LABEL_51;
      }
    }
  }

  v77 = v0 + 14;
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (v28 < *(v26 + 16))
  {
    v30 = v0[3];
    v80 = *(v26 + 32 + 8 * v28);

    sub_1000AD688(&v80, v30, &v81);

    v31 = v81;
    if (v81)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100100794(0, v29[2] + 1, 1, v29);
        v29 = result;
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        result = sub_100100794((v32 > 1), v33 + 1, 1, v29);
        v29 = result;
      }

      v29[2] = v33 + 1;
      v29[v33 + 4] = v31;
    }

    ++v28;
    v0 = v79;
    if (v27 == v28)
    {
      v24 = v77;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1000AD688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DocumentRequest();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v19 = &v75 - v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (!v21)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Credential presentment request contains an empty subrequest", v42, 2u);
    }

    goto LABEL_26;
  }

  v84 = v20;
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (v23)
  {
    if (v21 != 1)
    {
LABEL_4:
      v19 = v17;
      defaultLogger()();
      v24 = v84;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        LODWORD(v77) = v26;
        v78 = v25;
        v79 = v19;
        v81 = a3;
        v82 = v12;
        v80 = v11;
        v83 = v3;
        v27 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v91 = v75;
        v76 = v27;
        *v27 = 136315138;
        v90 = _swiftEmptyArrayStorage;
        sub_10010A6B4(0, v21, 0);
        v28 = v90;
        v29 = *(v89 + 16);
        v30 = v24 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v85 = *(v89 + 72);
        v86 = v29;
        v89 += 16;
        v31 = (v89 - 8);
        do
        {
          v32 = v87;
          v33 = v88;
          v86(v87, v30, v88);
          v34 = DocumentRequest.docType.getter();
          v36 = v35;
          (*v31)(v32, v33);
          v90 = v28;
          v38 = v28[2];
          v37 = v28[3];
          if (v38 >= v37 >> 1)
          {
            sub_10010A6B4((v37 > 1), v38 + 1, 1);
            v28 = v90;
          }

          v28[2] = v38 + 1;
          v39 = &v28[2 * v38];
          v39[4] = v34;
          v39[5] = v36;
          v30 += v85;
          --v21;
        }

        while (v21);
        v62 = Array.description.getter();
        v64 = v63;

        v65 = sub_10010150C(v62, v64, &v91);

        v66 = v76;
        *(v76 + 1) = v65;
        v67 = v78;
        _os_log_impl(&_mh_execute_header, v78, v77, "Credential presentment request contains an unsupported 'and' subrequest: %s", v66, 0xCu);
        sub_100005090(v75);

        result = (*(v82 + 8))(v79, v80);
        *v81 = 0;
        return result;
      }

LABEL_26:
      result = (*(v12 + 8))(v19, v11);
      *a3 = 0;
      return result;
    }
  }

  else if (v21 != 1 && v22 != 1)
  {
    goto LABEL_4;
  }

  v83 = v3;
  v44 = v16;
  defaultLogger()();
  v45 = v84;

  v46 = Logger.logObject.getter();
  LODWORD(v79) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v79))
  {
    v77 = v46;
    v78 = v44;
    v82 = v12;
    v47 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v91 = v75;
    *v47 = 67109634;
    *(v47 + 4) = (v22 == 1) & ~v23;

    *(v47 + 8) = 2048;
    *(v47 + 10) = *(v45 + 16);

    v76 = v47;
    *(v47 + 18) = 2080;
    v48 = *(v45 + 16);
    v49 = v45;
    if (v48)
    {
      v80 = v11;
      v81 = a3;
      v90 = _swiftEmptyArrayStorage;
      sub_10010A6B4(0, v48, 0);
      v50 = v90;
      v51 = *(v89 + 16);
      v52 = v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v85 = *(v89 + 72);
      v86 = v51;
      v89 += 16;
      v53 = (v89 - 8);
      do
      {
        v54 = v87;
        v55 = v88;
        v86(v87, v52, v88);
        v56 = DocumentRequest.docType.getter();
        v58 = v57;
        (*v53)(v54, v55);
        v90 = v50;
        v60 = v50[2];
        v59 = v50[3];
        if (v60 >= v59 >> 1)
        {
          sub_10010A6B4((v59 > 1), v60 + 1, 1);
          v50 = v90;
        }

        v50[2] = v60 + 1;
        v61 = &v50[2 * v60];
        v61[4] = v56;
        v61[5] = v58;
        v52 += v85;
        --v48;
      }

      while (v48);
      v49 = v84;
      v11 = v80;
      a3 = v81;
    }

    v69 = Array.description.getter();
    v71 = v70;

    v72 = sub_10010150C(v69, v71, &v91);

    v73 = v76;
    *(v76 + 5) = v72;
    v74 = v77;
    _os_log_impl(&_mh_execute_header, v77, v79, "PresentmentRequestInterpreter Credential presentment request for ACWG: %{BOOL}d subrequests.count: %ld subrequests docType: %s", v73, 0x1Cu);
    sub_100005090(v75);

    (*(v82 + 8))(v78, v11);
  }

  else
  {

    (*(v12 + 8))(v44, v11);
    v49 = v45;
  }

  *a3 = v49;
}

uint64_t sub_1000ADDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 564) = v37;
  *(v9 + 104) = v36;
  *(v9 + 112) = v8;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = type metadata accessor for DIPError();
  *(v9 + 120) = v10;
  v11 = *(v10 - 8);
  *(v9 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v13 = type metadata accessor for DocumentRequest();
  *(v9 + 144) = v13;
  v14 = *(v13 - 8);
  *(v9 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_1002024B8, &qword_1001ACFB0) - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v17 = type metadata accessor for ISO18013KnownDocTypes();
  *(v9 + 184) = v17;
  v18 = *(v17 - 8);
  *(v9 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  v20 = type metadata accessor for PresentmentProposal();
  *(v9 + 208) = v20;
  v21 = *(v20 - 8);
  *(v9 + 216) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v23 = *(*(sub_100004E70(&qword_1002024C0, &qword_1001ACFB8) - 8) + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  v24 = type metadata accessor for DIPError.Code();
  *(v9 + 264) = v24;
  v25 = *(v24 - 8);
  *(v9 + 272) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 280) = swift_task_alloc();
  v27 = sub_100004E70(&qword_1002024C8, &unk_1001ACFC0);
  *(v9 + 288) = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  v29 = *(*(sub_100004E70(&qword_100201560, &unk_1001AB910) - 8) + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v30 = *(*(sub_100004E70(&qword_100201488, &qword_1001ACFD0) - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v31 = type metadata accessor for Logger();
  *(v9 + 336) = v31;
  v32 = *(v31 - 8);
  *(v9 + 344) = v32;
  v33 = *(v32 + 64) + 15;
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1000AE214, 0, 0);
}

uint64_t sub_1000AE214()
{
  v1 = *(v0 + 392);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter findProposals", v4, 2u);
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);

  v8 = *(v7 + 8);
  *(v0 + 400) = v8;
  v8(v5, v6);
  v9 = objc_opt_self();
  *(v0 + 408) = v9;
  v10 = [v9 standardUserDefaults];
  v11._object = 0x80000001001B2870;
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  if (v12.value._object)
  {
    v13 = *(v0 + 96);
    if (v12.value._countAndFlagsBits == 0x6574737572746E75 && v12.value._object == 0xE900000000000064)
    {

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0 || !v13)
      {
        goto LABEL_18;
      }
    }

    v16 = [*(v0 + 96) untrustedIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == 0x61696D656469 && v20 == 0xE600000000000000)
      {

LABEL_17:
        v22 = 2;
        goto LABEL_29;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v23 = *(v0 + 304);
  v24 = *(v0 + 120);
  v25 = *(v0 + 128);
  sub_100046360(*(v0 + 104), v23, &qword_100201560, &unk_1001AB910);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000A0D4(*(v0 + 304), &qword_100201560, &unk_1001AB910);
    v26 = 1;
  }

  else
  {
    v27 = *(v0 + 328);
    v28 = *(v0 + 304);
    v29 = *(v0 + 120);
    v30 = *(v0 + 128);
    DIPError.code.getter();
    (*(v30 + 8))(v28, v29);
    v26 = 0;
  }

  v32 = *(v0 + 320);
  v31 = *(v0 + 328);
  v34 = *(v0 + 288);
  v33 = *(v0 + 296);
  v35 = *(v0 + 264);
  v36 = *(v0 + 272);
  v37 = *(v36 + 56);
  v37(v31, v26, 1, v35);
  (*(v36 + 104))(v32, enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:), v35);
  v37(v32, 0, 1, v35);
  v38 = *(v34 + 48);
  sub_100046360(v31, v33, &qword_100201488, &qword_1001ACFD0);
  sub_100046360(v32, v33 + v38, &qword_100201488, &qword_1001ACFD0);
  v39 = *(v36 + 48);
  if (v39(v33, 1, v35) == 1)
  {
    v40 = *(v0 + 328);
    v41 = *(v0 + 264);
    sub_10000A0D4(*(v0 + 320), &qword_100201488, &qword_1001ACFD0);
    sub_10000A0D4(v40, &qword_100201488, &qword_1001ACFD0);
    if (v39(v33 + v38, 1, v41) == 1)
    {
      v42 = *(v0 + 96);
      sub_10000A0D4(*(v0 + 296), &qword_100201488, &qword_1001ACFD0);
      if (!v42)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

LABEL_27:
    sub_10000A0D4(*(v0 + 296), &qword_1002024C8, &unk_1001ACFC0);
    goto LABEL_28;
  }

  v43 = *(v0 + 264);
  sub_100046360(*(v0 + 296), *(v0 + 312), &qword_100201488, &qword_1001ACFD0);
  v44 = v39(v33 + v38, 1, v43);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 312);
  if (v44 == 1)
  {
    v48 = *(v0 + 264);
    v49 = *(v0 + 272);
    sub_10000A0D4(*(v0 + 320), &qword_100201488, &qword_1001ACFD0);
    sub_10000A0D4(v45, &qword_100201488, &qword_1001ACFD0);
    (*(v49 + 8))(v47, v48);
    goto LABEL_27;
  }

  v60 = *(v0 + 272);
  v59 = *(v0 + 280);
  v61 = *(v0 + 264);
  v71 = *(v0 + 96);
  v72 = *(v0 + 296);
  (*(v60 + 32))(v59, v33 + v38, v61);
  sub_1000BD16C(&qword_1002024D0, &type metadata accessor for DIPError.Code);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v59, v61);
  sub_10000A0D4(v46, &qword_100201488, &qword_1001ACFD0);
  sub_10000A0D4(v45, &qword_100201488, &qword_1001ACFD0);
  v63(v47, v61);
  sub_10000A0D4(v72, &qword_100201488, &qword_1001ACFD0);
  if ((v62 & 1) == 0 || !v71)
  {
    goto LABEL_28;
  }

LABEL_34:
  v64 = [*(v0 + 96) untrustedIdentifier];
  if (!v64)
  {
    goto LABEL_28;
  }

  v65 = v64;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  if (v66 == 0x2E6173742E6C646DLL && v68 == 0xEF766F672E736864)
  {

    v22 = 1;
    goto LABEL_29;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v69 & 1) == 0)
  {
LABEL_28:
    v22 = *(v0 + 564);
    goto LABEL_29;
  }

  v22 = 1;
LABEL_29:
  *(v0 + 565) = v22;
  v50 = *(v0 + 112);
  v51 = *(v50 + 80);
  v52 = *(v50 + 16);
  *(v0 + 416) = v52;
  v53 = swift_allocObject();
  *(v0 + 424) = v53;
  *(v53 + 16) = v52;
  v54 = *(v51 + 16);
  v55 = swift_allocObject();
  *(v0 + 432) = v55;
  *(v55 + 16) = sub_1000BCF28;
  *(v55 + 24) = v53;
  v56 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v57 = swift_task_alloc();
  *(v0 + 440) = v57;
  v58 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v57 = v0;
  v57[1] = sub_1000AE984;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 16, sub_1000BCF60, v55, v58);
}

uint64_t sub_1000AE984()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1000AF468;
  }

  else
  {
    v5 = v2[53];
    v6 = v2[54];

    v2[57] = v2[2];
    v4 = sub_1000AEAB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000AEAB0()
{
  v136 = v0;
  result = *(v0 + 456);
  v2 = *(result + 16);
  *(v0 + 464) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 472) = *(*(v0 + 40) + 16);
    *(v0 + 552) = enum case for ISO18013KnownDocTypes.photoID(_:);
    *(v0 + 556) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 480) = v3;
      v4 = *(v0 + 456);
      if (v3 >= *(v4 + 16))
      {
        break;
      }

      v5 = *(v0 + 472);
      v6 = v4 + 16 * v3;
      *(v0 + 488) = *(v6 + 32);
      *(v0 + 496) = *(v6 + 40);

      if (v5)
      {
        v42 = *(v0 + 152);
        v43 = *(v0 + 40);
        v44 = *(v42 + 80);
        *(v0 + 560) = v44;
        v45 = (v44 + 32) & ~v44;
        v46 = *(v42 + 72);
        *(v0 + 528) = 0;
        *(v0 + 520) = _swiftEmptyArrayStorage;
        *(v0 + 504) = v46;
        *(v0 + 512) = _swiftEmptyArrayStorage;
        v47 = swift_task_alloc();
        *(v0 + 536) = v47;
        *v47 = v0;
        v47[1] = sub_1000AF5F8;
        v48 = *(v0 + 488);
        v49 = *(v0 + 496);
        v50 = *(v0 + 256);
        v51 = *(v0 + 112);
        v52 = *(v0 + 96);
        v53 = *(v0 + 80);
        v54 = *(v0 + 64);
        v55 = *(v0 + 72);
        v56 = *(v0 + 48);
        v57 = *(v0 + 56);
        v140 = *(v0 + 565);
        v139 = v52;
        v138 = v53;

        return sub_1000B0FB8(v50, v48, v49, v43 + v45, v56, v57, v54, v55);
      }

      v3 = *(v0 + 480) + 1;
      if (v3 == *(v0 + 464))
      {
        v7 = *(v0 + 456);
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_7:

    v8 = *(v0 + 112);
    if ((*(v8 + 72) & 1) == 0 && *(v8 + 64) == 1)
    {
      v9 = *(v0 + 40);
      v121 = *(v9 + 16);
      if (v121)
      {
        v10 = 0;
        v11 = *(v0 + 216);
        v12 = *(v0 + 152);
        v13 = _swiftEmptyArrayStorage[2];
        v15 = *(v12 + 16);
        v12 += 16;
        v14 = v15;
        v16 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v128 = (v12 - 8);
        v17 = *(v12 + 56);
        v123 = v15;
        v117 = v17;
        v119 = v16;
        while (2)
        {
          v131 = v10 + 1;
          result = (v14)(*(v0 + 168), v16 + v10 * v17, *(v0 + 144));
          v18 = 0;
          while (1)
          {
            if (v13 == v18)
            {
              v80 = *(v0 + 384);
              v82 = *(v0 + 160);
              v81 = *(v0 + 168);
              v83 = *(v0 + 144);

              defaultLogger()();
              v123(v82, v81, v83);
              v84 = Logger.logObject.getter();
              v85 = static os_log_type_t.debug.getter();
              v86 = os_log_type_enabled(v84, v85);
              v87 = *(v0 + 400);
              v88 = *(v0 + 384);
              v89 = *(v0 + 336);
              v90 = *(v0 + 344);
              v91 = *(v0 + 160);
              v92 = *(v0 + 144);
              if (v86)
              {
                v133 = *(v0 + 384);
                v93 = swift_slowAlloc();
                v126 = v89;
                v94 = swift_slowAlloc();
                v135 = v94;
                *v93 = 136315138;
                v124 = v87;
                v95 = DocumentRequest.docType.getter();
                v97 = v96;
                v98 = *v128;
                (*v128)(v91, v92);
                v99 = sub_10010150C(v95, v97, &v135);

                *(v93 + 4) = v99;
                _os_log_impl(&_mh_execute_header, v84, v85, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v93, 0xCu);
                sub_100005090(v94);

                v124(v133, v126);
                v98(*(v0 + 168), *(v0 + 144));
              }

              else
              {

                v100 = *v128;
                (*v128)(v91, v92);
                v87(v88, v89);
                v100(*(v0 + 168), *(v0 + 144));
              }

              goto LABEL_40;
            }

            if (v18 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_44;
            }

            v19 = *(v0 + 224);
            v20 = *(v0 + 168);
            sub_1000BCFA8(_swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, v19, type metadata accessor for PresentmentProposal);
            v21 = [*v19 docType];
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            v25 = DocumentRequest.docType.getter();
            v27 = *(v0 + 224);
            if (v22 == v25 && v24 == v26)
            {
              break;
            }

            ++v18;
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = sub_1000BB9CC(v27, type metadata accessor for PresentmentProposal);
            if (v29)
            {
              goto LABEL_21;
            }
          }

          sub_1000BB9CC(v27, type metadata accessor for PresentmentProposal);
LABEL_21:
          (*v128)(*(v0 + 168), *(v0 + 144));
          v14 = v123;
          v10 = v131;
          v17 = v117;
          v16 = v119;
          if (v131 != v121)
          {
            continue;
          }

          break;
        }
      }

      v30 = *(v0 + 376);
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "PresentmentRequestInterpreter: All documents requested present for ACWG", v33, 2u);
      }

      v34 = *(v0 + 400);
      v35 = *(v0 + 376);
      v36 = *(v0 + 336);
      v37 = *(v0 + 344);

      v34(v35, v36);
    }

    if (_swiftEmptyArrayStorage[2])
    {
      v38 = *(v0 + 360);
      defaultLogger()();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134349056;
        *(v41 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&_mh_execute_header, v39, v40, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v41, 0xCu);
      }

      else
      {
      }

      v75 = *(v0 + 344) + 8;
      (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
    }

    else
    {
      v58 = *(v0 + 368);
      v59 = *(v0 + 112);
      v60 = *(v0 + 40);
      defaultLogger()();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 416);
        v129 = *(v0 + 368);
        v132 = *(v0 + 400);
        v65 = *(v0 + 336);
        v64 = *(v0 + 344);
        v66 = *(v0 + 144);
        v67 = *(v0 + 40);
        v68 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *v68 = 136446466;
        v69 = Array.description.getter();
        v71 = sub_10010150C(v69, v70, &v135);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2082;
        v72 = Set.description.getter();
        v74 = sub_10010150C(v72, v73, &v135);

        *(v68 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v61, v62, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v68, 0x16u);
        swift_arrayDestroy();

        v132(v129, v65);
      }

      else
      {
        v76 = *(v0 + 400);
        v77 = *(v0 + 368);
        v78 = *(v0 + 336);
        v79 = *(v0 + 344);

        v76(v77, v78);
      }
    }

LABEL_40:
    v102 = *(v0 + 384);
    v101 = *(v0 + 392);
    v104 = *(v0 + 368);
    v103 = *(v0 + 376);
    v106 = *(v0 + 352);
    v105 = *(v0 + 360);
    v108 = *(v0 + 320);
    v107 = *(v0 + 328);
    v109 = *(v0 + 304);
    v110 = *(v0 + 312);
    v112 = *(v0 + 296);
    v113 = *(v0 + 280);
    v114 = *(v0 + 256);
    v115 = *(v0 + 248);
    v116 = *(v0 + 240);
    v118 = *(v0 + 232);
    v120 = *(v0 + 224);
    v122 = *(v0 + 200);
    v125 = *(v0 + 176);
    v127 = *(v0 + 168);
    v130 = *(v0 + 160);
    v134 = *(v0 + 136);

    v111 = *(v0 + 8);

    return v111(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000AF468()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v9 = v0[41];
  v14 = v0[39];
  v15 = v0[38];
  v16 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[20];
  v27 = v0[17];

  v11 = v0[1];
  v12 = v0[56];

  return v11();
}

uint64_t sub_1000AF5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = *(v2 + 496);

    v5 = sub_1000B04B8;
  }

  else
  {
    v5 = sub_1000AF714;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000AF714()
{
  v175 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  sub_100046360(*(v0 + 256), v1, &qword_1002024C0, &qword_1001ACFB8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 248);
    sub_10000A0D4(*(v0 + 256), &qword_1002024C0, &qword_1001ACFB8);
    sub_10000A0D4(v4, &qword_1002024C0, &qword_1001ACFB8);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    goto LABEL_20;
  }

  v7 = *(v0 + 565);
  sub_1000BBB18(*(v0 + 248), *(v0 + 240), type metadata accessor for PresentmentProposal);
  if (v7 != 3)
  {
    v8 = *(v0 + 408);
    v9 = sub_10010DD18(&off_1001F41C8);
    *(v0 + 32) = v9;
    v10 = [v8 standardUserDefaults];
    v11._object = 0x80000001001B2870;
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v12 = NSUserDefaults.internalString(forKey:)(v11);

    if (v12.value._object)
    {

      v13 = (v12.value._object >> 56) & 0xF;
      if ((v12.value._object & 0x2000000000000000) == 0)
      {
        v13 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_100102584(v174, 2);
        v9 = *(v0 + 32);
      }
    }

    if (*(v9 + 16) && (v14 = *(v0 + 565), v15 = *(v9 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(v14), v16 = Hasher._finalize()(), v17 = -1 << *(v9 + 32), v18 = v16 & ~v17, ((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (*(*(v9 + 48) + v18) != *(v0 + 565))
      {
        v18 = (v18 + 1) & v19;
        if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v98 = *(v0 + 552);
      v99 = *(v0 + 240);
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 184);

      v103 = [*v99 docType];
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      (*(v101 + 104))(v100, v98, v102);
      v107 = ISO18013KnownDocTypes.rawValue.getter();
      v109 = v108;
      (*(v101 + 8))(v100, v102);
      if (v104 == v107 && v106 == v109)
      {

        goto LABEL_65;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v111)
      {
LABEL_65:
        v134 = *(v0 + 512);
        sub_1000BCFA8(*(v0 + 240), *(v0 + 176), type metadata accessor for PresentmentProposal);
        v135 = *(v134 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v134;
        v5 = *(v0 + 512);
        if (!isUniquelyReferenced_nonNull_native || v135 >= *(v5 + 24) >> 1)
        {
          v5 = sub_100100FB4(isUniquelyReferenced_nonNull_native, v135 + 1, 1, *(v0 + 512));
          *(v0 + 24) = v5;
        }

        sub_10010B474(0, 0, 1, *(v0 + 176));
        goto LABEL_16;
      }
    }

    else
    {
LABEL_14:
    }
  }

  v5 = *(v0 + 512);
LABEL_16:
  sub_1000BCFA8(*(v0 + 240), *(v0 + 232), type metadata accessor for PresentmentProposal);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_76:
    v5 = sub_100100FB4(0, *(v5 + 16) + 1, 1, v5);
  }

  v21 = *(v5 + 16);
  v20 = *(v5 + 24);
  if (v21 >= v20 >> 1)
  {
    v5 = sub_100100FB4(v20 > 1, v21 + 1, 1, v5);
  }

  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 216);
  sub_10000A0D4(*(v0 + 256), &qword_1002024C0, &qword_1001ACFB8);
  *(v5 + 16) = v21 + 1;
  sub_1000BBB18(v23, v5 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for PresentmentProposal);
  sub_1000BB9CC(v22, type metadata accessor for PresentmentProposal);
  v6 = v5;
LABEL_20:
  v25 = *(v0 + 528) + 1;
  if (v25 == *(v0 + 472))
  {
    v26 = *(v0 + 496);
    while (1)
    {

      v27 = *(v0 + 480) + 1;
      if (v27 == *(v0 + 464))
      {
        break;
      }

      *(v0 + 480) = v27;
      v28 = *(v0 + 456);
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v29 = *(v0 + 472);
      v30 = v28 + 16 * v27;
      *(v0 + 488) = *(v30 + 32);
      *(v0 + 496) = *(v30 + 40);

      if (v29)
      {
        v25 = 0;
        v31 = *(v0 + 152);
        v32 = *(v31 + 80);
        *(v0 + 560) = v32;
        v33 = *(v31 + 72);
        *(v0 + 504) = v33;
        goto LABEL_27;
      }
    }

    v47 = *(v0 + 456);

    v48 = *(v0 + 112);
    v172 = v5;
    if ((*(v48 + 72) & 1) == 0 && *(v48 + 64) == 1)
    {
      v49 = *(v0 + 40);
      v157 = *(v49 + 16);
      if (v157)
      {
        v50 = 0;
        v51 = *(v0 + 216);
        v52 = *(v0 + 152);
        v53 = *(v6 + 16);
        v55 = *(v52 + 16);
        v52 += 16;
        v54 = v55;
        v56 = v49 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
        v165 = (v52 - 8);
        v57 = *(v52 + 56);
        v160 = v55;
        v153 = v57;
        v155 = v56;
        while (2)
        {
          v168 = v50 + 1;
          v54(*(v0 + 168), v56 + v50 * v57, *(v0 + 144));
          v58 = 0;
          while (1)
          {
            if (v53 == v58)
            {
              v116 = *(v0 + 384);
              v118 = *(v0 + 160);
              v117 = *(v0 + 168);
              v119 = *(v0 + 144);

              defaultLogger()();
              v160(v118, v117, v119);
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.debug.getter();
              v122 = os_log_type_enabled(v120, v121);
              v123 = *(v0 + 400);
              v124 = *(v0 + 384);
              v125 = *(v0 + 336);
              v173 = *(v0 + 344);
              v126 = *(v0 + 160);
              v127 = *(v0 + 144);
              if (v122)
              {
                v170 = *(v0 + 384);
                v128 = swift_slowAlloc();
                v163 = v125;
                v129 = swift_slowAlloc();
                v174[0] = v129;
                *v128 = 136315138;
                v158 = DocumentRequest.docType.getter();
                v161 = v123;
                v131 = v130;
                v132 = *v165;
                (*v165)(v126, v127);
                v133 = sub_10010150C(v158, v131, v174);

                *(v128 + 4) = v133;
                _os_log_impl(&_mh_execute_header, v120, v121, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v128, 0xCu);
                sub_100005090(v129);

                v161(v170, v163);
              }

              else
              {

                v132 = *v165;
                (*v165)(v126, v127);
                v123(v124, v125);
              }

              v132(*(v0 + 168), *(v0 + 144));
              v172 = _swiftEmptyArrayStorage;
              goto LABEL_71;
            }

            if (v58 >= *(v6 + 16))
            {
              goto LABEL_75;
            }

            v59 = *(v0 + 224);
            v60 = *(v0 + 168);
            sub_1000BCFA8(v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v58, v59, type metadata accessor for PresentmentProposal);
            v61 = [*v59 docType];
            v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;

            v64 = DocumentRequest.docType.getter();
            v66 = *(v0 + 224);
            if (v5 == v64 && v63 == v65)
            {
              break;
            }

            ++v58;
            v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1000BB9CC(v66, type metadata accessor for PresentmentProposal);
            if (v5)
            {
              goto LABEL_44;
            }
          }

          sub_1000BB9CC(v66, type metadata accessor for PresentmentProposal);
LABEL_44:
          (*v165)(*(v0 + 168), *(v0 + 144));
          v54 = v160;
          v50 = v168;
          v57 = v153;
          v56 = v155;
          if (v168 != v157)
          {
            continue;
          }

          break;
        }
      }

      v68 = *(v0 + 376);
      defaultLogger()();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "PresentmentRequestInterpreter: All documents requested present for ACWG", v71, 2u);
      }

      v72 = *(v0 + 400);
      v73 = *(v0 + 376);
      v74 = *(v0 + 336);
      v75 = *(v0 + 344);

      v72(v73, v74);
      v5 = v172;
    }

    if (*(v6 + 16))
    {
      v76 = *(v0 + 360);
      defaultLogger()();

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 134349056;
        *(v79 + 4) = *(v5 + 16);

        _os_log_impl(&_mh_execute_header, v77, v78, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v79, 0xCu);
      }

      else
      {
      }

      v97 = *(v0 + 344) + 8;
      (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
    }

    else
    {
      v80 = *(v0 + 368);
      v81 = *(v0 + 112);
      v82 = *(v0 + 40);
      defaultLogger()();

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = *(v0 + 416);
        v166 = *(v0 + 368);
        v169 = *(v0 + 400);
        v87 = *(v0 + 336);
        v86 = *(v0 + 344);
        v88 = *(v0 + 144);
        v89 = *(v0 + 40);
        v90 = swift_slowAlloc();
        v174[0] = swift_slowAlloc();
        *v90 = 136446466;
        v91 = Array.description.getter();
        v93 = sub_10010150C(v91, v92, v174);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2082;
        v94 = Set.description.getter();
        v96 = sub_10010150C(v94, v95, v174);

        *(v90 + 14) = v96;
        _os_log_impl(&_mh_execute_header, v83, v84, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v90, 0x16u);
        swift_arrayDestroy();

        v169(v166, v87);
      }

      else
      {
        v112 = *(v0 + 400);
        v113 = *(v0 + 368);
        v114 = *(v0 + 336);
        v115 = *(v0 + 344);

        v112(v113, v114);
      }
    }

LABEL_71:
    v138 = *(v0 + 384);
    v137 = *(v0 + 392);
    v140 = *(v0 + 368);
    v139 = *(v0 + 376);
    v142 = *(v0 + 352);
    v141 = *(v0 + 360);
    v143 = *(v0 + 320);
    v144 = *(v0 + 328);
    v146 = *(v0 + 304);
    v145 = *(v0 + 312);
    v148 = *(v0 + 296);
    v149 = *(v0 + 280);
    v150 = *(v0 + 256);
    v151 = *(v0 + 248);
    v152 = *(v0 + 240);
    v154 = *(v0 + 232);
    v156 = *(v0 + 224);
    v159 = *(v0 + 200);
    v162 = *(v0 + 176);
    v164 = *(v0 + 168);
    v167 = *(v0 + 160);
    v171 = *(v0 + 136);

    v147 = *(v0 + 8);

    return v147(v172);
  }

  else
  {
    v33 = *(v0 + 504);
    LOBYTE(v32) = *(v0 + 560);
LABEL_27:
    *(v0 + 528) = v25;
    *(v0 + 520) = v5;
    *(v0 + 512) = v6;
    v34 = *(v0 + 40) + ((v32 + 32) & ~v32) + v33 * v25;
    v35 = swift_task_alloc();
    *(v0 + 536) = v35;
    *v35 = v0;
    v35[1] = sub_1000AF5F8;
    v36 = *(v0 + 488);
    v37 = *(v0 + 496);
    v38 = *(v0 + 256);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);
    v41 = *(v0 + 80);
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);
    v179 = *(v0 + 565);
    v178 = v40;
    v177 = v41;

    return sub_1000B0FB8(v38, v36, v37, v34, v44, v45, v42, v43);
  }
}

uint64_t sub_1000B04B8()
{
  v149 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 352);
  v140 = *(v0 + 336);
  v145 = *(v0 + 400);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v136 = *(v0 + 344) + 8;
  (*(*(v0 + 272) + 104))(*(v0 + 280), *(v0 + 556), *(v0 + 264));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v117 = 0x80000001001B8170;
  v118 = 633;
  v116 = 0xD0000000000000ACLL;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v145(v2, v140);
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  while (1)
  {
    v10 = *(v0 + 480) + 1;
    if (v10 == *(v0 + 464))
    {
      break;
    }

    *(v0 + 480) = v10;
    v11 = *(v0 + 456);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

    v12 = *(v0 + 472);
    v13 = v11 + 16 * v10;
    *(v0 + 488) = *(v13 + 32);
    *(v0 + 496) = *(v13 + 40);

    if (v12)
    {
      v49 = *(v0 + 152);
      v50 = *(v0 + 40);
      v51 = *(v49 + 80);
      *(v0 + 560) = v51;
      v52 = (v51 + 32) & ~v51;
      v53 = *(v49 + 72);
      *(v0 + 528) = 0;
      *(v0 + 520) = v8;
      *(v0 + 504) = v53;
      *(v0 + 512) = v9;
      v54 = swift_task_alloc();
      *(v0 + 536) = v54;
      *v54 = v0;
      v54[1] = sub_1000AF5F8;
      v55 = *(v0 + 488);
      v56 = *(v0 + 496);
      v57 = *(v0 + 256);
      v58 = *(v0 + 112);
      v59 = *(v0 + 96);
      v60 = *(v0 + 80);
      v61 = *(v0 + 64);
      v62 = *(v0 + 72);
      v63 = *(v0 + 48);
      v64 = *(v0 + 56);
      v153 = *(v0 + 565);
      v152 = v59;
      v151 = v60;

      return sub_1000B0FB8(v57, v55, v56, v50 + v52, v63, v64, v61, v62);
    }
  }

  v14 = *(v0 + 456);

  v15 = *(v0 + 112);
  v146 = v8;
  if ((*(v15 + 72) & 1) == 0 && *(v15 + 64) == 1)
  {
    v16 = *(v0 + 40);
    v128 = *(v16 + 16);
    if (v128)
    {
      v17 = 0;
      v18 = *(v0 + 216);
      v19 = *(v0 + 152);
      v20 = *(v9 + 16);
      v22 = *(v19 + 16);
      v19 += 16;
      v21 = v22;
      v23 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v137 = (v19 - 8);
      v24 = *(v19 + 56);
      v131 = v22;
      v124 = v24;
      v126 = v23;
      while (2)
      {
        v141 = v17 + 1;
        result = (v21)(*(v0 + 168), v23 + v17 * v24, *(v0 + 144));
        v25 = 0;
        while (1)
        {
          if (v20 == v25)
          {
            v87 = *(v0 + 384);
            v89 = *(v0 + 160);
            v88 = *(v0 + 168);
            v90 = *(v0 + 144);

            defaultLogger()();
            v131(v89, v88, v90);
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.debug.getter();
            v93 = os_log_type_enabled(v91, v92);
            v94 = *(v0 + 400);
            v95 = *(v0 + 384);
            v96 = *(v0 + 336);
            v147 = *(v0 + 344);
            v97 = *(v0 + 160);
            v98 = *(v0 + 144);
            if (v93)
            {
              v143 = *(v0 + 384);
              v99 = swift_slowAlloc();
              v134 = v96;
              v100 = swift_slowAlloc();
              v148 = v100;
              *v99 = 136315138;
              v129 = DocumentRequest.docType.getter();
              v132 = v94;
              v102 = v101;
              v103 = *v137;
              (*v137)(v97, v98);
              v104 = sub_10010150C(v129, v102, &v148);

              *(v99 + 4) = v104;
              _os_log_impl(&_mh_execute_header, v91, v92, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v99, 0xCu);
              sub_100005090(v100);

              v132(v143, v134);
            }

            else
            {

              v103 = *v137;
              (*v137)(v97, v98);
              v94(v95, v96);
            }

            v103(*(v0 + 168), *(v0 + 144));
            v146 = _swiftEmptyArrayStorage;
            goto LABEL_39;
          }

          if (v25 >= *(v9 + 16))
          {
            goto LABEL_43;
          }

          v26 = *(v0 + 224);
          v27 = *(v0 + 168);
          sub_1000BCFA8(v9 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v26, type metadata accessor for PresentmentProposal);
          v28 = [*v26 docType];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32 = DocumentRequest.docType.getter();
          v34 = *(v0 + 224);
          if (v29 == v32 && v31 == v33)
          {
            break;
          }

          ++v25;
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = sub_1000BB9CC(v34, type metadata accessor for PresentmentProposal);
          if (v36)
          {
            goto LABEL_20;
          }
        }

        sub_1000BB9CC(v34, type metadata accessor for PresentmentProposal);
LABEL_20:
        (*v137)(*(v0 + 168), *(v0 + 144));
        v21 = v131;
        v17 = v141;
        v24 = v124;
        v23 = v126;
        if (v141 != v128)
        {
          continue;
        }

        break;
      }
    }

    v37 = *(v0 + 376);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "PresentmentRequestInterpreter: All documents requested present for ACWG", v40, 2u);
    }

    v41 = *(v0 + 400);
    v42 = *(v0 + 376);
    v43 = *(v0 + 336);
    v44 = *(v0 + 344);

    v41(v42, v43);
    v8 = v146;
  }

  if (*(v9 + 16))
  {
    v45 = *(v0 + 360);
    defaultLogger()();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      *(v48 + 4) = v8[2];

      _os_log_impl(&_mh_execute_header, v46, v47, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v48, 0xCu);
    }

    else
    {
    }

    v82 = *(v0 + 344) + 8;
    (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
  }

  else
  {
    v65 = *(v0 + 368);
    v66 = *(v0 + 112);
    v67 = *(v0 + 40);
    defaultLogger()();

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v0 + 416);
      v142 = *(v0 + 400);
      v138 = *(v0 + 368);
      v72 = *(v0 + 336);
      v71 = *(v0 + 344);
      v73 = *(v0 + 144);
      v74 = *(v0 + 40);
      v75 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v75 = 136446466;
      v76 = Array.description.getter();
      v78 = sub_10010150C(v76, v77, &v148);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2082;
      v79 = Set.description.getter();
      v81 = sub_10010150C(v79, v80, &v148);

      *(v75 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v68, v69, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v75, 0x16u);
      swift_arrayDestroy();

      v142(v138, v72);
    }

    else
    {
      v83 = *(v0 + 400);
      v84 = *(v0 + 368);
      v85 = *(v0 + 336);
      v86 = *(v0 + 344);

      v83(v84, v85);
    }
  }

LABEL_39:
  v106 = *(v0 + 384);
  v105 = *(v0 + 392);
  v108 = *(v0 + 368);
  v107 = *(v0 + 376);
  v110 = *(v0 + 352);
  v109 = *(v0 + 360);
  v112 = *(v0 + 320);
  v111 = *(v0 + 328);
  v114 = *(v0 + 304);
  v113 = *(v0 + 312);
  v119 = *(v0 + 296);
  v120 = *(v0 + 280);
  v121 = *(v0 + 256);
  v122 = *(v0 + 248);
  v123 = *(v0 + 240);
  v125 = *(v0 + 232);
  v127 = *(v0 + 224);
  v130 = *(v0 + 200);
  v133 = *(v0 + 176);
  v135 = *(v0 + 168);
  v139 = *(v0 + 160);
  v144 = *(v0 + 136);

  v115 = *(v0 + 8);

  return v115(v146);
}

uint64_t sub_1000B0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 584) = v31;
  *(v9 + 208) = v30;
  *(v9 + 216) = v8;
  *(v9 + 192) = v29;
  *(v9 + 176) = a7;
  *(v9 + 184) = a8;
  *(v9 + 160) = a5;
  *(v9 + 168) = a6;
  *(v9 + 144) = a3;
  *(v9 + 152) = a4;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  *(v9 + 224) = *v8;
  v10 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  v11 = *(*(sub_100004E70(&qword_100201E80, &qword_1001ACF40) - 8) + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  v12 = type metadata accessor for ISO18013KnownDocTypes();
  *(v9 + 248) = v12;
  v13 = *(v12 - 8);
  *(v9 + 256) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v15 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
  *(v9 + 280) = v15;
  v16 = *(v15 - 8);
  *(v9 + 288) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  v18 = sub_100004E70(&qword_100202470, &qword_1001ACF48);
  *(v9 + 312) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  *(v9 + 344) = v21;
  v22 = *(v21 - 8);
  *(v9 + 352) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 360) = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  *(v9 + 368) = v24;
  v25 = *(v24 - 8);
  *(v9 + 376) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_1000B1320, 0, 0);
}

uint64_t sub_1000B1320()
{
  v1 = *(v0 + 432);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter buildProposal", v4, 2u);
  }

  v5 = *(v0 + 432);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v8 = *(v0 + 360);
  v9 = *(v0 + 336);
  v10 = *(v0 + 216);
  v30 = *(v0 + 176);
  v31 = *(v0 + 224);
  v28 = *(v0 + 168);
  v29 = *(v0 + 200);
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v27 = *(v0 + 136);

  v13 = *(v7 + 8);
  *(v0 + 440) = v13;
  v13(v5, v6);
  static IDCSSignposts.presentmentBuildProposal.getter();
  DIPSignpost.init(_:)();
  v14 = *(v10 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_presentmentKeySelectionProvider);
  v15 = *(v10 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_credentialKeyManager);
  v16 = *(v10 + 32);
  v17 = *(v10 + 80);
  sub_10001A940(v10 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder, v0 + 16);
  v18 = swift_allocObject();
  *(v0 + 448) = v18;
  v18[2] = v27;
  v18[3] = v12;
  v18[4] = v14;
  v18[5] = v11;
  v18[6] = v28;
  v18[7] = v29;
  v18[8] = v15;
  v18[9] = v16;
  v18[10] = v30;
  sub_10001AA08((v0 + 16), (v18 + 11));
  v18[16] = v31;

  sub_100032EBC(v11, v28);
  v19 = *(v17 + 16);
  v20 = swift_allocObject();
  *(v0 + 456) = v20;
  *(v20 + 16) = &unk_1001ACF58;
  *(v20 + 24) = v18;
  v21 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];
  v22 = v29;

  v23 = swift_task_alloc();
  *(v0 + 464) = v23;
  *v23 = v0;
  v23[1] = sub_1000B15B4;
  v24 = *(v0 + 328);
  v25 = *(v0 + 312);

  return AsyncCoreDataContainer.read<A>(_:)(v24, &unk_1001ACF68, v20, v25);
}

uint64_t sub_1000B15B4()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_1000B25C0;
  }

  else
  {
    v6 = *(v2 + 448);
    v5 = *(v2 + 456);

    v4 = sub_1000B16D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B16D8()
{
  v169 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  sub_100046360(*(v0 + 328), v1, &qword_100202470, &qword_1001ACF48);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 128);
    sub_10000A0D4(*(v0 + 328), &qword_100202470, &qword_1001ACF48);
    sub_10000A0D4(v4, &qword_100202470, &qword_1001ACF48);
LABEL_74:
    v130 = type metadata accessor for PresentmentProposal();
    (*(*(v130 - 8) + 56))(v5, 1, 1, v130);
    v132 = *(v0 + 424);
    v131 = *(v0 + 432);
    v134 = *(v0 + 408);
    v133 = *(v0 + 416);
    v136 = *(v0 + 392);
    v135 = *(v0 + 400);
    v138 = *(v0 + 352);
    v137 = *(v0 + 360);
    v139 = *(v0 + 344);
    v142 = *(v0 + 384);
    v144 = *(v0 + 336);
    v146 = *(v0 + 328);
    v148 = *(v0 + 320);
    v150 = *(v0 + 304);
    v153 = *(v0 + 296);
    v156 = *(v0 + 272);
    v158 = *(v0 + 264);
    v162 = *(v0 + 240);
    v167 = *(v0 + 232);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v138 + 8))(v137, v139);

    v65 = *(v0 + 8);
    goto LABEL_75;
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 152);
  sub_1000BBB18(*(v0 + 320), *(v0 + 304), type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v10 = DocumentRequest.docType.getter();
  v12 = v11;
  v163 = *(v8 + 104);
  v163(v6, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v7);
  v13 = ISO18013KnownDocTypes.rawValue.getter();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v6, v7);
  if (v10 == v13 && v12 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = *(v0 + 304);
  v19 = *(v0 + 264);
  v20 = *(v0 + 248);
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  v163(v19, enum case for ISO18013KnownDocTypes.photoID(_:), v20);
  v23 = ISO18013KnownDocTypes.rawValue.getter();
  v25 = v24;
  v16(v19, v20);
  v26 = *(v0 + 584);
  if (v22 == v23 && v21 == v25)
  {

LABEL_11:
    if (v26 != 3)
    {
      v28 = *(v0 + 584);
      v29 = sub_1000BAEA8();
      v30 = sub_1000A0F8C(v28, v29);

      if (v30)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_13;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_11;
  }

LABEL_13:
  v31 = *(v0 + 304);
  v32 = *(v0 + 152);
  v22 = DocumentRequest.docType.getter();
  v34 = *(v31 + 16);
  v21 = *(v31 + 24);
  if (v22 == v34 && v33 == v21)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = v34;
    if ((v35 & 1) == 0)
    {
      v76 = *(v0 + 424);
      defaultLogger()();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "Credential document type does not match request document type, skipping credential", v79, 2u);
      }

      v80 = *(v0 + 440);
      v81 = *(v0 + 424);
      goto LABEL_63;
    }
  }

LABEL_17:
  *(v0 + 480) = v22;
  *(v0 + 488) = v21;
  v36 = *(v0 + 240);
  v37 = *(v0 + 152);
  DocumentRequest.regionCode.getter();
  v38 = type metadata accessor for Locale.Region();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    sub_10000A0D4(*(v0 + 240), &qword_100201E80, &qword_1001ACF40);
  }

  else
  {
    v40 = *(v0 + 304);
    v41 = *(v0 + 240);
    v42 = Locale.Region.identifier.getter();
    v44 = v43;
    (*(v39 + 8))(v41, v38);
    v45 = *(v40 + 112);
    if (!v45 || (*(v40 + 104) != v42 || v45 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v66 = *(v0 + 416);
      v68 = *(v0 + 296);
      v67 = *(v0 + 304);
      defaultLogger()();
      sub_1000BCFA8(v67, v68, type metadata accessor for PresentmentRequestInterpreter.DBResults);

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = *(v0 + 296);
        v72 = swift_slowAlloc();
        v168[0] = swift_slowAlloc();
        *v72 = 136315394;
        v73 = *(v0 + 296);
        if (*(v71 + 112))
        {
          v74 = *(v73 + 104);
          v75 = *(v71 + 112);
        }

        else
        {
          v75 = 0xE500000000000000;
          v74 = 0x3E6C696E3CLL;
        }

        v157 = *(v0 + 416);
        v161 = *(v0 + 440);
        v152 = *(v0 + 376);
        v155 = *(v0 + 368);
        v166 = *(v0 + 328);

        sub_1000BB9CC(v73, type metadata accessor for PresentmentRequestInterpreter.DBResults);
        v128 = sub_10010150C(v74, v75, v168);

        *(v72 + 4) = v128;
        *(v72 + 12) = 2080;
        v129 = sub_10010150C(v42, v44, v168);

        *(v72 + 14) = v129;
        _os_log_impl(&_mh_execute_header, v69, v70, "Credential region '%s' code does not match request region code '%s', skipping credential", v72, 0x16u);
        swift_arrayDestroy();

        v161(v157, v155);
        v88 = v166;
      }

      else
      {
        v82 = *(v0 + 440);
        v83 = *(v0 + 416);
        v84 = *(v0 + 368);
        v85 = *(v0 + 376);
        v86 = *(v0 + 328);
        v87 = *(v0 + 296);

        sub_1000BB9CC(v87, type metadata accessor for PresentmentRequestInterpreter.DBResults);
        v82(v83, v84);
        v88 = v86;
      }

      sub_10000A0D4(v88, &qword_100202470, &qword_1001ACF48);
      v113 = *(v0 + 304);
      v5 = *(v0 + 128);
      goto LABEL_73;
    }
  }

  v46 = *(v0 + 152);
  *(v0 + 96) = DocumentRequest.issuerIdentifiers.getter();
  sub_100004E70(&qword_100202478, &qword_1001ACF70);
  sub_100055454(&qword_100202480, &qword_100202478, &qword_1001ACF70);
  Collection.nilIfEmpty.getter();
  v47 = *(v0 + 104);

  if (!v47)
  {
    goto LABEL_67;
  }

  v159 = v47;
  v48 = *(*(v0 + 304) + 96);
  v49 = v48[2];
  v50 = _swiftEmptyArrayStorage;
  if (v49)
  {
    v168[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (!v48[2])
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v51 = *(v0 + 472);
    v52 = v48[4];
    v53 = v48[5];
    sub_100009708(v52, v53);
    decodeCertificate(fromDER:)();
    if (v51)
    {
      v54 = *(v0 + 328);
      v55 = *(v0 + 304);

      sub_1000092BC(v52, v53);
      sub_10000A0D4(v54, &qword_100202470, &qword_1001ACF48);

      sub_1000BB9CC(v55, type metadata accessor for PresentmentRequestInterpreter.DBResults);
      v57 = *(v0 + 424);
      v56 = *(v0 + 432);
      v59 = *(v0 + 408);
      v58 = *(v0 + 416);
      v61 = *(v0 + 392);
      v60 = *(v0 + 400);
      v63 = *(v0 + 352);
      v62 = *(v0 + 360);
      v64 = *(v0 + 344);
      v140 = *(v0 + 384);
      v141 = *(v0 + 336);
      v143 = *(v0 + 328);
      v145 = *(v0 + 320);
      v147 = *(v0 + 304);
      v149 = *(v0 + 296);
      v151 = *(v0 + 272);
      v154 = *(v0 + 264);
      v160 = *(v0 + 240);
      v164 = *(v0 + 232);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v63 + 8))(v62, v64);

      v65 = *(v0 + 8);
LABEL_75:

      return v65();
    }

    sub_1000092BC(v52, v53);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v50 = *(v168[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v49 != 1)
    {
      v89 = v48 + 7;
      v90 = 1;
      while (v90 < v48[2])
      {
        v91 = *(v89 - 1);
        v92 = *v89;
        sub_100009708(v91, *v89);
        decodeCertificate(fromDER:)();
        ++v90;
        sub_1000092BC(v91, v92);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v50 = *(v168[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v89 += 2;
        if (v49 == v90)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_80;
    }

LABEL_41:
    v50 = v168[0];
  }

  v48 = (v50 & 0xFFFFFFFFFFFFFF8);
  if (v50 >> 62)
  {
LABEL_81:
    v93 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_44;
  }

  v93 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_44:
  v94 = 0;
  v165 = _swiftEmptyArrayStorage;
  while (v93 != v94)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v94 >= v48[2])
      {
        goto LABEL_79;
      }

      v95 = *(v50 + 8 * v94 + 32);
      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v97 = v95;
    v98 = SecCertificateRef.authorityKeyIdentifier.getter();
    v100 = v99;

    ++v94;
    if (v100 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_100100EA8(0, *(v165 + 2) + 1, 1, v165);
      }

      v102 = *(v165 + 2);
      v101 = *(v165 + 3);
      if (v102 >= v101 >> 1)
      {
        v165 = sub_100100EA8((v101 > 1), v102 + 1, 1, v165);
      }

      *(v165 + 2) = v102 + 1;
      v103 = &v165[16 * v102];
      *(v103 + 4) = v98;
      *(v103 + 5) = v100;
      v94 = v96;
    }
  }

  *(v0 + 112) = v165;
  sub_100004E70(&qword_100201508, &qword_1001AB888);
  sub_100055454(&qword_100201500, &qword_100201508, &qword_1001AB888);
  Collection.nilIfEmpty.getter();
  v104 = *(v0 + 120);

  if (v104)
  {
    v105 = sub_1000BA350(v104, v159);

    if (v105)
    {
      v106 = *(v0 + 408);
      defaultLogger()();
      v77 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v77, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v77, v107, "Credential authority key identifiers list does not intersect document request list, skipping credential", v108, 2u);
      }

      v80 = *(v0 + 440);
      v81 = *(v0 + 408);
LABEL_63:
      v109 = *(v0 + 368);
      v110 = *(v0 + 376);
      v111 = *(v0 + 328);
      v112 = *(v0 + 304);
      v5 = *(v0 + 128);

      v80(v81, v109);
      sub_10000A0D4(v111, &qword_100202470, &qword_1001ACF48);
      v113 = v112;
LABEL_73:
      sub_1000BB9CC(v113, type metadata accessor for PresentmentRequestInterpreter.DBResults);
      goto LABEL_74;
    }
  }

  else
  {
    v114 = *(v0 + 400);

    defaultLogger()();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();
    v117 = os_log_type_enabled(v115, v116);
    v118 = *(v0 + 440);
    v119 = *(v0 + 400);
    v120 = *(v0 + 368);
    v121 = *(v0 + 376);
    if (v117)
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "Credential authority key identifiers list is empty, ignoring document request issuer identifiers list", v122, 2u);
    }

    v118(v119, v120);
  }

LABEL_67:
  v123 = *(v0 + 304);
  v124 = swift_task_alloc();
  *(v0 + 496) = v124;
  *v124 = v0;
  v124[1] = sub_1000B2740;
  v125 = *(v0 + 216);
  v126 = *(v0 + 152);

  return sub_1000B725C(v126, v123 + 56);
}

uint64_t sub_1000B25C0()
{
  v1 = v0[56];
  v2 = v0[57];

  v24 = v0[59];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[43];
  v14 = v0[48];
  v15 = v0[42];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[29];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B2740(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 496);
  v8 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v6 = sub_1000B38F4;
  }

  else
  {
    v6 = sub_1000B2858;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000B2858()
{
  v57 = v0;
  if (v0[64])
  {
    sub_100046360(v0[38] + 56, (v0 + 7), &qword_100202460, &unk_1001AD180);
    v1 = v0[10];
    if (v1)
    {
      v2 = v0[11];
      sub_100009278(v0 + 7, v0[10]);
      v3 = *(v2 + 32);
      v53 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      v0[66] = v5;
      *v5 = v0;
      v5[1] = sub_1000B2DD0;
      v6 = v0[29];

      return v53(v6, v1, v2);
    }

    else
    {
      v26 = v0[29];
      sub_10000A0D4((v0 + 7), &qword_100202460, &unk_1001AD180);
      v27 = type metadata accessor for COSE_Sign1();
      (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
      v28 = *(v0[27] + 88);
      v29 = *(v0[38] + 48);
      v0[68] = v29;
      v30 = swift_task_alloc();
      v0[69] = v30;
      *v30 = v0;
      v30[1] = sub_1000B2FA0;

      return sub_100005D10(v29);
    }
  }

  else
  {
    v8 = v0[63];
    v9 = v0[48];
    v10 = v0[18];

    v11._countAndFlagsBits = 0x3466623961626336;
    v12._object = 0x80000001001B7D30;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0xD00000000000005CLL;
    logMilestone(tag:description:)(v11, v12);
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[55];
    v17 = v0[47];
    v18 = v0[48];
    v19 = v0[46];
    v20 = v0[41];
    if (v15)
    {
      v51 = v0[55];
      v54 = v0[41];
      v22 = v0[17];
      v21 = v0[18];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v56 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10010150C(v22, v21, &v56);
      _os_log_impl(&_mh_execute_header, v13, v14, "Not proposing credential %s because it has no elements matching the request", v23, 0xCu);
      sub_100005090(v24);

      v51(v18, v19);
      v25 = v54;
    }

    else
    {

      v16(v18, v19);
      v25 = v20;
    }

    sub_10000A0D4(v25, &qword_100202470, &qword_1001ACF48);
    v31 = v0[16];
    sub_1000BB9CC(v0[38], type metadata accessor for PresentmentRequestInterpreter.DBResults);
    v32 = type metadata accessor for PresentmentProposal();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v34 = v0[53];
    v33 = v0[54];
    v36 = v0[51];
    v35 = v0[52];
    v38 = v0[49];
    v37 = v0[50];
    v40 = v0[44];
    v39 = v0[45];
    v41 = v0[43];
    v43 = v0[48];
    v44 = v0[42];
    v45 = v0[41];
    v46 = v0[40];
    v47 = v0[38];
    v48 = v0[37];
    v49 = v0[34];
    v50 = v0[33];
    v52 = v0[30];
    v55 = v0[29];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v40 + 8))(v39, v41);

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_1000B2DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v8 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v5 = *(v2 + 504);
    v4 = *(v2 + 512);

    v6 = sub_1000B3A9C;
  }

  else
  {
    v6 = sub_1000B2EF4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000B2EF4()
{
  sub_100005090(v0 + 7);
  v1 = *(v0[27] + 88);
  v2 = *(v0[38] + 48);
  v0[68] = v2;
  v3 = swift_task_alloc();
  v0[69] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2FA0;

  return sub_100005D10(v2);
}

uint64_t sub_1000B2FA0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 552);
  v10 = *v3;
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = v2;

  if (v2)
  {
    v7 = v4[63];
    v6 = v4[64];

    v8 = sub_1000B3C4C;
  }

  else
  {
    v8 = sub_1000B30CC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000B30CC()
{
  v110 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 392);
  defaultLogger()();
  sub_100032EBC(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10001C120(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 568);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v109 = v8;
    *v7 = 136315138;
    if (v6 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v15 = *(v0 + 568);
      v16 = *(v0 + 560);
      v17 = Data.base16EncodedString()();
      countAndFlagsBits = v17._countAndFlagsBits;
      object = v17._object;
    }

    v105 = *(v0 + 440);
    v18 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = sub_10010150C(countAndFlagsBits, object, &v109);

    *(v7 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Proposed credential has auth ACL: %s", v7, 0xCu);
    sub_100005090(v8);

    v105(v18, v19);
  }

  else
  {
    v11 = *(v0 + 440);
    v12 = *(v0 + 392);
    v13 = *(v0 + 368);
    v14 = *(v0 + 376);

    v11(v12, v13);
  }

  v22 = *(v0 + 304);
  v23 = *(v0 + 584);
  v24 = *(v0 + 152);
  v106 = sub_1000B6B60(v22);
  v25 = v22[4];
  v26 = v22[5];
  v27 = *v25;
  v28 = *(v26 + 16);
  swift_retain_n();
  v29 = v28(v27, v26);
  v31 = v30;
  Data.base64EncodedString(options:)(0);
  sub_1000092BC(v29, v31);
  v99 = v26;
  v32 = (*(v26 + 8))(v27, v26);
  v34 = v33;
  v101 = v25;

  v87 = v22[1];
  v90 = *v22;
  DocumentRequest.docType.getter();
  if (v23 == 3)
  {
    v71 = 0;
    v81 = 0xF000000000000000;
  }

  else
  {
    sub_100032EBC(*(v0 + 184), *(v0 + 192));
    v81 = *(v0 + 192);
    v71 = *(v0 + 184);
  }

  v35 = *(v0 + 304);
  v36 = v35[12];
  if (v36[2])
  {
    v69 = v36[4];
    v79 = v36[5];
    sub_100009708(v69, v79);
    v35 = *(v0 + 304);
  }

  else
  {
    v69 = 0;
    v79 = 0xF000000000000000;
  }

  v37 = *(v0 + 568);
  v38 = *(v0 + 512);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v77 = v35[14];
  v73 = v35[13];
  v75 = v35[15];
  v83 = v35[16];
  sub_100032EBC(*(v0 + 560), v37);
  v95 = v106;
  v97 = v36;

  v107 = String._bridgeToObjectiveC()();
  v103 = String._bridgeToObjectiveC()();

  v93.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v32, v34);
  v91 = String._bridgeToObjectiveC()();
  v88 = String._bridgeToObjectiveC()();

  sub_100004E70(&qword_100202468, &unk_1001ACF30);
  v85.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v37 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v42 = *(v0 + 568);
    v43 = *(v0 + 560);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v43, v42);
  }

  if (v81 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v71, v81);
  }

  if (v79 >> 60 == 15)
  {
    v45 = 0;
    if (v77)
    {
      goto LABEL_21;
    }

LABEL_24:
    v46 = 0;
    if (v83)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v45 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001C120(v69, v79);
  if (!v77)
  {
    goto LABEL_24;
  }

LABEL_21:
  v46 = String._bridgeToObjectiveC()();
  if (v83)
  {
LABEL_22:
    v47 = String._bridgeToObjectiveC()();
    goto LABEL_26;
  }

LABEL_25:
  v47 = 0;
LABEL_26:
  v72 = *(v0 + 560);
  v74 = *(v0 + 568);
  v80 = *(v0 + 504);
  v82 = *(v0 + 544);
  v76 = *(v0 + 328);
  v78 = *(v0 + 480);
  v84 = *(v0 + 304);
  v70 = *(v0 + 232);
  v66 = *(v0 + 152);
  v67 = *(v0 + 488);
  v48 = *(v0 + 128);
  v68 = [objc_allocWithZone(DCPresentmentProposal) initWithCredentialIdentifier:v107 presentmentKeyIdentifier:v103 presentmentPublicKey:v93.super.isa partition:v91 docType:v88 elements:v85.super.isa authACL:isa readerAuthCertificateData:v44 issuerSignerCertificateData:v45 readerMetadata:*(v0 + 200) readerAnalytics:*(v0 + 208) region:v46 issuingJurisdiction:v47 credentialRevocationInfo:v95];

  v49._countAndFlagsBits = 0x3735313330633933;
  v50._object = 0x80000001001B7D90;
  v49._object = 0xE800000000000000;
  v50._countAndFlagsBits = 0xD000000000000055;
  logMilestone(tag:description:)(v49, v50);

  v51 = DocumentRequest.alternativeElements.getter();
  v52 = type metadata accessor for PresentmentProposal();
  sub_100046360(v70, v48 + v52[8], &qword_1002014D0, &unk_1001AD120);
  v53 = DocumentRequest.namespaces.getter();

  sub_10001C120(v72, v74);
  sub_10000A0D4(v70, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4(v76, &qword_100202470, &qword_1001ACF48);
  *v48 = v68;
  v48[1] = v78;
  v48[2] = v67;
  v48[3] = v80;
  v48[4] = v51;
  *(v48 + v52[9]) = v97;
  v54 = (v48 + v52[10]);
  *v54 = v101;
  v54[1] = v99;
  *(v48 + v52[11]) = v82;
  *(v48 + v52[12]) = v53;
  sub_1000BB9CC(v84, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  (*(*(v52 - 1) + 56))(v48, 0, 1, v52);
  v56 = *(v0 + 424);
  v55 = *(v0 + 432);
  v58 = *(v0 + 408);
  v57 = *(v0 + 416);
  v60 = *(v0 + 392);
  v59 = *(v0 + 400);
  v86 = *(v0 + 384);
  v62 = *(v0 + 352);
  v61 = *(v0 + 360);
  v63 = *(v0 + 344);
  v89 = *(v0 + 336);
  v92 = *(v0 + 328);
  v94 = *(v0 + 320);
  v96 = *(v0 + 304);
  v98 = *(v0 + 296);
  v100 = *(v0 + 272);
  v102 = *(v0 + 264);
  v104 = *(v0 + 240);
  v108 = *(v0 + 232);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v62 + 8))(v61, v63);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1000B38F4()
{
  v1 = v0[38];
  sub_10000A0D4(v0[41], &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v23 = v0[65];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[43];
  v13 = v0[48];
  v14 = v0[42];
  v15 = v0[41];
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[29];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3A9C()
{
  v1 = v0[38];
  sub_10000A0D4(v0[41], &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  sub_100005090(v0 + 7);
  v23 = v0[67];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[43];
  v13 = v0[48];
  v14 = v0[42];
  v15 = v0[41];
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[29];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3C4C()
{
  v1 = v0[41];
  v2 = v0[38];
  sub_10000A0D4(v0[29], &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4(v1, &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v2, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v24 = v0[72];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[43];
  v14 = v0[48];
  v15 = v0[42];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[29];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v29;
  *(v8 + 240) = v27;
  *(v8 + 256) = v28;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 280) = v9;
  v10 = *(v9 - 8);
  *(v8 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v12 = *(*(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v13 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v8 + 320) = v14;
  v15 = *(v14 - 8);
  *(v8 + 328) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v17 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
  *(v8 + 376) = v17;
  v18 = *(v17 - 8);
  *(v8 + 384) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v20 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 400) = v20;
  v21 = *(v20 - 8);
  *(v8 + 408) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v23 = sub_100004E70(&qword_1002024A0, &unk_1001ACF90);
  *(v8 + 424) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_1000B40EC, 0, 0);
}

uint64_t sub_1000B40EC()
{
  v24 = *(v0 + 400);
  v25 = *(v0 + 416);
  v22 = *(v0 + 272);
  v21 = *(v0 + 248);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v23 = *(v0 + 408);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = swift_allocObject();
  *(v0 + 448) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v3;
  *(v9 + 64) = v1;
  *(v9 + 72) = v2;
  *(v9 + 80) = v21;
  *(v9 + 96) = v22;

  sub_100032EBC(v4, v3);
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  *(v0 + 456) = v11;
  *(v11 + 16) = sub_1000BBABC;
  *(v11 + 24) = v9;
  v12 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v13 = *(v23 + 104);
  v14 = v1;

  v13(v25, v12, v24);
  v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v16 = swift_task_alloc();
  *(v0 + 464) = v16;
  *v16 = v0;
  v16[1] = sub_1000B42C4;
  v17 = *(v0 + 440);
  v18 = *(v0 + 416);
  v19 = *(v0 + 424);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_1000BBAFC, v11, v19);
}

uint64_t sub_1000B42C4()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v2[59] = v0;

  v5 = v2[57];
  if (v0)
  {
    (*(v2[51] + 8))(v2[52], v2[50]);

    v6 = sub_1000B4EF0;
  }

  else
  {
    v7 = v2[56];
    v9 = v2[51];
    v8 = v2[52];
    v10 = v2[50];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1000B4450;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000B4450()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  sub_100046360(*(v0 + 440), v1, &qword_1002024A0, &unk_1001ACF90);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 432);
  if (v4 == 1)
  {
    v6 = *(v0 + 368);
    sub_10000A0D4(v5, &qword_1002024A0, &unk_1001ACF90);
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "no results or error thrown so returning nil", v9, 2u);
    }

    v10 = *(v0 + 440);
    v11 = *(v0 + 368);
    v12 = *(v0 + 320);
    v13 = *(v0 + 328);
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v16 = *(v0 + 280);

    (*(v13 + 8))(v11, v12);
    (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v16);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = &qword_1002024A0;
    v18 = &unk_1001ACF90;
    v19 = v10;
    goto LABEL_5;
  }

  v31 = *(v0 + 392);
  sub_1000BBB18(v5, v31, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v32 = *(v31 + 32);
  if (v32 == 2)
  {
    v61 = *(v0 + 344);
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Payload protection type is payload protection key", v64, 2u);
    }

    v65 = *(v0 + 392);
    v67 = *(v0 + 336);
    v66 = *(v0 + 344);
    v68 = *(v0 + 320);
    v69 = *(v0 + 328);

    v70 = *(v69 + 8);
    v70(v66, v68);
    v71 = *(v65 + 136);

    defaultLogger()();
    *(swift_task_alloc() + 16) = v71;
    Logger.sensitive(_:)();

    v70(v67, v68);
    if (v71)
    {
      v72 = *(v0 + 440);
      if (*(v71 + 16))
      {
        v73 = type metadata accessor for InaccessiblyEncryptedPayloadProcessor();
        swift_allocObject();
        v74 = sub_1000FA838(v71);
        *(v0 + 80) = v73;
        *(v0 + 88) = &off_1001F7AF0;
        *(v0 + 56) = v74;
        sub_10000A0D4(v72, &qword_1002024A0, &unk_1001ACF90);
        sub_1000BD010(v0 + 56, v0 + 16, &qword_100202460, &unk_1001AD180);
      }

      else
      {
        sub_10000A0D4(*(v0 + 440), &qword_1002024A0, &unk_1001ACF90);
      }

      goto LABEL_25;
    }

    v60 = *(v0 + 440);
LABEL_24:
    sub_10000A0D4(v60, &qword_1002024A0, &unk_1001ACF90);
LABEL_25:
    v92 = *(v0 + 440);
    v93 = *(v0 + 432);
    v77 = *(v0 + 392);
    v78 = *(v0 + 376);
    v94 = *(v0 + 416);
    v95 = *(v0 + 368);
    v96 = *(v0 + 360);
    v97 = *(v0 + 352);
    v98 = *(v0 + 344);
    v99 = *(v0 + 336);
    v100 = *(v0 + 312);
    v102 = *(v0 + 304);
    v104 = *(v0 + 296);
    v79 = *(v0 + 176);
    v80 = *(v77 + 8);
    v81 = *(v77 + 24);
    v89 = *(v77 + 16);
    v90 = *v77;
    v91 = *(v77 + 168);
    v105 = *(v77 + 152);
    sub_100046360(v0 + 16, v79 + 56, &qword_100202460, &unk_1001AD180);
    v82 = *(v77 + 144);
    v83 = *(v77 + 96);
    v84 = *(v77 + 112);
    v87 = *(v77 + 104);
    v88 = *(v77 + 88);
    v85 = *(v78 + 52);
    v86 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
    sub_100046360(v77 + v85, v79 + *(v86 + 48), &qword_100202488, &qword_1001ACF78);

    sub_1000BB9CC(v77, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    *v79 = v90;
    *(v79 + 8) = v80;
    *(v79 + 16) = v89;
    *(v79 + 24) = v81;
    *(v79 + 32) = v105;
    *(v79 + 48) = v91;
    *(v79 + 96) = v82;
    *(v79 + 104) = v88;
    *(v79 + 112) = v83;
    *(v79 + 120) = v87;
    *(v79 + 128) = v84;
    (*(*(v86 - 8) + 56))(v79, 0, 1, v86);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);

    v30 = *(v0 + 8);
    goto LABEL_26;
  }

  if (v32 == 1)
  {
    v51 = *(v0 + 352);
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 440);
    v56 = *(v0 + 352);
    v57 = *(v0 + 320);
    v58 = *(v0 + 328);
    if (v54)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Payload protection type is device encryption key, skipping element extraction", v59, 2u);
    }

    (*(v58 + 8))(v56, v57);
    v60 = v55;
    goto LABEL_24;
  }

  if (v32)
  {
    v75 = *(v0 + 440);
    v76 = *(v0 + 392);
    (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for DIPError.Code.internalError(_:), *(v0 + 280));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v75, &qword_1002024A0, &unk_1001ACF90);
    sub_1000BB9CC(v76, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    v17 = &qword_100202460;
    v18 = &unk_1001AD180;
    v19 = v0 + 16;
LABEL_5:
    sub_10000A0D4(v19, v17, v18);
    v21 = *(v0 + 432);
    v20 = *(v0 + 440);
    v22 = *(v0 + 416);
    v23 = *(v0 + 392);
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v27 = *(v0 + 344);
    v26 = *(v0 + 352);
    v28 = *(v0 + 336);
    v29 = *(v0 + 312);
    v101 = *(v0 + 304);
    v103 = *(v0 + 296);

    v30 = *(v0 + 8);
LABEL_26:

    return v30();
  }

  v33 = *(v0 + 360);
  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Payload protection type is standard, extracting elements from credential payload", v36, 2u);
  }

  v37 = *(v0 + 392);
  v38 = *(v0 + 360);
  v39 = *(v0 + 320);
  v40 = *(v0 + 328);
  v41 = *(v0 + 312);
  v42 = *(v0 + 264);

  (*(v40 + 8))(v38, v39);
  v43 = v37[5];
  v44 = v37[8];
  v45 = v37[9];
  v46 = *sub_100009278(v42, v42[3]);
  v47 = type metadata accessor for KeyLookupInfo();
  (*(*(v47 - 8) + 56))(v41, 1, 1, v47);
  v48 = swift_task_alloc();
  *(v0 + 480) = v48;
  *v48 = v0;
  v48[1] = sub_1000B4FFC;
  v49 = *(v0 + 312);

  return sub_1000F1194(v0 + 96, v44, v45, v43, v49, 0, 0xF000000000000000);
}

uint64_t sub_1000B4EF0()
{
  v1 = v0[56];

  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v5 = v0[49];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  v11 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[59];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B4FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  sub_10000A0D4(*(v2 + 312), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v5 = sub_1000B5550;
  }

  else
  {
    v5 = sub_1000B5140;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B5140()
{
  sub_1000BD010((v0 + 12), (v0 + 2), &qword_100202460, &unk_1001AD180);
  if (v0[5])
  {
    sub_10001A940((v0 + 2), (v0 + 17));
    v1 = v0[20];
    v2 = v0[21];
    sub_100009278(v0 + 17, v1);
    v3 = *(v2 + 8);
    v37 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[62] = v5;
    *v5 = v0;
    v5[1] = sub_1000B56A4;
    v6 = v0[38];

    return v37(v6, 1, v1, v2);
  }

  else
  {
    v8 = v0[38];
    sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
    v9 = type metadata accessor for PayloadMetadata();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_10000A0D4(v8, &qword_100202490, &unk_1001ACF80);
    v26 = v0[55];
    v27 = v0[54];
    v10 = v0[49];
    v11 = v0[47];
    v28 = v0[52];
    v29 = v0[46];
    v30 = v0[45];
    v31 = v0[44];
    v32 = v0[43];
    v33 = v0[42];
    v34 = v0[39];
    v35 = v0[38];
    v36 = v0[37];
    v12 = v0[22];
    v13 = *(v10 + 8);
    v14 = *(v10 + 24);
    v23 = *(v10 + 16);
    v24 = *v10;
    v25 = *(v10 + 168);
    v38 = *(v10 + 152);
    sub_100046360((v0 + 2), v12 + 56, &qword_100202460, &unk_1001AD180);
    v15 = *(v10 + 144);
    v16 = *(v10 + 96);
    v17 = *(v10 + 112);
    v21 = *(v10 + 104);
    v22 = *(v10 + 88);
    v18 = *(v11 + 52);
    v19 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
    sub_100046360(v10 + v18, v12 + *(v19 + 48), &qword_100202488, &qword_1001ACF78);

    sub_1000BB9CC(v10, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    *v12 = v24;
    *(v12 + 8) = v13;
    *(v12 + 16) = v23;
    *(v12 + 24) = v14;
    *(v12 + 32) = v38;
    *(v12 + 48) = v25;
    *(v12 + 96) = v15;
    *(v12 + 104) = v22;
    *(v12 + 112) = v16;
    *(v12 + 120) = v21;
    *(v12 + 128) = v17;
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
    sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000B5550()
{
  v1 = v0[49];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v5 = v0[49];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  v11 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B56A4()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_1000B5A90;
  }

  else
  {
    v3 = sub_1000B57B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B57B8()
{
  v1 = v0[38];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  v2 = type metadata accessor for PayloadMetadata();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000A0D4(v1, &qword_100202490, &unk_1001ACF80);
  sub_100005090(v0 + 17);
  v20 = v0[55];
  v21 = v0[54];
  v3 = v0[49];
  v4 = v0[47];
  v22 = v0[52];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v5 = v0[22];
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  v17 = *(v3 + 16);
  v18 = *v3;
  v19 = *(v3 + 168);
  v31 = *(v3 + 152);
  sub_100046360((v0 + 2), v5 + 56, &qword_100202460, &unk_1001AD180);
  v8 = *(v3 + 144);
  v9 = *(v3 + 96);
  v10 = *(v3 + 112);
  v15 = *(v3 + 104);
  v16 = *(v3 + 88);
  v11 = *(v4 + 52);
  v12 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
  sub_100046360(v3 + v11, v5 + *(v12 + 48), &qword_100202488, &qword_1001ACF78);

  sub_1000BB9CC(v3, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  *v5 = v18;
  *(v5 + 8) = v6;
  *(v5 + 16) = v17;
  *(v5 + 24) = v7;
  *(v5 + 32) = v31;
  *(v5 + 48) = v19;
  *(v5 + 96) = v8;
  *(v5 + 104) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v15;
  *(v5 + 128) = v10;
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000B5A90()
{
  v1 = v0[49];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  sub_100005090(v0 + 17);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v5 = v0[49];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  v11 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[63];

  v12 = v0[1];

  return v12();
}

void sub_1000B5BEC(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X5>, void *a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, void *a10)
{
  v120 = a5;
  v121 = a7;
  v118 = a6;
  v119 = a4;
  v117 = a8;
  v13 = type metadata accessor for Logger();
  v116 = *(v13 - 8);
  v14 = *(v116 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v108 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v127;
  v26 = sub_10005218C(a2, a3);
  if (!v25)
  {
    v111 = v17;
    v115 = v21;
    v127 = v20;
    v112._countAndFlagsBits = a2;
    v112._object = a3;
    v109 = v19;
    v113 = v24;
    v110 = v13;
    if (!v26)
    {
      v124 = 0;
      v125 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v124 = 0xD000000000000024;
      v125 = 0x80000001001B7EF0;
      String.append(_:)(v112);
      (*(v115 + 104))(v113, enum case for DIPError.Code.idcsUnknownCredential(_:), v127);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v114 = 0;
    v27 = v26;
    v28 = [v26 partition];
    if (!v28)
    {
      (*(v115 + 104))(v113, enum case for DIPError.Code.invalidStoredData(_:), v127);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v29 = v27;
    v30 = v28;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v118)
    {
      v34 = [v118 identifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = v114;
    v39 = sub_10009F024(a1, v119, v120, v35, v37, v27);
    v114 = v38;
    if (v38)
    {

      return;
    }

    v40 = v39;
    v41 = v29;

    if (!v40)
    {

      v33 = v111;
      defaultLogger()();
      object = v112._object;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      v48 = os_log_type_enabled(v46, v47);
      v40 = v110;
      v49 = v116;
      countAndFlagsBits = v112._countAndFlagsBits;
      if (v48)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v124 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_10010150C(countAndFlagsBits, object, &v124);
        _os_log_impl(&_mh_execute_header, v46, v47, "No presentment key available, skipping credential %s", v51, 0xCu);
        sub_100005090(v52);

        (v49)[1](v111, v40);
LABEL_24:
        v67 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
        (*(*(v67 - 8) + 56))(v117, 1, 1, v67);
        return;
      }

LABEL_23:

      (v49)[1](v33, v40);
      goto LABEL_24;
    }

    v42 = v114;
    v43 = sub_1000BBB88(v40);
    v114 = v42;
    if (v42)
    {

      return;
    }

    v46 = v44;
    v121 = v43;
    v53 = [v40 payload];
    if (!v53)
    {

      (*(v115 + 104))(v113, enum case for DIPError.Code.invalidStoredData(_:), v127);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v54 = v53;
    v55 = [v53 docType];
    v56 = v113;
    if (!v55)
    {
      goto LABEL_25;
    }

    v120 = v31;
    v57 = v55;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v124 = v58;
    v125 = v60;
    sub_10004630C();
    Collection.nilIfEmpty.getter();

    v61 = v123;
    if (!v123)
    {
LABEL_25:

      (*(v115 + 104))(v56, enum case for DIPError.Code.invalidStoredData(_:), v127);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v62 = v33;
    v127 = v54;
    v49 = v122;
    if (!a9)
    {
      v63 = [v41 options];
      if (v63)
      {
        v64 = v46;
        v65 = v63;
        v66 = [v63 readerAuthenticationPolicy];

        v46 = v64;
        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v66 = 0;
      }

      if (v66 != a10)
      {

        v62 = v109;
        defaultLogger()();
        v77 = v112._object;

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v120 = v40;
          v124 = v81;
          *v80 = 136315650;
          *(v80 + 4) = sub_10010150C(v112._countAndFlagsBits, v77, &v124);
          *(v80 + 12) = 2082;
          v82 = DCCredentialReaderAuthenticationPolicyToString();
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          v86 = sub_10010150C(v83, v85, &v124);

          *(v80 + 14) = v86;
          *(v80 + 22) = 2082;
          v87 = DCCredentialReaderAuthenticationPolicyToString();
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;

          v91 = sub_10010150C(v88, v90, &v124);

          *(v80 + 24) = v91;
          _os_log_impl(&_mh_execute_header, v78, v79, "Not proposing credential %s because its reader authentication policy %{public}s does not match the session's reader authentication policy %{public}s", v80, 0x20u);
          swift_arrayDestroy();

          (*(v116 + 8))(v109, v110);
          goto LABEL_24;
        }

LABEL_43:

        (*(v116 + 8))(v62, v110);
        goto LABEL_24;
      }
    }

    v118 = v49;
    v119 = v46;
    v68 = v61;
    v69 = v127;
    v70 = [v127 protectionType];
    if ((v70 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v71 = v70;
      v72 = v114;
      sub_10005E914(v126);
      if (v72)
      {

        return;
      }

      v73 = [v69 payloadData];
      if (v73)
      {
        v74 = v73;
        v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v76;
      }

      else
      {
        v75 = 0;
        v116 = 0xF000000000000000;
      }

      sub_100059974();
      v114 = 0;
      v115 = v92;
      v93 = [v69 issuerCertificateChain];
      if (!v93 || (v124 = 0, v94 = v93, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v94, (v95 = v124) == 0))
      {

        v95 = _swiftEmptyArrayStorage;
      }

      v112._object = v95;
      v96 = [v41 options];
      v113 = v75;
      v97 = v40;
      if (v96)
      {
        v98 = v96;
        v78 = [v96 presentmentAuthPolicy];

        if (v78 < 0)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v78 = 0;
      }

      v99 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
      v100 = v117;
      v101 = v127;
      sub_10005EC20((v117 + *(v99 + 52)));

      v102 = v126[0];
      *(v100 + 56) = v126[1];
      v103 = v126[3];
      *(v100 + 72) = v126[2];
      *(v100 + 88) = v103;
      *(v100 + 104) = v126[4];
      *v100 = v120;
      *(v100 + 8) = v62;
      *(v100 + 16) = v118;
      *(v100 + 24) = v68;
      *(v100 + 32) = v71;
      *(v100 + 40) = v102;
      v105 = v115;
      v104 = v116;
      *(v100 + 120) = v113;
      *(v100 + 128) = v104;
      v106 = v112._object;
      *(v100 + 136) = v105;
      *(v100 + 144) = v106;
      v107 = v119;
      *(v100 + 152) = v121;
      *(v100 + 160) = v107;
      *(v100 + 168) = v78;
      (*(*(v99 - 8) + 56))(v100, 0, 1, v99);
    }
  }
}

unint64_t sub_1000B6A84()
{
  _StringGuts.grow(_:)(42);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v0 = Dictionary.description.getter();
  v2 = v1;

  v3._countAndFlagsBits = v0;
  v3._object = v2;
  String.append(_:)(v3);

  return 0xD000000000000028;
}

id sub_1000B6B60(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v62 = &v57 - v4;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v57 - v10;
  v11 = type metadata accessor for Logger();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v57 - v24;
  __chkstk_darwin(v23);
  v27 = (&v57 - v26);
  v28 = *(type metadata accessor for PresentmentRequestInterpreter.DBResults(0) + 48);
  sub_100046360(a1 + v28, v27, &qword_100202488, &qword_1001ACF78);
  v29 = type metadata accessor for PayloadRevocationListMetadata();
  v30 = *(*(v29 - 8) + 48);
  if (v30(v27, 1, v29) == 1)
  {
    sub_10000A0D4(v27, &qword_100202488, &qword_1001ACF78);
LABEL_4:
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "StoredPayload missing identifier revocation list identifier; excluding from payload contents", v34, 2u);
    }

    (*(v65 + 8))(v17, v66);
    return 0;
  }

  v57 = v15;
  v31 = v27[1];
  v58 = *v27;
  sub_100032EBC(v58, v31);
  sub_1000BB9CC(v27, type metadata accessor for PayloadRevocationListMetadata);
  v59 = v31;
  if (v31 >> 60 == 15)
  {
    goto LABEL_4;
  }

  sub_100046360(a1 + v28, v25, &qword_100202488, &qword_1001ACF78);
  if (v30(v25, 1, v29) == 1)
  {
    sub_10000A0D4(v25, &qword_100202488, &qword_1001ACF78);
    v36 = v62;
    (*(v64 + 56))(v62, 1, 1, v63);
    v37 = v58;
LABEL_11:
    sub_10000A0D4(v36, &qword_1002019B0, &unk_1001ABDD0);
    v41 = v57;
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "StoredPayload missing identifier revocation list uri; excluding from payload contents", v44, 2u);
    }

    sub_10001C120(v37, v59);

    (*(v65 + 8))(v41, v66);
    return 0;
  }

  v36 = v62;
  sub_100046360(&v25[*(v29 + 24)], v62, &qword_1002019B0, &unk_1001ABDD0);
  sub_1000BB9CC(v25, type metadata accessor for PayloadRevocationListMetadata);
  v39 = v63;
  v38 = v64;
  v40 = (*(v64 + 48))(v36, 1, v63);
  v37 = v58;
  if (v40 == 1)
  {
    goto LABEL_11;
  }

  (*(v38 + 32))(v61, v36, v39);
  sub_100046360(a1 + v28, v22, &qword_100202488, &qword_1001ACF78);
  if (v30(v22, 1, v29) == 1)
  {
    sub_10000A0D4(v22, &qword_100202488, &qword_1001ACF78);
    v45 = 0;
    v46 = 0xF000000000000000;
  }

  else
  {
    v45 = *(v22 + 2);
    v46 = *(v22 + 3);
    sub_100032EBC(v45, v46);
    sub_1000BB9CC(v22, type metadata accessor for PayloadRevocationListMetadata);
  }

  v48 = v59;
  v47 = v60;
  (*(v38 + 16))(v60, v61, v39);
  v49.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (v46 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v45, v46);
  }

  v51 = objc_allocWithZone(DCCredentialRevocationInfo);
  URL._bridgeToObjectiveC()(v52);
  v54 = v53;
  v55 = [v51 initWithIdentifier:v49.super.isa certificate:isa URL:v53];

  sub_10001C120(v37, v48);
  v56 = *(v64 + 8);
  v56(v47, v39);
  v56(v61, v39);
  return v55;
}

uint64_t sub_1000B725C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7388, 0, 0);
}

uint64_t sub_1000B7388()
{
  v69 = v0;
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter getProposalElements", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[12];

  v9 = *(v7 + 8);
  v0[22] = v9;
  v9(v5, v6);
  v10 = DocumentRequest.namespaces.getter();
  sub_100004E70(&qword_100202458, &unk_1001ACF20);
  result = static _DictionaryStorage.copy(original:)();
  v12 = result;
  v13 = 0;
  v61 = v0;
  v62 = result;
  v0[23] = result;
  v15 = v10 + 64;
  v14 = *(v10 + 64);
  v65 = v10;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v63 = result + 64;
  if ((v17 & v14) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_12:
      v23 = v20 | (v13 << 6);
      v24 = (*(v65 + 48) + 16 * v23);
      v66 = *v24;
      v25 = *(*(v65 + 56) + 8 * v23);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v24[1];
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v28 = swift_allocObject();
        v29 = j__malloc_size(v28);
        v30 = v29 - 32;
        if (v29 < 32)
        {
          v30 = v29 - 17;
        }

        v28[2] = v26;
        v28[3] = 2 * (v30 >> 4);
        v64 = sub_100122774(&v68, v28 + 4, v26, v25);

        result = sub_1000BAE9C();
        if (v64 != v26)
        {
          goto LABEL_36;
        }

        v12 = v62;
        result = v27;
      }

      else
      {

        v28 = _swiftEmptyArrayStorage;
      }

      *(v63 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v31 = (v12[6] + 16 * v23);
      *v31 = v66;
      v31[1] = result;
      *(v12[7] + 8 * v23) = v28;
      v32 = v12[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v12[2] = v34;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v19)
      {
        break;
      }

      v22 = *(v15 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    v35 = v61;
    v36 = v61[13];

    v61[24] = sub_10010D054(_swiftEmptyArrayStorage);
    sub_100046360(v36, (v61 + 7), &qword_100202460, &unk_1001AD180);
    if (v61[10])
    {
      sub_10001AA08((v61 + 7), (v61 + 2));
      v37 = swift_task_alloc();
      v61[25] = v37;
      *v37 = v61;
      v37[1] = sub_1000B796C;
      v38 = v61[14];
      v39 = v61[12];

      return sub_1000B7EBC(v12, v39, (v61 + 2));
    }

    else
    {
      v40 = v61[12];
      sub_10000A0D4((v61 + 7), &qword_100202460, &unk_1001AD180);
      v41 = sub_1000BAF70(v12, v40);

      v42 = *(v41 + 16);

      if (v42)
      {
        v43 = v61[20];
        defaultLogger()();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        v46 = os_log_type_enabled(v44, v45);
        v47 = v61[22];
        v49 = v61[19];
        v48 = v61[20];
        v50 = v61[18];
        if (v46)
        {
          v67 = v61[22];
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v68 = v52;
          *v51 = 136315138;

          sub_100004E70(&qword_100202468, &unk_1001ACF30);
          v53 = Dictionary.description.getter();
          v55 = v54;

          v56 = sub_10010150C(v53, v55, &v68);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v44, v45, "PresentmentRequestInterpreter getProposalElements elementsForProposal %s", v51, 0xCu);
          sub_100005090(v52);

          v67(v48, v50);
        }

        else
        {

          v47(v48, v50);
        }

        v35 = v61;
      }

      else
      {

        v41 = 0;
      }

      v58 = v35[20];
      v57 = v35[21];
      v59 = v35[17];

      v60 = v35[1];

      return v60(0, v41);
    }
  }

  return result;
}

uint64_t sub_1000B796C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 200);
  v7 = *v3;
  v5[26] = a2;
  v5[27] = v2;

  v8 = v5[23];

  if (v2)
  {
    v9 = sub_1000B7D00;
  }

  else
  {
    v5[28] = a1;
    v9 = sub_1000B7AB0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000B7AB0()
{
  v30 = v0;
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[24];
  sub_100005090(v0 + 2);

  v4 = *(v2 + 16);

  v5 = v0[26];
  if (v4)
  {
    v6 = v0[20];
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[22];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[18];
    if (v9)
    {
      v28 = v1;
      v14 = swift_slowAlloc();
      v27 = v12;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315138;

      sub_100004E70(&qword_100202468, &unk_1001ACF30);
      v16 = Dictionary.description.getter();
      v26 = v10;
      v18 = v17;

      v19 = sub_10010150C(v16, v18, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "PresentmentRequestInterpreter getProposalElements elementsForProposal %s", v14, 0xCu);
      sub_100005090(v15);

      v1 = v28;

      v26(v27, v13);
    }

    else
    {

      v10(v12, v13);
    }
  }

  else
  {
    v20 = v0[26];

    v5 = 0;
  }

  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[17];

  v24 = v0[1];

  return v24(v1, v5);
}

uint64_t sub_1000B7D00()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_100005090(v0 + 2);

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B7EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013IssuerSignedItem();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v14 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v4[20] = v17;
  v18 = *(v17 - 8);
  v4[21] = v18;
  v19 = *(v18 + 64) + 15;
  v4[22] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v4[23] = v20;
  v21 = *(v20 - 8);
  v4[24] = v21;
  v22 = *(v21 + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8170, 0, 0);
}

uint64_t sub_1000B8170()
{
  v1 = v0[25];
  sub_10010D040(_swiftEmptyArrayStorage);

  v0[26] = sub_10010D054(_swiftEmptyArrayStorage);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getProposalElements: payloadProcessor provided; extracting elements from payload", v4, 2u);
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[4];
  v9 = v0[2];

  (*(v6 + 8))(v5, v7);
  v10 = v8[3];
  v11 = v8[4];
  sub_100009278(v8, v10);
  v12 = *(v11 + 16);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_1000B8368;

  return v16(v9, v10, v11);
}

uint64_t sub_1000B8368(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v8 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[26];

    v6 = sub_1000B9240;
  }

  else
  {
    v6 = sub_1000B8484;
  }

  return _swift_task_switch(v6, 0, 0);
}

unint64_t sub_1000B8484()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = *(v2 + 64);
  v108 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v107 = (63 - v5) >> 6;
  v114 = (v0[14] + 8);
  v106 = v0[18];
  v105 = (v1 + 32);
  v104 = (v1 + 88);
  v103 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v102 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v100 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v7 = (v1 + 8);
  v101 = (v1 + 96);
  v113 = v0[21];
  v8 = v0[26];
  v109 = v0[28];

  v10 = 0;
  v11 = 0;
LABEL_4:
  v0[30] = v8;
  v0[31] = v10;
LABEL_6:
  if (v6)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v107)
    {
      v68 = v0[28];
      v69 = v0[5];

      if (*(v69 + 72) == 1)
      {
        v120 = v0[28];
        v70 = v0[25];
        v71 = v0[22];
        v72 = v0[19];
        v73 = v8;
        v75 = v0[15];
        v74 = v0[16];
        v77 = v0[11];
        v76 = v0[12];
        v78 = v0[8];
        sub_10000ED48(v0[31]);

        v79 = v0[1];

        return v79(v120, v73);
      }

      else
      {
        v80 = v0[4];
        v81 = v0[3];
        v82 = *(v0[5] + 56);
        if (v82 == 1)
        {
          v83 = 1;
        }

        else
        {
          v83 = 2 * (v82 == 2);
        }

        v84 = [objc_opt_self() standardUserDefaults];
        v85._object = 0x80000001001B7CD0;
        v85._countAndFlagsBits = 0xD000000000000016;
        v86 = NSUserDefaults.internalBool(forKey:)(v85);

        if (v86)
        {
          v87 = 2;
        }

        else
        {
          v87 = v83;
        }

        v88 = v80[3];
        v89 = v80[4];
        sub_100009278(v80, v88);
        v90 = DocumentRequest.docType.getter();
        v92 = v91;
        v0[32] = v91;
        v93 = DocumentRequest.alternativeElements.getter();
        v0[33] = v93;
        v94 = *(v89 + 24);
        v121 = (v94 + *v94);
        v95 = v94[1];
        v96 = swift_task_alloc();
        v0[34] = v96;
        *v96 = v0;
        v96[1] = sub_1000B8DD8;
        v97 = v0[2];

        return v121(v97, v90, v92, v93, v87, v88, v89);
      }
    }

    v6 = *(v108 + 8 * v16);
    ++v11;
    if (v6)
    {
      v11 = v16;
LABEL_5:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(v109 + 56) + 8 * v13);
      v15 = *(v14 + 16);
      if (v15)
      {
        v98 = v7;
        v17 = (*(v109 + 48) + 16 * v13);
        v119 = *v17;
        v112 = v14 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v115 = v17[1];

        v18 = 0;
        v110 = v15;
        v111 = v14;
        while (1)
        {
          if (v18 >= *(v14 + 16))
          {
            goto LABEL_61;
          }

          v19 = v0[3];
          (*(v113 + 16))(v0[22], v112 + *(v113 + 72) * v18, v0[20]);
          v20 = DocumentRequest.namespaces.getter();
          v117 = v10;
          v118 = v8;
          v116 = v18;
          if (!*(v20 + 16))
          {
            goto LABEL_21;
          }

          v21 = sub_100099644(v119, v115);
          if ((v22 & 1) == 0)
          {
            goto LABEL_21;
          }

          v23 = v0[22];
          v24 = v0[20];
          v25 = v0[16];
          v26 = v0[13];
          v27 = *(*(v20 + 56) + 8 * v21);

          CBOREncodedCBOR.value.getter();
          v28 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v30 = v29;
          (*v114)(v25, v26);
          if (!*(v27 + 16))
          {
            break;
          }

          v31 = sub_100099644(v28, v30);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

          v34 = v0[19];
          v35 = v0[17];
          v37 = v0[11];
          v36 = v0[12];
          v99 = v0[9];
          (*(v106 + 16))(v34, *(v27 + 56) + *(v106 + 72) * v31, v35);

          CredentialPresentmentElementRequestInfo.intentToStore.getter();
          (*(v106 + 8))(v34, v35);
          (*v105)(v37, v36, v99);
          v38 = (*v104)(v37, v99);
          if (v38 == v103)
          {
            v39 = v0[11];
            (*v101)(v39, v0[9]);
            v40 = 0;
            v41 = *v39;
            v42 = 1;
            goto LABEL_23;
          }

          if (v38 == v102)
          {
            v41 = 0;
            v40 = 1;
            v42 = 2;
          }

          else
          {
            if (v38 != v100)
            {
              (*v98)(v0[11], v0[9]);
              goto LABEL_22;
            }

            v41 = 0;
            v40 = 1;
            v42 = 3;
          }

LABEL_23:
          v43 = v0[22];
          v44 = v0[20];
          v45 = v0[15];
          v46 = v0[13];
          CBOREncodedCBOR.value.getter();
          ISO18013IssuerSignedItem.elementIdentifier.getter();
          (*v114)(v45, v46);
          if (v40)
          {
            v41 = NSNotFound.getter();
          }

          v47 = objc_allocWithZone(DCPresentmentRequestedElement);
          v48 = String._bridgeToObjectiveC()();

          v49 = [v47 initWithElementIdentifier:v48 intentToRetain:v42 retentionPeriod:v41];

          sub_10000ED48(v117);
          v8 = v118;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          result = sub_100099644(v119, v115);
          v52 = v118[2];
          v53 = (v51 & 1) == 0;
          v54 = __OFADD__(v52, v53);
          v55 = v52 + v53;
          if (v54)
          {
            goto LABEL_62;
          }

          v56 = v51;
          if (v118[3] < v55)
          {
            sub_100108A98(v55, isUniquelyReferenced_nonNull_native);
            v8 = v118;
            result = sub_100099644(v119, v115);
            if ((v56 & 1) != (v57 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

LABEL_30:
            if ((v56 & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_30;
          }

          v67 = result;
          sub_100109EF8();
          result = v67;
          v8 = v118;
          if ((v56 & 1) == 0)
          {
LABEL_31:
            v8[(result >> 6) + 8] |= 1 << result;
            v58 = (v8[6] + 16 * result);
            *v58 = v119;
            v58[1] = v115;
            *(v8[7] + 8 * result) = _swiftEmptyArrayStorage;
            v59 = v8[2];
            v54 = __OFADD__(v59, 1);
            v60 = v59 + 1;
            if (v54)
            {
              goto LABEL_63;
            }

            v8[2] = v60;
            v61 = result;

            result = v61;
          }

LABEL_33:
          v62 = (v8[7] + 8 * result);
          v63 = v49;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v66 = *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v18 = v116 + 1;
          v64 = v0[22];
          v65 = v0[20];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          result = (*(v113 + 8))(v64, v65);
          v10 = sub_1000BDCF8;
          v14 = v111;
          if (v110 == v116 + 1)
          {

            v10 = sub_1000BDCF8;
            v7 = v98;
            goto LABEL_4;
          }
        }

LABEL_21:

LABEL_22:
        v41 = 0;
        v42 = 0;
        v40 = 1;
        goto LABEL_23;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1000B8DD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *(*v2 + 264);
  v7 = *(*v2 + 256);
  v8 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v9 = v4[30];
    v10 = v4[28];

    v11 = sub_1000B942C;
  }

  else
  {
    v4[36] = a1;
    v11 = sub_1000B8F54;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000B8F54()
{
  v1 = *(v0 + 280);
  v2 = sub_1000A1124(*(v0 + 288), *(v0 + 24), *(v0 + 224), *(v0 + 240));
  v4 = v3;

  if (v1)
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);
    v20 = *(v0 + 120);
    v21 = *(v0 + 96);
    v22 = *(v0 + 88);
    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for DIPError.Code.internalError(_:), *(v0 + 48));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000ED48(v5);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v23 = *(v0 + 64);
    sub_10000ED48(*(v0 + 248));

    v17 = *(v0 + 8);

    return v17(v2, v4);
  }
}

uint64_t sub_1000B9240()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v7 = v0[16];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000ED48(0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B942C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[25];
  v4 = v0[22];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000ED48(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B9620(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000B97C8, 0, 0);
}

uint64_t sub_1000B97C8()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretGenericDataRequest", v4, 2u);
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];
  v10 = v0[4];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentInterpretGenericDataRequest.getter();
  DIPSignpost.init(_:)();
  v11 = *(v10 + 24);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1000B992C;
  v14 = v0[2];
  v13 = v0[3];

  return sub_1000DE724(v14, v13);
}

uint64_t sub_1000B992C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_1000B9B28;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v9 = sub_1000B9A60;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000B9A60()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];
  v9 = v0[17];
  v8 = v0[18];

  return v7(v8, v9);
}

uint64_t sub_1000B9B28()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v7 = v0[14];
  v8 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void *sub_1000B9D00()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[10];

  v4 = v0[11];

  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator, &qword_100202378, &unk_1001ACE70);
  sub_100005090((v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder));
  v5 = *(v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_credentialKeyManager);

  v6 = *(v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_presentmentKeySelectionProvider);

  return v0;
}

uint64_t sub_1000B9D88()
{
  sub_1000B9D00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000B9E08()
{
  sub_1000BA2FC(319, &unk_100202208, type metadata accessor for IdentityReaderAuthenticator);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B9F14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004E70(&qword_100202378, &unk_1001ACE70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000BA064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004E70(&qword_100202378, &unk_1001ACE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000BA1C0()
{
  sub_1000BA294();
  if (v0 <= 0x3F)
  {
    sub_1000BA2FC(319, &unk_1002023F0, &type metadata accessor for ISO18013SessionTranscript);
    if (v1 <= 0x3F)
    {
      sub_1000BA2FC(319, &unk_100202208, type metadata accessor for IdentityReaderAuthenticator);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000BA294()
{
  if (!qword_1002023E8)
  {
    type metadata accessor for PresentmentProposal();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002023E8);
    }
  }
}

void sub_1000BA2FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000BA350(uint64_t a1, uint64_t a2)
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

  v3 = a2;
  v4 = 0;
  v77 = *(a1 + 16);
  v78 = a1 + 32;
  v5 = a2 + 56;
  v83 = a2 + 56;
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v81 = v4;
    v6 = (v78 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v3 + 40);
    Hasher.init(_seed:)();
    sub_100009708(v8, v7);
    Data.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:
    sub_1000092BC(v8, v7);
    v2 = v77;
    v4 = v81;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  v14 = v7 >> 62;
  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v7 == 0xC000000000000000;
  }

  v16 = !v15;
  v85 = v16;
  v17 = __OFSUB__(HIDWORD(v8), v8);
  v82 = v17;
  v79 = (v8 >> 32) - v8;
  v80 = v8 >> 32;
  v84 = v13;
  while (1)
  {
    v18 = (*(v3 + 48) + 16 * v12);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v7 >> 62 != 3;
      if (((v24 | v85) & 1) == 0)
      {
        v68 = 0;
        v69 = 0xC000000000000000;
LABEL_150:
        sub_1000092BC(v68, v69);
        return 0;
      }

LABEL_42:
      v25 = 0;
      if (v14 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_42;
      }

      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_152;
      }

      if (v14 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_153;
      }

      v25 = v25;
      if (v14 <= 1)
      {
LABEL_39:
        v29 = BYTE6(v7);
        if (v14)
        {
          v29 = HIDWORD(v8) - v8;
          if (v82)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v25 = BYTE6(v19);
      if (v14 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v14 != 2)
    {
      if (!v25)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    v31 = *(v8 + 16);
    v30 = *(v8 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      goto LABEL_151;
    }

LABEL_45:
    if (v25 != v29)
    {
      goto LABEL_19;
    }

    if (v25 < 1)
    {
      goto LABEL_149;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v14)
        {
LABEL_98:
          __s2 = v8;
          v87 = v7;
          v88 = BYTE2(v7);
          v89 = BYTE3(v7);
          v90 = BYTE4(v7);
          v91 = BYTE5(v7);
          if (!memcmp(__s1, &__s2, BYTE6(v7)))
          {
            goto LABEL_149;
          }

          goto LABEL_19;
        }

        if (v14 == 2)
        {
          v46 = *(v8 + 16);
          v72 = *(v8 + 24);
          sub_100009708(v20, v19);
          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v48 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v48))
            {
              goto LABEL_167;
            }

            v47 += v46 - v48;
          }

          v28 = __OFSUB__(v72, v46);
          v49 = v72 - v46;
          if (v28)
          {
            goto LABEL_160;
          }

          result = __DataStorage._length.getter();
          if (!v47)
          {
            goto LABEL_177;
          }

          goto LABEL_105;
        }

        if (v80 < v8)
        {
          goto LABEL_157;
        }

        sub_100009708(v20, v19);
        v53 = __DataStorage._bytes.getter();
        if (!v53)
        {
          goto LABEL_178;
        }

        v54 = v53;
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v8, v55))
        {
          goto LABEL_163;
        }

        v35 = (v8 - v55 + v54);
        result = __DataStorage._length.getter();
        if (!v35)
        {
          goto LABEL_179;
        }

        goto LABEL_113;
      }

      v37 = *(v20 + 16);
      sub_100009708(v20, v19);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v37, v39))
        {
          goto LABEL_155;
        }

        v38 += v37 - v39;
      }

      __DataStorage._length.getter();
      v13 = v84;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          if (v80 < v8)
          {
            goto LABEL_161;
          }

          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v41 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v41))
            {
              goto LABEL_171;
            }

            v40 += v8 - v41;
          }

          result = __DataStorage._length.getter();
          v42 = (v8 >> 32) - v8;
          if (result < v79)
          {
            v42 = result;
          }

          if (!v38)
          {
            goto LABEL_184;
          }

          if (!v40)
          {
            goto LABEL_183;
          }

LABEL_88:
          if (v38 == v40)
          {
            goto LABEL_148;
          }

          v45 = v42;
          result = v38;
LABEL_140:
          v52 = v40;
          goto LABEL_141;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v38)
        {
          goto LABEL_174;
        }

LABEL_144:
        v58 = __s1;
        v57 = v38;
        v56 = BYTE6(v7);
        goto LABEL_145;
      }

      v70 = v38;
      v59 = *(v8 + 16);
      v74 = *(v8 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_169;
        }

        v40 += v59 - v60;
      }

      if (__OFSUB__(v74, v59))
      {
        goto LABEL_164;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v74 - v59)
      {
        v62 = v74 - v59;
      }

      else
      {
        v62 = v61;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_182;
      }

      v3 = a2;
      if (!v40)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (result == v40)
      {
LABEL_148:
        sub_1000092BC(v20, v19);
LABEL_149:
        v68 = v8;
        v69 = v7;
        goto LABEL_150;
      }

      v45 = v62;
      goto LABEL_140;
    }

    if (v21)
    {
      if (v20 > v20 >> 32)
      {
        goto LABEL_154;
      }

      sub_100009708(v20, v19);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v43))
        {
          goto LABEL_156;
        }

        v38 += v20 - v43;
      }

      __DataStorage._length.getter();
      v13 = v84;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          if (v80 < v8)
          {
            goto LABEL_165;
          }

          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v44 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v44))
            {
              goto LABEL_172;
            }

            v40 += v8 - v44;
          }

          result = __DataStorage._length.getter();
          v42 = (v8 >> 32) - v8;
          if (result < v79)
          {
            v42 = result;
          }

          if (!v38)
          {
            goto LABEL_186;
          }

          if (!v40)
          {
            goto LABEL_185;
          }

          goto LABEL_88;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v38)
        {
          goto LABEL_175;
        }

        goto LABEL_144;
      }

      v71 = v38;
      v63 = *(v8 + 16);
      v75 = *(v8 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v64 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_170;
        }

        v40 += v63 - v64;
      }

      if (__OFSUB__(v75, v63))
      {
        goto LABEL_166;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v75 - v63)
      {
        v62 = v75 - v63;
      }

      else
      {
        v62 = v65;
      }

      result = v71;
      if (!v71)
      {
        goto LABEL_188;
      }

      v3 = a2;
      if (!v40)
      {
        goto LABEL_187;
      }

      goto LABEL_138;
    }

    *__s1 = v20;
    *&__s1[8] = v19;
    __s1[10] = BYTE2(v19);
    __s1[11] = BYTE3(v19);
    __s1[12] = BYTE4(v19);
    __s1[13] = BYTE5(v19);
    if (!v14)
    {
      goto LABEL_98;
    }

    if (v14 != 1)
    {
      v50 = *(v8 + 16);
      v73 = *(v8 + 24);
      sub_100009708(v20, v19);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v50, v51))
        {
          goto LABEL_168;
        }

        v47 += v50 - v51;
      }

      v28 = __OFSUB__(v73, v50);
      v49 = v73 - v50;
      if (v28)
      {
        goto LABEL_159;
      }

      result = __DataStorage._length.getter();
      if (!v47)
      {
        goto LABEL_180;
      }

LABEL_105:
      if (result >= v49)
      {
        v45 = v49;
      }

      else
      {
        v45 = result;
      }

      result = __s1;
      v52 = v47;
LABEL_141:
      v66 = memcmp(result, v52, v45);
      sub_1000092BC(v20, v19);
      v5 = v83;
      v13 = v84;
      if (!v66)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    if (v80 < v8)
    {
      goto LABEL_158;
    }

    sub_100009708(v20, v19);
    v32 = __DataStorage._bytes.getter();
    if (!v32)
    {
      break;
    }

    v33 = v32;
    v34 = __DataStorage._offset.getter();
    if (__OFSUB__(v8, v34))
    {
      goto LABEL_162;
    }

    v35 = (v8 - v34 + v33);
    result = __DataStorage._length.getter();
    if (!v35)
    {
      goto LABEL_176;
    }

LABEL_113:
    if (result >= v79)
    {
      v56 = (v8 >> 32) - v8;
    }

    else
    {
      v56 = result;
    }

    v57 = __s1;
    v58 = v35;
LABEL_145:
    v67 = memcmp(v57, v58, v56);
    sub_1000092BC(v20, v19);
    v5 = v83;
    if (!v67)
    {
      goto LABEL_149;
    }

LABEL_19:
    v12 = (v12 + 1) & v13;
    if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  result = __DataStorage._length.getter();
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}

void *sub_1000BAC98@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1000BACE0(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return v9(a1, v5);
}

Swift::Int sub_1000BAEA8()
{
  v0 = sub_10010DD18(&off_1001F41A0);
  v7 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001B2870;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSUserDefaults.internalString(forKey:)(v2);

  if (v3.value._object)
  {

    v4 = (v3.value._object >> 56) & 0xF;
    if ((v3.value._object & 0x2000000000000000) == 0)
    {
      v4 = v3.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_100102584(&v6, 2);
      return v7;
    }
  }

  return v0;
}

uint64_t sub_1000BAF70(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v88 = a1;
  v83 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v2 = *(v83 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v83);
  v82 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v81 = &v71 - v6;
  v84 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v87 = *(v84 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v84);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "getProposalElements: no payloadProcessor provided; returning all requested elements", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v17 = sub_10010D054(_swiftEmptyArrayStorage);
  v18 = *(v88 + 64);
  v86 = v88 + 64;
  v19 = 1 << *(v88 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v85 = (v19 + 63) >> 6;
  v78 = v87 + 8;
  v79 = v87 + 16;
  v76 = (v2 + 88);
  v77 = (v2 + 32);
  v75 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v74 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v72 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v71 = (v2 + 8);
  v73 = (v2 + 96);

  v22 = 0;
  v23 = 0;
LABEL_7:
  if (v21)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v28 >= v85)
    {

      sub_10000ED48(v22);
      return v17;
    }

    v21 = *(v86 + 8 * v28);
    ++v23;
    if (v21)
    {
      v23 = v28;
LABEL_6:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(*(v88 + 56) + 8 * v25);
      v27 = *(v26 + 16);
      if (v27)
      {
        v29 = (*(v88 + 48) + 16 * v25);
        v30 = v29[1];
        v95 = *v29;

        v31 = 0;
        v32 = (v26 + 40);
        v90 = v26;
        v91 = v30;
        v89 = v27;
        while (1)
        {
          if (v31 >= *(v26 + 16))
          {
            goto LABEL_44;
          }

          v93 = v32;
          v94 = v31;
          v33 = *(v32 - 1);
          v34 = *v32;

          v35 = DocumentRequest.namespaces.getter();
          if (*(v35 + 16) && (v36 = sub_100099644(v95, v30), (v37 & 1) != 0) && (v38 = *(*(v35 + 56) + 8 * v36), , , *(v38 + 16)) && (v39 = sub_100099644(v33, v34), (v40 & 1) != 0))
          {
            v41 = v87;
            v42 = v80;
            (*(v87 + 16))(v80, *(v38 + 56) + *(v87 + 72) * v39, v84);

            v43 = v81;
            CredentialPresentmentElementRequestInfo.intentToStore.getter();
            (*(v41 + 8))(v42, v84);
            v44 = v82;
            v45 = v43;
            v46 = v83;
            (*v77)(v82, v45, v83);
            v47 = (*v76)(v44, v46);
            if (v47 == v75)
            {
              (*v73)(v44, v46);
              v48 = *v44;
              v49 = 1;
              goto LABEL_23;
            }

            if (v47 == v74)
            {
              v49 = 2;
              goto LABEL_22;
            }

            if (v47 == v72)
            {
              v49 = 3;
              goto LABEL_22;
            }

            (*v71)(v44, v46);
          }

          else
          {
          }

          v49 = 0;
LABEL_22:
          v48 = NSNotFound.getter();
LABEL_23:
          v50 = objc_allocWithZone(DCPresentmentRequestedElement);
          v51 = String._bridgeToObjectiveC()();

          v52 = [v50 initWithElementIdentifier:v51 intentToRetain:v49 retentionPeriod:v48];

          sub_10000ED48(v22);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v17;
          v30 = v91;
          v54 = sub_100099644(v95, v91);
          v56 = v17[2];
          v57 = (v55 & 1) == 0;
          v58 = __OFADD__(v56, v57);
          v59 = v56 + v57;
          if (v58)
          {
            goto LABEL_45;
          }

          v60 = v55;
          if (v17[3] < v59)
          {
            sub_100108A98(v59, isUniquelyReferenced_nonNull_native);
            v54 = sub_100099644(v95, v30);
            if ((v60 & 1) != (v61 & 1))
            {
              goto LABEL_47;
            }

LABEL_28:
            v17 = v96;
            if ((v60 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v69 = v54;
          sub_100109EF8();
          v54 = v69;
          v17 = v96;
          if ((v60 & 1) == 0)
          {
LABEL_29:
            v17[(v54 >> 6) + 8] |= 1 << v54;
            v62 = (v17[6] + 16 * v54);
            *v62 = v95;
            v62[1] = v30;
            *(v17[7] + 8 * v54) = _swiftEmptyArrayStorage;
            v63 = v17[2];
            v58 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v58)
            {
              goto LABEL_46;
            }

            v17[2] = v64;
            v65 = v54;

            v54 = v65;
          }

LABEL_31:
          v66 = (v17[7] + 8 * v54);
          v67 = v52;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v68 = *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v31 = v94 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v32 = v93 + 2;
          v22 = sub_1000BDCF8;
          v26 = v90;
          if (v89 == v31)
          {

            v22 = sub_1000BDCF8;
            goto LABEL_7;
          }
        }
      }

      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BB74C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  if (v3 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 40), v3);
  }

  v4 = *(v0 + 64);

  sub_100005090((v0 + 88));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000BB7BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v15 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v14 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 128);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000105C8;

  return sub_1000B3E10(a1, a2, v15, v5, v6, v7, v8, v9);
}

uint64_t sub_1000BB8CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB904(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000104D4;

  return sub_1000BACE0(a1, a2, v7);
}

uint64_t sub_1000BB9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BBA4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);
  if (v4 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 48), v4);
  }

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 104, 7);
}

void sub_1000BBABC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 96);
  sub_1000B5BEC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1, *(v1 + 80), *(v1 + 88));
}

uint64_t sub_1000BBB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000BBB88(char *a1)
{
  v124 = type metadata accessor for DIPError.Code();
  v117 = *(v124 - 8);
  v2 = *(v117 + 64);
  __chkstk_darwin(v124);
  v119 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v111 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v103 - v8;
  v116 = type metadata accessor for CredentialKeyType();
  v114 = *(v116 - 8);
  v9 = *(v114 + 64);
  v10 = __chkstk_darwin(v116);
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v106 = &v103 - v13;
  __chkstk_darwin(v12);
  v115 = &v103 - v14;
  v15 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v103 - v17;
  v19 = type metadata accessor for CredentialKeyUsage();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v103 - v25;
  v118 = a1;
  v27 = [a1 usage];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CredentialKeyUsage.init(rawValue:)();
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v26, v18, v19);
      v29 = *(v20 + 104);
      v30 = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      goto LABEL_6;
    }

    sub_10000A0D4(v18, &qword_1002024A8, &unk_1001ACFA0);
  }

  v29 = *(v20 + 104);
  v30 = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v26, enum case for CredentialKeyUsage.invalid(_:), v19);
LABEL_6:
  v107 = enum case for CredentialKeyUsage.presentment(_:);
  v108 = v30;
  v109 = v29;
  (v29)(v24);
  sub_1000BD16C(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v122 == v120 && v123 == v121)
  {
    v31 = *(v20 + 8);
    v31(v24, v19);
    v31(v26, v19);
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33 = *(v20 + 8);
    v33(v24, v19);
    v33(v26, v19);

    if ((v32 & 1) == 0)
    {
      v118 = "ad has an empty document type";
      v56 = *(v117 + 104);
      v57 = v124;
      v56(v119, enum case for DIPError.Code.badLogic(_:), v124);
      v117 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_24:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_30:
      v56(v119, enum case for DIPError.Code.internalError(_:), v57);
LABEL_31:
      swift_errorRetain();
      v75 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v75;
    }
  }

  v34 = v118;
  v35 = [v118 identifier];
  v36 = v124;
  if (!v35)
  {
    v118 = "edKey:credentialKeyManager:)";
    v56 = *(v117 + 104);
    v56(v119, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v124);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_23:
    v57 = v124;
    goto LABEL_24;
  }

  v37 = v35;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = [v34 publicKeyIdentifier];
  if (!v41)
  {

    v118 = "have an identifier";
    v56 = *(v117 + 104);
    v56(v119, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v36);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  v42 = v41;
  v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v43;

  v44 = [v34 keyType];
  if (!v44)
  {
LABEL_15:
    v47 = v114;
    v48 = v116;
    (*(v114 + 104))(v115, enum case for CredentialKeyType.invalid(_:), v116);
    goto LABEL_16;
  }

  v45 = v44;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v112;
  CredentialKeyType.init(rawValue:)();
  v47 = v114;
  v48 = v116;
  if ((*(v114 + 48))(v46, 1, v116) == 1)
  {
    sub_10000A0D4(v46, &qword_100200510, qword_1001AB070);
    goto LABEL_15;
  }

  v58 = v46;
  v59 = v115;
  (*(v47 + 32))(v115, v58, v48);
  v60 = (*(v47 + 88))(v59, v48);
  v61 = v60;
  if (v60 != enum case for CredentialKeyType.legacySE(_:))
  {
    if (v60 != enum case for CredentialKeyType.ses(_:))
    {
      if (v60 == enum case for CredentialKeyType.externalSE(_:))
      {
        v92 = type metadata accessor for ExternalSEPresentmentKey(0);
        v93 = *(v92 + 48);
        v94 = *(v92 + 52);
        v95 = swift_allocObject();
        v96 = v48;
        v75 = v95;
        *(v95 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey) = xmmword_1001AB540;
        v97 = (v95 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
        v98 = v105;
        *v97 = v104;
        v97[1] = v98;
        (*(v47 + 104))(v95 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v61, v96);
        v109(v75 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v107, v19);
        v99 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
        sub_100004E70(&qword_1002010A0, &unk_1001AB530);
        v100 = swift_allocObject();
        *(v100 + 16) = 0;
        *(v75 + v99) = v100;
        *(v75 + 16) = v38;
        *(v75 + 24) = v40;
        return v75;
      }

LABEL_16:

      v122 = 0;
      v123 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v49._countAndFlagsBits = 0xD000000000000011;
      v49._object = 0x80000001001B80C0;
      String.append(_:)(v49);
      v50 = [v118 keyType];
      v51 = v124;
      if (v50)
      {
        v52 = v50;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v116;
        v53 = v111;
        CredentialKeyType.init(rawValue:)();
        if ((*(v47 + 48))(v53, 1, v48) != 1)
        {
          v54 = v119;
          v55 = v113;
          (*(v47 + 32))(v113, v53, v48);
          goto LABEL_29;
        }

        sub_10000A0D4(v53, &qword_100200510, qword_1001AB070);
      }

      v54 = v119;
      v55 = v113;
      (*(v47 + 104))(v113, enum case for CredentialKeyType.invalid(_:), v48);
LABEL_29:
      _print_unlocked<A, B>(_:_:)();
      v118 = *(v47 + 8);
      (v118)(v55, v48);
      v83._countAndFlagsBits = 0xD00000000000001BLL;
      v83._object = 0x80000001001B80E0;
      String.append(_:)(v83);
      v113 = v123;
      v114 = v122;
      v117 = *(v117 + 104);
      (v117)(v54, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v51);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      v57 = v124;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v104, v105);
      (v118)(v115, v116);
      v56 = v117;
      goto LABEL_30;
    }

    v85 = [v118 keyBlob];
    if (v85)
    {
      v86 = v85;
      v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = v110;
      v91 = sub_10002BD74(v38, v40, v87, v89, 0, 0xF000000000000000);
      if (!v90)
      {
        v75 = v91;
        sub_1000092BC(v104, v105);
        sub_1000092BC(v87, v89);

        return v75;
      }

      sub_1000092BC(v104, v105);

      sub_1000092BC(v87, v89);
      (*(v117 + 104))(v119, enum case for DIPError.Code.internalError(_:), v124);
      goto LABEL_31;
    }

    v118 = " for stored presentment key";
    v101 = *(v117 + 104);
    v102 = v124;
    v101(v119, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v124);
    v117 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_41:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v104, v105);
    v101(v119, enum case for DIPError.Code.internalError(_:), v102);
    goto LABEL_31;
  }

  v62 = v118;
  v63 = [v118 publicKey];
  if (!v63)
  {

    v118 = "nt key does not have a key blob";
    v101 = *(v117 + 104);
    v102 = v124;
    v101(v119, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v124);
    v117 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_41;
  }

  v124 = v40;
  v64 = v48;
  v65 = v63;
  v66 = v47;
  v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = [v62 keySlot];
  v70 = *(v47 + 104);
  v71 = v106;
  v70(v106, v61, v64);
  v72 = type metadata accessor for LegacySEPresentmentKey(0);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  v76 = v75 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot;
  *v76 = v69;
  *(v76 + 8) = 0;
  v77 = (v75 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
  v78 = v105;
  *v77 = v104;
  v77[1] = v78;
  v79 = (v75 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey);
  *v79 = v119;
  v79[1] = v68;
  (*(v66 + 16))(v75 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v71, v64);
  v109(v75 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v107, v19);
  v80 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v75 + v80) = v81;
  v82 = v124;
  *(v75 + 16) = v38;
  *(v75 + 24) = v82;
  (*(v66 + 8))(v71, v64);
  return v75;
}

uint64_t sub_1000BCEF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000BCF28@<X0>(void *a1@<X8>)
{
  result = sub_100052798(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1000BCF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1000BCFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BD010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000BD0BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000BD10C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000BD15C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A8508();
}

unint64_t sub_1000BD164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A8644();
}

uint64_t sub_1000BD16C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BD1B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A8598();
}

uint64_t sub_1000BD1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BD220()
{
  result = qword_100202508;
  if (!qword_100202508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202508);
  }

  return result;
}

uint64_t sub_1000BD288(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004E70(&qword_100201560, &unk_1001AB910);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1000BD364(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004E70(&qword_100201560, &unk_1001AB910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BD414()
{
  sub_1000BD56C(319, &qword_100202578, &qword_100202580, DCPresentmentProposalReaderMetadata_ptr);
  if (v0 <= 0x3F)
  {
    sub_1000BD56C(319, &qword_100202588, &qword_100202590, DCPresentmentProposalReaderAnalytics_ptr);
    if (v1 <= 0x3F)
    {
      sub_1000BA2FC(319, &qword_100202598, type metadata accessor for SecCertificate);
      if (v2 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100201378, &type metadata for CertificateKnownIssuer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000BA2FC(319, &unk_1002025A0, &type metadata accessor for DIPError);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000BD56C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10005684C(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000BD5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000BD6A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BD758()
{
  type metadata accessor for DCCredentialPayloadProtectionType(319);
  if (v0 <= 0x3F)
  {
    sub_1000BDCA0(319, &qword_100201A40, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202648, &qword_1002019B8, &qword_1001AD020);
      if (v2 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000BD8E8();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
            if (v5 <= 0x3F)
            {
              sub_1000BA2FC(319, &unk_100202660, type metadata accessor for PayloadRevocationListMetadata);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000BD8E8()
{
  result = qword_100202658;
  if (!qword_100202658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100202658);
  }

  return result;
}

uint64_t sub_1000BD95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000BDA2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BDADC()
{
  sub_1000BD8E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
    if (v1 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202718, &qword_100202720, &unk_1001AE890);
      if (v2 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000BDCA0(319, &unk_100202728, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000BA2FC(319, &unk_100202660, type metadata accessor for PayloadRevocationListMetadata);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000BDC4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100021ED0(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000BDCA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000BDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100046360(a3, v24 - v10, &qword_100201CD0, &qword_1001AC550);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A0D4(v11, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000BDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100046360(a3, v24 - v10, &qword_100201CD0, &qword_1001AC550);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A0D4(v11, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000BE254(uint64_t a1, uint64_t a2, void *a3)
{
  v359 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v359 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v359);
  v344 = &v307 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v343 = &v307 - v11;
  v12 = __chkstk_darwin(v10);
  v312 = &v307 - v13;
  __chkstk_darwin(v12);
  v350 = &v307 - v14;
  v365 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v15 = *(v365 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v365);
  v357 = &v307 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v327 = &v307 - v20;
  v21 = __chkstk_darwin(v19);
  v342 = &v307 - v22;
  v23 = __chkstk_darwin(v21);
  v361 = &v307 - v24;
  v25 = __chkstk_darwin(v23);
  v328 = &v307 - v26;
  v27 = __chkstk_darwin(v25);
  v348 = &v307 - v28;
  v29 = __chkstk_darwin(v27);
  v323 = &v307 - v30;
  __chkstk_darwin(v29);
  v366 = &v307 - v31;
  v331 = type metadata accessor for Logger();
  v32 = *(*(v331 - 8) + 64);
  v33 = __chkstk_darwin(v331);
  v316 = &v307 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v336 = &v307 - v36;
  v37 = a1 + 56;
  v38 = 1 << *(a1 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(a1 + 56);
  v315 = (v38 + 63) >> 6;
  v371 = v15 + 16;
  v358 = (v6 + 8);
  v356 = (v15 + 32);
  v369 = (v15 + 8);
  v370 = v15;
  v330 = (v35 + 8);
  v363 = a2;

  v362 = a3;

  v314 = a1;

  v329 = 0;
  v317 = 0;
  v41 = 0;
  *&v42 = 136315394;
  v311 = v42;
  *&v42 = 136315650;
  v322 = v42;
  v360 = xmmword_1001AA160;
  v308 = a1 + 56;
  while (1)
  {
    if (v40)
    {
      v43 = v41;
      v44 = v365;
    }

    else
    {
      v44 = v365;
      do
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_225;
        }

        if (v43 >= v315)
        {

          sub_10000ED48(v329);
          sub_10000ED48(v317);
          return v363;
        }

        v40 = *(v37 + 8 * v43);
        ++v41;
      }

      while (!v40);
    }

    v310 = (v40 - 1) & v40;
    v309 = v43;
    v45 = (*(v314 + 48) + 48 * (__clz(__rbit64(v40)) | (v43 << 6)));
    v46 = v45[1];
    v313 = v45[2];
    v48 = v45[3];
    v47 = v45[4];
    v49 = v45[5];
    v50 = *(v47 + 64);
    v351 = v47 + 64;
    v51 = 1 << *(v47 + 32);
    v52 = v51 < 64 ? ~(-1 << v51) : -1;
    v53 = v52 & v50;
    v321 = (v51 + 63) >> 6;
    v354 = v47;
    swift_bridgeObjectRetain_n();
    v333 = v46;

    v352 = v49;

    v54 = 0;
    v340 = v48;
LABEL_16:
    if (v53)
    {
      break;
    }

    v56 = v354;
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_221;
      }

      if (v55 >= v321)
      {
        break;
      }

      v53 = *(v351 + 8 * v55);
      ++v54;
      if (v53)
      {
        goto LABEL_22;
      }
    }

    v41 = v309;
    v37 = v308;
    v40 = v310;
  }

  v55 = v54;
  v56 = v354;
LABEL_22:
  v318 = v55;
  v57 = __clz(__rbit64(v53)) | (v55 << 6);
  v58 = *(v56 + 56);
  v59 = (*(v56 + 48) + 16 * v57);
  v60 = v59[1];
  v345 = *v59;
  v335 = *(v58 + 8 * v57);
  v349 = v60;
  if (v362)
  {
    v61 = v362;
  }

  else
  {

    v61 = sub_10010D02C(_swiftEmptyArrayStorage);
  }

  v319 = (v53 - 1) & v53;
  v337 = v61;
  v62 = *(v61 + 64);
  v339 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & v62;
  v338 = (v63 + 63) >> 6;

  v66 = 0;
  v67 = v352;
  while (v65)
  {
    v68 = v66;
LABEL_36:
    v69 = *(v337 + 48);
    v341 = v68;
    v70 = v69 + ((v68 << 10) | (16 * __clz(__rbit64(v65))));
    v71 = *v70;
    v72 = *(v70 + 8);
    if (*(v67 + 16))
    {

      v73 = sub_100099644(v71, v72);
      v74 = &_swiftEmptySetSingleton;
      if ((v75 & 1) == 0)
      {
        goto LABEL_41;
      }

      v74 = *(*(v352 + 56) + 8 * v73);
    }

    else
    {
      v74 = &_swiftEmptySetSingleton;
    }

LABEL_41:
    v364 = v74;
    v76 = v362;
    v355 = v72;
    v372 = v71;
    if (!v362)
    {
      goto LABEL_63;
    }

    if (!v362[2] || (v77 = sub_100099644(v71, v72), v76 = v362, (v78 & 1) == 0) || (v79 = *(v362[7] + 8 * v77), , v76 = v362, !v79))
    {
      v96 = v65;
      v97 = v76;
      v98 = sub_100099644(v71, v72);
      if (v99)
      {
        v100 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v374[0] = v76;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100109A9C();
          v97 = v374[0];
        }

        v102 = *(*(v97 + 48) + 16 * v100 + 8);

        v103 = *(*(v97 + 56) + 8 * v100);

        sub_10000C01C(v100, v97);
      }

      v76 = v97;
      v65 = v96;
      goto LABEL_63;
    }

    v346 = v65;
    v80 = *(v79 + 16);

    if (v80)
    {
      v81 = 0;
      v82 = v79 + 40;
      v353 = v80;
      v332 = v80 - 1;
      v347 = _swiftEmptyArrayStorage;
      v83 = v364;
      v368 = v79;
      v334 = v79 + 40;
LABEL_47:
      v84 = (v82 + 16 * v81);
      v85 = v81;
      while (v85 < *(v79 + 16))
      {
        v86 = *(v84 - 1);
        v87 = *v84;
        v81 = v85 + 1;
        v377 = v83;
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v88 = swift_allocObject();
        *(v88 + 16) = v360;
        v367 = v86;
        *(v88 + 32) = v86;
        *(v88 + 40) = v87;
        v376 = v88;
        swift_bridgeObjectRetain_n();
        v373 = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10);
        sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980);
        LOBYTE(v86) = Collection<>.contains<A>(_:)();

        if ((v86 & 1) == 0)
        {
          v373 = v87;
          v89 = v347;
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v374[0] = v89;
          v72 = v355;
          v71 = v372;
          if ((v90 & 1) == 0)
          {
            sub_10010A6B4(0, *(v89 + 16) + 1, 1);
            v89 = v374[0];
          }

          v83 = v364;
          v91 = v367;
          v79 = v368;
          v92 = v373;
          v94 = *(v89 + 16);
          v93 = *(v89 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_10010A6B4((v93 > 1), v94 + 1, 1);
            v92 = v373;
            v89 = v374[0];
            v91 = v367;
            v83 = v364;
          }

          *(v89 + 16) = v94 + 1;
          v347 = v89;
          v95 = v89 + 16 * v94;
          *(v95 + 32) = v91;
          *(v95 + 40) = v92;
          v82 = v334;
          if (v332 != v85)
          {
            goto LABEL_47;
          }

          goto LABEL_110;
        }

        v84 += 2;
        ++v85;
        v83 = v364;
        v72 = v355;
        v71 = v372;
        v79 = v368;
        if (v353 == v81)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_222;
    }

    v347 = _swiftEmptyArrayStorage;
LABEL_110:

    v172 = v362;
    v173 = swift_isUniquelyReferenced_nonNull_native();
    v374[0] = v172;
    v175 = sub_100099644(v71, v72);
    v176 = *(v172 + 16);
    v177 = (v174 & 1) == 0;
    v178 = v176 + v177;
    if (__OFADD__(v176, v177))
    {
      goto LABEL_229;
    }

    v179 = v174;
    if (*(v172 + 24) < v178)
    {
      sub_100108404(v178, v173);
      v180 = sub_100099644(v71, v72);
      v65 = v346;
      if ((v179 & 1) != (v181 & 1))
      {
        goto LABEL_234;
      }

      v175 = v180;

      goto LABEL_114;
    }

    v65 = v346;
    v182 = v347;
    if ((v173 & 1) == 0)
    {
      sub_100109A9C();
LABEL_114:
      v182 = v347;
    }

    v183 = v374[0];
    if (v179)
    {
      v184 = *(v374[0] + 56);
      v185 = *(v184 + 8 * v175);
      *(v184 + 8 * v175) = v182;
      v76 = v183;
    }

    else
    {
      *(v374[0] + 8 * (v175 >> 6) + 64) |= 1 << v175;
      v186 = (v183[6] + 16 * v175);
      *v186 = v71;
      v186[1] = v72;
      *(v183[7] + 8 * v175) = v182;
      v187 = v183[2];
      v188 = __OFADD__(v187, 1);
      v189 = v187 + 1;
      if (v188)
      {
        goto LABEL_232;
      }

      v183[2] = v189;
      v76 = v183;
    }

LABEL_63:
    v362 = v76;
    v104 = v363;
    if (!v363)
    {
      v363 = 0;
LABEL_83:
      v129 = v336;
      goto LABEL_84;
    }

    if (!*(v363 + 16) || (v105 = sub_100099644(v71, v72), (v106 & 1) == 0) || (v107 = *(*(v104 + 56) + 8 * v105), (v108 = ) == 0))
    {
      v123 = sub_100099644(v71, v72);
      if (v124)
      {
        v125 = v123;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v374[0] = v104;
        if (!v126)
        {
          sub_100109AB0();
          v104 = v374[0];
        }

        v127 = *(*(v104 + 48) + 16 * v125 + 8);

        v128 = *(*(v104 + 56) + 8 * v125);

        v363 = v104;
        sub_10000C01C(v125, v104);
      }

      goto LABEL_83;
    }

    v346 = v65;
    v353 = *(v108 + 16);
    if (v353)
    {
      v109 = 0;
      v110 = _swiftEmptyArrayStorage;
      v111 = v365;
      v112 = v323;
      v347 = v108;
      while (v109 < *(v108 + 16))
      {
        v373 = v110;
        v368 = (*(v370 + 80) + 32) & ~*(v370 + 80);
        v367 = *(v370 + 72);
        (*(v370 + 16))(v112, v108 + v368 + v367 * v109, v111);
        v377 = v364;
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v113 = swift_allocObject();
        *(v113 + 16) = v360;
        v114 = v350;
        CBOREncodedCBOR.value.getter();
        v115 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v117 = v116;
        (*v358)(v114, v359);
        *(v113 + 32) = v115;
        *(v113 + 40) = v117;
        v376 = v113;
        sub_100004E70(&qword_100201D00, &unk_1001ACF10);
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10);
        sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980);
        LOBYTE(v115) = Collection<>.contains<A>(_:)();

        if (v115)
        {
          v111 = v365;
          (*v369)(v112, v365);
          v110 = v373;
        }

        else
        {
          v118 = *v356;
          v111 = v365;
          (*v356)(v348, v112, v365);
          v110 = v373;
          v119 = swift_isUniquelyReferenced_nonNull_native();
          v374[0] = v110;
          if ((v119 & 1) == 0)
          {
            sub_10010A758(0, *(v110 + 2) + 1, 1);
            v112 = v323;
            v111 = v365;
            v110 = v374[0];
          }

          v120 = v368;
          v122 = *(v110 + 2);
          v121 = *(v110 + 3);
          if (v122 >= v121 >> 1)
          {
            sub_10010A758(v121 > 1, v122 + 1, 1);
            v112 = v323;
            v111 = v365;
            v110 = v374[0];
          }

          *(v110 + 2) = v122 + 1;
          v118(&v110[v120 + v122 * v367], v348, v111);
        }

        ++v109;
        v108 = v347;
        if (v353 == v109)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_223;
    }

    v110 = _swiftEmptyArrayStorage;
LABEL_121:

    v190 = v363;
    v191 = swift_isUniquelyReferenced_nonNull_native();
    v374[0] = v190;
    v192 = v372;
    v72 = v355;
    v193 = sub_100099644(v372, v355);
    v195 = *(v190 + 16);
    v196 = (v194 & 1) == 0;
    v188 = __OFADD__(v195, v196);
    v197 = v195 + v196;
    if (v188)
    {
      goto LABEL_230;
    }

    v198 = v194;
    if (*(v190 + 24) >= v197)
    {
      v129 = v336;
      v65 = v346;
      if ((v191 & 1) == 0)
      {
        v206 = v193;
        sub_100109AB0();
        v129 = v336;
        v193 = v206;
        v65 = v346;
      }
    }

    else
    {
      sub_100108418(v197, v191);
      v193 = sub_100099644(v192, v72);
      v65 = v346;
      if ((v198 & 1) != (v199 & 1))
      {
        goto LABEL_234;
      }

      v129 = v336;
    }

    v200 = v374[0];
    v363 = v374[0];
    if (v198)
    {
      v201 = *(v374[0] + 56);
      v202 = *(v201 + 8 * v193);
      *(v201 + 8 * v193) = v110;
    }

    else
    {
      *(v374[0] + 8 * (v193 >> 6) + 64) |= 1 << v193;
      v203 = (v200[6] + 16 * v193);
      *v203 = v192;
      v203[1] = v72;
      *(v200[7] + 8 * v193) = v110;
      v204 = v200[2];
      v188 = __OFADD__(v204, 1);
      v205 = v204 + 1;
      if (v188)
      {
        goto LABEL_233;
      }

      v200[2] = v205;
    }

LABEL_84:
    v346 = ((v65 - 1) & v65);
    defaultLogger()();
    v130 = v354;

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    LODWORD(v332) = v132;
    if (os_log_type_enabled(v131, v132))
    {
      v326 = v131;
      v133 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v377 = v324;
      *v133 = v322;
      v134 = sub_10010150C(v372, v72, &v377);

      *(v133 + 4) = v134;
      v325 = v133;
      *(v133 + 12) = 2080;
      v376 = _swiftEmptyArrayStorage;
      v135 = 1 << *(v130 + 32);
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      else
      {
        v136 = -1;
      }

      v137 = v136 & *(v130 + 64);
      v138 = (v135 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v139 = 0;
      v334 = v138;
      while (v137)
      {
LABEL_95:
        v353 = v137;
        v355 = v139;
        v142 = __clz(__rbit64(v137)) | (v139 << 6);
        v143 = *(*(v130 + 48) + 16 * v142 + 8);
        v144 = *(*(v130 + 56) + 8 * v142);
        KeyPath = swift_getKeyPath();
        v146 = *(v144 + 16);
        if (v146)
        {
          v375 = _swiftEmptyArrayStorage;
          v347 = v143;

          sub_10010A6B4(0, v146, 0);
          v147 = v375;
          v148 = v144 + 56;
          v149 = -1 << *(v144 + 32);
          v150 = _HashTable.startBucket.getter();
          v151 = v365;
          v367 = KeyPath;
          v368 = v144 + 56;
          while ((v150 & 0x8000000000000000) == 0 && v150 < 1 << *(v144 + 32))
          {
            if ((*(v148 + 8 * (v150 >> 6)) & (1 << v150)) == 0)
            {
              goto LABEL_214;
            }

            v372 = v146;
            LODWORD(v373) = *(v144 + 36);
            v152 = *(v144 + 48);
            v153 = v144;
            v154 = v370;
            v155 = v366;
            (*(v370 + 16))(v366, v152 + *(v370 + 72) * v150, v151);
            swift_getAtKeyPath();
            (*(v154 + 8))(v155, v151);
            v156 = v374[0];
            v157 = v374[1];
            v158 = v147;
            v375 = v147;
            v159 = v147[2];
            v160 = v158[3];
            if (v159 >= v160 >> 1)
            {
              sub_10010A6B4((v160 > 1), v159 + 1, 1);
              v151 = v365;
              v158 = v375;
            }

            v158[2] = v159 + 1;
            v161 = &v158[2 * v159];
            v161[4] = v156;
            v161[5] = v157;
            if (v150 >= -(-1 << *(v153 + 32)))
            {
              goto LABEL_215;
            }

            v144 = v153;
            v148 = v368;
            if ((*(v368 + 8 * (v150 >> 6)) & (1 << v150)) == 0)
            {
              goto LABEL_216;
            }

            if (v373 != *(v144 + 36))
            {
              goto LABEL_217;
            }

            v147 = v158;
            v150 = _HashTable.occupiedBucket(after:)();
            v146 = v372 - 1;
            if (v372 == 1)
            {

              v138 = v334;
              v140 = v147;
              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
          goto LABEL_218;
        }

        v140 = _swiftEmptyArrayStorage;
LABEL_89:
        v137 = (v353 - 1) & v353;
        sub_1000FC91C(v140);
        v130 = v354;
        v139 = v355;
      }

      while (1)
      {
        v141 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          break;
        }

        if (v141 >= v138)
        {

          v162 = Array.description.getter();
          v164 = v163;

          v165 = sub_10010150C(v162, v164, &v377);

          v166 = v325;
          *(v325 + 14) = v165;
          *(v166 + 22) = 2080;
          v167 = Set.description.getter();
          v169 = v168;

          v170 = sub_10010150C(v167, v169, &v377);

          *(v166 + 24) = v170;
          v171 = v326;
          _os_log_impl(&_mh_execute_header, v326, v332, "Removing elements from namespace %s due to fallbacks %s: %s", v166, 0x20u);
          swift_arrayDestroy();

          (*v330)(v336, v331);
          goto LABEL_30;
        }

        v137 = *(v351 + 8 * v141);
        ++v139;
        if (v137)
        {
          v139 = v141;
          goto LABEL_95;
        }
      }

LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    (*v330)(v129, v331);
LABEL_30:
    v66 = v341;
    v44 = v365;
    v67 = v352;
    v65 = v346;
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_219;
    }

    if (v68 >= v338)
    {
      break;
    }

    v65 = *(v339 + 8 * v68);
    ++v66;
    if (v65)
    {
      goto LABEL_36;
    }
  }

  v207 = v335;
  v208 = v335 + 56;
  v209 = 1 << *(v335 + 32);
  if (v209 < 64)
  {
    v210 = ~(-1 << v209);
  }

  else
  {
    v210 = -1;
  }

  v211 = v210 & *(v335 + 56);
  v212 = (v209 + 63) >> 6;

  v213 = 0;
  v341 = v212;
  v339 = v208;
  while (2)
  {
    if (v211)
    {
LABEL_143:
      v353 = v211;
      v347 = v213;
      v215 = __clz(__rbit64(v211)) | (v213 << 6);
      v216 = *(v207 + 48);
      v217 = v370;
      v368 = *(v370 + 72);
      v218 = v328;
      v372 = *(v370 + 16);
      v372(v328, v216 + v368 * v215, v44);
      v346 = *(v217 + 32);
      v346(v361, v218, v44);
      v219 = v363;
      if (v363)
      {
        v220 = v342;
        if (*(v363 + 16))
        {
          v221 = sub_100099644(v345, v349);
          if (v222)
          {
            v223 = *(v219[7] + 8 * v221);
            v224 = *(v223 + 16);

            v364 = -v224;
            v225 = -1;
            v367 = v223;
            v226 = v365;
            while (1)
            {
              v228 = v364 + v225;
              if (v364 + v225 == -1)
              {
                break;
              }

              if (++v225 >= *(v367 + 16))
              {
                goto LABEL_224;
              }

              v355 = v228;
              v372(v357, v223 + ((*(v370 + 80) + 32) & ~*(v370 + 80)), v226);
              v229 = v343;
              CBOREncodedCBOR.value.getter();
              v373 = ISO18013IssuerSignedItem.elementIdentifier.getter();
              v231 = v230;
              v232 = v359;
              v233 = *v358;
              (*v358)(v229, v359);
              v234 = v344;
              CBOREncodedCBOR.value.getter();
              v235 = ISO18013IssuerSignedItem.elementIdentifier.getter();
              v237 = v236;
              v233(v234, v232);
              if (v373 == v235 && v231 == v237)
              {

                (*v369)(v357, v365);
LABEL_153:

                v228 = v355;
                goto LABEL_161;
              }

              v223 += v368;
              v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v226 = v365;
              (*v369)(v357, v365);
              if (v227)
              {
                goto LABEL_153;
              }
            }

LABEL_161:
            v238 = v228 != -1;
            v239 = v362;
            v219 = v363;
            v220 = v342;
            v208 = v339;
            if (!v362)
            {
              goto LABEL_165;
            }

            goto LABEL_162;
          }

          v238 = 2;
        }

        else
        {
          v238 = 2;
        }

        v239 = v362;
        if (!v362)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v238 = 2;
        v239 = v362;
        v220 = v342;
        if (!v362)
        {
          goto LABEL_165;
        }
      }

LABEL_162:
      if (v239[2])
      {
        v240 = v239;
        v241 = sub_100099644(v345, v349);
        if (v242)
        {
          v243 = *(v239[7] + 8 * v241);
          __chkstk_darwin(v241);
          *(&v307 - 2) = v361;

          v244 = v320;
          v245 = sub_100120CF8(sub_1000DC734, (&v307 - 4), v243);
          v320 = v244;
          v220 = v342;

          v246 = v245 & 1;
        }

        else
        {
          v246 = 2;
        }

        v219 = v363;
        v239 = v240;
        if (!v363)
        {
          goto LABEL_185;
        }

LABEL_169:
        if (v238 == 2 || (v238 & 1) != 0)
        {
          goto LABEL_185;
        }

        v372(v327, v361, v365);
        sub_10000ED48(v329);
        v247 = swift_isUniquelyReferenced_nonNull_native();
        v374[0] = v363;
        v249 = sub_100099644(v345, v349);
        v250 = v363;
        v251 = *(v363 + 16);
        v252 = (v248 & 1) == 0;
        v253 = v251 + v252;
        if (__OFADD__(v251, v252))
        {
          goto LABEL_226;
        }

        v254 = v248;
        if (*(v363 + 24) < v253)
        {
          sub_100108418(v253, v247);
          v255 = v374[0];
          v256 = sub_100099644(v345, v349);
          if ((v254 & 1) != (v257 & 1))
          {
            goto LABEL_234;
          }

          v249 = v256;
          v250 = v255;
          if (v254)
          {
            goto LABEL_180;
          }

LABEL_178:
          v250[(v249 >> 6) + 8] |= 1 << v249;
          v258 = (v250[6] + 16 * v249);
          v259 = v349;
          *v258 = v345;
          v258[1] = v259;
          *(v250[7] + 8 * v249) = _swiftEmptyArrayStorage;
          v260 = v250[2];
          v188 = __OFADD__(v260, 1);
          v261 = v260 + 1;
          if (v188)
          {
            goto LABEL_227;
          }

          v250[2] = v261;
          v262 = v250;

          v250 = v262;
          goto LABEL_180;
        }

        if (v247)
        {
          if ((v248 & 1) == 0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          sub_100109AB0();
          v250 = v374[0];
          if ((v254 & 1) == 0)
          {
            goto LABEL_178;
          }
        }

LABEL_180:
        v219 = v250;
        v263 = v250[7];
        v264 = *(v263 + 8 * v249);
        v265 = swift_isUniquelyReferenced_nonNull_native();
        *(v263 + 8 * v249) = v264;
        if ((v265 & 1) == 0)
        {
          v264 = sub_100100C9C(0, *(v264 + 2) + 1, 1, v264);
          *(v263 + 8 * v249) = v264;
        }

        v267 = *(v264 + 2);
        v266 = *(v264 + 3);
        if (v267 >= v266 >> 1)
        {
          v264 = sub_100100C9C(v266 > 1, v267 + 1, 1, v264);
          *(v263 + 8 * v249) = v264;
        }

        *(v264 + 2) = v267 + 1;
        v346(&v264[((*(v370 + 80) + 32) & ~*(v370 + 80)) + v267 * v368], v327, v365);
        v329 = sub_1000BDCF8;
        v239 = v362;
        v220 = v342;
LABEL_185:
        v363 = v219;
        if (v246 == 2 || (v246 & 1) != 0)
        {
          v44 = v365;
          v207 = v335;
LABEL_137:
          v212 = v341;
          v211 = (v353 - 1) & v353;
          (*v369)(v361, v44);
          v213 = v347;
          continue;
        }

        if (!v239)
        {
          v362 = 0;
LABEL_203:
          v295 = v316;
          defaultLogger()();
          v44 = v365;
          v372(v220, v361, v365);

          v296 = v340;

          v297 = Logger.logObject.getter();
          v298 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v297, v298))
          {
            v299 = swift_slowAlloc();
            v373 = swift_slowAlloc();
            v374[0] = v373;
            *v299 = v311;

            v300 = sub_10010150C(v313, v296, v374);

            *(v299 + 4) = v300;
            *(v299 + 12) = 2080;
            v301 = v350;
            CBOREncodedCBOR.value.getter();
            v302 = ISO18013IssuerSignedItem.elementIdentifier.getter();
            v304 = v303;
            (*v358)(v301, v359);
            (*v369)(v220, v44);
            v305 = sub_10010150C(v302, v304, v374);

            *(v299 + 14) = v305;
            _os_log_impl(&_mh_execute_header, v297, v298, "Adding element due to %s fallback: %s", v299, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*v369)(v220, v44);
          }

          (*v330)(v295, v331);
          v207 = v335;
          v208 = v339;
          goto LABEL_137;
        }

        v268 = v312;
        CBOREncodedCBOR.value.getter();
        v269 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v271 = v270;
        (*v358)(v268, v359);
        sub_10000ED48(v317);
        v272 = swift_isUniquelyReferenced_nonNull_native();
        v374[0] = v362;
        v273 = sub_100099644(v345, v349);
        v275 = v362;
        v276 = v273;
        v277 = v362[2];
        v278 = (v274 & 1) == 0;
        v279 = v277 + v278;
        if (__OFADD__(v277, v278))
        {
          goto LABEL_228;
        }

        v280 = v274;
        if (v362[3] < v279)
        {
          sub_100108404(v279, v272);
          v281 = v374[0];
          v282 = sub_100099644(v345, v349);
          if ((v280 & 1) != (v283 & 1))
          {
            goto LABEL_234;
          }

          v276 = v282;
          v275 = v281;
          if (v280)
          {
            goto LABEL_198;
          }

LABEL_196:
          v275[(v276 >> 6) + 8] |= 1 << v276;
          v284 = (v275[6] + 16 * v276);
          v285 = v349;
          *v284 = v345;
          v284[1] = v285;
          *(v275[7] + 8 * v276) = _swiftEmptyArrayStorage;
          v286 = v275[2];
          v188 = __OFADD__(v286, 1);
          v287 = v286 + 1;
          if (v188)
          {
            goto LABEL_231;
          }

          v275[2] = v287;
          v288 = v275;

          v275 = v288;
          goto LABEL_198;
        }

        if (v272)
        {
          if ((v274 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else
        {
          sub_100109A9C();
          v275 = v374[0];
          if ((v280 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

LABEL_198:
        v362 = v275;
        v289 = v275[7];
        v290 = *(v289 + 8 * v276);
        v291 = swift_isUniquelyReferenced_nonNull_native();
        *(v289 + 8 * v276) = v290;
        if ((v291 & 1) == 0)
        {
          v290 = sub_100100418(0, *(v290 + 2) + 1, 1, v290);
          *(v289 + 8 * v276) = v290;
        }

        v293 = *(v290 + 2);
        v292 = *(v290 + 3);
        if (v293 >= v292 >> 1)
        {
          v290 = sub_100100418((v292 > 1), v293 + 1, 1, v290);
          *(v289 + 8 * v276) = v290;
        }

        *(v290 + 2) = v293 + 1;
        v294 = &v290[16 * v293];
        *(v294 + 4) = v269;
        *(v294 + 5) = v271;
        v317 = sub_1000BDCF8;
        v220 = v342;
        goto LABEL_203;
      }

LABEL_165:
      v246 = 2;
      if (!v219)
      {
        goto LABEL_185;
      }

      goto LABEL_169;
    }

    break;
  }

  while (1)
  {
    v214 = v213 + 1;
    if (__OFADD__(v213, 1))
    {
      break;
    }

    if (v214 >= v212)
    {

      v54 = v318;
      v53 = v319;
      goto LABEL_16;
    }

    v211 = *(v208 + 8 * v214);
    ++v213;
    if (v211)
    {
      v213 = v214;
      goto LABEL_143;
    }
  }

LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C0520@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013IssuerSignedItem.elementIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000C054C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0610, 0, 0);
}

uint64_t sub_1000C0610()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) credentialIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v1 + *(type metadata accessor for PresentmentProposal() + 40));
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = *v1;

  v10 = [v9 readerMetadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *(*(v0 + 32) + 64);
  v17 = swift_allocObject();
  *(v0 + 64) = v17;
  v17[2] = v3;
  v17[3] = v5;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = v13;
  v17[7] = v15;
  v18 = *(v16 + 16);
  v19 = swift_allocObject();
  *(v0 + 72) = v19;
  *(v19 + 16) = sub_1000DCA8C;
  *(v19 + 24) = v17;
  v20 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v21 = swift_task_alloc();
  *(v0 + 80) = v21;
  *v21 = v0;
  v21[1] = sub_1000C07F4;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v21, sub_1000DCAB0, v19, &type metadata for () + 8);
}

uint64_t sub_1000C07F4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000C0978;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_1000C0918;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C0918()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C0978()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v6);
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

void sub_1000C0A50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  sub_1000A09B0(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_100050240();
  }
}

uint64_t sub_1000C0A7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100004E70(&qword_100201CD0, &qword_1001AC550) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100004E70(&qword_100202378, &unk_1001ACE70) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = type metadata accessor for ISO18013SessionTranscript();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v18 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v19 = *(*(sub_100004E70(&qword_100201578, &qword_1001AD1E0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v20 = type metadata accessor for ISO18013IssuerSignedItem();
  v3[26] = v20;
  v21 = *(v20 - 8);
  v3[27] = v21;
  v22 = *(v21 + 64) + 15;
  v3[28] = swift_task_alloc();
  v23 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3[29] = v23;
  v24 = *(v23 - 8);
  v3[30] = v24;
  v25 = *(v24 + 64) + 15;
  v3[31] = swift_task_alloc();
  v26 = *(type metadata accessor for PresentmentProposal() - 8);
  v3[32] = v26;
  v27 = *(v26 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v28 = type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome();
  v3[36] = v28;
  v29 = *(v28 - 8);
  v3[37] = v29;
  v3[38] = *(v29 + 64);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v30 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v31 = type metadata accessor for DIPSignpost();
  v3[44] = v31;
  v32 = *(v31 - 8);
  v3[45] = v32;
  v33 = *(v32 + 64) + 15;
  v3[46] = swift_task_alloc();
  v34 = type metadata accessor for Logger();
  v3[47] = v34;
  v35 = *(v34 - 8);
  v3[48] = v35;
  v36 = *(v35 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_1000C1028, 0, 0);
}

uint64_t sub_1000C1028()
{
  v1 = v0[51];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildCredentialResponse", v4, 2u);
  }

  v5 = v0[51];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *(v7 + 8);
  v0[52] = v12;
  v12(v5, v6);
  static IDCSSignposts.presentmentBuildResponse.getter();
  DIPSignpost.init(_:)();
  v13 = *v11;
  v14 = [v10 credentialIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (*(v13 + 16))
  {
    v18 = sub_100099644(v15, v17);
    v20 = v19;

    if (v20)
    {
      v22 = v0[34];
      v21 = v0[35];
      sub_1000DC5D0(*(v13 + 56) + *(v0[32] + 72) * v18, v22, type metadata accessor for PresentmentProposal);
      sub_1000DC9CC(v22, v21, type metadata accessor for PresentmentProposal);
      v23 = swift_task_alloc();
      v0[53] = v23;
      *v23 = v0;
      v23[1] = sub_1000C1734;
      v24 = v0[35];
      v25 = v0[33];
      v26 = v0[4];
      v27 = v0[2];

      return sub_1000C805C(v25, v24, v27);
    }
  }

  else
  {
  }

  v29 = v0[10];
  v83 = v0[11];
  v30 = v0[8];
  v31 = v0[9];
  v32 = v0[2];
  _StringGuts.grow(_:)(50);

  v33 = [v32 credentialIdentifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0xD000000000000011;
  v38._object = 0x80000001001B94A0;
  String.append(_:)(v38);
  (*(v31 + 104))(v29, enum case for DIPError.Code.idcsInvalidPresentmentSelection(_:), v30);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v39 = v0[39];
  v40 = v0[37];
  v84 = v0[36];
  v41 = v0[12];
  v42 = v0[13];
  v43 = v0[11];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v44 = swift_allocError();
  v45 = *(v41 + 16);
  v45(v46, v42, v43);
  *v39 = v44;
  (*(v40 + 104))(v39, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v84);
  v48 = v0[12];
  v47 = v0[13];
  v49 = v0[11];
  (*(v0[37] + 32))(v0[42], v0[39], v0[36]);
  swift_allocError();
  v45(v50, v47, v49);
  swift_willThrow();

  (*(v48 + 8))(v47, v49);
  v51 = v0[50];
  v52 = v0[51];
  v53 = v0[49];
  v55 = v0[45];
  v54 = v0[46];
  v56 = v0[44];
  v57 = v0[42];
  v61 = v0[43];
  v62 = v0[41];
  v63 = v0[40];
  v64 = v0[39];
  v58 = v0[36];
  v59 = v0[37];
  v65 = v0[35];
  v66 = v0[34];
  v67 = v0[33];
  v68 = v0[31];
  v69 = v0[28];
  v70 = v0[25];
  v71 = v0[24];
  v72 = v0[23];
  v73 = v0[22];
  v74 = v0[21];
  v75 = v0[20];
  v76 = v0[17];
  v77 = v0[14];
  v78 = v0[13];
  v79 = v0[10];
  v80 = v0[7];
  v81 = v0[6];
  v82 = v0[5];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(0, 0xF000000000000000);
  (*(v59 + 8))(v57, v58);
  (*(v55 + 8))(v54, v56);

  v60 = v0[1];

  return v60();
}

uint64_t sub_1000C1734(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_1000C573C;
  }

  else
  {
    v5 = sub_1000C1848;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C1848()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  sub_1000DC488(v1, type metadata accessor for PresentmentProposal);
  sub_1000DC9CC(v2, v1, type metadata accessor for PresentmentProposal);
  v3 = *v1;
  v4 = [v3 readerMetadata];
  *(v0 + 448) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 identifier];
  }

  v7 = [v3 authACL];
  if (v7)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *(v0 + 456) = v9;
  *(v0 + 464) = v11;
  v12 = *(v0 + 280);
  v13 = *(v12 + 24);
  v14 = *(v0 + 432);
  if (v13)
  {
    v15 = [*(v0 + 432) elementsToPresent];
    if (v15)
    {
      v16 = v15;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v17 = 0;
    }

    v122 = *(v0 + 240);
    v42 = sub_1000D92A8(v13, v17);
    v124 = v0;
    *(v0 + 472) = v42;

    v43 = -1;
    v44 = -1 << *(v42 + 32);
    if (-v44 < 64)
    {
      v43 = ~(-1 << -v44);
    }

    v45 = v43 & *(v42 + 64);
    v46 = (63 - v44) >> 6;
    result = swift_bridgeObjectRetain_n();
    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    while (v45)
    {
LABEL_22:
      v50 = (v47 << 9) | (8 * __clz(__rbit64(v45)));
      v51 = *(*(v42 + 56) + v50);
      v52 = *(v51 + 16);
      v53 = *(v48 + 2);
      v54 = v53 + v52;
      if (__OFADD__(v53, v52))
      {
        goto LABEL_57;
      }

      v55 = *(*(v42 + 56) + v50);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v54 > *(v48 + 3) >> 1)
      {
        if (v53 <= v54)
        {
          v56 = v53 + v52;
        }

        else
        {
          v56 = v53;
        }

        result = sub_100100C9C(result, v56, 1, v48);
        v48 = result;
      }

      v45 &= v45 - 1;
      if (*(v51 + 16))
      {
        v57 = *(v48 + 2);
        if ((*(v48 + 3) >> 1) - v57 < v52)
        {
          goto LABEL_59;
        }

        v58 = v124[29];
        v59 = &v48[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v57];
        swift_arrayInitWithCopy();

        if (v52)
        {
          v60 = *(v48 + 2);
          v61 = __OFADD__(v60, v52);
          v62 = v60 + v52;
          if (v61)
          {
            goto LABEL_60;
          }

          *(v48 + 2) = v62;
        }
      }

      else
      {

        if (v52)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        v63 = v124;
        v64 = v124[30];
        v65 = v124[27];

        v66 = 0;
        v120 = *(v48 + 2);
        v124[60] = v120;
        v67 = (v64 + 16);
        v68 = (v65 + 8);
        v69 = (v64 + 8);
        do
        {
          v63[61] = v66;
          if (v120 == v66)
          {
            break;
          }

          if (v66 >= *(v48 + 2))
          {
            goto LABEL_56;
          }

          v71 = v63[31];
          v73 = v63[28];
          v72 = v63[29];
          v74 = v124[26];
          (*v67)(v71, &v48[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v66], v72);
          CBOREncodedCBOR.value.getter();
          v75 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v77 = v76;
          v78 = v74;
          v63 = v124;
          (*v68)(v73, v78);
          v79 = v75;
          v80 = v124[31];
          v81 = v124[29];
          if (v79 == 0x7469617274726F70 && v77 == 0xE800000000000000)
          {

            (*v69)(v80, v81);
            break;
          }

          ++v66;
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = (*v69)(v80, v81);
        }

        while ((v70 & 1) == 0);

        v82 = v63[35];
        v83 = v63[25];
        v84 = *(v82 + 8);
        v85 = *(v82 + 16);

        ISO18013KnownDocTypes.init(rawValue:)();
        v86 = type metadata accessor for ISO18013KnownDocTypes();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(v83, 1, v86) == 1)
        {
LABEL_51:
          v92 = 0;
        }

        else
        {
          v88 = v63[24];
          sub_100046360(v63[25], v88, &qword_100201578, &qword_1001AD1E0);
          v89 = (*(v87 + 88))(v88, v86);
          if (v89 != enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:) && v89 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) && v89 != enum case for ISO18013KnownDocTypes.photoID(_:))
          {
            (*(v87 + 8))(v63[24], v86);
            goto LABEL_51;
          }

          v92 = 1;
        }

        *(v63 + 580) = v92;
        v93 = v63[3];
        sub_10000A0D4(v63[25], &qword_100201578, &qword_1001AD1E0);
        v94 = type metadata accessor for PresentmentRequestInterpretation(0);
        v63[62] = v94;
        v95 = *(v94 + 24);
        *(v63 + 144) = v95;
        v96 = swift_task_alloc();
        v63[63] = v96;
        *v96 = v63;
        v96[1] = sub_1000C2304;

        return (sub_1000D9510)(v93 + v95);
      }

      v45 = *(v42 + 64 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_22;
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
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v121 = v9;
    v123 = v11;
    v18 = *(v0 + 88);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.idcsMissingProposalElements(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000DC488(v12, type metadata accessor for PresentmentProposal);
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);
    v118 = *(v0 + 288);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v24 = swift_allocError();
    v25 = *(v21 + 16);
    v25(v26, v22, v23);
    *v19 = v24;
    (*(v20 + 104))(v19, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v118);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    (*(*(v0 + 296) + 32))(*(v0 + 336), *(v0 + 312), *(v0 + 288));
    swift_allocError();
    v25(v30, v27, v29);
    swift_willThrow();

    (*(v28 + 8))(v27, v29);
    v31 = *(v0 + 400);
    v32 = *(v0 + 408);
    v33 = *(v0 + 392);
    v35 = *(v0 + 360);
    v34 = *(v0 + 368);
    v36 = *(v0 + 352);
    v37 = *(v0 + 336);
    v97 = *(v0 + 344);
    v98 = *(v0 + 328);
    v99 = *(v0 + 320);
    v100 = *(v0 + 312);
    v38 = *(v0 + 288);
    v39 = *(v0 + 296);
    v101 = *(v0 + 280);
    v102 = *(v0 + 272);
    v103 = *(v0 + 264);
    v104 = *(v0 + 248);
    v105 = *(v0 + 224);
    v106 = *(v0 + 200);
    v107 = *(v0 + 192);
    v108 = *(v0 + 184);
    v109 = *(v0 + 176);
    v110 = *(v0 + 168);
    v111 = *(v0 + 160);
    v112 = *(v0 + 136);
    v113 = *(v0 + 112);
    v114 = *(v0 + 104);
    v115 = *(v0 + 80);
    v116 = *(v0 + 56);
    v117 = *(v0 + 48);
    v119 = *(v0 + 40);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v121, v123);
    (*(v39 + 8))(v37, v38);
    (*(v35 + 8))(v34, v36);

    v40 = *(v0 + 8);

    return v40();
  }

  return result;
}