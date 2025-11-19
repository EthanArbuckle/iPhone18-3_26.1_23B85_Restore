uint64_t sub_10007AF98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W5>, unint64_t a4@<X8>)
{
  v63 = a2;
  v60 = a4;
  v61 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v15 = *(v6 + 8);
  v14 = v6 + 8;
  v13 = v15;
  v15(v10, v5);
  sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = NSFileProtectionKey;
  v17 = inited + 32;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v18;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v19 = NSFileProtectionKey;
  v20 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v21 = sub_1001845BC(inited);
  v22 = v12;
  v23 = v63;
  swift_setDeallocating();
  sub_10000BD44(v17, &qword_1003A0448, &qword_1002C3DF0);
  v24 = v62;
  sub_1000833FC(v22, v21, a1, v23);
  if (v24)
  {
    v13(v22, v5);
  }

  v58 = v14;
  v59 = v5;
  v62 = v13;

  v26 = URL.generateSHA256Digest()();
  v28 = v27;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000403C(v29, qword_1003A0278);
  sub_1000094F4(v26, v28);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  sub_100009548(v26, v28);
  v32 = os_log_type_enabled(v30, v31);
  v57 = v22;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64 = v56;
    *v33 = 136315394;
    v34 = 0xED000070756E6165;
    v35 = 0x6C436C656E72656BLL;
    v36 = 0xEC0000006769666ELL;
    v37 = 0x6F436C61626F6C67;
    v38 = 0xD000000000000014;
    v39 = 0x8000000100348DB0;
    if (v61 != 3)
    {
      v38 = 0xD000000000000011;
      v39 = 0x8000000100348E00;
    }

    if (v61 != 2)
    {
      v37 = v38;
      v36 = v39;
    }

    if (!v61)
    {
      v35 = 0xD000000000000014;
      v34 = 0x8000000100348D90;
    }

    if (v61 <= 1u)
    {
      v40 = v35;
    }

    else
    {
      v40 = v37;
    }

    if (v61 <= 1u)
    {
      v41 = v34;
    }

    else
    {
      v41 = v36;
    }

    v42 = sub_100008F6C(v40, v41, &v64);

    *(v33 + 4) = v42;
    *(v33 + 12) = 2080;
    v43 = Data.hexString()();
    v44 = sub_100008F6C(v43._countAndFlagsBits, v43._object, &v64);

    *(v33 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v30, v31, "Got script data for: %s with digest: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = URL.path(percentEncoded:)(0);
  result = v45._countAndFlagsBits;
  v46 = v63 >> 62;
  v47 = v26;
  if ((v63 >> 62) > 1)
  {
    if (v46 == 2)
    {
      v52 = *(a1 + 16);
      v51 = *(a1 + 24);
      v50 = v51 - v52;
      if (__OFSUB__(v51, v52))
      {
        __break(1u);
        goto LABEL_33;
      }

      v48 = v28;
    }

    else
    {
      v48 = v28;
      v50 = 0;
    }

    v49 = v61;
    goto LABEL_30;
  }

  v48 = v28;
  v49 = v61;
  if (!v46)
  {
    v50 = BYTE6(v63);
LABEL_30:
    v54 = v59;
    v55 = v60;
    v53 = v62;
    goto LABEL_31;
  }

  v53 = v62;
  v54 = v59;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v50 = HIDWORD(a1) - a1;
    v55 = v60;
LABEL_31:
    sub_10007B4F8(v45._countAndFlagsBits, v45._object, v49, v50, 0, v55);
    v53(v57, v54);

    return sub_100009548(v47, v48);
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_10007B4F8@<X0>(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X8>)
{
  v63 = a5;
  LODWORD(v8) = a3;
  v12 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000901FC();
  if (v6)
  {
    return result;
  }

  v18 = result;
  v70 = v12;
  v67 = a1;
  v62 = 0;
  v19 = (result >> 62);
  if (result >> 62)
  {
LABEL_43:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v21 = &unk_10039D000;
    if (v20)
    {
LABEL_4:
      v61 = v19;
      v59 = a6;
      v60 = v8;
      v8 = 0;
      v72 = v18 & 0xC000000000000001;
      v64 = v18 & 0xFFFFFFFFFFFFFF8;
      *&v17 = 136316162;
      v65 = v17;
      v66 = v15;
      v71 = v18;
      v58 = a4;
      v69 = v20;
      do
      {
        if (v72)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v64 + 16))
          {
            goto LABEL_42;
          }

          v22 = *(v18 + 8 * v8 + 32);
        }

        v19 = v22;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v73 = (v8 + 1);
        if (v21[112] != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10000403C(v23, qword_1003A0278);
        v21 = v19;

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v68 = v25;
          a4 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *a4 = v65;
          v26 = [v21 scriptName];

          if (!v26)
          {
            goto LABEL_52;
          }

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a6 = v28;

          v29 = sub_100008F6C(v27, a6, &v74);

          *(a4 + 4) = v29;
          *(a4 + 12) = 2048;
          v30 = [v21 scriptID];

          *(a4 + 14) = v30;
          *(a4 + 22) = 1024;
          LODWORD(v30) = [v21 scriptType];

          *(a4 + 24) = v30;
          *(a4 + 28) = 1024;
          LODWORD(v30) = [v21 apduCount];

          *(a4 + 30) = v30;
          *(a4 + 34) = 2080;
          *(a4 + 36) = sub_100008F6C(v67, a2, &v74);
          _os_log_impl(&_mh_execute_header, v24, v68, "script name: %s, script id: %llu, script type: %u, apdu count: %u. at location: %s", a4, 0x2Cu);
          swift_arrayDestroy();

          v15 = v66;
          v18 = v71;
        }

        else
        {
        }

        ++v8;
        v19 = v70;
        v21 = &unk_10039D000;
      }

      while (v73 != v69);
      if (v72)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

      if (!*(v64 + 16))
      {
        __break(1u);
LABEL_52:

        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v31 = *(v18 + 32);
LABEL_21:
      v8 = v31;
      *v15 = v67;
      *(v15 + 8) = a2;
      swift_storeEnumTagMultiPayload();
      if (!v61)
      {
        a4 = *(v64 + 16);
        if (a4)
        {
          goto LABEL_23;
        }

LABEL_33:
        v19 = _swiftEmptyArrayStorage;
        v37 = _swiftEmptyArrayStorage[2];

        if (v37)
        {
LABEL_34:
          v15 = 3;
          v38 = 4;
          while (1)
          {
            v39 = v19[v38];
            v40 = __OFADD__(v15, v39);
            v15 += v39;
            if (v40)
            {
              goto LABEL_41;
            }

            ++v38;
            if (!--v37)
            {
              goto LABEL_37;
            }
          }
        }

        v15 = 3;
LABEL_37:

        v41 = [v8 scriptType];
        result = [v8 scriptName];
        if (result)
        {
          v42 = result;

          v43 = v41;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = v59;
          sub_100082B74(v66, v59, type metadata accessor for SLAMScript.SEFWDetails);
          result = type metadata accessor for SLAMScript(0);
          *(v47 + *(result + 20)) = v15;
          *(v47 + *(result + 24)) = v43;
          v48 = v47 + *(result + 28);
          *v48 = v58;
          *(v48 + 8) = v63 & 1;
          *(v47 + *(result + 32)) = v60;
          v49 = (v47 + *(result + 36));
          *v49 = v44;
          v49[1] = v46;
          return result;
        }

        goto LABEL_53;
      }

      a4 = _CocoaArrayWrapper.endIndex.getter();
      if (!a4)
      {
        goto LABEL_33;
      }

LABEL_23:
      v74 = _swiftEmptyArrayStorage;

      sub_10004E424(0, a4 & ~(a4 >> 63), 0);
      if ((a4 & 0x8000000000000000) == 0)
      {
        v32 = 0;
        v19 = v74;
        do
        {
          if (v72)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v33 = *(v18 + 8 * v32 + 32);
          }

          v34 = v33;
          a2 = [v33 apduCount];

          v74 = v19;
          v36 = v19[2];
          v35 = v19[3];
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            sub_10004E424((v35 > 1), v36 + 1, 1);
            v19 = v74;
          }

          ++v32;
          v19[2] = v37;
          v19[v36 + 4] = a2;
          v18 = v71;
        }

        while (a4 != v32);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = &unk_10039D000;
    if (v20)
    {
      goto LABEL_4;
    }
  }

  if (v21[112] != -1)
  {
LABEL_50:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000403C(v50, qword_1003A0278);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v67;
  if (v53)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v74 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_100008F6C(v54, a2, &v74);
    _os_log_impl(&_mh_execute_header, v51, v52, "no SLAM script in %s", v55, 0xCu);
    sub_10000959C(v56);
  }

  sub_100020148(2027, 0, 0, 0);
  return swift_willThrow();
}

void sub_10007BCAC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for SLAMScript.SEFWDetails(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SLAMScript(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000403C(v12, qword_1003A0278);
  sub_10008289C(a1, v11, type metadata accessor for SLAMScript);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v58 = v13;
    v17 = v16;
    v56 = swift_slowAlloc();
    v60 = v56;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, &v60);
    v57 = v4;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    *(v22 + 56) = v8;
    v23 = sub_10000BE5C((v22 + 32));
    sub_10008289C(v11, v23, type metadata accessor for SLAMScript);
    v24 = showFunction(signature:_:)(0x4C536574656C6564, 0xEE00293A5F284D41, v22);
    v25 = a1;
    v27 = v26;

    sub_100082008(v11, type metadata accessor for SLAMScript);
    v28 = sub_100008F6C(v24, v27, &v60);
    a1 = v25;

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100082008(v11, type metadata accessor for SLAMScript);
  }

  sub_10008289C(a1, v7, type metadata accessor for SLAMScript.SEFWDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_9:
    v31 = *v7;
    v30 = v7[1];
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100082008(v7, type metadata accessor for SLAMScript.SEFWDetails);
      return;
    }

    goto LABEL_9;
  }

  v31 = *v7;
  v30 = v7[1];
  v32 = v7[3];

LABEL_11:
  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 fileExistsAtPath:v35];

  if (v36)
  {
    v37 = [v33 defaultManager];
    v38 = String._bridgeToObjectiveC()();
    v60 = 0;
    v39 = [v37 removeItemAtPath:v38 error:&v60];

    if (v39)
    {
      v40 = v60;
    }

    else
    {
      v46 = v60;
      v47 = _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v50 = 136315394;
        v51 = sub_100008F6C(v31, v30, &v60);

        *(v50 + 4) = v51;
        *(v50 + 12) = 2080;
        v59 = v47;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v52 = String.init<A>(describing:)();
        v54 = sub_100008F6C(v52, v53, &v60);

        *(v50 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "failed to delete %s: %s", v50, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315138;
      v45 = sub_100008F6C(v31, v30, &v60);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "file at %s does not exist", v43, 0xCu);
      sub_10000959C(v44);
    }

    else
    {
    }
  }
}

BOOL sub_10007C3C8(unsigned __int8 a1)
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A1210);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v5 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v37);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x79654B7465736572, 0xEE00293A64692873, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v37);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  LOWORD(v33) = 7840;
  HIWORD(v33) = a1;
  v34 = 0;
  v35 = xmmword_1002BDC30;
  v36 = 0;
  sub_10000BC94(&v33, v37);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v33);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170CB0(v33 | (v34 << 32), v35, *(&v35 + 1), v36);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v37);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "C-APDU (RESET KEY): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_10009FAC0(v33 | (v34 << 32), v35, *(&v35 + 1), v36, 0, v37);
  v21 = v37[1];
  v22 = v38;
  v23 = Logger.logObject.getter();
  if (v21 >> 60 == 15)
  {
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to send reset key", v25, 2u);
    }

    sub_10000BCF0(&v33);

    return 0;
  }

  else
  {
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      v30 = Data.hexString()();
      v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, &v32);

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v27, "R-APDU: %s", v28, 0xCu);
      sub_10000959C(v29);
    }

    sub_10000BCF0(&v33);

    sub_10000BD44(v37, &qword_10039E2C0, &unk_1002BFEB0);
    return v22 == 36864;
  }
}

uint64_t sub_10007C874(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v166 = a4;
  v163 = a2;
  v153 = *v4;
  v8 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v160 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v159 = &v149 - v13;
  v14 = __chkstk_darwin(v12);
  *&v165 = &v149 - v15;
  __chkstk_darwin(v14);
  v17 = &v149 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v154 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v155 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v161 = &v149 - v24;
  __chkstk_darwin(v23);
  v26 = &v149 - v25;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000403C(v27, qword_1003A0278);
  v29 = *(v19 + 16);
  v157 = a1;
  v152 = v29;
  v29(v26, a1, v18);
  sub_100065074(v163, v17, &qword_1003A0178, &unk_1002C3BB0);
  v167 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v164 = a3;
  v162 = v18;
  v156 = v5;
  v158 = v19;
  if (v32)
  {
    v150 = v31;
    v151 = v30;
    v33 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v185[0] = v149;
    *v33 = 136315394;
    v34 = _typeName(_:qualified:)();
    v35 = v18;
    v37 = sub_100008F6C(v34, v36, v185);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1670;
    *(v38 + 56) = v35;
    v39 = sub_10000BE5C((v38 + 32));
    v152(v39, v26, v35);
    v40 = v165;
    sub_100065074(v17, v165, &qword_1003A0178, &unk_1002C3BB0);
    v41 = v26;
    if ((*(v19 + 48))(v40, 1, v35) == 1)
    {
      sub_10000BD44(v40, &qword_1003A0178, &unk_1002C3BB0);
      *(v38 + 88) = &type metadata for String;
      *(v38 + 64) = 0;
      *(v38 + 72) = 0xE000000000000000;
    }

    else
    {
      *(&v188 + 1) = v35;
      v42 = sub_10000BE5C(&v187);
      (*(v19 + 32))(v42, v40, v35);
      sub_100019D3C(&v187, (v38 + 64));
    }

    v43 = showFunction(signature:_:)(0xD000000000000022, 0x8000000100348C30, v38);
    v45 = v44;

    sub_10000BD44(v17, &qword_1003A0178, &unk_1002C3BB0);
    v153 = *(v19 + 8);
    v153(v41, v35);
    v46 = sub_100008F6C(v43, v45, v185);

    *(v33 + 14) = v46;
    v47 = v151;
    _os_log_impl(&_mh_execute_header, v151, v150, "%s.%s", v33, 0x16u);
    swift_arrayDestroy();

    a3 = v164;
    v5 = v156;
  }

  else
  {

    sub_10000BD44(v17, &qword_1003A0178, &unk_1002C3BB0);
    v153 = *(v19 + 8);
    v153(v26, v18);
  }

  sub_10000CCE4((v5 + 13), v184);
  v48 = sub_10000BE18(v184, v184[3]);
  v49 = _s14InstallPackageVMa(0);
  v50 = *(v49 + 36);
  v51 = sub_100055298();
  v53 = v52;
  *&v165 = v49;
  v54 = (a3 + *(v49 + 48));
  v55 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  if (*v54 != 1)
  {
    v57 = v54[1];
    v56 = *v54 ? *v54 : _swiftEmptyArrayStorage;

    if (v57)
    {

      v55 = v57;
    }
  }

  v58 = sub_100055298();
  v60 = v59;
  v152 = *(v165 + 40);
  v61 = sub_100055298();
  *&v177 = v51;
  *(&v177 + 1) = v53;
  *&v178 = v56;
  *(&v178 + 1) = v55;
  v179 = 0;
  v180 = 0;
  *&v181 = 0;
  *(&v181 + 1) = v58;
  *&v182 = v60;
  *(&v182 + 1) = v61;
  v183 = v62;
  v192 = v62;
  v189 = 0u;
  v190 = v181;
  v191 = v182;
  v187 = v177;
  v188 = v178;
  v63 = *v48;
  v64 = sub_10003DDC0(v157, &v187);
  v66 = v65;
  sub_100041D1C(&v177);
  if (v66)
  {
    sub_10000959C(v184);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v158;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v185[0] = v72;
      *v71 = 136315138;

      v73 = v64;
      v74 = sub_100008F6C(v64, v66, v185);

      *(v71 + 4) = v74;
      v64 = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "evict %s", v71, 0xCu);
      sub_10000959C(v72);
    }

    v75 = v164;
    v76 = v161;

    v77 = sub_10004D4B0(0, 1, 1, _swiftEmptyArrayStorage);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    if (v79 >= v78 >> 1)
    {
      v77 = sub_10004D4B0((v78 > 1), v79 + 1, 1, v77);
    }

    *(v77 + 2) = v79 + 1;
    v80 = &v77[16 * v79];
    *(v80 + 4) = v64;
    *(v80 + 5) = v66;

    v81 = v159;
  }

  else
  {
    sub_10000959C(v184);
    v77 = _swiftEmptyArrayStorage;
    v75 = v164;
    v76 = v161;
    v70 = v158;
    v81 = v159;
  }

  v82 = v75;
  sub_100065074(v75 + *(v165 + 44), v81, &qword_1003A0178, &unk_1002C3BB0);
  v83 = *(v70 + 48);
  v84 = v70;
  v85 = v162;
  v86 = v83(v81, 1, v162);
  v87 = v160;
  if (v86 == 1)
  {
    v88 = sub_10000BD44(v81, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
    v89 = v81;
    v90 = *(v84 + 32);
    v90(v76, v89, v85);
    sub_100065074(v163, v87, &qword_1003A0178, &unk_1002C3BB0);
    if (v83(v87, 1, v85) == 1)
    {
      v153(v76, v85);
      v88 = sub_10000BD44(v87, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
      v90(v155, v87, v85);
      sub_10000CCE4((v156 + 13), v176);
      v163 = sub_10000BE18(v176, v176[3]);
      v91 = sub_100055298();
      v93 = v92;
      v94 = (v82 + *(v165 + 52));
      v95 = _swiftEmptyArrayStorage;
      v96 = _swiftEmptyArrayStorage;
      if (*v94 != 1)
      {
        v97 = v94[1];
        v96 = *v94 ? *v94 : _swiftEmptyArrayStorage;

        if (v97)
        {

          v95 = v97;
        }
      }

      v98 = sub_100055298();
      v100 = v99;
      v101 = sub_100055298();
      *&v169 = v91;
      *(&v169 + 1) = v93;
      *&v170 = v96;
      *(&v170 + 1) = v95;
      v171 = 0;
      v172 = 0;
      *&v173 = 0;
      *(&v173 + 1) = v98;
      *&v174 = v100;
      *(&v174 + 1) = v101;
      v175 = v102;
      v186 = v102;
      v185[2] = 0u;
      v185[3] = v173;
      v185[4] = v174;
      v185[0] = v169;
      v185[1] = v170;
      v103 = *v163;
      v104 = v155;
      v105 = sub_10003DDC0(v155, v185);
      v107 = v106;
      v109 = v108;
      sub_100041D1C(&v169);
      if (v107)
      {
        sub_10000959C(v176);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v168 = v113;
          *v112 = 136315138;

          v114 = sub_100008F6C(v105, v107, &v168);

          *(v112 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v110, v111, "evict %s", v112, 0xCu);
          sub_10000959C(v113);

          v104 = v155;
        }

        v82 = v164;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v162;
        *&v165 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_10004D4B0(0, *(v77 + 2) + 1, 1, v77);
        }

        v118 = *(v77 + 2);
        v117 = *(v77 + 3);
        if (v118 >= v117 >> 1)
        {
          v77 = sub_10004D4B0((v117 > 1), v118 + 1, 1, v77);
        }

        v119 = v104;
        v120 = v153;
        v153(v119, v116);
        v120(v161, v116);
        *(v77 + 2) = v118 + 1;
        v121 = &v77[16 * v118];
        *(v121 + 4) = v105;
        *(v121 + 5) = v107;
      }

      else
      {
        v122 = v153;
        v123 = v162;
        v153(v104, v162);
        v122(v76, v123);
        v88 = sub_10000959C(v176);
        v82 = v164;
      }
    }
  }

  __chkstk_darwin(v88);
  *(&v149 - 2) = v82;

  v124 = sub_100065514(sub_10008298C, (&v149 - 4), v77);

  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v169 = v128;
    *v127 = 136315138;

    v129 = Array.description.getter();
    v131 = v130;

    v132 = sub_100008F6C(v129, v131, &v169);

    *(v127 + 4) = v132;
    _os_log_impl(&_mh_execute_header, v125, v126, "Delete these profiles from applet slots: %s", v127, 0xCu);
    sub_10000959C(v128);
  }

  v133 = *(v124 + 16);
  if (v133)
  {

    v164 = v124;
    v134 = (v124 + 40);
    *&v135 = 136315138;
    v165 = v135;
    while (1)
    {
      v137 = *(v134 - 1);
      v136 = *v134;

      v138 = sub_10007FB64();

      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();

      v141 = os_log_type_enabled(v139, v140);
      if (v138)
      {
        if (v141)
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *&v169 = v143;
          *v142 = v165;
          v144 = sub_100008F6C(v137, v136, &v169);

          *(v142 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v139, v140, "profile deleted: %s", v142, 0xCu);
          sub_10000959C(v143);

LABEL_52:

          goto LABEL_46;
        }
      }

      else if (v141)
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&v169 = v146;
        *v145 = v165;
        v147 = sub_100008F6C(v137, v136, &v169);

        *(v145 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v139, v140, "failed to delete profile: %s", v145, 0xCu);
        sub_10000959C(v146);

        goto LABEL_52;
      }

