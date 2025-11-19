id sub_10044F4F8(Class *a1, void (*a2)(void))
{
  v12 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(*a1) init];
  a2();
  NSFastEnumerationIterator.next()();
  while (v18)
  {
    sub_100005EE0(&v17, v15);
    sub_100005EF0(v15, v14);
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v9 = v13;
      v10 = [v13 jsonify];
      [v8 addObject:v10];
    }

    else
    {
      sub_10000F61C(v15, v16);
      [v8 addObject:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
    }

    sub_10000607C(v15);
    NSFastEnumerationIterator.next()();
  }

  (*(v4 + 8))(v7, v12);
  return v8;
}

id sub_10044F760()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  v2 = [v0 allKeys];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_100005EF0(v6, v20);
      sub_10000F61C(v20, v20[3]);
      v8 = [v0 __swift_objectForKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(v17, v19);
        sub_100005EF0(v19, v17);
        v9 = sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        if (swift_dynamicCast())
        {
          v10 = v15[0];
          v11 = [v15[0] jsonify];
          v18 = v9;

          v17[0] = v11;
        }

        else
        {
          sub_100005EF0(v19, v17);
        }

        sub_100005EF0(v20, v15);
        if (swift_dynamicCast())
        {
          v12 = [v14 jsonify];
          v16 = v9;

          v15[0] = v12;
        }

        else
        {
          sub_100005EF0(v20, v15);
        }

        sub_10000F61C(v17, v18);
        v7 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000F61C(v15, v16);
        [v1 __swift_setObject:v7 forKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_10000607C(v19);
        sub_10000607C(v15);
        sub_10000607C(v17);
      }

      sub_10000607C(v20);
      v6 += 32;
      --v5;
    }

    while (v5);
  }

  return v1;
}

id sub_10044FA44()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_100974E88 = result;
  return result;
}

void sub_10044FB10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v170 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7);
  v186 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v205 = &v166 - v12;
  __chkstk_darwin(v13);
  v188 = &v166 - v14;
  __chkstk_darwin(v15);
  v204 = &v166 - v16;
  __chkstk_darwin(v17);
  v19 = &v166 - v18;
  __chkstk_darwin(v20);
  v22 = &v166 - v21;
  v190 = v23;
  __chkstk_darwin(v24);
  v26 = &v166 - v25;
  v27 = String._bridgeToObjectiveC()();
  v187 = a3;
  v28 = [a3 containerForAccountID:v27];

  v171 = v28;
  if (!v28)
  {
    if (qword_1009361A0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100947788);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10000668C(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to fetch CKContainer for accountID {accountID: %s}", v46, 0xCu);
      sub_10000607C(v47);
    }

    v48 = objc_opt_self();
    aBlock = 0;
    v208 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v49._object = 0x80000001007F8AD0;
    v49._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v49);
    v50._countAndFlagsBits = a1;
    v50._object = a2;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 125;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);
    v52 = String._bridgeToObjectiveC()();

    v53 = [v48 internalErrorWithDebugDescription:v52];

    v54 = _convertErrorToNSError(_:)();
    v55 = *(v170 + 16);
    v206 = v54;
    v55(v170, 0);

    v56 = v206;

    return;
  }

  v201 = [objc_opt_self() defaultManager];
  v29 = [v201 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v174 = a1;
  aBlock = a1;
  v208 = a2;
  v183 = a2;

  v30._countAndFlagsBits = 0x6E6961746E6F632DLL;
  v30._object = 0xEA00000000007265;
  String.append(_:)(v30);
  URL.appendingPathComponent(_:)();

  v202 = *(v8 + 1);
  v203 = v8 + 8;
  v202(v22, v7);
  if (qword_1009361A0 != -1)
  {
    goto LABEL_58;
  }

LABEL_3:
  v31 = type metadata accessor for Logger();
  v32 = sub_100006654(v31, qword_100947788);
  v33 = *(v8 + 2);
  v199 = v8 + 16;
  v198 = v33;
  v33(v19, v26, v7);
  v200 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v206 = v7;
  v193 = v26;
  v185 = v8;
  v182 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v39 = URL.path.getter();
    v41 = v40;
    v202(v19, v7);
    v42 = sub_10000668C(v39, v41, &aBlock);
    v26 = v193;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "downloadContainer outputDirURL: %s", v37, 0xCu);
    sub_10000607C(v38);

    v8 = v185;
  }

  else
  {

    v202(v19, v7);
  }

  v57 = v201;
  URL.path.getter();
  v58 = String._bridgeToObjectiveC()();

  v59 = [v57 fileExistsAtPath:v58];

  if (v59)
  {
    URL._bridgeToObjectiveC()(v60);
    v62 = v61;
    aBlock = 0;
    v63 = [v57 removeItemAtURL:v61 error:&aBlock];

    v64 = aBlock;
    if (!v63)
    {
      goto LABEL_52;
    }

    v65 = aBlock;
  }

  URL._bridgeToObjectiveC()(v60);
  v67 = v66;
  aBlock = 0;
  v68 = [v57 createDirectoryAtURL:v66 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v64 = aBlock;
  if (v68)
  {
    v166 = objc_opt_self();
    v189 = &v209;
    v179 = CKCurrentUserDefaultName;
    v178 = v190 + 7;
    v177 = v8 + 32;
    v69 = v64;
    v70 = 0;
    v71 = 0;
    *&v72 = 136315138;
    v173 = v72;
    *&v72 = 138412546;
    v172 = v72;
    v176 = xmmword_1007953F0;
    while (1)
    {
      v167 = v70;
      v74 = &selRef_privateCloudDatabase;
      if (*(&off_1008DD5E0 + v71 + 4) != 2)
      {
        v74 = &selRef_sharedCloudDatabase;
      }

      v75 = [v171 *v74];
      v76 = dispatch_group_create();
      v77 = [v166 fetchAllRecordZonesOperation];
      v78 = swift_allocObject();
      *(v78 + 16) = _swiftEmptyArrayStorage;

      v169 = v78;
      CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
      CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
      v79 = swift_allocObject();
      *(v79 + 16) = v76;
      v8 = sub_10045132C;
      v211 = sub_10045132C;
      v212 = v79;
      aBlock = _NSConcreteStackBlock;
      v208 = 1107296256;
      v209 = sub_100019200;
      v210 = &unk_1008F2730;
      v80 = _Block_copy(&aBlock);
      v81 = v77;
      v82 = v76;
      sub_10003E124(sub_10045132C);

      [v81 setCompletionBlock:v80];
      _Block_release(v80);

      dispatch_group_enter(v82);
      v83 = v75;
      [v81 setDatabase:v83];
      v191 = v83;
      v168 = v81;
      [v83 addOperation:v81];
      v192 = v82;
      OS_dispatch_group.wait()();
      swift_beginAccess();
      v19 = *(v78 + 16);
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v156 = *(v78 + 16);
        }

        v84 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v84 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v204;
      v22 = v193;
      v7 = v206;
      if (v84)
      {
        break;
      }

LABEL_19:
      v73 = v191;

      v70 = 1;
      v71 = 1;
      if (v167)
      {
        URL.path.getter();
        v165 = String._bridgeToObjectiveC()();
        (*(v170 + 16))(v170, v165, 0);

        v159 = v22;
        v160 = v7;
        goto LABEL_53;
      }
    }

    v86 = v19 & 0xC000000000000001;
    v175 = v19 & 0xFFFFFFFFFFFFFF8;

    v26 = 0;
    v181 = v84;
    v180 = v19 & 0xC000000000000001;
    v184 = v19;
    while (1)
    {
      if (v86)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v175 + 16))
        {
          goto LABEL_57;
        }

        v87 = *(v19 + 8 * v26 + 32);
      }

      v88 = v87;
      v8 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
        goto LABEL_3;
      }

      if ([v87 isDefaultRecordZoneID])
      {

        goto LABEL_27;
      }

      v196 = (v26 + 1);
      v89 = [v88 ownerName];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      v94 = v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93;
      v197 = v26;
      if (v94)
      {
        break;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v95)
      {
        goto LABEL_41;
      }

      aBlock = 0x4244646572616853;
      v208 = 0xE90000000000002DLL;
      v96 = [v88 ownerName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100._countAndFlagsBits = v97;
      v100._object = v99;
      String.append(_:)(v100);
      v85 = v204;

      v101 = aBlock;
      v102 = v208;
LABEL_42:
      aBlock = v101;
      v208 = v102;
      v103._countAndFlagsBits = 45;
      v103._object = 0xE100000000000000;
      String.append(_:)(v103);
      v104 = [v88 zoneName];
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108._countAndFlagsBits = v105;
      v108._object = v107;
      String.append(_:)(v108);

      URL.appendingPathComponent(_:)();

      v109 = v188;
      v198(v188, v85, v7);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        aBlock = v113;
        *v112 = v173;
        sub_100451408();
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v115;
        v202(v109, v7);
        v117 = sub_10000668C(v114, v116, &aBlock);
        v85 = v204;

        *(v112 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v110, v111, "downloadContainer zoneDirURL: %s", v112, 0xCu);
        sub_10000607C(v113);
      }

      else
      {

        v202(v109, v7);
      }

      URL._bridgeToObjectiveC()(v118);
      v120 = v119;
      aBlock = 0;
      v121 = [v201 createDirectoryAtURL:v119 withIntermediateDirectories:1 attributes:0 error:&aBlock];

      if (!v121)
      {
        v161 = aBlock;

        v162 = v191;

        _convertNSErrorToError(_:)();
        swift_willThrow();
        swift_errorRetain();
        v163 = _convertErrorToNSError(_:)();
        (*(v170 + 16))(v170, 0, v163);

        v164 = v202;
        v202(v85, v7);
        v164(v193, v7);

        return;
      }

      v122 = aBlock;
      URL.appendingPathComponent(_:)();
      v195 = swift_allocObject();
      *(v195 + 16) = 0;
      v123 = v183;

      v124 = v88;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      v127 = v7;
      if (os_log_type_enabled(v125, v126))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        aBlock = v130;
        *v128 = v172;
        *(v128 + 4) = v124;
        *v129 = v124;
        *(v128 + 12) = 2080;
        v131 = v124;
        *(v128 + 14) = sub_10000668C(v174, v123, &aBlock);
        _os_log_impl(&_mh_execute_header, v125, v126, "Downloading records in zone %@ for accountID %s", v128, 0x16u);
        sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

        sub_10000607C(v130);
        v85 = v204;
      }

      sub_1000060C8(0, &qword_1009477A0, CKFetchRecordZoneChangesOperation_ptr);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v132 = swift_allocObject();
      *(v132 + 16) = v176;
      *(v132 + 32) = v124;
      v194 = v124;
      v214.value._rawValue = v132;
      v214.is_nil = 0;
      isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v214, v215).super.super.super.super.isa;
      v134 = v182;
      v135 = v198;
      v198(v182, v85, v127);
      v136 = v186;
      v135(v186, v205, v127);
      v137 = v185;
      v138 = *(v185 + 80);
      v139 = (v138 + 24) & ~v138;
      v140 = (v178 + v139) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v140 + 15) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v138 + v141 + 8) & ~v138;
      v143 = swift_allocObject();
      v144 = v187;
      *(v143 + 16) = v187;
      v145 = *(v137 + 4);
      v145(v143 + v139, v134, v206);
      *(v143 + v140) = v195;
      v146 = v201;
      *(v143 + v141) = v201;
      v145(v143 + v142, v136, v206);
      v147 = v144;

      v148 = v146;
      CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();
      v149 = swift_allocObject();
      v150 = v192;
      *(v149 + 16) = v192;
      v211 = sub_100451C24;
      v212 = v149;
      aBlock = _NSConcreteStackBlock;
      v208 = 1107296256;
      v209 = sub_100019200;
      v210 = &unk_1008F2708;
      v151 = _Block_copy(&aBlock);
      v152 = v150;
      v153 = isa;
      v85 = v204;
      sub_10003E124(sub_100451C24);
      v7 = v206;

      [(objc_class *)v153 setCompletionBlock:v151];
      _Block_release(v151);

      dispatch_group_enter(v152);
      v154 = v191;
      [(objc_class *)v153 setDatabase:v191];
      [v154 addOperation:v153];
      OS_dispatch_group.wait()();

      v155 = v202;
      v202(v205, v7);
      v155(v85, v7);

      v22 = v193;
      v19 = v184;
      v84 = v181;
      v86 = v180;
      v26 = v197;
      v8 = v196;
LABEL_27:
      ++v26;
      if (v8 == v84)
      {

        goto LABEL_19;
      }
    }

LABEL_41:
    v101 = 0x4465746176697250;
    v102 = 0xE900000000000042;
    goto LABEL_42;
  }

LABEL_52:
  v157 = v64;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v158 = _convertErrorToNSError(_:)();
  (*(v170 + 16))(v170, 0, v158);

  v159 = v26;
  v160 = v206;
LABEL_53:
  v202(v159, v160);
}

char *sub_100451010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 2;
  v40 = a3;
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v3)
  {
    return (v8 & 1);
  }

  v35 = 0;
  v12 = v41[0];
  if (!(v41[0] >> 62))
  {
    v13 = *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:

    v17 = _swiftEmptyArrayStorage;
LABEL_15:
    v41[0] = a1;
    v41[1] = a2;
    __chkstk_darwin(v31);
    *(&v33 - 2) = v41;
    LOBYTE(v8) = sub_100040A74(sub_100040B20, (&v33 - 4), v17);

    return (v8 & 1);
  }

  v32 = v41[0];
  v13 = _CocoaArrayWrapper.endIndex.getter();
  v12 = v32;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = v12;
  v33 = a1;
  v34 = a2;
  v41[0] = _swiftEmptyArrayStorage;
  result = sub_100026EF4(0, v13 & ~(v13 >> 63), 0);
  v42 = v13;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v41[0];
    v18 = v14;
    v36 = (v8 + 8);
    v37 = v14 & 0xC000000000000001;
    v38 = v14;
    do
    {
      if (v37)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v18 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = UUID.uuidString.getter();
      v24 = v23;

      v25 = v11;
      v26 = v11;
      v27 = v7;
      (*v36)(v26, v7);
      v41[0] = v17;
      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        sub_100026EF4((v28 > 1), v29 + 1, 1);
        v17 = v41[0];
      }

      ++v16;
      v17[2] = v29 + 1;
      v30 = &v17[2 * v29];
      v30[4] = v22;
      v30[5] = v24;
      v7 = v27;
      v11 = v25;
      v18 = v38;
    }

    while (v42 != v16);

    a1 = v33;
    a2 = v34;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100451334(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + 16);
  v13 = *(v3 + v10);
  v14 = *(v3 + v11);

  sub_10044E514(a1, a2, a3 & 1, v12, v3 + v9, v13, v14, v3 + ((v8 + v11 + 8) & ~v8));
}

unint64_t sub_100451408()
{
  result = qword_1009456F0;
  if (!qword_1009456F0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009456F0);
  }

  return result;
}

void sub_100451460(uint64_t a1, void *a2)
{
  v53 = a2;
  v2 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v54 = 0;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = CKRecord.recordType.getter();
  v16 = v15;
  v17 = [objc_opt_self() recordTypes];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v18[2])
  {
    __break(1u);
    goto LABEL_34;
  }

  v52 = v13;
  v19 = v18[4];
  v20 = v18[5];

  if (v14 == v19 && v16 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  if (!CKRecord.subscript.getter())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_14:
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_17:
    sub_1000050A4(v8, &unk_1009441F0, &qword_100795760);
    goto LABEL_18;
  }

  v24 = [v23 fileURL];
  swift_unknownObjectRelease();
  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v5, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v5, 1, 1, v9);
  }

  v25 = v52;
  sub_10003E8F8(v5, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_17;
  }

  (*(v10 + 32))(v25, v8, v9);
  v41 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 fileExistsAtPath:v42];

  if (v43)
  {
    v44 = v54;
    v45 = Data.init(contentsOf:options:)();
    v47 = (v10 + 8);
    if (!v44)
    {
      v27 = v45;
      v26 = v46;
      v54 = 0;
      (*v47)(v25, v9);
      goto LABEL_20;
    }

    (*v47)(v25, v9);
    v54 = 0;
  }

  else
  {
    (*(v10 + 8))(v25, v9);
  }

