uint64_t sub_100045E0C()
{
  sub_100008A94(v0 + 11);
  sub_100008A94(v0 + 16);
  sub_100008A94(v0 + 21);
  v1 = v0[26];
}

uint64_t sub_100045E54()
{

  return sub_1000835D4(0, (v0 & 0xC000000000000001) == 0, v0);
}

NSString sub_100045E74()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100045E94(uint64_t a1, unint64_t a2)
{

  return sub_1000170D4(a1, a2, (v2 - 144));
}

char *sub_100045EC4(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100045F60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_100003998(&unk_1000DD7B0, &qword_1000AC150) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v7 = &v135 - v6;
  v163 = type metadata accessor for URLRequest();
  v8 = sub_10000AC48(v163);
  v150 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000499AC();
  v149 = v12;
  sub_1000498EC();
  __chkstk_darwin(v13);
  sub_1000498F8();
  v147 = v14;
  sub_1000498EC();
  __chkstk_darwin(v15);
  v17 = &v135 - v16;
  v18 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_1000499AC();
  v171 = v20;
  sub_1000498EC();
  __chkstk_darwin(v21);
  sub_1000498F8();
  v170 = v22;
  sub_1000498EC();
  __chkstk_darwin(v23);
  sub_1000498F8();
  v169 = v24;
  sub_1000498EC();
  __chkstk_darwin(v25);
  sub_1000498F8();
  v168 = v26;
  sub_1000498EC();
  __chkstk_darwin(v27);
  sub_1000498F8();
  v167 = v28;
  sub_1000498EC();
  __chkstk_darwin(v29);
  sub_1000498F8();
  v166 = v30;
  sub_1000498EC();
  __chkstk_darwin(v31);
  sub_1000498F8();
  v165 = v32;
  sub_1000498EC();
  __chkstk_darwin(v33);
  sub_1000498F8();
  v164 = v34;
  sub_1000498EC();
  __chkstk_darwin(v35);
  v37 = &v135 - v36;
  v38 = type metadata accessor for ApiRequestMetrics();
  v39 = sub_10001C2AC(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000ADA0();
  v44 = v43 - v42;
  type metadata accessor for Date();
  sub_10004989C(a2);
  v160 = a2 + v38[5];
  sub_10004989C(v160);
  v159 = a2 + v38[8];
  sub_10004989C(v159);
  v158 = a2 + v38[9];
  sub_10004989C(v158);
  v157 = a2 + v38[10];
  sub_10004989C(v157);
  sub_100049904(v38[12]);
  v156 = a2 + v38[13];
  sub_10004989C(v156);
  v45 = a2 + v38[14];
  v46 = type metadata accessor for URL();
  v155 = v45;
  sub_100008E2C(v45, 1, 1, v46);
  v154 = a2 + v38[15];
  sub_10004989C(v154);
  v153 = a2 + v38[16];
  sub_10004989C(v153);
  v152 = a2 + v38[17];
  sub_10004989C(v152);
  v47 = a2 + v38[18];
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_100049904(v38[19]);
  sub_100049904(v38[20]);
  sub_100049904(v38[21]);
  sub_100049904(v38[22]);
  sub_100049904(v38[23]);
  *(a2 + v38[24]) = 2;
  sub_100049904(v38[25]);
  v48 = [a1 response];
  if (v48)
  {
    v49 = v48;
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      goto LABEL_5;
    }
  }

  v162 = 0;
LABEL_5:
  v50 = [a1 connectEndDate];
  if (v50)
  {
    v51 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = v37;
  v54 = 1;
  v151 = v53;
  sub_100049910(v53, v52);
  v55 = [a1 connectStartDate];
  if (v55)
  {
    v56 = v55;
    v57 = v164;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v57;
    v54 = 0;
  }

  else
  {
    v58 = v164;
  }

  v59 = 1;
  sub_100049910(v58, v54);
  v148 = [a1 countOfRequestBodyBytesSent];
  v146 = [a1 countOfResponseBodyBytesReceived];
  v60 = [a1 domainLookupEndDate];
  if (v60)
  {
    v61 = v60;
    v62 = v165;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v62;
    v59 = 0;
  }

  else
  {
    v63 = v165;
  }

  v64 = 1;
  sub_100049910(v63, v59);
  v65 = [a1 domainLookupStartDate];
  if (v65)
  {
    v66 = v65;
    v67 = v166;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = v67;
    v64 = 0;
  }

  else
  {
    v68 = v166;
  }

  v69 = 1;
  sub_100049910(v68, v64);
  v70 = [a1 fetchStartDate];
  if (v70)
  {
    v71 = v70;
    v72 = v167;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v72;
    v69 = 0;
  }

  else
  {
    v73 = v167;
  }

  v74 = 1;
  sub_100049910(v73, v69);
  v145 = [a1 isReusedConnection];
  v144 = sub_10001B7F8(a1, &selRef_networkProtocolName);
  v143 = v75;
  v76 = [a1 requestStartDate];
  if (v76)
  {
    v77 = v76;
    v78 = v168;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = v78;
    v74 = 0;
  }

  else
  {
    v79 = v168;
  }

  v80 = 1;
  sub_100049910(v79, v74);
  v81 = [a1 request];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v161 = v7;
  URLRequest.url.getter();
  v82 = v150[1];
  v82(v17, v163);
  v83 = [a1 responseEndDate];
  if (v83)
  {
    v84 = v83;
    v85 = v169;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = v85;
    v80 = 0;
  }

  else
  {
    v86 = v169;
  }

  v87 = 1;
  sub_100049910(v86, v80);
  v88 = [a1 responseStartDate];
  if (v88)
  {
    v89 = v88;
    v90 = v170;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = 0;
  }

  else
  {
    v90 = v170;
  }

  v91 = 1;
  sub_100049910(v90, v87);
  v92 = [a1 secureConnectionStartDate];
  if (v92)
  {
    v93 = v92;
    v94 = v171;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = v94;
    v91 = 0;
  }

  else
  {
    v95 = v171;
  }

  sub_100049910(v95, v91);
  v96 = v162;
  if (v162)
  {
    v150 = [v162 statusCode];
  }

  else
  {
    v150 = 0;
  }

  v97 = [a1 request];
  v98 = v147;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v142 = URLRequest.httpMethod.getter();
  v141 = v99;
  v100 = v98;
  v101 = v163;
  v82(v100, v163);
  v147 = sub_10001B7F8(a1, &selRef_remoteAddress);
  v140 = v102;
  v103 = [a1 request];
  v104 = v149;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = URLRequest.allHTTPHeaderFields.getter();
  v82(v104, v101);
  if (v105)
  {
    v163 = sub_10007C074(0x6567412D72657355, 0xEA0000000000746ELL, v105);
    v149 = v106;
  }

  else
  {
    v163 = 0;
    v149 = 0;
  }

  if (!v96)
  {
    v137 = 0;
    v136 = 0;
    v139 = 0;
    v111 = &v170;
LABEL_42:
    *(v111 - 32) = 0;
    goto LABEL_47;
  }

  v107 = v96;
  v108 = String._bridgeToObjectiveC()();
  v109 = sub_100049928(v108);

  if (v109)
  {
    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v110;
  }

  else
  {
    v139 = 0;
    v138 = 0;
  }

  v112 = v107;
  v113 = String._bridgeToObjectiveC()();
  v114 = sub_100049928(v113);

  if (!v114)
  {
    v115 = String._bridgeToObjectiveC()();
    v114 = sub_100049928(v115);

    if (!v114)
    {
      v137 = 0;
      v111 = &v168;
      goto LABEL_42;
    }
  }

  v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v136 = v116;

LABEL_47:
  v117 = [a1 resourceFetchType];
  if (v96)
  {
    v118 = v96;
    v119 = String._bridgeToObjectiveC()();
    v120 = [v118 valueForHTTPHeaderField:v119];

    if (v120)
    {
      v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;
    }

    else
    {

      v135 = 0;
      v122 = 0;
    }

    v96 = v162;
  }

  else
  {

    v135 = 0;
    v122 = 0;
  }

  sub_100049970();
  v123 = v38[5];
  sub_100049970();
  *(v44 + v38[6]) = v148;
  *(v44 + v38[7]) = v146;
  v124 = v38[8];
  sub_100049970();
  v125 = v38[9];
  sub_100049970();
  v126 = v38[10];
  sub_100049970();
  *(v44 + v38[11]) = v145;
  sub_100049948((v44 + v38[12]));
  v127 = v38[13];
  sub_100049970();
  v128 = v38[14];
  sub_10003BAC8();
  v129 = v38[15];
  sub_100049970();
  v130 = v38[16];
  sub_100049970();
  v131 = v38[17];
  sub_100049970();
  v132 = v44 + v38[18];
  *v132 = v150;
  *(v132 + 8) = v96 == 0;
  sub_100049948((v44 + v38[19]));
  sub_100049948((v44 + v38[20]));
  sub_100049948((v44 + v38[21]));
  sub_100049948((v44 + v38[22]));
  sub_100049948((v44 + v38[23]));
  *(v44 + v38[24]) = v117 == 3;
  v133 = (v44 + v38[25]);
  *v133 = v135;
  v133[1] = v122;
  sub_100049988(a2);
  sub_100049988(v160);
  sub_100049988(v159);
  sub_100049988(v158);
  sub_100049988(v157);
  sub_100049988(v156);
  sub_10001BB44(v155, &unk_1000DD7B0, &qword_1000AC150);
  sub_100049988(v154);
  sub_100049988(v153);
  sub_100049988(v152);
  return sub_10004979C();
}

uint64_t sub_100046C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for ApiRequestMetrics();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a3 transactionMetrics];
  sub_100049700();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_100045EC4(v17, sub_1000835D4);

  if (v18)
  {
    sub_100045F60(v18, v11);
    sub_10004979C();
    v20 = [a2 response];
    if (v20)
    {
      v21 = v20;
      sub_100049744();
      v22 = sub_100003998(&qword_1000DD7A8, &qword_1000AC1C0);
      v23 = objc_allocWithZone(v22);
      v24 = *((swift_isaMask & *v23) + 0x58);
      sub_100049744();
      v26.receiver = v23;
      v26.super_class = v22;
      v25 = objc_msgSendSuper2(&v26, "init");
      sub_100049488(v8, type metadata accessor for ApiRequestMetrics);
      sub_100046E74(v25);
    }

    return sub_100049488(v15, type metadata accessor for ApiRequestMetrics);
  }

  return result;
}

void sub_100046E74(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_1000DD690, a1, 1);
  swift_endAccess();
}

id sub_100046F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSTaskDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100046FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSTaskDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100047030()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1000DD690);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100003998(&qword_1000DD7A8, &qword_1000AC1C0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001BB44(v6, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }
}

void sub_100047124(void *a1)
{
  if (a1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = qword_1000DBA20;
      v5 = a1;
      if (v4 != -1)
      {
        sub_10001C088();
      }

      v6 = type metadata accessor for Logger();
      sub_100007DE8(v6, qword_1000E6D48);
      v7 = v5;
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v18 = v10;
        *v9 = 136315138;
        v11 = String._bridgeToObjectiveC()();
        v12 = [v3 valueForHTTPHeaderField:v11];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v15 = 0xE400000000000000;
          v13 = 1701736270;
        }

        v16 = sub_1000170D4(v13, v15, &v18);

        *(v9 + 4) = v16;
        _os_log_impl(&_mh_execute_header, oslog, v8, "X-Apple-Jingle-Correlation-Key is %s", v9, 0xCu);
        sub_100008A94(v10);
        sub_10000B008();
        sub_10000B008();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10004732C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v62 = a7;
  v65 = a6;
  v64 = a5;
  v63 = a4;
  v12 = *(*(sub_100003998(&qword_1000DD720, &qword_1000AA648) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v66 = type metadata accessor for ApiAgentError();
  v16 = sub_10001C2AC(v66);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000ADA0();
  v21 = (v20 - v19);
  v22 = *a1;
  if (qword_1000DBA20 != -1)
  {
    sub_10001C088();
  }

  v23 = type metadata accessor for Logger();
  sub_100007DE8(v23, qword_1000E6D48);
  swift_errorRetain();
  v24 = sub_1000499A0();
  sub_100008B28(v24, v25);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = sub_1000499A0();
  sub_100008BAC(v28, v29);
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_14;
  }

  v61 = a8;
  v30 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v69 = v60;
  *v30 = 136315394;
  swift_getErrorValue();
  v31 = Error.localizedDescription.getter();
  v33 = sub_1000170D4(v31, v32, &v69);

  *(v30 + 4) = v33;
  *(v30 + 12) = 2080;
  v34 = sub_1000499A0();
  v36 = sub_1000492AC(v34, v35);
  if (v37)
  {
    goto LABEL_12;
  }

  v67 = a2;
  v68 = a3;
  v38 = sub_1000499A0();
  sub_100008B28(v38, v39);
  sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    sub_10001BB44(&v70, &qword_1000DD588, &qword_1000AC000);
LABEL_11:
    sub_1000499A0();
    v36 = sub_100049074();
LABEL_12:
    v41 = v36;
    v40 = v37;
    goto LABEL_13;
  }

  v59 = 0;
  sub_10000A8F8(&v70, v73);
  sub_100008614(v73, v74);
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100008A94(v73);
    goto LABEL_11;
  }

  sub_100008614(v73, v74);
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v40 = *(&v70 + 1);
  v41 = v70;
  sub_100008A94(v73);
LABEL_13:
  v42 = sub_1000170D4(v41, v40, &v69);

  *(v30 + 14) = v42;
  _os_log_impl(&_mh_execute_header, v26, v27, "ApiAgent: error parsing data: Map error: %s\nData: %s", v30, 0x16u);
  swift_arrayDestroy();
  sub_10000B008();
  sub_10000B008();

  a8 = v61;
LABEL_14:
  v43 = *(sub_100003998(&qword_1000DD728, &qword_1000AC1B0) + 48);
  *v21 = 1;
  sub_10003BC90();
  swift_storeEnumTagMultiPayload();
  v44 = v62[3];
  v45 = v62[4];
  sub_100008614(v62, v44);
  v46 = (*(v45 + 16))(v44, v45);
  sub_10003BC90();
  v47 = type metadata accessor for ApiRequestMetrics();
  if (sub_100008B84(v15, 1, v47) == 1)
  {
    sub_10001BB44(v15, &qword_1000DD720, &qword_1000AA648);
    v48 = 0;
  }

  else
  {
    v48 = sub_10009D150();
    sub_100049488(v15, type metadata accessor for ApiRequestMetrics);
  }

  sub_1000498D4();
  sub_1000496B8(v49, v50);
  v51 = sub_1000499C0();
  sub_1000498B8();
  sub_100049744();
  sub_10000BC8C(v64 + 56, v73);
  v52 = sub_100008614(v73, v74);
  if (v48)
  {
    v53 = v48;
  }

  else
  {
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v53 = Dictionary.init(dictionaryLiteral:)();
  }

  v67 = v51;

  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_100003998(&unk_1000DD750, &qword_1000AC120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
  }

  v54 = sub_10009DF9C(v65, v46, v53, &v70);
  v56 = v55;

  sub_10001BB44(&v70, &qword_1000DD548, &qword_1000ABF90);
  v57 = *v52;
  sub_10009C660(v54, v56 & 0x101);

  sub_100008A94(v73);

  *a8 = sub_1000499C0();
  sub_1000498B8();
  return sub_10004979C();
}

id sub_10004796C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100047124(a4);
  sub_10003BC90();
  v9 = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  v10 = v9[7];
  v11 = type metadata accessor for URLRequest();
  sub_10001C2AC(v11);
  (*(v12 + 16))(a5 + v10, a3);
  v13 = (a5 + v9[10]);
  *v13 = a1;
  v13[1] = a2;
  *(a5 + v9[8]) = a4;
  *(a5 + v9[9]) = xmmword_1000AA5C0;
  sub_100008B28(a1, a2);

  return a4;
}

uint64_t sub_100047A74(void (*a1)(uint64_t *), void (*a2)(uint64_t *), id *a3, uint64_t a4)
{
  v86 = a2;
  v85 = a1;
  v79 = sub_100003998(&unk_1000DD770, &qword_1000AC1B8);
  sub_10001C2AC(v79);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v10 = (v74 - v9);
  v78 = type metadata accessor for ApiAgentError();
  v11 = sub_10001C2AC(v78);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000ADA0();
  v16 = v15 - v14;
  v17 = type metadata accessor for URLRequest();
  v18 = sub_10000AC48(v17);
  v77 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v82 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v80 = v74 - v24;
  v81 = v25;
  __chkstk_darwin(v26);
  v28 = v74 - v27;
  v29 = sub_100003998(&qword_1000DC840, &qword_1000AB200);
  sub_10001C2AC(v29);
  v31 = *(v30 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v32);
  v34 = v74 - v33;
  v36 = a3[4];
  v35 = a3[5];
  v83 = a3;
  sub_100008614(a3 + 1, v36);
  v37 = v35[1];
  v84 = a4;
  v37(a4, v36, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004979C();
    sub_1000498D4();
    sub_1000496B8(v38, v39);
    v40 = swift_allocError();
    sub_100049744();
    *v10 = v40;
    swift_storeEnumTagMultiPayload();
    v85(v10);
    sub_10001BB44(v10, &unk_1000DD770, &qword_1000AC1B8);
    return sub_100049488(v16, type metadata accessor for ApiAgentError);
  }

  else
  {
    v79 = *&v34[*(sub_100003998(&qword_1000DD780, &qword_1000AB208) + 48)];
    v42 = v77;
    v43 = *(v77 + 32);
    v78 = v77 + 32;
    v76 = v43;
    v43(v28, v34, v17);
    v44 = v17;
    v45 = v42;
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088();
    }

    v46 = type metadata accessor for Logger();
    sub_100007DE8(v46, qword_1000E6D48);
    v47 = *(v42 + 16);
    v75 = v28;
    v74[0] = v47;
    v47(v80, v28, v44);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v45;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      __src[0] = v52;
      *v51 = 136315138;
      sub_1000496B8(&qword_1000DD788, &type metadata accessor for URLRequest);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v44;
      v56 = v55;
      v57 = sub_100049954(v50);
      v80 = v58;
      (v58)(v57, v54);
      v59 = sub_1000170D4(v53, v56, __src);
      v44 = v54;

      *(v51 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v48, v49, "Request: %s", v51, 0xCu);
      sub_100008A94(v52);
      sub_10000B008();
      v45 = v50;
      sub_10000B008();
    }

    else
    {

      v60 = sub_100049954(v45);
      v80 = v61;
      (v61)(v60, v44);
    }

    v62 = v86;
    v63 = v83;
    v64 = v79;
    v65 = [*v83 dataTaskPromiseWithRequestPromise:v79];
    sub_100008A38(v63, __src);
    v66 = v82;
    v67 = v75;
    (v74[0])(v82, v75, v44);
    sub_10000BC8C(v84, v88);
    v68 = (*(v45 + 80) + 112) & ~*(v45 + 80);
    v69 = v44;
    v70 = (v81 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    memcpy((v71 + 16), __src, 0x60uLL);
    v76(v71 + v68, v66, v69);
    sub_10000A8F8(v88, v71 + v70);
    v72 = (v71 + ((v70 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v72 = v85;
    v72[1] = v62;
    aBlock[4] = sub_1000495E0;
    aBlock[5] = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EE24;
    aBlock[3] = &unk_1000D1838;
    v73 = _Block_copy(aBlock);

    [v65 addFinishBlock:v73];
    _Block_release(v73);

    return (v80)(v67, v69);
  }
}

uint64_t sub_1000481A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v99 = a7;
  v100 = a6;
  v96 = a3;
  v97 = a4;
  v101 = type metadata accessor for ApiAgentError();
  v10 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v94 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100003998(&unk_1000DD770, &qword_1000AC1B8);
  v12 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v14 = (&v92 - v13);
  v15 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v93 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  __chkstk_darwin(v21);
  v23 = &v92 - v22;
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = &v92 - v26;
  v28 = [a1 response];
  v29 = v28;
  v102 = v27;
  if (v28 && (v30 = v28, v31 = sub_100047030(), v30, v31))
  {
    v32 = *((swift_isaMask & *v31) + 0x58);
    sub_100049744();

    v33 = type metadata accessor for ApiRequestMetrics();
    sub_100008E2C(v23, 0, 1, v33);
    sub_10004979C();
    sub_100008E2C(v27, 0, 1, v33);
  }

  else
  {
    v34 = type metadata accessor for ApiRequestMetrics();
    v35 = 1;
    sub_100008E2C(v23, 1, 1, v34);
    if (a1)
    {
      v36 = [a1 taskMetrics];
      if (v36)
      {
        v37 = v36;
        v95 = v29;
        v38 = [v36 transactionMetrics];

        sub_100049700();
        v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = sub_100045EC4(v39, sub_1000835D4);

        if (v40)
        {
          v27 = v102;
          sub_100045F60(v40, v102);
          v35 = 0;
        }

        else
        {
          v35 = 1;
          v27 = v102;
        }

        v29 = v95;
      }
    }

    sub_100008E2C(v27, v35, 1, v34);
    if (sub_100008B84(v23, 1, v34) != 1)
    {
      sub_10001BB44(v23, &qword_1000DD720, &qword_1000AA648);
    }
  }

  if (a1)
  {
    v95 = v29;
    v41 = [a1 data];
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = a5[3];
    v46 = a5[4];
    sub_100008614(a5, v45);
    v47 = (*(v46 + 16))(v45, v46);
    sub_10003BC90();
    v48 = type metadata accessor for ApiRequestMetrics();
    if (sub_100008B84(v20, 1, v48) == 1)
    {
      sub_10001BB44(v20, &qword_1000DD720, &qword_1000AA648);
      v49 = 0;
    }

    else
    {
      v49 = sub_10009D150();
      sub_100049488(v20, type metadata accessor for ApiRequestMetrics);
    }

    sub_10000BC8C(v96 + 56, v107);
    v57 = sub_100008614(v107, v108);
    if (v49)
    {
      v58 = v49;
    }

    else
    {
      sub_100003998(&qword_1000DBD08, &qword_1000AA690);
      sub_10001DA90();
      v58 = Dictionary.init(dictionaryLiteral:)();
    }

    v106 = 0;
    v104 = 0u;
    v105 = 0u;

    v59 = v97;
    v60 = sub_10009DF9C(v97, v47, v58, &v104);
    v62 = v61;

    sub_10001BB44(&v104, &qword_1000DD548, &qword_1000ABF90);
    v63 = *v57;
    sub_10009C660(v60, v62 & 0x101);

    sub_100008A94(v107);

    v64 = sub_100003998(&qword_1000DBC80, &qword_1000AA640);
    v65 = v64[12];
    v66 = v64[16];
    v67 = v64[20];
    *v14 = v42;
    v14[1] = v44;
    v68 = type metadata accessor for URLRequest();
    (*(*(v68 - 8) + 16))(v14 + v65, v59, v68);
    v69 = v95;
    *(v14 + v66) = v95;
    v70 = v102;
    sub_10003BC90();
    swift_storeEnumTagMultiPayload();
    v71 = v69;
    sub_100008B28(v42, v44);
    v100(v14);
    sub_100008BAC(v42, v44);

    sub_10001BB44(v14, &unk_1000DD770, &qword_1000AC1B8);
    return sub_10001BB44(v70, &qword_1000DD720, &qword_1000AA648);
  }

  if (!a2)
  {
    v50 = v29;
    v72 = *(sub_100003998(&qword_1000DD728, &qword_1000AC1B0) + 48);
    v73 = v94;
    *v94 = 0;
    sub_10003BC90();
    swift_storeEnumTagMultiPayload();
LABEL_30:
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v76 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_31;
  }

  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v50 = v29;
  v51 = type metadata accessor for Logger();
  sub_100007DE8(v51, qword_1000E6D48);
  swift_errorRetain();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    swift_errorRetain();
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 4) = v56;
    *v55 = v56;
    _os_log_impl(&_mh_execute_header, v52, v53, "ApiAgent Error: %@", v54, 0xCu);
    sub_10001BB44(v55, &unk_1000DD790, &unk_1000AB7A0);
  }

  else
  {
  }

  v74 = *(sub_100003998(&qword_1000DD728, &qword_1000AC1B0) + 48);
  *v94 = 0;
  sub_10003BC90();
  swift_storeEnumTagMultiPayload();
  v107[0] = a2;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = v94;
    goto LABEL_30;
  }

  v75 = v104;
  v76 = sub_10009DDF4();

  v73 = v94;
