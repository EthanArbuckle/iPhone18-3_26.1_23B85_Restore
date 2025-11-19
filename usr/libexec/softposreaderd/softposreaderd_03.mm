uint64_t sub_1000488A8(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 <= 0.0)
    {
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000403C(v20, qword_10039FC08);
      v12 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v21))
      {
        goto LABEL_12;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v15 = "Renewing certificates now";
      v16 = v21;
      v17 = v12;
      v18 = v22;
      v19 = 2;
    }

    else
    {
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000403C(v11, qword_10039FC08);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_12;
      }

      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      v15 = "Will renew certificates after %f s";
      v16 = v13;
      v17 = v12;
      v18 = v14;
      v19 = 12;
    }

    _os_log_impl(&_mh_execute_header, v17, v16, v15, v18, v19);

LABEL_12:

    v23 = sub_100048C8C(v7);
    v25 = v24;
    (*(v3 + 32))(v9, v7, v2);
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v23;
    v27 = v25;
    sub_100043C80(inited);
    sub_10004772C(v9, v27);

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_100048C8C(unint64_t a1)
{
  v2 = v1;
  v106 = *v1;
  countAndFlagsBits = type metadata accessor for Date();
  object = *(countAndFlagsBits - 8);
  v6 = *(object + 64);
  __chkstk_darwin(countAndFlagsBits);
  v103 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v113 = (&v99 - v10);
  v109 = type metadata accessor for DispatchTime();
  v111 = *(v109 - 8);
  v11 = *(v111 + 64);
  __chkstk_darwin(v109);
  *&v110 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  *&v107 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v99 - v17;
  v115 = type metadata accessor for StopWatch();
  v108 = *(v115 - 1);
  v19 = *(v108 + 64);
  __chkstk_darwin(v115);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D368 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_10039FC08);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v112 = v2;
    v101 = countAndFlagsBits;
    v102 = a1;
    v100 = object;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v116[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = _typeName(_:qualified:)();
      v29 = sub_100008F6C(v27, v28, v116);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100347FA0, _swiftEmptyArrayStorage);
      v32 = sub_100008F6C(v30, v31, v116);

      *(v26 + 14) = v32;
      v2 = v112;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v106 = *(*(v2 + 248) + 56);
    os_unfair_lock_lock(v106 + 8);
    v33 = v111;
    v34 = *(v111 + 56);
    v35 = v109;
    v34(v18, 1, 1, v109);
    v36 = v107;
    v34(v107, 1, 1, v35);
    v34(v21, 1, 1, v35);
    v37 = *(v115 + 5);
    v34(v21 + v37, 1, 1, v35);
    sub_10001A178(v18, v21);
    sub_10001A178(v36, v21 + v37);
    v38 = v110;
    static DispatchTime.now()();
    sub_10000BD44(v21, &qword_10039E290, &unk_1002C37C0);
    (*(v33 + 32))(v21, v38, v35);
    v39 = v35;
    v40 = v112;
    v34(v21, 0, 1, v39);
    v41 = v113;
    sub_10001A1E8(v21, v113);
    (*(v108 + 56))(v41, 0, 1, v115);
    v42 = v106;
    sub_10002D278(v41, 0x5474736575716552, 0xEB00000000656D69);
    sub_10001A24C(v21);
    os_unfair_lock_unlock(v42 + 8);
    v120 = 0;
    v43 = v114;
    v44 = sub_100049D10();
    v46 = v45;
    v47 = v43;
    v109 = v44;
    if (v43)
    {
      v48 = v40[29];
      v49 = v40[30];
      sub_10000BE18(v40 + 26, v48);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 0x726F727265;
      *(inited + 40) = 0xE500000000000000;
      v116[0] = v43;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v51 = String.init<A>(describing:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v51;
      *(inited + 56) = v52;
      v53 = sub_100184010(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0xAu, v53, v48, v49);
      v2 = v112;

LABEL_37:
      _s3__C4CodeOMa_2(0);
      v116[0] = 2034;
      swift_errorRetain();
      sub_1000508C0(&qword_10039DBE8, _s3__C4CodeOMa_2);
      v93 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v93)
      {
        v94 = 4;
      }

      else
      {
        v116[0] = 2000;
        swift_errorRetain();
        v95 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if (v95)
        {
          v94 = 1;
        }

        else
        {
          v116[0] = 2025;
          swift_errorRetain();
          v96 = static _ErrorCodeProtocol.~= infix(_:_:)();

          if ((v96 & 1) != 0 || (v116[0] = v47, swift_errorRetain(), sub_100004074(&unk_1003A3C00, &unk_1002C16C0), v97 = swift_dynamicCast(), v98 = v119, , v97) && v98 == 2)
          {
            v94 = 2;
          }

          else
          {
            v94 = 3;
          }
        }
      }

      v120 = v94;
      swift_willThrow();
      goto LABEL_47;
    }

    sub_10004A5B0(v54, 200, 0x702D657275636573, 0xEE0064616F6C7961);
    v108 = v46;
    v111 = 0;

    sub_10000CCE4((v40 + 26), v116);
    v18 = v117;
    v55 = v118;
    sub_10000BE18(v116, v117);
    *&v110 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    result = swift_initStackObject();
    v57 = result;
    v107 = xmmword_1002C1670;
    *(result + 16) = xmmword_1002C1670;
    *(result + 32) = 1701605234;
    a1 = result + 32;
    *(result + 72) = &type metadata for Int;
    *(result + 80) = &protocol witness table for Int;
    *(result + 40) = 0xE400000000000000;
    *(result + 48) = 200;
    *(result + 88) = 0x747365676964;
    *(result + 96) = 0xE600000000000000;
    v115 = v55;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v58 = *(v54 + 32);
LABEL_9:
    v59 = v58;
    v60 = SecCertificateRef.fingerprint.getter();
    v21 = v61;

    v62 = Data.base64EncodedString(options:)(0);
    sub_100009548(v60, v21);
    *(v57 + 128) = &type metadata for String;
    *(v57 + 136) = &protocol witness table for String;
    *(v57 + 104) = v62;
    v63 = sub_100184010(v57);
    swift_setDeallocating();
    countAndFlagsBits = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(9u, v63, v18, v115);

    sub_10000959C(v116);
    v64 = v108;
    v65 = v111;
    v2 = v112;
    sub_10004A978(v108, 300, 7596553831663430000, 0xEE006E6F69746164);
    v111 = v65;
    if (!v65)
    {
      v66 = *(v64 + 16);

      v106 = v66;
      if (v66)
      {
        object = 0;
        v104 = countAndFlagsBits;
        v105 = v64 + 32;
        do
        {
          if (object >= *(v64 + 16))
          {
            goto LABEL_50;
          }

          v18 = *(v105 + 8 * object);
          v67 = *(v2 + 232);
          a1 = *(v2 + 240);
          countAndFlagsBits = sub_10000BE18((v2 + 208), v67);
          v2 = swift_initStackObject();
          *(v2 + 16) = v107;
          *(v2 + 32) = 1701605234;
          *(v2 + 72) = &type metadata for Int;
          *(v2 + 40) = 0xE400000000000000;
          *(v2 + 48) = 300;
          *(v2 + 80) = &protocol witness table for Int;
          *(v2 + 88) = 0x747365676964;
          *(v2 + 96) = 0xE600000000000000;
          v114 = a1;
          v115 = v67;
          v113 = countAndFlagsBits;
          if ((v18 & 0xC000000000000001) != 0)
          {

            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v68 = *(v18 + 32);

            v69 = v68;
          }

          v70 = v69;
          ++object;
          v21 = SecCertificateRef.fingerprint.getter();
          countAndFlagsBits = v71;

          v72 = Data.base64EncodedString(options:)(0);
          sub_100009548(v21, countAndFlagsBits);
          *(v2 + 128) = &type metadata for String;
          *(v2 + 136) = &protocol witness table for String;
          *(v2 + 104) = v72;
          a1 = sub_100184010(v2);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_1000C2288(9u, a1, v115, v114);

          v65 = v111;
          v2 = v112;
          v64 = v108;
        }

        while (v106 != object);
      }

      countAndFlagsBits = v103;
      sub_10004B00C(v103);
      if (!v65)
      {
        (*(v100 + 32))(v102, countAndFlagsBits, v101);
LABEL_47:
        sub_100049BD0(v2, &v120);
        return v109;
      }

      v111 = v65;
    }

    object = v109;
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_1002C1660;
    *(v73 + 32) = object;
    v116[0] = v64;
    sub_100043C80(v73);
    v74 = v116[0];
    v18 = *(v116[0] + 16);
    if (!v18)
    {

      v75 = _swiftEmptyArrayStorage;
LABEL_32:
      v84 = v75[2];
      v47 = v111;
      if (v84)
      {
        v115 = v75;
        v85 = v75 + 5;
        v110 = xmmword_1002C1670;
        do
        {
          v87 = *(v85 - 1);
          v86 = *v85;
          v88 = v112[29];
          v114 = v112[30];
          v113 = sub_10000BE18(v112 + 26, v88);
          sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
          v89 = swift_initStackObject();
          *(v89 + 16) = v110;
          *(v89 + 32) = 0x747365676964;
          *(v89 + 72) = &type metadata for String;
          *(v89 + 40) = 0xE600000000000000;
          *(v89 + 48) = v87;
          v47 = v111;
          *(v89 + 56) = v86;
          *(v89 + 80) = &protocol witness table for String;
          *(v89 + 88) = 0x726F727265;
          *(v89 + 96) = 0xE500000000000000;
          v116[0] = v47;

          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v90 = String.init<A>(describing:)();
          *(v89 + 128) = &type metadata for String;
          *(v89 + 136) = &protocol witness table for String;
          *(v89 + 104) = v90;
          *(v89 + 112) = v91;
          v92 = sub_100184010(v89);
          swift_setDeallocating();
          sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
          swift_arrayDestroy();
          sub_1000C2288(0xAu, v92, v88, v114);

          v85 += 2;
          --v84;
        }

        while (v84);

        v2 = v112;
      }

      else
      {
      }

      goto LABEL_37;
    }

    v116[0] = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v18, 0);
    v2 = 32;
    v75 = v116[0];
    v114 = v74;
    while (1)
    {
      a1 = *(v74 + v2);
      v115 = v75;
      if ((a1 & 0xC000000000000001) != 0)
      {

        v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_26;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v76 = *(a1 + 32);

      v77 = v76;
LABEL_26:
      v78 = v77;
      v79 = SecCertificateRef.fingerprint.getter();
      v81 = v80;

      v82 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v82._countAndFlagsBits;
      object = v82._object;
      sub_100009548(v79, v81);

      v75 = v115;
      v116[0] = v115;
      v21 = v115[2];
      v83 = v115[3];
      if (v21 >= v83 >> 1)
      {
        sub_10004E2DC((v83 > 1), v21 + 1, 1);
        v75 = v116[0];
      }

      v75[2] = v21 + 1;
      *&v75[2 * v21 + 4] = v82;
      v2 += 8;
      --v18;
      v74 = v114;
      if (!v18)
      {

        v2 = v112;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_100049BD0(uint64_t a1, char *a2)
{
  v3 = *(a1 + 248);
  v4 = *(v3 + 56);
  os_unfair_lock_lock(v4 + 8);
  sub_10011CF8C(&v4[4], 2);
  os_unfair_lock_unlock(v4 + 8);
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 12;
  v6 = inited + 32;
  v7 = qword_1002C3A48[*a2];
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = v7;
  sub_100184144(inited);
  swift_setDeallocating();
  sub_10000BD44(v6, &qword_10039FED8, &unk_1002C37D0);
  v8 = *(v3 + 56);
  os_unfair_lock_lock((v8 + 32));
  sub_1000507B4((v8 + 16));
  os_unfair_lock_unlock((v8 + 32));

  v9 = *(v3 + 56);
  os_unfair_lock_lock((v9 + 32));
  sub_100026328((v9 + 16));
  os_unfair_lock_unlock((v9 + 32));
}

uint64_t sub_100049D10()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[35];
  v5 = v0[36];
  sub_10000BE18(v0 + 32, v4);
  (*(v5 + 8))(v4, v5);
  if (v1)
  {
    if (qword_10039D368 != -1)
    {
LABEL_43:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_10039FC08);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v10 = 136315650;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100008F6C(v11, v12, &v74);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_100008F6C(0xD00000000000001CLL, 0x8000000100347F80, &v74);
      *(v10 + 22) = 2080;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_100008F6C(v14, v15, &v74);

      *(v10 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s: Could not get certificates: %s", v10, 0x20u);
      swift_arrayDestroy();
    }

    return swift_willThrow();
  }

  v17 = v6;
  type metadata accessor for SecCertificate(0);
  v18 = static SecCertificateRef.parseList(pemRepresentation:)();

  if (!v18)
  {
LABEL_46:

    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_10000403C(v62, qword_10039FC08);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Certificate for encrypting payloads is not in PEM representation", v65, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v66 = 2;
    return swift_willThrow();
  }

  if (v18 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_9:
  v70 = v2[30];
  v72 = v2[29];
  sub_10000BE18(v2 + 26, v72);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  result = swift_initStackObject();
  v20 = result;
  *(result + 16) = xmmword_1002C1670;
  *(result + 32) = 1701605234;
  *(result + 72) = &type metadata for Int;
  *(result + 80) = &protocol witness table for Int;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 200;
  *(result + 88) = 0x747365676964;
  *(result + 96) = 0xE600000000000000;
  v68 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v18 + 32);
  }

  v22 = v21;
  v23 = SecCertificateRef.fingerprint.getter();
  v25 = v24;

  v26 = Data.base64EncodedString(options:)(0);
  sub_100009548(v23, v25);
  *(v20 + 128) = &type metadata for String;
  *(v20 + 136) = &protocol witness table for String;
  *(v20 + 104) = v26;
  v27 = sub_100184010(v20);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(8u, v27, v72, v70);

  v67 = v2;
  v71 = v2[31];
  sub_1000245C8(&off_10037E0E8);
  v28 = *(v17 + 16);
  v29 = _swiftEmptyArrayStorage;
  v69 = _swiftEmptyArrayStorage;
  if (!v28)
  {
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v17 + 40;
  while (2)
  {
    v32 = (v31 + 16 * v30);
    v33 = v30;
    while (1)
    {
      if (v33 >= *(v17 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v35 = *(v32 - 1);
      v34 = *v32;

      v36 = static SecCertificateRef.parseList(pemRepresentation:)();

      if (v36)
      {
        break;
      }

LABEL_15:
      ++v33;
      v32 += 2;
      if (v28 == v33)
      {
        goto LABEL_27;
      }
    }

    if (!(v36 >> 62))
    {
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_20:

      goto LABEL_15;
    }

LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10004D96C(0, *(v29 + 2) + 1, 1, v29);
    }

    v38 = *(v29 + 2);
    v37 = *(v29 + 3);
    v39 = v29;
    if (v38 >= v37 >> 1)
    {
      v39 = sub_10004D96C((v37 > 1), v38 + 1, 1, v29);
    }

    v30 = v33 + 1;
    v29 = v39;
    *(v39 + 2) = v38 + 1;
    *&v39[8 * v38 + 32] = v36;
    v31 = v17 + 40;
    if (v28 - 1 != v33)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v40 = *(v29 + 2);
  if (v40)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v40, 0);
    v41 = _swiftEmptyArrayStorage;
    v42 = (v29 + 32);
    do
    {
      v43 = *v42;
      if ((*v42 & 0xC000000000000001) != 0)
      {
        v55 = *v42;

        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v44 = *(v43 + 32);
        v45 = *v42;

        v46 = v44;
      }

      v47 = v46;
      v48 = SecCertificateRef.fingerprint.getter();
      v50 = v49;

      v51 = Data.base64EncodedString(options:)(0);
      sub_100009548(v48, v50);

      v74 = v41;
      v53 = v41[2];
      v52 = v41[3];
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_10004E2DC((v52 > 1), v53 + 1, 1);
        v41 = v74;
      }

      v41[2] = v54;
      *&v41[2 * v53 + 4] = v51;
      ++v42;
      --v40;
    }

    while (v40);
    v69 = v41;
LABEL_38:
    v56 = v69 + 5;
    do
    {
      v58 = *(v56 - 1);
      v57 = *v56;
      v59 = v67[29];
      v73 = v67[30];
      sub_10000BE18(v67 + 26, v59);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1670;
      *(inited + 32) = 1701605234;
      *(inited + 72) = &type metadata for Int;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 300;
      *(inited + 80) = &protocol witness table for Int;
      *(inited + 88) = 0x747365676964;
      *(inited + 96) = 0xE600000000000000;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = v58;
      *(inited + 112) = v57;

      v61 = sub_100184010(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000C2288(8u, v61, v59, v73);

      sub_1000245C8(&off_10037E110);
      v56 += 2;
      --v54;
    }

    while (v54);
  }

  else
  {
    v54 = _swiftEmptyArrayStorage[2];
    if (v54)
    {
      goto LABEL_38;
    }
  }

  return v68;
}

void sub_10004A5B0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = v4[7];
  v10 = v4[8];
  sub_10000BE18(v4 + 4, v11);
  v31 = a3;
  v12 = sub_10014D0AC(a2, a3, a4);
  v14 = v13;
  v15 = sub_10015623C(a1);
  sub_10009A400(v12, v14, v15, v16, v11, v10);
  if (v5)
  {

    sub_100009548(v12, v14);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_10039FC08);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100008F6C(v31, a4, &v32);
      *(v20 + 12) = 2080;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100008F6C(v21, v22, &v32);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "error persisting %s certificate: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {

    sub_100009548(v12, v14);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_10039FC08);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_100008F6C(v31, a4, &v32);
      *(v27 + 12) = 2080;
      v28 = sub_100156088(a1);
      v30 = sub_100008F6C(v28, v29, &v32);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Saved %s certificate: %s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_10004A978(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v6, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v59 = v6;
    v60 = a1 + 32;
    while (1)
    {
      v11 = *(v60 + 8 * v9);
      v12 = v11;
      if (v11 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        v62 = v9;
        if (!v13)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = v9;
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      sub_10004E2DC(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_32:
        swift_once();
LABEL_23:
        v39 = type metadata accessor for Logger();
        sub_10000403C(v39, qword_10039FC08);

        swift_errorRetain();
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v42 = 136315394;
          *(v42 + 4) = sub_100008F6C(a3, v7, &v64);
          *(v42 + 12) = 2080;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v43 = String.init<A>(describing:)();
          v45 = sub_100008F6C(v43, v44, &v64);

          *(v42 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "error persisting %s certificates: %s", v42, 0x16u);
          swift_arrayDestroy();
        }

        sub_10004F3D0();
        swift_allocError();
        *v46 = 7;
        swift_willThrow();

        return;
      }

      v61 = v10;
      v14 = 0;
      v15 = v12;
      v63 = v12 & 0xC000000000000001;
      v16 = v12;
      v17 = v13;
      do
      {
        if (v63)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v15 + 8 * v14 + 32);
        }

        v19 = v18;
        v20 = SecCertificateRef.pemRepresentation.getter();
        v22 = v21;

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_10004E2DC((v23 > 1), v24 + 1, 1);
        }

        ++v14;
        _swiftEmptyArrayStorage[2] = v24 + 1;
        v25 = &_swiftEmptyArrayStorage[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v15 = v16;
      }

      while (v17 != v14);
      v10 = v61;
      v7 = _swiftEmptyArrayStorage;
LABEL_16:
      sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
      v26 = BidirectionalCollection<>.joined(separator:)();
      v28 = v27;

      v64 = v10;
      v30 = v10[2];
      v29 = v10[3];
      if (v30 >= v29 >> 1)
      {
        sub_10004E2DC((v29 > 1), v30 + 1, 1);
        v10 = v64;
      }

      v9 = v62 + 1;
      v10[2] = v30 + 1;
      v31 = &v10[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      if (v62 + 1 == v59)
      {
        v4 = v54;
        a4 = v55;
        v32 = v10;
        goto LABEL_21;
      }
    }
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_21:
  v34 = v4[7];
  v33 = v4[8];
  sub_10000BE18(v4 + 4, v34);
  v7 = a4;
  v35 = sub_10014D0AC(a2, a3, a4);
  v37 = v36;
  v64 = v32;
  v38 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBD8);
  sub_10009A268(v35, v37, &v64, v34, v38, v33);
  if (v57)
  {
    sub_100009548(v35, v37);

    if (qword_10039D368 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  sub_100009548(v35, v37);

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000403C(v47, qword_10039FC08);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_100008F6C(a3, v7, &v64);
    *(v50 + 12) = 2080;
    v51 = Array.debugDescription.getter();
    v53 = sub_100008F6C(v51, v52, &v64);

    *(v50 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v48, v49, "Saved %s certificates: %s", v50, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10004B00C@<X0>(unint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *sub_10000BE18(v1 + 9, v1[12]);
  sub_100043268(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000BD44(v8, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D368 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_10039FC08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to schedule renewal. Could not calculate secure now", v18, 2u);
    }

    sub_10004F3D0();
    swift_allocError();
    *v19 = 6;
    return swift_willThrow();
  }

  else
  {
    v45 = a1;
    (*(v10 + 32))(v13, v8, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v47 = v21 + 604800.0;
    v22 = sub_100146E20(&v47, &v48);
    v46 = v9;
    v23 = v13;
    v24 = v22;
    v25 = v10;
    v27 = v26;
    v28 = v3[7];
    v29 = v3[8];
    sub_10000BE18(v3 + 4, v28);
    (*(v29 + 40))(v3[2], v3[3], v24, v27, v28, v29);
    if (v2)
    {
      v43 = v25;
      v44 = v23;
      v30 = v46;
      v45 = v27;
      if (qword_10039D368 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000403C(v31, qword_10039FC08);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      v34 = v30;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v47 = *&v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = Error.localizedDescription.getter();
        v39 = sub_100008F6C(v37, v38, &v47);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Could not save certificate renewal deadline: %s", v35, 0xCu);
        sub_10000959C(v36);
      }

      v40 = v45;
      v41 = v43;
      sub_10004F3D0();
      swift_allocError();
      *v42 = 8;
      swift_willThrow();
      sub_100009548(v24, v40);

      return (*(v41 + 8))(v44, v34);
    }

    else
    {
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100009548(v24, v27);
      return (*(v25 + 8))(v23, v46);
    }
  }
}

uint64_t sub_10004B520@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[8];
  sub_10000BE18(v1 + 4, v3);
  v5 = (*(v4 + 32))(v1[2], v1[3], v3, v4);
  v6 = v5;
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    if (v5 <= v5 >> 32)
    {
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
LABEL_22:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_23;
      }

      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (!__OFSUB__(v6, v17))
      {
        v14 = (v6 - v17 + v16);
        result = __DataStorage._length.getter();
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_23:
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    v10 = *(v5 + 16);
    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
LABEL_20:
      __DataStorage._length.getter();
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (!__OFSUB__(v10, v13))
    {
      v14 = (v10 - v13 + v12);
      __DataStorage._length.getter();
      if (v14)
      {
LABEL_13:
        v19 = *v14;
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_14:
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100009548(v6, v8);
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);

  return v21(a1, 0, 1, v20);
}

unint64_t sub_10004B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = v3[8];
  sub_10000BE18(v3 + 4, v3[7]);
  v10 = sub_10014D0AC(a1, a2, a3);
  v12 = v11;
  v13 = (*(v9 + 32))();
  v15 = v14;
  sub_100009548(v10, v12);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  if (v16)
  {
    type metadata accessor for SecCertificate(0);
    v17 = static SecCertificateRef.parseList(pemRepresentation:)();

    if (v17)
    {
      if (v17 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        sub_100009548(v13, v15);
        return v17;
      }
    }
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000403C(v19, qword_10039FC08);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "malformed certificate", v22, 2u);
  }

  sub_100009548(v13, v15);

  return 0;
}

char *sub_10004BAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[7];
  v8 = v3[8];
  sub_10000BE18(v3 + 4, v7);
  v9 = sub_10014D0AC(a1, a2, a3);
  v11 = v10;
  v12 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_1000430C8(&qword_10039FBE8);
  sub_10009A1A4(v9, v11, v7, v12, v8);
  sub_100009548(v9, v11);
  v19 = v29;
  v20 = v29[2];
  if (v20)
  {
    v21 = 0;
    v18 = _swiftEmptyArrayStorage;
LABEL_7:
    v22 = (v19 + 40 + 16 * v21);
    v23 = v21;
    while (1)
    {
      if (v23 >= *(v19 + 16))
      {
        __break(1u);
        swift_once();
        v13 = type metadata accessor for Logger();
        sub_10000403C(v13, qword_10039FC08);

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v29 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_100008F6C(a2, v19, &v29);
          _os_log_impl(&_mh_execute_header, v14, v15, "No stored %s certificates", v16, 0xCu);
          sub_10000959C(v17);
        }

        return 0;
      }

      v24 = *(v22 - 1);
      a2 = *v22;
      type metadata accessor for SecCertificate(0);

      v25 = static SecCertificateRef.parseList(pemRepresentation:)();

      if (v25)
      {
        if (v25 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_15:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_10004D96C(0, *(v18 + 2) + 1, 1, v18);
            }

            v27 = *(v18 + 2);
            v26 = *(v18 + 3);
            a2 = v27 + 1;
            if (v27 >= v26 >> 1)
            {
              v18 = sub_10004D96C((v26 > 1), v27 + 1, 1, v18);
            }

            v21 = v23 + 1;
            *(v18 + 2) = a2;
            *&v18[8 * v27 + 32] = v25;
            if (v20 - 1 != v23)
            {
              goto LABEL_7;
            }

            goto LABEL_22;
          }
        }

        else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }
      }

      ++v23;
      v22 += 2;
      if (v20 == v23)
      {
        goto LABEL_22;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_22:

  return v18;
}

uint64_t sub_10004BE4C()
{
  v1 = *v0;
  v2 = v0[25];
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_10004BED8(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_10039FC08);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v32);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;

    v13 = showFunction(signature:_:)(0xD000000000000027, 0x8000000100347EB0, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v32);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_100050224();
  if (!v3)
  {
    v21 = result;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = Data.sha256Digest.getter();
    v29 = v26;
    v27 = sub_10004C2B0(a1, a2, a3, v21, v22, v23, v24);
    v28 = SecKeyRef.verifySignature(algorithm:data:signature:)();

    if ((v28 & 1) == 0)
    {
      sub_100020C74(10009, 0, 0, 0);
      swift_willThrow();
    }

    sub_100009548(v25, v29);
    sub_100009548(v21, v22);
    return sub_100009548(v23, v24);
  }

  return result;
}

