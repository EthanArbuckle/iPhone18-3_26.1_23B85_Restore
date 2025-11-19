void sub_100637AEC(unint64_t a1, NSObject *a2, void *a3)
{
  v249 = a2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v243 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v215 - v10;
  v12 = type metadata accessor for UUID();
  v244 = *(v12 - 8);
  v13 = v244[8];
  __chkstk_darwin(v12);
  v15 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v215 - v17;
  v19 = a3[3];
  v246 = a3[2];
  v248 = v19;
  v20 = a3[4];
  v250 = v3;
  v21 = *(v3 + 72);
  v252[3] = v21;
  v253 = v249;
  v252[2] = &v253;

  v22 = v251;
  v23 = sub_100759CB4(sub_1006B0334, v252, a1);
  if (v22)
  {
    return;
  }

  v251 = v23;
  v238 = v21;
  v247 = v20;
  v240 = v18;
  v241 = v15;
  v239 = v12;
  v237 = v11;
  v242 = a3;
  v24 = 0;
  if (qword_100936008 != -1)
  {
LABEL_131:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100006654(v25, qword_100945730);
  v27 = v251;

  v245 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  v30 = v27 >> 62;
  if (!os_log_type_enabled(v28, v29))
  {

    goto LABEL_8;
  }

  a1 = swift_slowAlloc();
  v249 = swift_slowAlloc();
  v253 = v249;
  *a1 = 136446978;
  *(a1 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v253);
  *(a1 + 12) = 2048;
  if (v30)
  {
    goto LABEL_134;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(a1 + 14) = i;

    *(a1 + 22) = 2082;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v32 = [swift_getObjCClassFromMetadata() description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_10000668C(v33, v35, &v253);

    *(a1 + 24) = v36;
    *(a1 + 32) = 2082;
    v27 = v251;
    *(a1 + 34) = sub_10000668C(v246, v248, &v253);
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", a1, 0x2Au);
    v29 = v249;
    swift_arrayDestroy();

LABEL_8:
    v248 = v30;
    v37 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v236 = v25;
    if (!v37)
    {
      break;
    }

    v253 = _swiftEmptyArrayStorage;
    v28 = &v253;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v37 & 0x8000000000000000) == 0)
    {
      a1 = 0;
      v38 = v27 & 0xC000000000000001;
      v249 = (v27 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v39 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_127:

          goto LABEL_117;
        }

        if (v38)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= v249[2].isa)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v40 = *(v251 + 8 * a1 + 32);
        }

        v41 = v40;
        sub_1005E3810([v40 remObjectID], &qword_1009399F0, off_1008D4120);
        if (v24)
        {

          return;
        }

        v28 = &v253;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        isa = v253[2].isa;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++a1;
        if (v39 == v37)
        {
          v43 = v253;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_134:
    ;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_22:
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v249 = v43;
    v47 = v46;
    v48 = swift_slowAlloc();
    v253 = v48;
    *v47 = 136315138;
    v49 = [objc_opt_self() cdEntityName];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_10000668C(v50, v52, &v253);

    *(v47 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Performing fetch during upsert {CDType: %s}", v47, 0xCu);
    sub_10000607C(v48);

    v43 = v249;
  }

  v54 = v240;
  v55 = v247;
  v56 = v248;
  v57 = sub_1006666A4(v43, v242);
  v58 = v24;
  v59 = v241;
  if (v58)
  {

    v60 = &v261;
    goto LABEL_119;
  }

  v235 = v57;

  if (v56)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v62)
  {
    goto LABEL_117;
  }

  v63 = 0;
  v64 = v251 & 0xC000000000000001;
  v65 = v251 & 0xFFFFFFFFFFFFFF8;
  v66 = (v251 + 32);
  v231 = (v244 + 1);
  v225 = (v244 + 7);
  v224 = (v244 + 6);
  *&v61 = 136446978;
  v222 = v61;
  *&v61 = 136446210;
  v233 = v61;
  *&v61 = 136447490;
  v223 = v61;
  *&v61 = 136447234;
  v221 = v61;
  v229 = v62;
  v228 = v251 & 0xC000000000000001;
  v227 = v251 & 0xFFFFFFFFFFFFFF8;
  v226 = (v251 + 32);
  while (1)
  {
    if (v64)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v68 = __OFADD__(v63, 1);
      v69 = v63 + 1;
      if (v68)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        if (qword_1009367A0 != -1)
        {
          goto LABEL_137;
        }

        goto LABEL_114;
      }
    }

    else
    {
      if (v63 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_136;
      }

      v67 = v66[v63];
      v68 = __OFADD__(v63, 1);
      v69 = v63 + 1;
      if (v68)
      {
        goto LABEL_112;
      }
    }

    v70 = v67;
    v246 = sub_1005E3810([v70 remObjectID], &qword_1009399F0, off_1008D4120);
    if (v58)
    {

      return;
    }

    v230 = v69;
    v248 = 0;

    v244 = v70;
    v71 = [v70 objectID];
    v72 = [v71 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = UUID.uuidString.getter();
    v74 = v73;
    v75 = *v231;
    v76 = v54;
    v77 = v239;
    (*v231)(v76, v239);
    v78 = [objc_opt_self() localInternalAccountID];
    v79 = [v78 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = UUID.uuidString.getter();
    v81 = v59;
    v82 = v80;
    v84 = v83;
    v234 = v75;
    v75(v81, v77);
    if (a1 != v82)
    {
      goto LABEL_39;
    }

    if (v74 == v84)
    {

      v85 = v250;
    }

    else
    {
LABEL_39:
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v85 = v250;
      if ((v86 & 1) == 0)
      {
        v89 = v248;
        v90 = v238;
        v91 = v244;
        goto LABEL_46;
      }
    }

    v87 = *(v85 + 68);
    v88 = 2147483519;
    v89 = v248;
    v90 = v238;
    v91 = v244;
    if (v87 >> 14 >= 2)
    {
      if (v87 >> 14 == 2)
      {
        v88 = *(v85 + 64);
      }

      else
      {
        v88 = 0x7FFFFFFF;
      }
    }

    sub_100009A40(2, v88);
    if (v89)
    {
      break;
    }

LABEL_46:
    v92 = sub_100692848(v91, v90, &type metadata for REMAccountStorageCDIngestor.ValueKey, sub_1005F45A8);
    v24 = v89;
    if (v89)
    {

      return;
    }

    v44 = v92;
    v93 = sub_1005F6750();
    v94 = v235;
    v95 = *(v235 + 16);
    v249 = v44;
    if (!v95 || (v96 = sub_100393C74(v246), (v97 & 1) == 0))
    {
      if (v93 == 26)
      {
LABEL_121:

        v212 = v244;

        v213 = objc_opt_self();
        v214 = v246;
        [v213 noSuchObjectErrorWithObjectID:v246];
        swift_willThrow();

        return;
      }

      v98 = 0;
      v99 = v44[2].isa;
      while (1)
      {
        if (v99 == v98)
        {
          goto LABEL_121;
        }

        if (v98 >= v44[2].isa)
        {
          goto LABEL_130;
        }

        v100 = sub_1002F6E68(*(v98 + v44 + 32));
        a1 = v101;
        if (v100 == sub_1002F6E68(v93) && a1 == v102)
        {
          break;
        }

        v98 = (v98 + 1);
        v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v104)
        {
          goto LABEL_61;
        }
      }

LABEL_61:
      v105 = *(v250 + 88);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v107 = [ObjCClassFromMetadata entity];
      v108 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v107 insertIntoManagedObjectContext:v105];
      v109 = v55;
      v110 = v108;
      [v105 assignObject:v110 toPersistentStore:v109];

      v111 = v110;
      v112 = [v246 uuid];
      v113 = v237;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v114 = v239;
      (*v225)(v113, 0, 1, v239);
      v115 = v243;
      sub_10018E470(v113, v243);
      v116 = 0;
      if ((*v224)(v115, 1, v114) != 1)
      {
        v117 = v243;
        v116 = UUID._bridgeToObjectiveC()().super.isa;
        v234(v117, v114);
      }

      [v111 setIdentifier:v116];

      sub_1000050A4(v237, &unk_100939D90, "8\n\r");
      v85 = v250;

      v44 = v246;
      v118 = v111;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();

      v121 = os_log_type_enabled(v119, v120);
      v232 = v118;
      if (v121)
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v259 = v234;
        *v122 = v222;
        *(v122 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v259);
        *(v122 + 12) = 2082;
        v124 = *(v85 + 40);
        v256 = *(v85 + 24);
        *v257 = v124;
        *&v257[14] = *(v85 + 54);
        sub_100009DAC(&v256, &v253);
        v125 = sub_1000063E8();
        LODWORD(v220) = v120;
        v126 = v125;
        v128 = v127;
        sub_1005812D4(&v256);
        v129 = sub_10000668C(v126, v128, &v259);

        *(v122 + 14) = v129;
        *(v122 + 22) = 2114;
        *(v122 + 24) = v44;
        *v123 = v44;
        *(v122 + 32) = 2112;
        v130 = v44;
        v131 = [v118 objectID];
        *(v122 + 34) = v131;
        v123[1] = v131;
        _os_log_impl(&_mh_execute_header, v119, v220, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v122, 0x2Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      v132 = v242;
      swift_beginAccess();
      v133 = v132[6];
      v55 = v247;
      if ((v133 & 0xC000000000000001) == 0)
      {
        v139 = v132[6];
        v140 = v44;
        v138 = v242;
        goto LABEL_72;
      }

      if (v133 < 0)
      {
        v134 = v132[6];
      }

      else
      {
        v134 = v133 & 0xFFFFFFFFFFFFFF8;
      }

      v135 = v44;
      v136 = __CocoaDictionary.count.getter();
      if (!__OFADD__(v136, 1))
      {
        v137 = sub_10021CDBC(v134, v136 + 1);
        v138 = v242;
        v242[6] = v137;
LABEL_72:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v259 = v138[6];
        sub_1002C8398(v232, v44, isUniquelyReferenced_nonNull_native);
        v138[6] = v259;

        swift_endAccess();
        v44 = v249;
        goto LABEL_73;
      }

LABEL_136:
      __break(1u);
LABEL_137:
      swift_once();
LABEL_114:
      sub_100006654(v236, qword_100950D98);
      v198 = Logger.logObject.getter();
      v199 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        *v200 = 136446466;
        v201 = sub_100729CB0(v44);
        v203 = sub_10000668C(v201, v202, &v253);

        *(v200 + 4) = v203;
        *(v200 + 12) = 2082;
        v204 = sub_100729CB0(v55);
        v206 = sub_10000668C(v204, v205, &v253);

        *(v200 + 14) = v206;
        _os_log_impl(&_mh_execute_header, v198, v199, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v200, 0x16u);
        swift_arrayDestroy();
      }

      v207 = objc_opt_self();
      v208 = String._bridgeToObjectiveC()();
      sub_100729CB0(v44);
      v209 = String._bridgeToObjectiveC()();

      sub_100729CB0(v55);
      v210 = String._bridgeToObjectiveC()();

      [v207 unauthorizedErrorWithMissingEntitlement:v208 requestedAccessLevel:v209 currentAccesslevel:v210];

      swift_willThrow();
      swift_bridgeObjectRelease_n();
LABEL_117:

      goto LABEL_118;
    }

    v232 = *(*(v94 + 56) + 8 * v96);
LABEL_73:
    a1 = v44[2].isa;
    v234 = a1;
    v248 = 0;
    if (a1)
    {

      v24 = 0;
      while (v24 < v44[2].isa)
      {
        v142 = *(v24 + v44 + 32);
        LODWORD(v44) = dword_1007B562C[v142];
        if (*(v85 + 68) >> 14 == 2 && (v44 & *(v85 + 64)) == 0)
        {
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v144, v145))
          {
            v146 = v142;
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v253 = v148;
            *v147 = v233;
            LOBYTE(v259) = v146;
            v149 = String.init<A>(describing:)();
            v151 = sub_10000668C(v149, v150, &v253);
            a1 = v234;

            *(v147 + 4) = v151;
            _os_log_impl(&_mh_execute_header, v144, v145, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v147, 0xCu);
            sub_10000607C(v148);
            v85 = v250;
          }
        }

        v152 = *(v85 + 68) >> 14;
        LODWORD(v55) = 2147483519;
        if (v152 >= 2)
        {
          if (v152 == 3)
          {
            LODWORD(v55) = 0x7FFFFFFF;
          }

          else
          {
            LODWORD(v55) = *(v85 + 64);
          }
        }

        if ((v55 & v44) == 0)
        {
          goto LABEL_113;
        }

        v24 = (v24 + 1);
        v55 = v247;
        v44 = v249;
        if (a1 == v24)
        {

          goto LABEL_91;
        }
      }

      goto LABEL_129;
    }

LABEL_91:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v37 = v246;
    v39 = v232;
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v153, v154))
    {
      v219 = v154;
      v220 = v153;
      v155 = v44;
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v259 = v218;
      *v156 = v223;
      *(v156 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v259);
      *(v156 + 12) = 2082;
      v158 = *(v85 + 40);
      v254 = *(v85 + 24);
      *v255 = v158;
      *&v255[14] = *(v85 + 54);
      sub_100009DAC(&v254, &v253);
      v159 = sub_1000063E8();
      v161 = v160;
      sub_1005812D4(&v254);
      v162 = sub_10000668C(v159, v161, &v259);

      *(v156 + 14) = v162;
      *(v156 + 22) = 2114;
      *(v156 + 24) = v37;
      *v157 = v37;
      *(v156 + 32) = 2112;
      v232 = v37;
      v163 = v37;
      v246 = v39;
      v164 = [v39 objectID];
      *(v156 + 34) = v164;
      v217 = v157;
      v157[1] = v164;
      *(v156 + 42) = 2082;
      v165 = v155[2].isa;
      if (v165)
      {
        v253 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v165, 0);
        v166 = v253;
        v167 = 32;
        do
        {
          v168 = sub_1002F6E68(*(&v155->isa + v167));
          v253 = v166;
          v171 = v166[2].isa;
          v170 = v166[3].isa;
          if (v171 >= v170 >> 1)
          {
            v216 = v168;
            v173 = v169;
            sub_100026EF4((v170 > 1), v171 + 1, 1);
            v169 = v173;
            v55 = v247;
            v168 = v216;
            v166 = v253;
          }

          v166[2].isa = (v171 + 1);
          v172 = &v166[2 * v171];
          v172[4].isa = v168;
          v172[5].isa = v169;
          ++v167;
          --v165;
        }

        while (v165);
      }

      v174 = Array.description.getter();
      v176 = v175;

      v177 = sub_10000668C(v174, v176, &v259);

      *(v156 + 44) = v177;
      *(v156 + 52) = 1024;
      v85 = v250;
      LODWORD(v177) = *(v250 + 104);

      *(v156 + 54) = v177;

      v178 = v220;
      _os_log_impl(&_mh_execute_header, v220, v219, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v156, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v44 = v155;
      v39 = v246;
      a1 = v234;
      v37 = v232;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v28 = v244;
    v179 = v248;
    sub_1002F9D20(v244, v39, v44, v85);
    if (v179)
    {
      goto LABEL_127;
    }

    v248 = 0;

    v180 = [v39 changedValues];
    v181 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v182 = v242;
    swift_beginAccess();
    v183 = v37;

    v184 = v182[7];
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v259 = v182[7];
    v182[7] = 0x8000000000000000;
    sub_1002C8688(v181, v183, v185);

    v182[7] = v259;
    swift_endAccess();
    v186 = *(v85 + 104);
    if (a1 && (v186 & 1) != 0)
    {

      [v39 updateChangeCount];

      v54 = v240;
    }

    else
    {

      v187 = v183;

      v188 = Logger.logObject.getter();
      v189 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v253 = v249;
        *v190 = v221;
        *(v190 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v253);
        v246 = v39;
        *(v190 + 12) = 1024;
        *(v190 + 14) = v186;

        *(v190 + 18) = 1024;
        *(v190 + 20) = 0;
        *(v190 + 24) = 2114;
        *(v190 + 26) = v187;
        v44->isa = v187;
        *(v190 + 34) = 2082;
        v191 = v187;
        v192 = v248;
        sub_1005E2810(v181);
        v248 = v192;

        v193 = Array.description.getter();
        v195 = v194;

        v196 = sub_10000668C(v193, v195, &v253);

        *(v190 + 36) = v196;
        _os_log_impl(&_mh_execute_header, v188, v189, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v190, 0x2Cu);
        sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v197 = &v260;
      }

      else
      {

        v197 = &v258;
      }

      v54 = v240;
      v55 = v247;
    }

    v63 = v230;
    v58 = v248;
    v59 = v241;
    v64 = v228;
    v65 = v227;
    v66 = v226;
    if (v230 == v229)
    {
      goto LABEL_117;
    }
  }

LABEL_118:
  v60 = &v255[24];
LABEL_119:
  v211 = *(v60 - 32);
}