LABEL_18:
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v26 = v60;
  if (v60 >> 60 == 15)
  {
    return;
  }

  v27 = v59;
LABEL_20:
  sub_100029344(v27, v26);
  v28 = [v53 storeController];
  if (!v28)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 newBackgroundContextWithAuthor:v30];

  v32 = sub_10003A1B8();
  if (v32)
  {
    v33 = objc_allocWithZone(REMReplicaIDSource);
    v34 = v32;
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 initWithAccountID:v34 objectID:v34 property:v35];

    v37 = objc_allocWithZone(REMCRMergeableOrderedSet);
    v38 = v36;
    sub_100029344(v27, v26);
    v39 = v54;
    v40 = sub_1002F937C(v38);
    sub_10001BBA0(v27, v26);

    if (v39)
    {

      sub_10001BBA0(v27, v26);

      sub_100031A14(v27, v26);
    }

    else
    {
      sub_100031A14(v27, v26);
      if (v40)
      {
        *&v57 = 0xD00000000000001FLL;
        *(&v57 + 1) = 0x80000001007F8B80;
        AnyHashable.init<A>(_:)();
        v48 = [v40 orderedSet];
        v49 = [v48 array];

        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
        *&v57 = v50;
        sub_100005EE0(&v57, v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = _swiftEmptyDictionarySingleton;
        sub_1002C7E48(v56, &v59, isUniquelyReferenced_nonNull_native);

        sub_10001BBA0(v27, v26);
        sub_10001B2CC(&v59);
      }

      else
      {
        sub_10001BBA0(v27, v26);
      }
    }
  }

  else
  {
    sub_100031A14(v27, v26);
    sub_10001BBA0(v27, v26);
  }
}