uint64_t sub_10004C2B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = *v7;
  if (qword_10039D368 != -1)
  {
LABEL_68:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_10039FC08);
  sub_1000094F4(a4, a5);
  sub_1000094F4(a6, a7);

  v68 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  sub_100009548(a4, a5);
  sub_100009548(a6, a7);
  v73 = a6;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    a4 = a7;
    v21 = sub_100008F6C(v19, v20, &v74);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1670;
    *(v22 + 56) = &type metadata for String;
    v65 = v17;
    v23 = a2;
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;

    v24 = Data.hexString()();
    *(v22 + 88) = &type metadata for String;
    *(v22 + 64) = v24;
    v25 = showFunction(signature:_:)(0xD000000000000021, 0x8000000100347E60, v22);
    v27 = v26;

    v28 = sub_100008F6C(v25, v27, &v74);

    *(v18 + 14) = v28;
    a7 = a4;
    _os_log_impl(&_mh_execute_header, v16, v65, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = a2;
  }

  v29 = v71;
  v30 = sub_10004671C(a1, v23, a3);
  if (!v72)
  {
    a6 = v30;
    v71 = 0;
    a5 = *(v30 + 16);
    if (a5)
    {
      v31 = 0;
      if (v73)
      {
        v32 = 0;
      }

      else
      {
        v32 = a7 == 0xC000000000000000;
      }

      v33 = !v32;
      LODWORD(a2) = v33;
      v72 = a7 >> 62;
      v34 = __OFSUB__(HIDWORD(v73), v73);
      v66 = v34;
      a1 = BYTE6(a7);
      v67 = v30;
      do
      {
        if (v31 >= *(a6 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v35 = a6 + 8 * v31;
        v36 = *(v35 + 32);
        if ((v36 & 0xC000000000000001) != 0)
        {
          v60 = *(v35 + 32);

          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v37 = *(v36 + 32);

          v38 = v37;
        }

        v39 = v38;
        v29 = SecCertificateRef.publicKey.getter();

        if (!v29)
        {
LABEL_58:

          v29 = v68;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v61, v62))
          {
            goto LABEL_61;
          }

          v29 = swift_slowAlloc();
          *v29 = 0;
          v63 = "Could not get public key from certificate";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v61, v62, v63, v29, 2u);

          goto LABEL_61;
        }

        v40 = SecKeyRef.externalRepresentation.getter();
        if (v41 >> 60 == 15)
        {

          goto LABEL_58;
        }

        a4 = v40;
        a3 = v41;
        result = Data.sha256Digest.getter();
        v44 = result;
        v45 = v43;
        v46 = v43 >> 62;
        if (v43 >> 62 == 3)
        {
          if (result)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43 == 0xC000000000000000;
          }

          v48 = v72;
          v50 = !v47 || v72 < 3;
          if (((v50 | a2) & 1) == 0)
          {

            sub_10001A074(a4, a3);
            sub_100009548(0, 0xC000000000000000);
            return v29;
          }

          v51 = 0;
        }

        else
        {
          v48 = v72;
          if (v46)
          {
            if (v46 == 1)
            {
              LODWORD(v51) = HIDWORD(result) - result;
              if (__OFSUB__(HIDWORD(result), result))
              {
                goto LABEL_72;
              }

              v51 = v51;
            }

            else
            {
              v53 = *(result + 16);
              v52 = *(result + 24);
              v54 = __OFSUB__(v52, v53);
              v51 = v52 - v53;
              if (v54)
              {
                goto LABEL_71;
              }
            }
          }

          else
          {
            v51 = BYTE6(v43);
          }
        }

        if (v48 > 1)
        {
          if (v48 != 2)
          {
            if (!v51)
            {
              goto LABEL_63;
            }

LABEL_18:

            sub_10001A074(a4, a3);
            sub_100009548(v44, v45);
            goto LABEL_19;
          }

          v57 = *(v73 + 16);
          v56 = *(v73 + 24);
          v54 = __OFSUB__(v56, v57);
          v55 = v56 - v57;
          if (v54)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            return result;
          }
        }

        else
        {
          v55 = a1;
          if (v48)
          {
            v55 = HIDWORD(v73) - v73;
            if (v66)
            {
              goto LABEL_70;
            }
          }
        }

        if (v51 != v55)
        {
          goto LABEL_18;
        }

        if (v51 < 1)
        {
LABEL_63:

          sub_10001A074(a4, a3);
          sub_100009548(v44, v45);
          return v29;
        }

        sub_1000094F4(v73, a7);
        v58 = a7;
        v59 = sub_10004D320(v44, v45, v73, a7);
        sub_10001A074(a4, a3);
        sub_100009548(v44, v45);
        if (v59)
        {

          return v29;
        }

        a7 = v58;
        a6 = v67;
LABEL_19:
        ++v31;
      }

      while (a5 != v31);
    }

    v29 = v68;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v63 = "No stored public key matches input token keyIdentifier";
      goto LABEL_60;
    }

LABEL_61:

    sub_10004F3D0();
    swift_allocError();
    *v64 = 3;
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_10004C93C()
{
  if (*v0)
  {
    result = 0x746E65644979656BLL;
  }

  else
  {
    result = 0x727574616E676973;
  }

  *v0;
  return result;
}

uint64_t sub_10004C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669)
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

uint64_t sub_10004CA74(uint64_t a1)
{
  v2 = sub_100050CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004CAB0(uint64_t a1)
{
  v2 = sub_100050CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004CAEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100050AC0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10004CB1C()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));
  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));
  sub_10000959C((v0 + 112));
  sub_10000959C((v0 + 152));
  v1 = *(v0 + 192);

  sub_10000959C((v0 + 208));
  v2 = *(v0 + 248);

  sub_10000959C((v0 + 256));
  v3 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256;
  v4 = type metadata accessor for HPKE.Ciphersuite();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384, v4);
  v5(v0 + OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521, v4);
  return v0;
}