void sub_1006397B0(unint64_t a1, uint64_t a2, void *a3)
{
  v215 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v211 = &v215;
  v9 = sub_1003DF88C(sub_1006AD658, &v210, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  log = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v202 = v11;
  v201 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v209 = v8;
    v15 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v212[0] = v11;
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v212);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10[2];

    *(v15 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v16 = [swift_getObjCClassFromMetadata() description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000668C(v17, v19, v212);

    *(v15 + 24) = v20;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v209, v7, v212);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v208 = v10[2];
  if (!v208)
  {
LABEL_32:

    return;
  }

  v21 = 0;
  v214 = _swiftEmptySetSingleton;
  v207 = v10 + 4;
  v22 = &unk_100939D60;
  v206 = v10;
  do
  {
    if (v21 >= v10[2])
    {
      __break(1u);
LABEL_128:
      __break(1u);

      return;
    }

    v23 = &v207[2 * v21];
    v24 = v23[1];
    v25 = v24[2];
    if (v25)
    {
      v222 = v21;
      v26 = *v23;

      v11 = 32;
      do
      {
        v27 = *(v24 + v11);
        sub_1000F5104(v22, &unk_1007959E0);
        v28 = v22;
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1007953F0;
        v30 = &selRef_reminderID;
        if (!v27)
        {
          v30 = &selRef_accountID;
        }

        *(v29 + 32) = [v26 *v30];
        sub_100392144(v29);
        v22 = v28;

        ++v11;
        --v25;
      }

      while (v25);

      v10 = v206;
      v21 = v222;
    }

    ++v21;
  }

  while (v21 != v208);
  if (log >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((log & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  if (!v31)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_31:
    v38 = sub_1005E2514(v214);

    v39 = v201;
    v222 = sub_10065F214(v38, v201);

    v193 = sub_10065E91C(v37, v201);

    swift_beginAccess();
    v40 = 0;
    while (1)
    {
      if (v40 >= v10[2])
      {
        goto LABEL_140;
      }

      v45 = &v207[2 * v40];
      v46 = v45[1];
      v47 = *v45;
      v195 = v46;

      v48 = sub_1005E45B0([v47 remObjectID]);
      v194 = v40;

      v49 = v39[6];
      if ((v49 & 0xC000000000000001) != 0)
      {
        if (v49 < 0)
        {
          v50 = v39[6];
        }

        v51 = v48;

        v52 = __CocoaDictionary.lookup(_:)();
        if (!v52)
        {
          goto LABEL_60;
        }

        v213 = v52;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v53 = v212[0];

        v54 = v222;
        if (v53)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v54 = v222;
        if (!*(v49 + 16))
        {
          goto LABEL_61;
        }

        v51 = v48;

        v55 = sub_10002B924(v51);
        if ((v56 & 1) == 0)
        {
LABEL_60:

          goto LABEL_61;
        }

        v53 = *(*(v49 + 56) + 8 * v55);

        if (v53)
        {
LABEL_45:

          v192 = v47;
          if (!*(v193 + 16) || (v57 = sub_100393C74(v48), (v58 & 1) == 0))
          {

            v166 = v48;

            v167 = Logger.logObject.getter();
            v168 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              v213 = swift_slowAlloc();
              *v169 = 136446722;
              *(v169 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v213);
              *(v169 + 12) = 2082;
              v170 = *(v202 + 40);
              v216 = *(v202 + 24);
              v217[0] = v170;
              *(v217 + 14) = *(v202 + 54);
              sub_100009DAC(&v216, v212);
              v171 = sub_1000063E8();
              v173 = v172;
              sub_1005812D4(&v216);
              v174 = sub_10000668C(v171, v173, &v213);

              *(v169 + 14) = v174;
              *(v169 + 22) = 2080;
              v175 = [v166 description];
              v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v178 = v177;

              v179 = sub_10000668C(v176, v178, &v213);

              *(v169 + 24) = v179;
              _os_log_impl(&_mh_execute_header, v167, v168, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v169, 0x20u);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v166];
            swift_willThrow();

            return;
          }

          v59 = *(*(v193 + 56) + 8 * v57);
          v60 = v195;
          swift_bridgeObjectRetain_n();
          v61 = v48;
          v190 = v59;
          v62 = v202;

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();

          v186 = v61;
          if (os_log_type_enabled(v63, v64))
          {
            v199 = v64;
            loga = v63;
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            *v65 = 136446978;
            *(v65 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v213);
            *(v65 + 12) = 2082;
            v67 = *(v202 + 40);
            v220 = *(v202 + 24);
            v221[0] = v67;
            *(v221 + 14) = *(v202 + 54);
            sub_100009DAC(&v220, v212);
            v68 = sub_1000063E8();
            v70 = v69;
            sub_1005812D4(&v220);
            v71 = sub_10000668C(v68, v70, &v213);

            *(v65 + 14) = v71;
            *(v65 + 22) = 2114;
            *(v65 + 24) = v61;
            v196 = v66;
            *v66 = v61;
            *(v65 + 32) = 2082;
            v72 = v195[2];
            if (v72)
            {
              v212[0] = _swiftEmptyArrayStorage;
              v73 = v61;
              sub_100026EF4(0, v72, 0);
              v74 = v212[0];
              v75 = *(v212[0] + 16);
              v76 = 16 * v75;
              v77 = 32;
              do
              {
                if (*(v60 + v77))
                {
                  v78 = 0x7265646E696D6572;
                }

                else
                {
                  v78 = 0x49746E756F636361;
                }

                if (*(v60 + v77))
                {
                  v79 = 0xEA00000000004449;
                }

                else
                {
                  v79 = 0xE900000000000044;
                }

                v212[0] = v74;
                v80 = *(v74 + 24);
                v81 = v75 + 1;
                if (v75 >= v80 >> 1)
                {
                  sub_100026EF4((v80 > 1), v75 + 1, 1);
                  v60 = v195;
                  v74 = v212[0];
                }

                *(v74 + 16) = v81;
                v82 = v74 + v76;
                *(v82 + 32) = v78;
                *(v82 + 40) = v79;
                v76 += 16;
                ++v77;
                v75 = v81;
                --v72;
              }

              while (v72);

              v62 = v202;
              v47 = v192;
            }

            else
            {
              v86 = v61;
            }

            v87 = Array.description.getter();
            v89 = v88;

            v90 = sub_10000668C(v87, v89, &v213);

            *(v65 + 34) = v90;
            _os_log_impl(&_mh_execute_header, loga, v199, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v65, 0x2Au);
            sub_1000050A4(v196, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v10 = v206;
            v54 = v222;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v91 = v60;
          v183 = v60[2];
          if (v183)
          {
            v92 = 0;
            v184 = v60 + 4;
            while (1)
            {
              if (v92 >= v91[2])
              {
                goto LABEL_141;
              }

              v187 = v92;
              v93 = v184[v92];
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v94 = swift_allocObject();
              *(v94 + 16) = xmmword_1007953F0;
              v188 = v93;
              v95 = &selRef_accountID;
              if (v93)
              {
                v95 = &selRef_reminderID;
              }

              *(v94 + 32) = [v47 *v95];
              v200 = v94 + 32;
              logb = (v94 & 0xFFFFFFFFFFFFFF8);
              v197 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v197)
              {
                break;
              }

              v97 = _swiftEmptyDictionarySingleton;
LABEL_116:

              sub_10045BDE8(v97);
              v140 = v139;

              if (v188)
              {
                v141 = [v47 reminderID];
                sub_100683CB0(1, v141, v140);
                v143 = v187;
                v144 = &selRef_setReminder_;
              }

              else
              {
                v141 = [v47 accountID];
                sub_1006843F8(0, v141, v140, off_1008D4120, &qword_1009399F0);
                v143 = v187;
                v144 = &selRef_setAccount_;
              }

              v92 = v143 + 1;
              v145 = v142;

              [v190 *v144];

              v47 = v192;
              v54 = v222;
              v91 = v195;
              if (v92 == v183)
              {
                goto LABEL_120;
              }
            }

            v96 = 0;
            v198 = v94 & 0xC000000000000001;
            v97 = _swiftEmptyDictionarySingleton;
            while (2)
            {
              if (v198)
              {
                v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v96 >= logb[2].isa)
                {
                  goto LABEL_136;
                }

                v100 = *(v200 + 8 * v96);
              }

              v101 = *(v54 + 16);
              v102 = v100;
              v103 = v102;
              if (!v101 || (v104 = sub_100393C74(v102), (v105 & 1) == 0))
              {

                v146 = v103;
                v147 = Logger.logObject.getter();
                v148 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v147, v148))
                {
                  v149 = v62;
                  v150 = swift_slowAlloc();
                  v213 = swift_slowAlloc();
                  *v150 = 136446978;
                  *(v150 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v213);
                  *(v150 + 12) = 2082;
                  v151 = *(v149 + 40);
                  v218 = *(v149 + 24);
                  v219[0] = v151;
                  *(v219 + 14) = *(v149 + 54);
                  sub_100009DAC(&v218, v212);
                  v152 = sub_1000063E8();
                  v154 = v153;
                  sub_1005812D4(&v218);
                  v155 = sub_10000668C(v152, v154, &v213);

                  *(v150 + 14) = v155;
                  *(v150 + 22) = 2080;
                  v156 = [v146 description];
                  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v159 = v158;

                  v160 = sub_10000668C(v157, v159, &v213);

                  *(v150 + 24) = v160;
                  *(v150 + 32) = 2080;
                  v161 = [v146 description];
                  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v164 = v163;

                  v165 = sub_10000668C(v162, v164, &v213);

                  *(v150 + 34) = v165;
                  _os_log_impl(&_mh_execute_header, v147, v148, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v150, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v146];
                swift_willThrow();

                return;
              }

              v106 = *(*(v54 + 56) + 8 * v104);
              if ((v97 & 0xC000000000000001) != 0)
              {
                if (v97 < 0)
                {
                  v107 = v97;
                }

                else
                {
                  v107 = v97 & 0xFFFFFFFFFFFFFF8;
                }

                v108 = v106;
                v109 = __CocoaDictionary.count.getter();
                if (__OFADD__(v109, 1))
                {
                  goto LABEL_138;
                }

                v110 = v106;
                v111 = sub_10021D008(v107, v109 + 1);
              }

              else
              {
                v110 = *(*(v54 + 56) + 8 * v104);
                v112 = v106;
                v111 = v97;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v212[0] = v111;
              v115 = sub_10002B924(v103);
              v116 = *(v111 + 16);
              v117 = (v114 & 1) == 0;
              v118 = v116 + v117;
              if (__OFADD__(v116, v117))
              {
                goto LABEL_137;
              }

              v119 = v114;
              if (*(v111 + 24) >= v118)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v97 = v111;
                  v54 = v222;
                  if ((v114 & 1) == 0)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_73;
                }

                sub_1000F5104(&qword_10093D598, &unk_10079B210);
                v125 = static _DictionaryStorage.copy(original:)();
                v97 = v125;
                if (*(v111 + 16))
                {
                  v126 = (v125 + 64);
                  __src = (v111 + 64);
                  v127 = ((1 << *(v97 + 32)) + 63) >> 6;
                  if (v97 != v111 || v126 >= &__src[8 * v127])
                  {
                    memmove(v126, __src, 8 * v127);
                  }

                  v128 = 0;
                  *(v97 + 16) = *(v111 + 16);
                  v129 = 1 << *(v111 + 32);
                  if (v129 < 64)
                  {
                    v130 = ~(-1 << v129);
                  }

                  else
                  {
                    v130 = -1;
                  }

                  v182 = v130 & *(v111 + 64);
                  for (i = (v129 + 63) >> 6; v182; v138 = v136)
                  {
                    v131 = __clz(__rbit64(v182));
                    v182 &= v182 - 1;
LABEL_111:
                    v134 = v131 | (v128 << 6);
                    v135 = *(*(v111 + 48) + 8 * v134);
                    v136 = *(*(v111 + 56) + 8 * v134);
                    *(*(v97 + 48) + 8 * v134) = v135;
                    *(*(v97 + 56) + 8 * v134) = v136;
                    v137 = v135;
                  }

                  v132 = v128;
                  while (1)
                  {
                    v128 = v132 + 1;
                    if (__OFADD__(v132, 1))
                    {
                      goto LABEL_142;
                    }

                    if (v128 >= i)
                    {
                      break;
                    }

                    v133 = *&__src[8 * v128];
                    ++v132;
                    if (v133)
                    {
                      v131 = __clz(__rbit64(v133));
                      v182 = (v133 - 1) & v133;
                      goto LABEL_111;
                    }
                  }
                }

                v47 = v192;
                v54 = v222;
                if (v119)
                {
                  goto LABEL_73;
                }

LABEL_94:
                *(v97 + 8 * (v115 >> 6) + 64) |= 1 << v115;
                *(*(v97 + 48) + 8 * v115) = v103;
                *(*(v97 + 56) + 8 * v115) = v110;

                v122 = *(v97 + 16);
                v123 = __OFADD__(v122, 1);
                v124 = v122 + 1;
                if (v123)
                {
                  goto LABEL_139;
                }

                *(v97 + 16) = v124;
              }

              else
              {
                sub_10036CABC(v118, isUniquelyReferenced_nonNull_native);
                v97 = v212[0];
                v120 = sub_10002B924(v103);
                if ((v119 & 1) != (v121 & 1))
                {
                  goto LABEL_143;
                }

                v115 = v120;
                v54 = v222;
                if ((v119 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_73:

                v98 = *(v97 + 56);
                v99 = *(v98 + 8 * v115);
                *(v98 + 8 * v115) = v110;
              }

              v62 = v202;
              v10 = v206;
              v96 = (v96 + 1);
              if (v96 == v197)
              {
                goto LABEL_116;
              }

              continue;
            }
          }

LABEL_120:

          if (*(v62 + 104))
          {
            [v190 updateChangeCount];
          }

          goto LABEL_123;
        }
      }

LABEL_61:

      v83 = v48;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v84, v85))
      {

LABEL_123:
        goto LABEL_34;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v212[0] = v43;
      *v41 = 136446466;
      *(v41 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v212);
      *(v41 + 12) = 2114;
      *(v41 + 14) = v83;
      *v42 = v83;
      v44 = v83;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v41, 0x16u);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

      sub_10000607C(v43);

LABEL_34:
      v39 = v201;
      v40 = v194 + 1;
      if (v194 + 1 == v208)
      {

        goto LABEL_32;
      }
    }
  }

  v212[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v222 = log & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_128;
      }

      if ((log & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v222 + 16))
        {
          __break(1u);

          goto LABEL_32;
        }

        v34 = *(log + 8 * v32 + 32);
      }

      v35 = v34;
      sub_1005E45B0([(objc_class *)v34 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v212[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v32;
      if (v33 == v31)
      {
        v37 = v212[0];
        v10 = v206;
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063AE84(unint64_t a1, void **a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v248 = *(v7 - 8);
  v8 = *(v248 + 64);
  __chkstk_darwin(v7);
  v10 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = a2;
  v11 = a3[2];
  v12 = a3[3];
  v258[2] = &v263;
  v259 = v3;
  v13 = v270;
  v14 = sub_1003DF8B8(sub_1006AF308, v258, a1);
  if (v13)
  {
    return;
  }

  v245 = a3;
  v256 = v11;
  *&v257 = v12;
  v15 = v14;
  v270 = a2;
  v249 = a1;
  v246 = v10;
  v242 = v7;
  v16 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v252 = 0;
  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100945730);
  v19 = v15;

  v20 = v257;

  v244 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v247 = v16;
  v251 = v19;
  v24 = v256;
  v243 = "mutateRelationshipOrdering";
  if (v23)
  {
    v25 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v260[0] = v255;
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v260);
    *(v25 + 12) = 2048;
    *(v25 + 14) = v251[2];

    *(v25 + 22) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = v22;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v21;
    v31 = v30;

    v32 = sub_10000668C(v28, v31, v260);

    *(v25 + 24) = v32;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v24, v20, v260);
    _os_log_impl(&_mh_execute_header, v29, v27, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    v21 = v255;
    swift_arrayDestroy();

    v19 = v251;
  }

  else
  {
  }

  v33 = v270;
  v254 = v19[2];
  if (!v254)
  {
LABEL_35:

    return;
  }

  v34 = 0;
  v262 = _swiftEmptySetSingleton;
  v253 = v19 + 4;
  v250 = v270 + 3;
  v35 = &unk_100939D60;
  v270 += 2;
  v257 = xmmword_1007953F0;
  v36 = v33 + 3;
  do
  {
    if (v34 >= v19[2])
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:

      return;
    }

    v37 = &v253[2 * v34];
    v38 = v37[1];
    v39 = v38[2];
    if (v39)
    {
      v256 = v34;
      v255 = *v37;

      v40 = 32;
      do
      {
        v41 = *(v38 + v40);
        sub_1000F5104(v35, &unk_1007959E0);
        v42 = swift_allocObject();
        v43 = v35;
        v44 = v42;
        *(v42 + 16) = v257;
        v45 = v270;
        if (v41)
        {
          v45 = v36;
        }

        v46 = *v45;
        *(v42 + 32) = v46;
        v47 = v46;
        v21 = &v262;
        sub_100392144(v44);
        v35 = v43;

        ++v40;
        --v39;
      }

      while (v39);

      v19 = v251;
      v34 = v256;
    }

    ++v34;
  }

  while (v34 != v254);
  v48 = v248;
  if (v249 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v252;
  v51 = _swiftEmptyArrayStorage;
  if (!v49)
  {
LABEL_30:
    v59 = sub_1005E2514(v262);
    if (v50)
    {

      return;
    }

    v60 = v59;

    v61 = v245;
    v62 = sub_10065F214(v60, v245);

    v63 = sub_10065FB04(v51, v61);
    v252 = 0;
    v237 = v63;

    swift_beginAccess();
    v64 = 0;
    v227 = (v48 + 8);
    *&v65 = 136446466;
    v232 = v65;
    *&v65 = 136446978;
    v228 = v65;
    v241 = v62;
    while (1)
    {
      if (v64 >= v19[2])
      {
        goto LABEL_148;
      }

      v66 = &v253[2 * v64];
      v67 = v66[1];
      v21 = *v66;
      v240 = v67;

      v68 = [v21 remObjectID];
      v69 = v252;
      v70 = sub_1005E3810(v68, &qword_10093CFE0, off_1008D4190);
      v252 = v69;
      if (v69)
      {
        goto LABEL_135;
      }

      v71 = v70;
      v238 = v64;
      v239 = v21;

      v72 = v61[6];
      if ((v72 & 0xC000000000000001) != 0)
      {
        if (v72 < 0)
        {
          v73 = v61[6];
        }

        v74 = v71;

        v75 = __CocoaDictionary.lookup(_:)();
        if (!v75)
        {
          goto LABEL_64;
        }

        v261[0] = v75;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v76 = v260[0];
      }

      else
      {
        if (!*(v72 + 16))
        {
          goto LABEL_65;
        }

        v74 = v71;

        v77 = sub_10002B924(v74);
        if ((v78 & 1) == 0)
        {
LABEL_64:

LABEL_65:

          v107 = v71;
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v260[0] = v112;
            *v110 = v232;
            *(v110 + 4) = sub_10000668C(0xD000000000000016, v243 | 0x8000000000000000, v260);
            *(v110 + 12) = 2114;
            *(v110 + 14) = v107;
            *v111 = v107;
            v113 = v107;
            _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v110, 0x16u);
            sub_1000050A4(v111, &unk_100938E70, &unk_100797230);

            sub_10000607C(v112);

            v19 = v251;
          }

          else
          {
          }

          goto LABEL_37;
        }

        v76 = *(*(v72 + 56) + 8 * v77);
      }

      if (!v76)
      {
        goto LABEL_65;
      }

      if (!*(v237 + 16) || (v79 = sub_100393C74(v71), (v80 & 1) == 0))
      {

        v206 = v71;
        v207 = v247;

        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v261[0] = swift_slowAlloc();
          *v210 = 136446722;
          *(v210 + 4) = sub_10000668C(0xD000000000000016, v243 | 0x8000000000000000, v261);
          *(v210 + 12) = 2082;
          v211 = *(v207 + 40);
          v264 = *(v207 + 24);
          v265[0] = v211;
          *(v265 + 14) = *(v207 + 54);
          sub_100009DAC(&v264, v260);
          v212 = sub_1000063E8();
          v214 = v213;
          sub_1005812D4(&v264);
          v215 = sub_10000668C(v212, v214, v261);

          *(v210 + 14) = v215;
          *(v210 + 22) = 2080;
          v216 = [v206 description];
          v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v219 = v218;

          v220 = sub_10000668C(v217, v219, v261);

          *(v210 + 24) = v220;
          _os_log_impl(&_mh_execute_header, v208, v209, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v210, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v206];
        swift_willThrow();

        return;
      }

      v81 = *(*(v237 + 56) + 8 * v79);
      v82 = v240;
      swift_bridgeObjectRetain_n();
      v83 = v71;
      v236 = v81;
      v84 = v247;

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      v87 = os_log_type_enabled(v85, v86);
      v231 = v83;
      if (v87)
      {
        LODWORD(v248) = v86;
        v255 = v85;
        v88 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v261[0] = v235;
        *v88 = v228;
        *(v88 + 4) = sub_10000668C(0xD000000000000016, v243 | 0x8000000000000000, v261);
        *(v88 + 12) = 2082;
        v89 = *(v84 + 40);
        v268 = *(v84 + 24);
        v269[0] = v89;
        *(v269 + 14) = *(v84 + 54);
        sub_100009DAC(&v268, v260);
        v90 = sub_1000063E8();
        v91 = v82;
        v93 = v92;
        sub_1005812D4(&v268);
        v94 = sub_10000668C(v90, v93, v261);

        *(v88 + 14) = v94;
        *(v88 + 22) = 2114;
        *(v88 + 24) = v83;
        *v256 = v83;
        v249 = v88;
        *(v88 + 32) = 2082;
        v95 = v91[2];
        if (v95)
        {
          v260[0] = _swiftEmptyArrayStorage;
          v96 = v83;
          sub_100026EF4(0, v95, 0);
          v97 = v260[0];
          v98 = *(v260[0] + 16);
          v99 = 16 * v98;
          v100 = v91;
          v101 = 32;
          do
          {
            if (*(v100 + v101))
            {
              v102 = 0x7265646E696D6572;
            }

            else
            {
              v102 = 0x49746E756F636361;
            }

            if (*(v100 + v101))
            {
              v103 = 0xEA00000000004449;
            }

            else
            {
              v103 = 0xE900000000000044;
            }

            v260[0] = v97;
            v104 = *(v97 + 24);
            v105 = v98 + 1;
            if (v98 >= v104 >> 1)
            {
              sub_100026EF4((v104 > 1), v98 + 1, 1);
              v100 = v240;
              v97 = v260[0];
            }

            *(v97 + 16) = v105;
            v106 = v97 + v99;
            *(v106 + 32) = v102;
            *(v106 + 40) = v103;
            v99 += 16;
            ++v101;
            v98 = v105;
            --v95;
          }

          while (v95);
          v91 = v100;

          v19 = v251;
          v62 = v241;
        }

        else
        {
          v114 = v83;
        }

        v115 = Array.description.getter();
        v117 = v116;

        v118 = v115;
        v82 = v91;
        v119 = sub_10000668C(v118, v117, v261);

        v120 = v249;
        *(v249 + 34) = v119;
        v121 = v255;
        _os_log_impl(&_mh_execute_header, v255, v248, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v120, 0x2Au);
        sub_1000050A4(v256, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v84 = v247;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v122 = v246;
      v123 = v250;
      v229 = v82[2];
      if (v229)
      {
        v124 = 0;
        v230 = v82 + 4;
        while (1)
        {
          if (v124 >= v82[2])
          {
            goto LABEL_149;
          }

          v233 = v124;
          v125 = *(v230 + v124);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v126 = swift_allocObject();
          v127 = v126;
          *(v126 + 16) = v257;
          v234 = v125;
          v128 = v270;
          if (v125)
          {
            v128 = v123;
          }

          v129 = *v128;
          *(v126 + 32) = v129;
          v255 = (v126 + 32);
          v130 = v129;
          v256 = (v127 & 0xFFFFFFFFFFFFFF8);
          v248 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v235 = v127;
          if (v248)
          {
            break;
          }

          v132 = _swiftEmptyDictionarySingleton;
          v133 = v252;
LABEL_120:

          sub_10045BDE8(v132);
          v177 = v176;

          if (v234)
          {
            v178 = *v123;
            sub_1006843F8(1, *v123, v177, off_1008D41D0, &qword_100939EE0);
            v252 = v133;
            v19 = v251;
            if (v133)
            {
              goto LABEL_141;
            }

            v180 = v179;

            v181 = v236;
            [v236 setReminder:v180];
            v182 = [v178 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v183.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v227)(v122, v242);
            [v181 setReminderIdentifier:v183.super.isa];
          }

          else
          {
            sub_1006843F8(0, *v270, v177, off_1008D4120, &qword_1009399F0);
            v252 = v133;
            v19 = v251;
            if (v133)
            {
              goto LABEL_141;
            }

            v183.super.isa = v184;

            [v236 setAccount:v183.super.isa];
          }

          v124 = v233 + 1;

          v84 = v247;
          v82 = v240;
          if (v124 == v229)
          {
            goto LABEL_126;
          }
        }

        v131 = 0;
        v249 = v127 & 0xC000000000000001;
        v132 = _swiftEmptyDictionarySingleton;
        v133 = v252;
        while (2)
        {
          if (v249)
          {
            v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v131 >= v256[2])
            {
              goto LABEL_144;
            }

            v136 = v255[v131].isa;
          }

          v137 = *(v62 + 16);
          v138 = v136;
          v139 = v138;
          if (!v137 || (v140 = sub_100393C74(v138), (v141 & 1) == 0))
          {

            v186 = v139;
            v187 = Logger.logObject.getter();
            v188 = v84;
            v189 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v187, v189))
            {
              v190 = swift_slowAlloc();
              v270 = swift_slowAlloc();
              v261[0] = v270;
              *v190 = v228;
              *(v190 + 4) = sub_10000668C(0xD000000000000016, v243 | 0x8000000000000000, v261);
              *(v190 + 12) = 2082;
              v191 = *(v188 + 40);
              v266 = *(v188 + 24);
              v267[0] = v191;
              *(v267 + 14) = *(v188 + 54);
              sub_100009DAC(&v266, v260);
              v192 = sub_1000063E8();
              v194 = v193;
              sub_1005812D4(&v266);
              v195 = sub_10000668C(v192, v194, v261);

              *(v190 + 14) = v195;
              *(v190 + 22) = 2080;
              v196 = [(objc_class *)v186 description];
              v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v199 = v198;

              v200 = sub_10000668C(v197, v199, v261);

              *(v190 + 24) = v200;
              *(v190 + 32) = 2080;
              v201 = [(objc_class *)v186 description];
              v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v204 = v203;

              v205 = sub_10000668C(v202, v204, v261);

              *(v190 + 34) = v205;
              _os_log_impl(&_mh_execute_header, v187, v189, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v190, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v186];
            swift_willThrow();

            return;
          }

          v142 = *(*(v62 + 56) + 8 * v140);
          v252 = v133;
          if ((v132 & 0xC000000000000001) != 0)
          {
            if (v132 < 0)
            {
              v143 = v132;
            }

            else
            {
              v143 = v132 & 0xFFFFFFFFFFFFFF8;
            }

            v144 = v142;
            v145 = __CocoaDictionary.count.getter();
            if (__OFADD__(v145, 1))
            {
              goto LABEL_146;
            }

            v146 = sub_10021D008(v143, v145 + 1);
          }

          else
          {
            v147 = v142;
            v146 = v132;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v260[0] = v146;
          v149 = v139;
          v151 = sub_10002B924(v139);
          v152 = *(v146 + 16);
          v153 = (v150 & 1) == 0;
          v154 = v152 + v153;
          if (__OFADD__(v152, v153))
          {
            goto LABEL_145;
          }

          v155 = v150;
          if (*(v146 + 24) >= v154)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v132 = v146;
              v123 = v250;
              if ((v150 & 1) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_77;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v161 = static _DictionaryStorage.copy(original:)();
            v132 = v161;
            if (*(v146 + 16))
            {
              v162 = (v161 + 64);
              v163 = 1 << *(v132 + 32);
              v224 = (v146 + 64);
              v164 = (v163 + 63) >> 6;
              if (v132 != v146 || v162 >= &v224[8 * v164])
              {
                memmove(v162, v224, 8 * v164);
              }

              v165 = 0;
              *(v132 + 16) = *(v146 + 16);
              v166 = 1 << *(v146 + 32);
              if (v166 < 64)
              {
                v167 = ~(-1 << v166);
              }

              else
              {
                v167 = -1;
              }

              v226 = v167 & *(v146 + 64);
              for (i = (v166 + 63) >> 6; v226; v175 = v225)
              {
                v168 = __clz(__rbit64(v226));
                v226 &= v226 - 1;
LABEL_115:
                v171 = v168 | (v165 << 6);
                v172 = *(*(v146 + 48) + 8 * v171);
                v225 = *(*(v146 + 56) + 8 * v171);
                v173 = v225;
                *(*(v132 + 48) + 8 * v171) = v172;
                *(*(v132 + 56) + 8 * v171) = v173;
                v174 = v172;
              }

              v169 = v165;
              while (1)
              {
                v165 = v169 + 1;
                if (__OFADD__(v169, 1))
                {
                  goto LABEL_150;
                }

                if (v165 >= i)
                {
                  break;
                }

                v170 = *&v224[8 * v165];
                ++v169;
                if (v170)
                {
                  v168 = __clz(__rbit64(v170));
                  v226 = (v170 - 1) & v170;
                  goto LABEL_115;
                }
              }
            }

            v123 = v250;
            if (v155)
            {
              goto LABEL_77;
            }

LABEL_98:
            *(v132 + 8 * (v151 >> 6) + 64) |= 1 << v151;
            *(*(v132 + 48) + 8 * v151) = v149;
            *(*(v132 + 56) + 8 * v151) = v142;

            v158 = *(v132 + 16);
            v159 = __OFADD__(v158, 1);
            v160 = v158 + 1;
            if (v159)
            {
              goto LABEL_147;
            }

            *(v132 + 16) = v160;
          }

          else
          {
            sub_10036CABC(v154, isUniquelyReferenced_nonNull_native);
            v132 = v260[0];
            v156 = sub_10002B924(v149);
            if ((v155 & 1) != (v157 & 1))
            {
              goto LABEL_151;
            }

            v151 = v156;
            v123 = v250;
            if ((v155 & 1) == 0)
            {
              goto LABEL_98;
            }

LABEL_77:

            v134 = *(v132 + 56);
            v135 = *(v134 + 8 * v151);
            *(v134 + 8 * v151) = v142;
          }

          v122 = v246;
          v84 = v247;
          v133 = v252;
          v62 = v241;
          if (++v131 == v248)
          {
            goto LABEL_120;
          }

          continue;
        }
      }

LABEL_126:

      if (*(v84 + 104))
      {
        v185 = v236;
        [v236 updateChangeCount];
      }

      else
      {
      }

LABEL_37:
      v61 = v245;
      v64 = v238 + 1;
      if ((v238 + 1) == v254)
      {
        goto LABEL_34;
      }
    }
  }

  v260[0] = _swiftEmptyArrayStorage;
  v21 = v260;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = v249 & 0xC000000000000001;
    v256 = (v249 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_134;
      }

      v55 = v252;
      if (v53)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= v256[2])
        {
          __break(1u);
LABEL_141:
          v221 = v239;

LABEL_34:

          goto LABEL_35;
        }

        v56 = *(v249 + 8 * v52 + 32);
      }

      v57 = v56;
      sub_1005E3810([v56 remObjectID], &qword_10093CFE0, off_1008D4190);
      v252 = v55;
      if (v55)
      {

        return;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v58 = *(v260[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v260;
      specialized ContiguousArray._endMutation()();
      ++v52;
      if (v54 == v49)
      {
        v51 = v260[0];
        v19 = v251;
        v50 = v252;
        v48 = v248;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063C664(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v193 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v189 = &v193;
  v10 = sub_1003DF8E4(sub_1006AC73C, v188, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v179 = a1;
  v181 = a2;
  v177 = a3;
  v12 = v3;
  v13 = "establishRelationships";
  if (qword_100936008 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v14 = v13 - 4;
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945730);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v178 = v12;
    v182 = v11;
    v176 = v14;
    if (os_log_type_enabled(v16, v17))
    {
      v187 = v9;
      v18 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v18 = 136446978;
      *(v18 + 4) = sub_10000668C(0xD000000000000016, v14 | 0x8000000000000000, v190);
      *(v18 + 12) = 2048;
      *(v18 + 14) = *(v11 + 16);

      *(v18 + 22) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v19 = [swift_getObjCClassFromMetadata() description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v11 = v182;
      v23 = sub_10000668C(v20, v22, v190);

      *(v18 + 24) = v23;
      *(v18 + 32) = 2082;
      *(v18 + 34) = sub_10000668C(v187, v8, v190);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v18, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v185 = *(v11 + 16);
    if (!v185)
    {
      goto LABEL_29;
    }

    v24 = 0;
    v192 = _swiftEmptySetSingleton;
    v184 = v11 + 32;
    do
    {
      if (v24 >= *(v11 + 16))
      {
        __break(1u);

        goto LABEL_29;
      }

      v25 = v184 + 16 * v24;
      v26 = *(v25 + 8);
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v181 + 16);
        v186 = *v25;
        v200 = v26;

        do
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007953F0;
          *(inited + 32) = v28;
          v30 = v28;
          sub_100392144(inited);
          swift_setDeallocating();
          v31 = *(inited + 16);
          swift_arrayDestroy();
          --v27;
        }

        while (v27);

        v11 = v182;
      }

      ++v24;
    }

    while (v24 != v185);
    if (v179 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = _swiftEmptyArrayStorage;
    if (!v8)
    {
      v37 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v190[0] = _swiftEmptyArrayStorage;
    v13 = v190;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    v32 = 0;
    v11 = v179 & 0xC000000000000001;
    v200 = v179 & 0xFFFFFFFFFFFFFF8;
    v9 = &selRef_persistentStoreForIdentifier_;
    while (1)
    {
      v33 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_106:

        v149 = v32;

        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v152 = 136446722;
          *(v152 + 4) = sub_10000668C(0xD000000000000016, v176 | 0x8000000000000000, &v191);
          *(v152 + 12) = 2082;
          v153 = *(v178 + 5);
          v194 = *(v178 + 3);
          v195[0] = v153;
          *(v195 + 14) = *(v178 + 54);
          sub_100009DAC(&v194, v190);
          v154 = sub_1000063E8();
          v156 = v155;
          sub_1005812D4(&v194);
          v157 = sub_10000668C(v154, v156, &v191);

          *(v152 + 14) = v157;
          *(v152 + 22) = 2080;
          v158 = [v149 description];
          v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v161 = v160;

          v162 = sub_10000668C(v159, v161, &v191);

          *(v152 + 24) = v162;
          _os_log_impl(&_mh_execute_header, v150, v151, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v152, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v149];
        swift_willThrow();

        return;
      }

      if (!v11)
      {
        break;
      }

      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
      v35 = v34;
      sub_1005E5350([v34 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v190[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v190;
      specialized ContiguousArray._endMutation()();
      ++v32;
      if (v33 == v8)
      {
        v37 = v190[0];
        v11 = v182;
LABEL_28:
        v38 = sub_1005E2514(v192);

        v39 = v177;
        v40 = sub_10065F214(v38, v177);

        v170 = sub_1006603FC(v37, v177);

        swift_beginAccess();
        v41 = 0;
        v42 = (_swiftEmptyDictionarySingleton & 0xFFFFFFFFFFFFFF8);
        if (_swiftEmptyDictionarySingleton < 0)
        {
          v42 = _swiftEmptyDictionarySingleton;
        }

        v171 = v42;
        v43 = &selRef_persistentStoreForIdentifier_;
        v173 = v40;
        while (2)
        {
          if (v41 >= *(v11 + 16))
          {
            goto LABEL_118;
          }

          v166 = v41;
          v44 = v184 + 16 * v41;
          v45 = *(v44 + 8);
          v46 = *v44;

          v32 = sub_1005E5350([v46 v43[106]]);

          v47 = v39[6];
          v180 = v45;
          v169 = v46;
          if ((v47 & 0xC000000000000001) != 0)
          {
            v48 = v32;

            v49 = __CocoaDictionary.lookup(_:)();
            if (v49)
            {
              v191 = v49;
              sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
              swift_dynamicCast();
              v50 = v190[0];
              goto LABEL_40;
            }

LABEL_41:

LABEL_42:
            v50 = 0;
          }

          else
          {
            if (!*(v47 + 16))
            {
              goto LABEL_42;
            }

            v48 = v32;

            v51 = sub_10002B924(v48);
            if ((v52 & 1) == 0)
            {
              goto LABEL_41;
            }

            v50 = *(*(v47 + 56) + 8 * v51);
LABEL_40:
          }

          if (!*(v170 + 16))
          {
            goto LABEL_106;
          }

          v53 = sub_100393C74(v32);
          if ((v54 & 1) == 0)
          {
            goto LABEL_106;
          }

          v55 = *(*(v170 + 56) + 8 * v53);
          v56 = v180;
          swift_bridgeObjectRetain_n();
          v57 = v32;
          v175 = v55;

          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();

          v168 = v57;
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v191 = v200;
            *v60 = 136446978;
            *(v60 + 4) = sub_10000668C(0xD000000000000016, v176 | 0x8000000000000000, &v191);
            *(v60 + 12) = 2082;
            v62 = *(v178 + 5);
            v198 = *(v178 + 3);
            v199[0] = v62;
            *(v199 + 14) = *(v178 + 54);
            sub_100009DAC(&v198, v190);
            v63 = sub_1000063E8();
            v65 = v64;
            sub_1005812D4(&v198);
            v66 = sub_10000668C(v63, v65, &v191);

            *(v60 + 14) = v66;
            *(v60 + 22) = 2114;
            *(v60 + 24) = v57;
            *v61 = v57;
            *(v60 + 32) = 2082;
            v56 = v180;
            v67 = *(v180 + 16);
            if (v67)
            {
              v190[0] = _swiftEmptyArrayStorage;
              v68 = v57;
              sub_100026EF4(0, v67, 0);
              v69 = v190[0];
              v70 = *(v190[0] + 16);
              v71 = 16 * v70;
              do
              {
                v190[0] = v69;
                v72 = *(v69 + 24);
                v73 = v70 + 1;
                if (v70 >= v72 >> 1)
                {
                  sub_100026EF4((v72 > 1), v70 + 1, 1);
                  v69 = v190[0];
                }

                *(v69 + 16) = v73;
                v74 = v69 + v71;
                *(v74 + 32) = 0x49746E756F636361;
                *(v74 + 40) = 0xE900000000000044;
                v71 += 16;
                v70 = v73;
                --v67;
              }

              while (v67);
              v56 = v180;
            }

            else
            {
              v75 = v57;
            }

            v76 = Array.description.getter();
            v78 = v77;

            v79 = sub_10000668C(v76, v78, &v191);

            *(v60 + 34) = v79;
            _os_log_impl(&_mh_execute_header, v58, v59, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v60, 0x2Au);
            sub_1000050A4(v61, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v11 = v182;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v80 = v178;
          v81 = v173;
          v172 = *(v56 + 16);
          if (v172)
          {
            v82 = 0;
            v183 = *(v181 + 16);
            while (1)
            {
              if (v82 >= *(v56 + 16))
              {
                goto LABEL_113;
              }

              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v83 = swift_initStackObject();
              *(v83 + 16) = xmmword_1007953F0;
              *(v83 + 32) = v183;
              v84 = v183;
              v85 = v84;
              if ((v83 & 0xC000000000000001) != 0)
              {
                v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_114;
                }

                v86 = v84;
              }

              v87 = *(v81 + 16);
              v88 = v86;
              v89 = v88;
              if (!v87 || (v90 = sub_100393C74(v88), (v91 & 1) == 0))
              {

                v130 = v89;
                v131 = Logger.logObject.getter();
                v132 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v131, v132))
                {
                  v133 = swift_slowAlloc();
                  v191 = swift_slowAlloc();
                  *v133 = 136446978;
                  *(v133 + 4) = sub_10000668C(0xD000000000000016, v176 | 0x8000000000000000, &v191);
                  *(v133 + 12) = 2082;
                  v134 = *(v178 + 5);
                  v196 = *(v178 + 3);
                  v197[0] = v134;
                  *(v197 + 14) = *(v178 + 54);
                  sub_100009DAC(&v196, v190);
                  v135 = sub_1000063E8();
                  v137 = v136;
                  sub_1005812D4(&v196);
                  v138 = sub_10000668C(v135, v137, &v191);

                  *(v133 + 14) = v138;
                  *(v133 + 22) = 2080;
                  v139 = [v130 description];
                  v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v142 = v141;

                  v143 = sub_10000668C(v140, v142, &v191);

                  *(v133 + 24) = v143;
                  *(v133 + 32) = 2080;
                  v144 = [v130 description];
                  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v147 = v146;

                  v148 = sub_10000668C(v145, v147, &v191);

                  *(v133 + 34) = v148;
                  _os_log_impl(&_mh_execute_header, v131, v132, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v133, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v130];
                swift_willThrow();

                return;
              }

              v92 = *(*(v81 + 56) + 8 * v90);
              v93 = _swiftEmptyDictionarySingleton;
              if (_swiftEmptyDictionarySingleton >> 62)
              {
                v94 = __CocoaDictionary.count.getter();
                if (__OFADD__(v94, 1))
                {
                  goto LABEL_116;
                }

                v93 = sub_10021D008(v171, v94 + 1);
              }

              v200 = v92;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v190[0] = v93;
              v97 = sub_10002B924(v89);
              v98 = v93[2];
              v99 = (v96 & 1) == 0;
              v100 = v98 + v99;
              if (__OFADD__(v98, v99))
              {
                goto LABEL_115;
              }

              v101 = v96;
              if (v93[3] >= v100)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v102 = v93;
                  v56 = v180;
                  if ((v96 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v108 = static _DictionaryStorage.copy(original:)();
                  v102 = v108;
                  if (v93[2])
                  {
                    v109 = (v108 + 64);
                    __src = (v93 + 8);
                    v110 = ((1 << *(v102 + 32)) + 63) >> 6;
                    if (v102 != v93 || v109 >= &__src[8 * v110])
                    {
                      memmove(v109, __src, 8 * v110);
                    }

                    v111 = 0;
                    *(v102 + 16) = v93[2];
                    v112 = 1 << *(v93 + 32);
                    if (v112 < 64)
                    {
                      v113 = ~(-1 << v112);
                    }

                    else
                    {
                      v113 = -1;
                    }

                    v165 = v113 & v93[8];
                    for (i = (v112 + 63) >> 6; v165; v121 = v119)
                    {
                      v114 = __clz(__rbit64(v165));
                      v165 &= v165 - 1;
LABEL_89:
                      v117 = v114 | (v111 << 6);
                      v118 = *(v93[6] + 8 * v117);
                      v119 = *(v93[7] + 8 * v117);
                      *(*(v102 + 48) + 8 * v117) = v118;
                      *(*(v102 + 56) + 8 * v117) = v119;
                      v120 = v118;
                    }

                    v115 = v111;
                    while (1)
                    {
                      v111 = v115 + 1;
                      if (__OFADD__(v115, 1))
                      {
                        goto LABEL_119;
                      }

                      if (v111 >= i)
                      {
                        break;
                      }

                      v116 = *&__src[8 * v111];
                      ++v115;
                      if (v116)
                      {
                        v114 = __clz(__rbit64(v116));
                        v165 = (v116 - 1) & v116;
                        goto LABEL_89;
                      }
                    }
                  }

                  v56 = v180;
                  if ((v101 & 1) == 0)
                  {
LABEL_92:
                    *(v102 + 8 * (v97 >> 6) + 64) |= 1 << v97;
                    *(*(v102 + 48) + 8 * v97) = v89;
                    v122 = v200;
                    *(*(v102 + 56) + 8 * v97) = v200;

                    v123 = *(v102 + 16);
                    v124 = __OFADD__(v123, 1);
                    v125 = v123 + 1;
                    if (v124)
                    {
                      goto LABEL_117;
                    }

                    *(v102 + 16) = v125;
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                sub_10036CABC(v100, isUniquelyReferenced_nonNull_native);
                v102 = v190[0];
                v103 = sub_10002B924(v89);
                if ((v101 & 1) != (v104 & 1))
                {
                  goto LABEL_120;
                }

                v97 = v103;
                v56 = v180;
                if ((v101 & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              v105 = *(v102 + 56);
              v106 = *(v105 + 8 * v97);
              v107 = v200;
              *(v105 + 8 * v97) = v200;

LABEL_94:
              v80 = v178;
              v81 = v173;

              sub_10045BDE8(v102);
              v127 = v126;

              sub_10068AC14(v85, v127);
              ++v82;
              v129 = v128;

              [v175 setAccount:v129];

              if (v82 == v172)
              {

                v11 = v182;
                goto LABEL_97;
              }
            }
          }

LABEL_97:
          if (v80[13])
          {
            [v175 updateChangeCount];
          }

          v41 = v166 + 1;
          v39 = v177;
          v43 = &selRef_persistentStoreForIdentifier_;
          if (v166 + 1 != v185)
          {
            continue;
          }

          break;
        }

LABEL_29:

        return;
      }
    }

    if (v32 < *(v200 + 16))
    {
      v34 = *(v179 + 8 * v32 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_110:
    swift_once();
  }

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
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063DA3C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), unint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, void), uint64_t (*a9)(void), void (*a10)(void, void, void, void, void))
{
  v16 = a2;
  v237 = a2;
  v19 = a3[2];
  v18 = a3[3];
  v233 = &v237;
  v20 = a5(a4, &v232, a1);
  if (v11)
  {
    return;
  }

  v221 = a1;
  v223 = a6;
  v218 = a8;
  v220 = a7;
  v226 = v20;
  v216 = v10;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100945730);
  v22 = v226;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  v215 = a3;
  v217 = v16;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v234[0] = swift_slowAlloc();
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v234);
    *(v25 + 12) = 2048;
    *(v25 + 14) = v226[2];

    *(v25 + 22) = 2082;
    sub_1000060C8(0, v223, a7);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v19;
    v30 = v29;

    v31 = sub_10000668C(v27, v30, v234);

    *(v25 + 24) = v31;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v28, v18, v234);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    swift_arrayDestroy();

    v16 = v217;
  }

  else
  {
  }

  v228 = v226[2];
  if (!v228)
  {
LABEL_31:

    return;
  }

  v32 = 0;
  v236 = _swiftEmptySetSingleton;
  v227 = v226 + 4;
  v224 = v16 + 24;
  v225 = v16 + 16;
  do
  {
    if (v32 >= v22[2])
    {
      __break(1u);
LABEL_125:
      __break(1u);

      return;
    }

    v33 = &v227[2 * v32];
    v34 = v33[1];
    v35 = v34[2];
    if (v35)
    {
      v244 = v32;
      v229 = *v33;

      v36 = 32;
      do
      {
        v37 = *(v34 + v36);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v38 = swift_allocObject();
        v39 = v38;
        *(v38 + 16) = xmmword_1007953F0;
        if (v37)
        {
          v40 = (v16 + 24);
        }

        else
        {
          v40 = (v16 + 16);
        }

        v41 = *v40;
        *(v38 + 32) = v41;
        v42 = v41;
        sub_100392144(v39);

        ++v36;
        --v35;
      }

      while (v35);

      v22 = v226;
      v32 = v244;
    }

    ++v32;
  }

  while (v32 != v228);
  if (v221 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v223;
  v45 = v218;
  v46 = _swiftEmptyArrayStorage;
  if (!v43)
  {
    goto LABEL_30;
  }

  v234[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v43 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    do
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_125;
      }

      v22 = 0;
      if ((v221 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v49 = *(v221 + 8 * v47 + 32);
      }

      v50 = v49;
      sub_1005E3810([v49 remObjectID], v44, v220);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = *(v234[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v47;
      v44 = v223;
      v45 = v218;
    }

    while (v48 != v43);
    v46 = v234[0];
LABEL_30:
    v52 = sub_1005E2514(v236);

    v53 = sub_10065F214(v52, v215);

    v208 = v45(v46, v215);

    swift_beginAccess();
    v54 = 0;
    v55 = v226;
    v56 = v220;
    v219 = v53;
    while (1)
    {
      if (v54 >= v55[2])
      {
        goto LABEL_136;
      }

      v57 = &v227[2 * v54];
      v58 = v57[1];
      v59 = *v57;
      v214 = v58;

      v60 = sub_1005E3810([v59 remObjectID], v44, v56);

      v61 = v215[6];
      v213 = v54;
      if ((v61 & 0xC000000000000001) != 0)
      {
        v62 = v60;

        v63 = __CocoaDictionary.lookup(_:)();
        if (!v63)
        {
          goto LABEL_55;
        }

        v235 = v63;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v64 = v234[0];

        if (!v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (!*(v61 + 16))
        {
          goto LABEL_56;
        }

        v62 = v60;

        v65 = sub_10002B924(v62);
        if ((v66 & 1) == 0)
        {
LABEL_55:

LABEL_56:

          v94 = v60;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v234[0] = v99;
            *v97 = 136446466;
            *(v97 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v234);
            *(v97 + 12) = 2114;
            *(v97 + 14) = v94;
            *v98 = v94;
            v100 = v94;
            _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v97, 0x16u);
            sub_1000050A4(v98, &unk_100938E70, &unk_100797230);

            sub_10000607C(v99);
          }

          else
          {
          }

          v56 = v220;
          v44 = v223;
          v101 = v213;
          goto LABEL_60;
        }

        v64 = *(*(v61 + 56) + 8 * v65);

        if (!v64)
        {
          goto LABEL_56;
        }
      }

      v210 = v59;

      if (!*(v208 + 16) || (v67 = a9(v60), (v68 & 1) == 0))
      {

        v183 = v60;

        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          *v186 = 136446722;
          *(v186 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v235);
          *(v186 + 12) = 2082;
          v187 = *(v216 + 40);
          v238 = *(v216 + 24);
          v239[0] = v187;
          *(v239 + 14) = *(v216 + 54);
          sub_100009DAC(&v238, v234);
          v188 = sub_1000063E8();
          v190 = v189;
          sub_1005812D4(&v238);
          v191 = sub_10000668C(v188, v190, &v235);

          *(v186 + 14) = v191;
          *(v186 + 22) = 2080;
          v192 = [v183 description];
          v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v195 = v194;

          v196 = sub_10000668C(v193, v195, &v235);

          *(v186 + 24) = v196;
          _os_log_impl(&_mh_execute_header, v184, v185, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v186, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v183];
        swift_willThrow();

        return;
      }

      v69 = *(*(v208 + 56) + 8 * v67);
      swift_bridgeObjectRetain_n();
      v70 = v60;
      v212 = v69;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      v204 = v70;
      if (os_log_type_enabled(v71, v72))
      {
        v230 = v72;
        v244 = v71;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *v73 = 136446978;
        *(v73 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v235);
        *(v73 + 12) = 2082;
        v75 = *(v216 + 40);
        v242 = *(v216 + 24);
        v243[0] = v75;
        *(v243 + 14) = *(v216 + 54);
        sub_100009DAC(&v242, v234);
        v76 = sub_1000063E8();
        v78 = v77;
        sub_1005812D4(&v242);
        v79 = sub_10000668C(v76, v78, &v235);

        *(v73 + 14) = v79;
        *(v73 + 22) = 2114;
        *(v73 + 24) = v70;
        v207 = v74;
        *v74 = v70;
        *(v73 + 32) = 2082;
        v80 = v214;
        v81 = v214[2];
        if (v81)
        {
          v234[0] = _swiftEmptyArrayStorage;
          v82 = v70;
          sub_100026EF4(0, v81, 0);
          v83 = v234[0];
          v84 = *(v234[0] + 16);
          v85 = 16 * v84;
          v86 = 32;
          v87 = v214;
          v88 = v244;
          do
          {
            if (*(v87 + v86))
            {
              v89 = 0x44496D72616C61;
            }

            else
            {
              v89 = 0x49746E756F636361;
            }

            if (*(v87 + v86))
            {
              v90 = 0xE700000000000000;
            }

            else
            {
              v90 = 0xE900000000000044;
            }

            v234[0] = v83;
            v91 = *(v83 + 24);
            v92 = v84 + 1;
            if (v84 >= v91 >> 1)
            {
              sub_100026EF4((v91 > 1), v84 + 1, 1);
              v87 = v214;
              v83 = v234[0];
            }

            *(v83 + 16) = v92;
            v93 = v83 + v85;
            *(v93 + 32) = v89;
            *(v93 + 40) = v90;
            v85 += 16;
            ++v86;
            v84 = v92;
            --v81;
          }

          while (v81);
          v80 = v87;

          v53 = v219;
        }

        else
        {
          v102 = v70;

          v88 = v244;
        }

        v103 = Array.description.getter();
        v105 = v104;

        v106 = sub_10000668C(v103, v105, &v235);

        *(v73 + 34) = v106;
        _os_log_impl(&_mh_execute_header, v88, v230, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v73, 0x2Au);
        sub_1000050A4(v207, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        v80 = v214;
        swift_bridgeObjectRelease_n();
      }

      v107 = v210;
      v108 = v216;
      v109 = v225;
      v44 = v223;
      v110 = v224;
      v111 = v80;
      v201 = v80[2];
      if (v201)
      {
        v112 = 0;
        v202 = (v80 + 4);
        while (1)
        {
          if (v112 >= v111[2])
          {
            goto LABEL_137;
          }

          v205 = v112;
          v113 = *(v202 + v112);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_1007953F0;
          v206 = v113;
          v115 = v113 == 0;
          v116 = v114;
          v117 = (v115 ? v109 : v110);
          v118 = *v117;
          *(v114 + 32) = v118;
          v119 = v114 + 32;
          v120 = v118;
          v244 = v116 & 0xFFFFFFFFFFFFFF8;
          v222 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v222)
          {
            break;
          }

          v122 = _swiftEmptyDictionarySingleton;
LABEL_115:

          sub_10045BDE8(v122);
          v163 = v162;

          v44 = v223;
          a10(v212, v206, v163, v223, v220);
          v112 = v205 + 1;

          v108 = v216;
          v110 = v224;
          v109 = v225;
          v111 = v214;
          if (v205 + 1 == v201)
          {

            v107 = v210;
            goto LABEL_118;
          }
        }

        v121 = 0;
        v231 = v116 & 0xC000000000000001;
        v122 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v231)
          {
            v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v121 >= *(v244 + 16))
            {
              goto LABEL_132;
            }

            v125 = *(v119 + 8 * v121);
          }

          v126 = *(v53 + 16);
          v127 = v125;
          v128 = v127;
          if (!v126 || (v129 = sub_100393C74(v127), (v130 & 1) == 0))
          {

            v164 = v128;
            v165 = Logger.logObject.getter();
            v166 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *v167 = 136446978;
              *(v167 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v235);
              *(v167 + 12) = 2082;
              v168 = *(v216 + 40);
              v240 = *(v216 + 24);
              v241[0] = v168;
              *(v241 + 14) = *(v216 + 54);
              sub_100009DAC(&v240, v234);
              v169 = sub_1000063E8();
              v171 = v170;
              sub_1005812D4(&v240);
              v172 = sub_10000668C(v169, v171, &v235);

              *(v167 + 14) = v172;
              *(v167 + 22) = 2080;
              v173 = [v164 description];
              v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v176 = v175;

              v177 = sub_10000668C(v174, v176, &v235);

              *(v167 + 24) = v177;
              *(v167 + 32) = 2080;
              v178 = [v164 description];
              v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v181 = v180;

              v182 = sub_10000668C(v179, v181, &v235);

              *(v167 + 34) = v182;
              _os_log_impl(&_mh_execute_header, v165, v166, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v167, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v164];
            swift_willThrow();

            return;
          }

          v131 = *(*(v53 + 56) + 8 * v129);
          if ((v122 & 0xC000000000000001) != 0)
          {
            if (v122 >= 0)
            {
              v122 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v132 = v131;
            v133 = __CocoaDictionary.count.getter();
            if (__OFADD__(v133, 1))
            {
              goto LABEL_134;
            }

            v134 = sub_10021D008(v122, v133 + 1);
          }

          else
          {
            v135 = v131;
            v134 = v122;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v234[0] = v134;
          v137 = v128;
          v139 = sub_10002B924(v128);
          v140 = *(v134 + 16);
          v141 = (v138 & 1) == 0;
          v142 = v140 + v141;
          if (__OFADD__(v140, v141))
          {
            goto LABEL_133;
          }

          v143 = v138;
          if (*(v134 + 24) >= v142)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v122 = v134;
              if ((v138 & 1) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_73;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v149 = static _DictionaryStorage.copy(original:)();
            v122 = v149;
            if (*(v134 + 16))
            {
              v150 = (v149 + 64);
              __src = (v134 + 64);
              v151 = ((1 << *(v122 + 32)) + 63) >> 6;
              if (v122 != v134 || v150 >= &__src[8 * v151])
              {
                memmove(v150, __src, 8 * v151);
              }

              v152 = 0;
              *(v122 + 16) = *(v134 + 16);
              v153 = 1 << *(v134 + 32);
              if (v153 < 64)
              {
                v154 = ~(-1 << v153);
              }

              else
              {
                v154 = -1;
              }

              v200 = v154 & *(v134 + 64);
              for (i = (v153 + 63) >> 6; v200; v161 = v199)
              {
                v155 = __clz(__rbit64(v200));
                v200 &= v200 - 1;
LABEL_110:
                v158 = v155 | (v152 << 6);
                v159 = *(*(v134 + 48) + 8 * v158);
                v199 = *(*(v134 + 56) + 8 * v158);
                *(*(v122 + 48) + 8 * v158) = v159;
                *(*(v122 + 56) + 8 * v158) = v199;
                v160 = v159;
              }

              v156 = v152;
              while (1)
              {
                v152 = v156 + 1;
                if (__OFADD__(v156, 1))
                {
                  goto LABEL_138;
                }

                if (v152 >= i)
                {
                  break;
                }

                v157 = *&__src[8 * v152];
                ++v156;
                if (v157)
                {
                  v155 = __clz(__rbit64(v157));
                  v200 = (v157 - 1) & v157;
                  goto LABEL_110;
                }
              }
            }

            if (v143)
            {
              goto LABEL_73;
            }

LABEL_93:
            *(v122 + 8 * (v139 >> 6) + 64) |= 1 << v139;
            *(*(v122 + 48) + 8 * v139) = v137;
            *(*(v122 + 56) + 8 * v139) = v131;

            v146 = *(v122 + 16);
            v147 = __OFADD__(v146, 1);
            v148 = v146 + 1;
            if (v147)
            {
              goto LABEL_135;
            }

            *(v122 + 16) = v148;
          }

          else
          {
            sub_10036CABC(v142, isUniquelyReferenced_nonNull_native);
            v122 = v234[0];
            v144 = sub_10002B924(v137);
            if ((v143 & 1) != (v145 & 1))
            {
              goto LABEL_139;
            }

            v139 = v144;
            if ((v143 & 1) == 0)
            {
              goto LABEL_93;
            }

LABEL_73:

            v123 = *(v122 + 56);
            v124 = *(v123 + 8 * v139);
            *(v123 + 8 * v139) = v131;
          }

          v53 = v219;
          if (++v121 == v222)
          {
            goto LABEL_115;
          }

          continue;
        }
      }

LABEL_118:
      v101 = v213;
      if (*(v108 + 104))
      {
        [v212 updateChangeCount];
      }

      v56 = v220;
LABEL_60:
      v54 = v101 + 1;
      v55 = v226;
      if (v54 == v228)
      {

        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10063F08C(unint64_t a1, uint64_t a2, void *a3)
{
  v224 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v220 = &v224;
  v10 = sub_1003DF9C0(sub_1006AEE1C, &v219, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v208 = a3;
  v209 = a1;
  v12 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100945730);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v207 = v12;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    LODWORD(v231) = v15;
    v15 = v16;
    v221[0] = swift_slowAlloc();
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v221);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11[2];

    *(v15 + 22) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v17 = [swift_getObjCClassFromMetadata() description];
    v18 = v9;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000668C(v19, v21, v221);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v18, v8, v221);
    _os_log_impl(&_mh_execute_header, v14, v231, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v216 = v11[2];
  if (!v216)
  {
    goto LABEL_33;
  }

  v23 = 0;
  v223 = _swiftEmptySetSingleton;
  v215 = v11 + 4;
  v213 = (a2 + 24);
  v211 = (a2 + 16);
  v212 = v11;
  v24 = (a2 + 16);
  do
  {
    if (v23 >= v11[2])
    {
      __break(1u);
LABEL_130:
      __break(1u);

      return;
    }

    v25 = &v215[2 * v23];
    v26 = v25[1];
    v27 = v26[2];
    if (v27)
    {
      v231 = v23;
      v217 = *v25;

      v28 = 32;
      v15 = v213;
      do
      {
        v29 = *(v26 + v28);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v30 = swift_allocObject();
        v31 = v30;
        *(v30 + 16) = xmmword_1007953F0;
        if (v29)
        {
          v32 = v213;
        }

        else
        {
          v32 = v24;
        }

        v33 = *v32;
        *(v30 + 32) = v33;
        v34 = v33;
        sub_100392144(v31);

        ++v28;
        --v27;
      }

      while (v27);

      v11 = v212;
      v23 = v231;
    }

    ++v23;
  }

  while (v23 != v216);
  if (v209 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v35)
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_32:
    v40 = sub_1005E2514(v223);

    v41 = sub_10065F214(v40, v208);

    v198 = sub_1006630D4(v39, v208);

    swift_beginAccess();
    v42 = 0;
    v218 = v41;
    while (1)
    {
      if (v42 >= v212[2])
      {
        goto LABEL_143;
      }

      v43 = &v215[2 * v42];
      v44 = v43[1];
      v45 = *v43;
      v202 = v44;

      v46 = sub_1005E3810([v45 remObjectID], &unk_100938870, off_1008D4128);

      v47 = v208[6];
      if ((v47 & 0xC000000000000001) != 0)
      {
        if (v47 < 0)
        {
          v48 = v208[6];
        }

        v49 = v46;

        v50 = __CocoaDictionary.lookup(_:)();
        if (!v50)
        {
          goto LABEL_61;
        }

        v222 = v50;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v51 = v221[0];
      }

      else
      {
        if (!*(v47 + 16))
        {
          goto LABEL_62;
        }

        v49 = v46;

        v52 = sub_10002B924(v49);
        if ((v53 & 1) == 0)
        {
LABEL_61:

LABEL_62:

          v79 = v46;
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = v45;
            v84 = swift_slowAlloc();
            v85 = v42;
            v86 = swift_slowAlloc();
            v221[0] = v86;
            *v82 = 136446466;
            *(v82 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v221);
            *(v82 + 12) = 2114;
            *(v82 + 14) = v79;
            *v84 = v79;
            v87 = v79;
            _os_log_impl(&_mh_execute_header, v80, v81, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v82, 0x16u);
            sub_1000050A4(v84, &unk_100938E70, &unk_100797230);

            sub_10000607C(v86);
            v42 = v85;

            v41 = v218;
          }

          else
          {
          }

          goto LABEL_35;
        }

        v51 = *(*(v47 + 56) + 8 * v52);
      }

      if (!v51)
      {
        goto LABEL_62;
      }

      v201 = v45;
      if (!*(v198 + 16) || (v54 = sub_100393C74(v46), (v55 & 1) == 0))
      {

        v174 = v46;

        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          *v177 = 136446722;
          *(v177 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v222);
          *(v177 + 12) = 2082;
          v178 = *(v207 + 40);
          v225 = *(v207 + 24);
          v226[0] = v178;
          *(v226 + 14) = *(v207 + 54);
          sub_100009DAC(&v225, v221);
          v179 = sub_1000063E8();
          v181 = v180;
          sub_1005812D4(&v225);
          v182 = sub_10000668C(v179, v181, &v222);

          *(v177 + 14) = v182;
          *(v177 + 22) = 2080;
          v183 = [v174 description];
          v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v186 = v185;

          v187 = sub_10000668C(v184, v186, &v222);

          *(v177 + 24) = v187;
          _os_log_impl(&_mh_execute_header, v175, v176, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v177, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v174];
        swift_willThrow();

        return;
      }

      v56 = *(*(v198 + 56) + 8 * v54);
      swift_bridgeObjectRetain_n();
      v57 = v46;
      v200 = v56;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      v197 = v42;
      v194 = v57;
      if (os_log_type_enabled(v58, v59))
      {
        LODWORD(v231) = v59;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *v60 = 136446978;
        *(v60 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v222);
        *(v60 + 12) = 2082;
        v62 = *(v207 + 40);
        v229 = *(v207 + 24);
        v230[0] = v62;
        *(v230 + 14) = *(v207 + 54);
        sub_100009DAC(&v229, v221);
        v63 = sub_1000063E8();
        v65 = v64;
        sub_1005812D4(&v229);
        v66 = sub_10000668C(v63, v65, &v222);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2114;
        *(v60 + 24) = v57;
        v205 = v61;
        *v61 = v57;
        *(v60 + 32) = 2082;
        v67 = v202[2];
        if (v67)
        {
          v203 = v58;
          v221[0] = _swiftEmptyArrayStorage;
          v68 = v57;
          sub_100026EF4(0, v67, 0);
          v69 = v221[0];
          v70 = *(v221[0] + 16);
          v71 = 16 * v70;
          v72 = 32;
          v73 = v202;
          do
          {
            if (v73[v72])
            {
              v74 = 0x7265646E696D6572;
            }

            else
            {
              v74 = 0x49746E756F636361;
            }

            if (v73[v72])
            {
              v75 = 0xEA00000000004449;
            }

            else
            {
              v75 = 0xE900000000000044;
            }

            v221[0] = v69;
            v76 = *(v69 + 24);
            v77 = v70 + 1;
            if (v70 >= v76 >> 1)
            {
              sub_100026EF4((v76 > 1), v70 + 1, 1);
              v73 = v202;
              v69 = v221[0];
            }

            *(v69 + 16) = v77;
            v78 = v69 + v71;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            v71 += 16;
            ++v72;
            v70 = v77;
            --v67;
          }

          while (v67);

          v45 = v201;
          v41 = v218;
          v58 = v203;
        }

        else
        {
          v88 = v57;
          v73 = v202;
        }

        v89 = Array.description.getter();
        v91 = v90;

        v92 = sub_10000668C(v89, v91, &v222);

        *(v60 + 34) = v92;
        _os_log_impl(&_mh_execute_header, v58, v231, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v60, 0x2Au);
        sub_1000050A4(v205, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v42 = v197;
      }

      else
      {

        v73 = v202;
        swift_bridgeObjectRelease_n();
      }

      v93 = v213;
      v94 = v211;
      v191 = *(v73 + 2);
      if (v191)
      {
        v95 = 0;
        v192 = v73 + 32;
        while (1)
        {
          if (v95 >= *(v73 + 2))
          {
            goto LABEL_144;
          }

          v195 = v95;
          v96 = v192[v95];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v97 = swift_allocObject();
          v98 = v97;
          *(v97 + 16) = xmmword_1007953F0;
          v196 = v96;
          if (v96)
          {
            v99 = v93;
          }

          else
          {
            v99 = v94;
          }

          v100 = *v99;
          *(v97 + 32) = v100;
          v210 = v97 + 32;
          v101 = v100;
          v214 = v98 & 0xFFFFFFFFFFFFFF8;
          v204 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v204)
          {
            v102 = 0;
            v206 = v98 & 0xC000000000000001;
            v103 = _swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v206)
              {
                v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v102 >= *(v214 + 16))
                {
                  goto LABEL_139;
                }

                v107 = *(v210 + 8 * v102);
              }

              v108 = *(v41 + 16);
              v109 = v107;
              v110 = v109;
              if (!v108 || (v111 = sub_100393C74(v109), (v112 & 1) == 0))
              {

                v155 = v110;
                v156 = Logger.logObject.getter();
                v157 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v156, v157))
                {
                  v158 = swift_slowAlloc();
                  v222 = swift_slowAlloc();
                  *v158 = 136446978;
                  *(v158 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v222);
                  *(v158 + 12) = 2082;
                  v159 = *(v207 + 40);
                  v227 = *(v207 + 24);
                  v228[0] = v159;
                  *(v228 + 14) = *(v207 + 54);
                  sub_100009DAC(&v227, v221);
                  v160 = sub_1000063E8();
                  v162 = v161;
                  sub_1005812D4(&v227);
                  v163 = sub_10000668C(v160, v162, &v222);

                  *(v158 + 14) = v163;
                  *(v158 + 22) = 2080;
                  v164 = [v155 description];
                  v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v167 = v166;

                  v168 = sub_10000668C(v165, v167, &v222);

                  *(v158 + 24) = v168;
                  *(v158 + 32) = 2080;
                  v169 = [v155 description];
                  v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v172 = v171;

                  v173 = sub_10000668C(v170, v172, &v222);

                  *(v158 + 34) = v173;
                  _os_log_impl(&_mh_execute_header, v156, v157, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v158, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v155];
                swift_willThrow();

                return;
              }

              v113 = *(*(v41 + 56) + 8 * v111);
              v231 = v113;
              if ((v103 & 0xC000000000000001) != 0)
              {
                if (v103 < 0)
                {
                  v114 = v103;
                }

                else
                {
                  v114 = v103 & 0xFFFFFFFFFFFFFF8;
                }

                v115 = v113;
                v116 = __CocoaDictionary.count.getter();
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_141;
                }

                v117 = sub_10021D008(v114, v116 + 1);
              }

              else
              {
                v118 = v113;
                v117 = v103;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v221[0] = v117;
              v120 = v110;
              v122 = sub_10002B924(v110);
              v123 = *(v117 + 16);
              v124 = (v121 & 1) == 0;
              v125 = v123 + v124;
              if (__OFADD__(v123, v124))
              {
                goto LABEL_140;
              }

              v126 = v121;
              if (*(v117 + 24) >= v125)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v103 = v117;
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v133 = static _DictionaryStorage.copy(original:)();
                  v103 = v133;
                  if (*(v117 + 16))
                  {
                    v134 = (v133 + 64);
                    __src = (v117 + 64);
                    v135 = ((1 << *(v103 + 32)) + 63) >> 6;
                    if (v103 != v117 || v134 >= &__src[8 * v135])
                    {
                      memmove(v134, __src, 8 * v135);
                    }

                    v136 = 0;
                    *(v103 + 16) = *(v117 + 16);
                    v137 = 1 << *(v117 + 32);
                    if (v137 < 64)
                    {
                      v138 = ~(-1 << v137);
                    }

                    else
                    {
                      v138 = -1;
                    }

                    v190 = v138 & *(v117 + 64);
                    for (i = (v137 + 63) >> 6; v190; v146 = v144)
                    {
                      v139 = __clz(__rbit64(v190));
                      v190 &= v190 - 1;
LABEL_113:
                      v142 = v139 | (v136 << 6);
                      v143 = *(*(v117 + 48) + 8 * v142);
                      v144 = *(*(v117 + 56) + 8 * v142);
                      *(*(v103 + 48) + 8 * v142) = v143;
                      *(*(v103 + 56) + 8 * v142) = v144;
                      v145 = v143;
                    }

                    v140 = v136;
                    while (1)
                    {
                      v136 = v140 + 1;
                      if (__OFADD__(v140, 1))
                      {
                        goto LABEL_145;
                      }

                      if (v136 >= i)
                      {
                        break;
                      }

                      v141 = *&__src[8 * v136];
                      ++v140;
                      if (v141)
                      {
                        v139 = __clz(__rbit64(v141));
                        v190 = (v141 - 1) & v141;
                        goto LABEL_113;
                      }
                    }
                  }
                }
              }

              else
              {
                sub_10036CABC(v125, isUniquelyReferenced_nonNull_native);
                v103 = v221[0];
                v127 = sub_10002B924(v120);
                if ((v126 & 1) != (v128 & 1))
                {
                  goto LABEL_146;
                }

                v122 = v127;
              }

              v93 = v213;
              v41 = v218;
              if (v126)
              {

                v104 = *(v103 + 56);
                v105 = *(v104 + 8 * v122);
                v106 = v231;
                *(v104 + 8 * v122) = v231;
              }

              else
              {
                *(v103 + 8 * (v122 >> 6) + 64) |= 1 << v122;
                *(*(v103 + 48) + 8 * v122) = v120;
                v129 = v231;
                *(*(v103 + 56) + 8 * v122) = v231;

                v130 = *(v103 + 16);
                v131 = __OFADD__(v130, 1);
                v132 = v130 + 1;
                if (v131)
                {
                  goto LABEL_142;
                }

                *(v103 + 16) = v132;
              }

              if (++v102 == v204)
              {
                goto LABEL_117;
              }
            }
          }

          v103 = _swiftEmptyDictionarySingleton;
LABEL_117:

          sub_10045BDE8(v103);
          v148 = v147;

          if (v196)
          {
            break;
          }

          sub_100685AD4(0, *v211, v148, &type metadata for REMAlarmCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
          v45 = v201;
          v42 = v197;
          v152 = v151;

          [v200 setAccount:v152];

          v153 = [v200 trigger];
          if (v153)
          {
            v150 = v153;
            v154 = [v200 account];
            [v150 setAccount:v154];

            goto LABEL_121;
          }

LABEL_122:
          v94 = v211;
          v95 = v195 + 1;
          v73 = v202;
          if (v195 + 1 == v191)
          {
            goto LABEL_123;
          }
        }

        sub_100685AD4(1, *v93, v148, &type metadata for REMAlarmCDIngestor.RelationshipKey, off_1008D41D0, &qword_100939EE0);
        v45 = v201;
        v42 = v197;
        v150 = v149;

        [v200 setReminder:v150];
LABEL_121:

        goto LABEL_122;
      }

LABEL_123:

      if (*(v207 + 104))
      {
        [v200 updateChangeCount];
      }

LABEL_35:
      if (++v42 == v216)
      {

        goto LABEL_136;
      }
    }
  }

  v221[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v35 < 0)
  {
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v36 = 0;
  v231 = v209 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v15 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_130;
    }

    if ((v209 & 0xC000000000000001) == 0)
    {
      break;
    }

    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
    sub_1005E3810([v37 remObjectID], &unk_100938870, off_1008D4128);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v38 = *(v221[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v36;
    if (v15 == v35)
    {
      v39 = v221[0];
      goto LABEL_32;
    }
  }

  if (v36 < *(v231 + 16))
  {
    v37 = *(v209 + 8 * v36 + 32);
    goto LABEL_28;
  }

  __break(1u);

LABEL_136:

LABEL_33:
}

void sub_1006407AC(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v275 = *(v7 - 8);
  isa = v275[8].isa;
  __chkstk_darwin(v7);
  v10 = &i - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = a2;
  v12 = a3[2];
  v11 = a3[3];
  v263[2] = &v268;
  v264 = v3;
  v13 = v262;
  v14 = sub_1003DF9EC(sub_1006AEF24, v263, a1);
  if (!v13)
  {
    v253 = a3;
    v254 = v3;
    v261 = v11;
    v262 = v12;
    v15 = v14;
    v258 = a1;
    v255 = v10;
    v251 = v7;
    v260 = 0;
    v16 = "establishRelationships";
    if (qword_100936008 != -1)
    {
      goto LABEL_160;
    }

    while (1)
    {
      v17 = v16 - 4;
      v18 = type metadata accessor for Logger();
      v19 = sub_100006654(v18, qword_100945730);
      v20 = v15;

      v252 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      v23 = os_log_type_enabled(v21, v22);
      v259 = v15;
      v24 = v262;
      v256 = v17;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v265[0] = v257;
        *v25 = 136446978;
        *(v25 + 4) = sub_10000668C(0xD000000000000016, v17 | 0x8000000000000000, v265);
        *(v25 + 12) = 2048;
        *(v25 + 14) = *(v20 + 16);

        *(v25 + 22) = 2082;
        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        v26 = [swift_getObjCClassFromMetadata() description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = v27;
        v20 = v259;
        v31 = sub_10000668C(v30, v29, v265);

        *(v25 + 24) = v31;
        *(v25 + 32) = 2082;
        *(v25 + 34) = sub_10000668C(v24, v261, v265);
        _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
      }

      v262 = *(v20 + 16);
      if (!v262)
      {
        goto LABEL_31;
      }

      v32 = 0;
      v267 = _swiftEmptySetSingleton;
      v261 = v20 + 32;
      do
      {
        if (v32 >= *(v20 + 16))
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:

          return;
        }

        v33 = v261 + 16 * v32;
        v34 = *(v33 + 8);
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = *v33;

          v37 = 32;
          do
          {
            v38 = sub_1003114A0(v36, *(v34 + v37));
            sub_100392144(v38);

            ++v37;
            --v35;
          }

          while (v35);

          v20 = v259;
        }

        ++v32;
        v22 = v275;
      }

      while (v32 != v262);
      v39 = v258 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = _swiftEmptyArrayStorage;
      if (!v39)
      {
        break;
      }

      v265[0] = _swiftEmptyArrayStorage;
      v16 = v265;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v39 < 0)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:

LABEL_166:
        v229 = v236;

LABEL_31:

        return;
      }

      v15 = 0;
      v41 = v258 & 0xC000000000000001;
      v257 = v258 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v42 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_153;
        }

        if (v41)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_24;
        }

        if (v15 >= *(v257 + 16))
        {
          break;
        }

        v43 = *(v258 + 8 * v15 + 32);
LABEL_24:
        v44 = v43;
        v45 = [v43 remObjectID];
        v46 = v260;
        sub_1005E3810(v45, &unk_10093F790, off_1008D4158);
        v260 = v46;
        if (v46)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v47 = *(v265[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v22 = v275;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v265;
        specialized ContiguousArray._endMutation()();
        ++v15;
        if (v42 == v39)
        {
          v40 = v265[0];
          v20 = v259;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_160:
      swift_once();
    }

LABEL_27:
    v48 = v260;
    v49 = sub_1005E2514(v267);
    if (v48)
    {

      return;
    }

    v50 = v49;

    v51 = v253;
    v257 = sub_10065F214(v50, v253);

    v52 = sub_1006639CC(v40, v51);
    v260 = 0;
    v243 = v52;

    swift_beginAccess();
    v53 = 0;
    v233 = (v22 + 8);
    *&v54 = 136446466;
    v238 = v54;
    *&v54 = 136446978;
    v234 = v54;
    while (2)
    {
      if (v53 >= *(v20 + 16))
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      else
      {
        v60 = v261 + 16 * v53;
        v61 = *(v60 + 8);
        v22 = *v60;
        v246 = v61;

        v62 = [v22 remObjectID];
        v63 = v260;
        v64 = sub_1005E3810(v62, &unk_10093F790, off_1008D4158);
        v260 = v63;
        if (v63)
        {
          goto LABEL_154;
        }

        v65 = v64;
        v245 = v53;

        v66 = v51[6];
        if ((v66 & 0xC000000000000001) != 0)
        {
          if (v66 < 0)
          {
            v67 = v51[6];
          }

          v68 = v65;

          v69 = __CocoaDictionary.lookup(_:)();
          if (v69)
          {
            v266[0] = v69;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v70 = v265[0];
            goto LABEL_44;
          }

LABEL_72:

          goto LABEL_73;
        }

        if (!*(v66 + 16))
        {
          goto LABEL_73;
        }

        v68 = v65;

        v71 = sub_10002B924(v68);
        if ((v72 & 1) == 0)
        {
          goto LABEL_72;
        }

        v70 = *(*(v66 + 56) + 8 * v71);
LABEL_44:

        if (!v70)
        {
LABEL_73:

          v106 = v65;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.info.getter();

          if (!os_log_type_enabled(v107, v108))
          {

            goto LABEL_75;
          }

          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v244 = v22;
          v58 = v57;
          v265[0] = v57;
          *v55 = v238;
          *(v55 + 4) = sub_10000668C(0xD000000000000016, v256 | 0x8000000000000000, v265);
          *(v55 + 12) = 2114;
          *(v55 + 14) = v106;
          *v56 = v106;
          v59 = v106;
          _os_log_impl(&_mh_execute_header, v107, v108, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v55, 0x16u);
          sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

          sub_10000607C(v58);

LABEL_33:
          v51 = v253;
          v53 = v245 + 1;
          if (v245 + 1 != v262)
          {
            continue;
          }

          goto LABEL_31;
        }

        v73 = *(v243 + 16);
        v244 = v22;
        if (v73)
        {
          v74 = sub_100393C74(v65);
          if (v75)
          {
            v76 = *(*(v243 + 56) + 8 * v74);
            swift_bridgeObjectRetain_n();
            v77 = v65;
            v241 = v76;
            v78 = v254;

            v79 = v78;
            v80 = Logger.logObject.getter();
            v81 = static os_log_type_t.default.getter();

            v82 = os_log_type_enabled(v80, v81);
            v236 = v77;
            if (v82)
            {
              LODWORD(v250) = v81;
              v275 = v80;
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v249 = swift_slowAlloc();
              v266[0] = v249;
              *v83 = v234;
              *(v83 + 4) = sub_10000668C(0xD000000000000016, v256 | 0x8000000000000000, v266);
              *(v83 + 12) = 2082;
              v85 = *(v79 + 40);
              v273 = *(v79 + 24);
              v274[0] = v85;
              *(v274 + 14) = *(v79 + 54);
              sub_100009DAC(&v273, v265);
              v86 = sub_1000063E8();
              v88 = v87;
              sub_1005812D4(&v273);
              v89 = sub_10000668C(v86, v88, v266);

              *(v83 + 14) = v89;
              *(v83 + 22) = 2114;
              *(v83 + 24) = v77;
              v248 = v84;
              *v84 = v77;
              v258 = v83;
              *(v83 + 32) = 2082;
              v90 = v246;
              v91 = *(v246 + 16);
              if (v91)
              {
                v265[0] = _swiftEmptyArrayStorage;
                v92 = v77;
                sub_100026EF4(0, v91, 0);
                v93 = v265[0];
                v94 = 32;
                v95 = v90;
                do
                {
                  v96 = *(v95 + v94);
                  if (v96 == 2)
                  {
                    v97 = 0x65656E6769737361;
                  }

                  else
                  {
                    v97 = 0x74616E696769726FLL;
                  }

                  if (v96 == 2)
                  {
                    v98 = 0xEA00000000004449;
                  }

                  else
                  {
                    v98 = 0xEC0000004449726FLL;
                  }

                  if (*(v95 + v94))
                  {
                    v99 = 0x7265646E696D6572;
                  }

                  else
                  {
                    v99 = 0x49746E756F636361;
                  }

                  if (*(v95 + v94))
                  {
                    v100 = 0xEA00000000004449;
                  }

                  else
                  {
                    v100 = 0xE900000000000044;
                  }

                  if (*(v95 + v94) <= 1u)
                  {
                    v101 = v99;
                  }

                  else
                  {
                    v101 = v97;
                  }

                  if (*(v95 + v94) <= 1u)
                  {
                    v102 = v100;
                  }

                  else
                  {
                    v102 = v98;
                  }

                  v265[0] = v93;
                  v104 = *(v93 + 16);
                  v103 = *(v93 + 24);
                  if (v104 >= v103 >> 1)
                  {
                    sub_100026EF4((v103 > 1), v104 + 1, 1);
                    v95 = v246;
                    v93 = v265[0];
                  }

                  *(v93 + 16) = v104 + 1;
                  v105 = v93 + 16 * v104;
                  *(v105 + 32) = v101;
                  *(v105 + 40) = v102;
                  ++v94;
                  --v91;
                }

                while (v91);
                v90 = v95;

                v20 = v259;
                v22 = v244;
              }

              else
              {
                v109 = v77;
              }

              v110 = Array.description.getter();
              v112 = v111;

              v113 = sub_10000668C(v110, v112, v266);

              v114 = v258;
              *(v258 + 34) = v113;
              v115 = v275;
              _os_log_impl(&_mh_execute_header, v275, v250, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v114, 0x2Au);
              sub_1000050A4(v248, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v79 = v254;
            }

            else
            {

              v90 = v246;
              swift_bridgeObjectRelease_n();
            }

            v117 = v255;
            v116 = v256;
            v235 = *(v90 + 16);
            if (v235)
            {
              v118 = 0;
              v237 = v90 + 32;
              do
              {
                if (v118 >= *(v90 + 16))
                {
                  goto LABEL_171;
                }

                v239 = v118;
                v119 = *(v237 + v118);
                v240 = v119;
                v120 = sub_1003114A0(v22, v119);
                if (v120 >> 62)
                {
                  v167 = v120;
                  v121 = _CocoaArrayWrapper.endIndex.getter();
                  v120 = v167;
                  v242 = v167;
                  if (v121)
                  {
LABEL_84:
                    v40 = 0;
                    v249 = v120 & 0xFFFFFFFFFFFFFF8;
                    v250 = v120 & 0xC000000000000001;
                    v248 = (v120 + 32);
                    v22 = _swiftEmptyDictionarySingleton;
                    v247 = v121;
                    while (1)
                    {
                      if (v250)
                      {
                        v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v125 = v257;
                      }

                      else
                      {
                        v125 = v257;
                        if (v40 >= *(v249 + 16))
                        {
                          goto LABEL_164;
                        }

                        v126 = v248[v40];
                      }

                      v127 = __OFADD__(v40++, 1);
                      v275 = v40;
                      if (v127)
                      {
                        goto LABEL_163;
                      }

                      v128 = *(v125 + 16);
                      v129 = v126;
                      v130 = v129;
                      if (!v128 || (v131 = sub_100393C74(v129), (v132 & 1) == 0))
                      {
                        v188 = v116;

                        v189 = v254;

                        v190 = v130;
                        v191 = v189;
                        v192 = Logger.logObject.getter();
                        v193 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v192, v193))
                        {
                          v194 = swift_slowAlloc();
                          v275 = swift_slowAlloc();
                          v266[0] = v275;
                          *v194 = v234;
                          *(v194 + 4) = sub_10000668C(0xD000000000000016, v188 | 0x8000000000000000, v266);
                          *(v194 + 12) = 2082;
                          v195 = *(v191 + 40);
                          v271 = *(v191 + 24);
                          v272[0] = v195;
                          *(v272 + 14) = *(v191 + 54);
                          sub_100009DAC(&v271, v265);
                          v196 = sub_1000063E8();
                          v198 = v197;
                          sub_1005812D4(&v271);
                          v199 = sub_10000668C(v196, v198, v266);

                          *(v194 + 14) = v199;
                          *(v194 + 22) = 2080;
                          v200 = [v190 description];
                          v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v203 = v202;

                          v204 = sub_10000668C(v201, v203, v266);

                          *(v194 + 24) = v204;
                          *(v194 + 32) = 2080;
                          v205 = [v190 description];
                          v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v208 = v207;

                          v209 = sub_10000668C(v206, v208, v266);

                          *(v194 + 34) = v209;
                          _os_log_impl(&_mh_execute_header, v192, v193, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v194, 0x2Au);
                          swift_arrayDestroy();
                        }

                        v210 = v244;
                        v211 = v236;
                        [objc_opt_self() noSuchObjectErrorWithObjectID:v190];

                        swift_willThrow();
                        return;
                      }

                      v133 = *(*(v125 + 56) + 8 * v131);
                      v258 = v133;
                      if ((v22 & 0xC000000000000001) != 0)
                      {
                        if (v22 < 0)
                        {
                          v134 = v22;
                        }

                        else
                        {
                          v134 = v22 & 0xFFFFFFFFFFFFFF8;
                        }

                        v135 = v133;
                        v136 = __CocoaDictionary.count.getter();
                        if (__OFADD__(v136, 1))
                        {
                          goto LABEL_168;
                        }

                        v137 = sub_10021D008(v134, v136 + 1);
                      }

                      else
                      {
                        v138 = v133;
                        v137 = v22;
                      }

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v265[0] = v137;
                      v140 = v130;
                      v142 = sub_10002B924(v130);
                      v143 = *(v137 + 16);
                      v144 = (v141 & 1) == 0;
                      v145 = v143 + v144;
                      if (__OFADD__(v143, v144))
                      {
                        __break(1u);
LABEL_168:
                        __break(1u);
LABEL_169:
                        __break(1u);
                        goto LABEL_170;
                      }

                      v146 = v141;
                      if (*(v137 + 24) >= v145)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          v22 = v137;
                        }

                        else
                        {
                          sub_1000F5104(&qword_10093D598, &unk_10079B210);
                          v152 = static _DictionaryStorage.copy(original:)();
                          v22 = v152;
                          if (*(v137 + 16))
                          {
                            v153 = (v152 + 64);
                            v154 = 1 << *(v22 + 32);
                            v231 = (v137 + 64);
                            v155 = (v154 + 63) >> 6;
                            if (v22 != v137 || v153 >= &v231[8 * v155])
                            {
                              memmove(v153, v231, 8 * v155);
                            }

                            v156 = 0;
                            *(v22 + 16) = *(v137 + 16);
                            v157 = 1 << *(v137 + 32);
                            if (v157 < 64)
                            {
                              v158 = ~(-1 << v157);
                            }

                            else
                            {
                              v158 = -1;
                            }

                            v232 = v158 & *(v137 + 64);
                            for (i = (v157 + 63) >> 6; v232; v166 = v164)
                            {
                              v159 = __clz(__rbit64(v232));
                              v232 &= v232 - 1;
LABEL_124:
                              v162 = v159 | (v156 << 6);
                              v163 = *(*(v137 + 48) + 8 * v162);
                              v164 = *(*(v137 + 56) + 8 * v162);
                              *(*(v22 + 48) + 8 * v162) = v163;
                              *(*(v22 + 56) + 8 * v162) = v164;
                              v165 = v163;
                            }

                            v160 = v156;
                            while (1)
                            {
                              v156 = v160 + 1;
                              if (__OFADD__(v160, 1))
                              {
                                goto LABEL_172;
                              }

                              if (v156 >= i)
                              {
                                break;
                              }

                              v161 = *&v231[8 * v156];
                              ++v160;
                              if (v161)
                              {
                                v159 = __clz(__rbit64(v161));
                                v232 = (v161 - 1) & v161;
                                goto LABEL_124;
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        sub_10036CABC(v145, isUniquelyReferenced_nonNull_native);
                        v22 = v265[0];
                        v147 = sub_10002B924(v140);
                        if ((v146 & 1) != (v148 & 1))
                        {
                          goto LABEL_173;
                        }

                        v142 = v147;
                      }

                      v116 = v256;
                      v20 = v259;
                      if (v146)
                      {

                        v122 = *(v22 + 56);
                        v123 = *(v122 + 8 * v142);
                        v124 = v258;
                        *(v122 + 8 * v142) = v258;
                      }

                      else
                      {
                        *(v22 + 8 * (v142 >> 6) + 64) |= 1 << v142;
                        *(*(v22 + 48) + 8 * v142) = v140;
                        v149 = v258;
                        *(*(v22 + 56) + 8 * v142) = v258;

                        v150 = *(v22 + 16);
                        v127 = __OFADD__(v150, 1);
                        v151 = v150 + 1;
                        if (v127)
                        {
                          goto LABEL_169;
                        }

                        *(v22 + 16) = v151;
                      }

                      v117 = v255;
                      v40 = v275;
                      if (v275 == v247)
                      {
                        goto LABEL_129;
                      }
                    }
                  }
                }

                else
                {
                  v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v242 = v120;
                  if (v121)
                  {
                    goto LABEL_84;
                  }
                }

                v22 = _swiftEmptyDictionarySingleton;
LABEL_129:

                sub_10045BDE8(v22);
                v169 = v168;

                if (v240 <= 1)
                {
                  v22 = v244;
                  if (v240)
                  {
                    v177 = *(a2 + 24);
                    v178 = v260;
                    sub_1006872B0(1u, v177, v169, off_1008D41D0, &qword_100939EE0);
                    v260 = v178;
                    if (v178)
                    {
                      goto LABEL_166;
                    }

                    v180 = v179;

                    v181 = v241;
                    [v241 setReminder:v180];
                    v182 = [v177 uuid];
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v183 = UUID._bridgeToObjectiveC()().super.isa;
                    (*v233)(v117, v251);
                    [v181 setOwningReminderIdentifier:v183];

                    v116 = v256;
                  }

                  else
                  {
                    v170 = v260;
                    sub_1006872B0(0, *(a2 + 16), v169, off_1008D4120, &qword_1009399F0);
                    v260 = v170;
                    if (v170)
                    {
                      goto LABEL_166;
                    }

                    v172 = v171;

                    [v241 setAccount:v172];
                  }

                  goto LABEL_145;
                }

                v22 = v244;
                if (v240 == 2)
                {
                  if (([v244 _debug_cdAssigneeLinked] & 1) == 0)
                  {
                    goto LABEL_144;
                  }

                  v173 = v116;
                  v40 = [v22 assigneeID];
                  v174 = v260;
                  sub_1006872B0(2u, v40, v169, off_1008D41E0, &qword_100942E50);
                  v260 = v174;
                  if (v174)
                  {
                    goto LABEL_165;
                  }

                  v176 = v175;

                  [v241 setAssignee:{v176, i}];
                }

                else
                {
                  if (([v244 isOriginatorNullified] & 1) != 0 || (objc_msgSend(v22, "_debug_cdOriginatorLinked") & 1) == 0)
                  {
LABEL_144:

                    goto LABEL_145;
                  }

                  v173 = v116;
                  v40 = [v22 originatorID];
                  v184 = v260;
                  sub_1006872B0(3u, v40, v169, off_1008D41E0, &qword_100942E50);
                  v260 = v184;
                  if (v184)
                  {
                    goto LABEL_165;
                  }

                  v176 = v185;

                  [v241 setOriginator:{v176, i}];
                }

                v116 = v173;
LABEL_145:
                v118 = v239 + 1;
                v79 = v254;
                v90 = v246;
              }

              while (v239 + 1 != v235);
            }

            v186 = *(v79 + 104);
            v107 = v236;
            if (v186)
            {
              v187 = v241;
              [v241 updateChangeCount];
            }

            else
            {
            }

LABEL_75:

            goto LABEL_33;
          }
        }

        v212 = v65;
        v213 = v254;

        v214 = v213;
        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          v266[0] = swift_slowAlloc();
          *v217 = 136446722;
          *(v217 + 4) = sub_10000668C(0xD000000000000016, v256 | 0x8000000000000000, v266);
          *(v217 + 12) = 2082;
          v218 = *(v214 + 40);
          v269 = *(v214 + 24);
          v270[0] = v218;
          *(v270 + 14) = *(v214 + 54);
          sub_100009DAC(&v269, v265);
          v219 = sub_1000063E8();
          v221 = v220;
          sub_1005812D4(&v269);
          v222 = sub_10000668C(v219, v221, v266);

          *(v217 + 14) = v222;
          *(v217 + 22) = 2080;
          v223 = [v212 description];
          v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v226 = v225;

          v227 = v224;
          v22 = v244;
          v228 = sub_10000668C(v227, v226, v266);

          *(v217 + 24) = v228;
          _os_log_impl(&_mh_execute_header, v215, v216, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v217, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v212];
        swift_willThrow();
      }

      break;
    }
  }
}

void sub_100642088(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, unint64_t), unint64_t *a6, uint64_t *a7, uint64_t (*a8)(void *, void *), uint64_t (*a9)(id), uint64_t a10)
{
  v225 = a2;
  v18 = a3[2];
  v17 = a3[3];
  v221 = &v225;
  v19 = a5(a4, v220, a1);
  if (v11)
  {
    return;
  }

  v20 = v19;
  v219 = v18;
  v213 = a6;
  v214 = a1;
  v208 = a8;
  v210 = a3;
  v211 = v10;
  v212 = a7;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100945730);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v216 = v20;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v222[0] = swift_slowAlloc();
    *v24 = 136446978;
    *(v24 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v222);
    *(v24 + 12) = 2048;
    *(v24 + 14) = *(v216 + 16);

    *(v24 + 22) = 2082;
    sub_1000060C8(0, a6, a7);
    v25 = [swift_getObjCClassFromMetadata() description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10000668C(v26, v28, v222);

    *(v24 + 24) = v29;
    *(v24 + 32) = 2082;
    *(v24 + 34) = sub_10000668C(v219, v17, v222);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v24, 0x2Au);
    swift_arrayDestroy();

    v20 = v216;
  }

  else
  {
  }

  v218 = *(v20 + 16);
  if (!v218)
  {
LABEL_32:

    return;
  }

  v30 = 0;
  v224 = _swiftEmptySetSingleton;
  v217 = v20 + 32;
  v31 = &unk_100939D60;
  v32 = &unk_1007959E0;
  do
  {
    if (v30 >= *(v20 + 16))
    {
      __break(1u);
LABEL_128:
      __break(1u);

      return;
    }

    v33 = v217 + 16 * v30;
    v34 = *(v33 + 8);
    v35 = *(v34 + 16);
    if (v35)
    {
      v232 = v30;
      v36 = *v33;

      v37 = 32;
      do
      {
        v38 = *(v34 + v37);
        sub_1000F5104(v31, &unk_1007959E0);
        v39 = v31;
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1007953F0;
        v41 = &selRef_reminderID;
        if (!v38)
        {
          v41 = &selRef_accountID;
        }

        *(v40 + 32) = [v36 *v41];
        sub_100392144(v40);
        v31 = v39;

        ++v37;
        --v35;
      }

      while (v35);

      v20 = v216;
      v30 = v232;
    }

    ++v30;
  }

  while (v30 != v218);
  v42 = v212;
  if (v214 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v43)
  {
    v48 = _swiftEmptyArrayStorage;
LABEL_31:
    v49 = sub_1005E2514(v224);

    v50 = v210;
    v204 = sub_10065F214(v49, v210);

    v199 = v208(v48, v210);

    swift_beginAccess();
    v51 = 0;
    v52 = v213;
    while (1)
    {
      if (v51 >= *(v20 + 16))
      {
        goto LABEL_139;
      }

      v53 = v217 + 16 * v51;
      v54 = *(v53 + 8);
      v55 = *v53;
      v203 = v54;

      v56 = sub_1005E3810([v55 remObjectID], v52, v42);

      v57 = v50[6];
      v205 = v55;
      v202 = v51;
      if ((v57 & 0xC000000000000001) != 0)
      {
        v58 = v56;

        v59 = __CocoaDictionary.lookup(_:)();
        if (!v59)
        {
          goto LABEL_58;
        }

        v223 = v59;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v60 = v222[0];

        v61 = v204;
        if (!v60)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v61 = v204;
        if (!*(v57 + 16))
        {
          goto LABEL_59;
        }

        v58 = v56;

        v62 = sub_10002B924(v58);
        if ((v63 & 1) == 0)
        {
LABEL_58:

LABEL_59:

          v91 = v56;
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v222[0] = v96;
            *v94 = 136446466;
            *(v94 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v222);
            *(v94 + 12) = 2114;
            *(v94 + 14) = v91;
            *v95 = v91;
            v97 = v91;
            _os_log_impl(&_mh_execute_header, v92, v93, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v94, 0x16u);
            sub_1000050A4(v95, &unk_100938E70, &unk_100797230);

            sub_10000607C(v96);
          }

          else
          {
          }

          goto LABEL_63;
        }

        v60 = *(*(v57 + 56) + 8 * v62);

        if (!v60)
        {
          goto LABEL_59;
        }
      }

      if (!*(v199 + 16) || (v64 = a9(v56), (v65 & 1) == 0))
      {

        v176 = v56;

        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          *v179 = 136446722;
          *(v179 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v223);
          *(v179 + 12) = 2082;
          v180 = *(v211 + 40);
          v226 = *(v211 + 24);
          v227[0] = v180;
          *(v227 + 14) = *(v211 + 54);
          sub_100009DAC(&v226, v222);
          v181 = sub_1000063E8();
          v183 = v182;
          sub_1005812D4(&v226);
          v184 = sub_10000668C(v181, v183, &v223);

          *(v179 + 14) = v184;
          *(v179 + 22) = 2080;
          v185 = [v176 description];
          v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v188 = v187;

          v189 = sub_10000668C(v186, v188, &v223);

          *(v179 + 24) = v189;
          _os_log_impl(&_mh_execute_header, v177, v178, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v179, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v176];
        swift_willThrow();

        return;
      }

      v66 = *(*(v199 + 56) + 8 * v64);
      v67 = v203;
      swift_bridgeObjectRetain_n();
      v68 = v56;
      v201 = v66;
      v69 = v211;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      v196 = v68;
      if (os_log_type_enabled(v70, v71))
      {
        log = v70;
        LODWORD(v232) = v71;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *v72 = 136446978;
        *(v72 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v223);
        *(v72 + 12) = 2082;
        v74 = *(v211 + 40);
        v230 = *(v211 + 24);
        v231[0] = v74;
        *(v231 + 14) = *(v211 + 54);
        sub_100009DAC(&v230, v222);
        v75 = sub_1000063E8();
        v77 = v76;
        sub_1005812D4(&v230);
        v78 = sub_10000668C(v75, v77, &v223);

        *(v72 + 14) = v78;
        *(v72 + 22) = 2114;
        *(v72 + 24) = v68;
        *v73 = v68;
        *(v72 + 32) = 2082;
        v79 = *(v203 + 16);
        if (v79)
        {
          v222[0] = _swiftEmptyArrayStorage;
          v80 = v68;
          sub_100026EF4(0, v79, 0);
          v81 = v222[0];
          v82 = *(v222[0] + 16);
          v83 = 16 * v82;
          v84 = v203;
          v85 = 32;
          do
          {
            if (*(v84 + v85))
            {
              v86 = 0x7265646E696D6572;
            }

            else
            {
              v86 = 0x49746E756F636361;
            }

            if (*(v84 + v85))
            {
              v87 = 0xEA00000000004449;
            }

            else
            {
              v87 = 0xE900000000000044;
            }

            v222[0] = v81;
            v88 = *(v81 + 24);
            v89 = v82 + 1;
            if (v82 >= v88 >> 1)
            {
              sub_100026EF4((v88 > 1), v82 + 1, 1);
              v84 = v203;
              v81 = v222[0];
            }

            *(v81 + 16) = v89;
            v90 = v81 + v83;
            *(v90 + 32) = v86;
            *(v90 + 40) = v87;
            v83 += 16;
            ++v85;
            v82 = v89;
            --v79;
          }

          while (v79);
          v67 = v84;

          v20 = v216;
          v61 = v204;
        }

        else
        {
          v98 = v68;
        }

        v99 = Array.description.getter();
        v101 = v100;

        v102 = sub_10000668C(v99, v101, &v223);

        *(v72 + 34) = v102;
        _os_log_impl(&_mh_execute_header, log, v232, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v72, 0x2Au);
        sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v69 = v211;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v103 = v67;
      v193 = *(v67 + 16);
      if (v193)
      {
        v104 = 0;
        v194 = v67 + 32;
        while (1)
        {
          if (v104 >= *(v103 + 16))
          {
            goto LABEL_140;
          }

          v197 = v104;
          v105 = *(v194 + v104);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1007953F0;
          v198 = v105;
          v107 = &selRef_accountID;
          if (v105)
          {
            v107 = &selRef_reminderID;
          }

          *(v106 + 32) = [v205 *v107];
          v215 = v106 + 32;
          v232 = v106 & 0xFFFFFFFFFFFFFF8;
          loga = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (loga)
          {
            break;
          }

          v109 = _swiftEmptyDictionarySingleton;
LABEL_117:

          sub_10045BDE8(v109);
          v152 = v151;

          if (v198)
          {
            v153 = [v205 reminderID];
            sub_100685AD4(1, v153, v152, a10, off_1008D41D0, &qword_100939EE0);
            v69 = v211;
            v155 = &selRef_setReminder_;
          }

          else
          {
            v153 = [v205 accountID];
            sub_100685AD4(0, v153, v152, a10, off_1008D4120, &qword_1009399F0);
            v69 = v211;
            v155 = &selRef_setAccount_;
          }

          v156 = v154;

          [v201 *v155];

          v104 = v197 + 1;
          v103 = v203;
          v61 = v204;
          if (v197 + 1 == v193)
          {
            goto LABEL_121;
          }
        }

        v108 = 0;
        v209 = v106 & 0xC000000000000001;
        v109 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v209)
          {
            v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v108 >= *(v232 + 16))
            {
              goto LABEL_135;
            }

            v112 = *(v215 + 8 * v108);
          }

          v113 = *(v61 + 16);
          v114 = v112;
          v115 = v114;
          if (!v113 || (v116 = sub_100393C74(v114), (v117 & 1) == 0))
          {

            v157 = v115;
            v158 = Logger.logObject.getter();
            v159 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v223 = swift_slowAlloc();
              *v160 = 136446978;
              *(v160 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v223);
              *(v160 + 12) = 2082;
              v161 = *(v211 + 40);
              v228 = *(v211 + 24);
              v229[0] = v161;
              *(v229 + 14) = *(v211 + 54);
              sub_100009DAC(&v228, v222);
              v162 = sub_1000063E8();
              v164 = v163;
              sub_1005812D4(&v228);
              v165 = sub_10000668C(v162, v164, &v223);

              *(v160 + 14) = v165;
              *(v160 + 22) = 2080;
              v166 = [v157 description];
              v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v169 = v168;

              v170 = sub_10000668C(v167, v169, &v223);

              *(v160 + 24) = v170;
              *(v160 + 32) = 2080;
              v171 = [v157 description];
              v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v174 = v173;

              v175 = sub_10000668C(v172, v174, &v223);

              *(v160 + 34) = v175;
              _os_log_impl(&_mh_execute_header, v158, v159, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v160, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v157];
            swift_willThrow();

            return;
          }

          v118 = *(*(v61 + 56) + 8 * v116);
          if ((v109 & 0xC000000000000001) != 0)
          {
            if (v109 < 0)
            {
              v119 = v109;
            }

            else
            {
              v119 = v109 & 0xFFFFFFFFFFFFFF8;
            }

            v120 = v118;
            v121 = __CocoaDictionary.count.getter();
            if (__OFADD__(v121, 1))
            {
              goto LABEL_137;
            }

            v122 = sub_10021D008(v119, v121 + 1);
          }

          else
          {
            v123 = v118;
            v122 = v109;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v222[0] = v122;
          v125 = v115;
          v127 = sub_10002B924(v115);
          v128 = *(v122 + 16);
          v129 = (v126 & 1) == 0;
          v130 = v128 + v129;
          if (__OFADD__(v128, v129))
          {
            goto LABEL_136;
          }

          v131 = v126;
          if (*(v122 + 24) >= v130)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v109 = v122;
              if ((v126 & 1) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_74;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v137 = static _DictionaryStorage.copy(original:)();
            v109 = v137;
            if (*(v122 + 16))
            {
              v138 = (v137 + 64);
              __src = (v122 + 64);
              v139 = ((1 << *(v109 + 32)) + 63) >> 6;
              if (v109 != v122 || v138 >= &__src[8 * v139])
              {
                memmove(v138, __src, 8 * v139);
              }

              v140 = 0;
              *(v109 + 16) = *(v122 + 16);
              v141 = 1 << *(v122 + 32);
              if (v141 < 64)
              {
                v142 = ~(-1 << v141);
              }

              else
              {
                v142 = -1;
              }

              v192 = v142 & *(v122 + 64);
              for (i = (v141 + 63) >> 6; v192; v150 = v148)
              {
                v143 = __clz(__rbit64(v192));
                v192 &= v192 - 1;
LABEL_112:
                v146 = v143 | (v140 << 6);
                v147 = *(*(v122 + 48) + 8 * v146);
                v148 = *(*(v122 + 56) + 8 * v146);
                *(*(v109 + 48) + 8 * v146) = v147;
                *(*(v109 + 56) + 8 * v146) = v148;
                v149 = v147;
              }

              v144 = v140;
              while (1)
              {
                v140 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_141;
                }

                if (v140 >= i)
                {
                  break;
                }

                v145 = *&__src[8 * v140];
                ++v144;
                if (v145)
                {
                  v143 = __clz(__rbit64(v145));
                  v192 = (v145 - 1) & v145;
                  goto LABEL_112;
                }
              }
            }

            v61 = v204;
            if (v131)
            {
              goto LABEL_74;
            }

LABEL_95:
            *(v109 + 8 * (v127 >> 6) + 64) |= 1 << v127;
            *(*(v109 + 48) + 8 * v127) = v125;
            *(*(v109 + 56) + 8 * v127) = v118;

            v134 = *(v109 + 16);
            v135 = __OFADD__(v134, 1);
            v136 = v134 + 1;
            if (v135)
            {
              goto LABEL_138;
            }

            *(v109 + 16) = v136;
          }

          else
          {
            sub_10036CABC(v130, isUniquelyReferenced_nonNull_native);
            v109 = v222[0];
            v132 = sub_10002B924(v125);
            if ((v131 & 1) != (v133 & 1))
            {
              goto LABEL_142;
            }

            v127 = v132;
            if ((v131 & 1) == 0)
            {
              goto LABEL_95;
            }

LABEL_74:

            v110 = *(v109 + 56);
            v111 = *(v110 + 8 * v127);
            *(v110 + 8 * v127) = v118;
          }

          v20 = v216;
          if (++v108 == loga)
          {
            goto LABEL_117;
          }

          continue;
        }
      }