LABEL_31:
  v77 = a5[3];
  v78 = a5[4];
  sub_100008614(a5, v77);
  v79 = (*(v78 + 16))(v77, v78);
  v80 = v93;
  sub_10003BC90();
  v81 = type metadata accessor for ApiRequestMetrics();
  if (sub_100008B84(v80, 1, v81) == 1)
  {
    sub_10001BB44(v80, &qword_1000DD720, &qword_1000AA648);
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v82 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v82 = sub_10009D150();
    sub_100049488(v80, type metadata accessor for ApiRequestMetrics);
  }

  v83 = sub_100048DAC(v82, v76);
  sub_1000496B8(&qword_1000DD730, type metadata accessor for ApiAgentError);
  v84 = swift_allocError();
  sub_100049744();
  sub_10000BC8C(v96 + 56, v107);
  v85 = sub_100008614(v107, v108);
  v103 = v84;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_100003998(&unk_1000DD750, &qword_1000AC120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
  }

  v86 = sub_10009DF9C(v97, v79, v83, &v104);
  v88 = v87;
  sub_10001BB44(&v104, &qword_1000DD548, &qword_1000ABF90);
  v89 = *v85;
  sub_10009C660(v86, v88 & 0x101);

  sub_100008A94(v107);

  v90 = swift_allocError();
  sub_100049744();
  *v14 = v90;
  swift_storeEnumTagMultiPayload();
  v100(v14);

  sub_10001BB44(v14, &unk_1000DD770, &qword_1000AC1B8);
  sub_100049488(v73, type metadata accessor for ApiAgentError);
  v70 = v102;
  return sub_10001BB44(v70, &qword_1000DD720, &qword_1000AA648);
}

uint64_t sub_100048DAC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_100048E3C(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_100048E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1000A23BC(&v47);
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v36 = a1;

  v35 = a3;

  while (1)
  {
    sub_1000A2084(&v40 + 8);
    if (*(&v42 + 1) == 1)
    {
      sub_10001B8A0();
    }

    v9 = BYTE8(v40);
    v38 = v41;
    v39 = v42;
    v10 = *a5;
    v18 = sub_1000175AC(SBYTE8(v40));
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v35, v36, v37[0], v37[1], v37[2], v37[3], v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, *(&v47 + 1), v48);
      v23 = *a5;
      v24 = sub_1000175AC(v9);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_18;
      }

      v18 = v24;
      if (v22)
      {
LABEL_10:
        v26 = *a5;
        v27 = *(*a5 + 56);
        sub_10003BC90();
        sub_10001BB44(&v38, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v37, *(v26 + 56) + 32 * v18);
        goto LABEL_14;
      }
    }

    v28 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v28[6] + v18) = v9;
    v29 = (v28[7] + 32 * v18);
    v30 = v39;
    *v29 = v38;
    v29[1] = v30;
    v31 = v28[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v28[2] = v33;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100049074()
{
  sub_10003C278();
  sub_100008B28(v2, v3);
  v4 = sub_100049118(v1, v0)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_1000490DC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100049118(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x10004929CLL);
      }

      v9 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_1000173C4(v9, 0);
      v13 = Data._copyContents(initializing:)();
      sub_100008BAC(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_100008BAC(a1, a2);
        return _swiftEmptyArrayStorage;
      }

      return v12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_1000492AC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_14;
      }

LABEL_9:
      __DataStorage._length.getter();
      return static String._fromUTF8Repairing(_:)();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return static String._fromUTF8Repairing(_:)();
  }
}

uint64_t sub_100049488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10001C2AC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000494E0()
{
  v1 = type metadata accessor for URLRequest();
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 112) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;

  sub_100008A94((v0 + 24));
  v9 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));
  (*(v3 + 8))(v0 + v5, v1);
  sub_100008A94((v0 + v7));
  v10 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_1000495E0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000481A8(a1, a2, v2 + 16, v2 + v6, (v2 + v7), v9, v10);
}

uint64_t sub_1000496A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000496B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100049700()
{
  result = qword_1000DD7A0;
  if (!qword_1000DD7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DD7A0);
  }

  return result;
}

uint64_t sub_100049744()
{
  sub_10003C278();
  v2 = v1(0);
  sub_10001C2AC(v2);
  v4 = *(v3 + 16);
  v5 = sub_10001C53C();
  v6(v5);
  return v0;
}

uint64_t sub_10004979C()
{
  sub_10003C278();
  v2 = v1(0);
  sub_10001C2AC(v2);
  v4 = *(v3 + 32);
  v5 = sub_10001C53C();
  v6(v5);
  return v0;
}

uint64_t sub_1000497F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100049834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004989C(uint64_t a1)
{

  return sub_100008E2C(a1, 1, 1, v1);
}