uint64_t sub_100451BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009477B0, &qword_1007AA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100451C2C(uint64_t result, unint64_t a2, uint64_t a3, char **a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      sub_100452B38(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100451CD4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v50 = v4;
  v5 = *(v4 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  v34[0] = a1;
  v35 = v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_26;
  }

  for (i = sub_100010364(&v50, &v41, &unk_100945240, &qword_1007A0A70); ; i = sub_1000050A4(&v50, &unk_100945240, &qword_1007A0A70))
  {
    v34[1] = v34;
    __chkstk_darwin(i);
    v9 = v34 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v7);
    v37 = 0;
    v10 = 0;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(v4 + 56);
    v6 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v16 = v13 | (v10 << 6);
      v17 = (*(v4 + 48) + 16 * v16);
      if ((*v17 != 0x6C61636F6CLL || v17[1] != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v18._countAndFlagsBits = 0x7C6C61636F6CLL;
        v18._object = 0xE600000000000000;
        v19 = String.hasPrefix(_:)(v18);

        if (!v19)
        {
          *&v9[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_20:
            v21 = sub_1001A0BCC(v9, v35, v37, v4);
            v22 = v36;
            goto LABEL_21;
          }
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_20;
      }

      v15 = *(v4 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    sub_100010364(&v50, &v41, &unk_100945240, &qword_1007A0A70);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = sub_1004ADE8C(v31, v6, v4, sub_1004521DC);
  if (v2)
  {
    sub_1000050A4(&v50, &unk_100945240, &qword_1007A0A70);

    __break(1u);
  }

  else
  {
    v33 = v32;
    v22 = 0;
    sub_1000050A4(&v50, &unk_100945240, &qword_1007A0A70);

    v21 = v33;
LABEL_21:
    sub_10045226C(v21, &v42);

    v49 = v43;
    v40 = v43;
    v41 = _swiftEmptyArrayStorage;
    v23 = v45;
    v48 = v44;
    v39 = v44;
    sub_100010364(&v49, v38, &qword_100939A08, &unk_100796A80);
    sub_100010364(&v48, v38, &unk_100945230, &qword_1007A2590);

    sub_100451C2C(v24, &v40, &v39, &v41);

    sub_1000050A4(&v49, &qword_100939A08, &unk_100796A80);
    sub_1000050A4(&v48, &unk_100945230, &qword_1007A2590);

    v47 = v46;
    sub_1000050A4(&v47, &unk_100945240, &qword_1007A0A70);

    v26 = v40;
    v25 = v41;
    v27 = v39;

    v28 = sub_1001A6DC0(v23);
    sub_10015E0CC(v25, v27, v28);
    if (v22)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return swift_bridgeObjectRelease_n();
    }

    else
    {

      v30 = v34[0];
      *v34[0] = v25;
      v30[1] = v26;
      v30[2] = v27;
      v30[3] = v23;
      v30[4] = v28;
    }
  }

  return result;
}

BOOL sub_1004521DC(uint64_t *a1)
{
  v1 = *a1 == 0x6C61636F6CLL && a1[1] == 0xE500000000000000;
  result = 0;
  if (!v1)
  {
    v2 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v3._countAndFlagsBits = 0x7C6C61636F6CLL;
      v3._object = 0xE600000000000000;
      if (!String.hasPrefix(_:)(v3))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10045226C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[4];
  v6 = sub_100453404(a1, v5);
  v7 = *v2;
  if (v6)
  {
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];

LABEL_100:
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v5;
    return result;
  }

  v134 = v2;
  v130 = v5;
  v125 = a2;
  v12 = v7[2];
  if (!v12)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v13 = 0;
  v14 = v7 + 4;
  v15 = a1 + 56;
  v7 = _swiftEmptyArrayStorage;
  v127 = v14;
  do
  {
    v16 = v13;
    v131 = v7;
    while (1)
    {
      if (v16 >= v12)
      {
        goto LABEL_102;
      }

      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
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
        goto LABEL_110;
      }

      v17 = v134[2];
      if (*(v17 + 16))
      {
        break;
      }

LABEL_7:
      v16 = v13;
      if (v13 == v12)
      {
        goto LABEL_29;
      }
    }

    v18 = &v14[2 * v16];
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_100005F4C(v20, v19);
    if ((v22 & 1) == 0 || !*(a1 + 16))
    {
      goto LABEL_6;
    }

    v23 = (*(v17 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(a1 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v27 = Hasher._finalize()();
    v28 = -1 << *(a1 + 32);
    v29 = v27 & ~v28;
    if (((*(v15 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_21:

      v7 = v131;
      v14 = v127;
LABEL_6:

      goto LABEL_7;
    }

    v30 = ~v28;
    while (1)
    {
      v31 = (*(a1 + 48) + 16 * v29);
      v32 = *v31 == v25 && v31[1] == v24;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v15 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v33 = v131;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100026EF4(0, v131[2] + 1, 1);
      v33 = v131;
    }

    v14 = v127;
    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      sub_100026EF4((v34 > 1), v35 + 1, 1);
      v33 = v131;
    }

    v33[2] = v35 + 1;
    v36 = &v33[2 * v35];
    v36[4] = v20;
    v36[5] = v19;
    v7 = v33;
  }

  while (v13 != v12);
LABEL_29:
  v126 = sub_10038EB78(_swiftEmptyArrayStorage);
  v37 = v7[2];
  if (!v37)
  {
    v124 = sub_10038E004(_swiftEmptyArrayStorage);
LABEL_70:
    v129 = sub_10038DA10(_swiftEmptyArrayStorage);
    v92 = 1 << *(v130 + 32);
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    else
    {
      v93 = -1;
    }

    v94 = v93 & *(v130 + 56);
    v95 = (v92 + 63) >> 6;
    v96 = a1 + 56;

    v98 = 0;
    while (1)
    {
      do
      {
        if (!v94)
        {
          while (1)
          {
            v100 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              break;
            }

            if (v100 >= v95)
            {

              v10 = v129;

              result = sub_1001A6DC0(v121);
              v5 = result;
              a2 = v125;
              v8 = v126;
              v9 = v124;
              goto LABEL_100;
            }

            v99 = *(v130 + 56 + 8 * v100);
            ++v98;
            if (v99)
            {
              v98 = v100;
              goto LABEL_80;
            }
          }

          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v99 = v94;
LABEL_80:
        v94 = (v99 - 1) & v99;
      }

      while (!*(a1 + 16));
      v133 = (v99 - 1) & v99;
      v101 = (*(v97 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v99)))));
      v102 = *v101;
      v103 = v101[1];
      v104 = *(a1 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v105 = Hasher._finalize()();
      v106 = -1 << *(a1 + 32);
      v107 = v105 & ~v106;
      if (((*(v96 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
      {
        goto LABEL_93;
      }

      v108 = ~v106;
      while (1)
      {
        v109 = (*(a1 + 48) + 16 * v107);
        v110 = *v109 == v102 && v109[1] == v103;
        if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v107 = (v107 + 1) & v108;
        if (((*(v96 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
        {
          goto LABEL_93;
        }
      }

      v111 = v134[3];
      if (!*(v111 + 16))
      {
        break;
      }

      v112 = sub_100005F4C(v102, v103);
      if ((v113 & 1) == 0)
      {
        break;
      }

      v119 = *(*(v111 + 56) + 8 * v112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002C6EC8(v102, v103, isUniquelyReferenced_nonNull_native, v119);
      swift_bridgeObjectRelease_n();
LABEL_94:
      v97 = v130;
      v94 = v133;
    }

    v114 = sub_100005F4C(v102, v103);
    v116 = v115;

    if (v116)
    {
      v117 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100373044();
        v117 = v129;
      }

      v118 = *(*(v117 + 48) + 16 * v114 + 8);

      v129 = v117;
      sub_100332708(v114, v117);
    }

LABEL_93:

    goto LABEL_94;
  }

  v38 = 0;
  v39 = v7 + 5;
  v132 = v37 - 1;
  v40 = v134;
  do
  {
    v41 = &v39[2 * v38];
    v42 = v38;
    while (1)
    {
      if (v42 >= v7[2])
      {
        goto LABEL_104;
      }

      v43 = v40[1];
      if (*(v43 + 16))
      {
        break;
      }

LABEL_32:
      ++v42;
      v41 += 2;
      if (v37 == v42)
      {
        goto LABEL_48;
      }
    }

    v44 = *(v41 - 1);
    v45 = *v41;

    v46 = sub_100005F4C(v44, v45);
    if ((v47 & 1) == 0)
    {

      goto LABEL_32;
    }

    v128 = v39;
    v48 = *(*(v43 + 56) + 8 * v46);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = sub_100005F4C(v44, v45);
    v52 = v126[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_106;
    }

    v56 = v51;
    if (v126[3] >= v55)
    {
      if ((v49 & 1) == 0)
      {
        v63 = v50;
        sub_10037443C();
        v50 = v63;
      }
    }

    else
    {
      sub_10036C5F8(v55, v49);
      v50 = sub_100005F4C(v44, v45);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_110;
      }
    }

    if (v56)
    {
      v58 = v126[7];
      v59 = *(v58 + 8 * v50);
      *(v58 + 8 * v50) = v48;
      swift_bridgeObjectRelease_n();
      goto LABEL_47;
    }

    v126[(v50 >> 6) + 8] |= 1 << v50;
    v60 = (v126[6] + 16 * v50);
    *v60 = v44;
    v60[1] = v45;
    *(v126[7] + 8 * v50) = v48;
    v61 = v126[2];
    v54 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v54)
    {
      goto LABEL_108;
    }

    v126[2] = v62;
LABEL_47:
    v40 = v134;
    v39 = v128;
    v38 = v42 + 1;
  }

  while (v132 != v42);
LABEL_48:
  v64 = sub_10038E004(_swiftEmptyArrayStorage);
  v65 = 0;
  v66 = v7 + 5;
  while (2)
  {
    v67 = &v66[2 * v65];
    v68 = v65;
    while (2)
    {
      if (v68 >= v7[2])
      {
        goto LABEL_105;
      }

      v69 = v40[2];
      if (!*(v69 + 16))
      {
LABEL_51:
        ++v68;
        v67 += 2;
        if (v37 == v68)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    v70 = *(v67 - 1);
    v71 = *v67;

    v72 = sub_100005F4C(v70, v71);
    if ((v73 & 1) == 0)
    {

      goto LABEL_51;
    }

    v74 = (*(v69 + 56) + 16 * v72);
    v75 = v74[1];
    v122 = *v74;

    v123 = v75;

    v76 = v64;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v79 = sub_100005F4C(v70, v71);
    v80 = v76[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_107;
    }

    v83 = v78;
    if (v76[3] >= v82)
    {
      if (v77)
      {
        v64 = v76;
        if (v78)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_100373664();
        v64 = v76;
        if (v83)
        {
          goto LABEL_63;
        }
      }

LABEL_59:
      v64[(v79 >> 6) + 8] |= 1 << v79;
      v86 = (v64[6] + 16 * v79);
      *v86 = v70;
      v86[1] = v71;
      v87 = (v64[7] + 16 * v79);
      *v87 = v122;
      v87[1] = v123;
      v88 = v64[2];
      v54 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (!v54)
      {
        v64[2] = v89;
        goto LABEL_64;
      }

      goto LABEL_109;
    }

    sub_10036A8F0(v82, v77);
    v84 = sub_100005F4C(v70, v71);
    if ((v83 & 1) == (v85 & 1))
    {
      v79 = v84;
      v64 = v76;
      if ((v83 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_63:
      v90 = (v64[7] + 16 * v79);
      v91 = v90[1];
      *v90 = v122;
      v90[1] = v123;
      swift_bridgeObjectRelease_n();
LABEL_64:
      v40 = v134;
      v66 = v7 + 5;
      v65 = v68 + 1;

      if (v132 == v68)
      {
LABEL_68:
        v124 = v64;
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

LABEL_110:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100452B38(uint64_t *a1, unint64_t a2, uint64_t a3, char **a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8._countAndFlagsBits = 0x7C6C61636F6CLL;
  v8._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v8))
  {
    sub_100369184(v6, v7);

    sub_100368F18(v6, v7);
  }

  else
  {
    v10 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_26:
      v10 = sub_100365788(0, *(v10 + 2) + 1, 1, v10);
      *a4 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_100365788((v12 > 1), v13 + 1, 1, v10);
      *a4 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[16 * v13];
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    v15 = *a2;
    v16 = *(*a2 + 16);

    if (v16 && (v17 = sub_100005F4C(v6, v7), (v18 & 1) != 0))
    {
      v10 = *(*(v15 + 56) + 8 * v17);
      v19 = *(v10 + 2);

      if (v19)
      {
        a2 = 0;
        v20 = v10 + 40;
        v21 = _swiftEmptyArrayStorage;
        do
        {
          v31 = v21;
          a4 = &v20[16 * a2];
          v22 = a2;
          while (1)
          {
            if (v22 >= *(v10 + 2))
            {
              __break(1u);
              goto LABEL_26;
            }

            v24 = *(a4 - 1);
            v23 = *a4;
            a2 = v22 + 1;

            v25._countAndFlagsBits = 0x7C6C61636F6CLL;
            v25._object = 0xE600000000000000;
            if (!String.hasPrefix(_:)(v25))
            {
              break;
            }

            a4 += 2;
            ++v22;
            if (v19 == a2)
            {
              v21 = v31;
              goto LABEL_23;
            }
          }

          v21 = v31;
          v33 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100026EF4(0, v31[2] + 1, 1);
            v21 = v31;
          }

          v27 = v21[2];
          v26 = v21[3];
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            v32 = v27 + 1;
            v30 = v21[2];
            sub_100026EF4((v26 > 1), v27 + 1, 1);
            v28 = v32;
            v27 = v30;
            v21 = v33;
          }

          v21[2] = v28;
          v29 = &v21[2 * v27];
          v29[4] = v24;
          v29[5] = v23;
          v20 = v10 + 40;
        }

        while (v19 - 1 != v22);
      }

      else
      {
        v21 = _swiftEmptyArrayStorage;
      }

LABEL_23:
    }

    else
    {
      v21 = 0;
    }

    return sub_10031DAF8(v21, v6, v7);
  }
}

uint64_t sub_100452DF0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  v11(v10, v3);
  v14 = *(v2 + 32);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = *(v2 + 32);

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (v17)
  {
    v23 = v17;
LABEL_11:
    v17 = (v23 - 1) & v23;
    v25 = *(v2 + 24);
    if (*(v25 + 16))
    {
      v26 = (*(v14 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v23)))));
      v28 = *v26;
      v27 = v26[1];

      v29 = sub_100005F4C(v28, v27);
      if ((v30 & 1) == 0)
      {
        goto LABEL_4;
      }

      v31 = *(*(v25 + 56) + 8 * v29);
      if (qword_1009363E8 != -1)
      {
        swift_once();
      }

      v32 = v28 == qword_100974F40 && v27 == *algn_100974F48;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v13 <= v31)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v44[0] = v22;
        if ((result & 1) == 0)
        {
          result = sub_100026EF4(0, v22[2] + 1, 1);
          v22 = *&v44[0];
        }

        v34 = v22[2];
        v33 = v22[3];
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v37 = v34 + 1;
          v42 = v34;
          result = sub_100026EF4((v33 > 1), v34 + 1, 1);
          v34 = v42;
          v35 = v37;
          v22 = *&v44[0];
        }

        v22[2] = v35;
        v36 = &v22[2 * v34];
        v36[4] = v28;
        v36[5] = v27;
      }

      else
      {
LABEL_4:
      }
    }
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v18)
    {

      v38 = sub_1001A5660(v22);

      sub_10045226C(v38, v44);

      v39 = v44[1];
      v40 = v43;
      *v43 = v44[0];
      v40[1] = v39;
      *(v40 + 4) = v45;
      return result;
    }

    v23 = *(v14 + 56 + 8 * v24);
    ++v21;
    if (v23)
    {
      v21 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10045312C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = sub_10038DA10(_swiftEmptyArrayStorage);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v42 = v2;

  v9 = 0;
  v41 = v2 + 64;
  while (v7)
  {
    v11 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v42 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v42 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = Int32.init(timeIntervalSinceReferenceDate:)(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_100005F4C(v15, v14);
    v21 = v3[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v25 = v20;
    if (v3[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_100373044();
        v19 = v31;
      }
    }

    else
    {
      sub_100369F58(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_100005F4C(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    v27 = v17;
    if (v25)
    {
      v10 = v19;

      *(v3[7] + 8 * v10) = v27;
    }

    else
    {
      v3[(v19 >> 6) + 8] |= 1 << v19;
      v28 = (v3[6] + 16 * v19);
      *v28 = v15;
      v28[1] = v14;
      *(v3[7] + 8 * v19) = v27;

      v29 = v3[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      v3[2] = v30;
    }

    v9 = v11;
    v4 = v41;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v32 = *v39;
  v33 = v39[1];
  v34 = v39[2];

  v36 = sub_1001A6DC0(v35);
  result = sub_10015E0CC(v32, v34, v36);
  if (v40)
  {
  }

  else
  {
    *a1 = v32;
    a1[1] = v33;
    a1[2] = v34;
    a1[3] = v3;
    a1[4] = v36;
  }

  return result;
}

uint64_t sub_100453404(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void sub_1004535E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (__CocoaSet.count.getter() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    __CocoaSet.makeIterator()();
    sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
    sub_10045390C();
    Set.Iterator.init(_cocoa:)();
    v2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  v28 = v7;
  v14 = (v8 + 64) >> 6;
  v29 = v2;
  v15 = a1 + 56;
  while (1)
  {
    while (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
LABEL_35:
        sub_10001B860();
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v31;
      v30 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = __CocoaSet.contains(_:)();

      v10 = v30;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    v27 = v6;
    if (!*(a1 + 16) || (v21 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v22 = -1 << *(a1 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
    {
LABEL_32:

LABEL_33:
      sub_10001B860();
      return;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v28;
    v2 = v29;
    v6 = v27;
    v10 = v30;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

unint64_t sub_10045390C()
{
  result = qword_10094A190;
  if (!qword_10094A190)
  {
    sub_1000F514C(&qword_10093AA30, &qword_1007AE460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A190);
  }

  return result;
}

uint64_t sub_100453970(void *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100453F50(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009477C8);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "No checked-in -- Checking in {interaction: %@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }

    sub_1004542C8(v14, a2);
    return 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  Date.timeIntervalSince(_:)();
  if (v20 >= 10800.0)
  {
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_1009477C8);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "timeout expired -- reset check-in {interaction: %@}", v33, 0xCu);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
    }

    sub_1004542C8(v30, a2);
    (*(v9 + 8))(v12, v8);
    return 1;
  }

  if (qword_1009361B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_1009477C8);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "timeout hasn't expired -- don't check-in {interaction: %@}", v25, 0xCu);
    sub_1000050A4(v26, &unk_100938E70, &unk_100797230);
  }

  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_100453E88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009477C8);
  v1 = sub_100006654(v0, qword_1009477C8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100453F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v31);
  v29 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (&v29 - v7);
  v9 = sub_1000F5104(&qword_100947880, &qword_1007AA7D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  result = sub_100454C38();
  v16 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_100455348(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v8);
      if ([*v8 matchesContactRepresentation:a1])
      {

        sub_100031B58(v8, v14, &qword_100944128, &qword_1007A4890);
        v19 = 0;
        goto LABEL_8;
      }

      ++v18;
      result = sub_1000050A4(v8, &qword_100944128, &qword_1007A4890);
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v19 = 1;
LABEL_8:
    v20 = v31;
    (*(v3 + 56))(v14, v19, 1, v31);
    v21 = v30;
    sub_100031B58(v14, v30, &qword_100947880, &qword_1007AA7D0);
    if ((*(v3 + 48))(v21, 1, v20) == 1)
    {
      v22 = type metadata accessor for Date();
      return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
    }

    else
    {
      v23 = v29;
      sub_100031B58(v21, v29, &qword_100944128, &qword_1007A4890);

      v24 = *(v20 + 48);
      v25 = type metadata accessor for Date();
      v26 = *(v25 - 8);
      v27 = v23 + v24;
      v28 = v32;
      (*(v26 + 32))(v32, v27, v25);
      return (*(v26 + 56))(v28, 0, 1, v25);
    }
  }

  return result;
}

uint64_t sub_1004542C8(void *a1, uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  v79 = type metadata accessor for Date();
  v76 = *(v79 - 8);
  v3 = *(v76 + 64);
  v4 = __chkstk_darwin(v79);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v67 - v6;
  v77 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v77);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v67 - v12);
  v74 = v2;
  v14 = sub_100454C38();
  v83 = v14;
  v15 = v14[2];

  if (v15)
  {
    v16 = 0;
    while (1)
    {
      if (v16 >= v14[2])
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_100455348(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v13);
      v17 = [*v13 matchesContactRepresentation:v81];
      sub_1000050A4(v13, &qword_100944128, &qword_1007A4890);
      if (v17)
      {
        break;
      }

      if (v15 == ++v16)
      {
        goto LABEL_6;
      }
    }

    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_1009477C8);
    v38 = v76;
    v21 = *(v76 + 16);
    v73 = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v75 = v7;
    v39 = v7;
    v40 = v79;
    v21(v39, v80, v79);
    v41 = v81;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    v44 = os_log_type_enabled(v42, v43);
    v15 = v78;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v72 = v21;
      v46 = v45;
      v47 = swift_slowAlloc();
      v70 = v47;
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v46 = 138412546;
      *(v46 + 4) = v41;
      *v47 = v41;
      v40 = v79;
      *(v46 + 12) = 2080;
      sub_100455E78();
      v69 = v43;
      v48 = v41;
      v68 = v42;
      v49 = v75;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v38 + 8);
      v52(v49, v40);
      v53 = sub_10000668C(v67, v51, v82);

      *(v46 + 14) = v53;
      v54 = v68;
      _os_log_impl(&_mh_execute_header, v68, v69, "Replacing existing checkIn {interaction: %@, date: %s}", v46, 0x16u);
      sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

      sub_10000607C(v71);

      v21 = v72;
    }

    else
    {

      v52 = *(v38 + 8);
      v52(v75, v40);
    }

    sub_10042CA3C(v16, v13);

    v36 = v77;
    v52(v13 + *(v77 + 48), v40);
    v23 = v40;
  }

  else
  {
LABEL_6:

    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_1009477C8);
    v20 = v75;
    v19 = v76;
    v21 = *(v76 + 16);
    v22 = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23 = v79;
    v21(v75, v80, v79);
    v24 = v81;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v72 = v21;
      v28 = v27;
      v29 = swift_slowAlloc();
      v73 = v22;
      v30 = v29;
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v28 = 138412546;
      *(v28 + 4) = v24;
      *v30 = v24;
      *(v28 + 12) = 2080;
      sub_100455E78();
      v31 = v24;
      v23 = v79;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v19 + 8))(v20, v23);
      v35 = sub_10000668C(v32, v34, v82);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "CheckIn not found -- Adding new one {interaction: %@, date: %s}", v28, 0x16u);
      sub_1000050A4(v30, &unk_100938E70, &unk_100797230);

      sub_10000607C(v71);

      v21 = v72;
    }

    else
    {

      (*(v19 + 8))(v20, v23);
    }

    v36 = v77;
    v15 = v78;
  }

  v55 = *(v36 + 48);
  v56 = v80;
  v57 = v81;
  *v15 = v81;
  v21(&v15[v55], v56, v23);
  v14 = v83;
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v14 = sub_100367734(0, v14[2] + 1, 1, v14);
  }

  v60 = v14[2];
  v59 = v14[3];
  if (v60 >= v59 >> 1)
  {
    v14 = sub_100367734(v59 > 1, v60 + 1, 1, v14);
  }

  v14[2] = v60 + 1;
  sub_100031B58(v15, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v60, &qword_100944128, &qword_1007A4890);
  v61 = sub_100455978(v14);
  v63 = v62;

  v64 = v74[5];
  v65 = v74[6];
  sub_10000F61C(v74 + 2, v64);
  (*(v65 + 8))(v61, v63, v64, v65);
  return sub_10001BBA0(v61, v63);
}

void *sub_100454C38()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000F61C(v0 + 2, v1);
  v3 = (*(v2 + 16))(v1, v2);
  if (v4 >> 60 == 15)
  {
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_1009477C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No stored checkIns -- returning empty array", v8, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v12 = sub_1004553B8();
    sub_100031A14(v9, v10);
    return v12;
  }
}

uint64_t sub_100454EF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (v4 < 0)
    {
      v13 = *a1;
    }

    else
    {
      v13 = *a1 & 0xFFFFFFFFFFFFFF8;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result == 2)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v7 = *(v4 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v20[0] = v7;
      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      throwingCast<A>(_:as:failureMessage:)();
      result = sub_10000607C(v20);
      if (v2)
      {
        return result;
      }

      v8 = v22;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
        ObjectType = swift_getObjectType();
        v20[0] = v9;
        sub_1000060C8(0, &qword_100947898, NSDate_ptr);
        throwingCast<A>(_:as:failureMessage:)();
        sub_10000607C(v20);
        v10 = v22;
        v11 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
        v12 = *(v11 + 48);
        *a2 = v8;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v9 = *(v4 + 40);
        swift_unknownObjectRetain();
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_1009361B0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_1009477C8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (v5)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected count for checkIn {count: %ld}", v17, 0xCu);
  }

  else
  {
  }

  v19 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

void sub_100455264()
{
  v1 = *v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setUserInteractionsData:isa];
}

uint64_t sub_1004552BC()
{
  v1 = [*v0 userInteractionsData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100455348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1004553B8()
{
  v1 = sub_1000F5104(&qword_100947880, &qword_1007AA7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v30 - v3);
  v5 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  sub_1000060C8(0, &qword_100946F90, NSKeyedUnarchiver_ptr);
  sub_1000F5104(&qword_100947888, &qword_1007AA7D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791320;
  *(v12 + 32) = sub_1000060C8(0, &qword_100947890, NSArray_ptr);
  *(v12 + 40) = sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
  *(v12 + 48) = sub_1000060C8(0, &qword_100947898, NSDate_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v13 = v0;
  if (v0)
  {

    if (qword_1009361B0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v31 = v11;
  v14 = v35;
  v34 = v9;

  sub_1000F5104(&qword_1009478A0, qword_1007AA7E0);
  throwingCast<A>(_:as:failureMessage:)();
  v13 = v37;
  v33 = *(v37 + 16);
  if (v33)
  {
    v25 = 0;
    v26 = (v14 + 48);
    v23 = _swiftEmptyArrayStorage;
    v32 = v5;
    v27 = v31;
    while (v25 < *(v13 + 16))
    {
      v37 = *(v13 + 8 * v25 + 32);

      sub_100454EF4(&v37, v4);

      if ((*v26)(v4, 1, v5) == 1)
      {
        sub_1000050A4(v4, &qword_100947880, &qword_1007AA7D0);
      }

      else
      {
        sub_100031B58(v4, v27, &qword_100944128, &qword_1007A4890);
        sub_100031B58(v27, v34, &qword_100944128, &qword_1007A4890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100367734(0, v23[2] + 1, 1, v23);
        }

        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          v23 = sub_100367734(v28 > 1, v29 + 1, 1, v23);
        }

        v23[2] = v29 + 1;
        sub_100031B58(v34, v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, &qword_100944128, &qword_1007A4890);
        v5 = v32;
      }

      if (v33 == ++v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_5:
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009477C8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136446210;
      v37 = v13;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v20 = String.init<A>(describing:)();
      v22 = sub_10000668C(v20, v21, v36);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decoded encoded CheckIns -- return empty array {error: %{public}s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    return _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_21:

  sub_1000050A4(v36, &qword_100939ED0, &qword_100791B10);
  return v23;
}

uint64_t sub_100455978(uint64_t a1)
{
  v46 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v46);
  v45 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v44 = v40 - v8;
  __chkstk_darwin(v7);
  v43 = v40 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v40[1] = v1;
    v50 = _swiftEmptyArrayStorage;
    sub_100253988(0, v10, 0);
    v11 = v50;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v42 = *(v3 + 72);
    v41 = xmmword_100796900;
    do
    {
      v48 = v10;
      v13 = v43;
      sub_100455348(v12, v43);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v14 = swift_allocObject();
      *(v14 + 16) = v41;
      v15 = v44;
      sub_100455348(v13, v44);
      v16 = *v15;
      v18 = v45;
      v17 = v46;
      v47 = *(v46 + 48);
      *(v14 + 32) = v16;
      sub_100455348(v13, v18);

      v19 = *(v17 + 48);
      *(v14 + 40) = Date._bridgeToObjectiveC()();
      sub_1000050A4(v13, &qword_100944128, &qword_1007A4890);
      v20 = type metadata accessor for Date();
      v21 = *(*(v20 - 8) + 8);
      v21(v18 + v19, v20);
      v21(&v15[v47], v20);
      v50 = v11;
      v23 = v11[2];
      v22 = v11[3];
      if (v23 >= v22 >> 1)
      {
        sub_100253988((v22 > 1), v23 + 1, 1);
        v11 = v50;
      }

      v11[2] = v23 + 1;
      v11[v23 + 4] = v14;
      v12 += v42;
      v10 = v48 - 1;
    }

    while (v48 != 1);
  }

  v24 = objc_opt_self();
  sub_1000F5104(&qword_10093EE80, &unk_10079D630);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v50 = 0;
  v26 = [v24 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v50];

  v27 = v50;
  if (v26)
  {
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v29 = v27;
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1009361B0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_1009477C8);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v30;
      v50 = v35;
      *v34 = 136446210;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000668C(v36, v37, &v50);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to encode checkIns -- encodging empty array {error: %{public}s}", v34, 0xCu);
      sub_10000607C(v35);
    }

    else
    {
    }

    return 0;
  }

  return v28;
}

unint64_t sub_100455E78()
{
  result = qword_100937010;
  if (!qword_100937010)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937010);
  }

  return result;
}

void sub_100455ED0()
{
  sub_100456B58();
  sub_100456D80();
  sub_1004575BC();
  sub_100457C7C();
  sub_1004584A4();
  sub_100458770();
  sub_1000F5104(&qword_100947940, &qword_1007AA858);
  sub_1000F5104(&qword_100947948, &qword_1007AA860);
  sub_10000CB48(&qword_100947950, &qword_100947948, &qword_1007AA860);
  static Promise.all<A>(_:)();

  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_1004561A4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009478A8);
  v1 = sub_100006654(v0, qword_1009478A8);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_10045626C()
{
  result = String._bridgeToObjectiveC()();
  qword_100974E90 = result;
  return result;
}

uint64_t sub_100456614(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v20[1] = *&v1[OBJC_IVAR___RDAccountInitializerDidCompleteInitializeAllAccountsObserver_queue];
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_10045B524;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2888;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

id sub_100456AAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100456B58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController) inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v1)
  {
    v2 = v1;
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_1009478A8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[4] = v2;
      v13 = v8;
      *v7 = 136446210;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v9 = Optional.descriptionOrNil.getter();
      v11 = sub_10000668C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDAccountInitializer: No need to update in-memory PrimaryActiveCKAccountCaches {current: %{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  else
  {
    v14[0] = 0xD000000000000028;
    v14[1] = 0x80000001007F8D00;
    v14[3] = 0;
    v15[0] = 0;
    v14[2] = 0;
    *(v15 + 6) = 0;
    __chkstk_darwin(0);
    v12[2] = v0;
    sub_100014A64(v14, sub_10045B508, v12);
  }
}

uint64_t sub_100456D80()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v66 = 0;
  v61 = v3;
  v4 = [v3 fetchAccountsWithError:&v66];
  v5 = v66;
  if (!v4)
  {
    v23 = v66;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v6 = v4;
  sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  v66 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = v2;
    v10 = 0;
    v11 = v7 & 0xC000000000000001;
    v2 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v64 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v11)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v13 v12[269]] == 1)
      {
        v16 = i;
        v17 = v7;
        v18 = [v14 objectID];
        v19 = [objc_opt_self() localAccountID];
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = v66[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v7 = v17;
        i = v16;
        v2 = v64;
        v12 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      }

      else
      {
      }

      ++v10;
      if (v15 == i)
      {
        v22 = v66;
        v2 = v62;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_23:

  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_1009478A8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_31;
  }

  v28 = swift_slowAlloc();
  *v28 = 134217984;
  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v29 = *(v22 + 16);
  while (1)
  {
    *(v28 + 4) = v29;
    v30 = v28;

    _os_log_impl(&_mh_execute_header, v26, v27, "Removing Extraneous Local Accounts {candidateAccounts.count: %ld}", v30, 0xCu);

LABEL_31:

    v31 = *(v22 + 16);
    if (!v31)
    {
    }

LABEL_34:
    if (v31 >= 1)
    {
      v32 = 0;
      v63 = v22 & 0xC000000000000001;
      v65 = v22;
      while (1)
      {
        if (v63)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v22 + 8 * v32 + 32);
        }

        v38 = v37;
        v39 = REMAccount.isConsideredEmpty()();
        if (v40)
        {
          goto LABEL_42;
        }

        v44 = v39;
        v45 = v38;
        v42 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        v47 = os_log_type_enabled(v42, v46);
        if (!v44)
        {
          if (v47)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v54 = 138543618;
            v56 = [v45 objectID];
            *(v54 + 4) = v56;
            *(v54 + 12) = 2112;
            *(v54 + 14) = v45;
            *v55 = v56;
            v55[1] = v45;
            v57 = v45;
            _os_log_impl(&_mh_execute_header, v42, v46, "Extraneous Local Account is not empty. Not Removing {accountObjID: %{public}@, account: %@}", v54, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v42 = v57;
          }

          else
          {
          }

          goto LABEL_37;
        }

        if (v47)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138543618;
          v50 = [v45 objectID];
          *(v48 + 4) = v50;
          *(v48 + 12) = 2112;
          *(v48 + 14) = v45;
          *v49 = v50;
          v49[1] = v45;
          v51 = v45;
          _os_log_impl(&_mh_execute_header, v42, v46, "Extraneous Local Account is empty. Removing {accountObjID: %{public}@, account: %@}", v48, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        type metadata accessor for Analytics();
        static Analytics.postEvent(_:payload:duration:)();
        v52 = [objc_allocWithZone(REMSaveRequest) initWithStore:v61];
        v42 = [v52 updateAccount:v45];
        [v42 removeFromStore];
        v66 = 0;
        if (![v52 saveSynchronouslyWithError:&v66])
        {
          break;
        }

        v53 = v66;

LABEL_37:
        v22 = v65;
        ++v32;

        if (v31 == v32)
        {
        }
      }

      v58 = v66;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_42:
      v41 = v38;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543618;
        v35 = [v41 objectID];
        *(v33 + 4) = v35;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v41;
        *v34 = v35;
        v34[1] = v41;
        v36 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Failed to query whether Extraneous Local Account is empty. Skipping {accountObjID: %{public}@, account: %@}", v33, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_56:
    v59 = v2;
    v60 = v28;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v60;
    v2 = v59;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v28;
  if (v28)
  {
    goto LABEL_34;
  }
}

void sub_1004575BC()
{
  if (![*(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController) supportsLocalInternalAccount])
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_1009478A8);
    v1 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v6, "StoreController not supportsLocalInternalAccount. Skipping initializeLocalInternalAccountIfNeeded", v7, 2u);
    }

    goto LABEL_27;
  }

  v1 = [objc_opt_self() localInternalAccountID];
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v43 = 0;
  v3 = [v2 fetchAccountWithObjectID:v1 error:&v43];
  if (v3)
  {
    v4 = v43;
    goto LABEL_14;
  }

  v8 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v9 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 __addAccountWithType:5 name:v10 accountObjectID:v1];

  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_1009478A8);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "RDAccountInitializer: Creating localInternal account {accountChangeItem: %@}", v16, 0xCu);
    sub_100039860(v17);
  }

  v43 = 0;
  if ([v9 saveSynchronouslyWithError:&v43])
  {
    v19 = v43;

LABEL_14:
    v13 = [objc_opt_self() siriFoundInAppsListID];
    v43 = 0;
    v20 = [v2 fetchListWithObjectID:v13 error:&v43];
    if (v20)
    {
      v21 = v20;
      v22 = v43;

      return;
    }

    v23 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v9 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v43 = 0;
    v24 = [v2 fetchAccountWithObjectID:v1 error:&v43];
    if (v24)
    {
      v25 = v24;
      v26 = v43;
      v27 = [v9 updateAccount:v25];
      v28 = String._bridgeToObjectiveC()();
      v42 = v27;
      v29 = [v9 addListWithName:v28 toAccountChangeItem:v27 listObjectID:v13];

      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006654(v30, qword_1009478A8);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v41 = v25;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "RDAccountInitializer: Creating SiriFoundInApps list {listChangeItem: %@}", v34, 0xCu);
        sub_100039860(v35);

        v25 = v41;
      }

      v43 = 0;
      if ([v9 saveSynchronouslyWithError:&v43])
      {
        v37 = v43;

        return;
      }

      v40 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v9 = v31;
    }

    else
    {
      v39 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_26;
  }

  v38 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_26:

LABEL_27:
}

void sub_100457C7C()
{
  v1 = [objc_opt_self() localAccountID];
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v57 = 0;
  v3 = [v2 fetchAccountWithObjectID:v1 error:&v57];
  if (v3)
  {
    v4 = v3;
    v5 = v57;
  }

  else
  {
    v12 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v13 = _REMGetLocalizedString();
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = [v4 _addLocalAccountWithName:v13 accountObjectID:v1];

    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009478A8);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDAccountInitializer: Creating local account {changeItem: %@}", v19, 0xCu);
      sub_100039860(v20);
    }

    v57 = 0;
    v22 = [v4 saveSynchronouslyWithError:&v57];
    v23 = v57;
    if (!v22)
    {
      v29 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_20;
    }

    v57 = 0;
    v24 = v23;
    v25 = [v2 fetchAccountWithObjectID:v1 error:&v57];
    if (!v25)
    {
      v42 = v57;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v4 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v43))
      {
LABEL_7:

LABEL_8:
        return;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v4, v43, "RDAccountInitializer: No local account is found or created", v44, 2u);

      goto LABEL_21;
    }

    v26 = v25;
    v27 = v57;

    v4 = v26;
  }

  v57 = 0;
  v6 = [v4 fetchListsWithError:&v57];
  v7 = v57;
  if (!v6)
  {
    v28 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = v1;
LABEL_20:

LABEL_21:
    return;
  }

  v8 = v6;
  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v7;

  if (v9 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    goto LABEL_7;
  }

  v30 = [objc_opt_self() localAccountDefaultListID];
  v57 = 0;
  v31 = [v2 fetchListWithObjectID:v30 error:&v57];
  if (!v31)
  {
    v45 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:v2];
    v46 = [v16 updateAccount:v4];
    v47 = _REMGetLocalizedString();
    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_1009478A8);
    v49 = v1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "RDAccountInitializer: Creating default list for local account {accountID: %{public}@}", v52, 0xCu);
      sub_100039860(v53);
    }

    v57 = 0;
    if ([v16 saveSynchronouslyWithError:&v57])
    {
      v55 = v57;

      return;
    }

    v56 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = v46;
    goto LABEL_20;
  }

  v32 = v31;
  v33 = qword_1009361B8;
  v34 = v57;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_1009478A8);
  v36 = v30;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.fault.getter();

  if (!os_log_type_enabled(v37, v38))
  {

    goto LABEL_8;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  *v39 = 138543362;
  *(v39 + 4) = v36;
  *v40 = v36;
  v41 = v36;
  _os_log_impl(&_mh_execute_header, v37, v38, "RDAccountInitializer: This should never happen: the store told us there's no lists in this account but we did find a list with the default list ID {listID: %{public}@}", v39, 0xCu);
  sub_100039860(v40);
}

void *sub_1004584A4()
{
  if ([*&v0[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] hasPassedBuddyAndSystemDataMigrator])
  {
    v19 = _swiftEmptyArrayStorage;
    v1 = [*&v0[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts];
    sub_1000060C8(0, &qword_100947960, ACAccount_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = v0;
    sub_10045AF7C(v2, v3, &v19);

    if (v2 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4)
    {
      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_1009478A8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountInitializer: No iCloud account signed in or not enabled Reminders.", v8, 2u);
      }
    }

    return v19;
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_1009478A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDAccountInitializer: Not handling account data moves because we have not passed buddy or system data migrator", v13, 2u);
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007953F0;
    v15 = sub_1000F5104(&qword_100947940, &qword_1007AA858);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = Promise.init(value:)();
    result = v14;
    *(v14 + 32) = v18;
  }

  return result;
}

void sub_100458770()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v2 = [objc_opt_self() localAccountID];
  v29 = 0;
  v3 = [v1 fetchAccountWithObjectID:v2 error:&v29];

  v4 = v29;
  if (v3)
  {
    v29 = 0;
    v5 = v4;
    v6 = [v1 fetchAccountsWithError:&v29];
    v7 = v29;
    if (v6)
    {
      v8 = v6;
      sub_1000060C8(0, &qword_100947958, REMAccount_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v7;

      if (v9 >> 62)
      {
LABEL_35:
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = 0;
      while (v11 != v12)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v15 = [v13 accountTypeHost];
        v16 = [v15 isCloudBased];

        ++v12;
        if (v16)
        {

          if (qword_1009361B8 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_100006654(v23, qword_1009478A8);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "RDAccountInitializer: updateLocalAccountActiveStatus: Let's ensure local account is inactive (if empty) as we have some cloud accounts.", v26, 2u);
          }

          if (![v3 inactive])
          {
            v27 = REMAccount.isConsideredEmpty()();
            if (!v28 && v27)
            {
              sub_10045ACA4(1, v3);
            }
          }

          goto LABEL_22;
        }
      }

      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_1009478A8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountInitializer: updateLocalAccountActiveStatus: Let's ensure local account is active as there's no cloud account signed in.", v22, 2u);
      }

      if ([v3 inactive])
      {
        sub_10045ACA4(0, v3);
      }
    }

    else
    {
      v18 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_22:
  }

  else
  {
    v17 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100458BC0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = &_swiftEmptyDictionarySingleton;
    swift_errorRetain();
    swift_errorRetain();
    sub_10031E1BC(a1, 0x726F727265, 0xE500000000000000);
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009478A8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "RDAccountInitializer: Posting notification initialized all accounts failed.", v10, 2u);
    }

    v11 = [objc_opt_self() defaultCenter];
    sub_10045C7C4(v22);

    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v23 = 0u;
    v24 = 0u;
    v12 = qword_100974E90;
    Notification.init(name:object:userInfo:)();
    v13.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v6, v2);
    [v11 postNotification:v13.super.isa];
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_1009478A8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountInitializer: Posting notification initialized all accounts done.", v17, 2u);
    }

    v18 = [objc_opt_self() defaultCenter];
    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v23 = 0u;
    v24 = 0u;
    v19 = qword_100974E90;
    Notification.init(name:object:userInfo:)();
    v13.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v6, v2);
    [v18 postNotification:v13.super.isa];
  }

  return notify_post(_REMStoreDidCompleteInitializeAllAccounts);
}

void sub_100458FBC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults);
  v4 = [v3 acAccountIdentifiersToMigrateInactivatedCalDavData];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {

LABEL_10:
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_1009478A8);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: No need to 'migrate' inactivated CalDAV data as no signal flag is set.", v21, 2u);
    }

    return;
  }

  v7 = [a1 displayAccount];
  if (!v7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [v7 identifier];

  if (!v9)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = sub_1001A5660(v6);

  v37 = v13;

  v14 = sub_100240BDC(v10, v12, v13);

  if (v14)
  {
    v15 = v1;
    sub_10019EC58(v10, v12);

    isa = *(v37 + 16);
    if (!isa)
    {

      goto LABEL_24;
    }

    v17 = sub_1003689CC(*(v37 + 16), 0);
    v18 = sub_1002791DC(&v36, v17 + 4, isa, v37);
    sub_10001B860();
    if (v18 == isa)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_24:
      [v3 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

      if (qword_1009361B8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_1009478A8);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_10000668C(v10, v12, &v36);
        _os_log_impl(&_mh_execute_header, v29, v30, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: AccountUtil has set the flag indicating we should try to 'migrate' inactivated CalDAV data to CloudKit if any {aaAccountIdentifier: %{public}s}.", v31, 0xCu);
        sub_10000607C(v32);
      }

      v33 = *(v15 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
      type metadata accessor for RDAccountUtils.InactivatedICloudCalDavDataMover();
      *(swift_initStackObject() + 16) = v33;
      v34 = v33;
      sub_1006BDB08(a1, 0);

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_1009478A8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136446210;
    v27 = sub_10000668C(v10, v12, &v36);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "RDAccountInitializer: migrateInactivatedCalDavDataIfNeeded: No need to 'migrate' inactivated CalDAV data no signal flag is set for account %{public}s.", v25, 0xCu);
    sub_10000607C(v26);
  }

  else
  {
  }
}

void sub_100459940(void *a1)
{
  v3 = [a1 displayAccount];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 identifier];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v1 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store);
  v10 = sub_1006C0790(a1, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(REMSaveRequest) initWithStore:v9];
    v13 = [v12 updateAccount:v11];
    __chkstk_darwin([v13 removeFromStore]);
    v14 = sub_1000F5104(&qword_100947940, &qword_1007AA858);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    Promise.init(resolver:)();
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_1009478A8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      v22 = sub_10000668C(v6, v8, &v26);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded: There's no inactivated CalDAV account store to remove, we're done {appleAccountIdentifier: %{public}s}.", v20, 0xCu);
      sub_10000607C(v21);
    }

    else
    {
    }

    v23 = sub_1000F5104(&qword_100947940, &qword_1007AA858);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    Promise.init(value:)();
  }
}