LABEL_46:

      v134 += 2;
      if (!--v133)
      {
      }
    }
  }
}

void sub_10007D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v219 = type metadata accessor for OSSignpostError();
  v9 = *(v219 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v219);
  v203 = &v195[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v202 = &v195[-v14];
  v15 = __chkstk_darwin(v13);
  v201 = &v195[-v16];
  v17 = __chkstk_darwin(v15);
  v200 = &v195[-v18];
  __chkstk_darwin(v17);
  v199 = &v195[-v19];
  v226 = type metadata accessor for OSSignpostID();
  v20 = *(v226 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v226);
  v208 = &v195[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v207 = &v195[-v25];
  v26 = __chkstk_darwin(v24);
  v206 = &v195[-v27];
  v28 = __chkstk_darwin(v26);
  v205 = &v195[-v29];
  v30 = __chkstk_darwin(v28);
  v204 = &v195[-v31];
  v32 = __chkstk_darwin(v30);
  v215 = &v195[-v33];
  v34 = __chkstk_darwin(v32);
  v214 = &v195[-v35];
  v36 = __chkstk_darwin(v34);
  v213 = &v195[-v37];
  v38 = __chkstk_darwin(v36);
  v212 = &v195[-v39];
  v40 = __chkstk_darwin(v38);
  v223 = &v195[-v41];
  __chkstk_darwin(v40);
  v211 = &v195[-v42];
  v222 = type metadata accessor for SLAMScript(0);
  v43 = *(v222 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v222);
  v230 = &v195[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = v3[82];
  v217 = v3;
  v3[82] = a2;
  v227 = a2;

  v48 = *(a1 + 16);
  if (!v48)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_93:
    v139 = v217;
    if (*(v224 + 2))
    {
      v140 = v217[38];
      sub_1000245C8(v224);
    }

    v141 = v139[82];
    v139[82] = 0;

    return;
  }

  v197 = a3;
  v49 = a1 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v221 = (v20 + 16);
  v225 = (v20 + 8);
  v210 = (v9 + 88);
  v209 = enum case for OSSignpostError.doubleEnd(_:);
  v198 = (v9 + 8);
  v220 = *(v43 + 72);
  *&v47 = 138412290;
  v216 = v47;
  v224 = _swiftEmptyArrayStorage;
  v50 = v5;
  while (1)
  {
    *&v228 = v48;
    v51 = v230;
    sub_10008289C(v49, v230, type metadata accessor for SLAMScript);
    v52 = v51[*(v222 + 32)];
    if (v52 <= 1)
    {
      if (v51[*(v222 + 32)])
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v53 = v50;
        v70 = type metadata accessor for OSSignposter();
        sub_10000403C(v70, qword_1003A0290);
        v55 = v212;
        static OSSignpostID.exclusive.getter();
        v56 = OSSignposter.logHandle.getter();
        v71 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = OSSignpostID.rawValue.getter();
          v60 = v71;
          v61 = v56;
          v62 = "config-install-cleanupSLAM";
          v63 = "begin cleanup SLAM";
          goto LABEL_30;
        }
      }

      else
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v53 = v50;
        v64 = type metadata accessor for OSSignposter();
        sub_10000403C(v64, qword_1003A0290);
        v55 = v211;
        static OSSignpostID.exclusive.getter();
        v56 = OSSignposter.logHandle.getter();
        v65 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = OSSignpostID.rawValue.getter();
          v60 = v65;
          v61 = v56;
          v62 = "config-install-kernel";
          v63 = "begin install kernel SLAM";
          goto LABEL_30;
        }
      }
    }

    else if (v52 == 2)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v53 = v50;
      v66 = type metadata accessor for OSSignposter();
      sub_10000403C(v66, qword_1003A0290);
      v55 = v213;
      static OSSignpostID.exclusive.getter();
      v56 = OSSignposter.logHandle.getter();
      v67 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = OSSignpostID.rawValue.getter();
        v60 = v67;
        v61 = v56;
        v62 = "config-install-global";
        v63 = "begin global config SLAM";
        goto LABEL_30;
      }
    }

    else if (v52 == 3)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v53 = v50;
      v54 = type metadata accessor for OSSignposter();
      sub_10000403C(v54, qword_1003A0290);
      v55 = v214;
      static OSSignpostID.exclusive.getter();
      v56 = OSSignposter.logHandle.getter();
      v57 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = OSSignpostID.rawValue.getter();
        v60 = v57;
        v61 = v56;
        v62 = "config-install-profile";
        v63 = "begin partner online profile SLAM";
LABEL_30:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v60, v59, v62, v63, v58, 2u);
      }
    }

    else
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v53 = v50;
      v68 = type metadata accessor for OSSignposter();
      sub_10000403C(v68, qword_1003A0290);
      v55 = v215;
      static OSSignpostID.exclusive.getter();
      v56 = OSSignposter.logHandle.getter();
      v69 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = OSSignpostID.rawValue.getter();
        v60 = v69;
        v61 = v56;
        v62 = "config-install-profile";
        v63 = "begin partner saf profile SLAM";
        goto LABEL_30;
      }
    }

    v72 = v226;
    (*v221)(v223, v55, v226);
    v73 = type metadata accessor for OSSignpostIntervalState();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v229 = OSSignpostIntervalState.init(id:isOpen:)();
    v76 = *v225;
    (*v225)(v55, v72);
    sub_10008E6AC(v230);
    v50 = v53;
    if (v53)
    {
      break;
    }

    if (v52 <= 1)
    {
      if (v52)
      {
        if (qword_10039D388 != -1)
        {
          swift_once();
        }

        v129 = type metadata accessor for OSSignposter();
        sub_10000403C(v129, qword_1003A0290);
        v130 = OSSignposter.logHandle.getter();
        v131 = v205;
        OSSignpostIntervalState.signpostID.getter();
        v132 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v218 = 0;

          v133 = v200;
          checkForErrorAndConsumeState(state:)();

          v134 = (*v210)(v133, v219);
          v135 = "[Error] Interval already ended";
          if (v134 != v209)
          {
            (*v198)(v200, v219);
            v135 = "end cleanup SLAM";
          }

          v136 = swift_slowAlloc();
          *v136 = 0;
          v137 = v205;
          v138 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v130, v132, v138, "config-install-cleanupSLAM", v135, v136, 2u);

          v76(v137, v226);
          sub_100082008(v230, type metadata accessor for SLAMScript);
          v50 = v218;
        }

        else
        {

          v76(v131, v226);
          sub_100082008(v230, type metadata accessor for SLAMScript);
        }

        goto LABEL_5;
      }

      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for OSSignposter();
      sub_10000403C(v95, qword_1003A0290);
      v96 = OSSignposter.logHandle.getter();
      v97 = v204;
      OSSignpostIntervalState.signpostID.getter();
      v98 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v218 = 0;

        v99 = v199;
        checkForErrorAndConsumeState(state:)();

        v100 = (*v210)(v99, v219);
        v101 = "[Error] Interval already ended";
        if (v100 != v209)
        {
          (*v198)(v199, v219);
          v101 = "end install kernel SLAM";
        }

        v102 = swift_slowAlloc();
        *v102 = 0;
        v103 = v204;
        v104 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, v98, v104, "config-install-kernel", v101, v102, 2u);

        v50 = v218;
        v97 = v103;
      }

      v76(v97, v226);
      v105 = v224;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_10004DDB8(0, *(v105 + 2) + 1, 1, v105);
      }

      v107 = *(v105 + 2);
      v106 = *(v105 + 3);
      if (v107 >= v106 >> 1)
      {
        v105 = sub_10004DDB8((v106 > 1), v107 + 1, 1, v105);
      }

      sub_100082008(v230, type metadata accessor for SLAMScript);
      *(v105 + 2) = v107 + 1;
      v224 = v105;
      v108 = &v105[v107];
      v109 = 20;
      goto LABEL_84;
    }

    if (v52 == 2)
    {
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for OSSignposter();
      sub_10000403C(v110, qword_1003A0290);
      v111 = OSSignposter.logHandle.getter();
      v112 = v206;
      OSSignpostIntervalState.signpostID.getter();
      v113 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v218 = 0;

        v114 = v201;
        checkForErrorAndConsumeState(state:)();

        v115 = (*v210)(v114, v219);
        v116 = "[Error] Interval already ended";
        if (v115 != v209)
        {
          (*v198)(v201, v219);
          v116 = "end global config SLAM";
        }

        v117 = swift_slowAlloc();
        *v117 = 0;
        v118 = v206;
        v119 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, v113, v119, "config-install-global", v116, v117, 2u);

        v50 = v218;
        v112 = v118;
      }

      v76(v112, v226);
      v120 = v224;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_10004DDB8(0, *(v120 + 2) + 1, 1, v120);
      }

      v122 = *(v120 + 2);
      v121 = *(v120 + 3);
      if (v122 >= v121 >> 1)
      {
        v120 = sub_10004DDB8((v121 > 1), v122 + 1, 1, v120);
      }

      sub_100082008(v230, type metadata accessor for SLAMScript);
      *(v120 + 2) = v122 + 1;
      v224 = v120;
      v108 = &v120[v122];
      v109 = 21;
      goto LABEL_84;
    }

    if (v52 == 3)
    {
      v86 = v224;
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for OSSignposter();
      sub_10000403C(v87, qword_1003A0290);
      v88 = OSSignposter.logHandle.getter();
      v89 = v207;
      OSSignpostIntervalState.signpostID.getter();
      v196 = static os_signpost_type_t.end.getter();
      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        goto LABEL_79;
      }

      v90 = v202;
      checkForErrorAndConsumeState(state:)();

      v91 = (*v210)(v90, v219);
      v92 = "[Error] Interval already ended";
      if (v91 != v209)
      {
        (*v198)(v202, v219);
        v92 = "end partner online profile SLAM";
      }

      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = v207;
    }

    else
    {
      v86 = v224;
      v89 = v208;
      if (qword_10039D388 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for OSSignposter();
      sub_10000403C(v123, qword_1003A0290);
      v88 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v196 = static os_signpost_type_t.end.getter();
      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        goto LABEL_79;
      }

      v124 = v203;
      checkForErrorAndConsumeState(state:)();

      v125 = (*v210)(v124, v219);
      v92 = "[Error] Interval already ended";
      if (v125 != v209)
      {
        (*v198)(v203, v219);
        v92 = "end partner saf profile SLAM";
      }

      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = v208;
    }

    v126 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, v196, v126, "config-install-profile", v92, v93, 2u);

    v50 = 0;
    v89 = v94;
    v86 = v224;
LABEL_79:

    v76(v89, v226);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_10004DDB8(0, *(v86 + 2) + 1, 1, v86);
    }

    v128 = *(v86 + 2);
    v127 = *(v86 + 3);
    if (v128 >= v127 >> 1)
    {
      v86 = sub_10004DDB8((v127 > 1), v128 + 1, 1, v86);
    }

    sub_100082008(v230, type metadata accessor for SLAMScript);
    *(v86 + 2) = v128 + 1;
    v224 = v86;
    v108 = &v86[v128];
    v109 = 22;
LABEL_84:
    v108[32] = v109;