void sub_100049904(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100049910(uint64_t a1, uint64_t a2)
{

  return sub_100008E2C(a1, a2, 1, v2);
}

id sub_100049928(uint64_t a1)
{
  v4 = *(v2 + 2840);

  return [v1 v4];
}

void sub_100049948(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100049954@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 376) = (a1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_100049970()
{

  return sub_10003BAC8();
}

uint64_t sub_100049988(uint64_t a1)
{

  return sub_10001BB44(a1, v1, v2);
}

uint64_t sub_1000499C0()
{
  v2 = *(v0 - 248);

  return swift_allocError();
}

uint64_t sub_1000499E0()
{
  type metadata accessor for ContainerConstants();
  v0 = static ContainerConstants.defaultSuiteName.getter();
  v2 = v1;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_100058E38(v0, v2);
  if (!v4)
  {
    return 0xD000000000000010;
  }

  v5 = v4;
  static ContainerConstants.liveActivitiesTargetAppKey.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 stringForKey:v6];

  if (!v7)
  {

    return 0xD000000000000010;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v11 = sub_10004B99C(v13);

  result = sub_10005B274();
  switch(v11)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      return 0xD000000000000010;
  }

  return result;
}

BOOL sub_100049B40(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10005B16C();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

void sub_100049C24()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for Sport();
  v3 = sub_10000AC48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000ADA0();
  v10 = v9 - v8;
  if (*(v1 + 16))
  {
    v11 = *(v1 + 40);
    sub_10005AF24();
    sub_100059CC8(v12, 255, v13);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v14 = v1 + 56;
    v21 = v1;
    sub_10005B16C();
    v17 = ~v16;
    do
    {
      v18 = v15 & v17;
      if (((1 << (v15 & v17)) & *(v14 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v10, *(v21 + 48) + *(v5 + 72) * v18, v2);
      sub_10005AF24();
      sub_100059CC8(&qword_1000DC4E8, 255, v19);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v10, v2);
      v15 = v18 + 1;
    }

    while ((v20 & 1) == 0);
  }

  sub_10000AE50();
}

uint64_t sub_100049DE4(char a1, void *a2)
{
  if (a2[2] && (v4 = a2[5], Hasher.init(_seed:)(), sub_100065350(), Hasher._finalize()(), sub_10005B16C(), v7 = v6 & ~v5, ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) != 0))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xEC00000076742E65;
      v10 = 0x6C7070612E6D6F63;
      switch(*(a2[6] + v7))
      {
        case 1:
          v10 = 0xD000000000000010;
          v9 = 0x80000001000B03E0;
          break;
        case 2:
          v10 = 0xD000000000000011;
          v9 = 0x80000001000B0400;
          break;
        case 3:
          break;
        default:
          v10 = 0xD000000000000010;
          v9 = 0x80000001000B03C0;
          break;
      }

      v11 = 0x6C7070612E6D6F63;
      v12 = 0xEC00000076742E65;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v12 = 0x80000001000B03E0;
          break;
        case 2:
          v11 = 0xD000000000000011;
          v12 = 0x80000001000B0400;
          break;
        case 3:
          break;
        default:
          v11 = 0xD000000000000010;
          v12 = 0x80000001000B03C0;
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10004A020(uint64_t a1)
{
  v45 = type metadata accessor for SportsActivityAttributes();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v38[1] = v1;
  v53 = _swiftEmptyArrayStorage;
  sub_100017CA0(0, v6, 0);
  v7 = v53;
  result = sub_10001F0AC(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 64;
  v42 = a1;
  v43 = (v3 + 8);
  v39 = a1 + 72;
  v40 = v6;
  v41 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_24;
      }

      v46 = v10;
      v47 = v12;
      v48 = v9;
      v15 = *(*(a1 + 56) + 8 * v11);

      v52 = v7;
      v16 = v44;
      Activity.attributes.getter();
      v17 = SportsActivityAttributes.canonicalId.getter();
      v50 = v18;
      v51 = v17;
      v19 = *v43;
      v20 = v45;
      (*v43)(v16, v45);
      Activity.attributes.getter();
      v21 = SportsActivityAttributes.bundleId.getter();
      v49 = v22;
      v23 = v16;
      v7 = v52;
      v19(v23, v20);

      v53 = v7;
      v25 = v7[2];
      v24 = v7[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_100017CA0((v24 > 1), v25 + 1, 1);
        v7 = v53;
      }

      v7[2] = v25 + 1;
      v26 = &v7[4 * v25];
      v27 = v50;
      v26[4] = v51;
      v26[5] = v27;
      v28 = v49;
      v26[6] = v21;
      v26[7] = v28;
      a1 = v42;
      v29 = 1 << *(v42 + 32);
      if (v11 >= v29)
      {
        goto LABEL_25;
      }

      v13 = v41;
      v30 = *(v41 + 8 * v14);
      if ((v30 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v42 + 36) != v48)
      {
        goto LABEL_27;
      }

      v31 = v30 & (-2 << (v11 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v32 = v40;
      }

      else
      {
        v33 = v14 << 6;
        v34 = v14 + 1;
        v32 = v40;
        v35 = (v39 + 8 * v14);
        while (v34 < (v29 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_10001F0EC(v11, v48, v46 & 1);
            v29 = __clz(__rbit64(v36)) + v33;
            goto LABEL_18;
          }
        }

        result = sub_10001F0EC(v11, v48, v46 & 1);
      }

LABEL_18:
      v12 = v47 + 1;
      if (v47 + 1 == v32)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v29;
      if (v29 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10004A374(uint64_t a1)
{
  v52 = type metadata accessor for SportsActivityAttributes();
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v52);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v42 - v7;
  v8 = type metadata accessor for SportsActivityManagedContext();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42 = v1;
  v60 = _swiftEmptyArrayStorage;
  sub_100017CC0();
  v13 = v60;
  result = sub_10001F0AC(a1);
  v17 = 0;
  v18 = a1 + 64;
  v46 = a1;
  v47 = (v3 + 8);
  v43 = a1 + 72;
  v44 = v12;
  v45 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v19 = result >> 6;
      if ((*(v18 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v15)
      {
        goto LABEL_24;
      }

      v55 = v15;
      v56 = 1 << result;
      v53 = v16;
      v54 = v17;
      v20 = *(*(a1 + 56) + 8 * result);
      v59 = result;

      v21 = v11;
      v22 = v50;
      Activity.attributes.getter();
      v23 = SportsActivityAttributes.canonicalId.getter();
      v57 = v24;
      v58 = v23;
      v25 = v13;
      v26 = *v47;
      v27 = v52;
      (*v47)(v22, v52);
      v28 = v51;
      Activity.attributes.getter();
      v29 = v21 + *(v49 + 20);
      SportsActivityAttributes.createdDate.getter();
      v30 = v28;
      v11 = v21;
      v26(v30, v27);
      v13 = v25;

      v31 = v57;
      *v21 = v58;
      v21[1] = v31;
      v60 = v25;
      v32 = v25[2];
      if (v32 >= v25[3] >> 1)
      {
        sub_100017CC0();
        v13 = v60;
      }

      v13[2] = v32 + 1;
      sub_10005AB04(v11, v13 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32);
      a1 = v46;
      v33 = 1 << *(v46 + 32);
      result = v59;
      if (v59 >= v33)
      {
        goto LABEL_25;
      }

      v18 = v45;
      v34 = *(v45 + 8 * v19);
      if ((v34 & v56) == 0)
      {
        goto LABEL_26;
      }

      if (*(v46 + 36) != v55)
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v59 & 0x3F));
      if (v35)
      {
        v33 = __clz(__rbit64(v35)) | v59 & 0x7FFFFFFFFFFFFFC0;
        v36 = v44;
      }

      else
      {
        v37 = v19 << 6;
        v38 = v19 + 1;
        v36 = v44;
        v39 = (v43 + 8 * v19);
        while (v38 < (v33 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_10001F0EC(v59, v55, v53 & 1);
            v33 = __clz(__rbit64(v40)) + v37;
            goto LABEL_18;
          }
        }

        sub_10001F0EC(v59, v55, v53 & 1);
      }

LABEL_18:
      v17 = v54 + 1;
      if (v54 + 1 == v36)
      {
        return v13;
      }

      v16 = 0;
      v15 = *(a1 + 36);
      result = v33;
      if (v33 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_10004A77C()
{
  sub_10000AE68();
  sub_10005B1C0();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_10005B124(v9, v19);
  v10 = type metadata accessor for TaskPriority();
  v11 = sub_10005B07C();
  v13 = sub_100008B84(v11, v12, v10);

  if (v13 == 1)
  {
    sub_10001BB44(v1, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10005B334();
    (*(v14 + 8))(v1, v10);
  }

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);
    sub_10005B070();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_10005B070();
  v17 = swift_allocObject();
  sub_10005B39C(v17);
  swift_task_create();

  sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);

LABEL_9:
  sub_10000AE50();
}

void sub_10004A9F4()
{
  sub_10000AE68();
  sub_10005B1C0();
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_10005B124(v9, v19);
  v10 = type metadata accessor for TaskPriority();
  v11 = sub_10005B07C();
  v13 = sub_100008B84(v11, v12, v10);

  if (v13 == 1)
  {
    sub_10001BB44(v1, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10005B334();
    (*(v14 + 8))(v1, v10);
  }

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);
    sub_10005B070();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_10005B070();
  v17 = swift_allocObject();
  sub_10005B39C(v17);
  swift_task_create();

  sub_10001BB44(v3, &qword_1000DC5A8, &qword_1000AAFD0);

LABEL_9:
  sub_10000AE50();
}

uint64_t sub_10004AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_1000459F8(a3, v26 - v11, &qword_1000DC5A8, &qword_1000AAFD0);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100008B84(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10001BB44(v12, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100003998(&qword_1000DDAF0, &qword_1000AC590);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_10001BB44(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v23;
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

  sub_10001BB44(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003998(&qword_1000DDAF0, &qword_1000AC590);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10004AF5C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000CF280, v3);
  sub_10001C1DC();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004AFAC(char a1)
{
  v81 = type metadata accessor for Date();
  v2 = sub_10000AC48(v81);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000ADA0();
  v80 = v8 - v7;
  v73 = sub_100003998(&qword_1000DDB38, &qword_1000AC630);
  sub_10000AC48(v73);
  v66 = v9;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  sub_10000ADEC();
  v65 = v13;
  v71 = sub_100003998(&qword_1000DDB40, &qword_1000AC638);
  sub_10000AC48(v71);
  v69 = v14;
  v16 = *(v15 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v17);
  sub_10000ADEC();
  v67 = v18;
  v72 = sub_100003998(&qword_1000DDB48, &qword_1000AC640);
  sub_10000AC48(v72);
  v70 = v19;
  v21 = *(v20 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v22);
  sub_10000ADEC();
  v68 = v23;
  v24 = sub_100003998(&qword_1000DDB50, &qword_1000AC648);
  v25 = sub_10000AC48(v24);
  v76 = v26;
  v77 = v25;
  v28 = *(v27 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v29);
  sub_10000ADEC();
  v74 = v30;
  v31 = *(v1 + 104);
  sub_10005B25C();
  v32 = *(v31 + 16);

  v34 = sub_10004A020(v33);

  v35 = *(v34 + 16);
  v36 = _swiftEmptyArrayStorage;
  v78 = v1;
  if (v35)
  {
    v93 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v79 = (v4 + 8);
    v37 = (v34 + 56);
    while (1)
    {
      v38 = *(v37 - 3);
      v39 = *(v37 - 2);
      v40 = *v37;
      v41 = qword_1000DB9C0;

      if (v41 != -1)
      {
        swift_once();
      }

      sub_10000BC30(qword_1000E6CC8 + 24, v87);
      sub_10000BC8C(v87, v90);
      v42 = v87[5];
      sub_10000BC8C(&v88, &v91);
      sub_10000BC8C(&v89, v92);
      v90[5] = v42;
      v92[5] = 0xD000000000000011;
      v92[6] = 0x80000001000B0480;
      v92[7] = v38;
      v92[8] = v39;

      Date.init()();
      Date.timeIntervalSince1970.getter();
      v44 = v43;
      result = (*v79)(v80, v81);
      v46 = v44 * 1000.0;
      if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v46 <= -1.0)
      {
        goto LABEL_12;
      }

      if (v46 >= 1.84467441e19)
      {
        goto LABEL_13;
      }

      v92[9] = v46;
      v47 = type metadata accessor for ActivityAuthorization();
      v48 = [objc_allocWithZone(v47) init];
      v49 = sub_1000499E0();
      v82 = v35;
      v51 = v50;
      v86[3] = v47;
      v86[4] = &off_1000D1900;
      v86[0] = v48;
      type metadata accessor for ActivityCapUtility();
      sub_10005B19C();
      v52 = swift_allocObject();
      v53 = sub_10000B90C(v86, v47);
      v54 = *(*(v47 - 1) + 64);
      __chkstk_darwin(v53);
      sub_10000ADA0();
      v57 = (v56 - v55);
      (*(v58 + 16))(v56 - v55);
      v59 = *v57;
      v84 = v47;
      v85 = &off_1000D1900;

      *&v83 = v59;
      sub_10000BCF0(v87);
      sub_10000A8F8(&v83, v52 + 16);
      *(v52 + 56) = v49;
      *(v52 + 64) = v51;
      sub_100008A94(v86);
      v92[10] = v52;
      sub_10002F5FC();

      sub_10003248C(v90);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = v93[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 += 4;
      v35 = v82 - 1;
      if (v82 == 1)
      {
        v36 = v93;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:
    v87[0] = v36;
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    v61 = sub_10001BFB0();
    sub_100003998(v61, v62);
    sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    sub_10005A6D8(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650);
    Publishers.MergeMany.init<A>(_:)();
    sub_10005A6D8(&qword_1000DDB68, &qword_1000DDB38, &qword_1000AC630);
    Publisher.collect()();
    (*(v66 + 8))(v65, v73);
    v63 = swift_allocObject();
    *(v63 + 16) = v34;
    *(v63 + 24) = a1 & 1;
    static Subscribers.Demand.unlimited.getter();
    sub_10005A6D8(&qword_1000DDB70, &qword_1000DDB40, &qword_1000AC638);
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v69 + 8))(v67, v71);
    sub_10005A6D8(&qword_1000DDB78, &qword_1000DDB48, &qword_1000AC640);
    Publisher.collect()();
    (*(v70 + 8))(v68, v72);
    sub_10005B070();
    v64 = swift_allocObject();
    *(v64 + 16) = a1 & 1;
    *(v64 + 24) = v78;
    sub_10005A6D8(&qword_1000DDB80, &qword_1000DDB50, &qword_1000AC648);

    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v76 + 8))(v74, v77);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10004B8B0(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

void *sub_10004B8D8()
{
  result = sub_100059744(&off_1000CF2D0);
  qword_1000E6CF8 = result;
  return result;
}

uint64_t sub_10004B900()
{
  result = sub_10005B274();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_10004B99C(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_1000CEE40, v3);
  sub_10001C1DC();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10004BA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B99C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004BA38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10004B900();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10004BA88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004AF5C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004BAB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004B8B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ActivityState.description.getter()
{
  v1 = type metadata accessor for ActivityState();
  v2 = sub_10000AC48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000ADA0();
  (*(v4 + 16))(v8 - v7, v0, v1);
  v9 = *(v4 + 88);
  v10 = sub_10001C6B0();
  v12 = v11(v10);
  if (v12 == enum case for ActivityState.active(_:))
  {
    return 0x657669746341;
  }

  if (v12 == enum case for ActivityState.ended(_:) || v12 == enum case for ActivityState.dismissed(_:))
  {
    return 0x6465646E45;
  }

  if (v12 == enum case for ActivityState.stale(_:))
  {
    return 0x656C617453;
  }

  v15 = *(v4 + 8);
  v16 = sub_10001C6B0();
  v17(v16);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_10004BC60(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  *(v1 + 64) = &_swiftEmptySetSingleton;
  sub_10000BC8C(a1, v1 + 24);
  sub_10004C0B4();
  v4 = v3[4];
  sub_100008614(v3, v3[3]);
  dispatch thunk of PersistentStorable.replaceActivities(activeIds:dismissedIds:)();
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;

    v9 = Array.description.getter();
    v10 = v3;
    v12 = v11;

    v13 = sub_1000170D4(v9, v12, v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;

    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_1000170D4(v14, v16, v19);

    *(v8 + 14) = v17;
    v3 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "ActivityStore: initialized with active activities:%s, dismissed activities:%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10004C564();
  sub_100008A94(v3);
  return v2;
}

void *sub_10004C0B4()
{
  v48 = type metadata accessor for ActivityState();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v48);
  v47 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SportsActivityAttributes();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v7 = static Activity.activities.getter();
  result = sub_10001BE20();
  v44 = result;
  if (!result)
  {

    return &_swiftEmptyArrayStorage;
  }

  v9 = 0;
  v37 = v7 & 0xFFFFFFFFFFFFFF8;
  v42 = (v3 + 8);
  v43 = v7 & 0xC000000000000001;
  v41 = (v0 + 88);
  v40 = enum case for ActivityState.active(_:);
  v38 = enum case for ActivityState.dismissed(_:);
  v39 = enum case for ActivityState.ended(_:);
  v36 = enum case for ActivityState.stale(_:);
  v35 = (v0 + 8);
  v10 = &_swiftEmptyArrayStorage;
  v46 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v43)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v37 + 16))
      {
        goto LABEL_37;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    Activity.attributes.getter();
    v13 = SportsActivityAttributes.canonicalId.getter();
    v15 = v14;
    (*v42)(v6, v45);
    v16 = v47;
    dispatch thunk of Activity.activityState.getter();
    v17 = (*v41)(v16, v48);
    if (v17 != v40)
    {
      if (v17 == v39 || v17 == v38)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v46;
        }

        else
        {
          v32 = v46[2];
          sub_100016520();
        }

        v23 = v21[2];
        v22 = v21[3];
        v46 = v21;
        if (v23 >= v22 >> 1)
        {
          sub_100016520();
          v46 = v33;
        }

        v24 = v46;
        v46[2] = v23 + 1;
        v19 = &v24[2 * v23];
        goto LABEL_24;
      }

      if (v17 != v36)
      {

        if (qword_1000DBA38 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100007DE8(v25, qword_1000E6D90);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Unused case, this could cause serious regressions!", v28, 2u);
        }

        result = (*v35)(v47, v48);
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = v10[2];
      sub_100016520();
      v10 = v30;
    }

    v18 = v10[2];
    if (v18 >= v10[3] >> 1)
    {
      sub_100016520();
      v10 = v31;
    }

    v10[2] = v18 + 1;
    v19 = &v10[2 * v18];
LABEL_24:
    *(v19 + 4) = v13;
    *(v19 + 5) = v15;
LABEL_25:
    ++v9;
    if (v12 == v44)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10004C564()
{
  v0 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v37 = &v28 - v5;
  v6 = type metadata accessor for ActivityState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v11 = static Activity.activities.getter();
  result = sub_10001BE20();
  if (!result)
  {
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = 0;
    v36 = v11 & 0xC000000000000001;
    v34 = (v7 + 88);
    v35 = enum case for ActivityState.active(_:);
    v29 = (v7 + 8);
    v30 = result;
    v31 = v11;
    v32 = v6;
    do
    {
      if (v36)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      dispatch thunk of Activity.activityState.getter();
      v16 = (*v34)(v10, v6);
      if (v16 == v35)
      {
        v17 = type metadata accessor for TaskPriority();
        v18 = v37;
        sub_100008E2C(v37, 1, 1, v17);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v20 = v33;
        v19[4] = v15;
        v19[5] = v20;
        sub_1000459F8(v18, v4, &qword_1000DC5A8, &qword_1000AAFD0);
        LODWORD(v18) = sub_100008B84(v4, 1, v17);

        if (v18 == 1)
        {
          sub_10001BB44(v4, &qword_1000DC5A8, &qword_1000AAFD0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v17 - 8) + 8))(v4, v17);
        }

        v21 = v4;
        v22 = v19[2];
        v23 = v19[3];
        swift_unknownObjectRetain();

        if (v22)
        {
          swift_getObjectType();
          v24 = dispatch thunk of Actor.unownedExecutor.getter();
          v26 = v25;
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        sub_10001BB44(v37, &qword_1000DC5A8, &qword_1000AAFD0);
        v27 = swift_allocObject();
        *(v27 + 16) = &unk_1000AC5F8;
        *(v27 + 24) = v19;
        if (v26 | v24)
        {
          v38 = 0;
          v39 = 0;
          v40 = v24;
          v41 = v26;
        }

        v6 = v32;
        v4 = v21;
        swift_task_create();

        v13 = v30;
        v11 = v31;
      }

      else
      {

        (*v29)(v10, v6);
      }

      ++v14;
    }

    while (v13 != v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_100003998(&qword_1000DDB10, &qword_1000AC5C0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = sub_100003998(&qword_1000DDB18, &qword_1000AC5C8);
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = sub_100003998(&qword_1000DDB20, &unk_1000AC5D0);
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10004CB8C, 0, 0);
}

uint64_t sub_10004CB8C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B21C();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  v1 = sub_10005AEA4();
  v2(v1);
  v3 = enum case for ActivityState.ended(_:);
  *(v0 + 136) = enum case for ActivityState.active(_:);
  *(v0 + 140) = v3;
  v4 = enum case for ActivityState.stale(_:);
  *(v0 + 144) = enum case for ActivityState.dismissed(_:);
  *(v0 + 148) = v4;
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v6;
  *v6 = v7;
  sub_10005AD7C(v6);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v10);
}

uint64_t sub_10004CC80()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10004CD94()
{
  sub_10005B2D0();
  sub_10001C524();
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = sub_10005B07C();
  if (sub_100008B84(v4, v5, v3) == 1)
  {
    v6 = sub_10005B1A8();
    v7(v6);

    sub_10001BEDC();
    sub_10001C74C();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = *(v0 + 136);
  v18 = sub_10005B108();
  v19(v18);
  v20 = *(v1 + 88);
  v21 = sub_10000AF64();
  v23 = v22(v21);
  if (v23 == v17)
  {
    goto LABEL_6;
  }

  if (v23 == *(v0 + 140) || v23 == *(v0 + 144))
  {
    if (qword_1000DB9F0 == -1)
    {
LABEL_14:
      sub_10001C74C();

      return _swift_task_switch(v25, v26, v27);
    }

LABEL_25:
    sub_10005AD48();
    swift_once();
    goto LABEL_14;
  }

  if (v23 == *(v0 + 148))
  {
LABEL_6:
    if (qword_1000DB9F0 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v29 = type metadata accessor for Logger();
  sub_10005B0AC(v29, qword_1000E6D90);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (sub_10005B3BC(v31))
  {
    *swift_slowAlloc() = 0;
    sub_10005B37C(&_mh_execute_header, v32, v33, "Unused case, this could cause serious regressions!");
    sub_10000B008();
  }

  v35 = *(v0 + 48);
  v34 = *(v0 + 56);
  v36 = *(v0 + 40);

  v37 = *(v35 + 8);
  v38 = sub_10005B088();
  v39(v38);
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v40 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 120) = v41;
  *v41 = v42;
  sub_10005AD7C();
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v43, v44, v45);
}

uint64_t sub_10004D030()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 128);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10004D0A8()
{
  sub_10001BEC4();
  v1 = v0[4];
  sub_10004D1D8(v0[3]);
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  v0[15] = v3;
  *v3 = v4;
  v5 = sub_10005AD7C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v7);
}

uint64_t sub_10004D140()
{
  sub_10001BEC4();
  v1 = v0[4];
  sub_10004D838(v0[3]);
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  v0[15] = v3;
  *v3 = v4;
  v5 = sub_10005AD7C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v7);
}

void sub_10004D1D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityState();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsActivityAttributes();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Activity.attributes.getter();
  v12 = SportsActivityAttributes.canonicalId.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  swift_beginAccess();

  v15 = v1[2];
  swift_isUniquelyReferenced_nonNull_native();
  v44 = v1[2];
  sub_100086D80(a1, v12, v14);
  v1[2] = v44;
  swift_endAccess();
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100007DE8(v16, qword_1000E6D90);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v17;
    v21 = v20;
    v45[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = Activity.id.getter();
    v24 = sub_1000170D4(v22, v23, v45);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1000170D4(v12, v14, v45);
    _os_log_impl(&_mh_execute_header, v18, v19, "ActivityStore: writing activity '%s' for '%s' to persistence", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v1[7];
  sub_100008614(v1 + 3, v1[6]);
  dispatch thunk of PersistentStorable.writeActivity(activityId:)();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = v40;
    dispatch thunk of Activity.activityState.getter();
    v30 = ActivityState.description.getter();
    v32 = v31;
    (*(v41 + 8))(v29, v42);
    v33 = sub_1000170D4(v30, v32, v45);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v2[2];

    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    v35 = Dictionary.description.getter();
    v37 = v36;

    v38 = sub_1000170D4(v35, v37, v45);

    *(v28 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "ActivityStore: write complete with state %s. Active activities: %s", v28, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10004D838(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityState();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsActivityAttributes();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Activity.attributes.getter();
  v15 = SportsActivityAttributes.canonicalId.getter();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  sub_10007B938();
  swift_endAccess();

  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v69 = v15;
  v18 = type metadata accessor for Logger();
  sub_100007DE8(v18, qword_1000E6D90);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v1;
  v68 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = Activity.id.getter();
    v25 = sub_1000170D4(v23, v24, v71);

    *(v22 + 4) = v25;
    v26 = v69;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1000170D4(v26, v17, v71);
    _os_log_impl(&_mh_execute_header, v19, v20, "ActivityStore: removing activity '%s' for '%s' from persistence", v22, 0x16u);
    swift_arrayDestroy();
    v2 = v67;
  }

  v27 = v2[7];
  sub_100008614(v2 + 3, v2[6]);
  dispatch thunk of PersistentStorable.removeActivity(activityId:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v30 = 136315650;
    v31 = Activity.id.getter();
    v33 = sub_1000170D4(v31, v32, v71);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1000170D4(v69, v17, v71);
    *(v30 + 22) = 2080;
    v34 = v61;
    dispatch thunk of Activity.activityState.getter();
    v35 = ActivityState.description.getter();
    v37 = v36;
    (*(v62 + 8))(v34, v63);
    v38 = sub_1000170D4(v35, v37, v71);

    *(v30 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "ActivityStore: unregistering activity '%s' with canonicalId '%s' at state %s", v30, 0x20u);
    swift_arrayDestroy();
  }

  if (qword_1000DB9C0 != -1)
  {
    swift_once();
  }

  sub_10000BC30(qword_1000E6CC8 + 24, v71);
  sub_10000BC8C(v71, v74);
  v39 = v71[5];
  sub_10000BC8C(&v72, &v75);
  sub_10000BC8C(&v73, v76);
  v74[5] = v39;
  v76[5] = 0xD000000000000011;
  v76[6] = 0x80000001000B0480;
  v76[7] = v69;
  v76[8] = v17;

  v40 = v64;
  Date.init()();
  sub_10008C99C();
  v42 = v41;
  (*(v65 + 8))(v40, v66);
  v76[9] = v42;
  v43 = type metadata accessor for ActivityAuthorization();
  v44 = [objc_allocWithZone(v43) init];
  v45 = sub_1000499E0();
  v47 = v46;
  v70[3] = v43;
  v70[4] = &off_1000D1900;
  v70[0] = v44;
  type metadata accessor for ActivityCapUtility();
  v48 = swift_allocObject();
  v49 = sub_10000B90C(v70, v43);
  v50 = *(*(v43 - 1) + 64);
  v51 = __chkstk_darwin(v49);
  v53 = (&v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v53;
  v48[5] = v43;
  v48[6] = &off_1000D1900;
  v48[2] = v55;
  v48[7] = v45;
  v48[8] = v47;
  sub_100008A94(v70);

  sub_10000BCF0(v71);
  v76[10] = v48;
  v71[0] = sub_10002F5FC();
  v56 = swift_allocObject();
  *(v56 + 16) = v69;
  *(v56 + 24) = v17;
  v57 = swift_allocObject();
  v58 = v67;
  *(v57 + 16) = v68;
  *(v57 + 24) = v58;

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_10003248C(v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10004E208(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    v5 = *a1;
    swift_errorRetain();
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007DE8(v6, qword_1000E6D48);
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_1000170D4(a2, a3, &v13);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000170D4(v10, v11, &v13);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Tempo /unregister failed for id=%s with error=%s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10004E404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ActivityState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007DE8(v9, qword_1000E6D90);

  v23 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    dispatch thunk of Activity.activityState.getter();
    v12 = ActivityState.description.getter();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v15 = sub_1000170D4(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_beginAccess();
    v16 = *(a3 + 16);

    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    v17 = Dictionary.description.getter();
    v19 = v18;

    v20 = sub_1000170D4(v17, v19, &v24);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v23, v10, "ActivityStore: unregister complete with state %s. Active activities: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v23;
  }
}

uint64_t sub_10004E6F4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_100017538();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10004E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 168) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v10 = type metadata accessor for ActivityUIDismissalPolicy();
  *(v6 + 104) = v10;
  v11 = *(v10 - 8);
  *(v6 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v13 = *(*(sub_100003998(&qword_1000DDB30, &unk_1000AC5E0) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1000E6D00;
  *(v6 + 136) = qword_1000E6D00;

  return _swift_task_switch(sub_10004E930, v14, 0);
}

void sub_10004E930()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_10004E6F4();
  *(v0 + 144) = v4;
  if (v4)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    if (*(v0 + 168))
    {
      v7 = *(v0 + 48);
      v8 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
      sub_10001C2AC(v8);
      v10 = *(v9 + 16);
      v11 = sub_10005B03C();
      v12(v11);
      sub_10005B354();
      sub_100008E2C(v13, v14, v15, v8);
      static ActivityUIDismissalPolicy.immediate.getter();
      sub_10005B18C(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
      v16 = swift_task_alloc();
      *(v0 + 160) = v16;
      *v16 = v0;
      v17 = sub_10004EF58;
    }

    else
    {
      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      v28 = *(v0 + 56);
      v29 = *(v0 + 48);
      v30 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
      sub_10001C2AC(v30);
      (*(v31 + 16))(v6, v29, v30);
      sub_10005B354();
      sub_100008E2C(v32, v33, v34, v30);
      static Date.now.getter();
      static Date.+ infix(_:_:)();
      v35 = *(v27 + 8);
      v36 = sub_10005B2B8();
      v35(v36);
      static ActivityUIDismissalPolicy.after(_:)();
      (v35)(v24, v26);
      sub_10005B18C(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
      v16 = swift_task_alloc();
      *(v0 + 152) = v16;
      *v16 = v0;
      v17 = sub_10004EBB0;
    }

    v16[1] = v17;
    v37 = *(v0 + 120);
    sub_10005B308(*(v0 + 128));
    sub_10005B1D8();

    __asm { BR              X2 }
  }

  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);

  sub_10005AEB4();
  sub_10005B1D8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10004EBB0()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10001BF54();
  v2 = v1[19];
  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = *v0;
  sub_10001BE74();
  *v9 = v8;

  v10 = sub_10005AEA4();
  v11(v10);
  sub_10001BB44(v4, &qword_1000DDB30, &unk_1000AC5E0);
  sub_10001BF60();
  sub_10001C74C();

  return _swift_task_switch(v12, v13, v14);
}

void sub_10004ED28()
{
  v0[2] = 0;
  v1 = v0[7];
  v0[3] = 0xE000000000000000;
  v2._countAndFlagsBits = 0x207265746661;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 115;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v5 = v0[2];
  v4 = v0[3];
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v6 = v0[5];
  v7 = type metadata accessor for Logger();
  sub_10005B0AC(v7, qword_1000E6D90);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  if (v10)
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v25 = sub_10005B3EC();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000170D4(v13, v12, &v25);
    *(v14 + 12) = 2080;
    v15 = sub_10000AF64();
    v18 = sub_1000170D4(v15, v16, v17);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "LiveActivityManager.destroyActivity: activity for '%s' destroyed %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_10000B008();
    sub_10005AED8();
  }

  else
  {
  }

  v20 = v0[15];
  v19 = v0[16];
  v22 = v0[11];
  v21 = v0[12];

  sub_10005AEB4();
  sub_10005B1D8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10004EF58()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10001BF54();
  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = *v0;
  sub_10001BE74();
  *v9 = v8;

  v10 = sub_10005AEA4();
  v11(v10);
  sub_10001BB44(v4, &qword_1000DDB30, &unk_1000AC5E0);
  sub_10001BF60();
  sub_10001C74C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10004F0D0()
{
  v19 = v0;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10005B0AC(v2, qword_1000E6D90);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v18 = sub_10005B3EC();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000170D4(v8, v7, &v18);
    *(v9 + 12) = 2080;
    v10 = sub_1000170D4(0x74616964656D6D69, 0xEB00000000796C65, &v18);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LiveActivityManager.destroyActivity: activity for '%s' destroyed %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_10005AED8();
    sub_10005AFC4();
  }

  else
  {
  }

  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[11];
  v13 = v0[12];

  v15 = sub_10005AEB4();

  return v16(v15);
}

void *sub_10004F2CC()
{
  v1 = v0[2];

  sub_100008A94(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t sub_10004F2FC()
{
  v0 = sub_10004F2CC();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10004F350()
{
  type metadata accessor for LiveActivityActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6D00 = v0;
  return result;
}

uint64_t sub_10004F3B0()
{
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004F40C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LiveActivityActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void sub_10004F444()
{
  sub_100003998(&qword_1000DDAA8, &unk_1000AC510);
  v0 = type metadata accessor for Sport();
  sub_10000AC48(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AB8E0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, enum case for Sport.baseball(_:), v0);
  v8(v7 + v4, enum case for Sport.basketball(_:), v0);
  v8(v7 + 2 * v4, enum case for Sport.football(_:), v0);
  v8(v7 + 3 * v4, enum case for Sport.hockey(_:), v0);
  v8(v7 + 4 * v4, enum case for Sport.soccer(_:), v0);
  sub_100015300();
  qword_1000E6D08 = v9;
}

void sub_10004F5B8()
{
  type metadata accessor for LiveActivityManager();
  v0 = swift_allocObject();
  sub_10004F888();
  qword_1000E6D10 = v0;
}

uint64_t sub_10004F60C(uint64_t a1, uint64_t a2)
{
  if ((sub_10004F7BC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 80);
  sub_10000AF64();
  return dispatch thunk of ActivityAuthorization.areActivitiesEnabled(forBundleId:)() & 1;
}

uint64_t sub_10004F658()
{
  v1 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  v2 = sub_10000AC48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  v12 = *(v0 + 88);
  ActivityAuthorizationInfo.activityAuthorizationStatus(for:)();
  (*(v4 + 104))(v8, enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.alwaysAllow(_:), v1);
  LOBYTE(v12) = static ActivityAuthorizationInfo.ActivityAuthorizationStatus.== infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v8, v1);
  v13(v11, v1);
  return v12 & 1;
}

id sub_10004F7BC(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(LSApplicationRecord);

  v4 = sub_100058D5C(a1, a2, 1);
  v6 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 supportsLiveActivities];

  return v5;
}

void sub_10004F888()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v4);
  v6 = *(v5 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v7);
  *(v0 + 56) = 0;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 0;
  v8 = type metadata accessor for ActivityAuthorization();
  *(v0 + 80) = [objc_allocWithZone(v8) init];
  v9 = type metadata accessor for ActivityAuthorizationInfo();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 88) = ActivityAuthorizationInfo.init()();
  v12 = [objc_allocWithZone(v8) init];
  v13 = sub_1000499E0();
  v15 = v14;
  v42 = v8;
  v43 = &off_1000D1900;
  v41[0] = v12;
  type metadata accessor for ActivityCapUtility();
  sub_10005B19C();
  v16 = swift_allocObject();
  v17 = sub_10000B90C(v41, v8);
  v18 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v17);
  sub_10000ADA0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v16[5] = v8;
  v16[6] = &off_1000D1900;
  v16[2] = v23;
  v16[7] = v13;
  v16[8] = v15;
  sub_100008A94(v41);
  *(v1 + 96) = v16;
  sub_1000459F8(v3, &v39, &qword_1000DCF18, &qword_1000AC470);
  if (v40)
  {
    sub_10000A8F8(&v39, v41);
  }

  else
  {
    v24 = type metadata accessor for PersistentStore();
    v25 = PersistentStore.__allocating_init()();
    v42 = v24;
    v43 = &protocol witness table for PersistentStore;
    v41[0] = v25;
    if (v40)
    {
      sub_10001BB44(&v39, &qword_1000DCF18, &qword_1000AC470);
    }
  }

  sub_10000BC8C(v41, v1 + 16);
  sub_10000BC8C(v41, &v39);
  type metadata accessor for ActivityStore();
  sub_10005B19C();
  swift_allocObject();
  *(v1 + 104) = sub_10004BC60(&v39);
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v26 = type metadata accessor for Logger();
  sub_100007DE8(v26, qword_1000E6D90);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (sub_10005B3BC(v28))
  {
    v29 = sub_10001C4D0();
    v30 = sub_10003FC24();
    *&v39 = v30;
    *v29 = 136315138;
    v31 = sub_1000499E0();
    v33 = sub_1000170D4(v31, v32, &v39);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Current target app is: %s", v29, 0xCu);
    sub_100008A94(v30);
    sub_10000B008();
    sub_10005AED8();
  }

  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v34, v35, v36, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v1;

  sub_100045DBC();
  sub_10004A77C();

  sub_10004FE9C();
  sub_10001BB44(v3, &qword_1000DCF18, &qword_1000AC470);
  sub_100008A94(v41);
  sub_10000AE50();
}

uint64_t sub_10004FD14()
{
  sub_10001BEC4();
  v1 = *(v0 + 16);
  sub_10004FD6C();
  sub_10001BEDC();

  return v2();
}

uint64_t sub_10004FD6C()
{
  type metadata accessor for InternalSettings();
  swift_initStaticObject();
  sub_100084324();
  swift_allocObject();
  swift_weakInit();
  sub_100003998(&qword_1000DDAC0, &qword_1000AC538);
  sub_10005A6D8(&qword_1000DDAC8, &qword_1000DDAC0, &qword_1000AC538);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004FE9C()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(v0 + 88);
  v7._countAndFlagsBits = sub_1000499E0();
  ActivityAuthorizationInfo.subscribeToActivityAuthorizationStatusUpdates(for:)(v7);
  if (v8)
  {
  }

  v10 = type metadata accessor for TaskPriority();
  sub_100008E2C(v5, 1, 1, v10);
  v11 = qword_1000DB9F0;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1000E6D00;
  v14 = sub_100059CC8(&qword_1000DDA50, v12, type metadata accessor for LiveActivityActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v1;

  sub_10004A77C();
  v16 = *(v1 + 56);
  *(v1 + 56) = v17;
}

uint64_t sub_100050044()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);

    Task.cancel()();
  }

  sub_100008A94((v0 + 16));
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  return v0;
}

uint64_t sub_1000500D4()
{
  sub_100050044();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_100050174(char *a1)
{
  v2 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    sub_100008E2C(v5, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v8;
    *(v10 + 40) = v6;
    sub_10004A77C();
  }

  return result;
}

uint64_t sub_100050284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_1000502A8, 0, 0);
}

uint64_t sub_1000502A8()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  v0 = qword_1000E6D00;

  return _swift_task_switch(sub_10005032C, v0, 0);
}

uint64_t sub_10005032C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_10001BEDC();
  return v1();
}

uint64_t sub_100050358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(sub_100003998(&qword_1000DDA58, &unk_1000AC498) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.Iterator();
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v4[13] = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1000E6D00;
  v4[14] = qword_1000E6D00;

  return _swift_task_switch(sub_100050540, v15, 0);
}

uint64_t sub_100050540()
{
  sub_10005B2D0();
  sub_10001C524();
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = *(v0[3] + 88);
  ActivityAuthorizationInfo.activityAuthorizationStatusUpdates.getter();
  ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.makeAsyncIterator()();
  v6 = sub_10005AEA4();
  v7(v6);
  sub_10005AE08();
  v0[15] = sub_100059CC8(v8, v9, v10);
  sub_10005AF54();
  sub_100059CC8(v11, 255, v12);
  v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  v0[16] = v14;
  *v14 = v15;
  sub_10005AE70(v14);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v18);
}

uint64_t sub_100050644()
{
  sub_10001BF48();
  sub_10005B2C4();
  v3 = v0;
  sub_10001BE74();
  *v4 = v0;
  v5 = *(v0 + 128);
  *v4 = *v2;
  *(v0 + 136) = v1;

  sub_10005B314();
  v7 = *(v6 + 112);
  if (v1)
  {
    if (v7)
    {
      v8 = *(v3 + 120);
      v9 = *(v6 + 112);
      swift_getObjectType();
      sub_10005B404();
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v14 = sub_100050974;
  }

  else
  {
    if (v7)
    {
      v12 = *(v3 + 120);
      v13 = *(v6 + 112);
      swift_getObjectType();
      sub_10005B404();
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v14 = sub_10005079C;
  }

  return _swift_task_switch(v14, v11, v10);
}

uint64_t sub_1000507B4()
{
  v1 = v0[7];
  v2 = sub_100003998(&qword_1000DDA68, &qword_1000AC4A8);
  if (sub_100008B84(v1, 1, v2) == 1)
  {
    v3 = v0[10];
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);

    sub_10001BEDC();

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = *v1;
    v11 = v1[1];
    (*(v8 + 32))(v7, v1 + *(v2 + 48), v0[4]);
    sub_1000509EC(v7, v10, v11);

    v12 = *(v8 + 8);
    v13 = sub_10005B03C();
    v14(v13);
    sub_10005AF54();
    sub_100059CC8(v15, 255, v16);
    v17 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    swift_task_alloc();
    sub_100029D94();
    v0[16] = v18;
    *v18 = v19;
    v20 = sub_10005AE70();

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v21, v22);
  }
}

uint64_t sub_100050974()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 136);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000509EC(char *a1, unint64_t a2, unint64_t a3)
{
  v81 = a1;
  v80 = a2;
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v71 - v9;
  v77 = type metadata accessor for SportsActivityAttributes();
  v72 = *(v77 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v77);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v71 - v17;
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  if (qword_1000DBA38 != -1)
  {
LABEL_50:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100007DE8(v22, qword_1000E6D90);
  v79 = *(v13 + 16);
  v79(v21, v81, v12);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v73 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v78 = a3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v74 = v13;
    v27 = v26;
    v89[0] = swift_slowAlloc();
    *v27 = 136315394;
    v79(v18, v21, v12);
    v28 = String.init<A>(describing:)();
    v71 = v23;
    v29 = v28;
    v31 = v30;
    v32 = *(v74 + 8);
    v32(v21, v12);
    v33 = sub_1000170D4(v29, v31, v89);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1000170D4(v80, a3, v89);
    v34 = v71;
    _os_log_impl(&_mh_execute_header, v71, v73, "Received activity authorization status update %s for bundle %s", v27, 0x16u);
    swift_arrayDestroy();

    v13 = v74;
  }

  else
  {

    v32 = *(v13 + 8);
    v32(v21, v12);
  }

  a3 = v82;
  v35 = v75;
  v79(v75, v81, v12);
  result = (*(v13 + 88))(v35, v12);
  if (result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.noAuthorization(_:))
  {
    if (result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.allow(_:) && result != enum case for ActivityAuthorizationInfo.ActivityAuthorizationStatus.alwaysAllow(_:))
    {
      return (v32)(v35, v12);
    }

    v38 = *(a3 + 96);
    if (sub_100066914())
    {
      LODWORD(v79) = 1;
    }

    else
    {
      LODWORD(v79) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v39 = v83;

    v21 = *(a3 + 104);
    swift_beginAccess();
    v40 = *(v21 + 2);
    v18 = v40 + 64;
    v41 = *(v40 + 8);
    v88 = _swiftEmptyArrayStorage;
    v42 = 1 << v40[32];
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v13 = v43 & v41;
    v44 = (v42 + 63) >> 6;
    v45 = (v72 + 8);
    v81 = v40;

    v12 = 0;
    while (1)
    {
      while (1)
      {
        if (!v13)
        {
          while (1)
          {
            v46 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_50;
            }

            if (v46 >= v44)
            {
              break;
            }

            v13 = *&v18[8 * v46];
            ++v12;
            if (v13)
            {
              v12 = v46;
              goto LABEL_22;
            }
          }

          v53 = v88;
          result = sub_10001BE20(v88);
          if (!result)
          {
          }

          v54 = result;
          if (result >= 1)
          {
            v55 = 0;
            v80 = v53 & 0xC000000000000001;
            v81 = v53;
            LODWORD(v79) = v79 & 1;
            v56 = v82;
            do
            {
              if (v80)
              {
                v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v57 = *(v53 + 8 * v55 + 32);
              }

              v58 = type metadata accessor for TaskPriority();
              sub_100008E2C(v39, 1, 1, v58);
              v59 = qword_1000DB9F0;

              v61 = v39;
              if (v59 != -1)
              {
                swift_once();
              }

              v62 = qword_1000E6D00;
              v63 = sub_100059CC8(&qword_1000DDA50, v60, type metadata accessor for LiveActivityActor);
              v64 = swift_allocObject();
              *(v64 + 16) = v62;
              *(v64 + 24) = v63;
              *(v64 + 32) = v56;
              *(v64 + 40) = v57;
              *(v64 + 48) = v79;
              sub_1000459F8(v61, v7, &qword_1000DC5A8, &qword_1000AAFD0);
              LODWORD(v63) = sub_100008B84(v7, 1, v58);

              if (v63 == 1)
              {
                sub_10001BB44(v7, &qword_1000DC5A8, &qword_1000AAFD0);
              }

              else
              {
                TaskPriority.rawValue.getter();
                (*(*(v58 - 8) + 8))(v7, v58);
              }

              v65 = *(v64 + 16);
              v66 = *(v64 + 24);
              swift_unknownObjectRetain();

              if (v65)
              {
                swift_getObjectType();
                v67 = dispatch thunk of Actor.unownedExecutor.getter();
                v69 = v68;
                swift_unknownObjectRelease();
              }

              else
              {
                v67 = 0;
                v69 = 0;
              }

              v39 = v83;
              sub_10001BB44(v83, &qword_1000DC5A8, &qword_1000AAFD0);
              v70 = swift_allocObject();
              *(v70 + 16) = &unk_1000AC4C0;
              *(v70 + 24) = v64;
              if (v69 | v67)
              {
                v84 = 0;
                v85 = 0;
                v86 = v67;
                v87 = v69;
              }

              v56 = v82;
              ++v55;
              swift_task_create();

              v53 = v81;
            }

            while (v54 != v55);
          }

          __break(1u);
          return result;
        }

LABEL_22:
        v47 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v21 = *(*(v81 + 7) + ((v12 << 9) | (8 * v47)));

        v48 = v76;
        Activity.attributes.getter();
        v49 = SportsActivityAttributes.bundleId.getter();
        v51 = v50;
        (*v45)(v48, v77);
        if (v49 != v80 || v51 != v78)
        {
          break;
        }

LABEL_29:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a3 = v88[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v39 = v83;
      }

      a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a3)
      {
        goto LABEL_29;
      }

      v39 = v83;
    }
  }

  return result;
}

uint64_t sub_100051318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = type metadata accessor for SportsActivityAttributes();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1000E6D00;
  *(v6 + 56) = qword_1000E6D00;

  return _swift_task_switch(sub_100051414, v10, 0);
}

uint64_t sub_100051414()
{
  v37 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 80);
  v6 = *(v0 + 16);
  v7 = v6[6];
  sub_100008614(v6 + 2, v6[5]);
  Activity.attributes.getter();
  SportsActivityAttributes.canonicalId.getter();
  v8 = *(v2 + 8);
  v9 = sub_10005B088();
  v11 = v10;
  v10(v9);
  sub_10005B348();
  v12 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  *(v0 + 64) = v12;

  if (v12)
  {
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1000516A4;
    v14 = *(v0 + 16);
    sub_10005B354();

    return sub_100051824();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v16 = *(v0 + 24);
    v17 = type metadata accessor for Logger();
    sub_10005B0AC(v17, qword_1000E6D90);

    v18 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10005B3D4())
    {
      v19 = *(v0 + 48);
      v20 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = sub_10001C4D0();
      v23 = sub_10003FC24();
      v36 = v23;
      *v22 = 136315138;
      Activity.attributes.getter();
      v24 = SportsActivityAttributes.canonicalId.getter();
      v26 = v25;
      v27 = sub_10005B2B8();
      v11(v27);
      v28 = sub_1000170D4(v24, v26, &v36);

      *(v22 + 4) = v28;
      sub_10005B00C();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_100008A94(v23);
      sub_10000B008();
      sub_10000B008();
    }

    v34 = *(v0 + 48);

    sub_10001BEDC();

    return v35();
  }
}