void sub_100459C20(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults];
  v5 = [v4 acAccountIdentifierToMergeLocalDataIntoSyncData];
  if (!v5)
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009478A8);
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v22, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: Data move not needed as no merge action flag was not set by the DCO.", v23, 2u);
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  [v4 setAcAccountIdentifierToMergeLocalDataIntoSyncData:0];
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_1009478A8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000668C(v7, v9, &v38);
    _os_log_impl(&_mh_execute_header, v11, v12, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: DCO has set the merge action flag asking us to move data to cloud, let's move on... {flagged: %{public}s}", v13, 0xCu);
    sub_10000607C(v14);
  }

  v15 = [a1 displayAccount];
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;
  v17 = [v15 identifier];

  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == v7 && v20 == v9)
  {

LABEL_16:
    v25 = *&v2[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store];
    type metadata accessor for RDAccountUtils.LocalDataToICloudMover();
    *(swift_initStackObject() + 16) = v25;
    v26 = v25;
    sub_1006BECA8(a1);

    return;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_16;
  }

  v2 = a1;
  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v28 = 136446466;
    v29 = sub_10000668C(v7, v9, &v38);

    *(v28 + 4) = v29;
    *(v28 + 12) = 2082;
    v30 = [v2 displayAccount];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 identifier];

      if (v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v38);

        *(v28 + 14) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v27, "RDAccountInitializer: moveLocalDataToCloudAccountIfNeeded: The DCO flagged identifier is not the same as that of the current primary iCloud account. Something went wrong or we've found a race condition, don't move data {flagged: %{public}s, primary: %{public}s}.", v28, 0x16u);
        swift_arrayDestroy();

        return;
      }

      goto LABEL_28;
    }

LABEL_27:

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

LABEL_22:
}

void sub_10045A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_100935D30;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_100974CC8;
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a8;
  v19[7] = sub_10045B4C4;
  v19[8] = v16;
  v22[4] = sub_10045B4EC;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100042968;
  v22[3] = &unk_1008F27E8;
  v20 = _Block_copy(v22);

  v21 = a8;

  [a5 saveWithQueue:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_10045A614(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6, uint64_t (*a7)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_1009478A8);
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v14 = 136315394;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter();
      v17 = sub_10000668C(v15, v16, &v30);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_10000668C(a2, a3, &v30);
      _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded save failed {error: %s, appleAccountIdentifier: %{public}s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    a4(a1);
  }

  else
  {
    if (qword_1009361B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009478A8);

    v22 = a6;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = a2;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v25 = 138543618;
      v29 = [v22 remObjectID];
      *(v25 + 4) = v29;
      *v27 = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_10000668C(v26, a3, &v30);
      _os_log_impl(&_mh_execute_header, v23, v24, "RDAccountInitializer: removeInactivatedCalDavAccountIfNeeded: Removed inactivated CalDAV account store {remAccountObjID: %{public}@, appleAccountIdentifier: %{public}s}.", v25, 0x16u);
      sub_100039860(v27);

      sub_10000607C(v28);
    }

    return a7();
  }
}

void sub_10045A990(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a1];
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_1009478A8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136446466;
    if (v5)
    {
      v9 = [v5 remObjectID];
    }

    else
    {
      v9 = 0;
    }

    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v10 = Optional.descriptionOrNil.getter();
    v12 = v11;

    v13 = sub_10000668C(v10, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    if (v5)
    {
      v14 = [v5 objectID];
    }

    else
    {
      v14 = 0;
    }

    sub_1000F5104(&qword_100947968, &qword_1007AA868);
    v15 = Optional.descriptionOrNil.getter();
    v17 = v16;

    v18 = sub_10000668C(v15, v17, &v22);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountInitializer: Calling updateInMemoryPrimaryActiveCKAccountCachesIfNeeded with {remObjectID: %{public}s, managedObjectID: %{public}s}", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(a2 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController);
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v20 = qword_1009752E8;
  if (qword_1009367E0 != -1)
  {
    v21 = qword_1009752E8;
    swift_once();
    v20 = v21;
  }

  sub_1003A9DBC(v5, v20, qword_1009752F0);
}

void sub_10045ACA4(char a1, void *a2)
{
  v3 = v2;
  if (qword_1009361B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009478A8);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v10 = 138543618;
    v12 = [v7 objectID];
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2082;
    if (a1)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    v14 = v7;
    if (a1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = a1;
    v17 = v3;
    v18 = sub_10000668C(v13, v15, &v24);
    v7 = v14;

    *(v10 + 14) = v18;
    v3 = v17;
    a1 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAccountInitializer: Setting account inactive value {accountID: %{public}@, inactive: %{public}s}", v10, 0x16u);
    sub_100039860(v11);

    sub_10000607C(v23);
  }

  v19 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + OBJC_IVAR____TtC7remindd20RDAccountInitializer_store)];
  v20 = [v19 updateAccount:v7];
  [v20 setInactive:a1 & 1];
  v24 = 0;
  if ([v19 saveSynchronouslyWithError:&v24])
  {
    v21 = v24;
  }

  else
  {
    v22 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_10045AF7C(unint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v10 = AAAccountClassPrimary;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_100458FBC(v7);
        sub_100459940(v8);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if ([v8 aa_isAccountClass:v10])
        {
          sub_100459C20(v8);
        }

        ++v6;
        if (v9 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10045B10C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v10);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  aBlock[4] = sub_10045B500;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2838;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

uint64_t sub_10045B4C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10045B524()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = *(v0 + 16) + OBJC_IVAR___RDAccountInitializerDidCompleteInitializeAllAccountsObserver_handler;
  v4 = *v2;
  v3 = *(v2 + 8);
  return v4(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
}

void sub_10045B59C()
{
  v1 = *(v0 + 16);
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10045B608(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v6 = *(*(a1 + 88) + 8);
    swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for Optional();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v11 = *(v7 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t sub_10045B758(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;
    v17 = v16;

    swift_dynamicCast();
    sub_1000F5104(&unk_100950C10, &unk_1007AAB68);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100005EE0(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_100005EE0(v32, v33);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v7[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v7[v20];
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~v7[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_100005EE0(v33, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10045BA24(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptyDictionarySingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = (v3 + 8);

  v15 = 0;
  v34 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v26 = __CocoaDictionary.Iterator.next()();
    if (!v26 || (*&v35 = v26, sub_1000060C8(0, &qword_100945FC0, NSObject_ptr), swift_dynamicCast(), v25 = v39, v19 = v15, v21 = v7, !v39))
    {
LABEL_34:
      sub_10001B860();

      return v3;
    }

LABEL_25:
    *&v43[0] = v25;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    swift_dynamicCast();
    swift_dynamicCast();
    v39 = v35;
    v40 = v36;
    v41 = v37;
    sub_100005EE0(&v38, v42);
    v35 = v39;
    v36 = v40;
    v37 = v41;
    sub_100005EE0(v42, v43);
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v27 = -1 << *(v3 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*&v13[8 * (v28 >> 6)]) != 0)
    {
      v16 = __clz(__rbit64((-1 << v28) & ~*&v13[8 * (v28 >> 6)])) | v28 & 0x7FFFFFFFFFFFFFC0;
      v8 = v34;
    }

    else
    {
      v30 = 0;
      v31 = (63 - v27) >> 6;
      v8 = v34;
      do
      {
        if (++v29 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        v33 = *&v13[8 * v29];
      }

      while (v33 == -1);
      v16 = __clz(__rbit64(~v33)) + (v29 << 6);
    }

    *&v13[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v17 = v3[6] + 40 * v16;
    *v17 = v35;
    *(v17 + 16) = v36;
    *(v17 + 32) = v37;
    result = sub_100005EE0(v43, (v3[7] + 32 * v16));
    ++v3[2];
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_21:
    v21 = (v18 - 1) & v18;
    v22 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v23 = *(*(v8 + 48) + v22);
    v24 = *(*(v8 + 56) + v22);
    v25 = v23;
    swift_unknownObjectRetain();
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_34;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v34;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10045BDE8(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = _swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  if (!__CocoaDictionary.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_100947C40, &unk_1007AAB78);
  v3 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) != &type metadata for String)
  {
    if (v2)
    {
      v4 = __CocoaDictionary.makeIterator()();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v17 = (v6 + 64) >> 6;
    v18 = v3 + 8;

    v19 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v30 = __CocoaDictionary.Iterator.next()();
        if (!v30)
        {
          goto LABEL_61;
        }

        v66 = v30;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        swift_dynamicCast();
        v29 = v66;
        v28 = v68;
        v23 = v19;
        v25 = v7;
        if (!v68)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v22 = v7;
        v23 = v19;
        if (!v7)
        {
          v24 = v19;
          while (1)
          {
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v23 >= v17)
            {
              goto LABEL_61;
            }

            v22 = *(v5 + 8 * v23);
            ++v24;
            if (v22)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_25:
        v25 = (v22 - 1) & v22;
        v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v8 + 56) + v26);
        v28 = *(*(v8 + 48) + v26);
        v29 = v27;
        if (!v28)
        {
          goto LABEL_61;
        }
      }

      v31 = NSObject._rawHashValue(seed:)(v3[5]);
      v32 = -1 << *(v3 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~v18[v33 >> 6]) != 0)
      {
        v20 = __clz(__rbit64((-1 << v33) & ~v18[v33 >> 6])) | v33 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        do
        {
          if (++v34 == v36 && (v35 & 1) != 0)
          {
            __break(1u);
            goto LABEL_63;
          }

          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = v18[v34];
        }

        while (v38 == -1);
        v20 = __clz(__rbit64(~v38)) + (v34 << 6);
      }

      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v3[6] + 8 * v20) = v28;
      v21 = (v3[7] + 16 * v20);
      *v21 = v29;
      v21[1] = &off_1008F1860;
      ++v3[2];
      v19 = v23;
      v7 = v25;
    }
  }

  if (v2)
  {
    v9 = __CocoaDictionary.makeIterator()();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(a1 + 32);
    v11 = ~v39;
    v10 = a1 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v12 = v41 & *(a1 + 64);
    v13 = a1;
  }

  v42 = (v11 + 64) >> 6;

  v43 = 0;
  for (j = v13; ; v13 = j)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v57 = __CocoaDictionary.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }

      v67 = v57;
      swift_dynamicCast();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      swift_dynamicCast();
      v56 = v67;
      v55 = v68;
      v50 = v43;
      v52 = v12;
      if (!v68)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v49 = v12;
      v50 = v43;
      if (!v12)
      {
        v51 = v43;
        while (1)
        {
          v50 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_64;
          }

          if (v50 >= v42)
          {
            break;
          }

          v49 = *(v10 + 8 * v50);
          ++v51;
          if (v49)
          {
            v13 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        sub_10001B860();

        return;
      }

LABEL_53:
      v52 = (v49 - 1) & v49;
      v53 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
      v54 = *(*(v13 + 56) + v53);
      v55 = *(*(v13 + 48) + v53);
      v56 = v54;
      if (!v55)
      {
        goto LABEL_61;
      }
    }

    v58 = sub_10002B924(v55);
    if (v59)
    {
      v44 = v3[6];
      v45 = *(v44 + 8 * v58);
      *(v44 + 8 * v58) = v55;
      v46 = v58;

      v47 = v3[7] + 16 * v46;
      v48 = *v47;
      *v47 = v56;
      *(v47 + 8) = &off_1008F1860;

      goto LABEL_45;
    }

    if (v3[2] >= v3[3])
    {
      goto LABEL_65;
    }

    *(v3 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v58;
    *(v3[6] + 8 * v58) = v55;
    v60 = (v3[7] + 16 * v58);
    *v60 = v56;
    v60[1] = &off_1008F1860;
    v61 = v3[2];
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      break;
    }

    v3[2] = v63;
LABEL_45:
    v43 = v50;
    v12 = v52;
  }

LABEL_66:
  __break(1u);
}

unint64_t sub_10045C388(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100942EF8, &unk_1007A3988);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v20 = *v19;
        v21 = v19[1];
        v28 = &type metadata for String;
        v29 = &protocol witness table for String;
        *&v27 = v20;
        *(&v27 + 1) = v21;
        sub_100054B6C(&v27, v31);
        sub_100054B6C(v31, v32);
        sub_100054B6C(v32, &v30);

        result = sub_100005F4C(v18, v17);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          sub_10000607C(v12);
          result = sub_100054B6C(&v30, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v18;
          v23[1] = v17;
          result = sub_100054B6C(&v30, v2[7] + 40 * result);
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10045C5E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_100005F4C(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10045C7C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_errorRetain();
    swift_dynamicCast();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100005EE0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100005EE0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100005EE0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10045CA90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100005EF0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100005EE0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100005EE0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100005EE0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100005EE0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10045CD58()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable);
  v3[4] = &off_1008EAC00;
  v3[5] = &off_1008EAC10;
  v3[3] = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  v3[0] = v1;

  sub_1004601C4(v3);
  return sub_10000607C(v3);
}

uint64_t sub_10045CDE0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v5);
  sub_10050BBA8(v5, a1, *(a2 + 8));
  return sub_10000607C(v5);
}

uint64_t sub_10045CE54()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable);
  v3[4] = &off_1008EB370;
  v3[5] = &off_1008EB380;
  v3[3] = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  v3[0] = v1;

  sub_10045FE38(v3, &OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter);
  return sub_10000607C(v3);
}

uint64_t sub_10045CEE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable);
  v4[4] = &off_1008F16E0;
  v4[5] = &off_1008F16F0;
  v4[3] = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  v4[0] = v1;
  v2 = v1;
  sub_10045FE38(v4, &OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter);
  return sub_10000607C(v4);
}

uint64_t sub_10045CF70()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947970);
  v1 = sub_100006654(v0, qword_100947970);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10045D038()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 24);
  aBlock[4] = sub_1004646C8;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2B28;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t *sub_10045D2BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 88) + 8);
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v20 - v8;
  v10 = *(v2 + 136);
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v10, 1, AssociatedTypeWitness))
  {
    (*(v6 + 16))(v9, v1 + v10, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v12 = *(*v1 + 160);
  if (*(v1 + v12))
  {
    v13 = *(v1 + v12);

    AnyCancellable.cancel()();
  }

  v14 = v1[2];

  (*(*(v4 - 8) + 8))(v1 + *(*v1 + 128), v4);
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 8))(v1 + v10, v15);
  v16 = *(v1 + *(*v1 + 144) + 8);

  v17 = v1 + *(*v1 + 152);
  sub_10000CC4C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40) | (*(v17 + 44) << 32));
  v18 = *(v1 + v12);

  return v1;
}

uint64_t sub_10045D5AC()
{
  sub_10045D2BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10045D61C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1[2] + 16))
  {
    if (qword_1009361C8 == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100947970);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "RDHousekeepingActivityScheduler: Starting", v13, 2u);
      }

      v14 = sub_10045F100();
      v15 = *(*v1 + 160);
      v16 = *(v1 + v15);
      *(v1 + v15) = v14;

      sub_10045D8C4(v17);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100947970);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDHousekeepingActivityScheduler: No activities registered, we are not starting", v21, 2u);
  }
}

void sub_10045D8C4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v47 = &v41 - v5;
  v7 = *(v6 + 88);
  v45 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for Optional();
  v50 = *(v48 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 3);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v22 = v7;
  v23 = *(*v1 + 136);
  swift_beginAccess();
  v24 = v50;
  v25 = v48;
  (*(v50 + 16))(v12, &v1[v23], v48);
  v26 = *(AssociatedTypeWitness - 8);
  v27 = (*(v26 + 48))(v12, 1);
  (*(v24 + 8))(v12, v25);
  if (v27 == 1)
  {
    v28 = *(v1 + 2);
    (*(v3 + 16))(v47, &v1[*(*v1 + 128)], v2);
    v43 = *(v1 + 4);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v44 = v23;
    v31 = v30;
    v30[2] = v2;
    v30[3] = v22;
    v30[4] = v29;
    v30[5] = v28;
    v32 = v45;
    v42 = *(v45 + 24);

    v33 = v46;
    v34 = v1;
    v35 = v47;
    v42(v43, sub_1004646A8, v31, v2, v32);

    (*(v3 + 8))(v35, v2);

    (*(v26 + 56))(v33, 0, 1, AssociatedTypeWitness);
    v36 = v44;
    swift_beginAccess();
    (*(v50 + 40))(&v34[v36], v33, v48);
    swift_endAccess();
    sub_10045E6CC();
    return;
  }

  if (qword_1009361C8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v37 = type metadata accessor for Logger();
  sub_100006654(v37, qword_100947970);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "RDHousekeepingActivityScheduler: Unexpectedly having an existing non-nil backgroundScheduler when trying to create and schedule a new one", v40, 2u);
  }
}