LABEL_5:
    v49 += v220;
    v48 = v228 - 1;
    if (v228 == 1)
    {
      goto LABEL_93;
    }
  }

  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_10000403C(v77, qword_1003A0278);
  swift_errorRetain();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = v216;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v82;
    *v81 = v82;
    _os_log_impl(&_mh_execute_header, v78, v79, "error when install: %@", v80, 0xCu);
    sub_10000BD44(v81, &unk_10039E220, &qword_1002C3D60);
    v50 = v53;
  }

  if (*(v227 + 96))
  {
    sub_100020148(2040, 0, 0, 0);
    swift_willThrow();

    sub_100082008(v230, type metadata accessor for SLAMScript);
    if (*(v224 + 2))
    {
      v192 = v217;
      v194 = v217[38];
      sub_1000245C8(v224);
      goto LABEL_118;
    }

LABEL_117:
    v192 = v217;
LABEL_118:
    v193 = v192[82];
    v192[82] = 0;

    return;
  }

  if (v52 == 1)
  {
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "failed to execute cleanup script", v85, 2u);
    }

    else
    {
    }

    sub_100082008(v230, type metadata accessor for SLAMScript);
    v50 = 0;
    goto LABEL_5;
  }

  v142 = v224;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v142 = sub_10004DDB8(0, *(v142 + 2) + 1, 1, v142);
  }

  v144 = *(v142 + 2);
  v143 = *(v142 + 3);
  if (v144 >= v143 >> 1)
  {
    v142 = sub_10004DDB8((v143 > 1), v144 + 1, 1, v142);
  }

  *(v142 + 2) = v144 + 1;
  v142[v144 + 32] = 23;
  v145 = v227;
  swift_beginAccess();
  v146 = *(v145 + 88);
  v147 = *(v146 + 16);
  v218 = v50;
  v224 = v142;
  if (!v147)
  {

    v148 = _swiftEmptyArrayStorage;
    goto LABEL_104;
  }

  v148 = sub_100080124(v147, 0);
  *&v228 = sub_100080AB4(&v232, (v148 + 32), v147, v146);
  swift_bridgeObjectRetain_n();
  sub_100041CDC();
  if (v228 == v147)
  {
    v50 = v218;
LABEL_104:
    v232 = v148;
    sub_1000801A8(&v232);
    v227 = 0;

    v149 = v232;
    v150 = *(v232 + 16);
    if (v150 >= 0x40)
    {
      v151 = 64;
    }

    else
    {
      v151 = *(v232 + 16);
    }

    if (v150)
    {
      v234 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v151, 0);
      v152 = v234;
      v226 = v149;
      v153 = (v149 + 40);
      v228 = xmmword_1002C1660;
      do
      {
        v154 = *(v153 - 1);
        v155 = *v153;
        sub_100004074(&qword_10039E268, &unk_1002C16F0);
        v156 = swift_allocObject();
        *(v156 + 16) = v228;
        *(v156 + 56) = &type metadata for UInt16;
        *(v156 + 64) = &protocol witness table for UInt16;
        *(v156 + 32) = v155;
        v157 = String.init(format:_:)();
        v159 = v158;
        v231 = v154;
        v232 = 10272;
        v233 = 0xE200000000000000;
        v160._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v160);

        v161._countAndFlagsBits = 41;
        v161._object = 0xE100000000000000;
        String.append(_:)(v161);
        v162 = v232;
        v163 = v233;
        v232 = v157;
        v233 = v159;

        v164._countAndFlagsBits = v162;
        v164._object = v163;
        String.append(_:)(v164);

        v165 = v232;
        v166 = v233;
        v234 = v152;
        v168 = v152[2];
        v167 = v152[3];
        if (v168 >= v167 >> 1)
        {
          sub_10004E2DC((v167 > 1), v168 + 1, 1);
          v152 = v234;
        }

        v153 += 8;
        v152[2] = v168 + 1;
        v169 = &v152[2 * v168];
        v169[4] = v165;
        v169[5] = v166;
        --v151;
      }

      while (v151);

      v50 = v218;
    }

    else
    {

      v152 = _swiftEmptyArrayStorage;
    }

    v232 = v152;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v170 = BidirectionalCollection<>.joined(separator:)();
    v172 = v171;

    v232 = 0;
    v233 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v173._countAndFlagsBits = 0x203A726F727245;
    v173._object = 0xE700000000000000;
    String.append(_:)(v173);
    v234 = v50;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v174._object = 0x8000000100348B90;
    v174._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v174);
    v175._countAndFlagsBits = v170;
    v175._object = v172;
    String.append(_:)(v175);

    v177 = v232;
    v176 = v233;
    v178 = v217;
    v179 = v217[36];
    *&v228 = v217[37];
    v226 = sub_10000BE18(v217 + 33, v179);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1684632949;
    *(inited + 40) = 0xE400000000000000;
    v181 = UUID.uuidString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v181;
    *(inited + 56) = v182;
    *(inited + 88) = 0x726F727265;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v177;
    *(inited + 112) = v176;

    v183 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x1Fu, v183, v179, v228);

    v184 = v178[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v185 = swift_initStackObject();
    *(v185 + 16) = xmmword_1002C1660;
    *(v185 + 32) = 5;
    v186 = v185 + 32;
    *(v185 + 64) = &type metadata for String;
    *(v185 + 40) = v177;
    *(v185 + 48) = v176;
    v187 = sub_100184144(v185);
    swift_setDeallocating();
    v188 = sub_10000BD44(v186, &qword_10039FED8, &unk_1002C37D0);
    v189 = *(v184 + 56);
    __chkstk_darwin(v188);
    *&v195[-16] = v187;
    os_unfair_lock_lock((v189 + 32));
    v190 = v227;
    sub_10006535C((v189 + 16));
    v191 = (v189 + 32);
    if (!v190)
    {
      os_unfair_lock_unlock(v191);

      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();

      sub_100082008(v230, type metadata accessor for SLAMScript);
      if (*(v224 + 2))
      {
        sub_1000245C8(v224);
      }

      goto LABEL_117;
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  os_unfair_lock_unlock(v191);
  __break(1u);
}

uint64_t sub_10007F230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(_s14InstallPackageVMa(0) + 40);

  result = sub_100055298();
  *a2 = v4;
  a2[1] = v3;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

void sub_10007F294(uint64_t a1)
{
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A0278);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "No Delegate. Install Progress: %ld", v4, 0xCu);
  }
}

uint64_t sub_10007F394()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A0290);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end clean up after install";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "config-install-postProcessing", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10007F620(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = _s14InstallPackageVMa(0);
  v18 = a2 + v17[9];
  v20 = v15 == sub_100055298() && v16 == v19;
  v42 = v15;
  if (v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_100065074(a2 + v17[7], v14, &qword_1003A03F0, &qword_1002C3D88);
  v22 = type metadata accessor for SLAMScript(0);
  v23 = (*(*(v22 - 8) + 48))(v14, 1, v22);
  sub_10000BD44(v14, &qword_1003A03F0, &qword_1002C3D88);
  if (v23 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_1003A0278);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_29;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315138;
    v29 = v42;
    goto LABEL_28;
  }

LABEL_13:
  sub_100065074(a2 + v17[11], v7, &qword_1003A0178, &unk_1002C3BB0);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v7, 1, v30) == 1)
  {
    sub_10000BD44(v7, &qword_1003A0178, &unk_1002C3BB0);
    return 1;
  }

  v33 = sub_100055298();
  v35 = v34;
  (*(v31 + 8))(v7, v30);
  v36 = v42;
  if (v42 == v33 && v16 == v35)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      return 1;
    }
  }

  sub_100065074(a2 + v17[8], v12, &qword_1003A03F0, &qword_1002C3D88);
  v39 = type metadata accessor for SLAMScript(0);
  v40 = (*(*(v39 - 8) + 48))(v12, 1, v39);
  sub_10000BD44(v12, &qword_1003A03F0, &qword_1002C3D88);
  result = 1;
  if (v40 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A0278);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_29;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315138;
    v29 = v36;
LABEL_28:
    *(v27 + 4) = sub_100008F6C(v29, v16, &v43);
    _os_log_impl(&_mh_execute_header, v25, v26, "skip eviction %s", v27, 0xCu);
    sub_10000959C(v28);

LABEL_29:

    return 0;
  }

  return result;
}

uint64_t sub_10007FB64()
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1210);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v3 = 136315394;
    sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, v47);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000012, 0x8000000100348C60, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, v47);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  result = Data.init(hexString:)();
  if (v11 >> 60 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "unexpected error: failed to convert profile hex string", v14, 2u);
    }

LABEL_24:

    return 0;
  }

  v15 = result;
  v16 = v11;
  v17 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_18;
    }

    v20 = *(result + 16);
    v19 = *(result + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    v18 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

LABEL_16:
    sub_1000094F4(result, v11);
    goto LABEL_18;
  }

  if (v17)
  {
    goto LABEL_15;
  }

  v18 = BYTE6(v11);
LABEL_18:
  v42 = 110976;
  v43 = v18;
  v44 = v15;
  v45 = v16;
  v46 = 0;
  sub_10000BC94(&v42, v47);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v42);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v23 = 136315138;
    v24 = v15;
    v25 = sub_100170CB0(v42 | (v43 << 32), v44, v45, v46);
    v27 = v26;
    v28 = Data.hexString()();
    v29 = v25;
    v15 = v24;
    sub_100009548(v29, v27);
    v30 = sub_100008F6C(v28._countAndFlagsBits, v28._object, v47);

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "C-APDU (delete profile): %s", v23, 0xCu);
    sub_10000959C(v40);
  }

  sub_10009FAC0(v42 | (v43 << 32), v44, v45, v46, 0, v47);
  v31 = v47[1];
  v32 = v48;
  v12 = Logger.logObject.getter();
  if (v31 >> 60 == 15)
  {
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v12, v33, "failed to delete", v34, 2u);
    }

    sub_10001A074(v15, v16);
    sub_10000BCF0(&v42);
    goto LABEL_24;
  }

  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v36 = 136315138;
    v38 = Data.hexString()();
    v39 = sub_100008F6C(v38._countAndFlagsBits, v38._object, &v41);

    *(v36 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v12, v35, "R-APDU: %s", v36, 0xCu);
    sub_10000959C(v37);
  }

  sub_10000BCF0(&v42);
  sub_10001A074(v15, v16);

  sub_10000BD44(v47, &qword_10039E2C0, &unk_1002BFEB0);
  return v32 == 36864;
}