uint64_t sub_1000516A4()
{
  sub_10001BF48();
  sub_10005B2C4();
  v3 = *(v0 + 72);
  v4 = *v2;
  sub_10001BE74();
  *v5 = v4;

  sub_10005B314();
  v7 = *(v6 + 56);
  if (v1)
  {
  }

  sub_10005B2F0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000517C4()
{
  sub_10001BEC4();

  v1 = *(v0 + 48);

  sub_10001BEDC();

  return v2();
}

uint64_t sub_100051824()
{
  sub_10001BEC4();
  *(v1 + 202) = v2;
  *(v1 + 201) = v3;
  *(v1 + 200) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v0;
  v6 = type metadata accessor for SportingEventProgressStatus();
  *(v1 + 64) = v6;
  sub_10000AC84(v6);
  *(v1 + 72) = v7;
  v9 = *(v8 + 64);
  *(v1 + 80) = sub_100029D20();
  v10 = type metadata accessor for Date();
  *(v1 + 88) = v10;
  sub_10000AC84(v10);
  *(v1 + 96) = v11;
  v13 = *(v12 + 64);
  *(v1 + 104) = sub_10005B294();
  *(v1 + 112) = swift_task_alloc();
  v14 = sub_100029C4C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10005192C()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  v1 = qword_1000E6D00;
  *(v0 + 120) = qword_1000E6D00;

  return _swift_task_switch(sub_1000519B4, v1, 0);
}

uint64_t sub_1000519D8()
{
  sub_10001BEC4();
  v1 = v0[15];
  v2 = v0[6];
  v0[17] = SportingEventSubscription.canonicalId.getter();
  v0[18] = v3;
  sub_10005B2F0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100051A40()
{
  sub_10001BEC4();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v0[19] = sub_10004E6F4();

  v4 = sub_100029C4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100051AB0()
{
  v80 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  if (!*(v0 + 152))
  {
    v39 = *(v0 + 80);
    v40 = *(v0 + 112);

    sub_10001BE84();
    sub_10005B0E4();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 200);
  v6 = *(v0 + 48);
  v7 = COERCE_DOUBLE(SportingEventSubscription.liveActivityTTLSeconds.getter());
  if (v8)
  {
    v9 = -1.0;
  }

  else
  {
    v9 = v7;
  }

  static Date.now.getter();
  SportingEventSubscription.updatedAt.getter();
  Date.timeIntervalSince(_:)();
  v11 = v10;
  v12 = *(v4 + 8);
  v13 = sub_10001BFB0();
  v12(v13);
  (v12)(v1, v3);
  if (v9 > -1.0 || v11 > 14400.0)
  {
    v44 = *(v0 + 72);
    v43 = *(v0 + 80);
    v45 = *(v0 + 64);
    v46 = *(v0 + 48);
    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v47._countAndFlagsBits = 0x73736572676F7270;
    v47._object = 0xEF20737574617453;
    String.append(_:)(v47);
    v48 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    SportingEventProgressStatus.rawValue.getter();
    v49 = *(v44 + 8);
    v50 = sub_10005B088();
    v51(v50);
    v52._countAndFlagsBits = sub_10001BFB0();
    String.append(_:)(v52);

    v53._object = 0x80000001000B2090;
    v53._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v53);
    Double.write<A>(to:)();
    v55 = *(v0 + 16);
    v54 = *(v0 + 24);
    if (v11 <= 14400.0)
    {
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      v58._countAndFlagsBits = 0x207265746661;
      v58._object = 0xE600000000000000;
      String.append(_:)(v58);
      Double.write<A>(to:)();
      v59._countAndFlagsBits = 115;
      v59._object = 0xE100000000000000;
      String.append(_:)(v59);
      v57 = *(v0 + 32);
      v56 = *(v0 + 40);
    }

    else
    {
      v56 = 0xEB00000000796C65;
      v57 = 0x74616964656D6D69;
    }

    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v60 = *(v0 + 48);
    v61 = type metadata accessor for Logger();
    sub_10005B0AC(v61, qword_1000E6D90);
    v62 = v60;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 48);
      v66 = sub_10003FC24();
      v79[0] = swift_slowAlloc();
      *v66 = 136315650;
      v67 = SportingEventSubscription.canonicalId.getter();
      v69 = sub_1000170D4(v67, v68, v79);

      *(v66 + 4) = v69;
      *(v66 + 12) = 2080;
      v70 = sub_1000170D4(v57, v56, v79);

      *(v66 + 14) = v70;
      *(v66 + 22) = 2080;
      sub_1000170D4(v55, v54, v79);
      sub_10001C1DC();

      *(v66 + 24) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, "Destroying activity for '%s' %s: %s", v66, 0x20u);
      swift_arrayDestroy();
      sub_10000B008();
      sub_10000B008();
    }

    else
    {
    }

    v71 = *(v0 + 48);
    SportingEventSubscription.canonicalId.getter();
    *(v0 + 160) = v72;
    v73 = swift_task_alloc();
    *(v0 + 168) = v73;
    *v73 = v0;
    v73[1] = sub_1000520C8;
    v74 = *(v0 + 56);
    v75 = *(v0 + 202);
    v76 = *(v0 + 201);
    v77 = *(v0 + 200);
    sub_10005B0E4();

    return sub_10005625C();
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v14 = *(v0 + 48);
    v15 = type metadata accessor for Logger();
    sub_10005B0AC(v15, qword_1000E6D90);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 48);
      v20 = swift_slowAlloc();
      v21 = sub_10003FC24();
      v79[0] = v21;
      *v20 = 136315394;
      v22 = SportingEventSubscription.canonicalId.getter();
      v24 = sub_1000170D4(v22, v23, v79);

      *(v20 + 4) = v24;
      *(v20 + 12) = 1024;
      *(v20 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating activity '%s', isStale: %{BOOL}d", v20, 0x12u);
      sub_100008A94(v21);
      sub_10005AED8();
      sub_10005AFC4();
    }

    v25 = swift_task_alloc();
    *(v0 + 184) = v25;
    *v25 = v0;
    v25[1] = sub_100052240;
    v26 = *(v0 + 202);
    v27 = *(v0 + 201);
    v28 = *(v0 + 200);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    sub_10005B0E4();

    return sub_100054B7C(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_1000520C8()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BED0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  sub_10001C740();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000521CC()
{
  sub_10001BEC4();
  v1 = v0[19];

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  sub_10001BE84();

  return v5();
}

uint64_t sub_100052240()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10005233C()
{
  sub_10001BF48();
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[22];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];

  sub_10001BEDC();

  return v7();
}