uint64_t sub_10004CC18()
{
  sub_10004CB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CertificateManager()
{
  result = qword_10039FC48;
  if (!qword_10039FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CCC4()
{
  result = type metadata accessor for HPKE.Ciphersuite();
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

uint64_t sub_10004CD94()
{
  v1 = *(*v0 + 200);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_10004CDF4()
{
  v1 = *(*v0 + 200);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

double sub_10004CEA8@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(*v1 + 200);
  sub_100004074(&qword_10039FE20, &qword_1002C36E0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    result = *&v6;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

void sub_10004CF70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[27];
  if (v10 && (v11 = a1[12], v12 = a1[26], v27 = 0, sub_10004F190(v12, v10)))
  {
    v13 = v2[10];
    v14 = v2[11];
    sub_10000BE18(v2 + 7, v13);
    (*(v14 + 24))(v13, v14);
    Date.init(timeIntervalSince1970:)();
    if (qword_10039D658 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A42D8);
    (*(v6 + 16))(v9, a2, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136315650;
      *(v18 + 4) = sub_100008F6C(0xD000000000000017, 0x8000000100347E20, &v27);
      *(v18 + 12) = 2080;
      v19 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100347E40, _swiftEmptyArrayStorage);
      v21 = sub_100008F6C(v19, v20, &v27);

      *(v18 + 14) = v21;
      *(v18 + 22) = 2080;
      sub_1000508C0(&qword_10039F3E8, &type metadata accessor for Date);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      v25 = sub_100008F6C(v22, v24, &v27);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s result: %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_100020C74(10007, 0xD000000000000022, 0x8000000100347DF0, 0);
    swift_willThrow();
  }
}

uint64_t sub_10004D320(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_10004F288(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100009548(a3, a4);
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
  sub_1000F5728(v13, a3, a4, &v12);
  v10 = v4;
  sub_100009548(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_10004D4B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D5BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE50, &unk_1002C3710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004D6C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FE68, &qword_1002C3730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D810(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE58, &qword_1002C96F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004D96C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004DA78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE48, &qword_1002C3708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004DB7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004DCB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FEB0, &unk_1002C37A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10004DDCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100004074(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_10004DEE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004074(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10004E0BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE78, &qword_1002C3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10004E1BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE60, &qword_1002C3728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004E2DC(char *a1, int64_t a2, char a3)
{
  result = sub_10004E4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E2FC(void *a1, int64_t a2, char a3)
{
  result = sub_10004E5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E31C(char *a1, int64_t a2, char a3)
{
  result = sub_10004E71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004E33C(size_t a1, int64_t a2, char a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039FE40, &unk_1002C36F8, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

size_t sub_10004E380(size_t a1, int64_t a2, char a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039E2D8, &qword_1002C3720, &type metadata accessor for TLV);
  *v3 = result;
  return result;
}

void *sub_10004E3C4(void *a1, int64_t a2, char a3)
{
  result = sub_10004E828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E3E4(void *a1, int64_t a2, char a3)
{
  result = sub_10004E95C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E404(char *a1, int64_t a2, char a3)
{
  result = sub_10004EAA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E424(char *a1, int64_t a2, char a3)
{
  result = sub_10004EBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E444(char *a1, int64_t a2, char a3)
{
  result = sub_10004EDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004E464(size_t a1, int64_t a2, char a3)
{
  result = sub_10004EEC0(a1, a2, a3, *v3, &qword_10039FE88, &qword_1002C3758, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_10004E4A8(char *a1, int64_t a2, char a3)
{
  result = sub_10004F09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E4C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E5D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FEE0, &qword_1002C37E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FEE8, &qword_1002C37E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004E71C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE30, &qword_1002C36E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E828(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039FE90, &unk_1002C5970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004E95C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004EAA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE98, &unk_1002C3770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004EBB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FE48, &qword_1002C3708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004ECB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FEB8, &qword_1002C3DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10004EDB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039FEA8, &qword_1002C3798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10004EEC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004074(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10004F09C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL sub_10004F190(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004F288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_1000F5728(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_10004F340()
{
  result = qword_10039FE28;
  if (!qword_10039FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FE28);
  }

  return result;
}

unint64_t sub_10004F3D0()
{
  result = qword_10039FE38;
  if (!qword_10039FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FE38);
  }

  return result;
}

uint64_t sub_10004F424(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F494(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10004F504@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_10004F5A0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  return sub_10004BED8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_10004F5D8(uint64_t a1)
{
  v78 = type metadata accessor for HPKE.AEAD();
  v74 = *(v78 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin(v78);
  v77 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for HPKE.KDF();
  v76 = *(v85 - 8);
  v4 = *(v76 + 64);
  __chkstk_darwin(v85);
  v83 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for HPKE.KEM();
  v79 = *(v84 - 8);
  v6 = *(v79 + 64);
  __chkstk_darwin(v84);
  v82 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(*(v81 - 1) + 64);
  __chkstk_darwin(v81);
  v80 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v75 = *(v10 - 8);
  v11 = v75[8];
  __chkstk_darwin(v10);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v18 - 8);
  v19 = *(v73 + 64);
  __chkstk_darwin(v18);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v86;
  sub_1000E5EA8(v106);
  if (v26)
  {
    v86 = v26;

    return v13;
  }

  v67 = v18;
  v68 = v13;
  v70 = v25;
  v71 = v21;
  v72 = v17;
  v69 = v10;
  v28 = v83;
  v27 = v84;
  v29 = v82;
  v13 = v85;
  sub_1000E650C(v104);
  sub_1000E4518(v103);
  sub_1000E6B70(v100);
  sub_1000E71D4();
  v66 = v31;
  sub_1000E7738(v99);
  v86 = 0;
  v64[1] = a1;
  v32 = v107;
  v65 = v108;
  sub_10000BE18(v106, v107);
  v33 = v86;
  sub_1000C7DD8(v32, v65);
  v86 = v33;
  if (v33)
  {

    sub_10000959C(v99);
    sub_10000959C(v103);
    sub_10000959C(v100);
    sub_10000959C(v104);
    sub_10000959C(v106);
    return v13;
  }

  v34 = *sub_10000BE18(v104, v105);
  sub_10014E718(v97);
  v35 = *sub_10000BE18(v104, v105);
  sub_10014E988(v96);
  sub_10000CCE4(v103, v94);
  v36 = v101;
  v65 = v102;
  sub_10000BE18(v100, v101);
  sub_1000C289C(1u, v36, v65);
  sub_10000CCE4(v99, v92);
  v65 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v64[0] = "startBackgroundCertsRefresh()";
  static DispatchQoS.background.getter();
  (*(v73 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v67);
  v87[0] = _swiftEmptyArrayStorage;
  v73 = sub_1000508C0(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v71 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = v95;
  v38 = sub_100022438(v94, v95);
  v72 = v64;
  v39 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v44 = type metadata accessor for DefaultSecureTimeKeeper();
  v91[3] = v44;
  v91[4] = &off_100384E70;
  v91[0] = v43;
  v45 = type metadata accessor for CertificateManager();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v73 = swift_allocObject();
  v48 = sub_100022438(v91, v44);
  v70 = v64;
  v49 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = (v64 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v51;
  v89 = v44;
  v90 = &off_100384E70;
  *&v88 = v53;
  v54 = v68;
  static String.Encoding.utf8.getter();
  v67 = String.data(using:allowLossyConversion:)();
  v56 = v55;
  result = (v75[1])(v54, v69);
  if (v56 >> 60 != 15)
  {
    v57 = v73;
    *(v73 + 16) = v67;
    *(v57 + 24) = v56;
    v87[4] = nullsub_1;
    v87[5] = 0;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 1107296256;
    v87[2] = sub_100003974;
    v87[3] = &unk_100381398;
    v75 = _Block_copy(v87);
    v109 = _swiftEmptyArrayStorage;
    v69 = sub_1000508C0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = type metadata accessor for DispatchWorkItem();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    *(v73 + 192) = DispatchWorkItem.init(flags:block:)();
    v75 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize256;
    v61 = *(v79 + 104);
    v79 += 104;
    v80 = v61;
    (v61)(v29, enum case for HPKE.KEM.P256_HKDF_SHA256(_:), v27);
    v81 = *(v76 + 104);
    (v81)(v28, enum case for HPKE.KDF.HKDF_SHA256(_:), v13);
    v76 = *(v74 + 104);
    v62 = v77;
    (v76)(v77, enum case for HPKE.AEAD.AES_GCM_128(_:), v78);
    v13 = v73;
    HPKE.Ciphersuite.init(kem:kdf:aead:)();
    v74 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize384;
    (v80)(v29, enum case for HPKE.KEM.P384_HKDF_SHA384(_:), v84);
    (v81)(v28, enum case for HPKE.KDF.HKDF_SHA384(_:), v85);
    LODWORD(v75) = enum case for HPKE.AEAD.AES_GCM_256(_:);
    v63 = v76;
    (v76)(v62);
    HPKE.Ciphersuite.init(kem:kdf:aead:)();
    v74 = OBJC_IVAR____TtC14softposreaderd18CertificateManager_cipherSuiteForKeySize521;
    (v80)(v29, enum case for HPKE.KEM.P521_HKDF_SHA512(_:), v84);
    (v81)(v28, enum case for HPKE.KDF.HKDF_SHA512(_:), v85);
    v63(v62, v75, v78);
    HPKE.Ciphersuite.init(kem:kdf:aead:)();

    sub_10000959C(v99);
    sub_10000959C(v103);
    sub_100029790(&v98, (v13 + 32));
    sub_100029790(v97, (v13 + 112));
    sub_100029790(v96, (v13 + 152));
    sub_100029790(&v88, (v13 + 72));
    sub_100029790(&v93, (v13 + 208));
    *(v13 + 31) = v66;
    sub_100029790(v92, (v13 + 256));
    *(v13 + 25) = v71;
    sub_10000959C(v91);
    sub_10000959C(v94);
    sub_10000959C(v100);
    sub_10000959C(v104);
    sub_10000959C(v106);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050224()
{
  v1 = v0;
  if (String.isValidBase64()())
  {
    v2 = Data.init(base64Encoded:options:)();
    v4 = v3;

    if (v4 >> 60 != 15)
    {
      type metadata accessor for JSONDecoder();
      sub_10009A814(_swiftEmptyArrayStorage);
      sub_100050760();
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
      if (v0)
      {

        if (qword_10039D368 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_10000403C(v5, qword_10039FC08);
        v6 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v1))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, v1, "ValidationToken.init: Input not decodable to JSON", v7, 2u);
        }

        v8 = 0x8000000100347F00;
        v9 = 0xD00000000000001BLL;
      }

      else
      {

        v14 = Data.init(hexString:)();
        if (v15 >> 60 != 15)
        {
          v1 = v14;
          v20 = v15;

          Data.init(hexString:)();
          v22 = v21;

          if (v22 >> 60 == 15)
          {
            if (qword_10039D368 != -1)
            {
              swift_once();
            }

            v23 = type metadata accessor for Logger();
            sub_10000403C(v23, qword_10039FC08);
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 0;
              _os_log_impl(&_mh_execute_header, v24, v25, "ValidationToken.init: keyIdentifier not decodable from hexString", v26, 2u);
            }

            sub_100020C74(10005, 0xD00000000000002ALL, 0x8000000100347F50, 0);
            swift_willThrow();
            sub_10001A074(v1, v20);
          }

          goto LABEL_22;
        }

        if (qword_10039D368 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10000403C(v16, qword_10039FC08);
        v17 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v1))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v17, v1, "ValidationToken.init: signature not decodable from hexString", v18, 2u);
        }

        v9 = 0xD000000000000026;
        v8 = 0x8000000100347F20;
      }

      sub_100020C74(10005, v9, v8, 0);
      swift_willThrow();
LABEL_22:
      sub_10001A074(v2, v4);
      return v1;
    }
  }

  else
  {
  }

  if (qword_10039D368 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_10039FC08);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ValidationToken.init: Input not decodable from Base64", v13, 2u);
  }

  sub_100020C74(10005, 0xD00000000000001FLL, 0x8000000100347EE0, 0);
  swift_willThrow();
  return v1;
}

unint64_t sub_100050760()
{
  result = qword_10039FEC0;
  if (!qword_10039FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FEC0);
  }

  return result;
}

uint64_t sub_1000507D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050808()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005084C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000508B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100046114();
}

uint64_t sub_1000508C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CertificateManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CertificateManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100050A6C()
{
  result = qword_10039FEF8;
  if (!qword_10039FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FEF8);
  }

  return result;
}

uint64_t sub_100050AC0(uint64_t *a1)
{
  v3 = sub_100004074(&qword_10039FF00, &qword_1002C3928);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100050CA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000959C(a1);
  return v8;
}

unint64_t sub_100050CA4()
{
  result = qword_10039FF08;
  if (!qword_10039FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF08);
  }

  return result;
}

unint64_t sub_100050D0C()
{
  result = qword_10039FF10;
  if (!qword_10039FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF10);
  }

  return result;
}

unint64_t sub_100050D64()
{
  result = qword_10039FF18;
  if (!qword_10039FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF18);
  }

  return result;
}

unint64_t sub_100050DBC()
{
  result = qword_10039FF20;
  if (!qword_10039FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039FF20);
  }

  return result;
}

id sub_100050E24(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  aBlock[7] = sub_10000403C(v11, qword_10039FF28);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v56 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v55 = v1;
    v16 = v15;
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100008F6C(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1002C1660;
    *(v20 + 56) = &type metadata for Bool;
    *(v20 + 32) = a1 & 1;
    v21 = showFunction(signature:_:)(0xD000000000000021, 0x8000000100348810, v20);
    v23 = v22;

    v24 = sub_100008F6C(v21, v23, aBlock);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    v2 = v55;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v25 = static GlobalState.shared;
    result = [*(static GlobalState.shared + 88) lock];
    v27 = *(v25 + 104);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      *(v25 + 104) = v29;
      while (*(v25 + 96) > 0 || *(v25 + 112) == 1)
      {
        result = [*(v25 + 88) wait];
      }

      v30 = *(v25 + 104);
      v28 = __OFSUB__(v30, 1);
      v31 = v30 - 1;
      if (!v28)
      {
        *(v25 + 104) = v31;
        *(v25 + 112) = 1;
        [*(v25 + 88) unlock];
        v32 = *(v25 + 16);
        v33 = *(v25 + 24);
        v34 = *(sub_100173EA8() + 16);

        *(v25 + 16) = v34;
        *(v25 + 24) = 0;
        sub_100173040();
        [*(v25 + 88) lock];
        *(v25 + 112) = 0;
        [*(v25 + 88) broadcast];
        result = [*(v25 + 88) unlock];
        if ((v33 & 1) != 0 || v32 < 1 || v34)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

LABEL_17:
  v35 = objc_opt_self();
  v36 = [v35 sharedHardwareManager];
  v37 = [v36 getHwSupport];

  if (v37 == 2)
  {
    static DispatchTime.now()();
    v38 = v56;
    + infix(_:_:)();
    v39 = *(v57 + 8);
    v40 = v8;
    v41 = v58;
    v39(v40, v58);
    v42 = v38;
    v43 = [v35 sharedHardwareManager];
    v44 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
    if (!v2)
    {
      v52 = v44;

      v53 = v52;
      sub_100061524(v53);

      aBlock[4] = sub_10010051C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003974;
      aBlock[3] = &unk_100381798;
      v54 = _Block_copy(aBlock);
      [v53 endSessionWithCompletion:v54];
      _Block_release(v54);

      return (v39)(v42, v41);
    }

    v39(v38, v41);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to remove muirfield: Session Busy", v47, 2u);
    }

    v48 = 2026;
  }

  else
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to remove muirfield: NFC disabled", v51, 2u);
    }

    v48 = 2041;
  }

  sub_100020148(v48, 0, 0, 0);
  return swift_willThrow();
}

uint64_t sub_1000514E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v48 = _swiftEmptyArrayStorage;
  sub_10004E3E4(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v33 = v3 + 72;
  v34 = v1;
  v35 = v9;
  v36 = v3 + 64;
  v37 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v38 = v8;
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = v2;
    v15 = *(v12 + 8 * v7);
    sub_10000BDA4(v13 + 32 * v7, v45);
    v43 = v15;
    sub_100019D3C(v45, &v44);
    sub_100065074(&v43, &v41, &qword_1003A01B0, &unk_1002C3C10);
    v16 = v41;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = v15;
    v2 = v14;

    *&v46 = v17;
    *(&v46 + 1) = v19;
    sub_100065074(&v43, &v39, &qword_1003A01B0, &unk_1002C3C10);

    sub_100019D3C(&v40, v47);
    sub_10000959C(v42);
    result = sub_10000BD44(&v43, &qword_1003A01B0, &unk_1002C3C10);
    v48 = v14;
    v22 = v14[2];
    v21 = v14[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_10004E3E4((v21 > 1), v22 + 1, 1);
      v2 = v48;
    }

    v2[2] = v22 + 1;
    v23 = &v2[6 * v22];
    v24 = v46;
    v25 = v47[1];
    v23[3] = v47[0];
    v23[4] = v25;
    v23[2] = v24;
    v3 = v37;
    v10 = 1 << *(v37 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v36;
    v26 = *(v36 + 8 * v11);
    if ((v26 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v35;
    if (v35 != *(v37 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v7 & 0x3F));
    if (v27)
    {
      v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v11 << 6;
      v29 = v11 + 1;
      v30 = (v33 + 8 * v11);
      while (v29 < (v10 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100064AB0(v7, v35, 0);
          v10 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v7, v35, 0);
    }

LABEL_4:
    v8 = v38 + 1;
    v7 = v10;
    if (v38 + 1 == v34)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100051808(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = *sub_10000BE18((a2 + 16), *(a2 + 40));
  sub_100023074(a3, *a1);

  *a1 = &_swiftEmptyDictionarySingleton;
  v6 = a1[1];

  a1[1] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100051888()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039FF28);
  sub_10000403C(v0, qword_10039FF28);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_1000518F4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039FF40);
  v1 = sub_10000403C(v0, qword_10039FF40);
  if (qword_10039D738 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1000519BC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039FF28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000959C(v1 + 3);
  sub_10000959C(v1 + 8);
  sub_10000959C(v1 + 13);
  sub_10000959C(v1 + 18);
  sub_10000959C(v1 + 23);
  sub_10000959C(v1 + 28);
  sub_10000959C(v1 + 33);
  v13 = v1[38];

  sub_10000959C(v1 + 40);
  sub_10000959C(v1 + 45);
  sub_10000959C(v1 + 50);
  sub_10000959C(v1 + 55);
  sub_10000959C(v1 + 60);
  sub_10000959C(v1 + 66);
  sub_10000959C(v1 + 71);
  sub_10000959C(v1 + 76);
  v14 = v1[82];

  return v1;
}

uint64_t sub_100051C10()
{
  sub_1000519BC();

  return swift_deallocClassInstance();
}

void sub_100051C68(void (*a1)(char *, uint64_t, char *), void *a2, int a3, int a4, uint64_t *a5, unint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v369 = a5;
  LODWORD(v365) = a4;
  v359 = a3;
  v364 = a1;
  v12 = *v6;
  v13 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v348 = &v344 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v353 = &v344 - v17;
  v18 = type metadata accessor for UUID();
  v356 = *(v18 - 8);
  v357 = v18;
  v19 = *(v356 + 64);
  v20 = __chkstk_darwin(v18);
  v349 = &v344 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v347 = &v344 - v23;
  v24 = __chkstk_darwin(v22);
  v346 = &v344 - v25;
  v26 = __chkstk_darwin(v24);
  v345 = &v344 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v344 - v29;
  __chkstk_darwin(v28);
  v354 = &v344 - v31;
  v351 = type metadata accessor for Configurator.StoreAndForwardState();
  v32 = *(*(v351 - 8) + 64);
  v33 = __chkstk_darwin(v351);
  v350 = &v344 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v352 = &v344 - v35;
  v36 = type metadata accessor for OSSignpostID();
  v362 = *(v36 - 8);
  v363 = v36;
  v37 = *(v362 + 64);
  v38 = __chkstk_darwin(v36);
  v361 = &v344 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v367 = (&v344 - v40);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_10000403C(v41, qword_10039FF28);

  v366 = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v45 = os_log_type_enabled(v43, v44);
  v368 = a2;
  if (v45)
  {
    v358 = v30;
    v360 = v9;
    v355 = v7;
    v46 = swift_slowAlloc();
    v378[0] = swift_slowAlloc();
    *v46 = 136315394;
    v47 = _typeName(_:qualified:)();
    v49 = sub_100008F6C(v47, v48, v378);

    *(v46 + 4) = v49;
    v50 = v368;
    *(v46 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v51 = swift_allocObject();
    v52 = v51;
    *(v51 + 16) = xmmword_1002C1690;
    if (v50)
    {
      v55 = String.redactedTokenFromBase64()();
      object = v55._object;
      countAndFlagsBits = v55._countAndFlagsBits;
      *(v52 + 56) = &type metadata for String;
      if (v55._object)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(v51 + 56) = &type metadata for String;
    }

    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
LABEL_11:
    *(v52 + 32) = countAndFlagsBits;
    *(v52 + 40) = object;
    *(v52 + 64) = v359 & 1;
    *(v52 + 96) = v365 & 1;
    *(v52 + 88) = &type metadata for Bool;
    *(v52 + 152) = &type metadata for String;
    v57 = v369;
    if (!a6)
    {
      v57 = 7104878;
    }

    v58 = 0xE300000000000000;
    if (a6)
    {
      v58 = a6;
    }

    *(v52 + 120) = &type metadata for Bool;
    *(v52 + 128) = v57;
    *(v52 + 136) = v58;

    v59 = showFunction(signature:_:)(0xD000000000000037, 0x80000001003487B0, v52);
    v61 = v60;

    v62 = sub_100008F6C(v59, v61, v378);

    *(v46 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s.%s", v46, 0x16u);
    swift_arrayDestroy();

    v8 = v355;
    v9 = v360;
    v30 = v358;
    v56 = v367;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v56 = v367;
  if (!a6)
  {
    goto LABEL_19;
  }

LABEL_16:
  v63 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v63 = v369 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    v81 = 0x8000000100348790;
    v79 = 2045;
    v80 = 0xD00000000000001CLL;
    goto LABEL_34;
  }

LABEL_19:
  swift_beginAccess();
  v64 = *sub_10000BE18(v9 + 45, v9[48]);
  if ((sub_1001392D0() & 1) == 0)
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Incorrect JCOP version", v67, 2u);
    }

    if (*(v9 + 312) == 1)
    {
      v68 = v9[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v69 = swift_allocObject();
      *(v69 + 32) = 12;
      v70 = v69 + 32;
      *(v69 + 16) = xmmword_1002C1660;
      *(v69 + 64) = &type metadata for Int;
      *(v69 + 40) = 5;
      v71 = sub_100184144(v69);
      swift_setDeallocating();
      sub_10000BD44(v70, &qword_10039FED8, &unk_1002C37D0);
      v72 = swift_deallocClassInstance();
      v73 = *(v68 + 56);
      __chkstk_darwin(v72);
      v74 = (&v344 - 4);
      *(&v344 - 2) = v71;
      os_unfair_lock_lock(v73 + 8);
      sub_10006535C(&v73[4]._os_unfair_lock_opaque);
      if (!v8)
      {
        os_unfair_lock_unlock(v73 + 8);

        v76 = *(v68 + 56);
        __chkstk_darwin(v75);
        *(&v344 - 2) = v68;
        *(&v344 - 8) = 3;
        os_unfair_lock_lock((v76 + 32));
        sub_1000653BC((v76 + 16));
        os_unfair_lock_unlock((v76 + 32));
        v77 = sub_10000BE18(v9 + 60, v9[63]);
        v78 = sub_100020148(2033, 0, 0, 0);
        sub_10013F4E4(v78, *v77);

        v79 = 2033;
        v80 = 0;
        v81 = 0;
LABEL_34:
        sub_100020148(v79, v80, v81, 0);
        swift_willThrow();
        return;
      }

      goto LABEL_175;
    }
  }

  v344 = a6;
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for OSSignposter();
  sub_10000403C(v82, qword_10039FF40);
  static OSSignpostID.exclusive.getter();
  v83 = OSSignposter.logHandle.getter();
  v84 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v84, v86, "config-prepare-totalTime", "begin prepare", v85, 2u);
  }

  v87 = v362;
  v88 = v363;
  (*(v362 + 16))(v361, v56, v363);
  v89 = type metadata accessor for OSSignpostIntervalState();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v92 = OSSignpostIntervalState.init(id:isOpen:)();
  v93 = v56;
  v73 = v92;
  (*(v87 + 8))(v93, v88);
  v94 = v9[36];
  v95 = v9[37];
  sub_10000BE18(v9 + 33, v94);
  v68 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(v95 + 8))(3, 222, v68, v94, v95);

  v96 = v368;
  if (!v368)
  {
    v30 = v357;
LABEL_38:
    v68 = v344;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "kernel token nil or has no saftpid", v114, 2u);
    }

    if (v365)
    {
      v361 = v73;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "this kernel token doesn't support StoreAndForward", v117, 2u);
      }

      v118 = v9[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v119 = swift_allocObject();
      *(v119 + 32) = 12;
      v68 = v119 + 32;
      *(v119 + 16) = xmmword_1002C1660;
      *(v119 + 64) = &type metadata for Int;
      *(v119 + 40) = 13;
      v120 = sub_100184144(v119);
      swift_setDeallocating();
      sub_10000BD44(v68, &qword_10039FED8, &unk_1002C37D0);
      v121 = swift_deallocClassInstance();
      v73 = *(v118 + 56);
      __chkstk_darwin(v121);
      v74 = (&v344 - 4);
      *(&v344 - 2) = v120;
      os_unfair_lock_lock(v73 + 8);
      sub_10006535C(&v73[4]._os_unfair_lock_opaque);
      if (!v8)
      {
        os_unfair_lock_unlock(v73 + 8);

        v123 = *(v118 + 56);
        __chkstk_darwin(v122);
        *(&v344 - 2) = v118;
        *(&v344 - 8) = 3;
        os_unfair_lock_lock((v123 + 32));
        sub_1000653BC((v123 + 16));
        os_unfair_lock_unlock((v123 + 32));
        sub_1000245C8(&off_10037E2B0);
        sub_100020148(2035, 0xD00000000000001CLL, 0x8000000100348650, 0);
        swift_willThrow();
LABEL_109:
        sub_10005500C();
        goto LABEL_110;
      }

LABEL_175:
      os_unfair_lock_unlock(v73 + 8);
      __break(1u);
      goto LABEL_176;
    }

    sub_10005535C(0);
    if (v8)
    {
      goto LABEL_109;
    }

    v124 = v352;
    swift_storeEnumTagMultiPayload();
    v125 = v356;
    goto LABEL_47;
  }

  v358 = v30;
  v97 = v9;
  v9 = v8;
  v74 = v97[48];
  v360 = v97;
  v361 = v73;
  v98 = sub_10000BE18(v97 + 45, v74);
  v367 = &v344;
  v99 = *(v74 - 1);
  v100 = *(v99 + 64);
  __chkstk_darwin(v98);
  v102 = &v344 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v99 + 16))(v102);
  v103 = *(*v102 + 16);

  v104 = [v103 serialNumber];
  if (!v104)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    os_unfair_lock_unlock(v30 + 8);
    __break(1u);
    goto LABEL_175;
  }

  v105 = v96;
  v106 = v104;
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;

  (*(v99 + 8))(v102, v74);
  sub_10008C068(v364, v105, v107, v109, v379);
  v8 = v9;
  if (v9)
  {
    goto LABEL_109;
  }

  v110 = v353;
  sub_10008B618(v353);
  sub_10006413C(v379);
  v111 = v356;
  v30 = v357;
  if ((*(v356 + 48))(v110, 1, v357) == 1)
  {
    sub_10000BD44(v110, &qword_1003A0178, &unk_1002C3BB0);
    v9 = v360;
    v73 = v361;
    goto LABEL_38;
  }

  v131 = v354;
  (*(v111 + 32))(v354, v110, v30);
  v132 = *(v111 + 16);
  v133 = v358;
  v367 = (v111 + 16);
  v68 = v132;
  v132(v358, v131, v30);
  v134 = v111;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    LODWORD(v364) = v136;
    v355 = 0;
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v372[0] = v138;
    *v137 = 136315138;
    v139 = UUID.uuidString.getter();
    v376[0] = 0;
    v376[1] = 0xE000000000000000;
    v141 = HIBYTE(v140) & 0xF;
    if ((v140 & 0x2000000000000000) == 0)
    {
      v141 = v139 & 0xFFFFFFFFFFFFLL;
    }

    v378[0] = v139;
    v378[1] = v140;
    v378[2] = 0;
    v378[3] = v141;
    v142 = String.Iterator.next()();
    v9 = v68;
    if (v142.value._object)
    {
      v143 = v142.value._countAndFlagsBits;
      v144 = v142.value._object;
      do
      {
        Character.hexDigitValue.getter();
        if ((v146 & 1) == 0)
        {
          v147._countAndFlagsBits = v143;
          v147._object = v144;
          String.append(_:)(v147);
        }

        v145 = String.Iterator.next()();
        v143 = v145.value._countAndFlagsBits;
        v144 = v145.value._object;
      }

      while (v145.value._object);
    }

    v165 = v357;
    v368 = *(v356 + 8);
    (v368)(v358, v357);
    v166 = sub_100008F6C(v376[0], v376[1], v372);

    *(v137 + 4) = v166;
    _os_log_impl(&_mh_execute_header, v135, v364, "kernel token contains SAF tpid: %s", v137, 0xCu);
    sub_10000959C(v138);
    v30 = v165;

    v131 = v354;
    v8 = v355;
    if (!v344)
    {
      goto LABEL_70;
    }
  }

  else
  {

    v368 = *(v134 + 8);
    (v368)(v133, v30);
    v9 = v68;
    if (!v344)
    {
LABEL_70:
      sub_100020148(2035, 0xD000000000000022, 0x8000000100348670, 0);
      swift_willThrow();
      (v368)(v131, v30);
      goto LABEL_109;
    }
  }

  v148 = *sub_10000BE18(v360 + 13, v360[16]);
  sub_10003D678(v131, &v380);
  if (!v384)
  {
    sub_100041D1C(&v380);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&_mh_execute_header, v172, v173, "Did not find SAF profile in cache", v174, 2u);
    }

    v175 = v360[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v176 = swift_allocObject();
    *(v176 + 32) = 12;
    v68 = v176 + 32;
    *(v176 + 16) = xmmword_1002C1660;
    *(v176 + 64) = &type metadata for Int;
    *(v176 + 40) = 11;
    v177 = sub_100184144(v176);
    swift_setDeallocating();
    sub_10000BD44(v68, &qword_10039FED8, &unk_1002C37D0);
    v178 = swift_deallocClassInstance();
    v73 = *(v175 + 56);
    __chkstk_darwin(v178);
    v74 = (&v344 - 4);
    *(&v344 - 2) = v177;
    os_unfair_lock_lock(v73 + 8);
    sub_10006535C(&v73[4]._os_unfair_lock_opaque);
    if (!v8)
    {
      os_unfair_lock_unlock(v73 + 8);

      v180 = *(v175 + 56);
      __chkstk_darwin(v179);
      *(&v344 - 2) = v175;
      *(&v344 - 8) = 3;
      os_unfair_lock_lock((v180 + 32));
      sub_1000653BC((v180 + 16));
      os_unfair_lock_unlock((v180 + 32));
      sub_1000245C8(&off_10037E288);
      sub_100020148(2035, 0xD000000000000029, 0x80000001003486A0, 0);
      swift_willThrow();
      (v368)(v354, v357);
      sub_10005500C();
LABEL_110:

      return;
    }

    goto LABEL_175;
  }

  if ((v365 & 1) == 0)
  {
    sub_100041D1C(&v380);
    v181 = v360;
    v182 = v360[38];
    v68 = *(v182 + 56);
    os_unfair_lock_lock((v68 + 32));
    sub_10011C498(v68 + 16, 4);
    if (v8)
    {
LABEL_177:
      os_unfair_lock_unlock((v68 + 32));
      __break(1u);
      os_unfair_lock_unlock(v9 + 8);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v68 + 32));
    sub_10005535C(0);
    v183 = 0;
    (v9)(v352, v131, v30);
    swift_storeEnumTagMultiPayload();
    v194 = *sub_10000BE18(v181 + 13, v181[16]);
    v195 = sub_10003EFB8(v131);
    if (v195)
    {
      v355 = 0;
      v196 = v346;
      (v9)(v346, v131, v30);
      v197 = Logger.logObject.getter();
      v198 = v30;
      v199 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v197, v199))
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v372[0] = v201;
        *v200 = 136315138;
        v202 = UUID.uuidString.getter();
        v376[0] = 0;
        v376[1] = 0xE000000000000000;
        v204 = HIBYTE(v203) & 0xF;
        if ((v203 & 0x2000000000000000) == 0)
        {
          v204 = v202 & 0xFFFFFFFFFFFFLL;
        }

        v378[0] = v202;
        v378[1] = v203;
        v378[2] = 0;
        v378[3] = v204;
        v205 = String.Iterator.next()();
        if (v205.value._object)
        {
          v206 = v205.value._countAndFlagsBits;
          v207 = v205.value._object;
          do
          {
            Character.hexDigitValue.getter();
            if ((v209 & 1) == 0)
            {
              v210._countAndFlagsBits = v206;
              v210._object = v207;
              String.append(_:)(v210);
            }

            v208 = String.Iterator.next()();
            v206 = v208.value._countAndFlagsBits;
            v207 = v208.value._object;
          }

          while (v208.value._object);
        }

        (v368)(v346, v357);
        v277 = sub_100008F6C(v376[0], v376[1], v372);

        *(v200 + 4) = v277;
        _os_log_impl(&_mh_execute_header, v197, v199, "saftpid exit SAF mode: %s", v200, 0xCu);
        sub_10000959C(v201);

        v131 = v354;
      }

      else
      {

        (v368)(v196, v198);
      }

      v278 = v360;
      v279 = *sub_10000BE18(v360 + 13, v360[16]);
      sub_10003F0D4(v131);
      v280 = v278[36];
      v281 = v278[37];
      sub_10000BE18(v278 + 33, v280);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v282 = swift_allocObject();
      *(v282 + 16) = xmmword_1002C1660;
      *(v282 + 32) = 0x64697074666173;
      *(v282 + 40) = 0xE700000000000000;
      v283 = UUID.uuidString.getter();
      *(v282 + 72) = &type metadata for String;
      *(v282 + 80) = &protocol witness table for String;
      *(v282 + 48) = v283;
      *(v282 + 56) = v284;
      v9 = sub_100184010(v282);
      swift_setDeallocating();
      sub_10000BD44(v282 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x24u, v9, v280, v281);

      sub_1000245C8(&off_10037E260);
      v30 = v357;
    }

    else
    {
      v232 = v347;
      (v9)(v347, v131, v30);
      v233 = Logger.logObject.getter();
      v234 = v30;
      v235 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v233, v235))
      {

        (v368)(v232, v234);
        v30 = v234;
        goto LABEL_143;
      }

      v355 = 0;
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v372[0] = v237;
      *v236 = 136315138;
      v238 = UUID.uuidString.getter();
      v376[0] = 0;
      v376[1] = 0xE000000000000000;
      v240 = HIBYTE(v239) & 0xF;
      if ((v239 & 0x2000000000000000) == 0)
      {
        v240 = v238 & 0xFFFFFFFFFFFFLL;
      }

      v378[0] = v238;
      v378[1] = v239;
      v378[2] = 0;
      v378[3] = v240;
      v241 = String.Iterator.next()();
      if (v241.value._object)
      {
        v242 = v241.value._countAndFlagsBits;
        v243 = v241.value._object;
        do
        {
          Character.hexDigitValue.getter();
          if ((v245 & 1) == 0)
          {
            v246._countAndFlagsBits = v242;
            v246._object = v243;
            String.append(_:)(v246);
          }

          v244 = String.Iterator.next()();
          v242 = v244.value._countAndFlagsBits;
          v243 = v244.value._object;
        }

        while (v244.value._object);
      }

      v9 = v357;
      (v368)(v347, v357);
      v285 = sub_100008F6C(v376[0], v376[1], v372);

      *(v236 + 4) = v285;
      v286 = v235;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v233, v286, "saftpid was not in SAF mode: %s", v236, 0xCu);
      sub_10000959C(v237);
    }

    v183 = v355;
LABEL_143:
    v68 = v344;
    v74 = *(v182 + 56);
    os_unfair_lock_lock(v74 + 8);
    sub_10011CF8C((v74 + 2), 4);
    v73 = v361;
    v124 = v352;
    if (!v183)
    {
      v8 = 0;
      os_unfair_lock_unlock(v74 + 8);
      v125 = v356;
      (v368)(v354, v30);
      v9 = v360;
      goto LABEL_47;
    }

LABEL_176:
    os_unfair_lock_unlock(v74 + 8);
    __break(1u);
    goto LABEL_177;
  }

  v149 = v360;
  v365 = v360[38];
  v74 = *(v365 + 56);
  os_unfair_lock_lock(v74 + 8);
  sub_10011C498((v74 + 2), 3);
  if (v8)
  {
    goto LABEL_176;
  }

  os_unfair_lock_unlock(v74 + 8);
  v150 = *sub_10000BE18(v149 + 23, v149[26]);
  if (sub_1000B2244())
  {
    sub_100041D1C(&v380);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&_mh_execute_header, v151, v152, "Device rebooted since last online, cannot enter SAF mode", v153, 2u);
    }

    v154 = v365;
    v155 = *(v365 + 56);
    os_unfair_lock_lock(v155 + 8);
    sub_10011CF8C(&v155[4], 3);
    os_unfair_lock_unlock(v155 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_1002C1660;
    *(v156 + 32) = 12;
    v157 = v156 + 32;
    *(v156 + 64) = &type metadata for Int;
    *(v156 + 40) = 12;
    v158 = sub_100184144(v156);
    swift_setDeallocating();
    sub_10000BD44(v157, &qword_10039FED8, &unk_1002C37D0);
    v159 = swift_deallocClassInstance();
    v160 = *(v154 + 56);
    __chkstk_darwin(v159);
    *(&v344 - 2) = v158;
    os_unfair_lock_lock((v160 + 32));
    sub_10006535C((v160 + 16));
    os_unfair_lock_unlock((v160 + 32));

    v162 = *(v154 + 56);
    __chkstk_darwin(v161);
    *(&v344 - 2) = v154;
    *(&v344 - 8) = 3;
    os_unfair_lock_lock((v162 + 32));
    sub_1000653BC((v162 + 16));
    os_unfair_lock_unlock((v162 + 32));
    sub_1000245C8(&off_10037E238);
    v163 = "Attestation failed.";
    v164 = 0xD000000000000021;
LABEL_108:
    sub_100020148(2035, v164, (v163 | 0x8000000000000000), 0);
    swift_willThrow();
    (v368)(v354, v357);
    goto LABEL_109;
  }

  v188 = v381;
  if (!v381)
  {
    sub_100041D1C(&v380);
    goto LABEL_105;
  }

  v364 = v9;
  v189 = v382;
  v190 = v383;
  v191 = v380;

  sub_100041D1C(&v380);

  sub_10003F2A0(v191, v188);
  if (!v190)
  {
LABEL_105:
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&_mh_execute_header, v220, v221, "no persisted attestation token, need previous prepare call.", v222, 2u);
    }

    v223 = v365;
    v224 = *(v365 + 56);
    os_unfair_lock_lock(v224 + 8);
    sub_10011CF8C(&v224[4], 3);
    os_unfair_lock_unlock(v224 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v225 = swift_allocObject();
    *(v225 + 32) = 12;
    v226 = v225 + 32;
    *(v225 + 16) = xmmword_1002C1660;
    *(v225 + 64) = &type metadata for Int;
    *(v225 + 40) = 9;
    v227 = sub_100184144(v225);
    swift_setDeallocating();
    sub_10000BD44(v226, &qword_10039FED8, &unk_1002C37D0);
    v228 = swift_deallocClassInstance();
    v229 = *(v223 + 56);
    __chkstk_darwin(v228);
    *(&v344 - 2) = v227;
    os_unfair_lock_lock((v229 + 32));
    sub_10006535C((v229 + 16));
    os_unfair_lock_unlock((v229 + 32));

    v231 = *(v223 + 56);
    __chkstk_darwin(v230);
    *(&v344 - 2) = v223;
    *(&v344 - 8) = 3;
    os_unfair_lock_lock((v231 + 32));
    sub_1000653BC((v231 + 16));
    os_unfair_lock_unlock((v231 + 32));
    sub_1000245C8(&off_10037E210);
    v163 = "'t installed, OTA needed.";
    v164 = 0xD00000000000001FLL;
    goto LABEL_108;
  }

  v192 = *sub_10000BE18(v360 + 18, v360[21]);
  sub_100034704(v385);
  memcpy(v378, v385, 0x122uLL);
  sub_100031B40(v385, v376);

  sub_100031B40(v385, v376);
  sub_100176DD8(v189, v190, v386);
  v193 = 0;
  memcpy(v375, v386, sizeof(v375));

  v287 = Logger.logObject.getter();
  v288 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v287, v288))
  {
    v289 = swift_slowAlloc();
    v290 = swift_slowAlloc();
    v376[0] = v290;
    *v289 = 136315138;
    v291 = String.redactedToken()();
    v363 = 0;

    v292 = sub_100008F6C(v291._countAndFlagsBits, v291._object, v376);
    v193 = v363;

    *(v289 + 4) = v292;
    _os_log_impl(&_mh_execute_header, v287, v288, "persistedAttestationToken: %s, privacy: .public)", v289, 0xCu);
    sub_10000959C(v290);
  }

  else
  {
  }

  v293 = v357;
  v294 = v354;
  memcpy(v373, v375, sizeof(v373));
  nullsub_1(v373);
  memcpy(v374, v378, sizeof(v374));
  sub_10000BD44(v374, &qword_10039F268, &qword_1002C2730);
  memcpy(v378, v373, 0x110uLL);
  v295 = v360;
  v296 = sub_10000BE18(v360 + 18, v360[21]);
  memcpy(v397, v378, 0x122uLL);
  v297 = *v296;
  sub_10003385C(v397);
  sub_10005535C(1);
  if (v193)
  {
    (v368)(v294, v293);
    sub_100031B78(v385);
    memcpy(v376, v378, 0x122uLL);
    sub_100031B78(v376);
    goto LABEL_109;
  }

  v298 = *sub_10000BE18(v295 + 23, v295[26]);
  v299 = v348;
  (*(v356 + 56))(v348, 1, 1, v293);
  LOBYTE(v298) = sub_1000B100C(v299, 0.0);
  sub_10000BD44(v299, &qword_1003A0178, &unk_1002C3BB0);
  if ((v298 & 1) == 0)
  {
    v316 = Logger.logObject.getter();
    v317 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v316, v317))
    {
      v318 = swift_slowAlloc();
      *v318 = 0;
      _os_log_impl(&_mh_execute_header, v316, v317, "failed attestation check, delete persisted attestation token, revert attestation state.", v318, 2u);
    }

    v319 = v360;
    v320 = *sub_10000BE18(v360 + 13, v360[16]);
    sub_10003EADC(0, 0, v294);
    v321 = *sub_10000BE18(v319 + 18, v319[21]);
    sub_10003385C(v385);
    sub_10005535C(0);
    v322 = v365;
    v323 = *(v365 + 56);
    os_unfair_lock_lock(v323 + 8);
    sub_10011CF8C(&v323[4], 3);
    os_unfair_lock_unlock(v323 + 8);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v324 = swift_allocObject();
    *(v324 + 32) = 12;
    v325 = v324 + 32;
    *(v324 + 16) = xmmword_1002C1660;
    *(v324 + 64) = &type metadata for Int;
    *(v324 + 40) = 8;
    v326 = sub_100184144(v324);
    swift_setDeallocating();
    sub_10000BD44(v325, &qword_10039FED8, &unk_1002C37D0);
    v327 = swift_deallocClassInstance();
    v328 = *(v322 + 56);
    __chkstk_darwin(v327);
    *(&v344 - 2) = v326;
    os_unfair_lock_lock((v328 + 32));
    sub_10006535C((v328 + 16));
    os_unfair_lock_unlock((v328 + 32));

    v330 = *(v322 + 56);
    __chkstk_darwin(v329);
    *(&v344 - 2) = v322;
    *(&v344 - 8) = 3;
    os_unfair_lock_lock((v330 + 32));
    sub_1000653BC((v330 + 16));
    os_unfair_lock_unlock((v330 + 32));
    sub_1000245C8(&off_10037E1E8);
    sub_100020148(2035, 0xD000000000000013, 0x8000000100348720, 0);
    swift_willThrow();
    sub_100031B78(v385);
    (v368)(v354, v357);
    memcpy(v376, v378, 0x122uLL);
    sub_100031B78(v376);
    sub_10005500C();

    return;
  }

  memcpy(v376, v378, 0x122uLL);
  memcpy(v352, v378, 0x122uLL);
  swift_storeEnumTagMultiPayload();
  v300 = *sub_10000BE18(v295 + 13, v295[16]);
  sub_100031B40(v376, v372);
  v301 = sub_10003EFB8(v294);
  v355 = 0;
  if (v301)
  {
    v302 = v345;
    v364(v345, v294, v293);
    v303 = Logger.logObject.getter();
    v304 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v303, v304))
    {
      v305 = swift_slowAlloc();
      v306 = swift_slowAlloc();
      v398 = v306;
      *v305 = 136315138;
      v307 = UUID.uuidString.getter();
      v370 = 0;
      v371 = 0xE000000000000000;
      v309 = HIBYTE(v308) & 0xF;
      if ((v308 & 0x2000000000000000) == 0)
      {
        v309 = v307 & 0xFFFFFFFFFFFFLL;
      }

      v372[0] = v307;
      v372[1] = v308;
      v372[2] = 0;
      v372[3] = v309;
      v310 = String.Iterator.next()();
      if (v310.value._object)
      {
        v311 = v310.value._countAndFlagsBits;
        v312 = v310.value._object;
        do
        {
          Character.hexDigitValue.getter();
          if ((v314 & 1) == 0)
          {
            v315._countAndFlagsBits = v311;
            v315._object = v312;
            String.append(_:)(v315);
          }

          v313 = String.Iterator.next()();
          v311 = v313.value._countAndFlagsBits;
          v312 = v313.value._object;
        }

        while (v313.value._object);
      }

      (v368)(v345, v357);
      v341 = sub_100008F6C(v370, v371, &v398);

      *(v305 + 4) = v341;
      _os_log_impl(&_mh_execute_header, v303, v304, "The saftpid already isInSAFMode: %s", v305, 0xCu);
      sub_10000959C(v306);
    }

    else
    {

      (v368)(v302, v357);
    }

    v9 = v360;
    v73 = v361;
  }

  else
  {
    v331 = Logger.logObject.getter();
    v332 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v331, v332))
    {
      v333 = swift_slowAlloc();
      *v333 = 0;
      _os_log_impl(&_mh_execute_header, v331, v332, "enter SAF mode...", v333, 2u);
    }

    v9 = v360;
    v334 = *sub_10000BE18(v360 + 13, v360[16]);
    sub_10003F0CC(v294);
    v335 = v9[36];
    v336 = v9[37];
    sub_10000BE18(v9 + 33, v335);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    v337 = swift_allocObject();
    *(v337 + 16) = xmmword_1002C1660;
    *(v337 + 32) = 0x64697074666173;
    *(v337 + 40) = 0xE700000000000000;
    v338 = UUID.uuidString.getter();
    *(v337 + 72) = &type metadata for String;
    *(v337 + 80) = &protocol witness table for String;
    *(v337 + 48) = v338;
    *(v337 + 56) = v339;
    v340 = sub_100184010(v337);
    swift_setDeallocating();
    sub_10000BD44(v337 + 32, &qword_10039FEC8, &unk_1002C37B0);
    swift_deallocClassInstance();
    sub_1000C2288(0x23u, v340, v335, v336);

    sub_1000245C8(&off_10037E1C0);
    v73 = v361;
  }

  v74 = *(v365 + 56);
  os_unfair_lock_lock(v74 + 8);
  v342 = v355;
  sub_10011CF8C((v74 + 2), 3);
  v30 = v357;
  v343 = v354;
  v68 = v344;
  if (v342)
  {
    goto LABEL_176;
  }

  v8 = 0;
  os_unfair_lock_unlock(v74 + 8);
  sub_100031B78(v385);
  v125 = v356;
  (v368)(v343, v30);
  memcpy(v372, v378, 0x122uLL);
  sub_100031B78(v372);
  v124 = v352;