void *sub_100080124(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004074(&qword_10039FEB8, &qword_1002C3DC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int sub_1000801A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100081040(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 2);
          if (*v12 < v13)
          {
            break;
          }

          v14 = *(v12 + 12);
          *(v12 + 1) = *v12;
          *v12 = v13;
          *(v12 + 4) = v14;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100004074(&qword_1003A0418, &unk_1002C3DB0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_100080300(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100080300(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_100080AA0(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1000808A4((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *(v14 - 2) < *v14;
        ++v16;
        v14 += 2;
        if ((((v13 >= v10) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 < v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 < v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 16 * v7 - 16;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v18);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            if (v11 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v11 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004DCB4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_10004DCB4((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1000808A4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7 - 16;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 16);
    if (*v31 < v32)
    {
LABEL_32:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v32;
    *(v31 + 8) = v33;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1000808A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 16;
    v5 -= 16;
    v20 = v15;
    do
    {
      v21 = v5 + 16;
      v22 = *(v20 - 2);
      v20 -= 16;
      if (*v19 >= v22)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

void *sub_100080AB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + 8 * v14);
      LOWORD(v14) = *(*(a4 + 56) + 2 * v14);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_100080BB8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LaunchFeedbackFramework();
  v48 = &off_1003823C0;
  *&v46 = a3;
  *(a4 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask) = 0;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A0278);
  v15 = *(v10 + 16);
  v15(v13, a1, v9);
  sub_10000CCE4(a2, v44);
  sub_10000CCE4(&v46, v42);
  v16 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v40))
  {
    v17 = swift_slowAlloc();
    v38 = a1;
    v18 = v17;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v41);
    v39 = a2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v36 = "partnerSAFProfile";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002C1790;
    *(v23 + 56) = v9;
    v24 = sub_10000BE5C((v23 + 32));
    v15(v24, v13, v9);
    v25 = v45;
    v26 = sub_10000BE18(v44, v45);
    *(v23 + 88) = v25;
    v27 = sub_10000BE5C((v23 + 64));
    (*(*(v25 - 8) + 16))(v27, v26, v25);
    v28 = v43;
    v29 = sub_10000BE18(v42, v43);
    *(v23 + 120) = v28;
    v30 = sub_10000BE5C((v23 + 96));
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    v31 = showFunction(signature:_:)(0xD00000000000002ALL, v36 | 0x8000000000000000, v23);
    v33 = v32;

    (*(v10 + 8))(v13, v9);
    sub_10000959C(v44);
    sub_10000959C(v42);
    v34 = sub_100008F6C(v31, v33, &v41);

    *(v18 + 14) = v34;
    a2 = v39;
    _os_log_impl(&_mh_execute_header, v16, v40, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v38;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    sub_10000959C(v44);
    sub_10000959C(v42);
  }

  (*(v10 + 32))(a4 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_configuratorUrl, a1, v9);
  sub_100029790(a2, a4 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel);
  sub_100029790(&v46, a4 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework);
  return a4;
}

double sub_100081054(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100081084(uint64_t *a1)
{
  v3 = sub_100004074(&qword_1003A0548, &qword_1002C3EC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100083270();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v10[15] = 1;
    sub_1000430C8(&qword_10039FBE8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000959C(a1);
  return v8;
}

uint64_t *sub_1000812AC(uint64_t *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_1000E3850(v35);
  if (v1)
  {
  }

  else
  {
    sub_1000EBD84(v34);
    sub_1000EAA58(v33);
    v10 = sub_10000BE18(v35, v35[3]);
    (*(v4 + 16))(v7, *v10 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v3);
    v11 = *sub_10000BE18(v34, v34[3]);
    sub_100139568(v32);
    sub_10000CCE4(v33, v30);
    v12 = v31;
    v13 = sub_100022438(v30, v31);
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v19 = type metadata accessor for LaunchFeedbackFramework();
    v29[4] = &off_1003823C0;
    v29[3] = v19;
    v29[0] = v18;
    v20 = type metadata accessor for ConfiguratorBackend(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    v24 = sub_100022438(v29, v19);
    v25 = *(*(v19 - 8) + 64);
    __chkstk_darwin(v24);
    v27 = (v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v8 = sub_100080BB8(v7, v32, *v27, v23);

    sub_10000959C(v33);
    sub_10000959C(v29);
    sub_10000959C(v30);
    sub_10000959C(v34);
    sub_10000959C(v35);
  }

  return v8;
}

uint64_t sub_100081614(void *a1)
{
  if ((related decl 'e' for SPRHTTPErrorCode.isServerError.getter() & 1) == 0)
  {
    v3 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      if (v3 == 0x303030342D53434BLL && v4 == 0xE800000000000000)
      {
        goto LABEL_6;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v5 == 0x373030342D53434BLL && v6 == 0xE800000000000000;
      v9 = v8;
      if (v7 & 1) != 0 || v9 || ((v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x383030342D53434BLL) ? (v11 = v6 == 0xE800000000000000) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10 & 1) != 0 || (v12 & 1) != 0 || ((v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x393030342D53434BLL) ? (v14 = v6 == 0xE800000000000000) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), (v13 & 1) != 0 || (v15 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
      {
LABEL_6:

        v2 = 2016;
        goto LABEL_110;
      }

      if (v5 == 0x313030342D53434BLL && v6 == 0xE800000000000000 || ((v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x323030342D53434BLL) ? (v17 = v6 == 0xE800000000000000) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), (v16 & 1) != 0 || (v18 & 1) != 0 || ((v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x333030342D53434BLL) ? (v20 = v6 == 0xE800000000000000) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v19 & 1) != 0 || (v21 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
      {

        v2 = 2015;
        goto LABEL_110;
      }

      if (v5 == 0x343030342D53434BLL && v6 == 0xE800000000000000)
      {
        goto LABEL_54;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = v5 == 0x353030342D53434BLL && v6 == 0xE800000000000000;
      v24 = v23;
      if ((v22 & 1) != 0 || v24)
      {
        goto LABEL_54;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26 = v5 == 0x363030342D53434BLL && v6 == 0xE800000000000000;
      v27 = v26;
      if ((v25 & 1) != 0 || v27)
      {
        goto LABEL_54;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v29 = v5 == 0x323130342D53434BLL && v6 == 0xE800000000000000;
      v30 = v29;
      if ((v28 & 1) != 0 || v30)
      {
        goto LABEL_54;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v32 = v5 == 0x393130342D53434BLL && v6 == 0xE800000000000000;
      v33 = v32;
      if (v31 & 1) != 0 || v33 || ((v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x303430342D53434BLL) ? (v35 = v6 == 0xE800000000000000) : (v35 = 0), !v35 ? (v36 = 0) : (v36 = 1), (v34 & 1) != 0 || (v36 & 1) != 0 || ((v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 == 0x363430342D53434BLL) ? (v38 = v6 == 0xE800000000000000) : (v38 = 0), !v38 ? (v39 = 0) : (v39 = 1), (v37 & 1) != 0 || (v39 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
      {
LABEL_54:

        v2 = 2011;
        goto LABEL_110;
      }

      if (v5 == 0x353430342D53434BLL && v6 == 0xE800000000000000)
      {

        v2 = 2031;
        goto LABEL_110;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        v2 = 2031;
        goto LABEL_110;
      }
    }

    v2 = 2000;
    goto LABEL_110;
  }

  v2 = 2016;
LABEL_110:
  v41 = a1;
  v42 = sub_100020148(v2, 0, 0, a1);

  return v42;
}

uint64_t sub_100081B2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100081B74()
{
  result = qword_1003A03D8;
  if (!qword_1003A03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A03D8);
  }

  return result;
}

uint64_t sub_100081BD8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100081C10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100081C78(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100081C90()
{
  v1 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 2);

  v10 = *(v0 + 3);

  v11 = *(v0 + 5);

  v12 = (*(v6 + 48))(&v0[v3], 1, v5);
  v13 = *(v6 + 8);
  if (!v12)
  {
    v13(&v0[v3], v5);
  }

  v14 = (v3 + v4 + v7) & ~v7;
  v15 = (v8 + v14 + 9) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13(&v0[v14], v5);
  v18 = *&v0[v15 + 8];

  v19 = *&v0[v16 + 8];

  v20 = *&v0[v17];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v17 + 8, v2 | v7 | 7);
}

void sub_100081E50(void *a1, uint64_t a2)
{
  v5 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = (v10 + 9) & 0xFFFFFFFFFFFFFFF8;
  sub_1000696E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), (v2 + v9), *(v2 + v10), *(v2 + v10 + 1), *(v2 + v11), *(v2 + v11 + 8), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100081FD0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100082008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100082068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = a1 + 32;
LABEL_3:
  v4 = (v3 + 16 * v2);
  v6 = *v4;
  v5 = v4[1];

  if ((String.count.getter() - 33) < 0xFFFFFFFFFFFFFFE0)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A0278);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v19 = sub_100008F6C(v6, v5, v20);

      *(v14 + 4) = v19;
      v17 = "incorrect length %s";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v12, v13, v17, v14, 0xCu);
      sub_10000959C(v15);

      goto LABEL_22;
    }
  }

  else
  {
    ++v2;
    v7 = HIBYTE(v5) & 0xF;
    v20[0] = v6;
    v20[1] = v5;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v20[2] = 0;
    v20[3] = v7;

    do
    {
      if (!String.Iterator.next()().value._object)
      {

        if (v2 != v1)
        {
          goto LABEL_3;
        }

        return 1;
      }

      Character.hexDigitValue.getter();
      v9 = v8;
    }

    while ((v9 & 1) == 0);

    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A0278);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = sub_100008F6C(v6, v5, v20);

      *(v14 + 4) = v16;
      v17 = "%s contains non-hex digit";
      goto LABEL_16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_100082354(uint64_t *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A0278);
  sub_100065074(a1, &v20, &qword_1003A0428, &qword_1002C3DD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10000BD44(a1, &qword_1003A0428, &qword_1002C3DD0);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    if (*a1 == 1)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v20 = *a1;
      v11 = *(v3 + 1);
      v21 = *v3;
      v22 = v11;
      v23 = *(v3 + 32);
      v10 = sub_1000835EC();
      v9 = v12;
    }

    v13 = sub_100008F6C(v10, v9, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  result = *a1;
  if (!*a1)
  {
    goto LABEL_12;
  }

  if (result == 1)
  {
    return result;
  }

  if ((sub_100082068(result) & 1) == 0)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "bypassAid is invalid";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }
  }

  else
  {
LABEL_12:
    if (!v2 || (sub_100082068(v2) & 1) != 0)
    {
      return 1;
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "supportCnpTrx is invalid";
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_100082610(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || (result - 4321) <= 0xFFFFFFFFFFFFEF36)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A0278);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315394;
      if (a2)
      {
        v8 = 0xE400000000000000;
        v9 = 1819047278;
      }

      else
      {
        sub_100082B20();
        v9 = BinaryInteger.description.getter();
        v8 = v10;
      }

      v11 = sub_100008F6C(v9, v8, &v12);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 336;
      _os_log_impl(&_mh_execute_header, v4, v5, "safDuration value is invalid or missing: %s. Using the default value: %ld instead.", v6, 0x16u);
      sub_10000959C(v7);
    }

    return 336;
  }

  return result;
}

id sub_1000827B8(double a1)
{
  v2 = [objc_opt_self() sharedHardwareManager];
  v7 = 0;
  v3 = [v2 startSecureElementManagerSessionWithTimeout:&v7 error:a1];

  v4 = v7;
  if (!v3)
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

uint64_t sub_10008289C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100082904()
{
  result = qword_1003A0400;
  if (!qword_1003A0400)
  {
    sub_10000411C(255, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0400);
  }

  return result;
}

uint64_t sub_1000829AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100082A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100082A7C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100082AD0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100082B20()
{
  result = qword_1003A0450;
  if (!qword_1003A0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0450);
  }

  return result;
}

uint64_t sub_100082B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_100082BDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100082BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100082C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082C9C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_100082E34(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

void sub_100082FB8()
{
  sub_1000831BC(319, &qword_1003A04C0, type metadata accessor for SLAMScript, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000831BC(319, &qword_1003A04C8, type metadata accessor for SLAMScript, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_1000831BC(319, &qword_1003A04D0, &type metadata accessor for UUID, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100083220(319, &qword_1003A04D8, &type metadata for KCSOTAResponse.HostConfiguration, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100083220(319, &qword_1003A04E0, &type metadata for Int, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_100083220(319, &unk_1003A04E8, &type metadata for Data, &type metadata accessor for Optional);
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

void sub_1000831BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100083220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100083270()
{
  result = qword_1003A0550;
  if (!qword_1003A0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0550);
  }

  return result;
}

unint64_t sub_1000832D8()
{
  result = qword_1003A0560;
  if (!qword_1003A0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0560);
  }

  return result;
}

unint64_t sub_100083330()
{
  result = qword_1003A0568;
  if (!qword_1003A0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0568);
  }

  return result;
}

unint64_t sub_100083388()
{
  result = qword_1003A0570;
  if (!qword_1003A0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0570);
  }

  return result;
}

void sub_1000833FC(uint64_t a1, Class isa, uint64_t a3, unint64_t a4)
{
  v18 = a4;
  v17 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(0);
  v13 = String._bridgeToObjectiveC()();

  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10008AB30();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v12 createFileAtPath:v13 contents:0 attributes:isa];

  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  (*(v8 + 16))(v11, a1, v7);
  v14 = sub_1000874C4(v11);
  if (!v4)
  {
    v15 = v14;
    sub_10008A3C4(v17, v18, v15);

    sub_10008761C(v15);
  }
}

uint64_t sub_1000837E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0578);
  sub_10000403C(v0, qword_1003A0578);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100083854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_12;
    }

    v16 = *(v12 + 16);
  }

  else
  {
    if (!v14)
    {
      v15 = *a1;
      if ((*a1 & 0x8000000000000000) == 0 && v15 < BYTE6(v13))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000403C(v17, qword_1003A0578);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_17;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "invalid cursor";
      goto LABEL_16;
    }

    v16 = v12;
  }

  v15 = *a1;
  if (*a1 < v16)
  {
    goto LABEL_12;
  }

  if (v14 == 2)
  {
    if (v15 >= *(v12 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v15 >= v12 >> 32)
  {
    goto LABEL_12;
  }

LABEL_21:
  v88 = v11;
  v89 = v9;
  v92 = a2;
  v93 = a1;
  v90 = v8;
  v91 = v12;
  while (1)
  {
    v24 = Data._Representation.subscript.getter();
    v25 = (v24 + 1);
    if ((v24 & 0x80) != 0)
    {
      v25 = (((v24 & 0x3F) << 8) | (v24 >> 6)) + 33217;
    }

    v94 = (v25 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v25) >> 3))));
    v26 = static String._uncheckedFromUTF8(_:)();
    v28 = v27;
    v29 = v26 == 123 && v27 == 0xE100000000000000;
    if (v29 || (v30 = v26, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      result = sub_100084A30(v93);
      v38 = v92;
      if (v3)
      {
        return result;
      }

      v39 = result;
      v40 = &qword_1003A0190;
      v41 = &unk_1002C4040;
LABEL_108:
      result = sub_100004074(v40, v41);
      v38[3] = result;
      *v38 = v39;
      return result;
    }

    v31 = v30 == 91 && v28 == 0xE100000000000000;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_1000853D4(v93);
      v38 = v92;
      if (v3)
      {
        return result;
      }

      v39 = result;
      v40 = &unk_1003A06B0;
      v41 = &unk_1002C4060;
      goto LABEL_108;
    }

    if (v30 == 116 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (__OFADD__(v15, 4))
      {
        __break(1u);
      }

      else if (v15 + 4 >= v15)
      {
        v42 = *(v2 + 16);
        v43 = *(v2 + 24);
        v44 = Data._Representation.subscript.getter();
        v30 = v45;
        v46 = v88;
        static String.Encoding.utf8.getter();
        v47 = String.data(using:allowLossyConversion:)();
        v49 = v48;
        (*(v89 + 8))(v46, v90);
        if (v49 >> 60 != 15)
        {

          v50 = sub_10017688C(v44, v30, v47, v49);
          sub_10001A074(v47, v49);
          if (v50)
          {
            v51 = v92;
            *v93 = v15 + 3;
            v51[3] = &type metadata for Bool;
            result = sub_100009548(v44, v30);
            *v51 = 1;
            return result;
          }

LABEL_124:
          if (qword_10039D390 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          sub_10000403C(v70, qword_1003A0578);
          sub_1000094F4(v44, v30);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.error.getter();
          sub_100009548(v44, v30);
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v94 = v74;
            *v73 = 136315138;
            v75 = Data.hexString()();
            v76 = sub_100008F6C(v75._countAndFlagsBits, v75._object, &v94);

            *(v73 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v71, v72, "invalid JSON: %s", v73, 0xCu);
            sub_10000959C(v74);
          }

          sub_10008671C();
          swift_allocError();
          *v77 = 2;
          swift_willThrow();
          return sub_100009548(v44, v30);
        }

        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      __break(1u);
      goto LABEL_142;
    }

    if (v30 == 102 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!__OFADD__(v15, 5))
      {
        if (v15 + 5 >= v15)
        {
          v52 = *(v2 + 16);
          v53 = *(v2 + 24);
          v44 = Data._Representation.subscript.getter();
          v30 = v54;
          v55 = v88;
          static String.Encoding.utf8.getter();
          v56 = String.data(using:allowLossyConversion:)();
          v58 = v57;
          (*(v89 + 8))(v55, v90);
          if (v58 >> 60 != 15)
          {

            v59 = sub_10017688C(v44, v30, v56, v58);
            sub_10001A074(v56, v58);
            if (v59)
            {
              v60 = v92;
              *v93 = v15 + 4;
              v60[3] = &type metadata for Bool;
              result = sub_100009548(v44, v30);
              *v60 = 0;
              return result;
            }

            goto LABEL_124;
          }

          goto LABEL_148;
        }

LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v30 == 110 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!__OFADD__(v15, 4))
      {
        if (v15 + 4 >= v15)
        {
          v61 = *(v2 + 16);
          v62 = *(v2 + 24);
          v44 = Data._Representation.subscript.getter();
          v30 = v63;
          v64 = v88;
          static String.Encoding.utf8.getter();
          v65 = String.data(using:allowLossyConversion:)();
          v67 = v66;
          (*(v89 + 8))(v64, v90);
          if (v67 >> 60 != 15)
          {

            v68 = sub_10017688C(v44, v30, v65, v67);
            sub_10001A074(v65, v67);
            if (v68)
            {
              result = sub_100009548(v44, v30);
              *v93 = v15 + 3;
              v69 = v92;
              *v92 = 0u;
              *(v69 + 1) = 0u;
              return result;
            }

            goto LABEL_124;
          }

LABEL_149:
          __break(1u);
LABEL_150:
          swift_once();
          goto LABEL_136;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        swift_once();
LABEL_132:
        v80 = type metadata accessor for Logger();
        sub_10000403C(v80, qword_1003A0578);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_17;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "expecting JSON value";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_17:

        sub_10008671C();
        swift_allocError();
        *v22 = 0;
        return swift_willThrow();
      }

LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v30 == 34 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_100085B74(v93);
      v79 = v92;
      if (!v3)
      {
        v92[3] = &type metadata for KCSOTAResponseParser.StringIntermediate;
        *v79 = result;
        v79[1] = v78;
      }

      return result;
    }

    if (v30 == 45 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 48 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 49 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 50 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 51 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 52 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 53 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 54 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 55 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 56 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v30 == 57 && v28 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      result = sub_100086130(v93);
      v37 = v92;
      if (!v3)
      {
        v92[3] = &type metadata for Int;
        *v37 = result;
      }

      return result;
    }

    if ((v30 != 10 || v28 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v30 != 13 || v28 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v30 != 32 || v28 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v30 != 9 || v28 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_135;
    }

    v32 = v15 + 1;
    v30 = 33217;
    v28 = 4;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    *v93 = v32;
    v33 = *(v2 + 16);
    v34 = *(v2 + 24);
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 == 2)
      {
        v36 = *(v33 + 24);
        goto LABEL_98;
      }

      if (v32 < 0)
      {
        goto LABEL_101;
      }

LABEL_131:
      if (qword_10039D390 == -1)
      {
        goto LABEL_132;
      }

      goto LABEL_146;
    }

    if (v35)
    {
      v36 = v33 >> 32;
    }

    else
    {
      v36 = BYTE6(v34);
    }

LABEL_98:
    if (v32 >= v36)
    {
      goto LABEL_131;
    }

LABEL_101:
    ++v15;
  }

  __break(1u);
LABEL_135:
  if (qword_10039D390 != -1)
  {
    goto LABEL_150;
  }

LABEL_136:
  v81 = type metadata accessor for Logger();
  sub_10000403C(v81, qword_1003A0578);

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v94 = v85;
    *v84 = 136315138;
    v86 = sub_100008F6C(v30, v28, &v94);

    *(v84 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v82, v83, "unexpected char %s", v84, 0xCu);
    sub_10000959C(v85);
  }

  else
  {
  }

  sub_10008671C();
  swift_allocError();
  *v87 = 3;
  return swift_willThrow();
}

uint64_t sub_1000845C8(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62 == 3)
  {
    goto LABEL_60;
  }

  v6 = *(v1 + 16);
  for (i = *a1; ; ++i)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (i < v6 || i >= v6 >> 32)
        {
          goto LABEL_53;
        }

        v9 = __DataStorage._bytes.getter();
        if (!v9)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
        }

        v2 = v9;
        v10 = __DataStorage._offset.getter();
        v11 = i - v10;
        if (__OFSUB__(i, v10))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (i < *(v6 + 16))
        {
          goto LABEL_52;
        }

        if (i >= *(v6 + 24))
        {
          goto LABEL_54;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_59;
        }

        v2 = v14;
        v15 = __DataStorage._offset.getter();
        v11 = i - v15;
        if (__OFSUB__(i, v15))
        {
          goto LABEL_56;
        }
      }

      v12 = *(v2 + v11);
      if ((v12 & 0x80) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (i >= BYTE6(v3))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v29 = v6;
      v30 = v3;
      v31 = BYTE2(v3);
      v32 = BYTE3(v3);
      v33 = BYTE4(v3);
      v34 = BYTE5(v3);
      v12 = *(&v29 + i);
      if ((v12 & 0x80) != 0)
      {
LABEL_16:
        v13 = ((v12 >> 6) & 0xFFFFC0FF | ((v12 & 0x3F) << 8)) + 33217;
        goto LABEL_23;
      }
    }

    v13 = v12 + 1;
LABEL_23:
    v29 = (v13 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v13) >> 3))));
    v2 = static String._uncheckedFromUTF8(_:)();
    v17 = v16;
    v18 = v2 == 13 && v16 == 0xE100000000000000;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v19 = v2 == 10 && v17 == 0xE100000000000000;
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v2 != 32 || v17 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v2 != 9 || v17 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return v2;
      }
    }

    *a1 = i + 1;
    v20 = *(v1 + 16);
    v21 = *(v1 + 24);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      break;
    }

    if (v22)
    {
      v8 = v20 >> 32;
    }

    else
    {
      v8 = BYTE6(v21);
    }

LABEL_4:
    if (i + 1 >= v8)
    {
      goto LABEL_45;
    }

LABEL_5:
    ;
  }

  if (v22 == 2)
  {
    v8 = *(v20 + 24);
    goto LABEL_4;
  }

  if (i <= -2)
  {
    goto LABEL_5;
  }

LABEL_45:
  if (qword_10039D390 == -1)
  {
    goto LABEL_46;
  }

LABEL_57:
  swift_once();
LABEL_46:
  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A0578);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "expect ], }, : or string after whitespace", v26, 2u);
  }

  sub_10008671C();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
  return v2;
}

uint64_t sub_100084A30(uint64_t *a1)
{
  v3 = v1;
  v62 = sub_100182BA0(_swiftEmptyArrayStorage);
  v5 = *(v1 + 24);
  v6 = v5 >> 62;
  if (v5 >> 62 == 3)
  {
    goto LABEL_116;
  }

  v7 = 0;
  v60 = 0;
  v8 = *(v1 + 16);
  v58 = 0;
  v59 = v8;
  v57 = v8 >> 32;
  v55 = v8 >> 16;
  v56 = v8 >> 8;
  v53 = HIDWORD(v8);
  v54 = v8 >> 24;
  v9 = *a1;
  v51 = HIWORD(v8);
  v52 = v8 >> 40;
  v50 = HIBYTE(v8);
  v61 = v8;
  while (1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v9 < v59 || v9 >= v57)
        {
          goto LABEL_107;
        }

        v11 = __DataStorage._bytes.getter();
        if (!v11)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
        }

        v12 = v11;
        v13 = __DataStorage._offset.getter();
        v14 = v9 - v13;
        if (__OFSUB__(v9, v13))
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v9 < *(v8 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_108;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_115;
        }

        v12 = v17;
        v18 = __DataStorage._offset.getter();
        v14 = v9 - v18;
        if (__OFSUB__(v9, v18))
        {
          goto LABEL_110;
        }
      }

      v15 = *(v12 + v14);
      if ((v15 & 0x80) != 0)
      {
LABEL_15:
        v16 = ((v15 >> 6) & 0xFFFFC0FF | ((v15 & 0x3F) << 8)) + 33217;
        goto LABEL_22;
      }
    }

    else
    {
      if (v9 >= BYTE6(v5))
      {
        goto LABEL_106;
      }

      LOBYTE(v66) = v59;
      BYTE1(v66) = v56;
      BYTE2(v66) = v55;
      BYTE3(v66) = v54;
      BYTE4(v66) = v53;
      BYTE5(v66) = v52;
      BYTE6(v66) = v51;
      HIBYTE(v66) = v50;
      LOWORD(v67) = v5;
      BYTE2(v67) = BYTE2(v5);
      BYTE3(v67) = BYTE3(v5);
      BYTE4(v67) = BYTE4(v5);
      BYTE5(v67) = BYTE5(v5);
      v15 = *(&v66 + v9);
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_15;
      }
    }

    v16 = v15 + 1;