LABEL_121:

      v42 = v212;
      if (*(v69 + 104))
      {
        [v201 updateChangeCount];
      }

LABEL_63:
      v52 = v213;
      v50 = v210;
      v51 = v202 + 1;
      if (v202 + 1 == v218)
      {

        return;
      }
    }
  }

  v222[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v32 = (v214 & 0xC000000000000001);
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_128;
      }

      if (v32)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          goto LABEL_32;
        }

        v46 = *(v214 + 8 * v44 + 32);
      }

      v47 = v46;
      sub_1005E3810([v46 remObjectID], v213, v212);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = *(v222[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v44;
      if (v45 == v43)
      {
        v48 = v222[0];
        v20 = v216;
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006437C4(unint64_t a1, uint64_t a2, void *a3)
{
  v217 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v213 = &v217;
  v9 = sub_1003DFA9C(sub_1006AF410, &v212, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  v204 = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v202 = a3;
  v203 = v11;
  if (os_log_type_enabled(v13, v14))
  {
    v211 = v8;
    v15 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v214[0] = v11;
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v214);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10[2];

    *(v15 + 22) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v16 = [swift_getObjCClassFromMetadata() description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000668C(v17, v19, v214);

    *(v15 + 24) = v20;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v211, v7, v214);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v210 = v10[2];
  if (!v210)
  {
LABEL_32:

    return;
  }

  v21 = 0;
  v216 = _swiftEmptySetSingleton;
  v209 = v10 + 4;
  v22 = &unk_100939D60;
  v207 = v10;
  do
  {
    if (v21 >= v10[2])
    {
      __break(1u);
LABEL_126:
      __break(1u);

      return;
    }

    v23 = &v209[2 * v21];
    v24 = v23[1];
    v11 = v24[2];
    if (v11)
    {
      v224 = v21;
      v25 = *v23;

      v26 = 32;
      do
      {
        v27 = *(v24 + v26);
        sub_1000F5104(v22, &unk_1007959E0);
        v28 = v22;
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1007953F0;
        v30 = &selRef_reminderID;
        if (!v27)
        {
          v30 = &selRef_accountID;
        }

        *(v29 + 32) = [v25 *v30];
        sub_100392144(v29);
        v22 = v28;

        ++v26;
        --v11;
      }

      while (v11);

      v10 = v207;
      v21 = v224;
    }

    ++v21;
  }

  while (v21 != v210);
  if (v204 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_31:
    v38 = sub_1005E2514(v216);

    v39 = v202;
    v40 = sub_10065F214(v38, v202);

    v41 = 0;
    v194 = sub_100665DAC(v37, v202);

    swift_beginAccess();
    v42 = 0;
    v198 = v40;
    while (1)
    {
      if (v42 >= v207[2])
      {
        goto LABEL_137;
      }

      v43 = &v209[2 * v42];
      v44 = v43[1];
      v45 = *v43;
      v197 = v44;

      v46 = sub_1005E3810([v45 remObjectID], &qword_100940C50, off_1008D41C8);
      v195 = v42;

      v47 = v39[6];
      v196 = v45;
      if ((v47 & 0xC000000000000001) != 0)
      {
        v48 = v46;

        v49 = __CocoaDictionary.lookup(_:)();
        if (!v49)
        {
          goto LABEL_56;
        }

        v215 = v49;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v50 = v214[0];
      }

      else
      {
        if (!*(v47 + 16))
        {
          goto LABEL_57;
        }

        v48 = v46;

        v51 = sub_10002B924(v48);
        if ((v52 & 1) == 0)
        {
LABEL_56:

LABEL_57:

          v79 = v46;
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v214[0] = v84;
            *v82 = 136446466;
            *(v82 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v214);
            *(v82 + 12) = 2114;
            *(v82 + 14) = v79;
            *v83 = v79;
            v85 = v79;
            _os_log_impl(&_mh_execute_header, v80, v81, "[%{public}s] Skipping establishRelationships() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v82, 0x16u);
            sub_1000050A4(v83, &unk_100938E70, &unk_100797230);

            sub_10000607C(v84);
          }

          else
          {
          }

          goto LABEL_61;
        }

        v50 = *(*(v47 + 56) + 8 * v51);
      }

      if (!v50)
      {
        goto LABEL_57;
      }

      if (!*(v194 + 16) || (v53 = sub_100393C74(v46), (v54 & 1) == 0))
      {

        v169 = v46;

        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          *v172 = 136446722;
          *(v172 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v215);
          *(v172 + 12) = 2082;
          v173 = *(v203 + 40);
          v218 = *(v203 + 24);
          v219[0] = v173;
          *(v219 + 14) = *(v203 + 54);
          sub_100009DAC(&v218, v214);
          v174 = sub_1000063E8();
          v176 = v175;
          sub_1005812D4(&v218);
          v177 = sub_10000668C(v174, v176, &v215);

          *(v172 + 14) = v177;
          *(v172 + 22) = 2080;
          v178 = [v169 description];
          v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v180;

          v182 = sub_10000668C(v179, v181, &v215);

          *(v172 + 24) = v182;
          _os_log_impl(&_mh_execute_header, v170, v171, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v172, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v169];
        swift_willThrow();

        return;
      }

      v55 = *(*(v194 + 56) + 8 * v53);
      v56 = v197;
      swift_bridgeObjectRetain_n();
      v57 = v46;
      v193 = v55;
      v58 = v203;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      v189 = v57;
      if (os_log_type_enabled(v59, v60))
      {
        v205 = v60;
        v224 = v59;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        *v61 = 136446978;
        *(v61 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v215);
        *(v61 + 12) = 2082;
        v63 = *(v203 + 40);
        v222 = *(v203 + 24);
        v223[0] = v63;
        *(v223 + 14) = *(v203 + 54);
        sub_100009DAC(&v222, v214);
        v64 = sub_1000063E8();
        v66 = v65;
        sub_1005812D4(&v222);
        v67 = sub_10000668C(v64, v66, &v215);

        *(v61 + 14) = v67;
        *(v61 + 22) = 2114;
        *(v61 + 24) = v57;
        v199 = v62;
        *v62 = v57;
        *(v61 + 32) = 2082;
        v68 = v197[2];
        if (v68)
        {
          v214[0] = _swiftEmptyArrayStorage;
          v69 = v57;
          sub_100026EF4(0, v68, 0);
          v70 = v214[0];
          v71 = *(v214[0] + 16);
          v72 = 16 * v71;
          v73 = 32;
          do
          {
            if (*(v56 + v73))
            {
              v74 = 0x7265646E696D6572;
            }

            else
            {
              v74 = 0x49746E756F636361;
            }

            if (*(v56 + v73))
            {
              v75 = 0xEA00000000004449;
            }

            else
            {
              v75 = 0xE900000000000044;
            }

            v214[0] = v70;
            v76 = *(v70 + 24);
            v77 = v71 + 1;
            if (v71 >= v76 >> 1)
            {
              sub_100026EF4((v76 > 1), v71 + 1, 1);
              v56 = v197;
              v70 = v214[0];
            }

            *(v70 + 16) = v77;
            v78 = v70 + v72;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            v72 += 16;
            ++v73;
            v71 = v77;
            --v68;
          }

          while (v68);

          v58 = v203;
          v41 = 0;
          v40 = v198;
        }

        else
        {
          v86 = v57;
        }

        v87 = Array.description.getter();
        v89 = v88;

        v90 = sub_10000668C(v87, v89, &v215);

        *(v61 + 34) = v90;
        v91 = v224;
        _os_log_impl(&_mh_execute_header, v224, v205, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v61, 0x2Au);
        sub_1000050A4(v199, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v92 = v196;
      v186 = v56[2];
      if (v186)
      {
        v93 = 0;
        v187 = v56 + 4;
        while (v93 < v56[2])
        {
          v190 = v93;
          v94 = v187[v93];
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_1007953F0;
          v191 = v94;
          v96 = &selRef_accountID;
          if (v94)
          {
            v96 = &selRef_reminderID;
          }

          v97 = v95;
          *(v95 + 32) = [v92 *v96];
          v206 = v97 + 32;
          v208 = v97 & 0xFFFFFFFFFFFFFF8;
          v200 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v200)
          {
            v98 = 0;
            v201 = v97 & 0xC000000000000001;
            v99 = _swiftEmptyDictionarySingleton;
            while (1)
            {
              if (v201)
              {
                v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v98 >= *(v208 + 16))
                {
                  goto LABEL_133;
                }

                v103 = *(v206 + 8 * v98);
              }

              v104 = *(v40 + 16);
              v105 = v103;
              v106 = v105;
              if (!v104 || (v107 = sub_100393C74(v105), (v108 & 1) == 0))
              {

                v149 = v106;
                v150 = Logger.logObject.getter();
                v151 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v150, v151))
                {
                  v152 = v58;
                  v153 = swift_slowAlloc();
                  v215 = swift_slowAlloc();
                  *v153 = 136446978;
                  *(v153 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v215);
                  *(v153 + 12) = 2082;
                  v154 = *(v152 + 40);
                  v220 = *(v152 + 24);
                  v221[0] = v154;
                  *(v221 + 14) = *(v152 + 54);
                  sub_100009DAC(&v220, v214);
                  v155 = sub_1000063E8();
                  v157 = v156;
                  sub_1005812D4(&v220);
                  v158 = sub_10000668C(v155, v157, &v215);

                  *(v153 + 14) = v158;
                  *(v153 + 22) = 2080;
                  v159 = [v149 description];
                  v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v162 = v161;

                  v163 = sub_10000668C(v160, v162, &v215);

                  *(v153 + 24) = v163;
                  *(v153 + 32) = 2080;
                  v164 = [v149 description];
                  v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v167 = v166;

                  v168 = sub_10000668C(v165, v167, &v215);

                  *(v153 + 34) = v168;
                  _os_log_impl(&_mh_execute_header, v150, v151, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v153, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v149];
                swift_willThrow();

                return;
              }

              v109 = *(*(v40 + 56) + 8 * v107);
              v224 = v109;
              v110 = v41;
              if ((v99 & 0xC000000000000001) != 0)
              {
                if (v99 < 0)
                {
                  v111 = v99;
                }

                else
                {
                  v111 = v99 & 0xFFFFFFFFFFFFFF8;
                }

                v112 = v109;
                v113 = __CocoaDictionary.count.getter();
                if (__OFADD__(v113, 1))
                {
                  goto LABEL_135;
                }

                v114 = sub_10021D008(v111, v113 + 1);
              }

              else
              {
                v115 = v109;
                v114 = v99;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v214[0] = v114;
              v118 = sub_10002B924(v106);
              v119 = *(v114 + 16);
              v120 = (v117 & 1) == 0;
              v121 = v119 + v120;
              if (__OFADD__(v119, v120))
              {
                goto LABEL_134;
              }

              v122 = v117;
              if (*(v114 + 24) >= v121)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v99 = v114;
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v129 = static _DictionaryStorage.copy(original:)();
                  v99 = v129;
                  if (*(v114 + 16))
                  {
                    v130 = (v129 + 64);
                    __src = (v114 + 64);
                    v131 = ((1 << *(v99 + 32)) + 63) >> 6;
                    if (v99 != v114 || v130 >= &__src[8 * v131])
                    {
                      memmove(v130, __src, 8 * v131);
                    }

                    v132 = 0;
                    *(v99 + 16) = *(v114 + 16);
                    v133 = 1 << *(v114 + 32);
                    if (v133 < 64)
                    {
                      v134 = ~(-1 << v133);
                    }

                    else
                    {
                      v134 = -1;
                    }

                    v185 = v134 & *(v114 + 64);
                    for (i = (v133 + 63) >> 6; v185; v142 = v140)
                    {
                      v135 = __clz(__rbit64(v185));
                      v185 &= v185 - 1;
LABEL_111:
                      v138 = v135 | (v132 << 6);
                      v139 = *(*(v114 + 48) + 8 * v138);
                      v140 = *(*(v114 + 56) + 8 * v138);
                      *(*(v99 + 48) + 8 * v138) = v139;
                      *(*(v99 + 56) + 8 * v138) = v140;
                      v141 = v139;
                    }

                    v136 = v132;
                    while (1)
                    {
                      v132 = v136 + 1;
                      if (__OFADD__(v136, 1))
                      {
                        goto LABEL_139;
                      }

                      if (v132 >= i)
                      {
                        break;
                      }

                      v137 = *&__src[8 * v132];
                      ++v136;
                      if (v137)
                      {
                        v135 = __clz(__rbit64(v137));
                        v185 = (v137 - 1) & v137;
                        goto LABEL_111;
                      }
                    }
                  }
                }
              }

              else
              {
                sub_10036CABC(v121, isUniquelyReferenced_nonNull_native);
                v99 = v214[0];
                v123 = sub_10002B924(v106);
                if ((v122 & 1) != (v124 & 1))
                {
                  goto LABEL_140;
                }

                v118 = v123;
              }

              v40 = v198;
              v41 = v110;
              if (v122)
              {

                v100 = *(v99 + 56);
                v101 = *(v100 + 8 * v118);
                v102 = v224;
                *(v100 + 8 * v118) = v224;
              }

              else
              {
                *(v99 + 8 * (v118 >> 6) + 64) |= 1 << v118;
                *(*(v99 + 48) + 8 * v118) = v106;
                v125 = v224;
                *(*(v99 + 56) + 8 * v118) = v224;

                v126 = *(v99 + 16);
                v127 = __OFADD__(v126, 1);
                v128 = v126 + 1;
                if (v127)
                {
                  goto LABEL_136;
                }

                *(v99 + 16) = v128;
              }

              v58 = v203;
              if (++v98 == v200)
              {
                goto LABEL_115;
              }
            }
          }

          v99 = _swiftEmptyDictionarySingleton;
LABEL_115:

          sub_10045BDE8(v99);
          v144 = v143;

          v92 = v196;
          if (v191)
          {
            v145 = [v196 reminderID];
            sub_100685AD4(1, v145, v144, &type metadata for REMRecurrenceRuleCDIngestor.RelationshipKey, off_1008D41D0, &qword_100939EE0);
            v41 = 0;
            v147 = &selRef_setReminder_;
          }

          else
          {
            v145 = [v196 accountID];
            sub_100685AD4(0, v145, v144, &type metadata for REMRecurrenceRuleCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
            v41 = 0;
            v147 = &selRef_setAccount_;
          }

          v148 = v146;

          [v193 *v147];

          v93 = v190 + 1;
          v56 = v197;
          if (v190 + 1 == v186)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_138;
      }

LABEL_119:

      if (v58[104])
      {
        [v193 updateChangeCount];
      }

LABEL_61:
      v39 = v202;
      v42 = v195 + 1;
      if ((v195 + 1) == v210)
      {

        goto LABEL_32;
      }
    }
  }

  v214[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v224 = (v204 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_126;
      }

      v11 = 0;
      if ((v204 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= v224[2].isa)
        {
          __break(1u);

          goto LABEL_32;
        }

        v34 = *(v204 + 8 * v32 + 32);
      }

      v35 = v34;
      sub_1005E3810([v34 remObjectID], &qword_100940C50, off_1008D41C8);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v214[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 = (v32 + 1);
      if (v33 == v31)
      {
        v37 = v214[0];
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100644EAC(unint64_t a1, void **a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v239 = *(v7 - 8);
  v8 = *(v239 + 64);
  __chkstk_darwin(v7);
  v10 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = a2;
  v11 = a3[2];
  v12 = a3[3];
  v249[2] = &v254;
  v250 = v3;
  v13 = v261;
  v14 = sub_1003DFDAC(sub_1006ABF98, v249, a1);
  if (v13)
  {
    return;
  }

  v236 = a3;
  v247 = v11;
  *&v248 = v12;
  v15 = v14;
  v261 = a2;
  v240 = a1;
  v237 = v10;
  v233 = v7;
  v16 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v243 = 0;
  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100945730);
  v19 = v15;

  v20 = v248;

  v235 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v238 = v16;
  v242 = v19;
  v24 = v247;
  v234 = "mutateRelationshipOrdering";
  if (v23)
  {
    v25 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v251[0] = v246;
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v251);
    *(v25 + 12) = 2048;
    *(v25 + 14) = v242[2];

    *(v25 + 22) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = v22;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v21;
    v31 = v30;

    v22 = sub_10000668C(v28, v31, v251);

    *(v25 + 24) = v22;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v24, v20, v251);
    _os_log_impl(&_mh_execute_header, v29, v27, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    swift_arrayDestroy();

    v19 = v242;
  }

  else
  {
  }

  v32 = v261;
  v245 = v19[2];
  if (!v245)
  {
LABEL_34:

    return;
  }

  v33 = 0;
  v253 = _swiftEmptySetSingleton;
  v244 = v19 + 4;
  v241 = v261 + 3;
  v34 = &unk_100939D60;
  v35 = &unk_1007959E0;
  v261 += 2;
  v248 = xmmword_1007953F0;
  v36 = v32 + 3;
  do
  {
    if (v33 >= v19[2])
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:

      v199 = v35;

      v200 = Logger.logObject.getter();
      v201 = v22;
      v202 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v200, v202))
      {
        v203 = swift_slowAlloc();
        v252[0] = swift_slowAlloc();
        *v203 = 136446722;
        *(v203 + 4) = sub_10000668C(0xD000000000000016, v234 | 0x8000000000000000, v252);
        *(v203 + 12) = 2082;
        v204 = *(v201 + 40);
        v255 = *(v201 + 24);
        v256[0] = v204;
        *(v256 + 14) = *(v201 + 54);
        sub_100009DAC(&v255, v251);
        v205 = sub_1000063E8();
        v207 = v206;
        sub_1005812D4(&v255);
        v208 = sub_10000668C(v205, v207, v252);

        *(v203 + 14) = v208;
        *(v203 + 22) = 2080;
        v209 = [v199 description];
        v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v212 = v211;

        v213 = sub_10000668C(v210, v212, v252);

        *(v203 + 24) = v213;
        _os_log_impl(&_mh_execute_header, v200, v202, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v203, 0x20u);
        swift_arrayDestroy();
      }

      v214 = v226;
      [objc_opt_self() noSuchObjectErrorWithObjectID:v199];
      swift_willThrow();

      return;
    }

    v37 = &v244[2 * v33];
    v22 = v37[1];
    v38 = *(v22 + 16);
    if (v38)
    {
      v247 = v33;
      v246 = *v37;

      v39 = 32;
      do
      {
        v40 = *(v22 + v39);
        sub_1000F5104(v34, &unk_1007959E0);
        v41 = swift_allocObject();
        v42 = v34;
        v43 = v41;
        *(v41 + 16) = v248;
        v44 = v261;
        if (v40)
        {
          v44 = v36;
        }

        v45 = *v44;
        *(v41 + 32) = v45;
        v46 = v45;
        sub_100392144(v43);
        v34 = v42;

        ++v39;
        --v38;
      }

      while (v38);

      v19 = v242;
      v33 = v247;
    }

    ++v33;
  }

  while (v33 != v245);
  v47 = v239;
  if (v240 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v243;
  v50 = _swiftEmptyArrayStorage;
  if (!v48)
  {
LABEL_30:
    v55 = sub_1005E2514(v253);
    if (v49)
    {
LABEL_31:

      goto LABEL_34;
    }

    v56 = v55;

    v57 = v236;
    v58 = v238;
    v59 = sub_10065F214(v56, v236);

    v60 = sub_1006670C8(v50, v57);
    v243 = 0;
    v22 = v58;
    v230 = v60;

    swift_beginAccess();
    v61 = 0;
    v219 = (v47 + 8);
    v62 = &selRef_persistentStoreForIdentifier_;
    *&v63 = 136446978;
    v221 = v63;
    v232 = v59;
    while (1)
    {
      if (v61 >= v19[2])
      {
        goto LABEL_144;
      }

      v64 = &v244[2 * v61];
      v65 = v64[1];
      v50 = *v64;
      v231 = v65;

      v66 = [v50 v62[106]];
      v67 = v243;
      v68 = sub_1005E3810(v66, &qword_100942E50, off_1008D41E0);
      v243 = v67;
      if (v67)
      {
        goto LABEL_135;
      }

      v35 = v68;

      v69 = v236[6];
      v226 = v50;
      v220 = v61;
      if ((v69 & 0xC000000000000001) != 0)
      {
        v70 = v35;

        v71 = __CocoaDictionary.lookup(_:)();
        if (!v71)
        {
          goto LABEL_45;
        }

        v252[0] = v71;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v72 = v251[0];
      }

      else
      {
        if (!*(v69 + 16))
        {
          v72 = 0;
          goto LABEL_47;
        }

        v70 = v35;

        v73 = sub_10002B924(v70);
        if ((v74 & 1) == 0)
        {
LABEL_45:

          v72 = 0;
          goto LABEL_46;
        }

        v72 = *(*(v69 + 56) + 8 * v73);
      }

LABEL_46:
      v22 = v238;
LABEL_47:

      if (!*(v230 + 16))
      {
        goto LABEL_131;
      }

      v75 = sub_100393C74(v35);
      if ((v76 & 1) == 0)
      {
        goto LABEL_131;
      }

      v77 = *(*(v230 + 56) + 8 * v75);
      v78 = v231;
      swift_bridgeObjectRetain_n();
      v79 = v35;
      v229 = v77;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();

      v82 = os_log_type_enabled(v80, v81);
      v224 = v79;
      if (v82)
      {
        LODWORD(v240) = v81;
        v246 = v80;
        v83 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v252[0] = v239;
        *v83 = v221;
        *(v83 + 4) = sub_10000668C(0xD000000000000016, v234 | 0x8000000000000000, v252);
        *(v83 + 12) = 2082;
        v84 = *(v22 + 40);
        v259 = *(v22 + 24);
        v260[0] = v84;
        *(v260 + 14) = *(v22 + 54);
        sub_100009DAC(&v259, v251);
        v85 = sub_1000063E8();
        v87 = v86;
        sub_1005812D4(&v259);
        v88 = sub_10000668C(v85, v87, v252);

        *(v83 + 14) = v88;
        *(v83 + 22) = 2114;
        *(v83 + 24) = v79;
        *v247 = v79;
        *(v83 + 32) = 2082;
        v89 = v78[2];
        if (v89)
        {
          v251[0] = _swiftEmptyArrayStorage;
          v90 = v79;
          sub_100026EF4(0, v89, 0);
          v91 = v251[0];
          v92 = *(v251[0] + 16);
          v93 = v78;
          v94 = 16 * v92;
          v95 = 32;
          do
          {
            if (*(v93 + v95))
            {
              v96 = 0x44497473696CLL;
            }

            else
            {
              v96 = 0x49746E756F636361;
            }

            if (*(v93 + v95))
            {
              v97 = 0xE600000000000000;
            }

            else
            {
              v97 = 0xE900000000000044;
            }

            v251[0] = v91;
            v98 = *(v91 + 24);
            v99 = v92 + 1;
            if (v92 >= v98 >> 1)
            {
              sub_100026EF4((v98 > 1), v92 + 1, 1);
              v93 = v231;
              v91 = v251[0];
            }

            *(v91 + 16) = v99;
            v100 = v91 + v94;
            *(v100 + 32) = v96;
            *(v100 + 40) = v97;
            v94 += 16;
            ++v95;
            v92 = v99;
            --v89;
          }

          while (v89);
          v78 = v93;

          v19 = v242;
          v59 = v232;
        }

        else
        {
          v101 = v79;
        }

        v102 = Array.description.getter();
        v104 = v103;

        v105 = sub_10000668C(v102, v104, v252);

        *(v83 + 34) = v105;
        v106 = v246;
        _os_log_impl(&_mh_execute_header, v246, v240, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v83, 0x2Au);
        sub_1000050A4(v247, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v22 = v238;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v107 = v237;
      v108 = v241;
      v222 = v78[2];
      if (v222)
      {
        v109 = 0;
        v223 = v78 + 4;
        while (1)
        {
          if (v109 >= v78[2])
          {
            goto LABEL_143;
          }

          v225 = v109;
          v110 = *(v223 + v109);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v111 = swift_allocObject();
          v112 = v111;
          *(v111 + 16) = v248;
          v227 = v110;
          v113 = v261;
          if (v110)
          {
            v113 = v108;
          }

          v114 = *v113;
          *(v111 + 32) = v114;
          v246 = (v111 + 32);
          v115 = v114;
          v247 = (v112 & 0xFFFFFFFFFFFFFF8);
          v239 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v228 = v112;
          if (v239)
          {
            break;
          }

          v117 = _swiftEmptyDictionarySingleton;
          v118 = v243;
LABEL_115:

          sub_10045BDE8(v117);
          v163 = v162;

          if (v227)
          {
            v164 = *v108;
            sub_10068932C(1, *v108, v163, &type metadata for REMShareeCDIngestor.RelationshipKey, off_1008D41A8, &unk_100938880);
            v19 = v242;
            if (v118)
            {
              goto LABEL_136;
            }

            v243 = 0;
            v166 = v165;

            v167 = v229;
            [v229 setList:v166];

            v168 = [v164 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v169.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v219)(v107, v233);
            v170 = &selRef_setOwningListIdentifier_;
            v22 = v238;
          }

          else
          {
            sub_10068932C(0, *v261, v163, &type metadata for REMShareeCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
            v19 = v242;
            if (v118)
            {
LABEL_136:

              goto LABEL_34;
            }

            v243 = 0;
            v169.super.isa = v171;

            v170 = &selRef_setAccount_;
            v167 = v229;
          }

          v109 = v225 + 1;
          [v167 *v170];

          v78 = v231;
          if (v109 == v222)
          {
            goto LABEL_121;
          }
        }

        v116 = 0;
        v240 = v112 & 0xC000000000000001;
        v117 = _swiftEmptyDictionarySingleton;
        v118 = v243;
        while (2)
        {
          if (v240)
          {
            v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v116 >= v247[2])
            {
              goto LABEL_139;
            }

            v121 = v246[v116].isa;
          }

          v122 = *(v59 + 16);
          v123 = v121;
          v124 = v123;
          if (!v122 || (v125 = sub_100393C74(v123), (v126 & 1) == 0))
          {

            v176 = v124;
            v177 = Logger.logObject.getter();
            v178 = v22;
            v179 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v177, v179))
            {
              v180 = swift_slowAlloc();
              v261 = swift_slowAlloc();
              v252[0] = v261;
              *v180 = v221;
              *(v180 + 4) = sub_10000668C(0xD000000000000016, v234 | 0x8000000000000000, v252);
              *(v180 + 12) = 2082;
              v181 = *(v178 + 40);
              v257 = *(v178 + 24);
              v258[0] = v181;
              *(v258 + 14) = *(v178 + 54);
              sub_100009DAC(&v257, v251);
              v182 = sub_1000063E8();
              v184 = v183;
              sub_1005812D4(&v257);
              v185 = sub_10000668C(v182, v184, v252);

              *(v180 + 14) = v185;
              *(v180 + 22) = 2080;
              v186 = [(objc_class *)v176 description];
              v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v189 = v188;

              v190 = sub_10000668C(v187, v189, v252);

              *(v180 + 24) = v190;
              *(v180 + 32) = 2080;
              v191 = [(objc_class *)v176 description];
              v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v194 = v193;

              v195 = sub_10000668C(v192, v194, v252);

              *(v180 + 34) = v195;
              _os_log_impl(&_mh_execute_header, v177, v179, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v180, 0x2Au);
              swift_arrayDestroy();
            }

            v196 = v226;
            v197 = v224;
            v198 = v229;
            [objc_opt_self() noSuchObjectErrorWithObjectID:v176];

            swift_willThrow();
            return;
          }

          v127 = *(*(v59 + 56) + 8 * v125);
          v243 = v118;
          if ((v117 & 0xC000000000000001) != 0)
          {
            if (v117 < 0)
            {
              v128 = v117;
            }

            else
            {
              v128 = v117 & 0xFFFFFFFFFFFFFF8;
            }

            v129 = v127;
            v130 = __CocoaDictionary.count.getter();
            if (__OFADD__(v130, 1))
            {
              goto LABEL_141;
            }

            v131 = sub_10021D008(v128, v130 + 1);
          }

          else
          {
            v132 = v127;
            v131 = v117;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v251[0] = v131;
          v134 = v124;
          v136 = sub_10002B924(v124);
          v137 = *(v131 + 16);
          v138 = (v135 & 1) == 0;
          v139 = v137 + v138;
          if (__OFADD__(v137, v138))
          {
            goto LABEL_140;
          }

          v140 = v135;
          if (*(v131 + 24) >= v139)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v117 = v131;
              v108 = v241;
              if ((v135 & 1) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_72;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v146 = static _DictionaryStorage.copy(original:)();
            v117 = v146;
            if (*(v131 + 16))
            {
              v147 = (v146 + 64);
              v148 = 1 << *(v117 + 32);
              v216 = (v131 + 64);
              v149 = (v148 + 63) >> 6;
              if (v117 != v131 || v147 >= &v216[8 * v149])
              {
                memmove(v147, v216, 8 * v149);
              }

              v150 = 0;
              *(v117 + 16) = *(v131 + 16);
              v151 = 1 << *(v131 + 32);
              if (v151 < 64)
              {
                v152 = ~(-1 << v151);
              }

              else
              {
                v152 = -1;
              }

              v218 = v152 & *(v131 + 64);
              v215 = (v151 + 63) >> 6;
              for (i = v218; v218; i = v218)
              {
                v154 = __clz(__rbit64(i));
                v218 = (i - 1) & i;
LABEL_110:
                v157 = v154 | (v150 << 6);
                v158 = *(*(v131 + 48) + 8 * v157);
                v217 = *(*(v131 + 56) + 8 * v157);
                v159 = v217;
                *(*(v117 + 48) + 8 * v157) = v158;
                *(*(v117 + 56) + 8 * v157) = v159;
                v160 = v158;
                v161 = v217;
              }

              v155 = v150;
              while (1)
              {
                v150 = v155 + 1;
                if (__OFADD__(v155, 1))
                {
                  goto LABEL_145;
                }

                if (v150 >= v215)
                {
                  break;
                }

                v156 = *&v216[8 * v150];
                ++v155;
                if (v156)
                {
                  v154 = __clz(__rbit64(v156));
                  v218 = (v156 - 1) & v156;
                  goto LABEL_110;
                }
              }
            }

            v108 = v241;
            if (v140)
            {
              goto LABEL_72;
            }

LABEL_93:
            *(v117 + 8 * (v136 >> 6) + 64) |= 1 << v136;
            *(*(v117 + 48) + 8 * v136) = v134;
            *(*(v117 + 56) + 8 * v136) = v127;

            v143 = *(v117 + 16);
            v144 = __OFADD__(v143, 1);
            v145 = v143 + 1;
            if (v144)
            {
              goto LABEL_142;
            }

            *(v117 + 16) = v145;
          }

          else
          {
            sub_10036CABC(v139, isUniquelyReferenced_nonNull_native);
            v117 = v251[0];
            v141 = sub_10002B924(v134);
            if ((v140 & 1) != (v142 & 1))
            {
              goto LABEL_146;
            }

            v136 = v141;
            v108 = v241;
            if ((v140 & 1) == 0)
            {
              goto LABEL_93;
            }

LABEL_72:

            v119 = *(v117 + 56);
            v120 = *(v119 + 8 * v136);
            *(v119 + 8 * v136) = v127;
          }

          v107 = v237;
          v22 = v238;
          v118 = v243;
          v59 = v232;
          if (++v116 == v239)
          {
            goto LABEL_115;
          }

          continue;
        }
      }

LABEL_121:

      v172 = v229;
      v173 = v226;
      v174 = v224;
      v175 = v220;
      if (*(v22 + 104))
      {
        [v229 updateChangeCount];
      }

      v61 = v175 + 1;

      v62 = &selRef_persistentStoreForIdentifier_;
      if (v61 == v245)
      {
        goto LABEL_31;
      }
    }
  }

  v251[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v35 = (v240 & 0xC000000000000001);
    v247 = (v240 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v51 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_130;
      }

      v52 = v243;
      if (v35)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= v247[2])
        {
          __break(1u);
LABEL_135:

          return;
        }

        v53 = *(v240 + 8 * v22 + 32);
      }

      v54 = v53;
      sub_1005E3810([v53 remObjectID], &qword_100942E50, off_1008D41E0);
      v243 = v52;
      if (v52)
      {

        return;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v50 = *(v251[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v22;
      if (v51 == v48)
      {
        v50 = v251[0];
        v19 = v242;
        v49 = v243;
        v47 = v239;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100646548(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v210 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v206 = &v210;
  v10 = sub_1003DFDD8(sub_1006AC110, &v205, a1);
  if (v4)
  {
    return;
  }

  v198 = v10;
  v194 = a1;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);
  v13 = v198;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v204 = v15;
  v192 = a3;
  v193 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v217 = v9;
    v17 = v16;
    v207[0] = swift_slowAlloc();
    *v17 = 136446978;
    *(v17 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v207);
    *(v17 + 12) = 2048;
    *(v17 + 14) = v198[2];

    *(v17 + 22) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v18 = [swift_getObjCClassFromMetadata() description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000668C(v19, v21, v207);

    *(v17 + 24) = v22;
    *(v17 + 32) = 2082;
    *(v17 + 34) = sub_10000668C(v217, v8, v207);
    _os_log_impl(&_mh_execute_header, v14, v204, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v200 = v198[2];
  if (!v200)
  {
LABEL_30:

    return;
  }

  v23 = 0;
  v209 = _swiftEmptySetSingleton;
  v199 = v198 + 4;
  v196 = (a2 + 16);
  v197 = (a2 + 24);
  v24 = &unk_100939D60;
  v25 = &unk_1007959E0;
  do
  {
    if (v23 >= v13[2])
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:

      v160 = v24;

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = v25;
        v164 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v164 = 136446722;
        *(v164 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v208);
        *(v164 + 12) = 2082;
        v165 = *(v163 + 40);
        v211 = *(v163 + 24);
        v212[0] = v165;
        *(v212 + 14) = *(v163 + 54);
        sub_100009DAC(&v211, v207);
        v166 = sub_1000063E8();
        v168 = v167;
        sub_1005812D4(&v211);
        v169 = sub_10000668C(v166, v168, &v208);

        *(v164 + 14) = v169;
        *(v164 + 22) = 2080;
        v170 = [v160 description];
        v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = v172;

        v174 = v171;
        v13 = v185;
        v175 = sub_10000668C(v174, v173, &v208);

        *(v164 + 24) = v175;
        _os_log_impl(&_mh_execute_header, v161, v162, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v164, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v160];
      swift_willThrow();

      return;
    }

    v26 = &v199[2 * v23];
    v27 = v26[1];
    v28 = v27[2];
    if (v28)
    {
      v217 = v23;
      v201 = *v26;

      v29 = 32;
      do
      {
        v30 = *(v27 + v29);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v31 = swift_allocObject();
        v32 = v31;
        *(v31 + 16) = xmmword_1007953F0;
        if (v30)
        {
          v33 = (a2 + 24);
        }

        else
        {
          v33 = (a2 + 16);
        }

        v34 = *v33;
        *(v31 + 32) = v34;
        v35 = v34;
        sub_100392144(v32);

        ++v29;
        --v28;
      }

      while (v28);

      v13 = v198;
      v23 = v217;
    }

    ++v23;
  }

  while (v23 != v200);
  if (v194 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_32:
    v41 = sub_1005E2514(v209);

    v189 = sub_10065F214(v41, v192);

    v25 = v193;
    v187 = sub_100667998(v40, v192);

    swift_beginAccess();
    v42 = 0;
    v43 = v189;
    while (1)
    {
      if (v42 >= v198[2])
      {
        goto LABEL_136;
      }

      v179 = v42;
      v44 = &v199[2 * v42];
      v45 = v44[1];
      v13 = *v44;

      v24 = sub_1005E3810([v13 remObjectID], &qword_10094F150, off_1008D4178);

      v46 = v192[6];
      v188 = v45;
      if ((v46 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v46 + 16))
      {
        v47 = v24;

        v50 = sub_10002B924(v47);
        if (v51)
        {
          v49 = *(*(v46 + 56) + 8 * v50);
LABEL_40:

LABEL_42:
          v25 = v193;
          goto LABEL_43;
        }

LABEL_41:

        v49 = 0;
        goto LABEL_42;
      }

      v49 = 0;
LABEL_43:

      v185 = v13;
      if (!*(v187 + 16))
      {
        goto LABEL_125;
      }

      v52 = sub_100393C74(v24);
      if ((v53 & 1) == 0)
      {
        goto LABEL_125;
      }

      v54 = *(*(v187 + 56) + 8 * v52);
      v55 = v45;
      swift_bridgeObjectRetain_n();
      v56 = v24;
      v186 = v54;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      v182 = v56;
      if (os_log_type_enabled(v57, v58))
      {
        v202 = v58;
        v217 = v57;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v59 = 136446978;
        *(v59 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v208);
        *(v59 + 12) = 2082;
        v61 = *(v25 + 40);
        v215 = *(v25 + 24);
        v216[0] = v61;
        *(v216 + 14) = *(v25 + 54);
        sub_100009DAC(&v215, v207);
        v62 = sub_1000063E8();
        v64 = v63;
        sub_1005812D4(&v215);
        v65 = sub_10000668C(v62, v64, &v208);

        *(v59 + 14) = v65;
        *(v59 + 22) = 2114;
        *(v59 + 24) = v56;
        v190 = v60;
        *v60 = v56;
        *(v59 + 32) = 2082;
        v55 = v188;
        v66 = v188[2];
        if (v66)
        {
          v207[0] = _swiftEmptyArrayStorage;
          v67 = v56;
          sub_100026EF4(0, v66, 0);
          v68 = v207[0];
          v69 = *(v207[0] + 16);
          v70 = 16 * v69;
          v71 = 32;
          do
          {
            if (*(v188 + v71))
            {
              v72 = 0x44497473696CLL;
            }

            else
            {
              v72 = 0x49746E756F636361;
            }

            if (*(v188 + v71))
            {
              v73 = 0xE600000000000000;
            }

            else
            {
              v73 = 0xE900000000000044;
            }

            v207[0] = v68;
            v74 = *(v68 + 24);
            v75 = v69 + 1;
            if (v69 >= v74 >> 1)
            {
              sub_100026EF4((v74 > 1), v69 + 1, 1);
              v68 = v207[0];
            }

            *(v68 + 16) = v75;
            v76 = v68 + v70;
            *(v76 + 32) = v72;
            *(v76 + 40) = v73;
            v70 += 16;
            ++v71;
            v69 = v75;
            --v66;
          }

          while (v66);

          v25 = v193;
          v13 = v185;
          v43 = v189;
        }

        else
        {
          v77 = v56;
        }

        v78 = Array.description.getter();
        v80 = v79;

        v81 = sub_10000668C(v78, v80, &v208);

        *(v59 + 34) = v81;
        v82 = v217;
        _os_log_impl(&_mh_execute_header, v217, v202, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v59, 0x2Au);
        sub_1000050A4(v190, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v83 = v197;
      v180 = v55[2];
      if (v180)
      {
        v84 = 0;
        v181 = v55 + 4;
        while (1)
        {
          if (v84 >= v55[2])
          {
            goto LABEL_135;
          }

          v183 = v84;
          v85 = *(v181 + v84);
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v86 = swift_allocObject();
          v87 = v86;
          *(v86 + 16) = xmmword_1007953F0;
          v184 = v85;
          v88 = v196;
          if (v85)
          {
            v88 = v83;
          }

          v89 = *v88;
          *(v86 + 32) = v89;
          v203 = v86 + 32;
          v90 = v89;
          v217 = (v87 & 0xFFFFFFFFFFFFFF8);
          v191 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v191)
          {
            break;
          }

          v92 = _swiftEmptyDictionarySingleton;
LABEL_111:

          sub_10045BDE8(v92);
          v136 = v135;

          if (v184)
          {
            sub_10068932C(1, *v197, v136, &type metadata for REMCalDAVNotificationCDIngestor.RelationshipKey, off_1008D41A8, &unk_100938880);
            v55 = v188;
            v138 = &selRef_setOwner_;
          }

          else
          {
            sub_10068932C(0, *v196, v136, &type metadata for REMCalDAVNotificationCDIngestor.RelationshipKey, off_1008D4120, &qword_1009399F0);
            v55 = v188;
            v138 = &selRef_setAccount_;
          }

          v139 = v137;

          [v186 *v138];

          v84 = v183 + 1;
          v13 = v185;
          v83 = v197;
          v43 = v189;
          if (v183 + 1 == v180)
          {
            goto LABEL_115;
          }
        }

        v91 = 0;
        v195 = v87 & 0xC000000000000001;
        v92 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v195)
          {
            v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v91 >= v217[2].isa)
            {
              goto LABEL_131;
            }

            v95 = *(v203 + 8 * v91);
          }

          v96 = *(v43 + 16);
          v97 = v95;
          v98 = v97;
          if (!v96 || (v99 = sub_100393C74(v97), (v100 & 1) == 0))
          {

            v140 = v98;
            v141 = Logger.logObject.getter();
            v142 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v141, v142))
            {
              v143 = v25;
              v144 = swift_slowAlloc();
              v208 = swift_slowAlloc();
              *v144 = 136446978;
              *(v144 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v208);
              *(v144 + 12) = 2082;
              v145 = *(v143 + 40);
              v213 = *(v143 + 24);
              v214[0] = v145;
              *(v214 + 14) = *(v143 + 54);
              sub_100009DAC(&v213, v207);
              v146 = sub_1000063E8();
              v148 = v147;
              sub_1005812D4(&v213);
              v149 = sub_10000668C(v146, v148, &v208);

              *(v144 + 14) = v149;
              *(v144 + 22) = 2080;
              v150 = [v140 description];
              v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v153 = v152;

              v154 = sub_10000668C(v151, v153, &v208);

              *(v144 + 24) = v154;
              *(v144 + 32) = 2080;
              v155 = [v140 description];
              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v158 = v157;

              v159 = sub_10000668C(v156, v158, &v208);

              *(v144 + 34) = v159;
              _os_log_impl(&_mh_execute_header, v141, v142, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v144, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v140];
            swift_willThrow();

            return;
          }

          v101 = *(*(v43 + 56) + 8 * v99);
          if ((v92 & 0xC000000000000001) != 0)
          {
            if (v92 < 0)
            {
              v102 = v92;
            }

            else
            {
              v102 = v92 & 0xFFFFFFFFFFFFFF8;
            }

            v103 = v101;
            v104 = __CocoaDictionary.count.getter();
            if (__OFADD__(v104, 1))
            {
              goto LABEL_133;
            }

            v105 = v101;
            v106 = sub_10021D008(v102, v104 + 1);
          }

          else
          {
            v105 = *(*(v43 + 56) + 8 * v99);
            v107 = v101;
            v106 = v92;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v207[0] = v106;
          v110 = sub_10002B924(v98);
          v111 = *(v106 + 16);
          v112 = (v109 & 1) == 0;
          v113 = v111 + v112;
          if (__OFADD__(v111, v112))
          {
            goto LABEL_132;
          }

          v114 = v109;
          if (*(v106 + 24) >= v113)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v92 = v106;
              if ((v109 & 1) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_68;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v120 = static _DictionaryStorage.copy(original:)();
            v92 = v120;
            if (*(v106 + 16))
            {
              v121 = (v120 + 64);
              __src = (v106 + 64);
              v122 = ((1 << *(v92 + 32)) + 63) >> 6;
              if (v92 != v106 || v121 >= &__src[8 * v122])
              {
                memmove(v121, __src, 8 * v122);
              }

              v123 = 0;
              *(v92 + 16) = *(v106 + 16);
              v124 = 1 << *(v106 + 32);
              if (v124 < 64)
              {
                v125 = ~(-1 << v124);
              }

              else
              {
                v125 = -1;
              }

              v176 = (v124 + 63) >> 6;
              v126 = v125 & *(v106 + 64);
              if (v126)
              {
                do
                {
                  v127 = __clz(__rbit64(v126));
                  v178 = (v126 - 1) & v126;
LABEL_106:
                  v130 = v127 | (v123 << 6);
                  v131 = *(*(v106 + 48) + 8 * v130);
                  v132 = *(*(v106 + 56) + 8 * v130);
                  *(*(v92 + 48) + 8 * v130) = v131;
                  *(*(v92 + 56) + 8 * v130) = v132;
                  v133 = v131;
                  v134 = v132;
                  v126 = v178;
                }

                while (v178);
              }

              v128 = v123;
              while (1)
              {
                v123 = v128 + 1;
                if (__OFADD__(v128, 1))
                {
                  goto LABEL_137;
                }

                if (v123 >= v176)
                {
                  break;
                }

                v129 = *&__src[8 * v123];
                ++v128;
                if (v129)
                {
                  v127 = __clz(__rbit64(v129));
                  v178 = (v129 - 1) & v129;
                  goto LABEL_106;
                }
              }
            }

            v43 = v189;
            if (v114)
            {
              goto LABEL_68;
            }

LABEL_89:
            *(v92 + 8 * (v110 >> 6) + 64) |= 1 << v110;
            *(*(v92 + 48) + 8 * v110) = v98;
            *(*(v92 + 56) + 8 * v110) = v105;

            v117 = *(v92 + 16);
            v118 = __OFADD__(v117, 1);
            v119 = v117 + 1;
            if (v118)
            {
              goto LABEL_134;
            }

            *(v92 + 16) = v119;
          }

          else
          {
            sub_10036CABC(v113, isUniquelyReferenced_nonNull_native);
            v92 = v207[0];
            v115 = sub_10002B924(v98);
            if ((v114 & 1) != (v116 & 1))
            {
              goto LABEL_138;
            }

            v110 = v115;
            if ((v114 & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_68:

            v93 = *(v92 + 56);
            v94 = *(v93 + 8 * v110);
            *(v93 + 8 * v110) = v105;
          }

          v25 = v193;
          v91 = (v91 + 1);
          if (v91 == v191)
          {
            goto LABEL_111;
          }

          continue;
        }
      }

LABEL_115:

      if (*(v25 + 104))
      {
        [v186 updateChangeCount];
      }

      v42 = v179 + 1;

      if ((v179 + 1) == v200)
      {

        goto LABEL_30;
      }
    }

    v47 = v24;

    v48 = __CocoaDictionary.lookup(_:)();
    if (v48)
    {
      v208 = v48;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v49 = v207[0];
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v207[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v13 = (v194 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v36 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_124;
      }

      if ((v194 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v37 = *(v194 + 8 * v25 + 32);
      }

      v38 = v37;
      sub_1005E3810([v37 remObjectID], &qword_10094F150, off_1008D4178);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = *(v207[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v25;
      if (v36 == v24)
      {
        v40 = v207[0];
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100647A80(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = a2;
  v186 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v182 = &v186;
  v10 = sub_1003E054C(sub_1006AFDFC, v181, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v171 = a1;
  v169 = a3;
  v12 = v3;
  v13 = "establishRelationships";
  if (qword_100936008 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v14 = v13 - 4;
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945730);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v170 = v12;
    v173 = v6;
    v174 = v11;
    v168 = v14;
    if (os_log_type_enabled(v16, v17))
    {
      v180 = v9;
      v18 = swift_slowAlloc();
      v183[0] = swift_slowAlloc();
      *v18 = 136446978;
      *(v18 + 4) = sub_10000668C(0xD000000000000016, v14 | 0x8000000000000000, v183);
      *(v18 + 12) = 2048;
      *(v18 + 14) = *(v11 + 16);

      *(v18 + 22) = 2082;
      type metadata accessor for REMCDDueDateDeltaAlert();
      v19 = [swift_getObjCClassFromMetadata() description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v11 = v174;
      v23 = sub_10000668C(v20, v22, v183);

      *(v18 + 24) = v23;
      *(v18 + 32) = 2082;
      *(v18 + 34) = sub_10000668C(v180, v8, v183);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v18, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v177 = *(v11 + 16);
    if (!v177)
    {
      goto LABEL_28;
    }

    v185 = _swiftEmptySetSingleton;
    v176 = v11 + 32;

    for (i = 0; i != v177; ++i)
    {
      if (i >= *(v11 + 16))
      {
        __break(1u);

        goto LABEL_28;
      }

      v25 = v176 + 16 * i;
      v26 = *(v25 + 8);
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v173 + 16);
        v178 = *v25;
        v193 = v26;

        do
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007953F0;
          *(inited + 32) = v28;
          v30 = v28;
          sub_100392144(inited);
          swift_setDeallocating();
          v31 = *(inited + 16);
          swift_arrayDestroy();
          --v27;
        }

        while (v27);

        v11 = v174;
      }
    }

    if (v171 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      v35 = _swiftEmptyArrayStorage;
      goto LABEL_27;
    }

    v183[0] = _swiftEmptyArrayStorage;
    v13 = v183;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    v6 = 0;
    v11 = v171 & 0xC000000000000001;
    v12 = v171 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_104:

        v140 = v6;

        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          *v143 = 136446722;
          *(v143 + 4) = sub_10000668C(0xD000000000000016, v168 | 0x8000000000000000, &v184);
          *(v143 + 12) = 2082;
          v144 = *(v170 + 40);
          v187 = *(v170 + 24);
          v188[0] = v144;
          *(v188 + 14) = *(v170 + 54);
          sub_100009DAC(&v187, v183);
          v145 = sub_1000063E8();
          v147 = v146;
          sub_1005812D4(&v187);
          v148 = sub_10000668C(v145, v147, &v184);

          *(v143 + 14) = v148;
          *(v143 + 22) = 2080;
          v149 = [v140 description];
          v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v152 = v151;

          v153 = sub_10000668C(v150, v152, &v184);

          *(v143 + 24) = v153;
          _os_log_impl(&_mh_execute_header, v141, v142, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v143, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v140];
        swift_willThrow();

        return;
      }

      if (!v11)
      {
        break;
      }

      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
      v33 = v32;
      sub_1005E60F0([v32 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = *(v183[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v183;
      specialized ContiguousArray._endMutation()();
      ++v6;
      if (v9 == v8)
      {
        v35 = v183[0];
        v11 = v174;
LABEL_27:
        v36 = sub_1005E2514(v185);

        v37 = sub_10065F214(v36, v169);

        v161 = sub_100668268(v35, v169);

        swift_beginAccess();
        v38 = 0;
        v39 = _swiftEmptyDictionarySingleton;
        if (_swiftEmptyDictionarySingleton >= 0)
        {
          v39 = (_swiftEmptyDictionarySingleton & 0xFFFFFFFFFFFFFF8);
        }

        v165 = v37;
        v162 = v39;
        while (2)
        {
          if (v38 >= *(v11 + 16))
          {
            goto LABEL_116;
          }

          v157 = v38;
          v40 = v176 + 16 * v38;
          v41 = *(v40 + 8);
          v42 = *v40;

          v6 = sub_1005E60F0([v42 remObjectID]);

          v43 = v169[6];
          v172 = v41;
          v160 = v42;
          if ((v43 & 0xC000000000000001) != 0)
          {
            v44 = v6;

            v45 = __CocoaDictionary.lookup(_:)();
            if (v45)
            {
              v184 = v45;
              sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
              swift_dynamicCast();
              v46 = v183[0];
              goto LABEL_40;
            }

LABEL_41:

LABEL_42:
            v46 = 0;
          }

          else
          {
            if (!*(v43 + 16))
            {
              goto LABEL_42;
            }

            v44 = v6;

            v47 = sub_10002B924(v44);
            if ((v48 & 1) == 0)
            {
              goto LABEL_41;
            }

            v46 = *(*(v43 + 56) + 8 * v47);
LABEL_40:
          }

          if (!*(v161 + 16))
          {
            goto LABEL_104;
          }

          v49 = sub_100393C74(v6);
          if ((v50 & 1) == 0)
          {
            goto LABEL_104;
          }

          v51 = *(*(v161 + 56) + 8 * v49);
          v52 = v41;
          swift_bridgeObjectRetain_n();
          v53 = v6;
          v167 = v51;

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          v159 = v53;
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            *v56 = 136446978;
            *(v56 + 4) = sub_10000668C(0xD000000000000016, v168 | 0x8000000000000000, &v184);
            *(v56 + 12) = 2082;
            v58 = *(v170 + 40);
            v191 = *(v170 + 24);
            v192[0] = v58;
            *(v192 + 14) = *(v170 + 54);
            sub_100009DAC(&v191, v183);
            v59 = sub_1000063E8();
            v61 = v60;
            sub_1005812D4(&v191);
            v62 = sub_10000668C(v59, v61, &v184);

            *(v56 + 14) = v62;
            *(v56 + 22) = 2114;
            *(v56 + 24) = v53;
            v193 = v57;
            *v57 = v53;
            *(v56 + 32) = 2082;
            v63 = *(v172 + 16);
            if (v63)
            {
              v183[0] = _swiftEmptyArrayStorage;
              v64 = v53;
              sub_100026EF4(0, v63, 0);
              v65 = v183[0];
              v66 = *(v183[0] + 16);
              v67 = 16 * v66;
              do
              {
                v183[0] = v65;
                v68 = *(v65 + 24);
                v69 = v66 + 1;
                if (v66 >= v68 >> 1)
                {
                  sub_100026EF4((v68 > 1), v66 + 1, 1);
                  v65 = v183[0];
                }

                *(v65 + 16) = v69;
                v70 = v65 + v67;
                *(v70 + 32) = 0x49746E756F636361;
                *(v70 + 40) = 0xE900000000000044;
                v67 += 16;
                v66 = v69;
                --v63;
              }

              while (v63);
              v52 = v172;
            }

            else
            {
              v71 = v53;
            }

            v72 = Array.description.getter();
            v74 = v73;

            v75 = sub_10000668C(v72, v74, &v184);

            *(v56 + 34) = v75;
            _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v56, 0x2Au);
            sub_1000050A4(v193, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v11 = v174;
            v37 = v165;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v163 = *(v52 + 16);
          if (v163)
          {
            v76 = 0;
            v164 = *(v173 + 16);
            while (1)
            {
              if (v76 >= *(v52 + 16))
              {
                goto LABEL_111;
              }

              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              v77 = swift_initStackObject();
              *(v77 + 16) = xmmword_1007953F0;
              *(v77 + 32) = v164;
              v78 = v164;
              v79 = v78;
              if ((v77 & 0xC000000000000001) != 0)
              {
                v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_112;
                }

                v80 = v78;
              }

              v81 = *(v37 + 16);
              v82 = v80;
              v83 = v82;
              if (!v81 || (v84 = sub_100393C74(v82), (v85 & 1) == 0))
              {

                v121 = v83;
                v122 = Logger.logObject.getter();
                v123 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v122, v123))
                {
                  v124 = swift_slowAlloc();
                  v184 = swift_slowAlloc();
                  *v124 = 136446978;
                  *(v124 + 4) = sub_10000668C(0xD000000000000016, v168 | 0x8000000000000000, &v184);
                  *(v124 + 12) = 2082;
                  v125 = *(v170 + 40);
                  v189 = *(v170 + 24);
                  v190[0] = v125;
                  *(v190 + 14) = *(v170 + 54);
                  sub_100009DAC(&v189, v183);
                  v126 = sub_1000063E8();
                  v128 = v127;
                  sub_1005812D4(&v189);
                  v129 = sub_10000668C(v126, v128, &v184);

                  *(v124 + 14) = v129;
                  *(v124 + 22) = 2080;
                  v130 = [v121 description];
                  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v132;

                  v134 = sub_10000668C(v131, v133, &v184);

                  *(v124 + 24) = v134;
                  *(v124 + 32) = 2080;
                  v135 = [v121 description];
                  v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v138 = v137;

                  v139 = sub_10000668C(v136, v138, &v184);

                  *(v124 + 34) = v139;
                  _os_log_impl(&_mh_execute_header, v122, v123, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v124, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v121];
                swift_willThrow();

                return;
              }

              v86 = *(*(v37 + 56) + 8 * v84);
              v87 = _swiftEmptyDictionarySingleton;
              if (_swiftEmptyDictionarySingleton >> 62)
              {
                v88 = __CocoaDictionary.count.getter();
                if (__OFADD__(v88, 1))
                {
                  goto LABEL_114;
                }

                v87 = sub_10021D008(v162, v88 + 1);
              }

              v179 = v79;
              v193 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v183[0] = v87;
              v91 = sub_10002B924(v83);
              v92 = v87[2];
              v93 = (v90 & 1) == 0;
              v94 = v92 + v93;
              if (__OFADD__(v92, v93))
              {
                goto LABEL_113;
              }

              v95 = v90;
              if (v87[3] >= v94)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v96 = v87;
                  v52 = v172;
                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_1000F5104(&qword_10093D598, &unk_10079B210);
                  v101 = static _DictionaryStorage.copy(original:)();
                  v96 = v101;
                  if (v87[2])
                  {
                    v102 = (v101 + 64);
                    __src = (v87 + 8);
                    v103 = ((1 << *(v96 + 32)) + 63) >> 6;
                    if (v96 != v87 || v102 >= &__src[8 * v103])
                    {
                      memmove(v102, __src, 8 * v103);
                    }

                    v104 = 0;
                    *(v96 + 16) = v87[2];
                    v105 = 1 << *(v87 + 32);
                    if (v105 < 64)
                    {
                      v106 = ~(-1 << v105);
                    }

                    else
                    {
                      v106 = -1;
                    }

                    v156 = v106 & v87[8];
                    for (j = (v105 + 63) >> 6; v156; v113 = v175)
                    {
                      v107 = __clz(__rbit64(v156));
                      v156 &= v156 - 1;
LABEL_89:
                      v110 = v107 | (v104 << 6);
                      v111 = *(v87[6] + 8 * v110);
                      v175 = *(v87[7] + 8 * v110);
                      *(*(v96 + 48) + 8 * v110) = v111;
                      *(*(v96 + 56) + 8 * v110) = v175;
                      v112 = v111;
                    }

                    v108 = v104;
                    while (1)
                    {
                      v104 = v108 + 1;
                      if (__OFADD__(v108, 1))
                      {
                        goto LABEL_117;
                      }

                      if (v104 >= j)
                      {
                        break;
                      }

                      v109 = *&__src[8 * v104];
                      ++v108;
                      if (v109)
                      {
                        v107 = __clz(__rbit64(v109));
                        v156 = (v109 - 1) & v109;
                        goto LABEL_89;
                      }
                    }
                  }

                  v52 = v172;
                  if ((v95 & 1) == 0)
                  {
LABEL_92:
                    *(v96 + 8 * (v91 >> 6) + 64) |= 1 << v91;
                    *(*(v96 + 48) + 8 * v91) = v83;
                    *(*(v96 + 56) + 8 * v91) = v86;

                    v114 = *(v96 + 16);
                    v115 = __OFADD__(v114, 1);
                    v116 = v114 + 1;
                    if (v115)
                    {
                      goto LABEL_115;
                    }

                    *(v96 + 16) = v116;
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                sub_10036CABC(v94, isUniquelyReferenced_nonNull_native);
                v96 = v183[0];
                v97 = sub_10002B924(v83);
                if ((v95 & 1) != (v98 & 1))
                {
                  goto LABEL_118;
                }

                v91 = v97;
                v52 = v172;
                if ((v95 & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              v99 = *(v96 + 56);
              v100 = *(v99 + 8 * v91);
              *(v99 + 8 * v91) = v86;

LABEL_94:
              v37 = v165;

              sub_10045BDE8(v96);
              v118 = v117;

              sub_10068AC14(v179, v118);
              ++v76;
              v120 = v119;

              [v167 setAccount:v120];

              if (v76 == v163)
              {

                v11 = v174;
                goto LABEL_97;
              }
            }
          }

LABEL_97:
          v38 = v157 + 1;
          if (v157 + 1 != v177)
          {
            continue;
          }

          break;
        }

LABEL_28:

        return;
      }
    }

    if (v6 < *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v171 + 8 * v6 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_108:
    swift_once();
  }

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
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}