uint64_t sub_1000523C4()
{
  sub_10001BF48();
  v1 = v0[19];

  v2 = v0[24];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];

  sub_10001BEDC();

  return v6();
}

void sub_100052444(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v10);
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_10000ADEC();
  v66 = v14;
  v15 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  sub_10000AC48(v15);
  v67 = v16;
  v18 = *(v17 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v19);
  sub_10000ADEC();
  v71 = v20;
  v21 = type metadata accessor for URL();
  v22 = sub_10000AC48(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10000ADA0();
  v29 = v28 - v27;
  v30 = type metadata accessor for SportsActivityAttributes();
  v31 = sub_10000AC48(v30);
  v69 = v32;
  v70 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_10000ADA0();
  v37 = v36 - v35;
  if (sub_100052954())
  {
    sub_100045BF8();
    swift_allocError();
    v39 = xmmword_1000AC250;
LABEL_9:
    *v38 = v39;
    swift_willThrow();
    return;
  }

  v40 = v8[12];
  v64 = v24;
  v65 = v21;
  v63 = v15;
  if ((sub_100066914() & 1) == 0)
  {
    sub_10005AE4C();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v41 = v9[6];
  sub_100008614(v9 + 2, v9[5]);
  v42 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v42)
  {
    sub_100045BF8();
    swift_allocError();
    v39 = xmmword_1000AC240;
    goto LABEL_9;
  }

  v43 = v42;
  if (a4)
  {
    v44 = a6;
    v45 = sub_10004F658() ^ 1;
  }

  else
  {
    LOBYTE(v45) = 0;
    v44 = a6;
  }

  sub_100052990(v44, a7, a8, v37);
  if (v74)
  {
  }

  else
  {
    sub_100052BD8();

    v75 = v45;
    v46 = v9[6];
    sub_100008614(v9 + 2, v9[5]);
    dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
    v47 = v71;
    sub_100052F9C(v43, v29, a3 & 1, v75 & 1, v71);
    sub_100053B78(v37, a5, a6, v71);
    if (a4)
    {
      type metadata accessor for TaskPriority();
      sub_100045E00();
      sub_100008E2C(v48, v49, v50, v51);
      v52 = qword_1000DB9F0;

      v53 = v43;
      if (v52 != -1)
      {
        sub_10005AD48();
        swift_once();
      }

      v54 = qword_1000E6D00;
      sub_10005AE08();
      v58 = sub_100059CC8(v55, v56, v57);
      v59 = swift_allocObject();
      *(v59 + 16) = v54;
      *(v59 + 24) = v58;
      *(v59 + 32) = v9;
      *(v59 + 40) = v53;
      *(v59 + 48) = v75 & 1;

      v60 = sub_100045DBC();
      sub_10004AC64(v60, v61, v66, v62, v59);

      v47 = v71;
    }

    else
    {
    }

    (*(v67 + 8))(v47, v63);
    (*(v64 + 8))(v29, v65);
    (*(v69 + 8))(v37, v70);
  }
}

BOOL sub_100052954()
{
  v1 = *(v0 + 104);
  v2 = sub_10004E6F4();
  if (v2)
  {
  }

  return v2 != 0;
}

void sub_100052990(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v22 = a4;
  v23 = a1;
  v4 = type metadata accessor for SportsActivityAttributes();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Sport();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DB9F8 != -1)
  {
    swift_once();
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  sub_100049C24();
  v17 = v16;
  (*(v12 + 8))(v15, v11);
  if (v17)
  {
    v18 = v26;
    sub_10007C37C();
    if (v18)
    {
      return;
    }

    v7 = v10;
  }

  else
  {
    v19 = v26;
    sub_10007C8C8();
    if (v19)
    {
      return;
    }
  }

  (*(v21 + 32))(v22, v7, v4);
}

void sub_100052BD8()
{
  v43 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  sub_10000AC48(v43);
  v1 = v0;
  v3 = *(v2 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v4);
  sub_10000ADEC();
  v42 = v5;
  v41 = type metadata accessor for SportsActivityAttributes();
  v6 = sub_10000AC48(v41);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v40 = v12 - v11;
  if (qword_1000DBA38 != -1)
  {
    sub_10005AD5C();
  }

  v13 = type metadata accessor for Logger();
  sub_10005B0AC(v13, qword_1000E6D90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_10001C4D0();
    v17 = sub_10003FC24();
    v44 = v17;
    *v16 = 136315138;
    sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
    static Activity.activities.getter();
    v18 = Array.description.getter();
    v20 = v19;

    v21 = sub_1000170D4(v18, v20, &v44);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "ActivityKit activities: %s", v16, 0xCu);
    sub_100008A94(v17);
    sub_10000B008();
    sub_10000B008();
  }

  sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  v22 = static Activity.activities.getter();
  v23 = sub_10001BE20(v22);
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v44 = _swiftEmptyArrayStorage;
  sub_100017BE0();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v44;
    v37 = v22 & 0xC000000000000001;
    v38 = v24;
    v27 = (v8 + 8);
    v28 = (v1 + 8);
    v39 = v22;
    do
    {
      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v22 + 8 * v25 + 32);
      }

      Activity.attributes.getter();
      v30 = SportsActivityAttributes.canonicalId.getter();
      v32 = v31;
      (*v27)(v40, v41);
      dispatch thunk of Activity.content.getter();
      ActivityContent.relevanceScore.getter();
      v34 = v33;

      (*v28)(v42, v43);
      v44 = v26;
      v35 = v26[2];
      if (v35 >= v26[3] >> 1)
      {
        sub_100017BE0();
        v26 = v44;
      }

      ++v25;
      v26[2] = v35 + 1;
      v36 = &v26[3 * v35];
      v36[4] = v30;
      v36[5] = v32;
      v36[6] = v34;
      v22 = v39;
    }

    while (v38 != v25);
LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_100052F9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v97 = a4;
  v81 = a3;
  v95 = a5;
  v96 = a2;
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v94 = &v77 - v8;
  v9 = type metadata accessor for URL();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  __chkstk_darwin(v9);
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsActivityContender();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v83 = type metadata accessor for SportsActivityContentState.EventInfoState();
  v82 = *(v83 - 8);
  v17 = *(v82 + 64);
  __chkstk_darwin(v83);
  v85 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v84 = &v77 - v21;
  v22 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v99 = &v77 - v24;
  v25 = type metadata accessor for SportsActivityContentState();
  v92 = *(v25 - 8);
  v93 = v25;
  v26 = *(v92 + 64);
  __chkstk_darwin(v25);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v100 = &v77 - v29;
  v30 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v77 - v32;
  v78 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  v77 = *(v78 - 8);
  v34 = *(v77 + 64);
  __chkstk_darwin(v78);
  v80 = &v77 - v35;
  v36 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v77 - v38;
  v40 = type metadata accessor for SportingEventSubscription.Metadata();
  v79 = *(v40 - 8);
  v41 = *(v79 + 64);
  __chkstk_darwin(v40);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Sport();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v77 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DB9F8 != -1)
  {
    swift_once();
  }

  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  sub_100049C24();
  v50 = v49;
  (*(v45 + 8))(v48, v44);
  if (v50)
  {
    SportingEventSubscription.metadata.getter();
    if (sub_100008B84(v39, 1, v40) == 1)
    {
      sub_10001BB44(v39, &qword_1000DD218, &unk_1000ABE10);
      sub_100045BF8();
      swift_allocError();
      *v51 = xmmword_1000AC260;
      return swift_willThrow();
    }

    else
    {
      v71 = v79;
      (*(v79 + 32))(v43, v39, v40);
      v101[3] = v40;
      v101[4] = &off_1000D3BA0;
      v72 = sub_10003F5B0(v101);
      (*(v71 + 16))(v72, v43, v40);
      v73 = enum case for SportingEventPlayLevel.session(_:);
      v74 = type metadata accessor for SportingEventPlayLevel();
      (*(*(v74 - 8) + 104))(v33, v73, v74);
      sub_100008E2C(v33, 0, 1, v74);
      v75 = v80;
      v76 = v98;
      sub_10007CCA0(a1, v96, v101, v33, 0, v81 & 1, v97 & 1, v80);
      sub_10001BB44(v33, &qword_1000DDA80, &qword_1000AC500);
      (*(v71 + 8))(v43, v40);
      if (v76)
      {
        return sub_100008A94(v101);
      }

      else
      {
        sub_100008A94(v101);
        return (*(v77 + 32))(v95, v75, v78);
      }
    }
  }

  else
  {
    v53 = type metadata accessor for SportsActivityClock();
    sub_100008E2C(v99, 1, 1, v53);
    v54 = type metadata accessor for SportsActivityPlay();
    sub_100008E2C(v84, 1, 1, v54);
    (*(v82 + 104))(v85, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v83);
    type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    sub_100059CC8(&qword_1000DC4C0, 255, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName);
    Dictionary.init(dictionaryLiteral:)();
    SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
    Dictionary.init(dictionaryLiteral:)();
    SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
    SportingEventSubscription.shouldDisplayPlayByPlay.getter();
    (*(v89 + 16))(v88, v96, v90);
    SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)();
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100007DE8(v55, qword_1000E6D90);
    v56 = a1;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v101[0] = v60;
      *v59 = 136315138;
      v61 = SportingEventSubscription.canonicalId.getter();
      v63 = sub_1000170D4(v61, v62, v101);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "Creating dummy activity content for event '%s'", v59, 0xCu);
      sub_100008A94(v60);
    }

    v65 = v93;
    v64 = v94;
    v66 = v92;
    v67 = v100;
    (*(v92 + 16))(v91, v100, v93);
    v68 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
    if (v69)
    {
      v70 = type metadata accessor for Date();
      sub_100008E2C(v64, 1, 1, v70);
    }

    else
    {
      sub_10007FAD0(*&v68);
    }

    sub_100059CC8(&qword_1000DDA90, 255, &type metadata accessor for SportsActivityContentState);
    sub_100059CC8(&qword_1000DDA98, 255, &type metadata accessor for SportsActivityContentState);
    sub_100059CC8(&qword_1000DDAA0, 255, &type metadata accessor for SportsActivityContentState);
    ActivityContent.init(state:staleDate:relevanceScore:)();
    return (*(v66 + 8))(v67, v65);
  }
}

uint64_t sub_100053B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v61 = a1;
  v58 = type metadata accessor for ActivityAuthorizationError();
  v53 = *(v58 - 8);
  v6 = *(v53 + 64);
  __chkstk_darwin(v58);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v52 - v9;
  __chkstk_darwin(v10);
  v57 = &v52 - v11;
  v12 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v55 = &v52 - v14;
  v60 = type metadata accessor for ActivityPresentationOptions();
  v15 = *(v60 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v60);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100003998(&qword_1000DDAB0, &unk_1000AE980);
  sub_100003998(&qword_1000DDAF8, &qword_1000AC5A0);
  v19 = type metadata accessor for ActivityContentSource.Request();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AA5B0;
  v24 = v23 + v22;
  v25 = (v24 + *(sub_100003998(&qword_1000DDB00, &qword_1000AC5A8) + 48));

  static PushActivityContentSource.externalRequest.getter();
  *v25 = a2;
  v25[1] = a3;
  (*(v20 + 104))(v24, enum case for ActivityContentSource.Request.push(_:), v19);
  static ActivityPresentationOptions.ActivityPresentationDestination.defaultDestinations.getter();
  ActivityPresentationOptions.init(destinations:)();
  v26 = v63;
  v27 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  if (v26)
  {
    (*(v15 + 8))(v18, v60);

    v64 = v26;
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v28 = v57;
    v29 = v58;
    if (swift_dynamicCast())
    {

      v30 = v53;
      v31 = v54;
      (*(v53 + 32))(v54, v28, v29);
      v32 = v52;
      (*(v30 + 16))(v52, v31, v29);
      v33 = (*(v30 + 88))(v32, v29);
      if (v33 == enum case for ActivityAuthorizationError.globalMaximumExceeded(_:))
      {
        sub_10005A1D0();
        swift_allocError();
        *v34 = xmmword_1000AC280;
        swift_willThrow();
        (*(v30 + 8))(v31, v29);
      }

      else
      {
        v47 = v33;
        v48 = enum case for ActivityAuthorizationError.targetMaximumExceeded(_:);
        sub_10005A1D0();
        swift_allocError();
        v50 = (v30 + 8);
        if (v47 == v48)
        {
          *v49 = xmmword_1000AC270;
          swift_willThrow();
          (*v50)(v31, v29);
        }

        else
        {
          *v49 = 0;
          *(v49 + 8) = 0;
          swift_willThrow();
          v51 = *v50;
          (*v50)(v31, v29);
          v51(v32, v29);
        }
      }
    }

    else
    {

      sub_10005A1D0();
      swift_allocError();
      *v46 = 0;
      v46[1] = 0;
      swift_willThrow();
    }
  }

  else
  {
    v35 = v27;
    (*(v15 + 8))(v18, v60);

    v36 = v56;
    v37 = *(v56 + 104);

    sub_10004D1D8(v38);
    v39 = type metadata accessor for TaskPriority();
    sub_100008E2C(v55, 1, 1, v39);
    v40 = qword_1000DB9F0;

    if (v40 != -1)
    {
      swift_once();
    }

    v42 = qword_1000E6D00;
    v43 = sub_100059CC8(&qword_1000DDA50, v41, type metadata accessor for LiveActivityActor);
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = v43;
    v44[4] = v35;
    v44[5] = v36;

    sub_10004A77C();
  }
}

uint64_t sub_1000541E4(uint64_t a1)
{
  v1[2] = a1;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v1[3] = qword_1000E6D00;
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1000542D4;

  return sub_100051824();
}

uint64_t sub_1000542D4()
{
  sub_10001BF48();
  sub_10005B2C4();
  sub_10001BED0();
  *v4 = v3;
  v5 = *(v0 + 32);
  *v4 = *v2;
  *(v3 + 40) = v1;

  sub_10005B314();
  v7 = *(v6 + 24);
  if (v1)
  {
  }

  sub_10005B2F0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000543F8()
{
  **(v0 + 16) = *(v0 + 40) != 0;
  sub_10001BEDC();
  return v1();
}

uint64_t sub_10005442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_100003998(&qword_1000DDB10, &qword_1000AC5C0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = sub_100003998(&qword_1000DDB18, &qword_1000AC5C8);
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = sub_100003998(&qword_1000DDB20, &unk_1000AC5D0);
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1000E6D00;
  v5[15] = qword_1000E6D00;

  return _swift_task_switch(sub_10005462C, v16, 0);
}

uint64_t sub_10005462C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B21C();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  v1 = sub_10005AEA4();
  v2(v1);
  sub_10005AE08();
  *(v0 + 128) = sub_100059CC8(v3, v4, v5);
  v6 = enum case for ActivityState.ended(_:);
  *(v0 + 152) = enum case for ActivityState.active(_:);
  *(v0 + 156) = v6;
  v7 = enum case for ActivityState.stale(_:);
  *(v0 + 160) = enum case for ActivityState.dismissed(_:);
  *(v0 + 164) = v7;
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 136) = v9;
  *v9 = v10;
  sub_10005ADEC(v9);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v13);
}