LABEL_22:
    v66 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    v19 = static String._uncheckedFromUTF8(_:)();
    if (v7 > 2u)
    {
      if (v7 == 3)
      {
        if (v19 == 58 && v20 == 0xE100000000000000)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {

            if (qword_10039D390 != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            sub_10000403C(v47, qword_1003A0578);
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v42, v43))
            {
              goto LABEL_104;
            }

            v44 = swift_slowAlloc();
            *v44 = 0;
            goto LABEL_103;
          }
        }

        *a1 = ++v9;
        v7 = 4;
        goto LABEL_69;
      }

      if (v7 != 4)
      {
        if (v19 == 44 && v20 == 0xE100000000000000)
        {
LABEL_61:

          goto LABEL_62;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
LABEL_62:
          ++v9;
LABEL_68:
          *a1 = v9;
          v7 = 1;
          goto LABEL_69;
        }

        if (qword_10039D390 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000403C(v46, qword_1003A0578);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_104;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "expecting ','";
LABEL_103:
        _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);

        goto LABEL_104;
      }

      if (v60)
      {
        sub_100083854(&v66, a1);
        if (v2)
        {
LABEL_89:
        }

        sub_100065074(&v66, &v64, &qword_10039E248, &qword_1002C23D0);
        if (v65)
        {
          sub_100019D3C(&v64, v63);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10017F944(v63, v58, v60, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          sub_10000BD44(&v64, &qword_10039E248, &qword_1002C23D0);
          sub_10017A9E0(v58, v60, v63);

          sub_10000BD44(v63, &qword_10039E248, &qword_1002C23D0);
        }

        sub_10000BD44(&v66, &qword_10039E248, &qword_1002C23D0);
        v9 = *a1 + 1;
        if (__OFADD__(*a1, 1))
        {
          goto LABEL_111;
        }

        v58 = 0;
        v60 = 0;
        goto LABEL_68;
      }

      if (qword_10039D390 == -1)
      {
LABEL_87:
        v41 = type metadata accessor for Logger();
        sub_10000403C(v41, qword_1003A0578);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v42, v43))
        {
LABEL_104:

          sub_10008671C();
          swift_allocError();
          *v49 = 0;
          return swift_willThrow();
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "coding key missing";
        goto LABEL_103;
      }

LABEL_113:
      swift_once();
      goto LABEL_87;
    }

    if (!v7)
    {
      if (v19 != 123 || v20 != 0xE100000000000000)
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {

          if (qword_10039D390 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_10000403C(v48, qword_1003A0578);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_104;
          }

          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = "expecting '{'";
          goto LABEL_103;
        }

        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v7 == 1)
    {
      break;
    }

    v30 = sub_100085B74(a1);
    if (v2)
    {
    }

    v32 = v30;
    v33 = v31;
    type metadata accessor for JSONDecoder();
    sub_10009A814(_swiftEmptyArrayStorage);
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    sub_100009548(v32, v33);

    v9 = *a1 + 1;
    if (__OFADD__(*a1, 1))
    {
      goto LABEL_112;
    }

    v58 = v66;
    v60 = v67;
    v7 = 1;
    *a1 = v9;
LABEL_69:
    v36 = *(v3 + 16);
    v37 = *(v3 + 24);
    v38 = v37 >> 62;
    if ((v37 >> 62) <= 1)
    {
      if (v38)
      {
        v10 = v36 >> 32;
      }

      else
      {
        v10 = BYTE6(v37);
      }

      goto LABEL_4;
    }

    if (v38 == 2)
    {
      v10 = *(v36 + 24);
LABEL_4:
      v8 = v61;
      if (v9 >= v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v8 = v61;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_84;
      }
    }
  }

  v21 = sub_1000845C8(a1);
  if (v2)
  {
    goto LABEL_89;
  }

  v23 = v21;
  v24 = v22;
  if ((v21 != 125 || v22 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v23 == 58 && v24 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v7 = 3;
    }

    else if (v23 == 44 && v24 == 0xE100000000000000)
    {

      v7 = 5;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        v7 = 5;
      }

      else
      {
        v7 = 2;
      }
    }

    v9 = *a1;
    goto LABEL_69;
  }

LABEL_84:

  return v62;
}

char *sub_1000853D4(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62 == 3)
  {
    goto LABEL_101;
  }

  v5 = v1;
  v7 = 0;
  v8 = *(v1 + 16);
  v55 = v8;
  v53 = v8 >> 32;
  v54 = _swiftEmptyArrayStorage;
  v51 = v8 >> 16;
  v52 = v8 >> 8;
  v49 = HIDWORD(v8);
  v50 = v8 >> 24;
  v47 = HIWORD(v8);
  v48 = v8 >> 40;
  v9 = *a1;
  v46 = HIBYTE(v8);
  v56 = v8;
  while (1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (v9 < v55 || v9 >= v53)
        {
          goto LABEL_93;
        }

        v11 = __DataStorage._bytes.getter();
        if (!v11)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
        }

        v12 = v11;
        v13 = __DataStorage._offset.getter();
        v14 = v9 - v13;
        if (__OFSUB__(v9, v13))
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v9 < *(v8 + 16))
        {
          goto LABEL_92;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_94;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_100;
        }

        v12 = v17;
        v18 = __DataStorage._offset.getter();
        v14 = v9 - v18;
        if (__OFSUB__(v9, v18))
        {
          goto LABEL_96;
        }
      }

      v15 = *(v12 + v14);
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 >= BYTE6(v3))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        swift_once();
LABEL_82:
        v42 = type metadata accessor for Logger();
        sub_10000403C(v42, qword_1003A0578);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v38, v39))
        {
          goto LABEL_89;
        }

        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = "expecting ','";
        goto LABEL_88;
      }

      LOBYTE(v59[0]) = v55;
      BYTE1(v59[0]) = v52;
      BYTE2(v59[0]) = v51;
      BYTE3(v59[0]) = v50;
      BYTE4(v59[0]) = v49;
      BYTE5(v59[0]) = v48;
      BYTE6(v59[0]) = v47;
      BYTE7(v59[0]) = v46;
      WORD4(v59[0]) = v3;
      BYTE10(v59[0]) = BYTE2(v3);
      BYTE11(v59[0]) = BYTE3(v3);
      BYTE12(v59[0]) = BYTE4(v3);
      BYTE13(v59[0]) = BYTE5(v3);
      v15 = *(v59 + v9);
      if ((v15 & 0x80) != 0)
      {
LABEL_15:
        v16 = ((v15 >> 6) & 0xFFFFC0FF | ((v15 & 0x3F) << 8)) + 33217;
        goto LABEL_22;
      }
    }

    v16 = v15 + 1;
LABEL_22:
    *&v59[0] = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    v19 = static String._uncheckedFromUTF8(_:)();
    if (v7 <= 1u)
    {
      break;
    }

    if (v7 == 2)
    {

      sub_100083854(&v57, a1);
      if (v2)
      {
        goto LABEL_80;
      }

      if (v58)
      {
        sub_100019D3C(&v57, v59);
        sub_10000BDA4(v59, &v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_10004DB7C(0, *(v54 + 2) + 1, 1, v54);
        }

        v30 = *(v54 + 2);
        v29 = *(v54 + 3);
        if (v30 >= v29 >> 1)
        {
          v54 = sub_10004DB7C((v29 > 1), v30 + 1, 1, v54);
        }

        sub_10000959C(v59);
        *(v54 + 2) = v30 + 1;
        sub_100019D3C(&v57, &v54[32 * v30 + 32]);
      }

      else
      {
        sub_10000BD44(&v57, &qword_10039E248, &qword_1002C23D0);
      }

      v9 = *a1 + 1;
      if (__OFADD__(*a1, 1))
      {
        goto LABEL_97;
      }

      goto LABEL_56;
    }

    if (v7 != 3)
    {
      if (v19 == 93 && v20 == 0xE100000000000000)
      {
LABEL_80:

        return v54;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        return v54;
      }

      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000403C(v37, qword_1003A0578);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = "expecting ']'";
LABEL_88:
        _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);

        goto LABEL_89;
      }

      goto LABEL_89;
    }

    if (v19 == 44 && v20 == 0xE100000000000000)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {

        if (qword_10039D390 == -1)
        {
          goto LABEL_82;
        }

        goto LABEL_98;
      }
    }

    *a1 = ++v9;
    v7 = 2;
LABEL_57:
    v31 = *(v5 + 16);
    v32 = *(v5 + 24);
    v33 = v32 >> 62;
    if ((v32 >> 62) <= 1)
    {
      if (v33)
      {
        v10 = v31 >> 32;
      }

      else
      {
        v10 = BYTE6(v32);
      }

      goto LABEL_4;
    }

    if (v33 == 2)
    {
      v10 = *(v31 + 24);
LABEL_4:
      v8 = v56;
      if (v9 >= v10)
      {
        return v54;
      }
    }

    else
    {
      v8 = v56;
      if ((v9 & 0x8000000000000000) == 0)
      {
        return v54;
      }
    }
  }

  if (v7)
  {

    v25 = sub_1000845C8(a1);
    if (v2)
    {
      goto LABEL_80;
    }

    v27 = v26;
    if (v25 == 93 && v26 == 0xE100000000000000 || (v28 = v25, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v7 = 4;
    }

    else if (v28 == 44 && v27 == 0xE100000000000000)
    {

      v7 = 3;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    v9 = *a1;
    goto LABEL_57;
  }

  if (v19 == 91 && v20 == 0xE100000000000000)
  {

    ++v9;
    goto LABEL_56;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    ++v9;
LABEL_56:
    *a1 = v9;
    v7 = 1;
    goto LABEL_57;
  }

  if (qword_10039D390 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000403C(v43, qword_1003A0578);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "expecting '['";
    goto LABEL_88;
  }

LABEL_89:

  sub_10008671C();
  swift_allocError();
  *v44 = 0;
  swift_willThrow();
  return v54;
}

uint64_t sub_100085B74(uint64_t *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *a1;
  v6 = Data._Representation.subscript.getter();
  v7 = (v6 + 1);
  if ((v6 & 0x80) != 0)
  {
    v7 = (((v6 & 0x3F) << 8) | (v6 >> 6)) + 33217;
  }

  v48 = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v7) >> 3))));
  if (static String._uncheckedFromUTF8(_:)() == 34 && v8 == 0xE100000000000000)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (qword_10039D390 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000403C(v12, qword_1003A0578);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_62;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "expecting string";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_62:

      sub_10008671C();
      swift_allocError();
      *v43 = 0;
      return swift_willThrow();
    }
  }

  v17 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_59:
    v42 = type metadata accessor for Logger();
    sub_10000403C(v42, qword_1003A0578);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_62;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "expecting  in string";
    goto LABEL_61;
  }

  v46 = v5;
  *a1 = v17;
  v18 = *(v1 + 24);
  v19 = v18 >> 62;
  if (v18 >> 62 == 3)
  {
    __break(1u);
    return result;
  }

  LOBYTE(v20) = 0;
  v21 = *(v1 + 16);
  while (1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        if (v17 < v21 || v17 >= v21 >> 32)
        {
          goto LABEL_67;
        }

        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          __break(1u);
LABEL_75:
          __break(1u);
        }

        v24 = v23;
        v25 = __DataStorage._offset.getter();
        v26 = v17 - v25;
        if (__OFSUB__(v17, v25))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v17 < *(v21 + 16))
        {
          goto LABEL_66;
        }

        if (v17 >= *(v21 + 24))
        {
          goto LABEL_68;
        }

        v29 = __DataStorage._bytes.getter();
        if (!v29)
        {
          goto LABEL_75;
        }

        v24 = v29;
        v30 = __DataStorage._offset.getter();
        v26 = v17 - v30;
        if (__OFSUB__(v17, v30))
        {
          goto LABEL_70;
        }
      }

      v27 = *(v24 + v26);
      if ((v27 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v17 >= BYTE6(v18))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v48 = v21;
      v49 = v18;
      v50 = BYTE2(v18);
      v51 = BYTE3(v18);
      v52 = BYTE4(v18);
      v53 = BYTE5(v18);
      v27 = *(&v48 + v17);
      if ((v27 & 0x80) != 0)
      {
LABEL_29:
        v28 = ((v27 >> 6) & 0xFFFFC0FF | ((v27 & 0x3F) << 8)) + 33217;
        goto LABEL_36;
      }
    }

    v28 = v27 + 1;
LABEL_36:
    v48 = (v28 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v28) >> 3))));
    v31 = static String._uncheckedFromUTF8(_:)();
    v33 = v32;
    v34 = v31 == 92 && v32 == 0xE100000000000000;
    if (v34 || (v35 = v31, v36 = _stringCompareWithSmolCheck(_:_:expecting:)(), v31 = v35, (v36 & 1) != 0))
    {
      if ((v20 & 0xFE) == 0)
      {
        LOBYTE(v20) = 1;
      }
    }

    if (v31 != 34 || v33 != 0xE100000000000000)
    {
      break;
    }

    if (v20 != 2)
    {
      goto LABEL_63;
    }

    LOBYTE(v20) = 0;
LABEL_52:
    *a1 = v17 + 1;
    v39 = *(v2 + 16);
    v40 = *(v2 + 24);
    v41 = v40 >> 62;
    if ((v40 >> 62) <= 1)
    {
      if (v41)
      {
        v22 = v39 >> 32;
      }

      else
      {
        v22 = BYTE6(v40);
      }

LABEL_17:
      if (v17 + 1 >= v22)
      {
        goto LABEL_58;
      }

      goto LABEL_18;
    }

    if (v41 == 2)
    {
      v22 = *(v39 + 24);
      goto LABEL_17;
    }

    if (v17 > -2)
    {
LABEL_58:
      if (qword_10039D390 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

LABEL_18:
    ++v17;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20 == 2 || (v38 & 1) == 0)
  {
    v20 = 0x200u >> (8 * v20);
    goto LABEL_52;
  }

LABEL_63:
  if (v17 + 1 < v46)
  {
    goto LABEL_72;
  }

  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  return Data._Representation.subscript.getter();
}

uint64_t sub_100086130(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v27 = 0;
      goto LABEL_9;
    }

    v6 = *(v3 + 24);
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  v27 = v6;
LABEL_9:
  if (v5 == 3)
  {
    goto LABEL_57;
  }

  v7 = *a1;
  v29 = *a1;
  while (1)
  {
    if (v5 == 1)
    {
      if (v7 < v3 || v7 >= v3 >> 32)
      {
        goto LABEL_49;
      }

      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
        goto LABEL_55;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      v14 = v7 - v13;
      if (__OFSUB__(v7, v13))
      {
        goto LABEL_51;
      }

      goto LABEL_29;
    }

    if (v5)
    {
      if (v7 < *(v3 + 16))
      {
        goto LABEL_48;
      }

      if (v7 >= *(v3 + 24))
      {
        goto LABEL_50;
      }

      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_56;
      }

      v12 = v15;
      v16 = __DataStorage._offset.getter();
      v14 = v7 - v16;
      if (__OFSUB__(v7, v16))
      {
        goto LABEL_52;
      }

LABEL_29:
      v9 = *(v12 + v14);
      if ((v9 & 0x80) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    if (v7 >= BYTE6(v4))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v30 = v3;
    v31 = v4;
    v32 = BYTE2(v4);
    v33 = BYTE3(v4);
    v34 = BYTE4(v4);
    v35 = BYTE5(v4);
    v9 = *(&v30 + v7);
    if ((v9 & 0x80) != 0)
    {
LABEL_18:
      v10 = ((v9 >> 6) & 0xFFFFC0FF | ((v9 & 0x3F) << 8)) + 33217;
      goto LABEL_31;
    }

LABEL_30:
    v10 = v9 + 1;
LABEL_31:
    v30 = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v10) >> 3))));
    static String._uncheckedFromUTF8(_:)();
    if (Character.isNumber.getter())
    {

      goto LABEL_34;
    }

    v17 = Character.isMathSymbol.getter();

    if ((v17 & 1) == 0)
    {
      break;
    }

LABEL_34:
    *a1 = v7 + 1;
    v18 = *(v1 + 16);
    v19 = *(v1 + 24);
    v20 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (v20)
      {
        v8 = v18 >> 32;
      }

      else
      {
        v8 = BYTE6(v19);
      }

LABEL_12:
      if (v7 + 1 >= v8)
      {
        goto LABEL_40;
      }

      goto LABEL_13;
    }

    if (v20 == 2)
    {
      v8 = *(v18 + 24);
      goto LABEL_12;
    }

    if (v7 >= -1)
    {
LABEL_40:
      v7 = v27;
      goto LABEL_43;
    }

LABEL_13:
    ++v7;
  }

  if (__OFSUB__(v7, 1))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  *a1 = v7 - 1;
LABEL_43:
  type metadata accessor for JSONDecoder();
  if (v7 < v29)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = Data._Representation.subscript.getter();
  v25 = v24;
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

  result = sub_100009548(v23, v25);
  if (!v28)
  {
    return v30;
  }

  return result;
}

void *sub_1000864B8@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24) >> 62;
  if (v7 > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v6 + 16);
    }
  }

  else if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  result = sub_100083854(&v18, v16);
  if (!v3)
  {
    if (v16[3])
    {
      sub_100004074(&qword_1003A0190, &unk_1002C4040);
      if (swift_dynamicCast())
      {
        sub_1000890E0(v15, a1 & 1, __src);

        return memcpy(a2, __src, 0x111uLL);
      }
    }

    else
    {
      sub_10000BD44(v16, &qword_10039E248, &qword_1002C23D0);
    }

    if (qword_10039D390 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A0578);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "unexpected JSON object", v13, 2u);
    }

    sub_10008671C();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000866C0()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_10008671C()
{
  result = qword_1003A0690;
  if (!qword_1003A0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0690);
  }

  return result;
}