uint64_t sub_10045DE3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10045DEB0();
  }

  return result;
}

void sub_10045DEB0()
{
  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100947970);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDHousekeepingActivityScheduler: Running scheduled background activity", v3, 2u);
  }

  __chkstk_darwin(v4);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:timeElapsedInMilliseconds:level:block:)();
  if (0.0 > 10000.0)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDHousekeepingActivityScheduler: Running scheduled background activity took %f ms", v7, 0xCu);
    }
  }
}

uint64_t sub_10045E0AC(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(&v24, ObjectType, v1);
  if (v25)
  {
    sub_100054B6C(&v24, v26);
    type metadata accessor for RDHousekeepingActivityScheduler.RateReducer();
    sub_10000A87C(v26, &v24);
    swift_allocObject();
    sub_10045F7C8(&v24);
    v4 = sub_10045FA08();

    if (v4)
    {
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_100947970);
      v6 = v2;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v24 = v10;
        *v9 = 136315138;
        v26[6] = v6;
        v11 = (*(*(v1 + 16) + 16))(ObjectType);
        v13 = sub_10000668C(v11, v12, &v24);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "RDHousekeepingActivityScheduler: activity %s randomly disallowed by rate reducer", v9, 0xCu);
        sub_10000607C(v10);
      }

      sub_10000607C(v26);
      return 0;
    }

    sub_10000607C(v26);
  }

  else
  {
    sub_1000050A4(&v24, &unk_10093E4F0, &qword_1007A9640);
  }

  if ((*(v1 + 56))(ObjectType, v1))
  {
    return 1;
  }

  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100947970);
  v16 = v2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315138;
    *&v24 = v16;
    v21 = (*(*(v1 + 16) + 16))(ObjectType);
    v23 = sub_10000668C(v21, v22, v26);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDHousekeepingActivityScheduler: activity %s decided that it doesn't want to run at this moment", v19, 0xCu);
    sub_10000607C(v20);
  }

  return 0;
}

uint64_t sub_10045E49C(uint64_t *a1, uint64_t *a2)
{
  v27 = type metadata accessor for Date();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = *a2;
  v26 = a2[1];
  ObjectType = swift_getObjectType();
  v29 = v19;
  sub_10051E8CC(ObjectType, *(v18 + 16));
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v17, &unk_100938850, qword_100795AE0);
  v22 = swift_getObjectType();
  v28 = v20;
  sub_10051E8CC(v22, *(v26 + 16));
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
  LOBYTE(v17) = static Date.< infix(_:_:)();
  v23 = *(v4 + 8);
  v24 = v27;
  v23(v7, v27);
  v23(v10, v24);
  return v17 & 1;
}

void sub_10045E6CC()
{
  v1 = *v0;
  v2 = type metadata accessor for Date.ISO8601FormatStyle();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  __chkstk_darwin(v2);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Date();
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v1 + 88);
  v7 = *(v1 + 80);
  v80 = *(v79 + 8);
  v82 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v81 = &v69 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = (&v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v0[3];
  *v23 = v24;
  (*(v19 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v18, v21);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = *(*v0 + 136);
  swift_beginAccess();
  (*(v10 + 16))(v13, v0 + v26, v9);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) != 1)
  {
    v31 = AssociatedTypeWitness;
    v32 = v81;
    (*(v14 + 32))(v81, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if ((*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness))
    {
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_100947970);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_22;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "RDHousekeepingActivityScheduler: Unexpectedly having pending activity on the scheduler (xpcActivity) when trying to create and schedule a new one";
    }

    else
    {
      v83[0] = v0[2];

      sub_100460AD0(v83, sub_1004614F4, sub_10046109C);
      if (v83[0][2])
      {
        v39 = v83[0][4];
        v80 = v83[0][5];
        v40 = v39;

        if (qword_1009361C8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100006654(v41, qword_100947970);
        v42 = v40;
        static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
        static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v71 = v44;
          v46 = v45;
          v72 = swift_slowAlloc();
          v84[0] = v72;
          *v46 = 136446978;
          ObjectType = swift_getObjectType();
          v83[0] = v42;
          v48 = v80;
          v49 = *(*(v80 + 16) + 16);
          v70 = v43;
          v50 = ObjectType;
          v69 = ObjectType;
          v51 = v49();
          v53 = sub_10000668C(v51, v52, v84);

          *(v46 + 4) = v53;
          *(v46 + 12) = 2082;
          v83[5] = v42;
          (*(*(v48 + 32) + 16))(v83, v50);
          v54 = *sub_10000F61C(v83, v83[3]);
          v55 = v73;
          sub_10051EE80(v73);
          v56 = v75;
          sub_10051E9B4(v75);
          v57 = Date.ISO8601Format(_:)();
          v59 = v58;
          (*(v77 + 8))(v56, v78);
          v60 = v55;
          v61 = v80;
          (*(v74 + 8))(v60, v76);
          sub_10000607C(v83);
          v62 = sub_10000668C(v57, v59, v84);

          *(v46 + 14) = v62;
          *(v46 + 22) = 1040;
          *(v46 + 24) = 4;
          *(v46 + 28) = 2048;
          v63 = *(v61 + 48);
          *(v46 + 30) = v63(v69, v61);
          v64 = v70;
          _os_log_impl(&_mh_execute_header, v70, v71, "RDHousekeepingActivityScheduler: Activity with smallest throttling interval {identifier: %{public}s, due: %{public}s, interval: %.*f}", v46, 0x26u);
          swift_arrayDestroy();
        }

        else
        {

          v63 = *(v80 + 48);
        }

        v66 = swift_getObjectType();
        v67 = v63(v66, v80);
        v68 = swift_getAssociatedConformanceWitness();
        (*(v68 + 24))(v31, v68, v67);
        (*(AssociatedConformanceWitness + 24))(v31, AssociatedConformanceWitness);

        goto LABEL_25;
      }

      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100006654(v65, qword_100947970);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v35, v36))
      {
LABEL_22:

LABEL_25:
        (*(v14 + 8))(v32, v31);
        return;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "RDHousekeepingActivityScheduler: Must have at least 1 activity to call q_updateBackgroundActivityCriteria()";
    }

    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_22;
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1009361C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100947970);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDHousekeepingActivityScheduler: Unexpectedly could not get a scheduler (xpcActivity) when trying to schedule a new one", v30, 2u);
  }
}

uint64_t sub_10045F100()
{
  v1 = v0;
  v2 = *v0;
  v33 = v2;
  v3 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_100947C48, &qword_1007AAB88);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = (v1 + *(v2 + 144));
  v18 = *v17;
  v19 = v17[1];
  v20 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = sub_100440048(v21, v22, v18, v19, 0);

  (*(v8 + 8))(v11, v7);
  v36 = v1[3];
  v24 = v36;
  v37 = v23;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = v24;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  sub_100006CA4();
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v6, &qword_100939980, &unk_10079ADA0);

  v27 = *(v33 + 80);
  v28 = *(v33 + 88);
  type metadata accessor for RDHousekeepingActivityScheduler();
  sub_10000CB48(&qword_100947C50, &qword_100947C48, &qword_1007AAB88);
  v29 = v34;
  v30 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v35 + 8))(v16, v29);
  return v30;
}

void sub_10045F54C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10045F5A4(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10045F5A4(uint64_t result)
{
  v19 = *(result + 16);
  v1 = *(v19 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v19 + 40);
    v17 = *(v19 + 16);
    while (v2 < *(v19 + 16))
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      if (qword_1009361C8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100947970);
      v8 = v5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20 = v18;
        *v11 = 136446210;
        ObjectType = swift_getObjectType();
        v13 = v6;
        v14 = (*(*(v6 + 16) + 16))(ObjectType);
        v16 = sub_10000668C(v14, v15, &v20);

        *(v11 + 4) = v16;
        v6 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "RDHousekeepingActivityScheduler: Some accounts have been logged out or disabled. Resetting babysitter for {waiterID: %{public}s}", v11, 0xCu);
        sub_10000607C(v18);

        v1 = v17;
      }

      ++v2;
      v4 = swift_getObjectType();
      result = sub_10050B90C(0xD000000000000012, 0x80000001007F8770, v4, *(v6 + 8));
      v3 += 2;
      if (v1 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10045F7C8(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (sub_100463214(v6, 0.0) && !sub_1004631FC(v6, 0.0))
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100947970);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "RDHousekeepingActivityScheduler: reduceFactor(=%f) is less than 0. It will set to 0.", v10, 0xCu);
    }

    v6 = 0.0;
  }

  if (sub_100463214(1.0, v6) && !sub_1004631FC(v6, 1.0))
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100947970);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDHousekeepingActivityScheduler: reduceFactor=(%f) is larger than 1. It will set to 1.", v14, 0xCu);
    }

    v6 = 1.0;
  }

  *(v2 + 16) = v6;
  sub_10000607C(a1);
  return v2;
}

BOOL sub_10045FA08()
{
  v1 = 1.0 - *(v0 + 16);
  if (sub_1004631FC(v1, 0.0))
  {
    return 1;
  }

  if (sub_1004631FC(v1, 1.0))
  {
    return 0;
  }

  v3 = sub_10029E464(0x20000000000001uLL);
  return sub_100463214(v1, vcvtd_n_f64_u64(v3, 0x35uLL) + 0.0);
}

void sub_10045FABC(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  sub_100240AFC(v1 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_babysitter, v31);
  v9 = v32;
  if (!v32)
  {
    sub_1000050A4(v31, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v10 = v33;
  sub_10000F61C(v31, v32);
  v11 = (*(v10 + 8))(v1, v6, v8, v9, v10);
  sub_10000607C(v31);
  if (!v11)
  {
LABEL_9:
    sub_100460B54(v6, v8);

    swift_willThrow();
    return;
  }

  v30 = v11;

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10094B320);
  sub_100030E2C(a1, v31);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    sub_10000607C(v31);
    goto LABEL_11;
  }

  v16 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v16 = 136446466;
  v17 = [v13 waiterID];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000668C(v18, v20, &v34);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = v32;
    v23 = v33;
    sub_10000F61C(v31, v32);
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    sub_10000607C(v31);
    v27 = sub_10000668C(v24, v26, &v34);

    *(v16 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v16, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v28 = a1[3];
    v29 = a1[5];
    sub_10000F61C(a1, v28);
    (*(v29 + 8))(v28, v29);
    sub_100462FD0(v13, a1);

    return;
  }

  __break(1u);
}

void sub_10045FE38(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = a1[3];
  v7 = a1[4];
  sub_10000F61C(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = *a2;
  swift_beginAccess();
  sub_100240AFC(v4 + v11, v34);
  v12 = v35;
  if (!v35)
  {
    sub_1000050A4(v34, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v13 = v36;
  sub_10000F61C(v34, v35);
  v14 = (*(v13 + 8))(v4, v8, v10, v12, v13);
  sub_10000607C(v34);
  if (!v14)
  {
LABEL_9:
    sub_100460B54(v8, v10);

    swift_willThrow();
    return;
  }

  v33 = v14;

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094B320);
  sub_100030E2C(a1, v34);
  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v17, v18))
  {

    sub_10000607C(v34);
    goto LABEL_11;
  }

  v19 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *v19 = 136446466;
  v20 = [v16 waiterID];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, &v37);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = v35;
    v26 = v36;
    sub_10000F61C(v34, v35);
    v27 = (*(v26 + 8))(v25, v26);
    v29 = v28;
    sub_10000607C(v34);
    v30 = sub_10000668C(v27, v29, &v37);

    *(v19 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v19, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v31 = a1[3];
    v32 = a1[5];
    sub_10000F61C(a1, v31);
    (*(v32 + 8))(v31, v32);
    sub_100462FD0(v16, a1);

    return;
  }

  __break(1u);
}

void sub_1004601C4(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  v9 = OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter;
  swift_beginAccess();
  sub_100240AFC(v2 + v9, v32);
  v10 = v33;
  if (!v33)
  {
    sub_1000050A4(v32, &unk_10093D8F0, &unk_10079B600);
    goto LABEL_9;
  }

  v11 = v34;
  sub_10000F61C(v32, v33);
  v12 = (*(v11 + 8))(v2, v6, v8, v10, v11);
  sub_10000607C(v32);
  if (!v12)
  {
LABEL_9:
    sub_100460B54(v6, v8);

    swift_willThrow();
    return;
  }

  v31 = v12;

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10094B320);
  sub_100030E2C(a1, v32);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    sub_10000607C(v32);
    goto LABEL_11;
  }

  v17 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  *v17 = 136446466;
  v18 = [v14 waiterID];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000668C(v19, v21, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = v33;
    v24 = v34;
    sub_10000F61C(v32, v33);
    v25 = (*(v24 + 8))(v23, v24);
    v27 = v26;
    sub_10000607C(v32);
    v28 = sub_10000668C(v25, v27, &v35);

    *(v17 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v17, 0x16u);
    swift_arrayDestroy();

LABEL_11:
    v29 = a1[3];
    v30 = a1[5];
    sub_10000F61C(a1, v29);
    (*(v30 + 8))(v29, v30);
    sub_100462FD0(v14, a1);

    return;
  }

  __break(1u);
}

uint64_t sub_100460554(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  if (*(v1 + 16) < v3)
  {
    if (qword_1009361C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100947970);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = *(v2 + 16);
      *(v7 + 12) = 2048;
      *(v7 + 14) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDJitteredMinimumDelayXPCActivity: Requested delay (%f) is shorter than minimumDelay (%f). The minimumDelay value will take precedence.", v7, 0x16u);
    }
  }

  if (*(v2 + 16) > v3)
  {
    v3 = *(v2 + 16);
  }

  sub_100462F2C(a1, 0.0, 1.0);
  v9 = v8 + 1.0;
  if (qword_1009361C8 != -1)
  {
    swift_once();
  }

  v10 = v3 * v9;
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100947970);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = *(v2 + 16);
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDJitteredMinimumDelayXPCActivity: Updating scheduler (xpcActivity) criteria {inputDelay: %f, jitteredMinimumDelay: %f}", v14, 0x16u);
  }

  v15 = *(v2 + 32);
  v16 = *(v2 + 33);
  v17 = *(v2 + 34);
  v20 = xmmword_1007AA870;
  v21 = v10;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v25 = v15;
  v26 = 0;
  v27 = 0x4024000000000000;
  v28 = 0;
  v29 = v16;
  v30 = 0;
  v31 = v17;
  v32 = 0x10000;
  v33 = 513;
  v34 = 7;
  v35 = sub_10039363C(&off_1008E3650);
  v18 = *(v2 + 40);
  sub_1005A46AC(&v20);
}

uint64_t sub_100460818()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100460880()
{
  v2 = *(*(*v0 + 40) + 120);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return v3;
}

uint64_t sub_100460960(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  v10 = *(v3 + 26);
  type metadata accessor for RDJitteredMinimumDelayXPCActivity();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 32) = v8;
  *(v11 + 33) = v9;
  *(v11 + 34) = v10;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v13 = a1;

  v14 = sub_1005A9A28(3, sub_1000FCE88, v12);

  *(v11 + 40) = v14;
  return v11;
}

uint64_t sub_100460A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  result = sub_100460960(a1, a2, a3);
  *a4 = result;
  return result;
}