LABEL_47:
  v126 = v124;
  v127 = v350;
  sub_100065170(v126, v350);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v125 + 32))(v349, v127, v30);
      v74 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v74, v129, "storeAndForwardState: onlineWithSAFCompatibleToken", v130, 2u);
      }

      if (!v68)
      {
        goto LABEL_173;
      }

      sub_100056094(v369, v68);
      sub_100064310(1, v387);
      v8 = 0;
      sub_100031B40(v387, v378);
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&_mh_execute_header, v213, v214, "persist attestation token for StoreAndForward", v215, 2u);
      }

      sub_10000CCE4((v9 + 13), v376);
      v216 = sub_10000BE18(v376, v376[3]);
      memcpy(v377, v387, sizeof(v377));
      memcpy(v378, v387, 0x110uLL);
      v217 = sub_100031A30(v378);
      v361 = v73;
      if (v217 == 1)
      {
        v218 = 0;
        v219 = 0;
      }

      else
      {
        v218 = v378[32];
        v219 = v378[33];
      }

      v186 = v389;
      v185 = v390;
      v68 = v391;
      v247 = *v216;
      v248 = v349;
      sub_10003EADC(v218, v219, v349);

      (*(v356 + 8))(v248, v357);
      sub_10000959C(v376);
      v187 = v388;
      v73 = v361;
    }

    else
    {
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        _os_log_impl(&_mh_execute_header, v169, v170, "storeAndForwardState: online", v171, 2u);
      }

      sub_100057300();
      if (v359)
      {
        v184 = 1;
      }

      else
      {
        v211 = *sub_10000BE18(v9 + 23, v9[26]);
        v212 = v348;
        (*(v356 + 56))(v348, 1, 1, v30);
        LOBYTE(v211) = sub_1000B100C(v212, 0.0);
        sub_10000BD44(v212, &qword_1003A0178, &unk_1002C3BB0);
        v184 = v211 ^ 1;
      }

      sub_100064310(v184 & 1, v392);
      v185 = v395;
      v68 = v396;
      v186 = v394;
      v187 = v393;
      memcpy(v377, v392, sizeof(v377));
      sub_100031B40(v392, v378);
    }
  }

  else
  {
    memcpy(v378, v127, 0x122uLL);
    v74 = Logger.logObject.getter();
    v167 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v167))
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&_mh_execute_header, v74, v167, "storeAndForwardState: storeAndForwardWithSAFCompatibleToken", v168, 2u);
    }

    if (!v68)
    {
      goto LABEL_174;
    }

    sub_100055790(v369, v68);
    v185 = v378[36];
    v68 = BYTE1(v378[36]);
    v186 = v378[35];
    v187 = v378[34];
    memcpy(v377, v378, sizeof(v377));
  }

  memcpy(v378, v377, 0x110uLL);
  v378[34] = v187;
  v378[35] = v186;
  LOBYTE(v378[36]) = v185;
  BYTE1(v378[36]) = v68;
  if ((v68 & 1) == 0)
  {
    v361 = v73;
    v268 = v9[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v269 = swift_allocObject();
    *(v269 + 16) = xmmword_1002C1660;
    *(v269 + 32) = 12;
    v270 = v269 + 32;
    *(v269 + 64) = &type metadata for Int;
    *(v269 + 40) = 7;
    v271 = sub_100184144(v269);
    swift_setDeallocating();
    sub_10000BD44(v270, &qword_10039FED8, &unk_1002C37D0);
    v272 = swift_deallocClassInstance();
    v273 = *(v268 + 56);
    __chkstk_darwin(v272);
    *(&v344 - 2) = v271;
    os_unfair_lock_lock((v273 + 32));
    sub_10006535C((v273 + 16));
    os_unfair_lock_unlock((v273 + 32));

    v275 = *(v268 + 56);
    __chkstk_darwin(v274);
    *(&v344 - 2) = v268;
    *(&v344 - 8) = 3;
    os_unfair_lock_lock((v275 + 32));
    sub_1000653BC((v275 + 16));
    os_unfair_lock_unlock((v275 + 32));
    sub_100098F34(v186, v185 & 1);
    swift_willThrow();
    sub_1000651D4(v352);
    sub_100031B78(v378);
    goto LABEL_109;
  }

  v249 = type metadata accessor for JSONEncoder();
  v250 = *(v249 + 48);
  v251 = *(v249 + 52);
  swift_allocObject();
  v367 = JSONEncoder.init()();
  if (v187)
  {
    v252 = *(v187 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v252)
    {
      v372[0] = _swiftEmptyArrayStorage;
      v74 = v372;
      sub_10004E2DC(0, v252, 0);
      v253 = v187;
      v254 = 0;
      v9 = v372[0];
      v365 = v252;
      v366 = v253;
      v30 = (v253 + 64);
      v361 = v73;
      while (v254 < *(v366 + 16))
      {
        v68 = v73;
        v255 = v8;
        v256 = *(v30 - 3);
        v257 = *(v30 - 2);
        v258 = *(v30 - 1);
        v259 = *v30;
        v376[0] = *(v30 - 4);
        v376[1] = v256;
        v376[2] = v257;
        v376[3] = v258;
        v376[4] = v259;
        sub_100065230();

        v260 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v355 = v255;
        if (v255)
        {
          sub_1000651D4(v352);

          sub_100031B78(v378);
          sub_10005500C();

          return;
        }

        v74 = v260;
        v262 = v261;
        v263 = Data.base64EncodedString(options:)(0);
        v368 = v263._object;
        v369 = v263._countAndFlagsBits;
        sub_100009548(v74, v262);

        v372[0] = v9;
        v265 = v9[2];
        v264 = v9[3];
        if (v265 >= v264 >> 1)
        {
          v74 = v372;
          sub_10004E2DC((v264 > 1), v265 + 1, 1);
          v9 = v372[0];
        }

        ++v254;
        v9[2] = v265 + 1;
        v266 = &v9[2 * v265];
        v267 = v368;
        v266[4] = v369;
        v266[5] = v267;
        v30 += 40;
        v73 = v361;
        v8 = v355;
        if (v365 == v254)
        {
          goto LABEL_132;
        }
      }

      __break(1u);
      goto LABEL_172;
    }

LABEL_132:
    v376[0] = v9;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    BidirectionalCollection<>.joined(separator:)();
  }

  v276 = v352;
  memcpy(v376, v377, 0x110uLL);
  if (sub_100031A30(v376) != 1)
  {
  }

  sub_1000651D4(v276);
  sub_100031B78(v378);
  sub_10005500C();
}

uint64_t sub_10005500C()
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
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_10039FF40);
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
      v13 = "end prepare";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "config-prepare-totalTime", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100055298()
{
  UUID.uuidString.getter();
  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      Character.hexDigitValue.getter();
      if ((v4 & 1) == 0)
      {
        v5._countAndFlagsBits = countAndFlagsBits;
        v5._object = object;
        String.append(_:)(v5);
      }

      v3 = String.Iterator.next()();
      countAndFlagsBits = v3.value._countAndFlagsBits;
      object = v3.value._object;
    }

    while (v3.value._object);
  }

  return 0;
}

void sub_10005535C(char a1)
{
  v3 = v1;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  if ((a1 & 1) != 0 && (v9 = *sub_10000BE18(v1 + 28, v1[31]), sub_100043268(v8), v10 = type metadata accessor for Date(), LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10), sub_10000BD44(v8, &unk_1003A3BE0, &qword_1002C36F0), v9 == 1))
  {
    sub_100020148(2039, 0xD00000000000003DLL, 0x8000000100348610, 0);
    swift_willThrow();
  }

  else
  {
    v11 = *sub_10000BE18(v3 + 50, v3[53]);
    sub_100147BC4(a1 & 1);
    if (!v2)
    {
      v12 = *sub_10000BE18(v3 + 23, v3[26]);
      sub_1000ADB5C(a1 & 1);
      return;
    }
  }

  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039FF28);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    if (a1)
    {
      v18 = 0x656E696C66666FLL;
    }

    else
    {
      v18 = 0x656E696C6E6FLL;
    }

    if (a1)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = sub_100008F6C(v18, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to switch MPOCOperationMode to %s", v16, 0xCu);
    sub_10000959C(v17);
  }

  v21 = v3[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v23 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 7;
  v24 = sub_100184144(inited);
  swift_setDeallocating();
  v25 = sub_10000BD44(v23, &qword_10039FED8, &unk_1002C37D0);
  v26 = *(v21 + 56);
  __chkstk_darwin(v25);
  *(&v29 - 2) = v24;
  os_unfair_lock_lock((v26 + 32));
  sub_10006535C((v26 + 16));
  os_unfair_lock_unlock((v26 + 32));

  v28 = *(v21 + 56);
  __chkstk_darwin(v27);
  *(&v29 - 2) = v21;
  *(&v29 - 8) = 3;
  os_unfair_lock_lock((v28 + 32));
  sub_1000653BC((v28 + 16));
  os_unfair_lock_unlock((v28 + 32));
  sub_100020148(2029, 0, 0, 0);
  swift_willThrow();
}

void *sub_100055790(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = *v2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v78 = *(v9 - 8);
  v10 = v78[8];
  __chkstk_darwin(v9);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v75 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_10039FF28);

  v74 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v86 = a1;
  v79 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v72 = v3;
    v24 = v23;
    v85 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, &v85);
    v73 = v9;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002C1660;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;

    v30 = showFunction(signature:_:)(0xD000000000000020, 0x80000001003485E0, v29);
    v32 = v31;

    v33 = v30;
    v9 = v73;
    v34 = sub_100008F6C(v33, v32, &v85);

    *(v24 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();

    v4 = v72;
  }

  v35 = *sub_10000BE18(v5 + 76, v5[79]);
  result = sub_10014FBB4(201, 0x726564616572, 0xE600000000000000, 4, 1);
  if (!v4)
  {
    v38 = v37;
    v39 = sub_10000BE18(v5 + 76, v5[79]);
    v72 = "config-prepare-renewCertificate";
    v71 = v5[65];
    v40 = *v39;
    v41 = *(*v39 + 288);
    v73 = *(*v39 + 280);
    v70 = v41;
    sub_10000CCE4((v40 + 2), &v85);
    v42 = v40[10];
    v43 = v40[11];
    sub_10000BE18(v40 + 7, v42);

    sub_1000C289C(4u, v42, v43);
    v44 = *sub_10000BE18(v40 + 12, v40[15]);
    sub_10014EDF0(v83);
    v69 = v40[17];
    sub_10000CCE4((v40 + 25), v81);
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (v78[13])(v77, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
    v77 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v45 = v82;
    v46 = sub_100022438(v81, v82);
    v78 = &v68;
    v47 = *(*(v45 - 8) + 64);
    __chkstk_darwin(v46);
    v49 = (&v68 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = *v49;
    v52 = type metadata accessor for DefaultSecureTimeKeeper();
    v80[4] = &off_100384E70;
    v80[3] = v52;
    v80[0] = v51;
    v53 = type metadata accessor for AAASigner();
    v54 = swift_allocObject();
    v55 = sub_100022438(v80, v52);
    v56 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v55);
    v58 = (&v68 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = *v58;
    v61 = v79;

    sub_100112354(v73, v70, 203, 0xD000000000000010, v72 | 0x8000000000000000, 1, v86, v61, &v85, v84, v83, v69, v60, v77, v71, v54);
    sub_10000959C(v80);
    sub_10000959C(v81);
    ObjectType = swift_getObjectType();
    if ((*(v38 + 48))(ObjectType, v38, 0.0))
    {
      v63 = sub_1000650DC(&qword_1003A01C0, type metadata accessor for AAASigner);
      if ((*(v63 + 48))(v53, v63, 0.0))
      {
LABEL_14:
        swift_unknownObjectRelease();
      }

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        v67 = "safSigner certificate not valid";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);
      }
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        v67 = "readerBlobSigner certificate not valid";
        goto LABEL_12;
      }
    }

    sub_100020148(2035, 0, 0, 0);
    swift_willThrow();
    goto LABEL_14;
  }

  return result;
}