uint64_t sub_100086870(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x3E736574796220;
    v4._object = 0xE700000000000000;
    String.append(_:)(v4);
    return 60;
  }

  __break(1u);
  return result;
}

uint64_t sub_100086964(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A06E0, &qword_1002C4938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_10008B474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  HIBYTE(v16) = 0;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBD8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v17 = v3[1];
  HIBYTE(v16) = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v11 = v3[2];
  v12 = v3[3];
  LOBYTE(v17) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = v3[4];
  v15 = *(v3 + 40);
  LOBYTE(v17) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100086B8C()
{
  v1 = 0x6941737361707962;
  v2 = 0x437972746E756F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x4374726F70707573;
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

uint64_t sub_100086C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008B044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100086C4C(uint64_t a1)
{
  v2 = sub_10008B474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086C88(uint64_t a1)
{
  v2 = sub_10008B474();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100086CC4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008B1C4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100086D24(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_10008791C(&v5, &v7);
}

BOOL sub_100086E90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000879EC(v7, v9);
}

uint64_t sub_100087320(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x111uLL);
  memcpy(__dst, a2, 0x111uLL);
  return sub_100087D3C(v4, __dst) & 1;
}

uint64_t sub_100087378@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1001714C8(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_100171464(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_100009548(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_1000874C4(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_10008761C(void *a1)
{
  v3 = 0;
  if ([a1 closeAndReturnError:&v3])
  {

    return _objc_retain_x1();
  }

  else
  {
    v1 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000876FC()
{
  v1 = *v0;
  v2 = v0[1] >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_9;
    }

    v5 = v1 + 16;
    v3 = *(v1 + 16);
    v4 = *(v5 + 8);
    v6 = __OFSUB__(v4, v3);
    v1 = v4 - v3;
    if (!v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_9:
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x3E736574796220;
    v8._object = 0xE700000000000000;
    String.append(_:)(v8);
    return;
  }

  __break(1u);
}

uint64_t sub_1000877E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_10001A3E8(a3, a4);
        sub_10001A3E8(a7, a8);
LABEL_11:
        sub_10001A074(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_10001A3E8(a3, a4);
      sub_10001A3E8(a7, a8);
      v16 = sub_10017688C(a3, a4, a7, a8);
      sub_10001A074(a7, a8);
      if (v16)
      {
        goto LABEL_11;
      }

      v14 = a3;
      v15 = a4;
LABEL_9:
      sub_10001A074(v14, v15);
      return 0;
    }

    sub_10001A3E8(a3, a4);
    sub_10001A3E8(a7, a8);
    sub_10001A074(a3, a4);
    v14 = a7;
    v15 = a8;
    goto LABEL_9;
  }

  return result;
}

BOOL sub_10008791C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_10015140C(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || (sub_10015140C(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (v8)
  {
    if (!v9 || (*(a1 + 16) != *(a2 + 16) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v10 = 1;
    }

    return (v10 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL sub_1000879EC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 16);
    v29 = *(a2 + 16);
    v30 = v7;
    v8 = v7;
    v9 = v29;
    if (*(&v7 + 1) >> 60 == 15)
    {
      if (*(&v29 + 1) >> 60 == 15)
      {
        sub_100065074(&v30, v33, &qword_1003A06E8, &qword_1002C4940);
        sub_100065074(&v29, v33, &qword_1003A06E8, &qword_1002C4940);
LABEL_13:
        sub_10001A074(v8, *(&v8 + 1));
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16 = *(a1 + 48);
        v15 = *(a1 + 56);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v20 = *(a2 + 32);
        v19 = *(a2 + 40);
        v22 = *(a2 + 48);
        v21 = *(a2 + 56);
        v23 = *(a2 + 64);
        v24 = *(a2 + 72);
        if (v13 == 1)
        {
          if (v20 == 1)
          {
            return 1;
          }
        }

        else if (v20 != 1)
        {
          v33[0] = *(a2 + 32);
          v33[1] = v19;
          v33[2] = v22;
          v33[3] = v21;
          v33[4] = v23;
          v34 = v24 & 1;
          v31[0] = v13;
          v31[1] = v14;
          v31[2] = v16;
          v31[3] = v15;
          v31[4] = v17;
          v32 = v18 & 1;
          v26 = sub_10008791C(v31, v33);
          sub_100082A7C(v20);
          sub_100082A7C(v13);

          sub_100082AD0(v13);
          return v26;
        }

        v25 = *(a2 + 40);
        v27 = *(a2 + 48);
        v28 = *(a2 + 64);
        sub_100082A7C(*(a2 + 32));
        sub_100082A7C(v13);
        sub_100082AD0(v13);
        sub_100082AD0(v20);
        return 0;
      }
    }

    else if (*(&v29 + 1) >> 60 != 15)
    {
      sub_100065074(&v30, v33, &qword_1003A06E8, &qword_1002C4940);
      sub_100065074(&v29, v33, &qword_1003A06E8, &qword_1002C4940);
      v12 = sub_10017688C(v8, *(&v8 + 1), v9, *(&v9 + 1));
      sub_10001A074(v9, *(&v9 + 1));
      if (v12)
      {
        goto LABEL_13;
      }

      v11 = *(&v8 + 1);
      v10 = v8;
LABEL_11:
      sub_10001A074(v10, v11);
      return 0;
    }

    sub_100065074(&v30, v33, &qword_1003A06E8, &qword_1002C4940);
    sub_100065074(&v29, v33, &qword_1003A06E8, &qword_1002C4940);
    sub_10001A074(v8, *(&v8 + 1));
    v11 = *(&v9 + 1);
    v10 = v9;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100087D3C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = *a2;

    v7 = sub_100151598(v4, v5);

    if ((v7 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  v8 = *(a1 + 8);
  v86 = *(a2 + 8);
  v87 = v8;
  v9 = *(&v8 + 1);
  v10 = v8;
  v12 = *(&v86 + 1);
  v11 = v86;
  if (*(&v8 + 1) >> 60 == 15)
  {
    if (*(&v86 + 1) >> 60 == 15)
    {
      sub_100065074(&v87, &v67, &qword_1003A06E8, &qword_1002C4940);
      sub_100065074(&v86, &v67, &qword_1003A06E8, &qword_1002C4940);
      goto LABEL_14;
    }

LABEL_10:
    v13 = &qword_1003A06E8;
    v14 = &qword_1002C4940;
    sub_100065074(&v87, &v67, &qword_1003A06E8, &qword_1002C4940);
    v15 = &v86;
    v16 = &v67;
LABEL_11:
    sub_100065074(v15, v16, v13, v14);
    sub_10001A074(v10, v9);
    v17 = v11;
    v18 = v12;
LABEL_12:
    sub_10001A074(v17, v18);
    goto LABEL_30;
  }

  if (*(&v86 + 1) >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100065074(&v87, &v67, &qword_1003A06E8, &qword_1002C4940);
  sub_100065074(&v86, &v67, &qword_1003A06E8, &qword_1002C4940);
  v19 = sub_10017688C(v10, v9, v11, v12);
  sub_10001A074(v11, v12);
  if ((v19 & 1) == 0)
  {
    v17 = v10;
    v18 = v9;
    goto LABEL_12;
  }

LABEL_14:
  sub_10001A074(v10, v9);
  v20 = *(a1 + 40);
  v84 = *(a1 + 24);
  v85 = v20;
  v21 = *(a2 + 40);
  v83[0] = *(a2 + 24);
  v83[1] = v21;
  v22 = v84;
  v23 = v85;
  v24 = v83[0];
  v25 = v21;
  if (!*(&v84 + 1))
  {
    if (!*(&v83[0] + 1))
    {
      sub_100065074(&v84, &v67, &qword_1003A06F0, &qword_1002C4948);
      sub_100065074(v83, &v67, &qword_1003A06F0, &qword_1002C4948);
      sub_10008A2BC(v22, 0, v23, *(&v23 + 1));
      goto LABEL_22;
    }

LABEL_19:
    v67 = v84;
    v68 = v85;
    v69 = v83[0];
    v70[0] = v21;
    sub_100065074(&v84, v88, &qword_1003A06F0, &qword_1002C4948);
    v26 = v83;
LABEL_28:
    sub_100065074(v26, v88, &qword_1003A06F0, &qword_1002C4948);
    v33 = &unk_1003A06F8;
    v34 = &unk_1002C4950;
LABEL_29:
    sub_10000BD44(&v67, v33, v34);
    goto LABEL_30;
  }

  if (!*(&v83[0] + 1))
  {
    goto LABEL_19;
  }

  sub_100065074(&v84, &v67, &qword_1003A06F0, &qword_1002C4948);
  sub_100065074(v83, &v67, &qword_1003A06F0, &qword_1002C4948);
  v58 = sub_1000877E0(v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1));
  sub_10008A2BC(v24, *(&v24 + 1), v25, *(&v25 + 1));
  sub_10008A2BC(v22, *(&v22 + 1), v23, *(&v23 + 1));
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v27 = *(a1 + 72);
  v81 = *(a1 + 56);
  v82 = v27;
  v28 = *(a2 + 72);
  v80[0] = *(a2 + 56);
  v80[1] = v28;
  v29 = v81;
  v30 = v82;
  v31 = v80[0];
  v32 = v28;
  if (!*(&v81 + 1))
  {
    if (!*(&v80[0] + 1))
    {
      sub_100065074(&v81, &v67, &qword_1003A06F0, &qword_1002C4948);
      sub_100065074(v80, &v67, &qword_1003A06F0, &qword_1002C4948);
      sub_10008A2BC(v29, 0, v30, *(&v30 + 1));
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (!*(&v80[0] + 1))
  {
LABEL_27:
    v67 = v81;
    v68 = v82;
    v69 = v80[0];
    v70[0] = v28;
    sub_100065074(&v81, v88, &qword_1003A06F0, &qword_1002C4948);
    v26 = v80;
    goto LABEL_28;
  }

  sub_100065074(&v81, &v67, &qword_1003A06F0, &qword_1002C4948);
  sub_100065074(v80, &v67, &qword_1003A06F0, &qword_1002C4948);
  v59 = sub_1000877E0(v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1));
  sub_10008A2BC(v31, *(&v31 + 1), v32, *(&v32 + 1));
  sub_10008A2BC(v29, *(&v29 + 1), v30, *(&v30 + 1));
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v37 = *(a1 + 104);
  v38 = *(a1 + 136);
  v78[2] = *(a1 + 120);
  v79[0] = v38;
  *(v79 + 9) = *(a1 + 145);
  v78[0] = *(a1 + 88);
  v78[1] = v37;
  v39 = *(a2 + 104);
  v40 = *(a2 + 136);
  v76[2] = *(a2 + 120);
  v77[0] = v40;
  *(v77 + 9) = *(a2 + 145);
  v76[0] = *(a2 + 88);
  v76[1] = v39;
  if (!sub_1000879EC(v78, v76))
  {
    goto LABEL_30;
  }

  v41 = *(a1 + 184);
  v42 = *(a1 + 216);
  v74[2] = *(a1 + 200);
  v75[0] = v42;
  *(v75 + 9) = *(a1 + 225);
  v74[0] = *(a1 + 168);
  v74[1] = v41;
  v43 = *(a2 + 184);
  v44 = *(a2 + 216);
  v72[2] = *(a2 + 200);
  v73[0] = v44;
  *(v73 + 9) = *(a2 + 225);
  v72[0] = *(a2 + 168);
  v72[1] = v43;
  v45 = v74[0];
  if (*(&v74[0] + 1))
  {
    if (*(&v72[0] + 1))
    {
      v60 = v72[0];
      v63[0] = *(a2 + 216);
      *(v63 + 9) = *(a2 + 225);
      v46 = *(a2 + 200);
      v61 = *(a2 + 184);
      v62 = v46;
      v67 = v72[0];
      v68 = v61;
      *(v70 + 9) = *(v63 + 9);
      v69 = v46;
      v70[0] = v63[0];
      v47 = *(a1 + 184);
      v48 = *(a1 + 200);
      v49 = *(a1 + 216);
      *&v89[9] = *(a1 + 225);
      v88[2] = v48;
      *v89 = v49;
      v88[1] = v47;
      v88[0] = v74[0];
      sub_100065074(v74, v64, &qword_1003A0698, &qword_1002C4D20);
      sub_100065074(v72, v64, &qword_1003A0698, &qword_1002C4D20);
      v50 = sub_1000879EC(v88, &v67);
      sub_10000BD44(&v60, &qword_1003A0698, &qword_1002C4D20);
      v64[0] = v45;
      v51 = *(a1 + 200);
      v64[1] = *(a1 + 184);
      v64[2] = v51;
      v65[0] = *(a1 + 216);
      *(v65 + 9) = *(a1 + 225);
      sub_10000BD44(v64, &qword_1003A0698, &qword_1002C4D20);
      if (!v50)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (*(&v72[0] + 1))
  {
LABEL_39:
    v67 = v74[0];
    v52 = *(a1 + 200);
    v68 = *(a1 + 184);
    v69 = v52;
    v70[0] = *(a1 + 216);
    *(v70 + 9) = *(a1 + 225);
    v70[2] = v72[0];
    v53 = *(a2 + 200);
    v70[3] = *(a2 + 184);
    v70[4] = v53;
    v71[0] = *(a2 + 216);
    *(v71 + 9) = *(a2 + 225);
    sub_100065074(v74, v88, &qword_1003A0698, &qword_1002C4D20);
    sub_100065074(v72, v88, &qword_1003A0698, &qword_1002C4D20);
    v33 = &unk_1003A0700;
    v34 = &unk_1002C4958;
    goto LABEL_29;
  }

  v67 = *&v74[0];
  v54 = *(a1 + 200);
  v68 = *(a1 + 184);
  v69 = v54;
  v70[0] = *(a1 + 216);
  *(v70 + 9) = *(a1 + 225);
  sub_100065074(v74, v88, &qword_1003A0698, &qword_1002C4D20);
  sub_100065074(v72, v88, &qword_1003A0698, &qword_1002C4D20);
  sub_10000BD44(&v67, &qword_1003A0698, &qword_1002C4D20);
LABEL_41:
  v55 = *(a1 + 248);
  v56 = *(a2 + 248);
  if (v55)
  {
    if (!v56 || (sub_100151C68(v55, v56) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v56)
  {
    goto LABEL_30;
  }

  v64[0] = *(a1 + 256);
  v60 = *(a2 + 256);
  v9 = *(&v64[0] + 1);
  v10 = *&v64[0];
  v12 = *(&v60 + 1);
  v11 = v60;
  if (*(&v64[0] + 1) >> 60 == 15)
  {
    if (*(&v60 + 1) >> 60 == 15)
    {
      sub_100065074(v64, v66, &qword_1003A0438, &qword_1002C3DE0);
      sub_100065074(&v60, v66, &qword_1003A0438, &qword_1002C3DE0);
      sub_10001A074(v10, v9);
LABEL_52:
      v35 = *(a1 + 272) ^ *(a2 + 272) ^ 1;
      return v35 & 1;
    }

    goto LABEL_50;
  }

  if (*(&v60 + 1) >> 60 == 15)
  {
LABEL_50:
    v13 = &qword_1003A0438;
    v14 = &qword_1002C3DE0;
    sub_100065074(v64, v66, &qword_1003A0438, &qword_1002C3DE0);
    v15 = &v60;
    v16 = v66;
    goto LABEL_11;
  }

  sub_100065074(v64, v66, &qword_1003A0438, &qword_1002C3DE0);
  sub_100065074(&v60, v66, &qword_1003A0438, &qword_1002C3DE0);
  v57 = sub_10017688C(v10, v9, v11, v12);
  sub_10001A074(v11, v12);
  sub_10001A074(v10, v9);
  if (v57)
  {
    goto LABEL_52;
  }

LABEL_30:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1000885C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v12 = 0;
    v9 = 0xF000000000000000;
LABEL_21:
    sub_10008671C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    return sub_10001A074(v12, v9);
  }

  v3 = sub_1000F5A28(25705, 0xE200000000000000);
  v4 = 0xF000000000000000;
  if (v5)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v3, &v17);
    v6 = swift_dynamicCast();
    if (v6)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v4 = v16;
    }

    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = 0;
    v9 = 0xF000000000000000;
    goto LABEL_20;
  }

  v7 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = sub_1000F5A28(0x747069726373, 0xE600000000000000);
  v9 = 0xF000000000000000;
  if (v10)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v8, &v17);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v9 = v16;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_20:
  if (v4 >> 60 == 15)
  {
    goto LABEL_21;
  }

  type metadata accessor for JSONDecoder();
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  if (v1)
  {
    sub_10001A074(v12, v9);
    sub_10001A074(v7, v4);
  }

  else
  {
    sub_10001A074(v7, v4);

    return v17;
  }
}

uint64_t sub_1000887EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (!*(result + 16))
  {
    v5 = 0;
    goto LABEL_17;
  }

  result = sub_1000F5A28(0x6941737361707962, 0xE900000000000064);
  if ((v4 & 1) == 0)
  {
    v5 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    v8 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_18;
  }

  sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
  sub_100004074(&qword_1003A06A8, &qword_1002C4058);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v55;
  }

  else
  {
    v5 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_17;
  }

LABEL_10:
  result = sub_1000F5A28(0x4374726F70707573, 0xED0000787254706ELL);
  if (v6)
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    sub_100004074(&qword_1003A06A8, &qword_1002C4058);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v55;
    }

    else
    {
      v7 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_15:
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 0xF000000000000000;
      if (!v5)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v7 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_15;
    }
  }

  result = sub_1000F5A28(0x437972746E756F63, 0xEB0000000065646FLL);
  v11 = 0xF000000000000000;
  if (v38)
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    result = swift_dynamicCast();
    if (result)
    {
      v8 = v55;
    }

    else
    {
      v8 = 0;
    }

    if (result)
    {
      v11 = v56;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  if (*(v2 + 16) && (result = sub_1000F5A28(0xD000000000000012, 0x8000000100348F90), (v12 & 1) != 0))
  {
    sub_10000BDA4(*(v2 + 56) + 32 * result, &v57);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v55;
    }

    else
    {
      v9 = 0;
    }

    v10 = result ^ 1;
    if (!v5)
    {
LABEL_24:
      v13 = 0;
      if (!v7)
      {
        goto LABEL_54;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v14 = *(v5 + 16);
  if (v14)
  {
    v42 = v10;
    v44 = v9;
    v46 = a2;
    v50 = v11;
    v52 = v7;
    v48 = v8;
    sub_10004E2DC(0, v14, 0);
    v13 = _swiftEmptyArrayStorage;
    result = type metadata accessor for JSONDecoder();
    v15 = 0;
    v16 = (v5 + 40);
    do
    {
      if (v15 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v17 = v5;
      v19 = *(v16 - 1);
      v18 = *v16;
      sub_1000094F4(v19, *v16);
      v20 = v59;
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      v59 = v20;
      if (v20)
      {

        sub_100009548(v19, v18);
        sub_10001A074(v48, v50);
      }

      result = sub_100009548(v19, v18);
      v22 = v57;
      v21 = v58;
      v23 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v23 >= v24 >> 1)
      {
        result = sub_10004E2DC((v24 > 1), v23 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v23];
      v25[4] = v22;
      v25[5] = v21;
      v16 += 2;
      v5 = v17;
    }

    while (v14 != v15);

    a2 = v46;
    v8 = v48;
    v11 = v50;
    v7 = v52;
    v9 = v44;
    v10 = v42;
    if (!v52)
    {
      goto LABEL_54;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
    if (!v7)
    {
LABEL_54:
      v54 = 0;
      goto LABEL_57;
    }
  }

LABEL_36:
  v26 = *(v7 + 16);
  if (v26)
  {
    v43 = v10;
    v45 = v9;
    v47 = a2;
    v49 = v8;
    v51 = v11;
    sub_10004E2DC(0, v26, 0);
    result = type metadata accessor for JSONDecoder();
    v27 = 0;
    v28 = (v7 + 40);
    v29 = v59;
    v53 = v7;
    while (v27 < *(v7 + 16))
    {
      v30 = v26;
      v31 = *(v28 - 1);
      v32 = *v28;
      sub_1000094F4(v31, *v28);
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      if (v29)
      {

        sub_100009548(v31, v32);
        sub_10001A074(v49, v51);
      }

      result = sub_100009548(v31, v32);
      v34 = v57;
      v33 = v58;
      v35 = _swiftEmptyArrayStorage[2];
      v36 = _swiftEmptyArrayStorage[3];
      if (v35 >= v36 >> 1)
      {
        result = sub_10004E2DC((v36 > 1), v35 + 1, 1);
      }

      ++v27;
      _swiftEmptyArrayStorage[2] = v35 + 1;
      v37 = &_swiftEmptyArrayStorage[2 * v35];
      v37[4] = v34;
      v37[5] = v33;
      v28 += 2;
      v26 = v30;
      v29 = 0;
      v7 = v53;
      if (v30 == v27)
      {
        v59 = 0;
        v54 = _swiftEmptyArrayStorage;

        a2 = v47;
        v8 = v49;
        v11 = v51;
        v9 = v45;
        v10 = v43;
        goto LABEL_57;
      }
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_57:
  if (v11 >> 60 == 15)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    sub_1000094F4(v8, v11);
    sub_10009A814(_swiftEmptyArrayStorage);
    v41 = v59;
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    v59 = v41;
    if (v41)
    {

      sub_10001A074(v8, v11);
      sub_10001A074(v8, v11);
    }

    sub_10001A074(v8, v11);
    sub_10001A074(v8, v11);

    v39 = v57;
    v40 = v58;
  }

  *a2 = v13;
  *(a2 + 8) = v54;
  *(a2 + 16) = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_100088EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_1000F5A28(0xD000000000000013, 0x8000000100348F70);
  if (v6)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v5, v23);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if (swift_dynamicCast())
    {
      v7 = v27;
    }

    else
    {
      v7 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }
  }

  v8 = sub_1000F5A28(0x666E6F4374736F68, 0xEA00000000006769);
  if (v9)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v8, v23);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    if (swift_dynamicCast())
    {
      v10 = v27;
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if (!v7)
  {
LABEL_15:

    sub_10008671C();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

LABEL_17:
  if (!v10)
  {
    goto LABEL_15;
  }

  v13 = sub_1000885C4(v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v2)
  {
  }

  sub_1000887EC(v10, v24);
  v20 = v25;
  v21 = v26;

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  v22 = v24[1];
  *(a2 + 32) = v24[0];
  *(a2 + 48) = v22;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  return result;
}

uint64_t sub_1000890E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v6 = sub_1000F5A28(0xD000000000000012, 0x8000000100348ED0);
      v7 = 0xF000000000000000;
      if (v8)
      {
        sub_10000BDA4(*(a1 + 56) + 32 * v6, v132);
        v9 = swift_dynamicCast();
        if (v9)
        {
          v10 = v120;
        }

        else
        {
          v10 = 0;
        }

        if (v9)
        {
          v7 = *(&v120 + 1);
        }

        if (!*(a1 + 16))
        {
          goto LABEL_27;
        }

LABEL_21:
        v14 = sub_1000F5A28(0xD000000000000012, 0x8000000100348F50);
        if (v15)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v14, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v16 = v120;
          }

          else
          {
            v16 = 0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            goto LABEL_104;
          }

          v16 = 0;
        }

        v34 = sub_1000F5A28(0xD000000000000014, 0x8000000100348EF0);
        if (v35)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v34, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v17 = v120;
          }

          else
          {
            v17 = 0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_61;
          }

          goto LABEL_29;
        }

LABEL_28:
        v17 = 0;
        if (!*(a1 + 16))
        {
          goto LABEL_61;
        }

LABEL_29:
        v18 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F10);
        if (v19)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v18, v132);
          sub_100004074(&qword_1003A0190, &unk_1002C4040);
          if (swift_dynamicCast())
          {
            v20 = v120;
          }

          else
          {
            v20 = 0;
          }

          if (!v16)
          {
            goto LABEL_104;
          }

LABEL_62:
          if (v17)
          {
            if (v20)
            {
              sub_100088EA4(v20, v151);
              if (v3)
              {
                sub_10001A074(v10, v7);

LABEL_114:
              }

              v104 = a3;

              v149 = v151[2];
              v150[0] = v152[0];
              *(v150 + 9) = *(v152 + 9);
              v147 = v151[0];
              v148 = v151[1];
            }

            else
            {
              v104 = a3;
              v149 = 0u;
              memset(v150, 0, 25);
              v147 = 0u;
              v148 = 0u;
            }

            if (v7 >> 60 == 15)
            {
              v52 = 0;
            }

            else
            {
              v52 = v10;
            }

            if (v7 >> 60 == 15)
            {
              v53 = 0xF000000000000000;
            }

            else
            {
              v53 = v7;
            }

            sub_10001A3E8(v10, v7);
            v54 = sub_1000885C4(v16);
            if (v3)
            {
              sub_10000BD44(&v147, &qword_1003A0698, &qword_1002C4D20);
              sub_10001A074(v10, v7);
              sub_10001A074(v10, v7);
              goto LABEL_114;
            }

            v58 = v55;
            v113 = v56;
            v167 = v57;
            v110 = v54;

            sub_100088EA4(v17, &v153);
            sub_10001A074(v10, v7);

            sub_10001A074(0, 0xF000000000000000);
            sub_10008A2BC(0, 0, 0, 0);
            v118 = 0u;
            memset(v119, 0, sizeof(v119));
            v116 = 0u;
            v117 = 0u;
            sub_10000BD44(&v116, &qword_1003A0698, &qword_1002C4D20);
            *&v121[72] = v153;
            *&v124[9] = *(v156 + 9);
            *v124 = v156[0];
            v123 = v155;
            v122 = v154;
            memset(&v121[40], 0, 32);
            memset(&v132[56], 0, 32);
            v134 = v154;
            *&v120 = 0;
            *(&v120 + 1) = v52;
            *v121 = v53;
            *&v121[8] = v110;
            *&v121[16] = v58;
            *&v121[24] = v113;
            *&v121[32] = v167;
            v125 = v147;
            v126 = v148;
            v127 = v149;
            *v128 = v150[0];
            *&v128[16] = *&v150[1];
            v128[24] = BYTE8(v150[1]);
            v129 = 0uLL;
            v130 = 0xF000000000000000;
            v131 = 1;
            *v132 = 0;
            *&v132[8] = v52;
            *&v132[16] = v53;
            *&v132[24] = v110;
            *&v132[32] = v58;
            *&v132[40] = v113;
            v135 = v155;
            v136[0] = v156[0];
            *(v136 + 9) = *(v156 + 9);
            v133 = v153;
            *&v132[48] = v167;
            v137 = v147;
            v138 = v148;
            v139 = v149;
            v140 = v150[0];
            v141 = *&v150[1];
            v142 = BYTE8(v150[1]);
            v144 = 0;
            v143 = 0;
            v145 = 0xF000000000000000;
            v146 = 1;
            sub_100081A7C(&v120, v115);
            result = sub_100081AD8(v132);
            v60 = v131;
            v61 = v130;
            v62 = v129;
            v63 = *&v121[16];
            v64 = *&v121[32];
            v66 = v120;
            v65 = *v121;
            v67 = v123;
            v68 = *v124;
            v69 = v124[24];
            v70 = *&v121[48];
            v71 = *&v121[64];
            v72 = *&v124[16];
            v73 = *&v121[80];
            v74 = v122;
            *(v166 + 9) = *&v128[9];
            v165 = v127;
            v166[0] = *v128;
            v163 = v125;
            v164 = v126;
            a3 = v104;
            goto LABEL_119;
          }

LABEL_104:

          sub_10008671C();
          swift_allocError();
          *v51 = 1;
          swift_willThrow();
          return sub_10001A074(v10, v7);
        }

LABEL_61:
        v20 = 0;
        if (!v16)
        {
          goto LABEL_104;
        }

        goto LABEL_62;
      }

      v10 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
      v7 = 0xF000000000000000;
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 16))
  {
    v13 = 0;
    goto LABEL_48;
  }

  v11 = sub_1000F5A28(0x736B706163, 0xE500000000000000);
  if (v12)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v11, v132);
    sub_100004074(&qword_1003A06A8, &qword_1002C4058);
    if (swift_dynamicCast())
    {
      v13 = v120;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
LABEL_48:
      v25 = 0;
      v112 = 0;
      v22 = 0xF000000000000000;
      if (!*(a1 + 16))
      {
        goto LABEL_71;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_48;
    }
  }

  v21 = sub_1000F5A28(0xD000000000000012, 0x8000000100348ED0);
  v22 = 0xF000000000000000;
  if ((v23 & 1) == 0)
  {
    v25 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_43;
    }

LABEL_68:
    v112 = 0;
    goto LABEL_71;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v21, v132);
  v24 = swift_dynamicCast();
  if (v24)
  {
    v25 = v120;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v22 = *(&v120 + 1);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_68;
  }

LABEL_43:
  v26 = sub_1000F5A28(0x666E6F4365726F63, 0xEA00000000006769);
  if (v27)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v26, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v28 = swift_dynamicCast();
    v29 = v120;
    if (!v28)
    {
      v29 = 0;
    }

    v112 = v29;
    if (!*(a1 + 16))
    {
      goto LABEL_71;
    }
  }

  else
  {
    v112 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_71;
    }
  }