uint64_t sub_100054760()
{
  sub_10001BF48();
  sub_10005B2C4();
  v3 = v0;
  sub_10001BE74();
  *v4 = v0;
  v5 = *(v0 + 136);
  *v4 = *v2;
  *(v0 + 144) = v1;

  sub_10005B314();
  v7 = *(v6 + 120);
  if (v1)
  {
    if (v7)
    {
      v8 = *(v3 + 128);
      v9 = *(v6 + 120);
      swift_getObjectType();
      sub_10005B404();
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v14 = sub_100054B04;
  }

  else
  {
    if (v7)
    {
      v12 = *(v3 + 128);
      v13 = *(v6 + 120);
      swift_getObjectType();
      sub_10005B404();
      sub_10005B2AC();
    }

    else
    {
      sub_10005B2E4();
    }

    v14 = sub_1000548B8;
  }

  return _swift_task_switch(v14, v11, v10);
}

uint64_t sub_1000548D0()
{
  sub_10005B2D0();
  sub_10001C524();
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = sub_10005B07C();
  if (sub_100008B84(v4, v5, v3) == 1)
  {
    v6 = sub_10005B1A8();
    v7(v6);

    sub_10001BEDC();
    sub_10001C74C();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = *(v0 + 152);
  v18 = sub_10005B108();
  v19(v18);
  v20 = *(v1 + 88);
  v21 = sub_10000AF64();
  v23 = v22(v21);
  if (v23 != v17)
  {
    if (v23 == *(v0 + 156) || v23 == *(v0 + 160))
    {
      v26 = *(*(v0 + 32) + 104);
      sub_10004D838(*(v0 + 24));
      goto LABEL_19;
    }

    if (v23 != *(v0 + 164))
    {
      if (qword_1000DBA38 != -1)
      {
        sub_10005AD5C();
      }

      v27 = type metadata accessor for Logger();
      sub_10005B0AC(v27, qword_1000E6D90);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (sub_10005B3BC(v29))
      {
        *swift_slowAlloc() = 0;
        sub_10005B37C(&_mh_execute_header, v30, v31, "Unused case, this could cause serious regressions!");
        sub_10000B008();
      }

      v33 = *(v0 + 48);
      v32 = *(v0 + 56);
      v34 = *(v0 + 40);

      v35 = *(v33 + 8);
      v36 = sub_10005B088();
      v37(v36);
      goto LABEL_19;
    }
  }

  v24 = *(*(v0 + 32) + 104);
  sub_10004D1D8(*(v0 + 24));
LABEL_19:
  sub_10005ADB0(&qword_1000DDB28, &qword_1000DDB20, &unk_1000AC5D0);
  v38 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100029D94();
  *(v0 + 136) = v39;
  *v39 = v40;
  sub_10005ADEC(v39);
  sub_10001C74C();

  return dispatch thunk of AsyncIteratorProtocol.next()(v41, v42, v43);
}

uint64_t sub_100054B04()
{
  sub_10001BEC4();
  *(v0 + 16) = *(v0 + 144);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10005B0C4();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100054B7C(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v7 + 256) = a2;
  *(v7 + 264) = v6;
  *(v7 + 595) = a6;
  *(v7 + 594) = a5;
  *(v7 + 593) = a4;
  *(v7 + 592) = a3;
  *(v7 + 248) = a1;
  v8 = type metadata accessor for SportsActivityAttributes();
  *(v7 + 272) = v8;
  v9 = *(v8 - 8);
  *(v7 + 280) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  v11 = type metadata accessor for LocalizedStringResource();
  *(v7 + 296) = v11;
  v12 = *(v11 - 8);
  *(v7 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v14 = *(*(sub_100003998(&qword_1000DDAB8, &qword_1000AC520) - 8) + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  v15 = *(*(sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0) - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v16 = *(*(type metadata accessor for SportsActivityContender() - 8) + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  v17 = type metadata accessor for SportsActivityContentState.EventInfoState();
  *(v7 + 376) = v17;
  v18 = *(v17 - 8);
  *(v7 + 384) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  v20 = *(*(sub_100003998(&qword_1000DDA70, &qword_1000AC4F0) - 8) + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  v21 = *(*(sub_100003998(&qword_1000DDA78, &qword_1000AC4F8) - 8) + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v22 = type metadata accessor for SportsActivityContentState();
  *(v7 + 416) = v22;
  v23 = *(v22 - 8);
  *(v7 + 424) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  v25 = *(*(sub_100003998(&qword_1000DDA80, &qword_1000AC500) - 8) + 64) + 15;
  *(v7 + 448) = swift_task_alloc();
  v26 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v7 + 456) = v26;
  v27 = *(v26 - 8);
  *(v7 + 464) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  v29 = type metadata accessor for URL();
  *(v7 + 496) = v29;
  v30 = *(v29 - 8);
  *(v7 + 504) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();
  v32 = type metadata accessor for Sport();
  *(v7 + 528) = v32;
  v33 = *(v32 - 8);
  *(v7 + 536) = v33;
  v34 = *(v33 + 64) + 15;
  *(v7 + 544) = swift_task_alloc();
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v35 = qword_1000E6D00;
  *(v7 + 552) = qword_1000E6D00;

  return _swift_task_switch(sub_100055060, v35, 0);
}

uint64_t sub_100055060()
{
  v178 = v0;
  if (*(v0 + 595))
  {
    sub_10005B048();
    sub_10005AFE0();

    sub_10001BE84();

    return v1();
  }

  else
  {
    v2 = *(v0 + 256);
    v3 = *(v0 + 264);
    v4 = *(v0 + 593);
    SportingEventSubscription.canonicalId.getter();
    sub_100052BD8();
    sub_10005AECC();
    sub_100091AD4(v5, v6, v7, v4);

    v8 = *(v3 + 96);
    if ((sub_100066914() & 1) == 0)
    {
      sub_10005AE4C();
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (qword_1000DB9F8 != -1)
    {
      sub_10005B01C();
    }

    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 256);
    v14 = *(v0 + 264);
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    sub_100049C24();
    v16 = v15;
    v17 = *(v10 + 8);
    v18 = sub_10005B03C();
    v19(v18);
    v20 = v14[6];
    sub_100008614(v14 + 2, v14[5]);
    sub_10005AECC();
    dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
    v21 = &unk_1000DB000;
    v173 = v16;
    if (v16)
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 248);
      *(v0 + 80) = *(v0 + 272);
      *(v0 + 88) = &off_1000D3BC8;
      sub_10003F5B0((v0 + 56));
      Activity.attributes.getter();
      if (*(v22 + 72) == 1)
      {
        v24 = *(v0 + 448);
        static SportsActivityAttributes.filteredPlayLevel.getter();
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v67 = *(v0 + 520);
      v68 = *(v0 + 480);
      v69 = *(v0 + 448);
      v70 = *(v0 + 594);
      v71 = *(v0 + 592);
      v72 = *(v0 + 256);
      v73 = type metadata accessor for SportingEventPlayLevel();
      sub_100008E2C(v69, v25, 1, v73);
      sub_10007CCA0(v72, v67, (v0 + 56), v69, v71, v70, 0, v68);
      v83 = *(v0 + 480);
      v84 = *(v0 + 488);
      v85 = *(v0 + 456);
      v86 = *(v0 + 464);
      sub_10001BB44(*(v0 + 448), &qword_1000DDA80, &qword_1000AC500);
      sub_100008A94((v0 + 56));
      v87 = *(v86 + 32);
      v88 = sub_10001C6B0();
      v89(v88);
    }

    else
    {
      v26 = *(v0 + 504);
      v27 = *(v0 + 512);
      v167 = *(v0 + 496);
      v169 = *(v0 + 520);
      v171 = *(v0 + 440);
      v164 = *(v0 + 400);
      v165 = *(v0 + 408);
      v28 = *(v0 + 384);
      v29 = *(v0 + 392);
      v31 = *(v0 + 368);
      v30 = *(v0 + 376);
      v32 = *(v0 + 360);
      v166 = *(v0 + 592);
      v163 = *(v0 + 256);
      type metadata accessor for SportsActivityClock();
      sub_100045E00();
      sub_100008E2C(v33, v34, v35, v36);
      type metadata accessor for SportsActivityPlay();
      sub_100045E00();
      sub_100008E2C(v37, v38, v39, v40);
      (*(v28 + 104))(v29, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v30);
      type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
      sub_10005AF3C();
      sub_100059CC8(v41, 255, v42);
      sub_10000AF64();
      Dictionary.init(dictionaryLiteral:)();
      sub_10005B150();
      sub_10000AF64();
      Dictionary.init(dictionaryLiteral:)();
      sub_10005B150();
      SportingEventSubscription.shouldDisplayPlayByPlay.getter();
      v44 = *(v26 + 16);
      v43 = (v26 + 16);
      v44(v27, v169, v167);
      sub_10005B320();
      SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)();
      if (qword_1000DBA38 != -1)
      {
        sub_10005AD5C();
      }

      v45 = *(v0 + 256);
      v46 = type metadata accessor for Logger();
      sub_10005B0AC(v46, qword_1000E6D90);
      v47 = v45;
      v48 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (sub_10005B3D4())
      {
        v49 = *(v0 + 256);
        v50 = sub_10001C4D0();
        v51 = sub_10003FC24();
        v177[0] = v51;
        *v50 = 136315138;
        v52 = SportingEventSubscription.canonicalId.getter();
        v43 = sub_1000170D4(v52, v53, v177);

        *(v50 + 4) = v43;
        sub_10005B00C();
        _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
        sub_100008A94(v51);
        sub_10005AFC4();
        sub_10000B008();
      }

      v59 = *(v0 + 256);
      (*(*(v0 + 424) + 16))(*(v0 + 432), *(v0 + 440), *(v0 + 416));
      v60 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
      v61 = *(v0 + 352);
      if (v62)
      {
        type metadata accessor for Date();
        sub_100045E00();
        sub_100008E2C(v63, v64, v65, v66);
      }

      else
      {
        v75 = *(v0 + 352);
        sub_10007FAD0(*&v60);
      }

      v76 = *(v0 + 488);
      v78 = *(v0 + 432);
      v77 = *(v0 + 440);
      v79 = *(v0 + 416);
      v80 = *(v0 + 424);
      v81 = *(v0 + 352);
      sub_10005AF0C();
      sub_100059CC8(v82, 255, v43);
      sub_10005AF98(&qword_1000DDA98);
      sub_10005AF6C(&qword_1000DDAA0);
      ActivityContent.init(state:staleDate:relevanceScore:)();
      (*(v80 + 8))(v77, v79);
      v21 = &unk_1000DB000;
    }

    v90 = *(v0 + 344);
    v91 = *(v0 + 592);
    v92 = type metadata accessor for AlertConfiguration();
    sub_100045E00();
    sub_100008E2C(v93, v94, v95, v92);
    if (v91 == 1)
    {
      if (v173)
      {
        v96 = *(v0 + 336);
        v97 = *(v0 + 248);
        v98 = *(v0 + 256);
        *(v0 + 40) = *(v0 + 272);
        *(v0 + 48) = &off_1000D3BC8;
        sub_10003F5B0((v0 + 16));
        Activity.attributes.getter();
        sub_10007E3F4();
        sub_100008A94((v0 + 16));
        v99 = (v0 + 336);
      }

      else
      {
        v100 = *(v0 + 328);
        v101 = *(v0 + 256);
        sub_10007EB70();
        v99 = (v0 + 328);
      }

      sub_100059A9C(*v99, *(v0 + 344));
      if (v21[327] != -1)
      {
        sub_10005AD5C();
      }

      v102 = type metadata accessor for Logger();
      sub_10005B0AC(v102, qword_1000E6D90);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = *(v0 + 344);
        v106 = swift_slowAlloc();
        v177[0] = sub_10005B3EC();
        *v106 = 136315394;
        swift_beginAccess();
        v107 = sub_10005B07C();
        if (sub_100008B84(v107, v108, v92))
        {
          swift_endAccess();
          v109 = 0;
          v110 = 0xE000000000000000;
        }

        else
        {
          v111 = *(v0 + 344);
          v113 = *(v0 + 304);
          v112 = *(v0 + 312);
          v174 = *(v0 + 296);
          AlertConfiguration.title.getter();
          swift_endAccess();
          v109 = LocalizedStringResource.key.getter();
          v110 = v114;
          (*(v113 + 8))(v112, v174);
          v21 = &unk_1000DB000;
        }

        v115 = *(v0 + 344);
        v116 = sub_1000170D4(v109, v110, v177);

        *(v106 + 4) = v116;
        *(v106 + 12) = 2080;
        swift_beginAccess();
        if (sub_100008B84(v115, 1, v92))
        {
          swift_endAccess();
          v117 = 0;
          v118 = 0xE000000000000000;
        }

        else
        {
          v119 = *(v0 + 344);
          v121 = *(v0 + 304);
          v120 = *(v0 + 312);
          v122 = *(v0 + 296);
          AlertConfiguration.body.getter();
          swift_endAccess();
          v117 = LocalizedStringResource.key.getter();
          v118 = v123;
          (*(v121 + 8))(v120, v122);
          v21 = &unk_1000DB000;
        }

        v124 = sub_1000170D4(v117, v118, v177);

        *(v106 + 14) = v124;
        _os_log_impl(&_mh_execute_header, v103, v104, "Alert Title: %s, Body: %s", v106, 0x16u);
        swift_arrayDestroy();
        sub_10005AED8();
        sub_10000B008();
      }
    }

    if (v21[327] != -1)
    {
      sub_10005AD5C();
    }

    v125 = *(v0 + 248);
    v126 = type metadata accessor for Logger();
    *(v0 + 560) = sub_10005B0AC(v126, qword_1000E6D90);

    v127 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_10005B3D4())
    {
      v172 = *(v0 + 488);
      v175 = *(v0 + 456);
      v128 = *(v0 + 280);
      v129 = *(v0 + 288);
      v170 = *(v0 + 272);
      v168 = *(v0 + 592);
      v130 = *(v0 + 248);
      v131 = swift_slowAlloc();
      v177[0] = sub_10005B3EC();
      *v131 = 136315906;
      v132 = Activity.id.getter();
      v134 = sub_1000170D4(v132, v133, v177);

      *(v131 + 4) = v134;
      *(v131 + 12) = 1024;
      *(v131 + 14) = v168;
      *(v131 + 18) = 2080;
      Activity.attributes.getter();
      v135 = SportsActivityAttributes.canonicalId.getter();
      v137 = v136;
      (*(v128 + 8))(v129, v170);
      v138 = sub_1000170D4(v135, v137, v177);

      *(v131 + 20) = v138;
      *(v131 + 28) = 2048;
      sub_10005B25C();
      ActivityContent.relevanceScore.getter();
      *(v131 + 30) = v139;
      sub_10005B00C();
      _os_log_impl(v140, v141, v142, v143, v144, 0x26u);
      swift_arrayDestroy();
      sub_10005AFC4();
      sub_10000B008();
    }

    v145 = *(v0 + 488);
    v147 = *(v0 + 464);
    v146 = *(v0 + 472);
    v148 = *(v0 + 456);
    v149 = *(v0 + 344);
    v150 = *(v0 + 320);
    sub_10005B25C();
    v151 = *(v147 + 16);
    v152 = sub_10005B17C();
    v153(v152);
    sub_10005B25C();
    v154 = sub_10001BFB0();
    sub_1000459F8(v154, v155, v156, v157);
    sub_10005B18C(&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
    v176 = v158;
    v159 = swift_task_alloc();
    *(v0 + 568) = v159;
    *v159 = v0;
    v159[1] = sub_100055E24;
    v160 = *(v0 + 320);
    v161 = *(v0 + 248);
    v162 = sub_10005B308(*(v0 + 472));

    return v176(v162);
  }
}

uint64_t sub_100055E24()
{
  sub_10001C524();
  sub_10001BF54();
  v2 = v1;
  sub_10001BED0();
  *v3 = v2;
  v5 = v4[71];
  v6 = v4[69];
  v7 = v4[59];
  v8 = v4[58];
  v9 = v4[57];
  v10 = v4[40];
  v11 = *v0;
  sub_10001BE74();
  *v12 = v11;

  sub_10001BB44(v10, &qword_1000DDAB8, &qword_1000AC520);
  *(v2 + 576) = *(v8 + 8);
  *(v2 + 584) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = sub_10005B03C();
  v14(v13);
  v15 = sub_10001BF60();

  return _swift_task_switch(v15, v16, v17);
}

void sub_100055FB4()
{
  v1 = v0[70];
  v2 = v0[31];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[72];
  v7 = v0[65];
  v9 = v0[62];
  v8 = v0[63];
  v10 = v0[61];
  v11 = v0[57];
  v32 = v0[43];
  if (v5)
  {
    v30 = v0[73];
    v12 = v0[31];
    v28 = v0[57];
    v13 = sub_10001C4D0();
    v26 = v6;
    v14 = sub_10003FC24();
    v34 = v14;
    *v13 = 136315138;
    v15 = Activity.id.getter();
    v24 = v10;
    v17 = sub_1000170D4(v15, v16, &v34);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updates complete for activity '%s'", v13, 0xCu);
    sub_100008A94(v14);
    sub_10000B008();
    sub_10000B008();

    (*(v8 + 8))(v7, v9);
    sub_10001BB44(v32, &qword_1000DDAB8, &qword_1000AC520);
    v26(v24, v28);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    sub_10001BB44(v32, &qword_1000DDAB8, &qword_1000AC520);
    v6(v10, v11);
  }

  sub_10005B048();
  v20 = v0[46];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[43];
  v25 = v0[42];
  v27 = v0[41];
  v29 = v0[40];
  v31 = v0[39];
  v33 = v0[36];

  sub_10001BE84();
  sub_10005B360();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10005625C()
{
  sub_10001BEC4();
  *(v1 + 323) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 322) = v4;
  *(v1 + 321) = v5;
  *(v1 + 320) = v6;
  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v9);
  v11 = *(v10 + 64);
  *(v1 + 88) = sub_100029D20();
  v12 = type metadata accessor for SportsActivityContender();
  sub_10001C3C4(v12);
  v14 = *(v13 + 64);
  *(v1 + 96) = sub_10005B294();
  *(v1 + 104) = swift_task_alloc();
  v15 = type metadata accessor for SportsActivityContentState.EventInfoState();
  *(v1 + 112) = v15;
  sub_10000AC84(v15);
  *(v1 + 120) = v16;
  v18 = *(v17 + 64);
  *(v1 + 128) = sub_100029D20();
  v19 = sub_100003998(&qword_1000DDA70, &qword_1000AC4F0);
  sub_10001C3C4(v19);
  v21 = *(v20 + 64);
  *(v1 + 136) = sub_100029D20();
  v22 = sub_100003998(&qword_1000DDA78, &qword_1000AC4F8);
  sub_10001C3C4(v22);
  v24 = *(v23 + 64);
  *(v1 + 144) = sub_100029D20();
  v25 = type metadata accessor for SportsActivityContentState();
  *(v1 + 152) = v25;
  sub_10000AC84(v25);
  *(v1 + 160) = v26;
  v28 = *(v27 + 64);
  *(v1 + 168) = sub_10005B294();
  *(v1 + 176) = swift_task_alloc();
  v29 = sub_100003998(&qword_1000DDA80, &qword_1000AC500);
  sub_10001C3C4(v29);
  v31 = *(v30 + 64);
  *(v1 + 184) = sub_100029D20();
  v32 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v1 + 192) = v32;
  sub_10000AC84(v32);
  *(v1 + 200) = v33;
  v35 = *(v34 + 64);
  *(v1 + 208) = sub_10005B294();
  *(v1 + 216) = swift_task_alloc();
  v36 = type metadata accessor for URL();
  *(v1 + 224) = v36;
  sub_10000AC84(v36);
  *(v1 + 232) = v37;
  v39 = *(v38 + 64);
  *(v1 + 240) = sub_10005B294();
  *(v1 + 248) = swift_task_alloc();
  v40 = type metadata accessor for Sport();
  *(v1 + 256) = v40;
  sub_10000AC84(v40);
  *(v1 + 264) = v41;
  v43 = *(v42 + 64);
  *(v1 + 272) = sub_100029D20();
  v44 = sub_100029C4C();

  return _swift_task_switch(v44, v45, v46);
}

uint64_t sub_100056550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  if (*(v16 + 322))
  {
    sub_10005AE28();
    sub_10005B240();

    sub_10001BE84();
    sub_100029DAC();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    if (qword_1000DB9F0 != -1)
    {
      sub_10005AD48();
      swift_once();
    }

    *(v16 + 280) = qword_1000E6D00;
    sub_100029DAC();

    return _swift_task_switch(v26, v27, v28);
  }
}

uint64_t sub_10005668C()
{
  v1 = v0[35];
  v0[36] = *(v0[10] + 104);
  return sub_10005AE20(sub_1000566B0, v1);
}

uint64_t sub_1000566B0()
{
  sub_10001BEC4();
  v1 = v0[36];
  v2 = v0[7];
  v3 = v0[8];
  v0[37] = sub_10004E6F4();
  v4 = sub_100029C4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100056714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100029DC8();
  if (*(v16 + 296))
  {
    v17 = *(*(v16 + 80) + 96);
    if (sub_100066914())
    {
      v18 = 1;
    }

    else
    {
      sub_10005AE4C();
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    *(v16 + 324) = v18 & 1;

    sub_100029C4C();
    sub_100029DAC();

    return _swift_task_switch(v28, v29, v30);
  }

  else
  {
    sub_10005AE28();
    sub_10005B240();

    sub_10001BE84();
    sub_100029DAC();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_100056850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100029DC8();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 324);
  v28 = *(v24 + 80);
  v30 = *(v24 + 56);
  v29 = *(v24 + 64);
  v31 = v28[6];
  sub_100008614(v28 + 2, v28[5]);
  sub_10000AF64();
  v32 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  *(v24 + 304) = v32;
  if (v32)
  {
    sub_100052BD8();

    if (qword_1000DB9F8 != -1)
    {
      sub_10005B01C();
    }

    v34 = *(v24 + 264);
    v33 = *(v24 + 272);
    v35 = *(v24 + 256);
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    sub_100049C24();
    *(v24 + 325) = v36 & 1;
    v37 = *(v34 + 8);
    v38 = sub_10005B088();
    v39(v38);
    sub_100029C4C();
    sub_100029DAC();

    return _swift_task_switch(v40, v41, v42);
  }

  else
  {
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v44 = *(v24 + 64);
    v45 = type metadata accessor for Logger();
    sub_10005B0AC(v45, qword_1000E6D90);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v24 + 296);
    if (v48)
    {
      v51 = *(v24 + 56);
      v50 = *(v24 + 64);
      v52 = sub_10001C4D0();
      v53 = sub_10003FC24();
      a13 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1000170D4(v51, v50, &a13);
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not find a subscription when destroying live activity: %s", v52, 0xCu);
      sub_100008A94(v53);
      sub_10000B008();
      sub_10005AED8();
    }

    else
    {
    }

    sub_10005AE28();
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v69 = *(v24 + 88);

    sub_10001BE84();
    sub_100029DAC();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v68, v69, a13, a14, a15, a16);
  }
}