void *sub_100056094(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v153 = a1;
  v152 = *v2;
  v137 = type metadata accessor for OSSignpostError();
  v5 = *(v137 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v137);
  v8 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for OSSignpostID();
  v9 = *(v150 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v150);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v148 = &v130 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v130 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v130 - v19;
  __chkstk_darwin(v18);
  v146 = &v130 - v21;
  v144 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v143 = *(v144 - 8);
  v22 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.Attributes();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v141 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v140 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_10000403C(v30, qword_10039FF28);

  v151 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v149 = v9;
  v138 = v13;
  v136 = v5;
  v135 = v8;
  v147 = v20;
  v145 = a2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = _typeName(_:qualified:)();
    v38 = sub_100008F6C(v36, v37, &v159);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1002C1660;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 32) = v153;
    *(v39 + 40) = a2;

    v40 = showFunction(signature:_:)(0xD00000000000001ELL, 0x80000001003485C0, v39);
    v42 = v41;

    v43 = sub_100008F6C(v40, v42, &v159);

    *(v35 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s.%s", v35, 0x16u);
    swift_arrayDestroy();
  }

  v44 = *sub_10000BE18(v3 + 76, v3[79]);
  v45 = v160;
  result = sub_10014FBB4(201, 0x726564616572, 0xE600000000000000, 4, 0);
  if (!v45)
  {
    v134 = v47;
    v152 = result;
    v160 = 0;
    v48 = sub_10000BE18(v3 + 76, v3[79]);
    v132 = "config-prepare-renewCertificate";
    v131 = v3[65];
    v49 = *v48;
    v50 = *(*v48 + 288);
    v133 = *(*v48 + 280);
    sub_10000CCE4((v49 + 2), &v159);
    v51 = v49[10];
    v52 = v49[11];
    sub_10000BE18(v49 + 7, v51);

    sub_1000C289C(4u, v51, v52);
    v53 = *sub_10000BE18(v49 + 12, v49[15]);
    sub_10014EDF0(&v157);
    v54 = v49[17];
    sub_10000CCE4((v49 + 25), v155);
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (*(v143 + 104))(v142, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v144);
    v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v56 = v156;
    v57 = sub_100022438(v155, v156);
    v58 = *(*(v56 - 8) + 64);
    __chkstk_darwin(v57);
    v60 = (&v130 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60);
    v62 = *v60;
    v63 = type metadata accessor for DefaultSecureTimeKeeper();
    v154[4] = &off_100384E70;
    v154[3] = v63;
    v154[0] = v62;
    v144 = type metadata accessor for AAASigner();
    v64 = swift_allocObject();
    v65 = sub_100022438(v154, v63);
    v66 = *(*(v63 - 8) + 64);
    __chkstk_darwin(v65);
    v68 = (&v130 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68);
    v70 = *v68;
    v71 = v145;

    v153 = sub_100112354(v133, v50, 203, 0xD000000000000010, v132 | 0x8000000000000000, 0, v153, v71, &v159, &v158, &v157, v54, v70, v55, v131, v64);
    sub_10000959C(v154);
    sub_10000959C(v155);
    sub_10000BE18(v3 + 8, v3[11]);
    type metadata accessor for CertificateManager();
    if (sub_10004CDF4())
    {
      v72 = 0;
      v73 = v150;
      v74 = v149;
      v75 = v148;
      v76 = v147;
    }

    else
    {
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      v73 = v150;
      v74 = v149;
      v75 = v148;
      v76 = v147;
      if (v79)
      {
        v80 = swift_slowAlloc();
        *v80 = 134217984;
        *(v80 + 4) = 24;
        _os_log_impl(&_mh_execute_header, v77, v78, "Certificate(s) expire before time required for SAF: %ld hour(s). Begin renewal.", v80, 0xCu);
      }

      v81 = v146;
      if (qword_10039D378 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for OSSignposter();
      sub_10000403C(v82, qword_10039FF40);
      static OSSignpostID.exclusive.getter();
      v83 = OSSignposter.logHandle.getter();
      v84 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        v86 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v84, v86, "config-prepare-renewCertificate", "begin Configurator.renewCertificates()", v85, 2u);
        v81 = v146;
      }

      (*(v74 + 16))(v76, v81, v73);
      v87 = type metadata accessor for OSSignpostIntervalState();
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      v72 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v74 + 8))(v81, v73);
      v90 = v160;
      sub_100057804();
      v160 = v90;
      if (v90)
      {
        goto LABEL_15;
      }
    }

    ObjectType = swift_getObjectType();
    v92 = (*(v134 + 48))(86400.0);
    v93 = v139;
    if (v92)
    {
      goto LABEL_26;
    }

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      *(v96 + 4) = 24;
      _os_log_impl(&_mh_execute_header, v94, v95, "readerBlobSigner certificate expires before time required for SAF: %ld hour(s). Begin renewal.", v96, 0xCu);
      v93 = v139;
    }

    if (!v72)
    {
      if (qword_10039D378 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for OSSignposter();
      sub_10000403C(v97, qword_10039FF40);
      static OSSignpostID.exclusive.getter();
      v98 = OSSignposter.logHandle.getter();
      v99 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, v99, v101, "config-prepare-renewCertificate", "begin readerBlobSigner.renewImmediately()", v100, 2u);
        v93 = v139;
      }

      (*(v74 + 16))(v76, v93, v73);
      v102 = type metadata accessor for OSSignpostIntervalState();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      v72 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v74 + 8))(v93, v73);
    }

    v105 = v160;
    (*(v134 + 56))(ObjectType);
    v160 = v105;
    if (!v105)
    {
LABEL_26:
      v106 = sub_1000650DC(&qword_1003A01C0, type metadata accessor for AAASigner);
      if ((*(v106 + 48))(v144, v106, 86400.0))
      {
        if (!v72)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_40;
      }

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        *(v109 + 4) = 24;
        _os_log_impl(&_mh_execute_header, v107, v108, "safSigner certificate expires before time required for SAF: %ld hour(s). Begin renewal.", v109, 0xCu);
      }

      if (!v72)
      {
        if (qword_10039D378 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for OSSignposter();
        sub_10000403C(v110, qword_10039FF40);
        static OSSignpostID.exclusive.getter();
        v111 = OSSignposter.logHandle.getter();
        v112 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          v114 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, v112, v114, "config-prepare-renewCertificate", "begin safSigner.renewImmediately()", v113, 2u);
        }

        (*(v74 + 16))(v76, v75, v73);
        v115 = type metadata accessor for OSSignpostIntervalState();
        v116 = *(v115 + 48);
        v117 = *(v115 + 52);
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();
        (*(v74 + 8))(v75, v73);
      }

      v118 = v160;
      (*(v106 + 56))(v144, v106);
      v160 = v118;
      if (!v118)
      {
LABEL_40:
        if (qword_10039D378 != -1)
        {
          swift_once();
        }

        v119 = type metadata accessor for OSSignposter();
        sub_10000403C(v119, qword_10039FF40);
        v120 = OSSignposter.logHandle.getter();
        v121 = v138;
        OSSignpostIntervalState.signpostID.getter();
        v122 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v123 = v121;

          v124 = v135;
          checkForErrorAndConsumeState(state:)();

          v125 = v136;
          v126 = v137;
          if ((*(v136 + 88))(v124, v137) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v127 = "[Error] Interval already ended";
          }

          else
          {
            (*(v125 + 8))(v124, v126);
            v127 = "end renew certificate";
          }

          v128 = swift_slowAlloc();
          *v128 = 0;
          v129 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, v122, v129, "config-prepare-renewCertificate", v127, v128, 2u);

          swift_unknownObjectRelease();

          return (*(v74 + 8))(v123, v73);
        }

        else
        {

          swift_unknownObjectRelease();

          return (*(v74 + 8))(v121, v73);
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_15:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100057300()
{
  v2 = type metadata accessor for OSSignpostError();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OSSignpostID();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v47);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  sub_10000BE18((v0 + 64), *(v0 + 88));
  type metadata accessor for CertificateManager();
  result = sub_10004CD94();
  if (result)
  {
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_10039FF28);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v47;
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "certificates not valid, renew...", v20, 2u);
    }

    v42 = v1;

    if (qword_10039D378 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for OSSignposter();
    sub_10000403C(v21, qword_10039FF40);
    static OSSignpostID.exclusive.getter();
    v22 = OSSignposter.logHandle.getter();
    v23 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v23, v25, "config-prepare-renewCertificate", "begin renew certificate", v24, 2u);
      v19 = v47;
    }

    (*(v5 + 16))(v11, v13, v19);
    v26 = type metadata accessor for OSSignpostIntervalState();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v29 = *(v5 + 8);
    v29(v13, v19);
    v30 = v42;
    sub_100057804();
    if (v30)
    {
    }

    else
    {
      v31 = OSSignposter.logHandle.getter();
      v32 = v46;
      OSSignpostIntervalState.signpostID.getter();
      v33 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v34 = v43;
        checkForErrorAndConsumeState(state:)();

        v36 = v44;
        v35 = v45;
        if ((*(v44 + 88))(v34, v45) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(v36 + 8))(v34, v35);
          v37 = "end renew certificate";
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = v46;
        v40 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v33, v40, "config-prepare-renewCertificate", v37, v38, 2u);

        v32 = v39;
        v19 = v47;
      }

      return (v29)(v32, v19);
    }
  }

  return result;
}

uint64_t sub_100057804()
{
  v2 = v0;
  sub_10000BE18((v0 + 64), *(v0 + 88));
  type metadata accessor for CertificateManager();
  result = sub_10004CE60();
  if (v1)
  {
    _s3__C4CodeOMa_2(0);
    v40 = 2034;
    swift_errorRetain();
    sub_1000650DC(&qword_10039DBE8, _s3__C4CodeOMa_2);
    v4 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v4)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000403C(v5, qword_10039FF28);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_8;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Configurator.renewCertificates() operationNotAuthorized";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_8:

      return swift_willThrow();
    }

    v40 = 2000;
    swift_errorRetain();
    v10 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v10)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000403C(v11, qword_10039FF28);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Configurator.renewCertificates() connectionProblem", v14, 2u);
      }

      v15 = sub_10000BE18((v2 + 480), *(v2 + 504));
      v16 = sub_100020148(2000, 0, 0, 0);
      sub_10013F4E4(v16, *v15);

      return swift_willThrow();
    }

    v40 = 2025;
    swift_errorRetain();
    v17 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v17 & 1) != 0 || (v40 = v1, swift_errorRetain(), sub_100004074(&unk_1003A3C00, &unk_1002C16C0), v18 = swift_dynamicCast(), , v18) && v39 == 2)
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000403C(v19, qword_10039FF28);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Configurator.renewCertificates() cannotRenewCertificate: Could not get certificates from backend (possibly SecureChannelError) or\nmalformed response.", v22, 2u);
      }

      v23 = 2025;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v40 = 2999;
      swift_errorRetain();
      v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v26)
      {
        if (qword_10039D370 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000403C(v27, qword_10039FF28);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_8;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Configurator.renewCertificates() internal error";
        goto LABEL_7;
      }

      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000403C(v28, qword_10039FF28);
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136315138;
        swift_errorRetain();
        v33 = String.init<A>(describing:)();
        v35 = sub_100008F6C(v33, v34, &v40);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Configurator.renewCertificates() unexpected error: %s", v31, 0xCu);
        sub_10000959C(v32);
      }

      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v37;
      v23 = 2999;
      v24 = v36;
      v25 = v38;
    }

    sub_100020148(v23, v24, v25, 0);
    swift_willThrow();
  }

  return result;
}

void sub_100057E70(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10)
{
  v11 = v10;
  v232 = a6;
  v233 = a8;
  v230 = a5;
  v231 = a7;
  v245 = a4;
  v229 = a3;
  v255 = a1;
  v13 = *v10;
  v14 = type metadata accessor for UUID();
  v251 = *(v14 - 8);
  v15 = *(v251 + 64);
  v16 = __chkstk_darwin(v14);
  v237 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v236 = &v215 - v19;
  v228 = v20;
  __chkstk_darwin(v18);
  v224 = &v215 - v21;
  v22 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v241 = (&v215 - v24);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v242 = v25;
  v243 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v249 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v226 = *(v249 - 8);
  v30 = *(v226 + 64);
  v31 = __chkstk_darwin(v249);
  v223 = &v215 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v234 = &v215 - v34;
  v35 = __chkstk_darwin(v33);
  v238 = &v215 - v36;
  v37 = __chkstk_darwin(v35);
  v225 = &v215 - v38;
  v39 = __chkstk_darwin(v37);
  v239 = &v215 - v40;
  v41 = __chkstk_darwin(v39);
  v235 = &v215 - v42;
  v227 = v43;
  __chkstk_darwin(v41);
  v254 = &v215 - v44;
  v45 = type metadata accessor for OSSignpostID();
  v247 = *(v45 - 8);
  v248 = v45;
  v46 = *(v247 + 8);
  v47 = __chkstk_darwin(v45);
  v246 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v253 = &v215 - v49;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v50 = a9;
  v51 = type metadata accessor for Logger();
  v52 = sub_10000403C(v51, qword_10039FF28);

  v257 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  v55 = os_log_type_enabled(v53, v54);
  v250 = v14;
  v240 = v29;
  v252 = v13;
  v244 = a2;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v263[0] = swift_slowAlloc();
    *v56 = 136315394;
    v57 = _typeName(_:qualified:)();
    v256 = a9;
    v59 = sub_100008F6C(v57, v58, v263);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1002C1660;
    v61 = String.redactedTokenFromBase64()();
    *(v60 + 56) = &type metadata for String;
    *(v60 + 32) = v61;
    v62 = showFunction(signature:_:)(0xD000000000000065, 0x80000001003484F0, v60);
    v64 = v63;

    v65 = v62;
    v50 = v256;
    v66 = sub_100008F6C(v65, v64, v263);

    *(v56 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v53, v54, "%s.%s", v56, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v67 = atomic_flag_test_and_set((v11 + 16));
  swift_endAccess();
  if (v67)
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "install in progress", v70, 2u);
    }

    v71 = 0x80000001003484D0;
    v72 = 2026;
    v73 = 0xD000000000000013;
LABEL_24:
    v117 = sub_100020148(v72, v73, v71, 0);
    v50(0, v117);

    return;
  }

  v74 = [objc_opt_self() sharedHardwareManager];
  v75 = [v74 getHwSupport];

  if (v75 != 2)
  {
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "NFC not available", v116, 2u);
    }

    v72 = 2041;
    v73 = 0;
    v71 = 0;
    goto LABEL_24;
  }

  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for OSSignposter();
  v77 = sub_10000403C(v76, qword_10039FF40);
  v78 = v253;
  static OSSignpostID.exclusive.getter();
  v221 = v77;
  v79 = OSSignposter.logHandle.getter();
  v80 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, v80, v82, "config-install-totalTime", "start install", v81, 2u);
    v78 = v253;
  }

  v222 = a10;
  v256 = v50;

  v83 = v247;
  v84 = v78;
  v85 = v78;
  v86 = v248;
  (*(v247 + 2))(v246, v84, v248);
  v87 = type metadata accessor for OSSignpostIntervalState();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  v90 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v83 + 8))(v85, v86);
  *(v11 + 648) = 0;
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v91 = static Terminator.shared;
  swift_allocObject();
  v92 = swift_weakInit();
  v93 = *(v91 + 24);
  __chkstk_darwin(v92);

  os_unfair_lock_lock((v93 + 32));
  sub_100064AFC((v93 + 16), v263);
  os_unfair_lock_unlock((v93 + 32));

  v94 = v263[0];

  v95 = swift_allocBox();
  v96 = v250;
  v97 = v251 + 56;
  v98 = *(v251 + 56);
  v219 = v99;
  v98(v99, 1, 1, v250);
  v217 = v98;
  v218 = v97;
  v98(v254, 1, 1, v96);
  v100 = swift_allocObject();
  swift_weakInit();
  v101 = swift_allocObject();
  *(v101 + 2) = v95;
  *(v101 + 3) = v100;
  v247 = v94;
  *(v101 + 4) = v94;
  *(v101 + 5) = v90;
  v102 = v222;
  *(v101 + 6) = v256;
  *(v101 + 7) = v102;
  v253 = v101;
  *(v101 + 8) = v252;
  swift_beginAccess();
  v103 = *sub_10000BE18((v11 + 360), *(v11 + 384));

  v248 = v95;

  if ((sub_1001392D0() & 1) == 0)
  {
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "Incorrect JCOP version", v106, 2u);
    }

    if (*(v11 + 312) == 1)
    {
      v107 = sub_100020148(2033, 0, 0, 0);
      v108 = *(v11 + 304);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 4;
      v263[0] = v107;
      type metadata accessor for ConfigurationError(0);
      sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError);
      v110 = _BridgedStoredNSError.errorCode.getter();
      *(inited + 64) = &type metadata for Int;
      *(inited + 40) = v110;
      sub_100184144(inited);
      swift_setDeallocating();
      v111 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
      v112 = *(v108 + 56);
      __chkstk_darwin(v111);
      os_unfair_lock_lock((v112 + 32));
      sub_10006535C((v112 + 16));
      os_unfair_lock_unlock((v112 + 32));

      v113 = v107;
      sub_100059BF4(0, v107, v248, v100, v247, v90, v256, v222);

      sub_10000BD44(v254, &qword_1003A0178, &unk_1002C3BB0);

      return;
    }
  }

  v220 = v100;
  v246 = v90;
  if (v245)
  {
    [v245 onUpdateWithEvent:0];
  }

  sub_100186948("config-install-preprosessing", 28, 2, v11, 0xD00000000000001BLL, 0x8000000100348410);
  v118 = *(v11 + 384);
  v119 = sub_10000BE18((v11 + 360), v118);
  v120 = *(v118 - 8);
  v121 = *(v120 + 64);
  __chkstk_darwin(v119);
  v123 = &v215 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v120 + 16))(v123);
  v124 = [*(*v123 + 16) serialNumber];
  if (!v124)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v125 = v124;
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;

  (*(v120 + 8))(v123, v118);
  v129 = v244;

  sub_10008C068(v255, v129, v126, v128, v263);
  v130 = *sub_10000BE18((v11 + 224), *(v11 + 248));
  v131 = v241;
  sub_100043268(v241);
  v133 = v242;
  v132 = v243;
  if ((*(v243 + 48))(v131, 1, v242) == 1)
  {
    v134 = v11;
    sub_10000BD44(v131, &unk_1003A3BE0, &qword_1002C36F0);
    v135 = sub_100020148(2039, 0xD00000000000001ELL, 0x80000001003483B0, 0);
    swift_willThrow();
    sub_10006413C(v263);
    v136 = v254;
    goto LABEL_30;
  }

  v145 = v240;
  (*(v132 + 32))(v240, v131, v133);
  sub_10008B7F4(v145);
  v136 = v254;
  v152 = v235;
  sub_10008BD6C(v235);
  v153 = v250;
  v154 = v251;
  v155 = (v251 + 48);
  v156 = *(v251 + 48);
  if (v156(v152, 1, v250) == 1)
  {
    sub_10000BD44(v152, &qword_1003A0178, &unk_1002C3BB0);
    sub_100064B9C(v263, &v259);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.error.getter();
    sub_10006413C(v263);
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v11;
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v259 = v161;
      *v160 = 136446210;
      sub_10008BD6C(v239);
      v162 = String.init<A>(describing:)();
      v164 = sub_100008F6C(v162, v163, &v259);

      *(v160 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v157, v158, "TPID of KernelToken: %{public}s", v160, 0xCu);
      sub_10000959C(v161);

      v11 = v159;
    }

    v165 = v240;
    v134 = v11;
    v166 = sub_10000BE18((v11 + 480), *(v11 + 504));
    v167 = sub_100020148(2011, 0, 0, 0);
    sub_10013F4E4(v167, *v166);

    v135 = sub_100020148(2011, 0, 0, 0);
    swift_willThrow();
    sub_10006413C(v263);
    (*(v243 + 8))(v165, v133);
LABEL_30:
    *&v259 = v135;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for ConfigurationError(0);
    if (swift_dynamicCast())
    {
      v137 = v258;
      v262[0] = v258;
      sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError);
      if (_BridgedStoredNSError.errorCode.getter() >= 2000)
      {
        v262[0] = v137;
        if (_BridgedStoredNSError.errorCode.getter() <= 2999)
        {

          v146 = *(v134 + 304);
          sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
          v147 = swift_initStackObject();
          *(v147 + 16) = xmmword_1002C1660;
          *(v147 + 32) = 4;
          v262[0] = v137;
          v148 = _BridgedStoredNSError.errorCode.getter();
          *(v147 + 64) = &type metadata for Int;
          *(v147 + 40) = v148;
          sub_100184144(v147);
          swift_setDeallocating();
          v149 = sub_10000BD44(v147 + 32, &qword_10039FED8, &unk_1002C37D0);
          v150 = *(v146 + 56);
          __chkstk_darwin(v149);
          os_unfair_lock_lock((v150 + 32));
          sub_10006535C((v150 + 16));
          os_unfair_lock_unlock((v150 + 32));

          v151 = v137;
          sub_100059BF4(0, v137, v248, v220, v247, v246, v256, v222);

          sub_10000BD44(v136, &qword_1003A0178, &unk_1002C3BB0);

          goto LABEL_35;
        }
      }
    }

    swift_errorRetain();
    v138 = sub_100020148(2016, 0, 0, v135);

    v139 = *(v134 + 304);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v140 = swift_initStackObject();
    *(v140 + 16) = xmmword_1002C1660;
    *(v140 + 32) = 4;
    *&v259 = v138;
    sub_1000650DC(&qword_10039DC00, type metadata accessor for ConfigurationError);
    v141 = _BridgedStoredNSError.errorCode.getter();
    *(v140 + 64) = &type metadata for Int;
    *(v140 + 40) = v141;
    sub_100184144(v140);
    swift_setDeallocating();
    v142 = sub_10000BD44(v140 + 32, &qword_10039FED8, &unk_1002C37D0);
    v143 = *(v139 + 56);
    __chkstk_darwin(v142);
    os_unfair_lock_lock((v143 + 32));
    sub_10006535C((v143 + 16));
    os_unfair_lock_unlock((v143 + 32));

    v144 = v138;
    sub_100059BF4(0, v138, v248, v220, v247, v246, v256, v222);

    sub_10000BD44(v136, &qword_1003A0178, &unk_1002C3BB0);