LABEL_49:
  v30 = sub_1000F5A28(0xD000000000000014, 0x8000000100348EF0);
  if (v31)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v30, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v32 = swift_dynamicCast();
    v33 = v120;
    if (!v32)
    {
      v33 = 0;
    }

    v167 = v33;
    if (!*(a1 + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_72;
  }

LABEL_71:
  v167 = 0;
  if (!*(a1 + 16))
  {
LABEL_53:
    v109 = 0;
    goto LABEL_89;
  }

LABEL_72:
  v36 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F10);
  if (v37)
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v36, v132);
    sub_100004074(&qword_1003A0190, &unk_1002C4040);
    v38 = swift_dynamicCast();
    v39 = v120;
    if (!v38)
    {
      v39 = 0;
    }

    v109 = v39;
    if (*(a1 + 16))
    {
LABEL_76:
      v40 = sub_1000F5A28(0xD000000000000011, 0x8000000100348F30);
      if (v41)
      {
        sub_10000BDA4(*(a1 + 56) + 32 * v40, v132);
        sub_100004074(&qword_1003A06A0, &qword_1002C4050);
        if (swift_dynamicCast())
        {
          v42 = v120;
        }

        else
        {
          v42 = 0;
        }

        if (*(a1 + 16))
        {
LABEL_81:
          v43 = sub_1000F5A28(0x614D6C656E72656BLL, 0xE900000000000070);
          v44 = 0xF000000000000000;
          if (v45)
          {
            sub_10000BDA4(*(a1 + 56) + 32 * v43, v132);
            v46 = swift_dynamicCast();
            if (v46)
            {
              v47 = v120;
            }

            else
            {
              v47 = 0;
            }

            if (v46)
            {
              v44 = *(&v120 + 1);
            }
          }

          else
          {
            v47 = 0;
          }

LABEL_99:
          v48 = v42;
          if (v112)
          {
            goto LABEL_90;
          }

LABEL_100:

          goto LABEL_101;
        }
      }

      else
      {
        v42 = 0;
        if (*(a1 + 16))
        {
          goto LABEL_81;
        }
      }

      v47 = 0;
      v44 = 0xF000000000000000;
      goto LABEL_99;
    }
  }

  else
  {
    v109 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_76;
    }
  }

LABEL_89:
  v48 = 0;
  v47 = 0;
  v44 = 0xF000000000000000;
  if (!v112)
  {
    goto LABEL_100;
  }