uint64_t sub_100056B04()
{
  v99 = v0;
  v1 = *(v0 + 325);
  v2 = *(v0 + 324);
  v3 = *(v0 + 248);
  v4 = *(v0 + 80);
  v5 = v4[6];
  sub_100008614(v4 + 2, v4[5]);
  sub_10005AECC();
  dispatch thunk of PersistentStorable.subscriptionsStoreURL(isConventionalOrUnified:)();
  if (v1 == 1)
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 248);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 321);
    v11 = *(v0 + 320);
    *(v0 + 40) = type metadata accessor for SportsActivityAttributes();
    *(v0 + 48) = &off_1000D3BC8;
    sub_10003F5B0((v0 + 16));
    Activity.attributes.getter();
    v12 = enum case for SportingEventPlayLevel.session(_:);
    v13 = type metadata accessor for SportingEventPlayLevel();
    sub_10001C2AC(v13);
    (*(v14 + 104))(v9, v12, v13);
    sub_10005B354();
    sub_100008E2C(v15, v16, v17, v13);
    v18 = sub_10005B088();
    sub_10007CCA0(v18, v19, v20, v9, v11, v10, 0, v21);
    v73 = *(v0 + 208);
    v72 = *(v0 + 216);
    v74 = *(v0 + 192);
    v75 = *(v0 + 200);
    sub_10001BB44(*(v0 + 184), &qword_1000DDA80, &qword_1000AC500);
    sub_100008A94((v0 + 16));
    v76 = *(v75 + 32);
    sub_10005AECC();
    v77();
  }

  else
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 232);
    v95 = *(v0 + 224);
    v96 = *(v0 + 248);
    v97 = *(v0 + 176);
    v24 = *(v0 + 136);
    v92 = *(v0 + 304);
    v93 = *(v0 + 144);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v91 = *(v0 + 96);
    v94 = *(v0 + 320);
    type metadata accessor for SportsActivityClock();
    sub_100045E00();
    sub_100008E2C(v29, v30, v31, v32);
    type metadata accessor for SportsActivityPlay();
    sub_100045E00();
    sub_100008E2C(v33, v34, v35, v36);
    (*(v25 + 104))(v26, enum case for SportsActivityContentState.EventInfoState.preGame(_:), v27);
    type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
    sub_10005AF3C();
    sub_100059CC8(v37, 255, v38);
    sub_10005B17C();
    Dictionary.init(dictionaryLiteral:)();
    sub_10005B150();
    sub_10005B17C();
    Dictionary.init(dictionaryLiteral:)();
    sub_10005B150();
    SportingEventSubscription.shouldDisplayPlayByPlay.getter();
    (*(v23 + 16))(v22, v96, v95);
    sub_10005B320();
    SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)();
    if (qword_1000DBA38 != -1)
    {
      sub_10005AD5C();
    }

    v39 = *(v0 + 304);
    v40 = type metadata accessor for Logger();
    sub_10005B0AC(v40, qword_1000E6D90);
    v41 = v39;
    v42 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_10005B3D4())
    {
      v43 = *(v0 + 304);
      v44 = sub_10001C4D0();
      v45 = sub_10003FC24();
      v98 = v45;
      *v44 = 136315138;
      v46 = SportingEventSubscription.canonicalId.getter();
      v28 = sub_1000170D4(v46, v47, &v98);

      *(v44 + 4) = v28;
      sub_10005B00C();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      sub_100008A94(v45);
      sub_10005AFC4();
      sub_10000B008();
    }

    v53 = *(v0 + 304);
    (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 176), *(v0 + 152));
    v54 = SportingEventSubscription.heartbeatSessionsTTLSeconds.getter();
    v55 = *(v0 + 88);
    if (v56)
    {
      type metadata accessor for Date();
      sub_100045E00();
      sub_100008E2C(v57, v58, v59, v60);
    }

    else
    {
      v61 = *(v0 + 88);
      sub_10007FAD0(*&v54);
    }

    v62 = *(v0 + 216);
    v64 = *(v0 + 168);
    v63 = *(v0 + 176);
    v65 = *(v0 + 152);
    v66 = *(v0 + 160);
    v67 = *(v0 + 88);
    sub_10005AF0C();
    sub_100059CC8(v68, 255, v28);
    sub_10005AF98(&qword_1000DDA98);
    sub_10005AF6C(&qword_1000DDAA0);
    sub_10001BFB0();
    ActivityContent.init(state:staleDate:relevanceScore:)();
    v69 = *(v66 + 8);
    v70 = sub_10001C6B0();
    v71(v70);
  }

  v78 = *(v0 + 323);
  v79 = swift_task_alloc();
  *(v0 + 312) = v79;
  *v79 = v0;
  v79[1] = sub_100057130;
  v80 = *(v0 + 288);
  v81 = *(v0 + 216);
  v82 = *(v0 + 64);
  v83 = *(v0 + 72);
  sub_10005B308(*(v0 + 56));
  sub_10005B360();

  return sub_10004E78C(v84, v85, v86, v87, v88);
}

uint64_t sub_100057130()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 312);
  *v2 = *v0;
  *(v1 + 326) = v5;

  v6 = sub_100029C4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005721C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  if (*(v0 + 326) == 1)
  {

    v9 = *(v8 + 8);
    v10 = sub_10005B2B8();
    v11(v10);
    (*(v4 + 8))(v3, v5);
    sub_10005AE28();
    v31 = *(v0 + 88);

    sub_10001BE84();
  }

  else
  {
    sub_100045BF8();
    swift_allocError();
    *v13 = xmmword_1000AC290;
    swift_willThrow();

    v14 = *(v8 + 8);
    v15 = sub_10005B2B8();
    v16(v15);
    (*(v4 + 8))(v3, v5);
    v17 = *(v0 + 272);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = *(v0 + 128);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    sub_10005B240();

    sub_10001BEDC();
  }

  return v12();
}

void sub_100057468()
{
  sub_10000AE68();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v9);
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v13, v14, v15, v16);
  v17 = qword_1000DB9F0;

  if (v17 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  v18 = qword_1000E6D00;
  sub_10005AE08();
  v22 = sub_100059CC8(v19, v20, v21);
  sub_10005B19C();
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v22;
  v23[4] = v4;
  v23[5] = v2;
  v23[6] = v0;
  v23[7] = v8;
  v23[8] = v6;

  sub_100045DBC();
  sub_10004A77C();

  sub_10000AE50();
}

uint64_t sub_1000575C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v9 = qword_1000E6D00;

  return _swift_task_switch(sub_100057660, v9, 0);
}

uint64_t sub_100057660()
{
  sub_10001BF48();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_100052954();
  v5(v6);
  sub_10001BEDC();

  return v7();
}

uint64_t sub_1000576D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v96 = *(v8 - 8);
  v9 = *(v96 + 64);
  __chkstk_darwin(v8);
  v84 = v72 - v10;
  v94 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v94);
  v93 = v72 - v13;
  v75 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v14 = *(v75 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v75);
  v74 = v72 - v16;
  v17 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v92 = v72 - v19;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v20 = *(*(ActivityOperation - 8) + 64);
  __chkstk_darwin(ActivityOperation);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *(*a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  if (v24)
  {
    v72[1] = a4;
    v100 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v26 = a3;
    v27 = 0;
    v95 = v23 + 32;
    v91 = (v96 + 8);
    v90 = (v11 + 8);
    v79 = v26 & 1;
    v28 = 0xE300000000000000;
    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    v78 = v28;
    v77 = 0x80000001000B0480;
    v76 = v22 + 392;
    v73 = (v14 + 8);
    v29 = (a2 + 56);
    v82 = v26;
    v80 = v8;
    v30 = v84;
    v96 = v24;
    v81 = a2;
    do
    {
      if (*(v95 + v27) == 1 && v27 < *(a2 + 16))
      {
        v31 = *(v29 - 2);
        v88 = *(v29 - 3);
        v33 = *(v29 - 1);
        v32 = *v29;
        v34 = qword_1000DB9C0;
        v89 = v31;

        if (v34 != -1)
        {
          swift_once();
        }

        sub_10000BC30(qword_1000E6CC8 + 24, v98);
        v35 = type metadata accessor for Date();
        sub_100008E2C(v92, 1, 1, v35);
        sub_10000BC30(v98, v22);
        sub_10006F7C0(v22 + 23);
        if (qword_1000DB9B8 != -1)
        {
          swift_once();
        }

        v36 = qword_1000E6CC0;
        *(v22 + 31) = type metadata accessor for BagProvider();
        *(v22 + 32) = &off_1000D0860;
        *(v22 + 28) = v36;
        v37 = type metadata accessor for AccountManager();
        v38 = swift_allocObject();
        *(v22 + 36) = v37;
        *(v22 + 37) = &off_1000D0550;
        *(v22 + 33) = v38;
        v39 = v98[5];
        sub_10000BC8C(v99, (v22 + 312));
        if (v82)
        {
          v40 = 0;
        }

        else
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
        }

        v45 = ActivityOperation;
        sub_1000459F8(v92, &v22[*(ActivityOperation + 48)], &qword_1000DC5A0, &unk_1000AB0E0);
        *(v22 + 38) = v39;
        v22[352] = v40 & 1;
        *(v22 + 45) = 0;
        *(v22 + 46) = 0;
        *(v22 + 47) = 0;
        *(v22 + 48) = 1;
        v46 = v76;
        *v76 = 0u;
        v46[1] = 0u;
        v46[2] = 0u;
        v46[3] = 0u;
        v46[4] = 0u;
        *(v22 + 60) = 0;
        *(v22 + 61) = 0;
        *(v22 + 59) = 1;
        v22[496] = 0;
        v47 = &v22[v45[13]];
        *v47 = 0xD000000000000011;
        *(v47 + 1) = v77;
        v48 = &v22[v45[14]];
        v87 = v33;
        *v48 = v33;
        v48[1] = v32;
        v49 = &v22[v45[15]];
        v50 = v89;
        *v49 = v88;
        *(v49 + 1) = v50;
        v22[v45[16]] = v79;
        v88 = v45[17];
        v51 = type metadata accessor for ActivityAuthorization();
        v52 = objc_allocWithZone(v51);

        v53 = [v52 init];
        v86 = sub_1000499E0();
        v85 = v54;
        v97[4] = &off_1000D1900;
        v97[3] = v51;
        v97[0] = v53;
        type metadata accessor for ActivityCapUtility();
        v55 = swift_allocObject();
        v56 = sub_10000B90C(v97, v51);
        v57 = *(*(v51 - 1) + 64);
        v58 = __chkstk_darwin(v56);
        v60 = (v72 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v61 + 16))(v60, v58);
        v62 = *v60;
        v55[5] = v51;
        v55[6] = &off_1000D1900;
        v55[2] = v62;
        v63 = v85;
        v55[7] = v86;
        v55[8] = v63;
        sub_100008A94(v97);

        sub_10001BB44(v92, &qword_1000DC5A0, &unk_1000AB0E0);
        sub_10000BCF0(v98);
        *&v22[v88] = v55;
        if (qword_1000DBA00 != -1)
        {
          swift_once();
        }

        v64 = v87;
        v65 = sub_10004F60C(v87, v32);
        a2 = v81;
        v8 = v80;
        v30 = v84;
        v44 = v96;
        if (v65)
        {
          sub_10008CEC0();
        }

        else
        {
          sub_100045BF8();
          v66 = swift_allocError();
          *v67 = v64;
          v67[1] = v32;
          v98[0] = v66;

          sub_100003998(&qword_1000DC470, &qword_1000AA620);
          v68 = v74;
          Fail.init(error:)();
          sub_10005A6D8(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
          v69 = v75;
          Publisher.eraseToAnyPublisher()();
          (*v73)(v68, v69);
        }

        sub_10005A71C(v22);
      }

      else
      {
        LOBYTE(v98[0]) = 0;
        Just.init(_:)();
        sub_100003998(&qword_1000DC470, &qword_1000AA620);
        v41 = v93;
        Just.setFailureType<A>(to:)();
        (*v91)(v30, v8);
        sub_10005A6D8(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00);
        v42 = v94;
        Publisher.eraseToAnyPublisher()();
        v43 = v41;
        v44 = v96;
        (*v90)(v43, v42);
      }

      ++v27;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = v100[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v29 += 4;
    }

    while (v44 != v27);
    v25 = v100;
  }

  v98[0] = v25;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_100003998(&qword_1000DDB58, &unk_1000AC650);
  sub_10005A6D8(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  sub_10005A6D8(&qword_1000DDB60, &qword_1000DDB58, &unk_1000AC650);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t sub_100058748()
{
  sub_10001BEC4();
  *(v1 + 137) = v2;
  *(v1 + 136) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = type metadata accessor for SportsActivityContentState();
  *(v1 + 32) = v5;
  sub_10000AC84(v5);
  *(v1 + 40) = v6;
  v8 = *(v7 + 64);
  *(v1 + 48) = sub_100029D20();
  v9 = sub_100003998(&qword_1000DDA88, &qword_1000AC508);
  *(v1 + 56) = v9;
  sub_10000AC84(v9);
  *(v1 + 64) = v10;
  v12 = *(v11 + 64);
  *(v1 + 72) = sub_100029D20();
  v13 = sub_100029C4C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10005884C()
{
  sub_10001BEC4();
  if (qword_1000DB9F0 != -1)
  {
    sub_10005AD48();
    swift_once();
  }

  v1 = qword_1000E6D00;
  *(v0 + 80) = qword_1000E6D00;

  return _swift_task_switch(sub_1000588D4, v1, 0);
}

uint64_t sub_1000588F8()
{
  sub_10001BEC4();
  v1 = v0[10];
  v2 = v0[2];
  v0[12] = SportingEventSubscription.canonicalId.getter();
  v0[13] = v3;
  sub_10005B2F0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100058960()
{
  sub_10001BEC4();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v0[14] = sub_10004E6F4();

  v4 = sub_100029C4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000589D0()
{
  if (*(v0 + 112))
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    dispatch thunk of Activity.content.getter();
    ActivityContent.state.getter();
    v7 = *(v2 + 8);
    v8 = sub_10005B088();
    v9(v8);
    SportsActivityContentState.isWaitingForUserConsent.getter();
    v10 = *(v6 + 8);
    v11 = sub_10001BFB0();
    v12(v11);
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_100058B30;
    v14 = *(v0 + 137);
    v15 = *(v0 + 136);
    v16 = *(v0 + 24);
    sub_10005B308(*(v0 + 16));

    return sub_100051824();
  }

  else
  {
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);

    sub_10001BE84();

    return v20();
  }
}

uint64_t sub_100058B30()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10001BE74();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_10001C740();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100058C2C()
{
  sub_10001BEC4();
  v1 = v0[14];

  v2 = v0[9];
  v3 = v0[6];

  sub_10001BE84();

  return v4();
}

uint64_t sub_100058C98()
{
  sub_10001BEC4();
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];

  sub_10001BEDC();
  v5 = v0[16];

  return v4();
}

uint64_t sub_100058D0C()
{
  sub_10005B1F8();
  v2 = *(v0 + 16);

  sub_10004A374(v3);
  sub_10001C1DC();

  return v1;
}

id sub_100058D5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_100058E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_100058EA4()
{
  sub_10001BF48();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  v5 = sub_10005ADD4(v3);

  return sub_10004FCF4(v5, v6, v7, v1);
}

uint64_t sub_100058F38(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = Array.description.getter();

  return v1;
}

uint64_t sub_100058FA0()
{
  sub_10001BF48();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_10003FBF8(v4);
  *v5 = v6;
  v5[1] = sub_10005908C;

  return v8(v1);
}

uint64_t sub_10005908C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  sub_10001BE84();

  return v5();
}

uint64_t sub_10005916C()
{
  sub_10001BF48();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003FBF8(v2);
  *v3 = v4;
  v5 = sub_10005ADD4(v3);

  return sub_100050358(v5, v6, v7, v1);
}

uint64_t sub_100059208()
{
  sub_10001C524();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = sub_10003FBF8(v4);
  *v5 = v6;
  sub_10005ADD4(v5);
  sub_10005B348();

  return sub_100051318(v7, v8, v9, v10, v11, v3);
}

uint64_t sub_1000592AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  sub_10005B2FC();
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100059438()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for MetricsFieldExclusionRequest();
  v3 = sub_10000AC48(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v34 - v10;
  if (*(v1 + 16) && (sub_100003998(&qword_1000DDAD8, &unk_1000AC560), sub_10005B2FC(), v11 = static _SetStorage.allocate(capacity:)(), v12 = v11, (v38 = *(v1 + 16)) != 0))
  {
    v13 = 0;
    v42 = v11 + 56;
    v14 = *(v39 + 80);
    v36 = v1;
    v37 = v1 + ((v14 + 32) & ~v14);
    v41 = v39 + 16;
    v15 = (v39 + 8);
    v35 = (v39 + 32);
    while (v13 < *(v1 + 16))
    {
      v16 = *(v39 + 72);
      v40 = v13 + 1;
      v17 = *(v39 + 16);
      v17(v43, v37 + v16 * v13, v2);
      v18 = *(v12 + 40);
      sub_10005AEF4();
      sub_100059CC8(&qword_1000DDAE0, 255, v19);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v42 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v12;
        v17(v8, *(v12 + 48) + v22 * v16, v2);
        sub_10005AEF4();
        sub_100059CC8(&qword_1000DDAE8, 255, v27);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *v15;
        (*v15)(v8, v2);
        if (v28)
        {
          v29(v43, v2);
          v12 = v26;
          goto LABEL_12;
        }

        v20 = v22 + 1;
        v12 = v26;
      }

      v30 = v43;
      *(v42 + 8 * v23) = v25 | v24;
      (*v35)(*(v12 + 48) + v22 * v16, v30, v2);
      v31 = *(v12 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v12 + 16) = v33;
LABEL_12:
      v13 = v40;
      v1 = v36;
      if (v40 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10000AE50();
  }
}

void *sub_100059744(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100003998(&qword_1000DDAD0, &qword_1000AC550);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2;
    v26 = *(v1 + 16);
    if (v26)
    {
      v4 = 0;
      v5 = v2 + 56;
      v24 = v1;
      v25 = v1 + 32;
      do
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          JUMPOUT(0x100059A6CLL);
        }

        v6 = *(v25 + v4);
        v27 = v4 + 1;
        v7 = v3[5];
        Hasher.init(_seed:)();
        String.hash(into:)();

        v8 = Hasher._finalize()();
        v9 = ~(-1 << *(v3 + 32));
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) != 0)
        {
          while (1)
          {
            v14 = 0xEC00000076742E65;
            v15 = 0x6C7070612E6D6F63;
            switch(*(v3[6] + v10))
            {
              case 1:
                v15 = 0xD000000000000010;
                v14 = 0x80000001000B03E0;
                break;
              case 2:
                v15 = 0xD000000000000011;
                v14 = 0x80000001000B0400;
                break;
              case 3:
                break;
              default:
                v15 = 0xD000000000000010;
                v14 = 0x80000001000B03C0;
                break;
            }

            v16 = 0x6C7070612E6D6F63;
            v17 = 0xEC00000076742E65;
            switch(v6)
            {
              case 1:
                v16 = 0xD000000000000010;
                v17 = 0x80000001000B03E0;
                break;
              case 2:
                v16 = 0xD000000000000011;
                v17 = 0x80000001000B0400;
                break;
              case 3:
                break;
              default:
                v16 = 0xD000000000000010;
                v17 = 0x80000001000B03C0;
                break;
            }

            if (v15 == v16 && v14 == v17)
            {
              break;
            }

            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_23;
            }

            v10 = (v10 + 1) & v9;
            v11 = v10 >> 6;
            v12 = *(v5 + 8 * (v10 >> 6));
            v13 = 1 << v10;
            if ((v12 & (1 << v10)) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          *(v5 + 8 * v11) = v12 | v13;
          *(v3[6] + v10) = v6;
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_28;
          }

          v3[2] = v22;
        }

LABEL_23:
        v4 = v27;
        v1 = v24;
      }

      while (v27 != v26);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_100059A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DDAB8, &qword_1000AC520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100059B0C()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_100059B9C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059BE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_10001C6B0();

  return _swift_deallocObject(v3, v4, 7);
}