LABEL_35:

    return;
  }

  v256 = v155;
  v169 = v154 + 32;
  v168 = *(v154 + 32);
  v241 = v156;
  v170 = v224;
  v168(v224, v152, v153);
  v171 = v239;
  sub_10008B618(v239);
  sub_10006413C(v263);
  (*(v243 + 8))(v240, v133);
  sub_10000BD44(v136, &qword_1003A0178, &unk_1002C3BB0);
  sub_100064190(v171, v136);
  v242 = v168;
  v243 = v169;
  v168(v171, v170, v153);
  v217(v171, 0, 1, v153);
  v172 = v219;
  swift_beginAccess();
  sub_100064BF8(v171, v172);
  sub_10000CCE4(v11 + 264, &v259);
  v173 = v260;
  v240 = v261;
  v174 = sub_10000BE18(&v259, v260);
  v175 = v251;
  v235 = v174;
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v176 = swift_initStackObject();
  *(v176 + 16) = xmmword_1002C1660;
  *(v176 + 32) = 1684631668;
  *(v176 + 40) = 0xE400000000000000;
  v177 = v225;
  sub_100065074(v172, v225, &qword_1003A0178, &unk_1002C3BB0);
  v178 = v241;
  if (v241(v177, 1, v153) == 1)
  {
    goto LABEL_52;
  }

  v179 = UUID.uuidString.getter();
  *(v176 + 72) = &type metadata for String;
  *(v176 + 80) = &protocol witness table for String;
  *(v176 + 48) = v179;
  *(v176 + 56) = v180;
  v181 = *(v175 + 8);
  v249 = v175 + 8;
  v247 = v181;
  v181(v177, v153);
  v182 = sub_100184010(v176);
  swift_setDeallocating();
  sub_10000BD44(v176 + 32, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0xFu, v182, v173, v240);

  sub_10000959C(&v259);
  v183 = v238;
  sub_100065074(v172, v238, &qword_1003A0178, &unk_1002C3BB0);
  if (v178(v183, 1, v153) == 1)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v184 = *(v251 + 16);
  v185 = v236;
  v184(v236, v183, v153);
  v186 = v234;
  sub_100065074(v254, v234, &qword_1003A0178, &unk_1002C3BB0);
  v187 = Logger.logObject.getter();
  v188 = v153;
  v189 = static os_log_type_t.default.getter();
  v190 = os_log_type_enabled(v187, v189);
  v216 = v11;
  v240 = v184;
  if (v190)
  {
    LODWORD(v257) = v189;
    v191 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v262[0] = v235;
    *v191 = 136315394;
    v192 = _typeName(_:qualified:)();
    v194 = sub_100008F6C(v192, v193, v262);

    *(v191 + 4) = v194;
    *(v191 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_1002C1790;
    *(v195 + 56) = &type metadata for String;
    *(v195 + 32) = 0x746E6573657270;
    *(v195 + 40) = 0xE700000000000000;
    *(v195 + 88) = v188;
    v196 = sub_10000BE5C((v195 + 64));
    v184(v196, v236, v188);
    v197 = v223;
    sub_100065074(v186, v223, &qword_1003A0178, &unk_1002C3BB0);
    if (v241(v197, 1, v188) == 1)
    {
      sub_10000BD44(v197, &qword_1003A0178, &unk_1002C3BB0);
      *(v195 + 120) = &type metadata for String;
      *(v195 + 96) = 0;
      *(v195 + 104) = 0xE000000000000000;
    }

    else
    {
      v260 = v188;
      v198 = sub_10000BE5C(&v259);
      v242(v198, v197, v188);
      sub_100019D3C(&v259, (v195 + 96));
    }

    v199 = showFunction(signature:_:)(0xD000000000000072, 0x8000000100348430, v195);
    v201 = v200;

    sub_10000BD44(v234, &qword_1003A0178, &unk_1002C3BB0);
    v247(v236, v188);
    v202 = sub_100008F6C(v199, v201, v262);

    *(v191 + 14) = v202;
    _os_log_impl(&_mh_execute_header, v187, v257, "%s.%s", v191, 0x16u);
    swift_arrayDestroy();

    v183 = v238;
  }

  else
  {

    sub_10000BD44(v186, &qword_1003A0178, &unk_1002C3BB0);
    v247(v185, v188);
  }

  v240(v237, v183, v188);
  sub_100065074(v254, v239, &qword_1003A0178, &unk_1002C3BB0);
  v203 = (*(v251 + 80) + 56) & ~*(v251 + 80);
  v204 = (v228 + *(v226 + 80) + v203) & ~*(v226 + 80);
  v205 = v204 + v227;
  v206 = (v204 + v227) & 0xFFFFFFFFFFFFFFF8;
  v207 = (v206 + 31) & 0xFFFFFFFFFFFFFFF8;
  v208 = swift_allocObject();
  v208[2] = v216;
  v208[3] = sub_100064B68;
  v209 = v255;
  v208[4] = v253;
  v208[5] = v209;
  v208[6] = v244;
  v242(v208 + v203, v237, v188);
  sub_100064190(v239, v208 + v204);
  *(v208 + v205) = v229 & 1;
  v210 = v208 + v206;
  v211 = v231;
  v213 = v232;
  v212 = v233;
  *(v210 + 1) = v230;
  *(v210 + 2) = v213;
  v214 = (v208 + v207);
  *v214 = v211;
  v214[1] = v212;
  *(v208 + ((v207 + 23) & 0xFFFFFFFFFFFFFFF8)) = v245;
  swift_unknownObjectRetain();

  sub_1000648EC(sub_100064E24, v208);

  sub_10000BD44(v254, &qword_1003A0178, &unk_1002C3BB0);
  v247(v238, v188);
}

uint64_t sub_100059B4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + 648) = 1;
    v2 = *(result + 48);
    v3 = *(result + 56);
    sub_10000BE18((result + 24), v2);
    (*(v3 + 24))(v2, v3);
    v4 = *(v1 + 656);
    if (v4)
    {
      *(v4 + 96) = 1;
    }
  }

  return result;
}

uint64_t sub_100059BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v76 = a7;
  v71 = a6;
  v70 = a5;
  v75 = a1;
  v69 = type metadata accessor for OSSignpostError();
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OSSignpostID();
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v64 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v77 = a2;
  if (a2)
  {
    v65 = v19;
    swift_errorRetain();
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000403C(v25, qword_10039FF28);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v64[1] = a8;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66 = a4;
      v30 = v29;
      v31 = swift_slowAlloc();
      v64[0] = v23;
      v78[0] = v31;
      *v28 = 136315650;
      v32 = _typeName(_:qualified:)();
      v34 = sub_100008F6C(v32, v33, v78);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      v35 = showFunction(signature:_:)(0xD000000000000065, 0x80000001003484F0, _swiftEmptyArrayStorage);
      v37 = sub_100008F6C(v35, v36, v78);

      *(v28 + 14) = v37;
      *(v28 + 22) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v38;
      *v30 = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s.%s error :%@", v28, 0x20u);
      sub_10000BD44(v30, &unk_10039E220, &qword_1002C3D60);
      a4 = v66;

      swift_arrayDestroy();
      v23 = v64[0];
    }

    else
    {
    }

    v19 = v65;
  }

  swift_beginAccess();
  sub_100065074(v24, v18, &qword_1003A0178, &unk_1002C3BB0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000BD44(v18, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_10000CCE4(Strong + 264, v78);

      v40 = v79;
      v65 = v80;
      sub_10000BE18(v78, v79);
      v66 = a4;
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 1684631668;
      *(inited + 40) = 0xE400000000000000;
      v42 = UUID.uuidString.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v42;
      *(inited + 56) = v43;
      v44 = sub_100184010(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x12u, v44, v40, v65);

      (*(v20 + 8))(v23, v19);
      sub_10000959C(v78);
    }

    else
    {
      (*(v20 + 8))(v23, v19);
    }
  }

  swift_beginAccess();
  v45 = swift_weakLoadStrong();
  v46 = v72;
  if (v45)
  {
    sub_1000611D4();
  }

  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v47 = *(static Terminator.shared + 24);
  os_unfair_lock_lock(v47 + 8);
  sub_100189B50(&v47[4], v70);
  os_unfair_lock_unlock(v47 + 8);
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for OSSignposter();
  sub_10000403C(v48, qword_10039FF40);
  v49 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v50 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v51 = v67;
    checkForErrorAndConsumeState(state:)();
    v52 = v51;

    v53 = v68;
    v54 = v51;
    v55 = v69;
    if ((*(v68 + 88))(v54, v69) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v56 = "[Error] Interval already ended";
    }

    else
    {
      (*(v53 + 8))(v52, v55);
      v56 = "end install";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, v50, v58, "config-install-totalTime", v56, v57, 2u);
  }

  (*(v73 + 8))(v46, v74);
  swift_beginAccess();
  v59 = swift_weakLoadStrong();
  if (v59)
  {
    v60 = *(v59 + 304);

    v62 = *(v60 + 56);
    __chkstk_darwin(v61);
    v64[-2] = v60;
    LOBYTE(v64[-1]) = 1;
    os_unfair_lock_lock((v62 + 32));
    sub_1000653BC((v62 + 16));
    os_unfair_lock_unlock((v62 + 32));
  }

  return v76(v75, v77);
}

void sub_10005A560(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v94 = a8;
  v93 = a7;
  v96 = a6;
  v95 = a5;
  v92 = a2;
  v90 = type metadata accessor for DispatchTime();
  v89 = *(v90 - 8);
  v19 = *(v89 + 64);
  v20 = __chkstk_darwin(v90);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v88 = &v86 - v23;
  v24 = sub_100004074(&qword_1003A01A8, &unk_1002C3C00);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v86 - v26;
  v28 = type metadata accessor for BeeStateInfo.SystemStatus();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v86 - v34;
  if (qword_10039D378 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for OSSignposter();
  sub_10000403C(v35, qword_10039FF40);
  v97 = a4;
  sub_100186BE8("config-install-preprosessing", 28, 2, a4, 0xD000000000000019, 0x8000000100348560);
  if (a1)
  {
    if (*(a1 + 16) && (v36 = sub_1000F5EEC(3u), (v37 & 1) != 0))
    {
      sub_10000BDA4(*(a1 + 56) + 32 * v36, v98);
      v38 = swift_dynamicCast();
      (*(v29 + 56))(v27, v38 ^ 1u, 1, v28);
      if ((*(v29 + 48))(v27, 1, v28) != 1)
      {
        v39 = v91;
        (*(v29 + 32))(v91, v27, v28);
        v40 = *(v29 + 104);
        LODWORD(v86) = enum case for BeeStateInfo.SystemStatus.needsRepair(_:);
        v87 = v40;
        (v40)(v33);
        v41 = static BeeStateInfo.SystemStatus.== infix(_:_:)();
        v42 = *(v29 + 8);
        v42(v33, v28);
        if (v41 & 1) != 0 || ((v87)(v33, enum case for BeeStateInfo.SystemStatus.terminated(_:), v28), v43 = static BeeStateInfo.SystemStatus.== infix(_:_:)(), v42(v33, v28), (v43))
        {
          (v87)(v33, v86, v28);
          v44 = static BeeStateInfo.SystemStatus.== infix(_:_:)();
          v87 = v42;
          v42(v33, v28);
          if (qword_10039D370 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          v86 = sub_10000403C(v45, qword_10039FF28);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          v48 = os_log_type_enabled(v46, v47);
          v49 = v90;
          if (v48)
          {
            v50 = swift_slowAlloc();
            *v50 = 67109120;
            *(v50 + 4) = v44 & 1;
            _os_log_impl(&_mh_execute_header, v46, v47, "KernelManager indicated deletion required. forRecovery: %{BOOL}d", v50, 8u);
          }

          v51 = v97;

          static DispatchTime.now()();
          v52 = v88;
          + infix(_:_:)();
          v53 = *(v89 + 8);
          v53(v22, v49);
          v73 = sub_100100874(v52, v51);

          v53(v52, v49);
          v54 = v95;
          v74 = v87;
          v75 = v91;
          if ((v73 & 1) == 0)
          {
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              *v78 = 0;
              _os_log_impl(&_mh_execute_header, v76, v77, "Failed to delete: Session Busy", v78, 2u);
            }

            v79 = sub_100020148(2026, 0, 0, 0);
            swift_willThrow();
            swift_errorRetain();
            v80 = Logger.logObject.getter();
            v81 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              *v82 = 138412290;
              swift_errorRetain();
              v84 = _swift_stdlib_bridgeErrorToNSError();
              *(v82 + 4) = v84;
              *v83 = v84;
              _os_log_impl(&_mh_execute_header, v80, v81, "Failed to delete: %@", v82, 0xCu);
              sub_10000BD44(v83, &unk_10039E220, &qword_1002C3D60);
              v75 = v91;

              v74 = v87;
            }

            swift_errorRetain();
            v85 = sub_100020148(2009, 0, 0, v79);

            v54(0, v85);
          }

          v74(v75, v28);
          goto LABEL_17;
        }

        v42(v39, v28);
LABEL_16:
        v54 = v95;
LABEL_17:
        v70 = sub_10005B390(a1);
        v72 = v71;
        sub_10006568C(v93, v94, a9, a10, v70, v71, v92 & 1, a11 & 1, a12, a13, a14, a15, a16, v54, v96);
        sub_100009548(v70, v72);
        return;
      }
    }

    else
    {
      (*(v29 + 56))(v27, 1, 1, v28);
    }

    sub_10000BD44(v27, &qword_1003A01A8, &unk_1002C3C00);
    goto LABEL_16;
  }

  if (a3)
  {
    v55 = v97;
    v56 = *(v97 + 304);
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 4;
    swift_errorRetain();
    v58 = _convertErrorToNSError(_:)();
    v59 = [v58 code];

    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v59;
    sub_100184144(inited);
    swift_setDeallocating();
    v60 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
    v61 = *(v56 + 56);
    __chkstk_darwin(v60);
    os_unfair_lock_lock((v61 + 32));
    sub_10006535C((v61 + 16));
    os_unfair_lock_unlock((v61 + 32));

    _s3__C4CodeOMa_2(0);
    v98[0] = 2030;
    swift_errorRetain();
    sub_1000650DC(&qword_10039DBE8, _s3__C4CodeOMa_2);
    LOBYTE(inited) = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (inited)
    {
      v62 = v95;
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000403C(v63, qword_10039FF28);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Prohibit Timer is active (session busy)", v66, 2u);
      }

      v67 = sub_10000BE18((v55 + 480), *(v55 + 504));
      v68 = sub_100020148(2030, 0, 0, 0);
      sub_10013F4E4(v68, *v67);

      swift_errorRetain();
      v69 = sub_100020148(2026, 0, 0, a3);

      v62(0, v69);
    }

    else
    {
      swift_errorRetain();
      v95(0, a3);
    }
  }
}

uint64_t sub_10005B390(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A01A8, &unk_1002C3C00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v55 - v4;
  v6 = sub_100182BA0(_swiftEmptyArrayStorage);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v62 = 0x8000000100346420;
  v63 = 0x8000000100346440;
  v61 = 0x80000001003463F0;
  v56 = a1;

  v12 = 0;
  v60 = &type metadata for Any + 8;
  v59 = v5;
  v58 = a1 + 64;
  v57 = v11;
  while (v10)
  {
    v14 = v12;
LABEL_16:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = v17 | (v14 << 6);
    v19 = *(*(v56 + 48) + v18);
    sub_10000BDA4(*(v56 + 56) + 32 * v18, &v66);
    LOBYTE(v68) = v19;
    sub_100019D3C(&v66, (&v68 + 8));
LABEL_17:
    v71 = v68;
    v72 = v69;
    v73 = v70;
    if (!v70)
    {

      *(&v72 + 1) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
      *&v71 = v6;
      v53 = sub_100099560(&v71, 0, 1);
      sub_10000959C(&v71);
      return v53;
    }

    v20 = v71;
    sub_100019D3C((&v71 + 8), &v68);
    v67 = v60;
    *&v66 = swift_allocObject();
    sub_10000BDA4(&v68, v66 + 16);
    if (v20 == 3)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_10000BDA4(&v68, &v64);
    v22 = type metadata accessor for BeeStateInfo.SystemStatus();
    v23 = swift_dynamicCast();
    v24 = *(*(v22 - 8) + 56);
    if ((v23 & 1) == 0)
    {
      v24(v5, 1, 1, v22);
      sub_10000BD44(v5, &qword_1003A01A8, &unk_1002C3C00);
      v26 = 0;
      v65 = &type metadata for String;
      goto LABEL_24;
    }

    v25 = *(v22 - 8);
    v24(v5, 0, 1, v22);
    v26 = BeeStateInfo.SystemStatus.description.getter();
    v27 = v5;
    v29 = v28;
    (*(v25 + 8))(v27, v22);
    v65 = &type metadata for String;
    if (!v29)
    {
      v26 = 0;
LABEL_24:
      v29 = 0xE000000000000000;
    }

    *&v64 = v26;
    *(&v64 + 1) = v29;
    sub_10000959C(&v66);
    sub_100019D3C(&v64, &v66);
LABEL_26:
    v30 = 0x6F436C61626F6C67;
    if (v20 == 7)
    {
      v30 = 0x4965746174536573;
    }

    v31 = 0xEE0064496769666ELL;
    if (v20 == 7)
    {
      v31 = 0xEB000000006F666ELL;
    }

    if (v20 == 6)
    {
      v30 = 0x6572617764726168;
      v31 = 0xEC00000065707954;
    }

    v32 = 0xD000000000000018;
    if (v20 == 4)
    {
      v32 = 0xD000000000000013;
    }

    v33 = v63;
    if (v20 == 4)
    {
      v33 = v62;
    }

    if (v20 <= 5)
    {
      v30 = v32;
      v31 = v33;
    }

    v34 = 0xD000000000000019;
    if (v20 != 2)
    {
      v34 = 0x74536D6574737973;
    }

    v35 = v61;
    if (v20 != 2)
    {
      v35 = 0xEC00000073757461;
    }

    v36 = 0x666E6F4365726F63;
    if (!v20)
    {
      v36 = 0x736B706163;
    }

    v37 = 0xEC00000064496769;
    if (!v20)
    {
      v37 = 0xE500000000000000;
    }

    if (v20 <= 1)
    {
      v34 = v36;
      v35 = v37;
    }

    if (v20 <= 3)
    {
      v38 = v34;
    }

    else
    {
      v38 = v30;
    }

    if (v20 <= 3)
    {
      v39 = v35;
    }

    else
    {
      v39 = v31;
    }

    sub_10000BDA4(&v66, &v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v6;
    v42 = sub_1000F5A28(v38, v39);
    v43 = v6[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_69;
    }

    v46 = v41;
    if (v6[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1001811FC();
        if (v46)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10017CA5C(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_1000F5A28(v38, v39);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_71;
      }

      v42 = v47;
      if (v46)
      {
LABEL_4:

        v6 = v74;
        v13 = (v74[7] + 32 * v42);
        sub_10000959C(v13);
        sub_100019D3C(&v64, v13);
        sub_10000959C(&v68);
        goto LABEL_5;
      }
    }

    v6 = v74;
    v74[(v42 >> 6) + 8] |= 1 << v42;
    v49 = (v6[6] + 16 * v42);
    *v49 = v38;
    v49[1] = v39;
    sub_100019D3C(&v64, (v6[7] + 32 * v42));
    sub_10000959C(&v68);
    v50 = v6[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_70;
    }

    v6[2] = v52;
LABEL_5:
    sub_10000959C(&v66);
    v5 = v59;
    v7 = v58;
    v11 = v57;
  }

  if (v11 <= v12 + 1)
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v10 = 0;
      v70 = 0;
      v12 = v16;
      v68 = 0u;
      v69 = 0u;
      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10005BB38(void *a1, uint64_t a2, char *a3, uint64_t a4, void (*a5)(void, uint64_t, void *), uint64_t a6)
{
  v103 = a5;
  v105 = a3;
  v104 = type metadata accessor for UUID();
  v10 = *(v104 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v104);
  v13 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v19 = (v90 - v18);
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000403C(v24, qword_10039FF28);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v25, v26))
      {

        goto LABEL_23;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "session busy %@", v27, 0xCu);
      sub_10000BD44(v28, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000403C(v34, qword_10039FF28);
      v25 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v25, v35, "no kernel manager", v36, 2u);
      }
    }

LABEL_23:
    swift_beginAccess();
    v37 = *(a4 + 16);
    v38 = sub_100020148(2026, 0, 0, 0);
    v103(0, v37, v38);

    return;
  }

  v102 = v17;
  v106 = a1;
  v20 = [v106 stateInformation];
  v95 = v19;
  v96 = v13;
  v100 = a4;
  v101 = v10;
  v21 = v105;
  v99 = a6;
  if (v20)
  {
    v22 = v20;
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v23 + 16))
    {
      sub_10000BDA4(v23 + 32, &aBlock);

      sub_100004074(&qword_1003A0190, &unk_1002C4040);
      if (swift_dynamicCast())
      {
        v98 = v114;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v98 = sub_100182BA0(_swiftEmptyArrayStorage);
LABEL_13:
  if (qword_10039D3C0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v31 = v100;
  v30 = v101;
  v111 = &type metadata for SPRFeatures;
  v112 = sub_1000094A0();
  LOBYTE(aBlock) = 2;
  v32 = isFeatureEnabled(_:)();
  sub_10000959C(&aBlock);
  if ((v32 & 1) == 0)
  {
    swift_beginAccess();
    *(v31 + 16) = 1;
LABEL_31:
    if (qword_10039D370 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000403C(v44, qword_10039FF28);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "using legacy flow", v47, 2u);
    }

    v56 = sub_10011D5D4();
    v58 = v57;
    v59 = v104;

    v60 = v95;
    sub_10005D568(v56, v58, v95);
    v61 = *(v30 + 6);
    v105 = v30 + 48;
    v97 = v61;
    if (v61(v60, 1, v59) == 1)
    {
      sub_10000BD44(v60, &qword_1003A0178, &unk_1002C3BB0);

      v93 = v58;
    }

    else
    {
      v56 = UUID.uuidString.getter();
      v93 = v62;
      (*(v30 + 1))(v60, v59);
    }

    v63 = sub_100090AB0();
    v64 = *(v63 + 2);
    if (v64)
    {
      v90[1] = 0;
      v91 = v56;
      v92 = v58;
      v107 = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v64, 0);
      v66 = 0;
      v65 = v107;
      v90[0] = v63;
      v94 = (v30 + 8);
      v95 = (v30 + 32);
      v67 = v63 + 32;
      v101 = v63 + 32;
      do
      {
        v68 = &v67[16 * v66];
        v70 = *v68;
        v69 = v68[1];
        swift_bridgeObjectRetain_n();
        if (String.count.getter() == 32)
        {
          v71 = HIBYTE(v69) & 0xF;
          aBlock = v70;
          v109 = v69;
          if ((v69 & 0x2000000000000000) == 0)
          {
            v71 = v70 & 0xFFFFFFFFFFFFLL;
          }

          v110 = 0;
          v111 = v71;

          while (String.Iterator.next()().value._object)
          {
            Character.hexDigitValue.getter();
            v73 = v72;

            if (v73)
            {

              goto LABEL_53;
            }
          }

          aBlock = v70;
          v109 = v69;

          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();
          String.insert(_:at:)();
          String.index(_:offsetBy:)();

          String.insert(_:at:)();
          v74 = v102;
          UUID.init(uuidString:)();

          v75 = v104;
          if (v97(v74, 1, v104))
          {
            sub_10000BD44(v74, &qword_1003A0178, &unk_1002C3BB0);
          }

          else
          {
            v76 = v96;
            (*v95)(v96, v74, v75);
            v70 = UUID.uuidString.getter();
            v78 = v77;
            (*v94)(v76, v75);

            v69 = v78;
          }

          v67 = v101;
        }

        else
        {
        }

LABEL_53:
        v107 = v65;
        v80 = v65[2];
        v79 = v65[3];
        if (v80 >= v79 >> 1)
        {
          sub_10004E2DC((v79 > 1), v80 + 1, 1);
          v65 = v107;
        }

        ++v66;
        v65[2] = v80 + 1;
        v81 = &v65[2 * v80];
        v81[4] = v70;
        v81[5] = v69;
      }

      while (v66 != v64);

      v31 = v100;
      v56 = v91;
    }

    else
    {

      v65 = _swiftEmptyArrayStorage;
    }

    sub_100004074(&qword_1003A0188, &qword_1002C3BD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 7;
    *(inited + 64) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
    *(inited + 40) = v98;
    *(inited + 72) = 8;
    *(inited + 104) = &type metadata for String;
    v83 = v93;
    *(inited + 80) = v56;
    *(inited + 88) = v83;
    *(inited + 112) = 2;
    *(inited + 144) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    *(inited + 120) = v65;
    v84 = sub_10018436C(inited);
    swift_setDeallocating();
    sub_100004074(&qword_1003A0198, &qword_1002C3BF0);
    swift_arrayDestroy();

    v85 = v99;
    v86 = v103;
    v87 = swift_allocObject();
    *(v87 + 16) = v84;
    *(v87 + 24) = 0;
    *(v87 + 32) = v86;
    *(v87 + 40) = v85;
    *(v87 + 48) = v31;
    v112 = sub_100064FFC;
    v113 = v87;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_100003974;
    v111 = &unk_1003816F8;
    v88 = _Block_copy(&aBlock);

    v89 = v106;
    [v106 endSessionWithCompletion:v88];
    _Block_release(v88);

    v55 = v84;
    goto LABEL_58;
  }

  v33 = *sub_10000BE18(v21 + 66, *(v21 + 69));
  v39 = sub_100092F30(v106);
  swift_beginAccess();
  *(v31 + 16) = v39 & 1;
  if (v39)
  {
    goto LABEL_31;
  }

  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000403C(v40, qword_10039FF28);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "kernel manager flow", v43, 2u);
  }

  v48 = *sub_10000BE18(v105 + 66, *(v105 + 69));
  v49 = sub_100093144(v106);

  v50 = v99;
  v51 = v103;
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = 0;
  *(v52 + 32) = v51;
  *(v52 + 40) = v50;
  *(v52 + 48) = v31;
  v112 = sub_100065358;
  v113 = v52;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100003974;
  v111 = &unk_100381748;
  v53 = _Block_copy(&aBlock);

  v54 = v106;
  [v106 endSessionWithCompletion:v53];
  _Block_release(v53);

  v55 = v49;