LABEL_90:
  if (!v167 || !v48)
  {
    goto LABEL_100;
  }

  if (v44 >> 60 == 15)
  {

LABEL_101:

    sub_10008671C();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_10001A074(v47, v44);
    return sub_10001A074(v25, v22);
  }

  v103 = v48;
  v107 = v25;
  type metadata accessor for JSONDecoder();
  sub_1000094F4(v47, v44);
  sub_10009A814(_swiftEmptyArrayStorage);
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  if (v3)
  {

    sub_10001A074(v47, v44);
    sub_10001A074(v25, v22);

    sub_10001A074(v47, v44);
  }

  sub_10001A074(v47, v44);

  if (v109)
  {

    sub_100088EA4(v59, v157);

    v149 = v157[2];
    v150[0] = v158[0];
    *(v150 + 9) = *(v158 + 9);
    v147 = v157[0];
    v148 = v157[1];
  }

  else
  {
    v149 = 0u;
    memset(v150, 0, 25);
    v147 = 0u;
    v148 = 0u;
  }

  if (v13)
  {
    v77 = *(v13 + 16);
    v78 = _swiftEmptyArrayStorage;
    if (v77)
    {
      v98 = v22;
      v105 = a3;
      *v132 = _swiftEmptyArrayStorage;

      sub_10004E404(0, v77, 0);
      v78 = *v132;
      v79 = (v13 + 40);
      do
      {
        v81 = *(v79 - 1);
        v80 = *v79;
        sub_1000094F4(v81, *v79);
        *v132 = v78;
        v83 = v78[2];
        v82 = v78[3];
        if (v83 >= v82 >> 1)
        {
          sub_10004E404((v82 > 1), v83 + 1, 1);
          v78 = *v132;
        }

        v79 += 2;
        v78[2] = v83 + 1;
        v84 = &v78[2 * v83];
        v84[4] = v81;
        v84[5] = v80;
        --v77;
      }

      while (v77);

      v22 = v98;
      a3 = v105;
    }
  }

  else
  {
    v78 = 0;
  }

  if (v22 >> 60 == 15)
  {
    v85 = 0;
  }

  else
  {
    v85 = v107;
  }

  v106 = v85;
  if (v22 >> 60 == 15)
  {
    v86 = 0xF000000000000000;
  }

  else
  {
    v86 = v22;
  }

  sub_10001A3E8(v107, v22);
  v87 = sub_1000885C4(v112);
  v99 = v88;
  v100 = v89;
  v96 = v87;
  v97 = v90;
  sub_100088EA4(v167, &v159);

  result = Data.init(hexString:)();
  v101 = result;
  v95 = v91;
  if (v91 >> 60 != 15)
  {
    sub_10001A074(v107, v22);
    sub_10001A074(v47, v44);

    sub_10001A074(0, 0xF000000000000000);
    sub_10008A2BC(0, 0, 0, 0);
    v118 = 0u;
    memset(v119, 0, sizeof(v119));
    v116 = 0u;
    v117 = 0u;
    sub_10000BD44(&v116, &qword_1003A0698, &qword_1002C4D20);
    v92 = v147;
    v93 = v148;
    v167 = *(&v149 + 1);
    v94 = v149;
    v111 = *(&v150[0] + 1);
    v114 = *&v150[0];
    v108 = *&v150[1];
    v102 = BYTE8(v150[1]);
    sub_10001A074(0, 0xF000000000000000);
    v122 = v160;
    v123 = v161;
    *v124 = v162[0];
    *&v124[9] = *(v162 + 9);
    *&v121[72] = v159;
    memset(&v121[8], 0, 32);
    memset(&v132[24], 0, 32);
    v133 = v159;
    *(v136 + 9) = *(v162 + 9);
    v136[0] = v162[0];
    *&v120 = v78;
    *(&v120 + 1) = v106;
    *v121 = v86;
    *&v121[40] = v96;
    *&v121[48] = v97;
    *&v121[56] = v99;
    *&v121[64] = v100;
    v125 = v92;
    v126 = v93;
    *&v127 = v94;
    *(&v127 + 1) = v167;
    *v128 = v114;
    *&v128[8] = v111;
    *&v128[16] = v108;
    v128[24] = v102;
    *&v129 = v103;
    *(&v129 + 1) = v101;
    v130 = v95;
    v131 = 0;
    *v132 = v78;
    *&v132[8] = v106;
    *&v132[16] = v86;
    *&v132[56] = v96;
    *&v132[64] = v97;
    *&v132[72] = v99;
    v135 = v161;
    v134 = v160;
    *&v132[80] = v100;
    v137 = v92;
    v138 = v93;
    *&v139 = v94;
    *(&v139 + 1) = v167;
    *&v140 = v114;
    *(&v140 + 1) = v111;
    v141 = v108;
    v142 = v102;
    v143 = v103;
    v144 = v101;
    v145 = v95;
    v146 = 0;
    sub_100081A7C(&v120, v115);
    result = sub_100081AD8(v132);
    v60 = v131;
    v61 = v130;
    v62 = v129;
    v63 = *&v121[16];
    v64 = *&v121[32];
    v66 = v120;
    v65 = *v121;
    v67 = v123;
    v68 = *v124;
    v69 = v124[24];
    v70 = *&v121[48];
    v71 = *&v121[64];
    v72 = *&v124[16];
    v73 = *&v121[80];
    v74 = v122;
    *(v166 + 9) = *&v128[9];
    v165 = v127;
    v166[0] = *v128;
    v163 = v125;
    v164 = v126;
LABEL_119:
    *&v132[23] = v164;
    *&v132[39] = v165;
    *&v132[55] = v166[0];
    *&v132[64] = *(v166 + 9);
    *&v132[7] = v163;
    *a3 = v66;
    *(a3 + 16) = v65;
    *(a3 + 32) = v63;
    *(a3 + 48) = v64;
    *(a3 + 64) = v70;
    *(a3 + 80) = v71;
    *(a3 + 96) = v73;
    *(a3 + 104) = v74;
    *(a3 + 120) = v67;
    *(a3 + 136) = v68;
    *(a3 + 152) = v72;
    *(a3 + 160) = v69;
    v75 = *&v132[16];
    *(a3 + 161) = *v132;
    *(a3 + 225) = *&v132[64];
    v76 = *&v132[32];
    *(a3 + 209) = *&v132[48];
    *(a3 + 193) = v76;
    *(a3 + 177) = v75;
    *(a3 + 248) = v62;
    *(a3 + 264) = v61;
    *(a3 + 272) = v60;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10008A2BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_10001A074(a3, a4);
  }
}

unint64_t sub_10008A308(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
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

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

void sub_10008A3C4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v15 = *(a1 + 16);
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      v13 = *(a1 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }
  }

  else
  {
    v12 = v11 == 0;
    if (v11)
    {
      v13 = a1 >> 32;
    }

    else
    {
      v13 = BYTE6(a2);
    }

    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = a1 + 1;
    }
  }

  v16 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v17 = v16 - v14;
  if (v16 < v14)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
LABEL_69:
    v64 = type metadata accessor for Logger();
    sub_10000403C(v64, qword_1003A0578);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "non base64 string", v67, 2u);
    }

    sub_10008671C();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();
    sub_100009548(v80, v16);
LABEL_73:

    objc_autoreleasePoolPop(v79);
    goto LABEL_74;
  }

  v18 = __OFSUB__(v16, v14);
  v76 = a3;
  if (!v18)
  {
    v71 = v16;
    v72 = a2;
    v74 = a1;
    do
    {
      if (v17 <= 3)
      {
        goto LABEL_63;
      }

      v19 = objc_autoreleasePoolPush();
      if (v17 >= 0x1388)
      {
        v20 = 5000;
      }

      else
      {
        v20 = v17;
      }

      if (__OFADD__(v14, v20))
      {
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
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v14 + v20 < v14)
      {
        goto LABEL_76;
      }

      v21 = v19;
      v78 = v4;
      v92 = v76;
      v22 = Data.subdata(in:)();
      v24 = v23;
      static String.Encoding.utf8.getter();
      v80 = v22;
      v81 = v24;
      v25 = String.init(data:encoding:)();
      if (!v26)
      {
        __break(1u);
LABEL_90:
        __break(1u);
        return;
      }

      v79 = v21;
      v82 = v25;
      v83 = v26;
      v88 = 12124;
      v89 = 0xE200000000000000;
      v86 = 47;
      v87 = 0xE100000000000000;
      v77 = sub_10008AB88();
      v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v29 = v28;

      v90 = v27;
      v91 = v29;
      v16 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) != 0)
      {
        v30 = HIBYTE(v29) & 0xF;
      }

      else
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = 7;
        if (((v29 >> 60) & ((v27 & 0x800000000000000) == 0)) != 0)
        {
          v31 = 11;
        }

        v73 = v31;

        String.index(before:)();
        a2 = 0xE100000000000000;
        v32 = String.subscript.getter();
        v34 = v33;

        if (v32 == 92 && v34 == 0xE100000000000000)
        {

          if ((v29 & 0x2000000000000000) != 0)
          {
            goto LABEL_41;
          }

LABEL_38:
          if ((v27 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_83;
          }

LABEL_42:
          String.index(before:)();
          String.remove(at:)();

          --v20;
          goto LABEL_43;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v36)
        {
          if ((v29 & 0x2000000000000000) == 0)
          {
            goto LABEL_38;
          }

LABEL_41:
          if (!v16)
          {
            goto LABEL_82;
          }

          goto LABEL_42;
        }
      }

LABEL_43:
      v38 = v90;
      v37 = v91;
      if ((String.count.getter() & 3) != 0)
      {

        v39 = String.count.getter();
        if (v39 <= 0)
        {
          v40 = -(-v39 & 3);
        }

        else
        {
          v40 = v39 & 3;
        }

        a2 = sub_10008A308(v40, v38, v37);
        v42 = v41;
        v16 = v43;
        v45 = v44;

        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          v70 = v16;
          v73 = v20;
          v46 = v14;
          v47 = v45;
          v48 = a2;
          v16 = v42;
          if ((v37 & 0x2000000000000000) != 0)
          {
            a2 = HIBYTE(v37) & 0xF;
          }

          else
          {
            a2 = v38 & 0xFFFFFFFFFFFFLL;
          }

          v49 = String.index(_:offsetBy:limitedBy:)();
          if (v50)
          {
            goto LABEL_90;
          }

          if (4 * a2 < v49 >> 14)
          {
            goto LABEL_81;
          }

          String.removeSubrange(_:)();
          a2 = v48;
          v45 = v47;
          v14 = v46;
          v20 = v73;
          v16 = v70;
        }

        v82 = a2;
        v83 = v42;
        v84 = v16;
        v85 = v45;
        v88 = 47;
        v89 = 0xE100000000000000;
        sub_10008ABDC();
        v51 = StringProtocol.components<A>(separatedBy:)();

        v52 = *(v51 + 16);

        v53 = v40 + v52 - 1;
        if (__OFADD__(v40, v52 - 1))
        {
          goto LABEL_78;
        }

        v54 = __OFSUB__(v20, v53);
        v20 -= v53;
        if (v54)
        {
          goto LABEL_79;
        }
      }

      v55 = Data.init(base64Encoded:options:)();
      v57 = v56;

      a2 = v92;
      v16 = v81;
      if (v57 >> 60 == 15)
      {
        if (qword_10039D390 != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_69;
      }

      v82 = v55;
      v83 = v57;
      sub_10004F340();
      v58 = v78;
      NSFileHandle.write<A>(contentsOf:)();
      v4 = v58;
      if (v58)
      {
        sub_100009548(v80, v16);
        sub_10001A074(v55, v57);
        goto LABEL_73;
      }

      sub_10001A074(v55, v57);
      sub_100009548(v80, v16);

      v54 = __OFADD__(v14, v20);
      v14 += v20;
      if (v54)
      {
        goto LABEL_77;
      }

      objc_autoreleasePoolPop(v79);
      v16 = v71;
      a2 = v72;
      v17 = v71 - v14;
    }

    while (!__OFSUB__(v71, v14));
  }

  __break(1u);
LABEL_63:
  if (v17 >= 1)
  {
    if (qword_10039D390 == -1)
    {
LABEL_65:
      v59 = type metadata accessor for Logger();
      sub_10000403C(v59, qword_1003A0578);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "invalid base64", v62, 2u);
      }

      sub_10008671C();
      swift_allocError();
      *v63 = 2;
      swift_willThrow();
      goto LABEL_74;
    }

LABEL_88:
    swift_once();
    goto LABEL_65;
  }

LABEL_74:
}

unint64_t sub_10008AB30()
{
  result = qword_10039DF78;
  if (!qword_10039DF78)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DF78);
  }

  return result;
}

unint64_t sub_10008AB88()
{
  result = qword_1003A3C70;
  if (!qword_1003A3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3C70);
  }

  return result;
}

unint64_t sub_10008ABDC()
{
  result = qword_1003A06C0;
  if (!qword_1003A06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06C0);
  }

  return result;
}

__n128 sub_10008AC30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008AC44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_10008ACA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008AD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008AD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10008ADE8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AE0C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008AE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10008AF1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10008AF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10008AF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008AFF0()
{
  result = qword_1003A06C8;
  if (!qword_1003A06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06C8);
  }

  return result;
}

uint64_t sub_10008B044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6941737361707962 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4374726F70707573 && a2 == 0xED0000787254706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100348F90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10008B1C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A06D0, &unk_1002C4928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_10008B474();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v25 = a2;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  v26 = 0;
  sub_1000430C8(&qword_10039FBE8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v27;
  v26 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v27;
  LOBYTE(v27) = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v24 = v13;
  LOBYTE(v27) = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = sub_10000959C(a1);
  v21 = v24;
  v22 = v25;
  *v25 = v11;
  v22[1] = v12;
  v22[2] = v21;
  v22[3] = v15;
  v22[4] = v16;
  *(v22 + 40) = v19 & 1;
  return result;
}

unint64_t sub_10008B474()
{
  result = qword_1003A06D8;
  if (!qword_1003A06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A06D8);
  }

  return result;
}

unint64_t sub_10008B4F4()
{
  result = qword_1003A0708;
  if (!qword_1003A0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0708);
  }

  return result;
}

unint64_t sub_10008B54C()
{
  result = qword_1003A0710;
  if (!qword_1003A0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0710);
  }

  return result;
}

unint64_t sub_10008B5A4()
{
  result = qword_1003A0718;
  if (!qword_1003A0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0718);
  }

  return result;
}

uint64_t sub_10008B618@<X0>(char *a1@<X8>)
{
  v3 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 200))
  {
    v12 = *(v1 + 192);
    UUID.init(uuidString:)();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10008C000(v6);
    }

    else
    {
      v14 = *(v8 + 32);
      v14(v11, v6, v7);
      v15 = sub_10008C3A8();
      if (v15 == 2 || (v15 & 1) != 0)
      {
        v14(a1, v11, v7);
        v13 = 0;
        return (*(v8 + 56))(a1, v13, 1, v7);
      }

      (*(v8 + 8))(v11, v7);
    }
  }

  v13 = 1;
  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_10008B7F4(uint64_t a1)
{
  v61 = a1;
  v59 = type metadata accessor for Date();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v59);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v60 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v58 = &v47 - v14;
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  memcpy(v62, v1, sizeof(v62));
  sub_100175270(v16);
  if (qword_10039D398 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000403C(v17, qword_1003A0720);
  (*(v2 + 16))(v7, v61, v59);
  v18 = v9[2];
  v18(v58, v16, v8);
  v55 = v16;
  v18(v60, v16, v8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v56 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v49 = v20;
    v23 = v22;
    v50 = swift_slowAlloc();
    v63 = v50;
    *v23 = 136315906;
    *(v23 + 4) = sub_100008F6C(0x6F546C656E72654BLL, 0xEB000000006E656BLL, &v63);
    *(v23 + 12) = 2080;
    v52 = sub_10008BFA8();
    v48 = v19;
    v24 = v7;
    v25 = v59;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v53 = v8;
    v51 = *(v2 + 8);
    v51(v24, v25);
    v29 = sub_100008F6C(v26, v28, &v63);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = v54;
    v31 = v58;
    DateInterval.start.getter();
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v51(v30, v25);
    v47 = v9[1];
    v47(v31, v53);
    v35 = sub_100008F6C(v32, v34, &v63);

    *(v23 + 24) = v35;
    *(v23 + 32) = 2080;
    v36 = v60;
    DateInterval.end.getter();
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v51(v30, v25);
    v40 = v36;
    v41 = v47;
    v42 = v53;
    v47(v40, v53);
    v43 = sub_100008F6C(v37, v39, &v63);

    *(v23 + 34) = v43;
    v44 = v48;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s.validate at date: %s, validityPeriod is: %s...%s", v23, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v9[1];
    v41(v60, v8);
    v41(v58, v8);
    (*(v2 + 8))(v7, v59);
    v42 = v8;
  }

  v45 = v55;
  if ((DateInterval.contains(_:)() & 1) == 0)
  {
    v57 = sub_100020148(2012, 0, 0, 0);
    swift_willThrow();
  }

  return (v41)(v45, v42);
}

uint64_t sub_10008BD6C@<X0>(char *a1@<X8>)
{
  v3 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 184))
  {
    goto LABEL_4;
  }

  v12 = *(v1 + 176);
  UUID.init(uuidString:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10008C000(v6);
LABEL_4:
    v13 = 1;
    return (*(v8 + 56))(a1, v13, 1, v7);
  }

  v14 = *(v8 + 32);
  v14(v11, v6, v7);
  v15 = sub_10008C3A8();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v14(a1, v11, v7);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v13 = 1;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_10008BF4C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0720);
  sub_10000403C(v0, qword_1003A0720);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

unint64_t sub_10008BFA8()
{
  result = qword_10039F3E8;
  if (!qword_10039F3E8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F3E8);
  }

  return result;
}

uint64_t sub_10008C000(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10008C068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100176DD8(a1, a2, __src);
  if (v5)
  {

    swift_errorRetain();
    sub_100020148(2015, 0, 0, v5);

    swift_willThrow();
  }

  v10 = __src[23];
  if (!__src[23])
  {
    goto LABEL_13;
  }

  v11 = __src[18];
  v12 = __src[19];
  v13 = __src[22];

  if (String.count.getter() != 36)
  {

LABEL_13:

    goto LABEL_14;
  }

  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  v14 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  __dst[0] = v13;
  __dst[1] = v10;
  __dst[2] = 0;
  __dst[3] = v14;
  v15 = String.Iterator.next()();
  if (v15.value._object)
  {
    countAndFlagsBits = v15.value._countAndFlagsBits;
    object = v15.value._object;
    do
    {
      Character.hexDigitValue.getter();
      if ((v19 & 1) == 0)
      {
        v20._countAndFlagsBits = countAndFlagsBits;
        v20._object = object;
        String.append(_:)(v20);
      }

      v18 = String.Iterator.next()();
      countAndFlagsBits = v18.value._countAndFlagsBits;
      object = v18.value._object;
    }

    while (v18.value._object);
  }

  v25 = String.count.getter();

  if (v25 != 32 || !v12)
  {
    goto LABEL_13;
  }

  if (v11 == a3 && v12 == a4)
  {

LABEL_25:
    memcpy(v28, __src, 0x110uLL);
    v28[17] = xmmword_1002C4B90;
    memcpy(__dst, __src, sizeof(__dst));
    v30 = xmmword_1002C4B90;
    sub_100064B9C(v28, v27);
    sub_10006413C(__dst);
    return memcpy(a5, v28, 0x120uLL);
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (qword_10039D398 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A0720);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "tpid bad format or supplied seid not matching jwt seid", v24, 2u);
  }

  sub_100020148(2011, 0, 0, 0);
  swift_willThrow();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_10008C3EC(__dst);
}