uint64_t sub_100059C2C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  sub_10005ADD4(v4);
  sub_10001C74C();

  return sub_100050284(v6, v7, v8, v9, v10);
}

uint64_t sub_100059CC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_10005B2FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059D0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100059D54()
{
  sub_10001C524();
  sub_10005B094();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = sub_10003FBF8(v4);
  *v5 = v6;
  sub_10005ADD4(v5);
  sub_10005B348();

  return sub_1000541E4(v7);
}

uint64_t sub_100059DF8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100059F54(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10005A048;

  return v6(v2 + 32);
}

uint64_t sub_10005A048()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = v1;
  sub_10001BED0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_10001BE74();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_10001BE84();

  return v9();
}

uint64_t sub_10005A140()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

unint64_t sub_10005A1D0()
{
  result = qword_1000DDB08;
  if (!qword_1000DDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB08);
  }

  return result;
}

uint64_t sub_10005A22C()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  sub_10005ADD4(v4);
  sub_10001C74C();

  return sub_10005442C(v6, v7, v8, v9, v10);
}

uint64_t sub_10005A2C4()
{
  v1 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005A300()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005A344()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = sub_10001C6B0();

  return _swift_deallocObject(v4, v5, 7);
}

uint64_t sub_10005A394()
{
  sub_10005B2D0();
  sub_10001C524();
  sub_10005B094();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  sub_10005ADD4(v4);
  sub_10001C74C();

  return sub_10004C9C4(v6, v7, v8, v9, v10);
}

uint64_t sub_10005A42C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  sub_10005B19C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10005A478()
{
  sub_10005B094();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = sub_10003FBF8(v6);
  *v7 = v8;
  sub_10005ADD4(v7);
  sub_10005B348();

  return sub_1000575C0(v9, v10, v11, v12, v13, v3, v4, v5);
}

uint64_t sub_10005A534()
{
  v1 = *(v0 + 24);

  sub_10005B070();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005A568()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_10005A5F8()
{
  sub_10001BF48();
  sub_10005B0A0();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_10005A688()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005A6D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    sub_10005B2FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005A71C(uint64_t a1)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  (*(*(ActivityOperation - 8) + 8))(a1, ActivityOperation);
  return a1;
}

uint64_t getEnumTagSinglePayload for LiveActivityTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LiveActivityTarget(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10005A8CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveActivityUpdateLimit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10005A9D0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005AA0C()
{
  result = qword_1000DDB88;
  if (!qword_1000DDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB88);
  }

  return result;
}

unint64_t sub_10005AA64()
{
  result = qword_1000DDB90;
  if (!qword_1000DDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDB90);
  }

  return result;
}

uint64_t type metadata accessor for SportsActivityManagedContext()
{
  result = qword_1000DDBF0;
  if (!qword_1000DDBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005AB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityManagedContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10005AC18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005AC98()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005AD5C()
{

  return swift_once();
}

uint64_t sub_10005AD7C(uint64_t a1)
{
  *(a1 + 8) = sub_10004CC80;
  v2 = v1[14];
  v3 = v1[12];
  return v1[8];
}

uint64_t sub_10005ADB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10005A6D8(a1, a2, a3);
}

uint64_t sub_10005ADEC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[14];
  v4 = v2[12];
  return v2[8];
}

uint64_t sub_10005AE28()
{
  result = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];
  return result;
}

uint64_t sub_10005AE70(uint64_t a1)
{
  *(a1 + 8) = sub_100050644;
  v2 = v1[13];
  v3 = v1[11];
  return v1[7];
}

uint64_t sub_10005AED8()
{
}

uint64_t sub_10005AF6C(unint64_t *a1)
{

  return sub_100059CC8(a1, 255, v1);
}

uint64_t sub_10005AF98(unint64_t *a1)
{

  return sub_100059CC8(a1, 255, v1);
}

uint64_t sub_10005AFC4()
{
}

void sub_10005AFE0()
{
  v3 = v0[46];
  v4 = v0[45];
  v5 = v0[44];
  v6 = v0[43];
  v7 = v0[42];
  v8 = v0[41];
  v9 = v0[40];
  v2 = v0[36];
  *(v1 - 112) = v0[39];
  *(v1 - 104) = v2;
}

uint64_t sub_10005B01C()
{

  return swift_once();
}

uint64_t sub_10005B048()
{
  result = v0[68];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  v10 = v0[50];
  v11 = v0[51];
  v12 = v0[49];
  return result;
}

uint64_t sub_10005B0C4()
{

  return swift_dynamicCast();
}

uint64_t sub_10005B124@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1000459F8(v2, &a2 - a1, v3, v4);
}

uint64_t sub_10005B150()
{

  return SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)();
}

uint64_t sub_10005B18C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_10005B1A8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = *(v0[13] + 8);
  return v0[14];
}

uint64_t sub_10005B1F8()
{
  v2 = *(v0 + 104);

  return swift_beginAccess();
}

uint64_t sub_10005B21C()
{
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[3];

  return dispatch thunk of Activity.activityStateUpdates.getter();
}

uint64_t sub_10005B240()
{
  v3 = *(v0 + 88);
}

uint64_t sub_10005B25C()
{

  return swift_beginAccess();
}

uint64_t sub_10005B294()
{

  return swift_task_alloc();
}

void sub_10005B37C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10005B39C(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

BOOL sub_10005B3BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10005B3D4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10005B3EC()
{

  return swift_slowAlloc();
}

uint64_t sub_10005B404()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10005B41C(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_1000261E8(v28, &qword_1000DBD08, &qword_1000AA690))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_100032628(*(a1 + 56) + 32 * v12, v55 + 8);
    LOBYTE(v55[0]) = v13;
    v52 = v55[0];
    v53 = v55[1];
    v54 = v56;
    sub_100032628(&v52 + 8, &v34);
    if (v36)
    {
      sub_100008EA8(&v34, &v49);
      v45 = v52;
      v46 = v53;
      v47 = v54;
      sub_100008EA8(&v49, &v42);
      v20 = v2[2];
      if (v2[3] <= v20)
      {
        sub_1000A1D80(v20 + 1, 1, v14, v15, v16, v17, v18, v19, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, v49, *(&v49 + 1), v50, v51, v52, *(&v52 + 1));
      }

      v2 = v57;
      v21 = v45;
      v22 = v57[5];
      Hasher.init(_seed:)();
      sub_100083914(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = (v2 + 8);
      v24 = -1 << *(v2 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~v2[(v25 >> 6) + 8]) == 0)
      {
        v29 = 0;
        v30 = (63 - v24) >> 6;
        while (++v26 != v30 || (v29 & 1) == 0)
        {
          v31 = v26 == v30;
          if (v26 == v30)
          {
            v26 = 0;
          }

          v29 |= v31;
          v32 = *&v23[8 * v26];
          if (v32 != -1)
          {
            v27 = __clz(__rbit64(~v32)) + (v26 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~v2[(v25 >> 6) + 8])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      *(v2[6] + v27) = v21;
      sub_100008EA8(&v42, (v2[7] + 32 * v27));
      ++v2[2];
      v28 = &v45 + 8;
    }

    else
    {
      sub_1000261E8(&v52, &qword_1000DD030, &unk_1000AC840);
      v28 = &v34;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005B6D4()
{
  v2 = v1;
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  v4 = sub_10005D7A8(FullApsMessageOperation);
  v59 = v5;
  v58 = *(v6 + 64);
  __chkstk_darwin(v4);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  sub_10000BD44();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v61 = sub_100003998(&qword_1000DDC28, &qword_1000AC800);
  sub_10000BD44();
  v64 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v56 = &v54 - v21;
  sub_100003998(&qword_1000DDC30, &qword_1000AC808);
  sub_10000BD44();
  v62 = v22;
  v63 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v60 = &v54 - v26;
  v27 = sub_100008614((v1 + 8), *(v1 + 32));
  v28 = (v1 + *(v0 + 44));
  v29 = *v28;
  v30 = v28[1];
  v31 = v1 + *(v0 + 36);
  v32 = v16;
  v55 = v16;
  URL.appendingPathComponent(_:)();
  v33 = sub_10005BCA0();
  v54 = sub_100008614(v27, v27[3]);
  v34 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  (*(v10 + 16))(v34, v32, v8);
  v36 = sub_1000698CC();
  v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v38 = (v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v39 + v37;
  v41 = v35;
  (*(v10 + 32))(v40, v34, v35);
  *(v39 + v38) = v36;
  v42 = v27[5];

  v43 = sub_10005CDFC(sub_10005BF74, v39, v33, 0, v42, v54);
  swift_bridgeObjectRelease_n();

  (*(v10 + 8))(v55, v41);
  v65 = v43;
  v44 = v57;
  sub_10005D14C(v2, v57);
  v45 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v46 = swift_allocObject();
  sub_10005D1B4(v44, v46 + v45);
  sub_100003998(&qword_1000DDC38, &qword_1000AC810);
  sub_10000A6FC(&qword_1000DDC40, &qword_1000DDC38, &qword_1000AC810);
  v47 = v56;
  Publisher.catch<A>(_:)();

  sub_10005D14C(v2, v44);
  v48 = swift_allocObject();
  sub_10005D1B4(v44, v48 + v45);
  sub_10000A6FC(&qword_1000DDC48, &qword_1000DDC28, &qword_1000AC800);
  v50 = v60;
  v49 = v61;
  Publisher.tryMap<A>(_:)();

  (*(v64 + 8))(v47, v49);
  sub_10000A6FC(&qword_1000DDC50, &qword_1000DDC30, &qword_1000AC808);
  v51 = v62;
  v52 = Publisher.eraseToAnyPublisher()();
  (*(v63 + 8))(v50, v51);
  return v52;
}

uint64_t type metadata accessor for SubscriptionFetchFullApsMessageOperation()
{
  result = qword_1000DDCE0;
  if (!qword_1000DDCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005BCA0()
{
  v1 = v0;
  v20 = type metadata accessor for Date();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v1[6];
  v8 = v1[7];
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  v10 = *(v1 + *(FullApsMessageOperation + 32));
  v11 = v6[6];
  sub_100008614(v6 + 2, v6[5]);
  v12 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 72) = 8;

  Date.init()();
  sub_10008C99C();
  v15 = v14;
  (*(v2 + 8))(v5, v20);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v15;
  *(inited + 112) = 9;
  v16 = *(v1 + *(FullApsMessageOperation + 40));
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v16;
  *(inited + 152) = 44;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v10;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 4;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = sub_10005B41C(v17);

  return v18;
}

uint64_t sub_10005BEE4()
{
  v1 = type metadata accessor for URL();
  sub_100026794(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10005BF74()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10001E55C(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10005C004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DDC58, &unk_1000AC818);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  v12 = *(*(FullApsMessageOperation - 8) + 64);
  __chkstk_darwin(FullApsMessageOperation - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100007DE8(v16, qword_1000E6D30);
  sub_10005D14C(a2, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = a3;
    v34 = v20;
    v21 = v20;
    *v19 = 136315138;
    v22 = v7;
    v23 = v6;
    v32 = v10;
    v24 = v15;
    v26 = *(v14 + 6);
    v25 = *(v14 + 7);

    sub_10005D40C(v14);
    v27 = v26;
    v6 = v23;
    v7 = v22;
    v28 = sub_1000170D4(v27, v25, &v34);
    v15 = v24;
    v10 = v32;

    *(v19 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse full APS message for canonical id: %s.", v19, 0xCu);
    sub_100008A94(v21);
    a3 = v33;
  }

  else
  {

    sub_10005D40C(v14);
  }

  v34 = v15;
  swift_errorRetain();
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DDC60, &qword_1000DDC58, &unk_1000AC818);
  v29 = Publisher.eraseToAnyPublisher()();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v29;
  return result;
}

void sub_10005C330(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v81 - v9;
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  v12 = *(*(FullApsMessageOperation - 8) + 64);
  __chkstk_darwin(FullApsMessageOperation);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = v81 - v16;
  __chkstk_darwin(v17);
  v19 = v81 - v18;
  v20 = *(a1 + *(sub_100003998(&qword_1000DBDF0, &qword_1000AA710) + 40));
  v21 = *(v20 + *(*v20 + 184));
  if (sub_10001BE20(v21))
  {
    v84 = a3;
    sub_1000835D4(0, (v21 & 0xC000000000000001) == 0, v21);
    v85 = v3;
    v82 = v10;
    v83 = v14;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v23 = v22;
    v24 = *a2;
    v26 = a2[6];
    v25 = a2[7];
    v27 = *(FullApsMessageOperation + 32);
    v86 = a2;
    v28 = *(a2 + v27);
    v29 = v24[6];
    sub_100008614(v24 + 2, v24[5]);
    v81[1] = v28;
    v30 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
    if (v30)
    {
      v31 = v30;
      v32 = v30;
      v33 = v23;
      sub_10005CB18(v20, v23, v31);

      v34 = SportingEvent.partialSportingEvent.getter();
      v35 = dispatch thunk of SportingEvent.versionNumber.getter();

      v36 = SportingEventSubscription.sportingEventDetails.getter();
      v37 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v35 >= v37)
      {
        v73 = SportingEvent.partialSportingEvent.getter();
        v74 = type metadata accessor for Date();
        v75 = v82;
        sub_100008E2C(v82, 1, 1, v74);
        SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

        sub_1000261E8(v75, &qword_1000DC5A0, &unk_1000AB0E0);
        v76 = v24[6];
        sub_100008614(v24 + 2, v24[5]);
        v77 = v85;
        dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
        if (v77)
        {

          return;
        }
      }

      else
      {
        if (qword_1000DBA18 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100007DE8(v38, qword_1000E6D30);
        v39 = v89;
        sub_10005D14C(v86, v89);
        v40 = v32;
        v41 = v23;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v87 = v45;
          *v44 = 136315650;
          v46 = *(v39 + 48);
          v47 = *(v39 + 56);

          sub_10005D40C(v39);
          v48 = sub_1000170D4(v46, v47, &v87);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2048;
          v49 = SportingEvent.partialSportingEvent.getter();
          v50 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v44 + 14) = v50;
          *(v44 + 22) = 2048;
          v51 = SportingEventSubscription.sportingEventDetails.getter();
          v52 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v44 + 24) = v52;
          _os_log_impl(&_mh_execute_header, v42, v43, "Skipped stale subscription when fetching full APS message for canonical id: %s. (%ld < %ld)", v44, 0x20u);
          sub_100008A94(v45);
        }

        else
        {

          sub_10005D40C(v39);
        }
      }

      *v84 = 1;
    }

    else
    {
      v89 = v25;
      v61 = v23;
      if (qword_1000DBA18 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100007DE8(v62, qword_1000E6D30);
      v63 = v83;
      sub_10005D14C(v86, v83);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v87 = v67;
        *v66 = 136315138;
        v68 = v61;
        v69 = *(v63 + 48);
        v70 = *(v63 + 56);

        sub_10005D40C(v63);
        v71 = v69;
        v61 = v68;
        v72 = sub_1000170D4(v71, v70, &v87);

        *(v66 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v64, v65, "Missing subscription when fetching full APS message for canonical id: %s.", v66, 0xCu);
        sub_100008A94(v67);
      }

      else
      {

        sub_10005D40C(v63);
      }

      v78 = v89;
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v79._countAndFlagsBits = 0xD000000000000046;
      v79._object = 0x80000001000B20B0;
      String.append(_:)(v79);
      v80._countAndFlagsBits = v26;
      v80._object = v78;
      String.append(_:)(v80);
      sub_100029E04(3u, v87, v88);

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1000DBA18 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100007DE8(v53, qword_1000E6D30);
    sub_10005D14C(a2, v19);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v87 = v57;
      *v56 = 136315138;
      v58 = *(v19 + 6);
      v59 = *(v19 + 7);

      sub_10005D40C(v19);
      v60 = sub_1000170D4(v58, v59, &v87);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing event with canonical id %s in full APS message.", v56, 0xCu);
      sub_100008A94(v57);
    }

    else
    {

      sub_10005D40C(v19);
    }

    sub_100029E04(5u, 0xD000000000000014, 0x80000001000B2100);
    swift_willThrow();
  }
}

void sub_10005CB18(void *a1, void *a2, uint64_t a3)
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007DE8(v6, qword_1000E6D30);
  swift_retain_n();
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136316418;
    v11 = SportingEvent.canonicalId.getter();
    v13 = sub_1000170D4(v11, v12, &v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = SportingEvent.version.getter();
    v16 = sub_1000170D4(v14, v15, &v23);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    Date.timeIntervalSince1970.getter();
    *(v10 + 24) = v17;
    *(v10 + 32) = 2048;
    v18 = a1[2];

    *(v10 + 34) = v18;

    *(v10 + 42) = 2080;
    *(v10 + 44) = sub_1000170D4(a1[5], a1[6], &v23);
    *(v10 + 52) = 2048;
    v19 = *(a1 + qword_1000E6E00);
    if (*(a1 + qword_1000E6E00 + 8))
    {
      v19 = -1.0;
    }

    *(v10 + 54) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "=== Fetched full APS message for %s, version %s, message timestamp %f, type %ld, tempoSessionId %s, liveActivityTtl %f ===", v10, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for ApsMessageProcessingOperation();
  sub_100092B94(v7, a3);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "=== End full APS message ===", v21, 2u);
  }
}

uint64_t sub_10005CDFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_100003998(&qword_1000DDC68, &unk_1000AC828);
  v25 = *(v24 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v24);
  v14 = v23 - v13;
  v29[3] = &type metadata for AMSApiRequest;
  v29[4] = &off_1000D0740;
  v15 = swift_allocObject();
  v29[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a4;

  sub_100008180();
  v23[1] = v17;
  v28 = v17;
  sub_100008A38(a6, __src);
  sub_10000BC8C(v29, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  memcpy((v18 + 24), __src, 0x60uLL);
  sub_10000AC3C(v26, v18 + 120);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10005D510;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_100003998(&qword_1000DDC70, &qword_1000AC838);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630);
  sub_10000A6FC(&qword_1000DDC78, &qword_1000DDC70, &qword_1000AC838);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DDC80, &qword_1000DDC68, &unk_1000AC828);
  v20 = v24;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v14, v20);
  sub_100008A94(v29);
  return v21;
}

uint64_t sub_10005D14C(uint64_t a1, uint64_t a2)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  (*(*(FullApsMessageOperation - 8) + 16))(a2, a1, FullApsMessageOperation);
  return a2;
}

uint64_t sub_10005D1B4(uint64_t a1, uint64_t a2)
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  (*(*(FullApsMessageOperation - 8) + 32))(a2, a1, FullApsMessageOperation);
  return a2;
}

uint64_t sub_10005D218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SubscriptionFetchFullApsMessageOperation() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005C004(a1, v6, a2);
}

uint64_t sub_10005D298()
{
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  sub_10005D7A8(FullApsMessageOperation);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5);

  sub_100008A94((v1 + v5 + 8));
  v9 = *(v1 + v5 + 56);

  v10 = *(v0 + 36);
  v11 = type metadata accessor for URL();
  sub_100026794(v11);
  (*(v12 + 8))(v1 + v5 + v10);
  v13 = *(v1 + v5 + *(v0 + 44) + 8);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}