LABEL_58:
  sub_100064FF0(v55, 0);
}

uint64_t sub_10005D568@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  if (String.count.getter() == 32)
  {
    v10 = HIBYTE(a2) & 0xF;
    v17 = a1;
    v18 = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v19 = 0;
    v20 = v10;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v12 = v11;

      if (v12)
      {

        goto LABEL_8;
      }
    }

    v17 = a1;
    v18 = a2;

    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();

    String.insert(_:at:)();
    UUID.init(uuidString:)();

    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v9, 1, v15))
    {
      (*(v16 + 32))(a3, v9, v15);
      return (*(v16 + 56))(a3, 0, 1, v15);
    }

    sub_10000BD44(v9, &qword_1003A0178, &unk_1002C3BB0);
  }

  else
  {
LABEL_8:
  }

  v13 = type metadata accessor for UUID();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_10005D828(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a5 + 16);
    v9 = 0;
    v10 = a1;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a5 + 16);
    v9 = a1;
    v10 = 0;
  }

  return a3(v9, v8, v10);
}

uint64_t sub_10005D8B0()
{
  *(v0 + 648) = 1;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10000BE18((v0 + 24), v1);
  result = (*(v2 + 24))(v1, v2);
  v4 = *(v0 + 656);
  if (v4)
  {
    *(v4 + 96) = 1;
  }

  return result;
}

unint64_t sub_10005D924(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v440 = a1;
  v8 = *v3;
  v438 = type metadata accessor for UUID();
  v9 = *(v438 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v438);
  v413 = v412 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v423 = v412 - v14;
  v15 = __chkstk_darwin(v13);
  v422 = v412 - v16;
  __chkstk_darwin(v15);
  v415 = v412 - v17;
  v18 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v431 = v412 - v20;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v432 = v21;
  v433 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v427 = v412 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v428 = v412 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v419 = v412 - v30;
  v31 = __chkstk_darwin(v29);
  v418 = v412 - v32;
  v33 = __chkstk_darwin(v31);
  v425 = v412 - v34;
  v35 = __chkstk_darwin(v33);
  v416 = v412 - v36;
  v37 = __chkstk_darwin(v35);
  v430 = v412 - v38;
  v39 = __chkstk_darwin(v37);
  v421 = v412 - v40;
  v41 = __chkstk_darwin(v39);
  v420 = v412 - v42;
  v43 = __chkstk_darwin(v41);
  v424 = v412 - v44;
  v45 = __chkstk_darwin(v43);
  v429 = v412 - v46;
  v47 = __chkstk_darwin(v45);
  v414 = v412 - v48;
  v49 = __chkstk_darwin(v47);
  v417 = v412 - v50;
  v51 = __chkstk_darwin(v49);
  v439 = v412 - v52;
  __chkstk_darwin(v51);
  v441 = v412 - v53;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v55 = sub_10000403C(v54, qword_10039FF28);

  v436 = v55;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v434 = v5;
  v435 = v9;
  v437 = a3;
  v442 = v4;
  if (v58)
  {
    v59 = swift_slowAlloc();
    *&v443 = swift_slowAlloc();
    *v59 = 136315394;
    v60 = _typeName(_:qualified:)();
    v62 = sub_100008F6C(v60, v61, &v443);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1002C1670;
    *(v63 + 32) = String.redactedTokenFromBase64()();
    *(v63 + 88) = &type metadata for Int;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = a3;
    v64 = showFunction(signature:_:)(0xD000000000000016, 0x80000001003483D0, v63);
    v66 = v65;

    v67 = sub_100008F6C(v64, v66, &v443);
    a3 = v437;

    *(v59 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v56, v57, "%s.%s", v59, 0x16u);
    swift_arrayDestroy();

    v9 = v435;
  }

  if ((a3 & 0x3FFF) == 0)
  {
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Received 0 status, returning empty dictionary", v94, 2u);
    }

    return sub_100182BA0(_swiftEmptyArrayStorage);
  }

  if (a3 >= 0x4000)
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134218240;
      *(v70 + 4) = 0x3FFFLL;
      *(v70 + 12) = 2048;
      *(v70 + 14) = 14;
      _os_log_impl(&_mh_execute_header, v68, v69, "Received status option greater than %ld. Ignoring all but last %ld bits.", v70, 0x16u);
    }
  }

  v71 = (v9 + 56);
  v72 = *(v9 + 56);
  v73 = v438;
  v72(v441, 1, 1, v438);
  v72(v439, 1, 1, v73);
  v74 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v74 = v440 & 0xFFFFFFFFFFFFLL;
  }

  v426 = a2;
  if (v74)
  {
    v75 = v434;
    swift_beginAccess();
    v76 = v75[48];
    v77 = sub_10000BE18(v75 + 45, v76);
    v412[1] = v412;
    v78 = *(v76 - 8);
    v79 = *(v78 + 64);
    __chkstk_darwin(v77);
    v81 = v412 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v81);
    v82 = [*(*v81 + 16) serialNumber];
    if (!v82)
    {
      __break(1u);
      goto LABEL_255;
    }

    v83 = v82;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v88 = *(v78 + 8);
    v87 = v78 + 8;
    v88(v81, v76);
    v89 = v426;

    v90 = v89;
    v91 = v442;
    sub_10008C068(v440, v90, v84, v86, v451);
    if (v91)
    {
      v442 = v91;
      sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v441, &qword_1003A0178, &unk_1002C3BB0);
      return v87;
    }

    v95 = *sub_10000BE18(v434 + 28, v434[31]);
    v87 = v431;
    sub_100043268(v431);
    v97 = v432;
    v96 = v433;
    if ((*(v433 + 48))(v87, 1, v432) == 1)
    {
      sub_10000BD44(v87, &unk_1003A3BE0, &qword_1002C36F0);
      v442 = sub_100020148(2039, 0xD00000000000001ELL, 0x80000001003483B0, 0);
      swift_willThrow();
      sub_10006413C(v451);
      sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
      v99 = v441;
LABEL_22:
      sub_10000BD44(v99, &qword_1003A0178, &unk_1002C3BB0);
      return v87;
    }

    v98 = v427;
    (*(v96 + 32))(v427, v87, v97);
    sub_10008B7F4(v98);
    v442 = 0;
    v100 = v417;
    sub_10008BD6C(v417);
    v87 = v435;
    v101 = v438;
    v102 = (*(v435 + 48))(v100, 1, v438);
    if (v102 == 1)
    {
      sub_10000BD44(v100, &qword_1003A0178, &unk_1002C3BB0);
      v442 = sub_100020148(2011, 0, 0, 0);
      swift_willThrow();
      sub_10006413C(v451);
      (*(v96 + 8))(v427, v97);
      sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
      v99 = v441;
      goto LABEL_22;
    }

    v103 = v441;
    sub_10000BD44(v441, &qword_1003A0178, &unk_1002C3BB0);
    v104 = v415;
    (*(v87 + 32))(v415, v100, v101);
    (*(v87 + 16))(v103, v104, v101);
    v72(v103, 0, 1, v101);
    v105 = v414;
    sub_10008B618(v414);
    sub_10006413C(v451);
    (*(v87 + 8))(v104, v101);
    (*(v433 + 8))(v427, v97);
    v106 = v439;
    sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
    sub_100064190(v105, v106);
    a3 = v437;
  }

  v107 = sub_100184494(_swiftEmptyArrayStorage);
  v460 = v107;
  type metadata accessor for StatusInspector();
  swift_allocObject();
  sub_100090FC8();
  v71 = &type metadata for Bool;
  v108 = v434;
  v433 = v109;
  if ((a3 & 0x1000) != 0)
  {
    goto LABEL_31;
  }

  v110 = v434;
  v111 = v429;
  sub_100065074(v439, v429, &qword_1003A0178, &unk_1002C3BB0);
  v112 = *(v435 + 48);
  v113 = v112(v111, 1, v438);
  v114 = v111;
  v108 = v110;
  v71 = &type metadata for Bool;
  sub_10000BD44(v114, &qword_1003A0178, &unk_1002C3BB0);
  if (v113 != 1)
  {
    sub_10000CCE4(v108 + 104, &v443);
    v115 = sub_10000BE18(&v443, *(&v444 + 1));
    v116 = v424;
    sub_100065074(v439, v424, &qword_1003A0178, &unk_1002C3BB0);
    v117 = v438;
    if (v112(v116, 1, v438) == 1)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v118 = *v115;
    LOBYTE(v118) = sub_10003EFB8(v116);
    (*(v435 + 8))(v116, v117);
    sub_10000959C(&v443);
    if (v118)
    {
      v107 = v460;
LABEL_31:
      v119 = SPRConfigurationStatusIsBrokenSeSepPairing;
      v120 = sub_100091684();
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = (v120 & 1) == 0;
      sub_100019D3C(&v443, v448);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v450 = v107;
      sub_1001803A4(v448, v119, isUniquelyReferenced_nonNull_native);

      v460 = v450;
    }
  }

  v122 = v433;
  if (a3)
  {
    v123 = SPRConfigurationStatusKernelNeeded;
    v124 = sub_100091C28();
    if (v124 == 2)
    {
      sub_10017AD58(v123, &v443);

      sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
      if ((a3 & 0x100) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = v124 & 1;
      sub_100019D3C(&v443, v448);
      v146 = v460;
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v146;
      sub_1001803A4(v448, v123, v147);

      v460 = v450;
      if ((a3 & 0x100) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    if ((a3 & 2) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_44;
  }

  if ((a3 & 0x100) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v125 = SPRConfigurationStatusKernelVersion;
  v126 = sub_100091C90();
  *(&v444 + 1) = &type metadata for String;
  if (v127)
  {
    v128 = v126;
  }

  else
  {
    v128 = 0;
  }

  v129 = 0xE000000000000000;
  if (v127)
  {
    v129 = v127;
  }

  *&v443 = v128;
  *(&v443 + 1) = v129;
  sub_100019D3C(&v443, v448);
  v130 = v460;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v450 = v130;
  sub_1001803A4(v448, v125, v131);

  v460 = v450;
  if ((a3 & 2) == 0)
  {
    goto LABEL_100;
  }

LABEL_44:
  v132 = sub_100091EF0();
  if (!v132)
  {
    goto LABEL_51;
  }

  v133 = v132;
  v134 = sub_10009211C();
  if (!v135)
  {

LABEL_51:
    if (*(v122 + 32) == 1)
    {
      v148 = SPRConfigurationStatusConfigNeeded;
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = 1;
      sub_100019D3C(&v443, v448);
      v149 = v148;
      v150 = v460;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v150;
      sub_1001803A4(v448, v149, v151);

      v152 = v450;
      v153 = SPRConfigurationStatusProfileIDList;
      *(&v444 + 1) = &type metadata for String;
      *&v443 = 0;
      *(&v443 + 1) = 0xE000000000000000;
      sub_100019D3C(&v443, v448);
      v154 = v153;
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v152;
      sub_1001803A4(v448, v154, v155);

      v460 = v450;
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&_mh_execute_header, v156, v157, "Config needed: GET profiles or GET Global Config failed: applet not installed", v158, 2u);
      }
    }

    goto LABEL_100;
  }

  v431 = v134;
  v432 = v135;
  *&v443 = v133;
  v136 = SPRConfigurationStatusProfileIDList;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_100064238();
  v137 = BidirectionalCollection<>.joined(separator:)();
  *(&v444 + 1) = &type metadata for String;
  *&v443 = v137;
  *(&v443 + 1) = v138;
  sub_100019D3C(&v443, v448);
  v139 = v460;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v450 = v139;
  sub_1001803A4(v448, v136, v140);

  v460 = v450;
  v141 = v420;
  sub_100065074(v441, v420, &qword_1003A0178, &unk_1002C3BB0);
  v142 = v435;
  v143 = *(v435 + 48);
  v144 = v438;
  if (v143(v141, 1, v438) == 1)
  {
    sub_10000BD44(v141, &qword_1003A0178, &unk_1002C3BB0);
    v145 = 2;
  }

  else
  {
    v159 = v422;
    (*(v142 + 32))(v422, v141, v144);
    v160 = *sub_10000BE18(v434 + 13, v434[16]);
    sub_10003D678(v159, v452);
    v161 = v453;
    if (v453)
    {
      v162 = v455;
      v163 = v454;
      v164 = v452[7];

      v165 = sub_100041D1C(v452);
      *&v443 = v164;
      *(&v443 + 1) = v161;
      __chkstk_darwin(v165);
      v412[-2] = &v443;
      v166 = v442;
      LOBYTE(v164) = sub_10011D960(sub_1000653A0, &v412[-4], v133);
      v442 = v166;

      if (v164)
      {
        v122 = v433;
        v167 = v438;
        if (v163 == v431 && v162 == v432)
        {

          v168 = 0;
        }

        else
        {
          v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v168 = v174 ^ 1;
        }

        v173 = v421;
        (*(v435 + 8))(v422, v167);
      }

      else
      {
        (*(v435 + 8))(v422, v438);

        v168 = 1;
        v122 = v433;
        v173 = v421;
      }

      v145 = v168 & 1;
      v172 = v423;
      goto LABEL_68;
    }

    sub_100041D1C(v452);
    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "Config needed: Profile cache returned a nil value", v171, 2u);
    }

    (*(v435 + 8))(v422, v144);
    v145 = 1;
  }

  v122 = v433;
  v172 = v423;
  v173 = v421;
LABEL_68:
  sub_100065074(v439, v173, &qword_1003A0178, &unk_1002C3BB0);
  v175 = v438;
  if (v143(v173, 1, v438) == 1)
  {

    sub_10000BD44(v173, &qword_1003A0178, &unk_1002C3BB0);
    v108 = v434;
    LOWORD(a3) = v437;
  }

  else
  {
    (*(v435 + 32))(v172, v173, v175);
    v108 = v434;
    LOWORD(a3) = v437;
    if (v145 == 2 || (v145) && (v176 = *sub_10000BE18(v434 + 13, v434[16]), (sub_10003EFB8(v172) & 1) == 0))
    {
      (*(v435 + 8))(v172, v438);
    }

    else
    {
      v177 = *sub_10000BE18((v108 + 104), *(v108 + 128));
      sub_10003D678(v172, v456);
      v178 = v457;
      if (v457)
      {
        v179 = v456[7];
        v181 = v458;
        v180 = v459;

        v182 = sub_100041D1C(v456);
        if (v145 == 2 || (v145 & 1) == 0)
        {
          *&v443 = v179;
          *(&v443 + 1) = v178;
          __chkstk_darwin(v182);
          v412[-2] = &v443;
          v184 = v442;
          v185 = sub_10011D960(sub_10006429C, &v412[-4], v133);
          v442 = v184;

          if (v185)
          {
            if (v181 == v431 && v180 == v432)
            {

              v183 = 0;
            }

            else
            {
              v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v183 = v190 ^ 1;
            }
          }

          else
          {

            v183 = 1;
          }

          LOWORD(a3) = v437;
        }

        else
        {

          v183 = 1;
        }

        v145 = v183 & 1;
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          *&v443 = v194;
          *v193 = 136315138;
          LOBYTE(v448[0]) = v145;
          sub_100004074(&qword_1003A01A0, &qword_1002C3BF8);
          v195 = Optional.debugDescription.getter();
          a3 = sub_100008F6C(v195, v196, &v443);

          *(v193 + 4) = a3;
          LOWORD(a3) = v437;
          _os_log_impl(&_mh_execute_header, v191, v192, "Overriding config needed to %s: SAF profile id not found in cache, or cached global config id does not match current global config id", v193, 0xCu);
          sub_10000959C(v194);
        }

        (*(v435 + 8))(v423, v438);
        v122 = v433;
      }

      else
      {

        sub_100041D1C(v456);
        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.default.getter();
        v188 = os_log_type_enabled(v186, v187);
        v122 = v433;
        if (v188)
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&_mh_execute_header, v186, v187, "Config needed: Profile cache returned a nil value for SAF", v189, 2u);
        }

        (*(v435 + 8))(v172, v438);
        v145 = 1;
      }
    }
  }

  v197 = v432;

  v198 = HIBYTE(v197) & 0xF;
  if ((v197 & 0x2000000000000000) == 0)
  {
    v198 = v431 & 0xFFFFFFFFFFFFLL;
  }

  if (v198)
  {
    v199 = SPRConfigurationStatusConfigNeeded;
    if (v145 == 2)
    {
      v443 = 0u;
      v444 = 0u;
      v200 = SPRConfigurationStatusConfigNeeded;
      sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
      sub_10017AD58(v200, v448);

      v122 = v433;
      sub_10000BD44(v448, &qword_10039E248, &qword_1002C23D0);
      v71 = &type metadata for Bool;
      goto LABEL_100;
    }
  }

  else
  {
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&_mh_execute_header, v201, v202, "Config needed: Global Config not loaded", v203, 2u);
    }

    v199 = SPRConfigurationStatusConfigNeeded;
    LOBYTE(v145) = 1;
  }

  *(&v444 + 1) = &type metadata for Bool;
  LOBYTE(v443) = v145;
  v71 = &type metadata for Bool;
  sub_100019D3C(&v443, v448);
  v204 = v199;
  v205 = v460;
  v206 = swift_isUniquelyReferenced_nonNull_native();
  v450 = v205;
  sub_1001803A4(v448, v204, v206);

  v460 = v450;
LABEL_100:
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_101;
  }

  v208 = v430;
  sub_100065074(v441, v430, &qword_1003A0178, &unk_1002C3BB0);
  v71 = (v435 + 48);
  v432 = *(v435 + 48);
  v209 = (v432)(v208, 1, v438);
  sub_10000BD44(v208, &qword_1003A0178, &unk_1002C3BB0);
  if (v209 == 1)
  {
    v207 = 0;
    v431 = 0;
    v432 = 0xF000000000000000;
    v71 = &type metadata for Bool;
    goto LABEL_105;
  }

  v122 = sub_10009211C();
  v213 = v212;
  v214 = sub_100091EF0();
  v215 = sub_100092468();
  if (!v213 || !v214 || !v215)
  {

    v122 = v433;
    LOWORD(a3) = v437;
    v71 = &type metadata for Bool;
    if (*(v433 + 32) == 1)
    {
      v355 = SPRConfigurationStatusKernelUpdateNeeded;
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = 1;
      sub_100019D3C(&v443, v448);
      v356 = v355;
      v357 = v460;
      v358 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v357;
      sub_1001803A4(v448, v356, v358);

      v207 = 0;
      v431 = 0;
      v460 = v450;
      goto LABEL_102;
    }

LABEL_101:
    v207 = 0;
    v431 = 0;
LABEL_102:
    v432 = 0xF000000000000000;
    goto LABEL_105;
  }

  v431 = v214;
  v429 = v215;
  v216 = v416;
  sub_10005D568(v122, v213, v416);
  v217 = v438;
  if ((v432)(v216, 1, v438) == 1)
  {
    sub_10000BD44(v216, &qword_1003A0178, &unk_1002C3BB0);
    v424 = 0;
    v218 = 0xE000000000000000;
  }

  else
  {
    v424 = UUID.uuidString.getter();
    v218 = v362;
    (*(v435 + 8))(v216, v217);
  }

  v427 = v218;
  v363 = v431;
  a3 = *(v431 + 16);
  if (a3)
  {
    v108 = 0;
    v364 = v431 + 32;
    v422 = (v435 + 8);
    v423 = (v435 + 32);
    v365 = _swiftEmptyArrayStorage;
    v430 = v431 + 32;
    while (1)
    {
LABEL_215:
      if (v108 >= *(v363 + 16))
      {
        __break(1u);
        goto LABEL_253;
      }

      v366 = (v364 + 16 * v108);
      v122 = *v366;
      v367 = v366[1];
      ++v108;
      swift_bridgeObjectRetain_n();
      if (String.count.getter() == 32)
      {
        break;
      }

      swift_bridgeObjectRelease_n();
      if (v108 == a3)
      {
        goto LABEL_234;
      }
    }

    v368 = v365;
    v369 = HIBYTE(v367) & 0xF;
    *&v443 = v122;
    *(&v443 + 1) = v367;
    if ((v367 & 0x2000000000000000) == 0)
    {
      v369 = v122 & 0xFFFFFFFFFFFFLL;
    }

    *&v444 = 0;
    *(&v444 + 1) = v369;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v371 = v370;

      if (v371)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_225;
      }
    }

    *&v443 = v122;
    *(&v443 + 1) = v367;

    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();
    String.insert(_:at:)();
    String.index(_:offsetBy:)();

    String.insert(_:at:)();
    v372 = v425;
    UUID.init(uuidString:)();

    if ((v432)(v372, 1, v438))
    {
      sub_10000BD44(v372, &qword_1003A0178, &unk_1002C3BB0);
LABEL_225:

      v364 = v430;
      v363 = v431;
      if (v108 != a3)
      {
        goto LABEL_215;
      }

      goto LABEL_234;
    }

    v373 = v413;
    v374 = v372;
    v375 = v438;
    (*v423)(v413, v374, v438);
    v421 = UUID.uuidString.getter();
    v122 = v376;

    (*v422)(v373, v375);
    v365 = v368;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v365 = sub_10004D4B0(0, *(v368 + 2) + 1, 1, v368);
    }

    v363 = v431;
    v378 = *(v365 + 2);
    v377 = *(v365 + 3);
    if (v378 >= v377 >> 1)
    {
      v365 = sub_10004D4B0((v377 > 1), v378 + 1, 1, v365);
    }

    *(v365 + 2) = v378 + 1;
    v379 = &v365[16 * v378];
    *(v379 + 4) = v421;
    *(v379 + 5) = v122;
    v364 = v430;
    if (v108 != a3)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v365 = _swiftEmptyArrayStorage;
  }