Swift::Int sub_100460AD0(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1004364F0(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_100460F84(v9, a2, a3);
  *a1 = v6;
  return result;
}

void sub_100460B54(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 babySatErrorWithOperationName:v7];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = String._bridgeToObjectiveC()();
  v10 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  v11 = [v3 waiterID];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for Analytics();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v28[0] = v13;
    v28[1] = v15;

    v16._countAndFlagsBits = 0x646568736172632ELL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);

    sub_10045C5E4(v10);

    v17 = v8;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

    if (qword_100936370 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094B320);

    v19 = v3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_8;
    }

    v22 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_10000668C(a1, a2, v28);
    *(v22 + 12) = 2082;
    v23 = [v19 waiterID];

    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, v28);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Babysitting operation because it failed too many times {operation: %{public}s, waiterID: %{public}s}", v22, 0x16u);
      swift_arrayDestroy();

LABEL_8:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100460EF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable);
  v3[4] = &off_1008FDCB8;
  v3[5] = &off_1008FDCC8;
  v3[3] = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  v3[0] = v1;

  sub_10045FE38(v3, &OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter);
  return sub_10000607C(v3);
}

Swift::Int sub_100460F84(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_10046109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 16 * a3);
    v19 = v5;
    while (1)
    {
      v23 = *(&v6 + 1);
      v7 = *v4;
      v24 = *(v4 + 8);
      v8 = v6;
      ObjectType = swift_getObjectType();
      v10 = *(v23 + 48);
      v11 = v8;
      v12 = v7;
      v13 = v10(ObjectType, v23);
      v14 = swift_getObjectType();
      v15 = (*(v24 + 48))(v14);

      if (v13 >= v15)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 16;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v16;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004611EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v47 = type metadata accessor for Date();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v47);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v37 - v12;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v37 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v42 = (v8 + 8);
    v48 = v18;
    v19 = v18 + 16 * a3 - 16;
    v20 = a1 - a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v21 = *(v48 + 16 * a3);
    v39 = v20;
    while (1)
    {
      v50 = v21;
      v22 = *v19;
      v49 = *(v19 + 8);
      v23 = v21;
      ObjectType = swift_getObjectType();
      v52 = v50;
      v25 = *(*(&v50 + 1) + 16);
      *&v50 = v23;
      v26 = v22;
      v27 = v43;
      sub_10051E8CC(ObjectType, v25);
      v28 = v45;
      Optional<A>.orDistantPast.getter();
      sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
      v29 = swift_getObjectType();
      v51 = v26;
      v30 = v44;
      sub_10051E8CC(v29, *(v49 + 16));
      v31 = v46;
      Optional<A>.orDistantPast.getter();
      sub_1000050A4(v30, &unk_100938850, qword_100795AE0);
      LOBYTE(v22) = static Date.< infix(_:_:)();
      v32 = *v42;
      v33 = v31;
      v34 = v47;
      (*v42)(v33, v47);
      v32(v28, v34);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + 16;
        v20 = v39 - 1;
        if (v41 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v35 = *v19;
      v21 = *(v19 + 16);
      *v19 = v21;
      *(v19 + 16) = v35;
      v19 -= 16;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004614F4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v10 = sub_1004361F4(v10);
    }

    v107 = *(v10 + 2);
    if (v107 >= 2)
    {
      while (*v6)
      {
        v108 = v10;
        v10 = (v107 - 1);
        v109 = *&v108[16 * v107];
        v110 = *&v108[16 * v107 + 24];
        sub_100462614((*v6 + 16 * v109), (*v6 + 16 * *&v108[16 * v107 + 16]), (*v6 + 16 * v110), v9);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v110 < v109)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1004361F4(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_118;
        }

        v111 = &v108[16 * v107];
        *v111 = v109;
        *(v111 + 1) = v110;
        sub_100436168(v107 - 1);
        v10 = v108;
        v107 = *(v108 + 2);
        if (v107 <= 1)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_128;
    }

LABEL_102:

    return;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v119 = v9;
    if ((v9 + 1) >= v8)
    {
      v26 = v9 + 1;
    }

    else
    {
      v123 = v8;
      v114 = v10;
      v116 = v5;
      v12 = v9;
      v13 = *v6 + 16 * (v9 + 1);
      v14 = *v13;
      v15 = *(v13 + 8);
      v125 = 16 * v9;
      v16 = *v6 + 16 * v9;
      v17 = *v16;
      v18 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v128 = *(v15 + 48);
      v20 = v14;
      v9 = v17;
      v21 = v128(ObjectType, v15);
      v22 = swift_getObjectType();
      v23 = (*(v18 + 48))(v22, v18);

      v24 = v12 + 2;
      v25 = (v16 + 24);
      while (1)
      {
        v26 = v123;
        if (v123 == v24)
        {
          break;
        }

        v28 = *v25;
        v27 = v25[1];
        v29 = v25[2];
        v129 = v25 + 2;
        v30 = *(v25 - 1);
        v31 = swift_getObjectType();
        v9 = (v29 + 48);
        v32 = *(v29 + 48);
        v33 = v27;
        v34 = v30;
        v35 = v32(v31, v29);
        v36 = swift_getObjectType();
        v37 = (*(v28 + 48))(v36, v28);

        ++v24;
        v25 = v129;
        if (v21 < v23 == v35 >= v37)
        {
          v26 = v24 - 1;
          break;
        }
      }

      v10 = v114;
      v5 = v116;
      v6 = a3;
      v7 = a1;
      v11 = v119;
      v38 = v125;
      if (v21 < v23)
      {
        if (v26 < v119)
        {
          goto LABEL_121;
        }

        if (v119 < v26)
        {
          v39 = 16 * v26 - 16;
          v40 = v26;
          do
          {
            if (v11 != --v40)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v41 = *(v42 + v38);
              *(v42 + v38) = *(v42 + v39);
              *(v42 + v39) = v41;
            }

            ++v11;
            v39 -= 16;
            v38 += 16;
          }

          while (v11 < v40);
          v11 = v119;
        }
      }
    }

    v43 = v6[1];
    if (v26 >= v43)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v26, v11))
    {
      goto LABEL_120;
    }

    if (v26 - v11 < a4)
    {
      break;
    }

    v9 = v26;
    if (v26 < v119)
    {
      goto LABEL_119;
    }

LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1003658B8(0, *(v10 + 2) + 1, 1, v10);
    }

    v59 = *(v10 + 2);
    v58 = *(v10 + 3);
    v60 = v59 + 1;
    v61 = v119;
    if (v59 >= v58 >> 1)
    {
      v106 = sub_1003658B8((v58 > 1), v59 + 1, 1, v10);
      v61 = v119;
      v10 = v106;
    }

    *(v10 + 2) = v60;
    v62 = &v10[16 * v59];
    *(v62 + 4) = v61;
    *(v62 + 5) = v9;
    v63 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    if (v59)
    {
      while (1)
      {
        v64 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v65 = *(v10 + 4);
          v66 = *(v10 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_61:
          if (v68)
          {
            goto LABEL_108;
          }

          v81 = &v10[16 * v60];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_111;
          }

          v87 = &v10[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_115;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v60 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v91 = &v10[16 * v60];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_75:
        if (v86)
        {
          goto LABEL_110;
        }

        v94 = &v10[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_113;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_82:
        v102 = v64 - 1;
        if (v64 - 1 >= v60)
        {
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v103 = *&v10[16 * v102 + 32];
        v104 = *&v10[16 * v64 + 40];
        sub_100462614((*v6 + 16 * v103), (*v6 + 16 * *&v10[16 * v64 + 32]), (*v6 + 16 * v104), v63);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v104 < v103)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1004361F4(v10);
        }

        if (v102 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v105 = &v10[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        sub_100436168(v64);
        v60 = *(v10 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v10[16 * v60 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_106;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_107;
      }

      v76 = &v10[16 * v60];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_109;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_112;
      }

      if (v80 >= v72)
      {
        v98 = &v10[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_116;
        }

        if (v67 < v101)
        {
          v64 = v60 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v119, a4))
  {
    goto LABEL_122;
  }

  if (&v119[a4] >= v43)
  {
    v9 = v6[1];
  }

  else
  {
    v9 = &v119[a4];
  }

  if (v9 < v119)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v11 = v119;
  if (v26 == v9)
  {
LABEL_28:
    v9 = v26;
    if (v26 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_42;
  }

  v115 = v10;
  v117 = v5;
  v126 = *v6;
  v44 = *v6 + 16 * v26 - 16;
  v45 = v119 - v26;
  v120 = v9;
LABEL_35:
  v122 = v44;
  v124 = v26;
  v46 = *(v126 + 16 * v26);
  v121 = v45;
  while (1)
  {
    v127 = *(&v46 + 1);
    v47 = *v44;
    v130 = *(v44 + 8);
    v48 = v46;
    v49 = swift_getObjectType();
    v50 = *(v127 + 48);
    v51 = v48;
    v52 = v47;
    v53 = v50(v49, v127);
    v54 = swift_getObjectType();
    v55 = (*(v130 + 48))(v54);

    if (v53 >= v55)
    {
LABEL_34:
      v26 = v124 + 1;
      v44 = v122 + 16;
      v9 = v120;
      v45 = v121 - 1;
      if (v124 + 1 != v120)
      {
        goto LABEL_35;
      }

      v10 = v115;
      v5 = v117;
      v6 = a3;
      v7 = a1;
      if (v120 < v119)
      {
        goto LABEL_119;
      }

      goto LABEL_42;
    }

    if (!v126)
    {
      break;
    }

    v56 = *v44;
    v46 = *(v44 + 16);
    *v44 = v46;
    *(v44 + 16) = v56;
    v44 -= 16;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

void sub_100461C74(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v120 = a1;
  v132 = type metadata accessor for Date();
  v6 = *(v132 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v132);
  v131 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = &v116 - v10;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v129 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = &v116 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_90:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v116 = a4;
  v17 = 0;
  v127 = (v6 + 8);
  v18 = _swiftEmptyArrayStorage;
  v117 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v20 = *a3;
      v136 = *(*a3 + 16 * (v17 + 1));
      v134 = *(v20 + 16 * v17);
      v135 = v134;
      v21 = v136;
      v6 = v134;
      v22 = v125;
      LODWORD(v123) = sub_10045E49C(&v136, &v135);
      v125 = v22;
      if (v22)
      {

        return;
      }

      v118 = v18;

      v23 = v17 + 2;
      v119 = v17;
      v126 = 16 * v17;
      v24 = (v20 + 16 * v17 + 24);
      v124 = v16;
      while (v16 != v23)
      {
        v26 = v24 + 2;
        v25 = v24[2];
        v27 = *(v24 - 1);
        v28 = v24[1];
        v133 = *v24;
        ObjectType = swift_getObjectType();
        *&v136 = v28;
        v30 = *(v25 + 16);
        *&v134 = v28;
        v6 = v27;
        v31 = v128;
        sub_10051E8CC(ObjectType, v30);
        v32 = v130;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v31, &unk_100938850, qword_100795AE0);
        v33 = swift_getObjectType();
        *&v135 = v6;
        v34 = v129;
        sub_10051E8CC(v33, *(v133 + 16));
        v35 = v131;
        Optional<A>.orDistantPast.getter();
        v16 = v124;
        sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
        LODWORD(v25) = static Date.< infix(_:_:)() & 1;
        v18 = v127;
        v36 = *v127;
        v37 = v35;
        v38 = v132;
        (*v127)(v37, v132);
        v36(v32, v38);

        ++v23;
        v24 = v26;
        if ((v123 & 1) != v25)
        {
          v16 = v23 - 1;
          break;
        }
      }

      a3 = v117;
      v19 = v119;
      if ((v123 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v16 < v119)
      {
        goto LABEL_122;
      }

      if (v119 < v16)
      {
        v39 = 16 * v16 - 16;
        v40 = v16;
        v41 = v119;
        v18 = v118;
        do
        {
          if (v41 != --v40)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v43 = *(v42 + v126);
            *(v42 + v126) = *(v42 + v39);
            *(v42 + v39) = v43;
          }

          ++v41;
          v39 -= 16;
          v126 += 16;
        }

        while (v41 < v40);
      }

      else
      {
LABEL_19:
        v18 = v118;
      }
    }

    v44 = a3[1];
    if (v16 < v44)
    {
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_119;
      }

      if (v16 - v19 < v116)
      {
        if (__OFADD__(v19, v116))
        {
          goto LABEL_120;
        }

        if (v19 + v116 >= v44)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v19 + v116;
        }

        if (v45 < v19)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v18 = sub_1004361F4(v18);
LABEL_92:
          v137 = v18;
          v111 = *(v18 + 2);
          if (v111 >= 2)
          {
            while (*a3)
            {
              v112 = *&v18[16 * v111];
              v113 = *&v18[16 * v111 + 24];
              v114 = v125;
              sub_100462980((*a3 + 16 * v112), (*a3 + 16 * *&v18[16 * v111 + 16]), (*a3 + 16 * v113), v6);
              v125 = v114;
              if (v114)
              {
                goto LABEL_100;
              }

              if (v113 < v112)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_1004361F4(v18);
              }

              if (v111 - 2 >= *(v18 + 2))
              {
                goto LABEL_117;
              }

              v115 = &v18[16 * v111];
              *v115 = v112;
              *(v115 + 1) = v113;
              v137 = v18;
              sub_100436168(v111 - 1);
              v18 = v137;
              v111 = *(v137 + 2);
              if (v111 <= 1)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_127;
          }

LABEL_100:

          return;
        }

        if (v16 != v45)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v19)
    {
      goto LABEL_118;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1003658B8(0, *(v18 + 2) + 1, 1, v18);
    }

    v6 = *(v18 + 2);
    v46 = *(v18 + 3);
    v47 = v6 + 1;
    if (v6 >= v46 >> 1)
    {
      v18 = sub_1003658B8((v46 > 1), v6 + 1, 1, v18);
    }

    *(v18 + 2) = v47;
    v48 = &v18[16 * v6];
    *(v48 + 4) = v19;
    *(v48 + 5) = v17;
    v49 = *v120;
    if (!*v120)
    {
      goto LABEL_128;
    }

    if (v6)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v18 + 4);
          v52 = *(v18 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_49:
          if (v54)
          {
            goto LABEL_107;
          }

          v67 = &v18[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_110;
          }

          v73 = &v18[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_114;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v77 = &v18[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_63:
        if (v72)
        {
          goto LABEL_109;
        }

        v80 = &v18[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_112;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_70:
        v6 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v88 = *&v18[16 * v6 + 32];
        v89 = *&v18[16 * v50 + 40];
        v90 = v125;
        sub_100462980((*a3 + 16 * v88), (*a3 + 16 * *&v18[16 * v50 + 32]), (*a3 + 16 * v89), v49);
        v125 = v90;
        if (v90)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1004361F4(v18);
        }

        if (v6 >= *(v18 + 2))
        {
          goto LABEL_104;
        }

        v91 = &v18[16 * v6];
        *(v91 + 4) = v88;
        *(v91 + 5) = v89;
        v137 = v18;
        sub_100436168(v50);
        v18 = v137;
        v47 = *(v137 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v18[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_105;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_106;
      }

      v62 = &v18[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_108;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_111;
      }

      if (v66 >= v58)
      {
        v84 = &v18[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_115;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_90;
    }
  }

  v118 = v18;
  v126 = *a3;
  v92 = v126 + 16 * v16 - 16;
  v119 = v19;
  v93 = v19 - v16;
  v121 = v45;
LABEL_81:
  v123 = v92;
  v124 = v16;
  v94 = *(v126 + 16 * v16);
  v122 = v93;
  v95 = v92;
  while (1)
  {
    v134 = v94;
    v96 = *v95;
    v133 = *(v95 + 8);
    v97 = v94;
    v98 = swift_getObjectType();
    *&v136 = v134;
    v99 = *(*(&v134 + 1) + 16);
    *&v134 = v97;
    v100 = v96;
    v101 = v128;
    sub_10051E8CC(v98, v99);
    v102 = v130;
    Optional<A>.orDistantPast.getter();
    sub_1000050A4(v101, &unk_100938850, qword_100795AE0);
    v103 = swift_getObjectType();
    *&v135 = v100;
    v104 = v129;
    sub_10051E8CC(v103, *(v133 + 16));
    v105 = v131;
    Optional<A>.orDistantPast.getter();
    sub_1000050A4(v104, &unk_100938850, qword_100795AE0);
    LOBYTE(v96) = static Date.< infix(_:_:)();
    v6 = v127;
    v106 = *v127;
    v107 = v105;
    v108 = v132;
    (*v127)(v107, v132);
    v106(v102, v108);

    if ((v96 & 1) == 0)
    {
LABEL_80:
      v16 = v124 + 1;
      v92 = v123 + 16;
      v17 = v121;
      v93 = v122 - 1;
      if (v124 + 1 != v121)
      {
        goto LABEL_81;
      }

      a3 = v117;
      v18 = v118;
      v19 = v119;
      if (v121 < v119)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v126)
    {
      break;
    }

    v109 = *v95;
    v94 = *(v95 + 16);
    *v95 = v94;
    *(v95 + 16) = v109;
    v95 -= 16;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

uint64_t sub_100462614(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v51 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v50 = v4;
      v46 = v7;
LABEL_26:
      v42 = v6 - 16;
      v28 = v5 - 16;
      v29 = v51;
      v43 = v6;
      do
      {
        v48 = v28;
        v44 = v28 + 16;
        v30 = *(v29 - 2);
        v31 = *(v29 - 1);
        v29 -= 16;
        v32 = *(v6 - 2);
        v33 = *(v6 - 1);
        ObjectType = swift_getObjectType();
        v35 = *(v31 + 48);
        v36 = v30;
        v37 = v32;
        v38 = v35(ObjectType, v31);
        v39 = swift_getObjectType();
        v40 = (*(v33 + 48))(v39, v33);

        if (v38 < v40)
        {
          v5 = v48;
          v4 = v50;
          if (v44 != v43)
          {
            *v48 = *v42;
          }

          if (v51 <= v50 || (v6 = v42, v42 <= v46))
          {
            v6 = v42;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v4 = v50;
        if (v44 != v51)
        {
          *v48 = *v29;
        }

        v28 = v48 - 16;
        v51 = v29;
        v6 = v43;
      }

      while (v29 > v50);
      v51 = v29;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v51 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v47 = v5;
      while (1)
      {
        v49 = v4;
        v45 = v7;
        v14 = v6;
        v15 = *v6;
        v16 = *(v6 + 1);
        v17 = *v4;
        v18 = *(v4 + 1);
        v19 = swift_getObjectType();
        v20 = *(v16 + 48);
        v21 = v15;
        v22 = v17;
        v23 = v20(v19, v16);
        v24 = swift_getObjectType();
        v25 = (*(v18 + 48))(v24, v18);

        if (v23 >= v25)
        {
          break;
        }

        v26 = v14;
        v6 = v14 + 16;
        v27 = v45;
        v4 = v49;
        if (v45 != v14)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 = v27 + 16;
        if (v4 >= v51 || v6 >= v47)
        {
          goto LABEL_19;
        }
      }

      v26 = v49;
      v4 = v49 + 16;
      v27 = v45;
      v6 = v14;
      if (v45 == v49)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= &v4[(v51 - v4 + (v51 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v51 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100462980(void **a1, void **a2, char *a3, void **a4)
{
  v74 = type metadata accessor for Date();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v64 - v12;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = &v64 - v17;
  v18 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v18 = a2 - a1;
  }

  v19 = v18 >> 4;
  v20 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v20 = a3 - a2;
  }

  v21 = v20 >> 4;
  if (v19 >= v20 >> 4)
  {
    v75 = a1;
    if (a4 != a2 || &a2[2 * v21] <= a4)
    {
      memmove(a4, a2, 16 * v21);
    }

    v77 = &a4[2 * v21];
    if (a3 - a2 >= 16 && a2 > v75)
    {
      v66 = (v8 + 8);
LABEL_26:
      v65 = a2 - 2;
      v43 = (a3 - 16);
      v44 = v77;
      v67 = a2;
      do
      {
        v45 = a4;
        v76 = v43;
        v46 = v43 + 2;
        v47 = *(v44 - 2);
        v48 = *(v44 - 1);
        v44 -= 2;
        v49 = *(a2 - 2);
        v68 = *(a2 - 1);
        ObjectType = swift_getObjectType();
        v79 = v47;
        v51 = *(v48 + 16);
        v69 = v47;
        v52 = v49;
        v53 = v70;
        sub_10051E8CC(ObjectType, v51);
        v54 = v72;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
        v55 = swift_getObjectType();
        v78 = v52;
        v56 = v71;
        sub_10051E8CC(v55, *(v68 + 16));
        v57 = v73;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v56, &unk_100938850, qword_100795AE0);
        LOBYTE(v56) = static Date.< infix(_:_:)();
        v58 = *v66;
        v59 = v57;
        v60 = v74;
        (*v66)(v59, v74);
        v58(v54, v60);

        if (v56)
        {
          a4 = v45;
          a3 = v76;
          v62 = v65;
          if (v46 != v67)
          {
            *v76 = *v65;
          }

          if (v77 <= v45 || (a2 = v62, v62 <= v75))
          {
            a2 = v62;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v61 = v76;
        a4 = v45;
        if (v46 != v77)
        {
          *v76 = *v44;
        }

        v43 = v61 - 2;
        v77 = v44;
        a2 = v67;
      }

      while (v44 > v45);
      v77 = v44;
    }
  }

  else
  {
    v22 = a1;
    if (a4 != a1 || &a1[2 * v19] <= a4)
    {
      memmove(a4, a1, 16 * v19);
    }

    v77 = &a4[2 * v19];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v76 = a3;
      v68 = v8 + 8;
      while (1)
      {
        v75 = v22;
        v24 = *a2;
        v23 = a2[1];
        v25 = *a4;
        v26 = a4[1];
        v27 = a2;
        v28 = swift_getObjectType();
        v79 = v24;
        v29 = v23[2];
        v69 = v24;
        v30 = v25;
        v31 = a4;
        v32 = v30;
        v33 = v70;
        sub_10051E8CC(v28, v29);
        v34 = v72;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v33, &unk_100938850, qword_100795AE0);
        v35 = swift_getObjectType();
        v78 = v32;
        v36 = v71;
        sub_10051E8CC(v35, v26[2]);
        v37 = v73;
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
        LOBYTE(v36) = static Date.< infix(_:_:)();
        v38 = *v68;
        v39 = v37;
        v40 = v74;
        (*v68)(v39, v74);
        v38(v34, v40);

        if ((v36 & 1) == 0)
        {
          break;
        }

        v41 = v27;
        a2 = v27 + 2;
        v42 = v75;
        a4 = v31;
        if (v75 != v27)
        {
          goto LABEL_16;
        }

LABEL_17:
        v22 = v42 + 2;
        if (a4 >= v77 || a2 >= v76)
        {
          goto LABEL_19;
        }
      }

      v41 = v31;
      a4 = v31 + 2;
      v42 = v75;
      a2 = v27;
      if (v75 == v31)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v42 = *v41;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v22;
  }

LABEL_37:
  if (a2 != a4 || a2 >= (a4 + ((v77 - a4 + (v77 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(a2, a4, 16 * ((v77 - a4) / 16));
  }

  return 1;
}

uint64_t sub_100462F2C(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100462F2C(v6, a2, a3);
  }

  return result;
}

void sub_100462FD0(void *a1, uint64_t a2)
{
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094B320);
  sub_100030E2C(a2, v21);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = [v5 waiterID];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10000668C(v10, v12, &v20);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v14 = v22;
      v15 = v23;
      sub_10000F61C(v21, v22);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      sub_10000607C(v21);
      v19 = sub_10000668C(v16, v18, &v20);

      *(v8 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Released babysitter token for {waiterID: %{public}s, executable: %{public}s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000607C(v21);
  }
}

void sub_100463288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v173 = a2;
  v5 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v131 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = &v124 - v9;
  v158 = type metadata accessor for TimeZone();
  v172 = *(v158 - 8);
  isa = v172[8].isa;
  __chkstk_darwin(v158);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v124 - v13;
  v157 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v171 = *(v157 - 8);
  v14 = *(v171 + 64);
  __chkstk_darwin(v157);
  v130 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v137 = &v124 - v17;
  v156 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v170 = *(v156 - 8);
  v18 = v170[8];
  __chkstk_darwin(v156);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  v155 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v164 = *(v155 - 8);
  v24 = *(v164 + 64);
  __chkstk_darwin(v155);
  v128 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v135 = &v124 - v27;
  v154 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v163 = *(v154 - 8);
  v28 = *(v163 + 64);
  __chkstk_darwin(v154);
  v127 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v169 = &v124 - v31;
  v153 = type metadata accessor for Date.ISO8601FormatStyle();
  v32 = *(v153 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v153);
  v125 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v132 = &v124 - v36;
  v152 = type metadata accessor for Date();
  v37 = *(v152 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v152);
  v168 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v167 = &v124 - v41;
  v42 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v134 = &v124 - v44;
  v45 = *(a1 + 16);
  v129 = v20;
  v136 = v23;
  if (v45)
  {
    v46 = (a1 + 32);
    v47 = _swiftEmptyArrayStorage;
    do
    {
      v176 = *v46;
      v174 = v176;
      v48 = v176;
      if (sub_10045E0AC(&v176))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v179 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253C48(0, v47[2].isa + 1, 1);
          v47 = v179;
        }

        v51 = v47[2].isa;
        v50 = v47[3].isa;
        if (v51 >= v50 >> 1)
        {
          sub_100253C48((v50 > 1), v51 + 1, 1);
          v47 = v179;
        }

        v47[2].isa = (v51 + 1);
        *&v47[2 * v51 + 4].isa = v174;
      }

      else
      {
      }

      ++v46;
      --v45;
    }

    while (v45);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  *&v176 = v47;

  sub_100460AD0(&v176, sub_100461C74, sub_1004611EC);

  v53 = v176;
  v54 = v169;
  v165 = *(v176 + 16);
  if (v165)
  {
    v55 = 0;
    v150 = (v163 + 104);
    v149 = (v164 + 104);
    v148 = (v170 + 13);
    v147 = (v171 + 104);
    v146 = v172 + 6;
    v145 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
    v141 = v172 + 4;
    v140 = (v32 + 8);
    v144 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
    v139 = (v37 + 8);
    v56 = (v176 + 40);
    v143 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
    v142 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
    *&v52 = 136446466;
    v151 = v52;
    *&v52 = 136446210;
    v124 = v52;
    v57 = v168;
    v58 = v167;
    v164 = v176;
    v166 = a3;
    while (1)
    {
      if (v55 >= *(v53 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);

        __break(1u);
        return;
      }

      *&v174 = 0;
      v171 = v55;
      v59 = *(v56 - 1);
      v60 = *v56;
      v170 = v56;
      v61 = qword_1009361C8;
      v62 = v59;
      if (v61 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      v64 = sub_100006654(v63, qword_100947970);
      v65 = v62;
      v172 = v64;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        LODWORD(v161) = v67;
        v162 = v66;
        v68 = v54;
        v69 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v176 = v160;
        *v69 = v151;
        ObjectType = swift_getObjectType();
        v179 = v65;
        v163 = v60;
        v71 = *(v60 + 16);
        v72 = (*(v71 + 16))(ObjectType, v71);
        v74 = sub_10000668C(v72, v73, &v176);

        *(v69 + 4) = v74;
        v159 = v69;
        *(v69 + 12) = 2082;
        v179 = v65;
        v75 = v134;
        sub_10051E8CC(ObjectType, v71);
        Optional<A>.orDistantPast.getter();
        sub_1000050A4(v75, &unk_100938850, qword_100795AE0);
        (*v150)(v68, v145, v154);
        (*v149)(v135, v144, v155);
        (*v148)();
        (*v147)(v137, v142, v157);
        v76 = v138;
        TimeZone.init(secondsFromGMT:)();
        v77 = v158;
        if ((v146->isa)(v76, 1, v158) == 1)
        {
          goto LABEL_41;
        }

        (v141->isa)(v133, v76, v77);
        v78 = v132;
        Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
        v79 = Date.ISO8601Format(_:)();
        v81 = v80;
        (*v140)(v78, v153);
        (*v139)(v58, v152);
        v82 = sub_10000668C(v79, v81, &v176);

        v83 = v159;
        *(v159 + 14) = v82;
        v84 = v162;
        _os_log_impl(&_mh_execute_header, v162, v161, "RDHousekeepingActivityScheduler: Trying to execute activity {identifier: %{public}s, lastExecuted: %{public}s}", v83, 0x16u);
        swift_arrayDestroy();

        v57 = v168;
        v53 = v164;
        v60 = v163;
      }

      else
      {
      }

      v85 = swift_getObjectType();
      v86 = *(v60 + 32);
      v177 = v85;
      v178 = v86;
      *&v176 = v65;
      type metadata accessor for RDHousekeepingActivityScheduler();
      v87 = v65;
      v88 = v174;
      sub_10047A91C(&v176);
      if (!v88)
      {

        sub_10000607C(&v176);
        return;
      }

      sub_10000607C(&v176);
      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        v89 = v87;
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v90, v91))
        {
          LODWORD(v163) = v91;
          v172 = v90;
          v92 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v179 = v162;
          *v92 = v151;
          *&v176 = v89;
          v93 = (*(*(v60 + 16) + 16))(v85);
          v95 = sub_10000668C(v93, v94, &v179);

          *(v92 + 4) = v95;
          v161 = v92;
          *(v92 + 12) = 2082;
          *&v174 = v89;
          v175 = v89;
          (*(v86 + 16))(&v176, v85, v86);
          v96 = *sub_10000F61C(&v176, v177);
          sub_10051EE80(v57);
          (*v150)(v127, v145, v154);
          (*v149)(v128, v144, v155);
          (*v148)();
          (*v147)(v130, v142, v157);
          v97 = v131;
          TimeZone.init(secondsFromGMT:)();
          v98 = v158;
          if ((v146->isa)(v97, 1, v158) == 1)
          {
            goto LABEL_42;
          }

          (v141->isa)(v126, v97, v98);
          v99 = v125;
          Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
          v100 = Date.ISO8601Format(_:)();
          v102 = v101;
          (*v140)(v99, v153);
          (*v139)(v57, v152);
          sub_10000607C(&v176);
          v103 = sub_10000668C(v100, v102, &v179);

          v104 = v161;
          *(v161 + 14) = v103;
          v105 = v172;
          _os_log_impl(&_mh_execute_header, v172, v163, "RDHousekeepingActivityScheduler: Activity [%{public}s] is throttled, skipping... {resetDate: %{public}s}", v104, 0x16u);
          swift_arrayDestroy();

          v53 = v164;
        }

        else
        {
        }
      }

      else
      {
        swift_getErrorValue();
        if ((Error.isREMError(withErrorCode:)() & 1) == 0)
        {

          v114 = v87;
          swift_errorRetain();
          v115 = Logger.logObject.getter();
          v116 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *&v176 = swift_slowAlloc();
            *v117 = v151;
            v179 = v114;
            v118 = (*(*(v60 + 16) + 16))(v85);
            v120 = sub_10000668C(v118, v119, &v176);

            *(v117 + 4) = v120;
            *(v117 + 12) = 2082;
            swift_getErrorValue();
            v121 = Error.rem_errorDescription.getter();
            v123 = sub_10000668C(v121, v122, &v176);

            *(v117 + 14) = v123;
            _os_log_impl(&_mh_execute_header, v115, v116, "RDHousekeepingActivityScheduler: Activity [%{public}s] failed with error {%{public}s}", v117, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v106 = v87;
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&v176 = v110;
          *v109 = v124;
          v179 = v106;
          v111 = (*(*(v60 + 16) + 16))(v85);
          v113 = sub_10000668C(v111, v112, &v176);

          *(v109 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v107, v108, "RDHousekeepingActivityScheduler: Activity [%{public}s] is babysat, skipping...", v109, 0xCu);
          sub_10000607C(v110);

          v53 = v164;
        }

        v57 = v168;
      }

      v55 = v171 + 1;
      v56 = v170 + 2;
      v54 = v169;
      v58 = v167;
      if (v165 == v171 + 1)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_34:
}