LABEL_234:

  v380 = v427;

  v381 = v365;
  v382 = Logger.logObject.getter();
  v383 = static os_log_type_t.info.getter();

  v384 = os_log_type_enabled(v382, v383);
  v432 = v381;
  if (v384)
  {
    v385 = swift_slowAlloc();
    v431 = swift_slowAlloc();
    *&v443 = v431;
    *v385 = 136315650;
    v386 = Dictionary.description.getter();
    v388 = sub_100008F6C(v386, v387, &v443);

    *(v385 + 4) = v388;
    *(v385 + 12) = 2080;
    *(v385 + 14) = sub_100008F6C(v424, v380, &v443);
    *(v385 + 22) = 2080;
    v389 = Array.description.getter();
    v391 = sub_100008F6C(v389, v390, &v443);

    *(v385 + 24) = v391;
    _os_log_impl(&_mh_execute_header, v382, v383, "stateInfo: %s\nglobal: %s\nprofiles: %s", v385, 0x20u);
    swift_arrayDestroy();
  }

  v87 = v442;
  v122 = v433;
  v108 = v434;
  v71 = &type metadata for Bool;
  v392 = sub_100091050();
  if (!v392)
  {

    v207 = 0;
    v431 = 0;
    v432 = 0xF000000000000000;
    LOWORD(a3) = v437;
    goto LABEL_105;
  }

  a3 = v392;
  *(&v444 + 1) = &type metadata for SPRFeatures;
  v445 = sub_1000094A0();
  LOBYTE(v443) = 2;
  v393 = isFeatureEnabled(_:)();
  sub_10000959C(&v443);
  if (v393)
  {
    v394 = *sub_10000BE18((v108 + 528), *(v108 + 552));
    v395 = sub_100092F30(a3);
    if (v87)
    {
      v396 = Logger.logObject.getter();
      v397 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v396, v397))
      {
        v398 = swift_slowAlloc();
        *v398 = 0;
        _os_log_impl(&_mh_execute_header, v396, v397, "Could not get the kernel manager, setting legacy flow to true.", v398, 2u);
      }

      v87 = 0;
    }

    else if ((v395 & 1) == 0)
    {

      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        *v409 = 0;
        _os_log_impl(&_mh_execute_header, v407, v408, "kernel manager flow", v409, 2u);
      }

      v410 = *sub_10000BE18((v108 + 528), *(v108 + 552));
      *&v448[0] = sub_100093144(a3);
      *(&v444 + 1) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      *&v443 = v432;
      sub_10002D530(&v443, 2);
      v431 = sub_10005B390(*&v448[0]);
      v432 = v411;
      v442 = 0;
LABEL_253:

      v207 = 0;
      LOWORD(a3) = v437;
      goto LABEL_105;
    }
  }

  v399 = Logger.logObject.getter();
  v400 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v399, v400))
  {
    v401 = swift_slowAlloc();
    *v401 = 0;
    _os_log_impl(&_mh_execute_header, v399, v400, "using the legacy flow", v401, 2u);
  }

  sub_100004074(&qword_1003A0188, &qword_1002C3BD8);
  v402 = swift_allocObject();
  *(v402 + 32) = 8;
  *(v402 + 16) = xmmword_1002C1790;
  *(v402 + 64) = &type metadata for String;
  v403 = v427;
  *(v402 + 40) = v424;
  *(v402 + 48) = v403;
  *(v402 + 72) = 2;
  *(v402 + 104) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  *(v402 + 80) = v432;
  *(v402 + 112) = 7;
  *(v402 + 144) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
  *(v402 + 120) = v429;
  v404 = sub_10018436C(v402);
  swift_setDeallocating();
  sub_100004074(&qword_1003A0198, &qword_1002C3BF0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v405 = sub_10005B390(v404);
  v442 = v87;
  if (v87)
  {

    sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v441, &qword_1003A0178, &unk_1002C3BB0);

    return v87;
  }

  v431 = v405;
  v432 = v406;

  v207 = 1;
  LOWORD(a3) = v437;
  v122 = v433;
LABEL_105:
  if ((a3 & 8) != 0)
  {
    v210 = SPRConfigurationStatusPinAppletNeeded;
    v211 = sub_1000925A4();
    if (v211 == 2)
    {
      sub_10017AD58(v210, &v443);

      sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
    }

    else
    {
      *(&v444 + 1) = v71;
      LOBYTE(v443) = v211 & 1;
      sub_100019D3C(&v443, v448);
      v219 = v460;
      v220 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v219;
      sub_1001803A4(v448, v210, v220);

      v460 = v450;
    }
  }

  if (*(v122 + 32) == 1)
  {
    if (*(v122 + 33) != 1)
    {
      v237 = SPRConfigurationStatusIsSeAvailable;
      *(&v444 + 1) = v71;
      LOBYTE(v443) = 1;
      sub_100019D3C(&v443, v448);
      v238 = v237;
      v239 = v460;
      v240 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v239;
      sub_1001803A4(v448, v238, v240);

      v460 = v450;
      goto LABEL_126;
    }

    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v221, v222))
    {
      a3 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      *&v443 = v223;
      *a3 = 136315394;
      *(a3 + 4) = sub_100008F6C(0xD000000000000016, 0x80000001003483D0, &v443);
      *(a3 + 12) = 2048;
      *(a3 + 14) = 1172;
      _os_log_impl(&_mh_execute_header, v221, v222, "%s %ld: Applet not selectable but is present in SE stateInfo. May be due to prohibit timer.", a3, 0x16u);
      sub_10000959C(v223);
      v71 = &type metadata for Bool;

      LOWORD(a3) = v437;
    }

    v224 = SPRConfigurationStatusIsSeAvailable;
    *(&v444 + 1) = v71;
    LOBYTE(v443) = 0;
    sub_100019D3C(&v443, v448);
    v225 = v224;
    v226 = v460;
    v227 = swift_isUniquelyReferenced_nonNull_native();
    v450 = v226;
    sub_1001803A4(v448, v225, v227);

    v228 = v450;
    v460 = v450;
    if (a3)
    {
      v266 = Logger.logObject.getter();
      v267 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        *v268 = 0;
        _os_log_impl(&_mh_execute_header, v266, v267, "override isKernelNeeded to false", v268, 2u);
        v71 = &type metadata for Bool;
      }

      v269 = SPRConfigurationStatusKernelNeeded;
      *(&v444 + 1) = v71;
      LOBYTE(v443) = 0;
      sub_100019D3C(&v443, v448);
      a3 = v269;
      v270 = swift_isUniquelyReferenced_nonNull_native();
      v450 = v228;
      sub_1001803A4(v448, a3, v270);

      v228 = v450;
      v460 = v450;
      LOWORD(a3) = v437;
      if ((v437 & 2) == 0)
      {
LABEL_120:
        if ((a3 & 0x40) == 0)
        {
          goto LABEL_126;
        }

        goto LABEL_121;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_120;
    }

    v271 = v418;
    sub_100065074(v441, v418, &qword_1003A0178, &unk_1002C3BB0);
    v272 = (*(v435 + 48))(v271, 1, v438);
    sub_10000BD44(v271, &qword_1003A0178, &unk_1002C3BB0);
    if (v272 == 1)
    {
      LOWORD(a3) = v437;
      v71 = &type metadata for Bool;
      if ((v437 & 0x40) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_121;
    }

    v350 = Logger.logObject.getter();
    v351 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v350, v351))
    {
      v352 = swift_slowAlloc();
      *v352 = 0;
      _os_log_impl(&_mh_execute_header, v350, v351, "override isConfigNeeded to false", v352, 2u);
    }

    v353 = SPRConfigurationStatusConfigNeeded;
    v71 = &type metadata for Bool;
    *(&v444 + 1) = &type metadata for Bool;
    LOBYTE(v443) = 0;
    sub_100019D3C(&v443, v448);
    a3 = v353;
    v354 = swift_isUniquelyReferenced_nonNull_native();
    v450 = v228;
    sub_1001803A4(v448, a3, v354);

    v228 = v450;
    v460 = v450;
    LOWORD(a3) = v437;
    if ((v437 & 0x40) != 0)
    {
LABEL_121:
      v229 = v419;
      sub_100065074(v441, v419, &qword_1003A0178, &unk_1002C3BB0);
      v230 = (*(v435 + 48))(v229, 1, v438);
      LOWORD(a3) = v437;
      sub_10000BD44(v229, &qword_1003A0178, &unk_1002C3BB0);
      v231 = v230 == 1;
      v71 = &type metadata for Bool;
      if (!v231)
      {
        v232 = Logger.logObject.getter();
        v233 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          *v234 = 0;
          _os_log_impl(&_mh_execute_header, v232, v233, "override isKernelUpdateNeeded to false", v234, 2u);
          v71 = &type metadata for Bool;
        }

        v235 = SPRConfigurationStatusKernelUpdateNeeded;
        *(&v444 + 1) = &type metadata for Bool;
        LOBYTE(v443) = 0;
        sub_100019D3C(&v443, v448);
        a3 = v235;
        v236 = swift_isUniquelyReferenced_nonNull_native();
        v450 = v228;
        sub_1001803A4(v448, a3, v236);

        v460 = v450;
        LOWORD(a3) = v437;
      }
    }
  }

LABEL_126:
  if (*(v122 + 34))
  {
    v241 = 1;
LABEL_128:
    v242 = SPRConfigurationStatusIsSecurityViolation;
    *(&v444 + 1) = v71;
    LOBYTE(v443) = v241;
    sub_100019D3C(&v443, v448);
    v243 = v242;
    v244 = v460;
    v245 = swift_isUniquelyReferenced_nonNull_native();
    v449 = v244;
    sub_1001803A4(v448, v243, v245);

    v460 = v449;
    swift_beginAccess();
    v246 = *(v108 + 384);
    v247 = *(v108 + 392);
    sub_100022438(v108 + 360, v246);
    v248 = *(v247 + 88);
    v249 = v247;
    v71 = &type metadata for Bool;
    v248(v241, v246, v249);
    swift_endAccess();
    goto LABEL_131;
  }

  swift_beginAccess();
  v241 = *(*sub_10000BE18((v108 + 360), *(v108 + 384)) + 32);
  if ((a3 & 0x2000) != 0 || v241)
  {
    goto LABEL_128;
  }

LABEL_131:
  if (*(v122 + 32) == 1)
  {
    *(v122 + 32) = 0;
    v250 = sub_100091050();
    if (v250)
    {
      v251 = v250;
      v445 = sub_100091444;
      v446 = 0;
      *&v443 = _NSConcreteStackBlock;
      *(&v443 + 1) = 1107296256;
      *&v444 = sub_100003974;
      *(&v444 + 1) = &unk_100381590;
      v252 = _Block_copy(&v443);
      [v251 endSessionWithCompletion:v252];
      _Block_release(v252);
    }
  }

  v253 = v437;
  if (v432 >> 60 == 15)
  {
    goto LABEL_156;
  }

  v254 = v428;
  sub_100065074(v441, v428, &qword_1003A0178, &unk_1002C3BB0);
  if ((*(v435 + 48))(v254, 1, v438) != 1)
  {
    v255 = v431;
    v256 = v432;
    sub_1000094F4(v431, v432);
    sub_10000BD44(v254, &qword_1003A0178, &unk_1002C3BB0);
    v257 = v442;
    v258 = sub_100066728(v440, v426, v255, v256, v207);
    if (!v257)
    {
      v442 = 0;
      v273 = SPRConfigurationStatusKernelUpdateNeeded;
      v71 = &type metadata for Bool;
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = v258 & 1;
      v274 = v258;
      sub_100019D3C(&v443, v448);
      v275 = v273;
      v276 = v460;
      v277 = swift_isUniquelyReferenced_nonNull_native();
      v449 = v276;
      sub_1001803A4(v448, v275, v277);

      v278 = v449;
      v279 = SPRConfigurationStatusConfigNeeded;
      *(&v444 + 1) = &type metadata for Bool;
      LOBYTE(v443) = HIBYTE(v274) & 1;
      sub_100019D3C(&v443, v448);
      v280 = v279;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      v449 = v278;
      sub_1001803A4(v448, v280, v281);

      v460 = v449;
      if ((v274 & 0x100) != 0)
      {
        v359 = Logger.logObject.getter();
        v360 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&_mh_execute_header, v359, v360, "Config needed: Configuration backend determined kernel or config update needed", v361, 2u);
        }

        sub_10001A074(v431, v432);

        if ((v253 & 4) != 0)
        {
          goto LABEL_157;
        }
      }

      else
      {
        sub_10001A074(v431, v432);
        if ((v253 & 4) != 0)
        {
          goto LABEL_157;
        }
      }

LABEL_137:
      if ((v253 & 0x10) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_159;
    }

    swift_errorRetain();
    v259 = Logger.logObject.getter();
    v260 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      *&v443 = v262;
      *v261 = 136315138;
      *&v448[0] = v257;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v263 = String.init<A>(describing:)();
      v265 = sub_100008F6C(v263, v264, &v443);

      *(v261 + 4) = v265;
      _os_log_impl(&_mh_execute_header, v259, v260, "network error for kernel update status\n%s", v261, 0xCu);
      sub_10000959C(v262);
      v253 = v437;

      sub_10001A074(v431, v432);
    }

    else
    {
      sub_10001A074(v431, v432);
    }

    v442 = 0;
    v71 = &type metadata for Bool;
LABEL_156:
    if ((v253 & 4) != 0)
    {
      goto LABEL_157;
    }

    goto LABEL_137;
  }

  sub_10000BD44(v254, &qword_1003A0178, &unk_1002C3BB0);
  if ((v253 & 4) == 0)
  {
    goto LABEL_137;
  }

LABEL_157:
  v282 = SPRConfigurationStatusSeIdentifier;
  swift_beginAccess();
  v283 = *(v108 + 384);
  v284 = sub_10000BE18((v108 + 360), v283);
  v285 = *(v283 - 8);
  v286 = *(v285 + 64);
  __chkstk_darwin(v284);
  v288 = v412 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v285 + 16))(v288);
  a3 = *(*v288 + 16);
  v289 = v282;
  v290 = [a3 serialNumber];
  if (!v290)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  v291 = v290;
  v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v294 = v293;

  (*(v285 + 8))(v288, v283);
  *(&v444 + 1) = &type metadata for String;
  *&v443 = v292;
  *(&v443 + 1) = v294;
  sub_100019D3C(&v443, v448);
  v295 = v460;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v449 = v295;
  sub_1001803A4(v448, v289, v296);

  v460 = v449;
  v108 = v434;
  v253 = v437;
  v71 = &type metadata for Bool;
  if ((v437 & 0x10) == 0)
  {
LABEL_138:
    if ((v253 & 0x20) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_160;
  }

LABEL_159:
  v297 = SPRConfigurationStatusIsProductionSigned;
  swift_beginAccess();
  v298 = *(*sub_10000BE18((v108 + 360), *(v108 + 384)) + 16);
  v299 = v297;
  v300 = [v298 isProductionSigned];
  *(&v444 + 1) = v71;
  LOBYTE(v443) = v300;
  sub_100019D3C(&v443, v448);
  v301 = v460;
  v302 = swift_isUniquelyReferenced_nonNull_native();
  v449 = v301;
  sub_1001803A4(v448, v299, v302);

  v460 = v449;
  if ((v253 & 0x20) == 0)
  {
LABEL_139:
    if ((v253 & 0x80) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_161;
  }

LABEL_160:
  v303 = SPRConfigurationStatusVersion;
  v304 = objc_opt_self();
  v305 = v303;
  v306 = [v304 current];
  v307 = [v306 bundleVersion];

  v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v310 = v309;

  *(&v444 + 1) = &type metadata for String;
  *&v443 = v308;
  *(&v443 + 1) = v310;
  v253 = v437;
  sub_100019D3C(&v443, v448);
  v311 = v460;
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v449 = v311;
  sub_1001803A4(v448, v305, v312);

  v460 = v449;
  if ((v253 & 0x80) == 0)
  {
    goto LABEL_164;
  }

LABEL_161:
  v313 = qword_10039D728;
  v314 = SPRConfigurationStatusIsPasscodeEnabled;
  if (v313 != -1)
  {
    swift_once();
  }

  v315 = [qword_1003A6EA0 canEvaluatePolicy:2 error:0];
  *(&v444 + 1) = v71;
  LOBYTE(v443) = v315;
  sub_100019D3C(&v443, v448);
  v316 = v460;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v449 = v316;
  sub_1001803A4(v448, v314, v317);

  v460 = v449;
LABEL_164:
  if ((v253 & 0x800) != 0)
  {
    swift_beginAccess();
    v319 = *sub_10000BE18((v108 + 360), *(v108 + 384));
    v320 = sub_1001392D0();
    if ((v320 & 1) == 0)
    {
      v321 = Logger.logObject.getter();
      v322 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v321, v322))
      {
        v323 = swift_slowAlloc();
        *v323 = 0;
        _os_log_impl(&_mh_execute_header, v321, v322, "Incorrect JCOP version", v323, 2u);
      }

      v324 = sub_10000BE18((v108 + 480), *(v108 + 504));
      v325 = sub_100020148(2033, 0, 0, 0);
      sub_10013F4E4(v325, *v324);
    }

    v326 = SPRConfigurationStatusIsJCOPVersionCorrect;
    *(&v444 + 1) = v71;
    LOBYTE(v443) = v320 & 1;
    sub_100019D3C(&v443, v448);
    v327 = v326;
    v328 = v460;
    v329 = swift_isUniquelyReferenced_nonNull_native();
    v447 = v328;
    sub_1001803A4(v448, v327, v329);

    v318 = v447;
    v460 = v447;
  }

  else
  {
    v318 = v460;
  }

  v330 = *(v108 + 304);
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v331 = swift_allocObject();
  *(v331 + 16) = xmmword_1002C1690;
  *(v331 + 32) = 8;
  sub_1000F32D4(SPRConfigurationStatusKernelNeeded, v318, &v443);
  if (*(&v444 + 1))
  {
    if (swift_dynamicCast())
    {
      v332 = v448[0];
      *(v331 + 64) = &type metadata for Bool;
      *(v331 + 40) = v332;
      goto LABEL_176;
    }
  }

  else
  {
    sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
  }

  *(v331 + 56) = 0u;
  *(v331 + 40) = 0u;
LABEL_176:
  *(v331 + 72) = 9;
  sub_1000F32D4(SPRConfigurationStatusKernelUpdateNeeded, v318, &v443);
  if (*(&v444 + 1))
  {
    if (swift_dynamicCast())
    {
      v333 = v448[0];
      *(v331 + 104) = &type metadata for Bool;
      *(v331 + 80) = v333;
      goto LABEL_181;
    }
  }

  else
  {
    sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
  }

  *(v331 + 80) = 0u;
  *(v331 + 96) = 0u;
LABEL_181:
  *(v331 + 112) = 10;
  sub_1000F32D4(SPRConfigurationStatusConfigNeeded, v318, &v443);
  if (*(&v444 + 1))
  {
    if (swift_dynamicCast())
    {
      v334 = v448[0];
      *(v331 + 144) = &type metadata for Bool;
      *(v331 + 120) = v334;
      goto LABEL_186;
    }
  }

  else
  {
    sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
  }

  *(v331 + 136) = 0u;
  *(v331 + 120) = 0u;
LABEL_186:
  *(v331 + 152) = 11;
  sub_1000F32D4(SPRConfigurationStatusIsJCOPVersionCorrect, v318, &v443);
  if (*(&v444 + 1))
  {
    if (swift_dynamicCast())
    {
      v335 = v448[0];
      *(v331 + 184) = &type metadata for Bool;
      *(v331 + 160) = v335;
      goto LABEL_191;
    }
  }

  else
  {
    sub_10000BD44(&v443, &qword_10039E248, &qword_1002C23D0);
  }

  *(v331 + 160) = 0u;
  *(v331 + 176) = 0u;
LABEL_191:
  a3 = sub_100184144(v331);
  swift_setDeallocating();
  sub_100004074(&qword_10039FED8, &unk_1002C37D0);
  swift_arrayDestroy();
  v336 = swift_deallocClassInstance();
  v71 = *(v330 + 56);
  __chkstk_darwin(v336);
  v412[-2] = a3;
  os_unfair_lock_lock(v71 + 8);
  v337 = v442;
  sub_1000507B4(&v71[4]._os_unfair_lock_opaque);
  if (!v337)
  {
    os_unfair_lock_unlock(v71 + 8);

    v339 = *(v330 + 56);
    __chkstk_darwin(v338);
    v412[-2] = v330;
    LOBYTE(v412[-1]) = 2;
    os_unfair_lock_lock((v339 + 32));
    sub_100064200((v339 + 16));
    os_unfair_lock_unlock((v339 + 32));
    if (*(sub_1000514E4(v318) + 16))
    {
      sub_100004074(&qword_1003A0180, &unk_1002C3BC8);
      v340 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v340 = &_swiftEmptyDictionarySingleton;
    }

    *&v443 = v340;

    sub_100061930(v341, 1, &v443);
    v442 = 0;

    v87 = v443;

    v342 = Logger.logObject.getter();
    v343 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v342, v343))
    {
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *&v443 = v345;
      *v344 = 136315138;
      v346 = Dictionary.description.getter();
      v348 = sub_100008F6C(v346, v347, &v443);

      *(v344 + 4) = v348;
      _os_log_impl(&_mh_execute_header, v342, v343, "Configurator.status() ended with result: %s", v344, 0xCu);
      sub_10000959C(v345);

      sub_10001A074(v431, v432);
    }

    else
    {
      sub_10001A074(v431, v432);
    }

    sub_10000BD44(v439, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v441, &qword_1003A0178, &unk_1002C3BB0);

    return v87;
  }

LABEL_257:
  os_unfair_lock_unlock(v71 + 8);
  __break(1u);
  os_unfair_lock_unlock((a3 + 32));
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}