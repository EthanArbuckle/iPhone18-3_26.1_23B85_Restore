void sub_1006236BC(unint64_t a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v263 = v237 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v237 - v11;
  v13 = type metadata accessor for UUID();
  v265 = *(v13 - 8);
  v14 = v265[8];
  __chkstk_darwin(v13);
  v16 = v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v237 - v18;
  v20 = a3[3];
  *&v266 = a3[2];
  v269 = v20;
  v264 = a3[4];
  v270 = v3;
  v21 = *(v3 + 72);
  v267 = a2;
  v272[3] = v21;
  v273 = a2;
  v272[2] = &v273;

  v22 = v271;
  v23 = sub_100759CB4(sub_1006B021C, v272, a1);
  if (v22)
  {
    return;
  }

  v271 = v23;
  v257 = v21;
  v258 = v19;
  v261 = v16;
  v259 = v13;
  v256 = v12;
  v262 = a3;
  v24 = 0;
  if (qword_100936008 != -1)
  {
LABEL_202:
    swift_once();
  }

  v255 = type metadata accessor for Logger();
  v25 = sub_100006654(v255, qword_100945730);
  v26 = v271;

  v27 = v269;

  v268 = v25;
  v28 = Logger.logObject.getter();
  LOBYTE(v29) = static os_log_type_t.info.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = (v26 >> 62);
  v32 = v270;
  if (!v30)
  {

    goto LABEL_8;
  }

  v12 = swift_slowAlloc();
  v254 = swift_slowAlloc();
  v273 = v254;
  *v12 = 136446978;
  *(v12 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
  *(v12 + 6) = 2048;
  if (v31)
  {
    goto LABEL_205;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v12 + 14) = i;

    *(v12 + 11) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v34 = [swift_getObjCClassFromMetadata() description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v26 = v271;
    v38 = sub_10000668C(v35, v37, &v273);

    *(v12 + 3) = v38;
    *(v12 + 16) = 2082;
    *(v12 + 34) = sub_10000668C(v266, v27, &v273);
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v12, 0x2Au);
    swift_arrayDestroy();

    v32 = v270;
LABEL_8:
    v39 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = _swiftEmptyArrayStorage;
    v260 = v31;
    if (!v39)
    {
      break;
    }

    v273 = _swiftEmptyArrayStorage;
    v28 = &v273;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v39 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v41 = v26;
      v42 = v26 & 0xC000000000000001;
      v269 = v41 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v12 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_200:

          return;
        }

        if (v42)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= *(v269 + 16))
          {
            __break(1u);
            goto LABEL_202;
          }

          v43 = *(v271 + 8 * v40 + 32);
        }

        v44 = v43;
        sub_1005E3810([v43 remObjectID], &qword_100942E50, off_1008D41E0);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v32 = v273[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v40 = v40 + 1;
        if (v12 == v39)
        {
          v29 = v273;
          v32 = v270;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_205:
    ;
  }

LABEL_20:
  v45 = v32[12];
  if (v45 > 1)
  {
    if ((v45 - 2) >= 3 && v45 != 4499 && v45 != 4599)
    {
      goto LABEL_209;
    }

    goto LABEL_26;
  }

  if (!v45)
  {
LABEL_26:
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v273 = v49;
      *v48 = 136315138;
      v50 = [objc_opt_self() cdEntityName];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v29;
      v54 = v53;

      v55 = sub_10000668C(v51, v54, &v273);
      v29 = v52;

      *(v48 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "Performing fetch during upsert {CDType: %s}", v48, 0xCu);
      sub_10000607C(v49);
    }

    v56 = v267;
    v57 = v261;
    v58 = v260;
    v59 = sub_1006670C8(v29, v262);
    goto LABEL_33;
  }

  if (v45 != 1)
  {
    goto LABEL_209;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v273 = v64;
    *v63 = 136315138;
    v65 = [objc_opt_self() cdEntityName];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v29;
    v69 = v68;

    v70 = sub_10000668C(v66, v69, &v273);
    v29 = v67;

    *(v63 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Skipping fetch during upsert {CDType: %s}", v63, 0xCu);
    sub_10000607C(v64);
  }

  v56 = v267;
  v57 = v261;
  v58 = v260;
  v59 = sub_100390560(_swiftEmptyArrayStorage);
LABEL_33:
  v71 = v59;
  v72 = v265;
  if (v58)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v253 = v29;
  if (!v73)
  {
    goto LABEL_190;
  }

  v74 = 0;
  v75 = v271 & 0xC000000000000001;
  v76 = v271 & 0xFFFFFFFFFFFFFF8;
  v77 = (v271 + 32);
  v251 = (v72 + 1);
  v248 = (v72 + 7);
  v247 = (v72 + 6);
  *&v60 = 136446978;
  v242 = v60;
  *&v60 = 136446210;
  v266 = v60;
  *&v60 = 136447490;
  v241 = v60;
  *&v60 = 136447234;
  v240 = v60;
  v254 = v71;
  v246 = v73;
  v245 = v271 & 0xC000000000000001;
  v244 = v271 & 0xFFFFFFFFFFFFFF8;
  v243 = (v271 + 32);
LABEL_38:
  if (v75)
  {
    v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v79 = __OFADD__(v74, 1);
    v80 = v74 + 1;
    if (!v79)
    {
      goto LABEL_41;
    }

    goto LABEL_189;
  }

  if (v74 >= *(v76 + 16))
  {
    __break(1u);
LABEL_207:
    swift_once();
LABEL_193:
    sub_100006654(v255, qword_100950D98);
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();
    v222 = os_log_type_enabled(v220, v221);
    v223 = v252;
    if (v222)
    {
      v224 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *v224 = 136446466;
      v225 = sub_100729CB0(4);
      v227 = sub_10000668C(v225, v226, &v273);

      *(v224 + 4) = v227;
      *(v224 + 12) = 2082;
      v228 = sub_100729CB0(v75);
      v230 = sub_10000668C(v228, v229, &v273);

      *(v224 + 14) = v230;
      _os_log_impl(&_mh_execute_header, v220, v221, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v224, 0x16u);
      swift_arrayDestroy();
    }

    v231 = objc_opt_self();
    v232 = String._bridgeToObjectiveC()();
    sub_100729CB0(4);
    v233 = String._bridgeToObjectiveC()();

    sub_100729CB0(v75);
    v234 = String._bridgeToObjectiveC()();

    [v231 unauthorizedErrorWithMissingEntitlement:v232 requestedAccessLevel:v233 currentAccesslevel:v234];

    swift_willThrow();

    return;
  }

  v78 = v77[v74];
  v79 = __OFADD__(v74, 1);
  v80 = v74 + 1;
  if (v79)
  {
LABEL_189:
    __break(1u);
LABEL_190:

    return;
  }

LABEL_41:
  v81 = v78;
  v265 = sub_1005E3810([v81 remObjectID], &qword_100942E50, off_1008D41E0);
  if (v24)
  {

    return;
  }

  v250 = v80;
  v269 = 0;
  v260 = v81;

  v82 = [v56[2] uuid];
  v83 = v258;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v252 = UUID.uuidString.getter();
  v85 = v84;
  v86 = *v251;
  v87 = v259;
  (*v251)(v83, v259);
  v88 = [objc_opt_self() localInternalAccountID];
  v89 = [v88 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = UUID.uuidString.getter();
  v92 = v91;
  v249 = v86;
  (v86)(v57, v87);
  if (v252 == v90 && v85 == v92)
  {

    v93 = v264;
    v94 = v257;
    goto LABEL_46;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v93 = v264;
  v94 = v257;
  if (v95)
  {
LABEL_46:
    v96 = *(v270 + 68) >> 14;
    if (v96 >= 2)
    {
      if (v96 == 2)
      {
        v97 = *(v270 + 64);
      }

      else
      {
        v97 = 0x7FFFFFFF;
      }
    }

    else
    {
      v97 = 2147483519;
    }

    v98 = v269;
    sub_100009A40(2, v97);
    v269 = v98;
    if (v98)
    {

      return;
    }
  }

  v99 = [v260 remObjectID];
  v100 = v99;
  if (*(v94 + 16))
  {
    sub_10002B924(v99);
  }

  v101 = sub_1005F6AB0(sub_10047B0C4, &qword_100942E50, off_1008D41E0);
  v102 = v254;
  if (v254[2])
  {
    v103 = sub_100393C74(v265);
    if (v104)
    {
      v105 = v103;

      v252 = *(v102[7] + 8 * v105);
      v106 = v270;
LABEL_130:
      v159 = 0;
      v160 = *(v106 + 64) | (*(v106 + 68) << 32);
      while (1)
      {
        if ((v160 & 0xC00000000004) == 0x800000000000)
        {
          v161 = *(&off_1008E1FA8 + v159 + 32);
          v162 = Logger.logObject.getter();
          v163 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v273 = v165;
            *v164 = v266;
            LOBYTE(v278) = v161;
            v166 = String.init<A>(describing:)();
            v168 = sub_10000668C(v166, v167, &v273);

            *(v164 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v162, v163, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v164, 0xCu);
            sub_10000607C(v165);
          }

          v106 = v270;
        }

        v75 = *(v106 + 64);
        if (*(v106 + 68) >> 14 == 2 && (*(v106 + 64) & 4) == 0)
        {
          break;
        }

        ++v159;
        v160 = v75 & 0xFFFF0000FFFFFFFFLL | (*(v106 + 68) << 32);
        if (v159 == 11)
        {
          swift_retain_n();
          v39 = v265;
          v40 = v252;
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v170, v171))
          {
            v239 = v171;
            v249 = v170;
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v238 = swift_slowAlloc();
            v278 = v238;
            *v172 = v241;
            *(v172 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v278);
            *(v172 + 12) = 2082;
            v174 = *(v106 + 40);
            v274 = *(v106 + 24);
            *v275 = v174;
            *&v275[14] = *(v106 + 54);
            sub_100009DAC(&v274, &v273);
            v175 = sub_1000063E8();
            v177 = v176;
            sub_1005812D4(&v274);
            v178 = sub_10000668C(v175, v177, &v278);

            *(v172 + 14) = v178;
            *(v172 + 22) = 2114;
            *(v172 + 24) = v39;
            *v173 = v39;
            *(v172 + 32) = 2112;
            v265 = v39;
            v179 = v39;
            v252 = v40;
            v180 = [v40 objectID];
            *(v172 + 34) = v180;
            v237[1] = v173;
            v173[1] = v180;
            *(v172 + 42) = 2082;
            v273 = _swiftEmptyArrayStorage;
            sub_100026EF4(0, 11, 0);
            v181 = 0;
            v182 = v273;
            do
            {
              v183 = *(&off_1008E1FA8 + v181 + 32);
              v184 = 0x654C737365636361;
              if (v183 == 9)
              {
                v184 = 0x737574617473;
              }

              v185 = 0xEB000000006C6576;
              if (v183 == 9)
              {
                v185 = 0xE600000000000000;
              }

              if (v183 == 8)
              {
                v184 = 0x73736572646461;
                v185 = 0xE700000000000000;
              }

              v186 = 0x66667553656D616ELL;
              if (v183 == 6)
              {
                v187 = 0xEA00000000007869;
              }

              else
              {
                v186 = 0x656D616E6B63696ELL;
                v187 = 0xE800000000000000;
              }

              if (v183 == 5)
              {
                v186 = 0x66657250656D616ELL;
                v187 = 0xEA00000000007869;
              }

              if (*(&off_1008E1FA8 + v181 + 32) <= 7u)
              {
                v184 = v186;
                v185 = v187;
              }

              v188 = 0x656D614E7473616CLL;
              if (v183 == 3)
              {
                v188 = 0x614E656C6464696DLL;
              }

              v189 = 0xEA0000000000656DLL;
              if (v183 != 3)
              {
                v189 = 0xE800000000000000;
              }

              if (v183 == 2)
              {
                v188 = 0x6D614E7473726966;
                v189 = 0xE900000000000065;
              }

              v190 = 0x4E79616C70736964;
              if (!*(&off_1008E1FA8 + v181 + 32))
              {
                v190 = 0x44497463656A626FLL;
              }

              v191 = 0xEB00000000656D61;
              if (!*(&off_1008E1FA8 + v181 + 32))
              {
                v191 = 0xE800000000000000;
              }

              if (*(&off_1008E1FA8 + v181 + 32) <= 1u)
              {
                v188 = v190;
                v189 = v191;
              }

              if (*(&off_1008E1FA8 + v181 + 32) <= 4u)
              {
                v192 = v188;
              }

              else
              {
                v192 = v184;
              }

              if (*(&off_1008E1FA8 + v181 + 32) <= 4u)
              {
                v193 = v189;
              }

              else
              {
                v193 = v185;
              }

              v273 = v182;
              v195 = v182[2];
              v194 = v182[3];
              if (v195 >= v194 >> 1)
              {
                sub_100026EF4((v194 > 1), v195 + 1, 1);
                v182 = v273;
              }

              ++v181;
              v182[2] = v195 + 1;
              v196 = &v182[2 * v195];
              v196[4] = v192;
              v196[5] = v193;
            }

            while (v181 != 11);
            v197 = Array.description.getter();
            v199 = v198;

            v200 = sub_10000668C(v197, v199, &v278);

            *(v172 + 44) = v200;
            *(v172 + 52) = 1024;
            v106 = v270;
            LODWORD(v200) = *(v270 + 104);

            *(v172 + 54) = v200;

            v201 = v249;
            _os_log_impl(&_mh_execute_header, v249, v239, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v172, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v202 = v269;
            v39 = v265;
            v40 = v252;
          }

          else
          {

            v202 = v269;
          }

          v32 = v260;
          sub_10047B95C(v260, v40, &off_1008E1FA8);
          if (v202)
          {
            goto LABEL_200;
          }

          v269 = 0;
          v203 = v40;
          v204 = [v203 changedValues];
          v205 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v206 = v262;
          swift_beginAccess();
          v207 = v39;

          v208 = v206[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v278 = v206[7];
          v206[7] = 0x8000000000000000;
          sub_1002C8688(v205, v207, isUniquelyReferenced_nonNull_native);

          v206[7] = v278;
          swift_endAccess();
          if (*(v106 + 104))
          {

            [v203 updateChangeCount];

            goto LABEL_183;
          }

          v210 = v207;

          v211 = Logger.logObject.getter();
          v212 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v211, v212))
          {
            v213 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v265 = swift_slowAlloc();
            v273 = v265;
            *v213 = v240;
            *(v213 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
            *(v213 + 12) = 1024;
            *(v213 + 14) = 0;

            *(v213 + 18) = 1024;
            *(v213 + 20) = 0;
            *(v213 + 24) = 2114;
            *(v213 + 26) = v210;
            v214 = v249;
            v249->isa = v210;
            *(v213 + 34) = 2082;
            v252 = v210;
            v215 = v269;
            sub_1005E2810(v205);
            v269 = v215;

            v216 = Array.description.getter();
            v218 = v217;

            v219 = sub_10000668C(v216, v218, &v273);

            *(v213 + 36) = v219;
            _os_log_impl(&_mh_execute_header, v211, v212, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v213, 0x2Cu);
            sub_1000050A4(v214, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

LABEL_183:
          }

          else
          {
          }

          v74 = v250;
          v24 = v269;
          v56 = v267;
          v57 = v261;
          v75 = v245;
          v76 = v244;
          v77 = v243;
          if (v250 != v246)
          {
            goto LABEL_38;
          }

          goto LABEL_190;
        }
      }

      if (qword_1009367A0 != -1)
      {
        goto LABEL_207;
      }

      goto LABEL_193;
    }
  }

  if (v101 == 11)
  {
LABEL_196:

    v235 = objc_opt_self();
    v236 = v265;
    [v235 noSuchObjectErrorWithObjectID:v265];
    swift_willThrow();

    return;
  }

  v107 = 0;
  while (1)
  {
    if (v107 == 11)
    {
      goto LABEL_196;
    }

    v109 = *(&off_1008E1FA8 + v107 + 32);
    if (v109 <= 4)
    {
      if (*(&off_1008E1FA8 + v107 + 32) > 1u)
      {
        if (v109 == 2)
        {
          v110 = 0x6D614E7473726966;
          v111 = 0xE900000000000065;
        }

        else if (v109 == 3)
        {
          v110 = 0x614E656C6464696DLL;
          v111 = 0xEA0000000000656DLL;
        }

        else
        {
          v111 = 0xE800000000000000;
          v110 = 0x656D614E7473616CLL;
        }

        goto LABEL_84;
      }

      if (!*(&off_1008E1FA8 + v107 + 32))
      {
        v111 = 0xE800000000000000;
        v110 = 0x44497463656A626FLL;
        goto LABEL_84;
      }

      v110 = 0x4E79616C70736964;
      v112 = 6647137;
LABEL_83:
      v111 = v112 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      goto LABEL_84;
    }

    if (*(&off_1008E1FA8 + v107 + 32) > 7u)
    {
      if (v109 == 8)
      {
        v111 = 0xE700000000000000;
        v110 = 0x73736572646461;
        goto LABEL_84;
      }

      if (v109 == 9)
      {
        v111 = 0xE600000000000000;
        v110 = 0x737574617473;
        goto LABEL_84;
      }

      v110 = 0x654C737365636361;
      v112 = 7103862;
      goto LABEL_83;
    }

    if (v109 == 5)
    {
      v110 = 0x66657250656D616ELL;
      goto LABEL_77;
    }

    if (v109 == 6)
    {
      v110 = 0x66667553656D616ELL;
LABEL_77:
      v111 = 0xEA00000000007869;
      goto LABEL_84;
    }

    v111 = 0xE800000000000000;
    v110 = 0x656D616E6B63696ELL;
LABEL_84:
    v113 = 0x654C737365636361;
    if (v101 == 9)
    {
      v113 = 0x737574617473;
    }

    v114 = 0xEB000000006C6576;
    if (v101 == 9)
    {
      v114 = 0xE600000000000000;
    }

    if (v101 == 8)
    {
      v113 = 0x73736572646461;
      v114 = 0xE700000000000000;
    }

    v115 = 0x66667553656D616ELL;
    if (v101 == 6)
    {
      v116 = 0xEA00000000007869;
    }

    else
    {
      v115 = 0x656D616E6B63696ELL;
      v116 = 0xE800000000000000;
    }

    if (v101 == 5)
    {
      v115 = 0x66657250656D616ELL;
      v116 = 0xEA00000000007869;
    }

    if (v101 <= 7u)
    {
      v113 = v115;
      v114 = v116;
    }

    v117 = 0x656D614E7473616CLL;
    if (v101 == 3)
    {
      v117 = 0x614E656C6464696DLL;
    }

    v118 = 0xEA0000000000656DLL;
    if (v101 != 3)
    {
      v118 = 0xE800000000000000;
    }

    if (v101 == 2)
    {
      v117 = 0x6D614E7473726966;
      v118 = 0xE900000000000065;
    }

    v119 = 0x4E79616C70736964;
    if (!v101)
    {
      v119 = 0x44497463656A626FLL;
    }

    v120 = 0xEB00000000656D61;
    if (!v101)
    {
      v120 = 0xE800000000000000;
    }

    if (v101 <= 1u)
    {
      v117 = v119;
      v118 = v120;
    }

    v121 = v101 <= 4u ? v117 : v113;
    v122 = v101 <= 4u ? v118 : v114;
    if (v110 == v121 && v111 == v122)
    {
      break;
    }

    v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v107;
    if (v108)
    {
      goto LABEL_118;
    }
  }

LABEL_118:

  v123 = *(v270 + 88);
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v125 = [ObjCClassFromMetadata entity];
  v126 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v125 insertIntoManagedObjectContext:v123];
  v127 = v93;
  v128 = v126;
  [v123 assignObject:v128 toPersistentStore:v127];

  v129 = v128;
  v130 = [v265 uuid];
  v131 = v256;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = v259;
  (*v248)(v131, 0, 1, v259);
  v133 = v263;
  sub_10018E470(v131, v263);
  isa = 0;
  if ((*v247)(v133, 1, v132) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v249)(v133, v132);
  }

  [v129 setIdentifier:isa];

  sub_1000050A4(v131, &unk_100939D90, "8\n\r");
  v106 = v270;

  v135 = v265;
  v136 = v129;
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.default.getter();

  v139 = os_log_type_enabled(v137, v138);
  v252 = v136;
  if (v139)
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v278 = v249;
    *v140 = v242;
    *(v140 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v278);
    *(v140 + 12) = 2082;
    v142 = *(v106 + 40);
    v276 = *(v106 + 24);
    *v277 = v142;
    *&v277[14] = *(v106 + 54);
    sub_100009DAC(&v276, &v273);
    v143 = sub_1000063E8();
    v145 = v144;
    sub_1005812D4(&v276);
    v146 = sub_10000668C(v143, v145, &v278);

    *(v140 + 14) = v146;
    *(v140 + 22) = 2114;
    *(v140 + 24) = v135;
    *v141 = v135;
    *(v140 + 32) = 2112;
    v147 = v135;
    v148 = [v136 objectID];
    *(v140 + 34) = v148;
    v141[1] = v148;
    _os_log_impl(&_mh_execute_header, v137, v138, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v140, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v149 = v262;
  swift_beginAccess();
  v150 = v149[6];
  if ((v150 & 0xC000000000000001) == 0)
  {
    v156 = v149[6];
    v157 = v135;
    v155 = v262;
    goto LABEL_129;
  }

  if (v150 < 0)
  {
    v151 = v149[6];
  }

  else
  {
    v151 = v150 & 0xFFFFFFFFFFFFFF8;
  }

  v152 = v135;
  v153 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v153, 1))
  {
    v154 = sub_10021CDBC(v151, v153 + 1);
    v155 = v262;
    v262[6] = v154;
LABEL_129:
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v155[6];
    sub_1002C8398(v252, v135, v158);
    v155[6] = v278;

    swift_endAccess();
    goto LABEL_130;
  }

  __break(1u);
LABEL_209:
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2);
  __break(1u);
}

void sub_10062586C(void *a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v263 = v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v236 - v11;
  v13 = type metadata accessor for UUID();
  v265 = *(v13 - 8);
  v14 = *(v265 + 64);
  __chkstk_darwin(v13);
  v16 = v236 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v236 - v18;
  v20 = a3[3];
  v266 = a3[2];
  v269 = v20;
  v264 = a3[4];
  v270 = v3;
  v21 = *(v3 + 72);
  v267 = a2;
  v272[3] = v21;
  v273 = a2;
  v272[2] = &v273;

  v22 = v271;
  v23 = sub_100759CB4(sub_1006B021C, v272, a1);
  if (v22)
  {
    return;
  }

  v271 = v23;
  v258 = v21;
  v260 = v19;
  v261 = v16;
  v259 = v13;
  v257 = v12;
  v262 = a3;
  v24 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_183;
  }

LABEL_3:
  v256 = type metadata accessor for Logger();
  v25 = sub_100006654(v256, qword_100945730);
  v26 = v271;

  v27 = v269;

  v268 = v25;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v26 >> 62;
  v32 = v270;
  if (v30)
  {
    v32 = swift_slowAlloc();
    *&v255 = swift_slowAlloc();
    v273 = v255;
    *v32 = 136446978;
    *(v32 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
    *(v32 + 12) = 2048;
    if (!v31)
    {
      v33 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_186;
  }

  while (1)
  {
    v39 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = _swiftEmptyArrayStorage;
    if (!v39)
    {
      break;
    }

    *&v255 = v31;
    v273 = _swiftEmptyArrayStorage;
    v28 = &v273;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v39 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v41 = v26;
      v42 = v26 & 0xC000000000000001;
      v269 = v41 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_181:

          goto LABEL_175;
        }

        if (v42)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= *(v269 + 16))
          {
            __break(1u);
LABEL_183:
            swift_once();
            goto LABEL_3;
          }

          v44 = *(v271 + 8 * v40 + 32);
        }

        v45 = v44;
        sub_1005E3810([v44 remObjectID], &qword_10094F150, off_1008D4178);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = v273[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v40;
        if (v43 == v39)
        {
          v266 = v273;
          v32 = v270;
          v31 = v255;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_186:
    v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v32 + 14) = v33;

    *(v32 + 22) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v34 = [swift_getObjCClassFromMetadata() description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v26 = v271;
    v38 = sub_10000668C(v35, v37, &v273);

    *(v32 + 24) = v38;
    *(v32 + 32) = 2082;
    *(v32 + 34) = sub_10000668C(v266, v27, &v273);
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
    a1 = v255;
    swift_arrayDestroy();

    v32 = v270;
  }

  v266 = _swiftEmptyArrayStorage;
LABEL_21:
  v46 = *(v32 + 96);
  v47 = v31;
  if (v46 > 1)
  {
    if ((v46 - 2) >= 3 && v46 != 4499 && v46 != 4599)
    {
LABEL_190:
      sub_1001F67C8(_swiftEmptyArrayStorage);
      sub_1001F67C8(_swiftEmptyArrayStorage);
      sub_10054573C("unknown mode", 12, 2);
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  if (!v46)
  {
LABEL_27:
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v273 = v51;
      *v50 = 136315138;
      v52 = [objc_opt_self() cdEntityName];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_10000668C(v53, v55, &v273);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Performing fetch during upsert {CDType: %s}", v50, 0xCu);
      sub_10000607C(v51);
    }

    v57 = v267;
    v58 = v261;
    v59 = sub_100667998(v266, v262);
    v61 = 0;
    goto LABEL_34;
  }

  if (v46 != 1)
  {
    goto LABEL_190;
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v273 = v65;
    *v64 = 136315138;
    v66 = [objc_opt_self() cdEntityName];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = sub_10000668C(v67, v69, &v273);

    *(v64 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "Skipping fetch during upsert {CDType: %s}", v64, 0xCu);
    sub_10000607C(v65);
  }

  v61 = 0;
  v57 = v267;
  v58 = v261;
  v59 = sub_100390574(_swiftEmptyArrayStorage);
LABEL_34:
  v71 = v59;
  v72 = v260;
  if (v47)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v73)
  {
    goto LABEL_170;
  }

  v74 = 0;
  v75 = v271 & 0xC000000000000001;
  v76 = v271 & 0xFFFFFFFFFFFFFF8;
  v77 = (v271 + 32);
  v251 = (v265 + 8);
  v269 = 0x80000001007EA030;
  v247 = (v265 + 56);
  v246 = (v265 + 48);
  *&v60 = 136446978;
  v241 = v60;
  *&v60 = 136446210;
  v255 = v60;
  *&v60 = 136447490;
  v240 = v60;
  *&v60 = 136447234;
  v239 = v60;
  v252 = v71;
  v245 = v73;
  v244 = v271 & 0xC000000000000001;
  v243 = v271 & 0xFFFFFFFFFFFFFF8;
  v242 = (v271 + 32);
  v250 = 0x80000001007EA050;
LABEL_39:
  if (v75)
  {
    v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v79 = __OFADD__(v74, 1);
    v80 = v74 + 1;
    if (!v79)
    {
      goto LABEL_42;
    }

    goto LABEL_169;
  }

  if (v74 >= *(v76 + 16))
  {
    __break(1u);
LABEL_188:
    swift_once();
LABEL_172:
    sub_100006654(v256, qword_100950D98);
    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *v223 = 136446466;
      v224 = sub_100729CB0(4);
      v226 = sub_10000668C(v224, v225, &v273);

      *(v223 + 4) = v226;
      *(v223 + 12) = 2082;
      v227 = sub_100729CB0(v75);
      v229 = sub_10000668C(v227, v228, &v273);

      *(v223 + 14) = v229;
      _os_log_impl(&_mh_execute_header, v221, v222, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v223, 0x16u);
      swift_arrayDestroy();
    }

    v230 = objc_opt_self();
    v231 = String._bridgeToObjectiveC()();
    sub_100729CB0(4);
    v232 = String._bridgeToObjectiveC()();

    sub_100729CB0(v75);
    v233 = String._bridgeToObjectiveC()();

    [v230 unauthorizedErrorWithMissingEntitlement:v231 requestedAccessLevel:v232 currentAccesslevel:v233];

    swift_willThrow();

    goto LABEL_175;
  }

  v78 = v77[v74];
  v79 = __OFADD__(v74, 1);
  v80 = v74 + 1;
  if (v79)
  {
LABEL_169:
    __break(1u);
LABEL_170:

LABEL_175:

    return;
  }

LABEL_42:
  v81 = v78;
  v254 = sub_1005E3810([v81 remObjectID], &qword_10094F150, off_1008D4178);
  if (v61)
  {

    return;
  }

  v248 = v80;
  v265 = 0;
  v253 = v81;

  v82 = [v57[2] uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = UUID.uuidString.getter();
  v85 = v84;
  v86 = *v251;
  v87 = v72;
  v88 = v259;
  (*v251)(v87, v259);
  v89 = [objc_opt_self() localInternalAccountID];
  v90 = [v89 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  v86(v58, v88);
  if (v83 == v91 && v85 == v93)
  {

    v94 = v264;
    goto LABEL_47;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v94 = v264;
  if (v95)
  {
LABEL_47:
    v96 = *(v270 + 68);
    v97 = v258;
    v98 = v250;
    if (v96 >> 14 >= 2)
    {
      if (v96 >> 14 == 2)
      {
        v99 = *(v270 + 64);
      }

      else
      {
        v99 = 0x7FFFFFFF;
      }
    }

    else
    {
      v99 = 2147483519;
    }

    v100 = v265;
    sub_100009A40(2, v99);
    v265 = v100;
    if (v100)
    {

      return;
    }

    goto LABEL_54;
  }

  v97 = v258;
  v98 = v250;
LABEL_54:
  v101 = [v253 remObjectID];
  v102 = v101;
  if (*(v97 + 16))
  {
    sub_10002B924(v101);
  }

  v103._rawValue = &off_1008E0F30;
  v104 = sub_1005F7674(v103, &qword_10094F150, off_1008D4178);
  v105 = v252;
  if (*(v252 + 16))
  {
    v106 = sub_100393C74(v254);
    if (v107)
    {
      v108 = v106;

      v249 = *(*(v105 + 56) + 8 * v108);
      v109 = v270;
LABEL_119:
      v160 = 0;
      v161 = *(v109 + 64) | (*(v109 + 68) << 32);
      while (1)
      {
        if ((v161 & 0xC00000000004) == 0x800000000000)
        {
          v162 = *(&off_1008E2000 + v160 + 32);
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v273 = v166;
            *v165 = v255;
            LOBYTE(v278) = v162;
            v167 = String.init<A>(describing:)();
            v169 = sub_10000668C(v167, v168, &v273);

            *(v165 + 4) = v169;
            _os_log_impl(&_mh_execute_header, v163, v164, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v165, 0xCu);
            sub_10000607C(v166);
          }

          v109 = v270;
        }

        v75 = *(v109 + 64);
        if (*(v109 + 68) >> 14 == 2 && (*(v109 + 64) & 4) == 0)
        {
          break;
        }

        ++v160;
        v161 = v75 & 0xFFFF0000FFFFFFFFLL | (*(v109 + 68) << 32);
        if (v160 == 7)
        {
          swift_retain_n();
          v24 = v254;
          v39 = v249;
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v171, v172))
          {
            LODWORD(v238) = v172;
            v249 = v171;
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v237 = swift_slowAlloc();
            v278 = v237;
            *v173 = v240;
            *(v173 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v278);
            *(v173 + 12) = 2082;
            v175 = *(v109 + 40);
            v274 = *(v109 + 24);
            *v275 = v175;
            *&v275[14] = *(v109 + 54);
            sub_100009DAC(&v274, &v273);
            v176 = sub_1000063E8();
            v178 = v177;
            sub_1005812D4(&v274);
            v179 = sub_10000668C(v176, v178, &v278);

            *(v173 + 14) = v179;
            *(v173 + 22) = 2114;
            *(v173 + 24) = v24;
            *v174 = v24;
            *(v173 + 32) = 2112;
            v180 = v24;
            v254 = v39;
            v181 = [v39 objectID];
            *(v173 + 34) = v181;
            v236[1] = v174;
            v174[1] = v181;
            *(v173 + 42) = 2082;
            v273 = _swiftEmptyArrayStorage;
            sub_100026EF4(0, 7, 0);
            v182 = 0;
            v183 = v273;
            do
            {
              v184 = *(&off_1008E2000 + v182 + 32);
              v185 = 0x6F54636E79536164;
              if (v184 != 5)
              {
                v185 = 0x654B687375506164;
              }

              v186 = 0xEB000000006E656BLL;
              if (v184 != 5)
              {
                v186 = 0xE900000000000079;
              }

              v187 = 0xD000000000000017;
              if (v184 == 3)
              {
                v187 = 0xD000000000000012;
              }

              v188 = v269;
              if (v184 != 3)
              {
                v188 = v98;
              }

              if (*(&off_1008E2000 + v182 + 32) <= 4u)
              {
                v185 = v187;
                v186 = v188;
              }

              v189 = 0x6972745364697575;
              if (v184 != 1)
              {
                v189 = 0x4C525574736F68;
              }

              v190 = 0xEA0000000000676ELL;
              if (v184 != 1)
              {
                v190 = 0xE700000000000000;
              }

              if (!*(&off_1008E2000 + v182 + 32))
              {
                v189 = 0x44497463656A626FLL;
                v190 = 0xE800000000000000;
              }

              if (*(&off_1008E2000 + v182 + 32) <= 2u)
              {
                v191 = v189;
              }

              else
              {
                v191 = v185;
              }

              if (*(&off_1008E2000 + v182 + 32) <= 2u)
              {
                v192 = v190;
              }

              else
              {
                v192 = v186;
              }

              v273 = v183;
              v194 = v183[2];
              v193 = v183[3];
              if (v194 >= v193 >> 1)
              {
                sub_100026EF4((v193 > 1), v194 + 1, 1);
                v183 = v273;
              }

              ++v182;
              v183[2] = v194 + 1;
              v195 = &v183[2 * v194];
              v195[4] = v191;
              v195[5] = v192;
            }

            while (v182 != 7);
            v196 = Array.description.getter();
            v198 = v197;

            v199 = sub_10000668C(v196, v198, &v278);

            *(v173 + 44) = v199;
            *(v173 + 52) = 1024;
            v109 = v270;
            LODWORD(v199) = *(v270 + 104);

            *(v173 + 54) = v199;

            v200 = v249;
            _os_log_impl(&_mh_execute_header, v249, v238, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v173, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v201 = v265;
            v39 = v254;
          }

          else
          {

            v201 = v265;
          }

          a1 = v253;
          sub_1004374E0(v253, v39, &off_1008E2000);
          if (v201)
          {
            goto LABEL_181;
          }

          v265 = 0;
          v202 = v39;
          v203 = [v202 changedValues];
          v204 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v205 = v262;
          swift_beginAccess();
          v206 = v24;

          v207 = v205[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v278 = v205[7];
          v205[7] = 0x8000000000000000;
          sub_1002C8688(v204, v206, isUniquelyReferenced_nonNull_native);

          v205[7] = v278;
          swift_endAccess();
          if (*(v109 + 104))
          {

            [v202 updateChangeCount];

            goto LABEL_163;
          }

          v209 = v206;

          v210 = Logger.logObject.getter();
          v211 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v210, v211))
          {
            v212 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            v254 = swift_slowAlloc();
            v273 = v254;
            *v212 = v239;
            *(v212 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
            *(v212 + 12) = 1024;
            *(v212 + 14) = 0;

            *(v212 + 18) = 1024;
            *(v212 + 20) = 0;
            *(v212 + 24) = 2114;
            *(v212 + 26) = v209;
            *v213 = v209;
            v214 = v213;
            *(v212 + 34) = 2082;
            v215 = v209;
            v216 = v265;
            sub_1005E2810(v204);
            v265 = v216;

            v217 = Array.description.getter();
            v219 = v218;

            v220 = sub_10000668C(v217, v219, &v273);

            *(v212 + 36) = v220;
            _os_log_impl(&_mh_execute_header, v210, v211, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v212, 0x2Cu);
            sub_1000050A4(v214, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

LABEL_163:
          }

          else
          {
          }

          v74 = v248;
          v61 = v265;
          v57 = v267;
          v58 = v261;
          v72 = v260;
          v75 = v244;
          v76 = v243;
          v77 = v242;
          if (v248 != v245)
          {
            goto LABEL_39;
          }

          goto LABEL_170;
        }
      }

      if (qword_1009367A0 != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_172;
    }
  }

  if (v104 != 7)
  {
    v110 = 0;
    while (1)
    {
      if (v110 == 7)
      {
        goto LABEL_177;
      }

      v112 = *(&off_1008E2000 + v110 + 32);
      if (v112 <= 2)
      {
        if (*(&off_1008E2000 + v110 + 32))
        {
          if (v112 == 1)
          {
            v113 = 0x6972745364697575;
          }

          else
          {
            v113 = 0x4C525574736F68;
          }

          if (v112 == 1)
          {
            v114 = 0xEA0000000000676ELL;
          }

          else
          {
            v114 = 0xE700000000000000;
          }
        }

        else
        {
          v114 = 0xE800000000000000;
          v113 = 0x44497463656A626FLL;
        }
      }

      else if (*(&off_1008E2000 + v110 + 32) > 4u)
      {
        if (v112 == 5)
        {
          v113 = 0x6F54636E79536164;
          v114 = 0xEB000000006E656BLL;
        }

        else
        {
          v113 = 0x654B687375506164;
          v114 = 0xE900000000000079;
        }
      }

      else
      {
        if (v112 == 3)
        {
          v113 = 0xD000000000000012;
        }

        else
        {
          v113 = 0xD000000000000017;
        }

        if (v112 == 3)
        {
          v114 = v269;
        }

        else
        {
          v114 = v98;
        }
      }

      v115 = 0x6F54636E79536164;
      if (v104 != 5)
      {
        v115 = 0x654B687375506164;
      }

      v116 = 0xEB000000006E656BLL;
      if (v104 != 5)
      {
        v116 = 0xE900000000000079;
      }

      v117 = 0xD000000000000017;
      if (v104 == 3)
      {
        v117 = 0xD000000000000012;
      }

      v118 = v269;
      if (v104 != 3)
      {
        v118 = v98;
      }

      if (v104 <= 4u)
      {
        v115 = v117;
        v116 = v118;
      }

      v119 = 0x6972745364697575;
      if (v104 != 1)
      {
        v119 = 0x4C525574736F68;
      }

      v120 = 0xEA0000000000676ELL;
      if (v104 != 1)
      {
        v120 = 0xE700000000000000;
      }

      if (!v104)
      {
        v119 = 0x44497463656A626FLL;
        v120 = 0xE800000000000000;
      }

      v121 = v104 <= 2u ? v119 : v115;
      v122 = v104 <= 2u ? v120 : v116;
      if (v113 == v121 && v114 == v122)
      {
        break;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v110;
      if (v111)
      {
        goto LABEL_107;
      }
    }

LABEL_107:

    v123 = *(v270 + 88);
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v125 = [ObjCClassFromMetadata entity];
    v126 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v125 insertIntoManagedObjectContext:v123];
    v127 = v94;
    v128 = v126;
    [v123 assignObject:v128 toPersistentStore:v127];

    v129 = v128;
    v130 = [v254 uuid];
    v131 = v257;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v132 = v259;
    (*v247)(v131, 0, 1, v259);
    v133 = v263;
    sub_10018E470(v131, v263);
    isa = 0;
    if ((*v246)(v133, 1, v132) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v86(v133, v132);
    }

    [v129 setIdentifier:isa];

    sub_1000050A4(v131, &unk_100939D90, "8\n\r");
    v109 = v270;

    v135 = v254;
    v136 = v129;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();

    v139 = os_log_type_enabled(v137, v138);
    v249 = v136;
    if (v139)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v278 = v238;
      *v140 = v241;
      *(v140 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v278);
      *(v140 + 12) = 2082;
      v142 = *(v109 + 40);
      v276 = *(v109 + 24);
      *v277 = v142;
      *&v277[14] = *(v109 + 54);
      sub_100009DAC(&v276, &v273);
      LODWORD(v237) = v138;
      v143 = v136;
      v144 = sub_1000063E8();
      v146 = v145;
      sub_1005812D4(&v276);
      v147 = sub_10000668C(v144, v146, &v278);

      *(v140 + 14) = v147;
      *(v140 + 22) = 2114;
      *(v140 + 24) = v135;
      *v141 = v135;
      *(v140 + 32) = 2112;
      v148 = v135;
      v149 = [v143 objectID];
      *(v140 + 34) = v149;
      v141[1] = v149;
      _os_log_impl(&_mh_execute_header, v137, v237, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v140, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v98 = v250;

      swift_arrayDestroy();
    }

    v150 = v262;
    swift_beginAccess();
    v151 = v150[6];
    if ((v151 & 0xC000000000000001) != 0)
    {
      if (v151 < 0)
      {
        v152 = v150[6];
      }

      else
      {
        v152 = v151 & 0xFFFFFFFFFFFFFF8;
      }

      v153 = v135;
      v154 = __CocoaDictionary.count.getter();
      if (__OFADD__(v154, 1))
      {
        __break(1u);
        goto LABEL_190;
      }

      v155 = sub_10021CDBC(v152, v154 + 1);
      v156 = v262;
      v262[6] = v155;
    }

    else
    {
      v157 = v150[6];
      v158 = v135;
      v156 = v262;
    }

    v159 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v156[6];
    sub_1002C8398(v249, v135, v159);
    v156[6] = v278;

    swift_endAccess();
    goto LABEL_119;
  }

LABEL_177:

  v234 = objc_opt_self();
  v235 = v254;
  [v234 noSuchObjectErrorWithObjectID:v254];
  swift_willThrow();
}

void sub_100627878(unint64_t a1, void *a2, unint64_t a3)
{
  v249 = a2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v216 - v8;
  v10 = type metadata accessor for UUID();
  v245 = *(v10 - 8);
  v11 = v245[8];
  __chkstk_darwin(v10);
  v13 = &v216 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v216 - v15;
  v17 = *(a3 + 24);
  v246 = *(a3 + 16);
  v247 = v17;
  v18 = *(a3 + 32);
  v248 = v3;
  v19 = *(v3 + 72);
  v251[3] = v19;
  v252 = v249;
  v251[2] = &v252;

  v20 = v250;
  v21 = sub_100759CB4(sub_1006B0350, v251, a1);
  if (v20)
  {
    return;
  }

  v22 = v21;
  v243 = 0;
  v236 = v19;
  v237 = v18;
  v238 = v16;
  v239 = v13;
  v240 = v10;
  v235 = v9;
  v241 = a3;
  if (qword_100936008 != -1)
  {
    goto LABEL_184;
  }

LABEL_3:
  v23 = type metadata accessor for Logger();
  v24 = sub_100006654(v23, qword_100945730);

  v244 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v22 >> 62;
  v250 = v22;
  if (v27)
  {
    a3 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v252 = v242;
    *a3 = 136446978;
    *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v252);
    *(a3 + 12) = 2048;
    v29 = &v257;
    if (!v28)
    {
      v30 = v243;
      v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_187;
  }

  v30 = v243;

  while (1)
  {
    v246 = v28;
    v37 = v28 ? _CocoaArrayWrapper.endIndex.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v234 = v23;
    if (!v37)
    {
      break;
    }

    v252 = _swiftEmptyArrayStorage;
    v25 = &v252;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v37 & 0x8000000000000000) == 0)
    {
      a3 = 0;
      v22 = v250 & 0xC000000000000001;
      v247 = v250 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v38 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v22)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *(v247 + 16))
          {
            goto LABEL_181;
          }

          v39 = *(v250 + 8 * a3 + 32);
        }

        v40 = v39;
        sub_1005E60F0([v39 remObjectID]);
        if (v30)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v41 = v252[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++a3;
        if (v38 == v37)
        {
          v42 = v252;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_187:
    v30 = *(v29 - 32);
    v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(a3 + 14) = v31;

    *(a3 + 22) = 2082;
    type metadata accessor for REMCDDueDateDeltaAlert();
    v32 = [swift_getObjCClassFromMetadata() description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_10000668C(v33, v35, &v252);
    v22 = v250;

    *(a3 + 24) = v36;
    *(a3 + 32) = 2082;
    *(a3 + 34) = sub_10000668C(v246, v247, &v252);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", a3, 0x2Au);
    swift_arrayDestroy();
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_22:
  v43 = *(v248 + 96);
  if (v43 <= 1)
  {
    if (v43)
    {
      if (v43 != 1)
      {
LABEL_191:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v252 = v62;
        *v61 = 136315138;
        v63 = [type metadata accessor for REMCDDueDateDeltaAlert() cdEntityName];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = sub_10000668C(v64, v66, &v252);

        *(v61 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v59, v60, "Skipping fetch during upsert {CDType: %s}", v61, 0xCu);
        sub_10000607C(v62);
      }

      v53 = v250;
      v57 = v30;
      v54 = v249;
      v55 = v246;
      v231 = sub_100390CD0(_swiftEmptyArrayStorage);
      goto LABEL_37;
    }
  }

  else if ((v43 - 2) >= 3 && v43 != 4499 && v43 != 4599)
  {
    goto LABEL_191;
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v252 = v47;
    *v46 = 136315138;
    v48 = [type metadata accessor for REMCDDueDateDeltaAlert() cdEntityName];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = sub_10000668C(v49, v51, &v252);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "Performing fetch during upsert {CDType: %s}", v46, 0xCu);
    sub_10000607C(v47);
  }

  v53 = v250;
  v54 = v249;
  v55 = v246;
  v56 = sub_100668268(v42, v241);
  v57 = v30;

  if (v30)
  {
    goto LABEL_168;
  }

  v231 = v56;
LABEL_37:
  v68 = v238;
  v69 = v239;
  if (v55)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v70 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v70)
  {
LABEL_167:

    goto LABEL_168;
  }

  v71 = 0;
  v72 = v53 & 0xC000000000000001;
  v73 = v53 & 0xFFFFFFFFFFFFFF8;
  v74 = v53 + 32;
  v229 = (v245 + 1);
  v247 = 0x80000001007EA730;
  v246 = 0x80000001007E9F10;
  v242 = 0x80000001007EA710;
  v222 = (v245 + 7);
  *&v58 = 136446978;
  v220 = v58;
  *&v58 = 136447490;
  v221 = v58;
  *&v58 = 136446210;
  v230 = v58;
  v226 = v70;
  v225 = v53 & 0xC000000000000001;
  v224 = v53 & 0xFFFFFFFFFFFFFF8;
  v223 = v53 + 32;
  while (1)
  {
    if (v72)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v76 = __OFADD__(v71, 1);
      v77 = v71 + 1;
      if (v76)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }
    }

    else
    {
      if (v71 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_189;
      }

      v75 = *(v74 + 8 * v71);
      v76 = __OFADD__(v71, 1);
      v77 = v71 + 1;
      if (v76)
      {
        goto LABEL_166;
      }
    }

    v78 = v75;
    v233 = sub_1005E60F0([v78 remObjectID]);
    if (v57)
    {

LABEL_178:
      return;
    }

    v228 = v77;
    v243 = 0;
    v232 = v78;

    v79 = [v54[2] uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = UUID.uuidString.getter();
    v82 = v81;
    v22 = v69;
    v83 = *v229;
    v84 = v240;
    (*v229)(v68, v240);
    v85 = [objc_opt_self() localInternalAccountID];
    v86 = [v85 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    v83(v22, v84);
    if (v80 != v87)
    {
      goto LABEL_49;
    }

    if (v82 == v89)
    {

      v90 = v237;
      v91 = v236;
      v92 = v231;
    }

    else
    {
LABEL_49:
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v90 = v237;
      v91 = v236;
      v92 = v231;
      if ((v93 & 1) == 0)
      {
        v98 = v243;
        v96 = v241;
        goto LABEL_58;
      }
    }

    v94 = *(v248 + 68);
    v95 = v243;
    v96 = v241;
    if (v94 >> 14 >= 2)
    {
      if (v94 >> 14 == 2)
      {
        v97 = *(v248 + 64);
      }

      else
      {
        v97 = 0x7FFFFFFF;
      }
    }

    else
    {
      v97 = 2147483519;
    }

    sub_100009A40(2, v97);
    if (v95)
    {

      goto LABEL_168;
    }

    v98 = 0;
LABEL_58:
    v99 = [v232 remObjectID];
    a3 = v99;
    if (*(v91 + 16) && (v100 = sub_10002B924(v99), (v101 & 1) != 0))
    {
      v102 = *(*(v91 + 56) + 8 * v100);
    }

    else
    {

      v102 = 0;
    }

    v245 = sub_1005F56BC(v102, &off_1008E0238, sub_1003665B0, &qword_10094F830, &qword_1007B5228);
    v243 = v98;
    if (v98)
    {

      return;
    }

    v103 = sub_1005F74D0();
    if (!*(v92 + 16))
    {
      break;
    }

    v104 = sub_100393C74(v233);
    if ((v105 & 1) == 0)
    {
      break;
    }

    v227 = *(*(v92 + 56) + 8 * v104);
    v106 = v248;
LABEL_121:
    v147 = v245;
    v148 = v245[2];
    if (v148)
    {

      v150 = 0;
      while (v150 < *(v149 + 16))
      {
        if (((*(v106 + 64) | (*(v106 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v151 = *(v149 + v150 + 32);
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v252 = v22;
            *v154 = v230;
            LOBYTE(v258) = v151;
            v155 = String.init<A>(describing:)();
            a3 = v156;
            v157 = sub_10000668C(v155, v156, &v252);

            *(v154 + 4) = v157;
            _os_log_impl(&_mh_execute_header, v152, v153, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v154, 0xCu);
            sub_10000607C(v22);
          }

          v106 = v248;
          v149 = v245;
        }

        LODWORD(v69) = *(v106 + 64);
        if (*(v106 + 68) >> 14 == 2 && (*(v106 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        }

        if (v148 == ++v150)
        {

          v147 = v245;
          v96 = v241;
          goto LABEL_134;
        }
      }

      goto LABEL_182;
    }

LABEL_134:
    v159 = v147;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v160 = v233;
    v161 = v227;
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.default.getter();

    v164 = os_log_type_enabled(v162, v163);
    v233 = v160;
    if (v164)
    {
      v218 = v163;
      v219 = v162;
      v165 = v161;
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v258 = v217;
      *v166 = v221;
      *(v166 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v258);
      *(v166 + 12) = 2082;
      v168 = *(v106 + 40);
      v253 = *(v106 + 24);
      *v254 = v168;
      *&v254[14] = *(v106 + 54);
      sub_100009DAC(&v253, &v252);
      v169 = sub_1000063E8();
      v171 = v170;
      sub_1005812D4(&v253);
      v172 = sub_10000668C(v169, v171, &v258);

      *(v166 + 14) = v172;
      *(v166 + 22) = 2114;
      *(v166 + 24) = v160;
      *v167 = v160;
      *(v166 + 32) = 2112;
      v173 = v160;
      v227 = v165;
      v174 = [v165 objectID];
      *(v166 + 34) = v174;
      v216 = v167;
      v167[1] = v174;
      *(v166 + 42) = 2082;
      v175 = *(v159 + 16);
      if (v175)
      {
        v252 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v175, 0);
        v176 = v245;
        v177 = v252;
        v178 = 32;
        v179 = v242;
        do
        {
          v180 = *(v176 + v178);
          v181 = 0xD00000000000001ALL;
          if (v180 == 4)
          {
            v181 = 0xD000000000000010;
          }

          v182 = v247;
          if (v180 == 4)
          {
            v182 = v246;
          }

          if (v180 == 3)
          {
            v181 = 0x6E6F697461657263;
            v182 = 0xEC00000065746144;
          }

          v183 = 0xD000000000000012;
          if (v180 == 1)
          {
            v184 = v179;
          }

          else
          {
            v183 = 0x4465746144657564;
            v184 = 0xEC00000061746C65;
          }

          if (!*(v176 + v178))
          {
            v183 = 0x44497463656A626FLL;
            v184 = 0xE800000000000000;
          }

          if (*(v176 + v178) <= 2u)
          {
            v185 = v183;
          }

          else
          {
            v185 = v181;
          }

          if (*(v176 + v178) <= 2u)
          {
            v186 = v184;
          }

          else
          {
            v186 = v182;
          }

          v252 = v177;
          v188 = v177[2];
          v187 = v177[3];
          if (v188 >= v187 >> 1)
          {
            sub_100026EF4((v187 > 1), v188 + 1, 1);
            v176 = v245;
            v179 = v242;
            v177 = v252;
          }

          v177[2] = v188 + 1;
          v189 = &v177[2 * v188];
          v189[4] = v185;
          v189[5] = v186;
          ++v178;
          --v175;
        }

        while (v175);
        v159 = v176;

        v96 = v241;
      }

      else
      {
      }

      v192 = Array.description.getter();
      v194 = v193;

      v195 = sub_10000668C(v192, v194, &v258);

      *(v166 + 44) = v195;
      *(v166 + 52) = 1024;
      LODWORD(v195) = *(v248 + 104);

      *(v166 + 54) = v195;

      v196 = v219;
      _os_log_impl(&_mh_execute_header, v219, v218, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v166, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v190 = v243;
      v191 = v232;
      v161 = v227;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v190 = v243;
      v191 = v232;
    }

    sub_10075E91C(v191, v161, v159);
    v57 = v190;
    if (v190)
    {

      goto LABEL_167;
    }

    v197 = [v161 changedValues];
    v198 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v199 = v233;
    v200 = v96[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v258 = v96[7];
    v96[7] = 0x8000000000000000;
    sub_1002C8688(v198, v199, isUniquelyReferenced_nonNull_native);

    v96[7] = v258;
    swift_endAccess();

    v71 = v228;
    v54 = v249;
    v68 = v238;
    v72 = v225;
    v73 = v224;
    v74 = v223;
    v69 = v239;
    if (v228 == v226)
    {
      goto LABEL_167;
    }
  }

  if (v103 == 6)
  {
LABEL_177:

    v215 = objc_opt_self();
    v78 = v233;
    [v215 noSuchObjectErrorWithObjectID:v233];
    swift_willThrow();

    goto LABEL_178;
  }

  v22 = 0;
  v107 = v245;
  v108 = v245[2];
  while (1)
  {
    if (v108 == v22)
    {
      goto LABEL_177;
    }

    if (v22 >= v107[2])
    {
      goto LABEL_183;
    }

    v110 = *(v107 + v22 + 32);
    if (v110 > 2)
    {
      v112 = 0xEC00000061746C65;
      v113 = v242;
      if (v110 == 3)
      {
        v115 = 0x6E6F697461657263;
        v116 = 0xEC00000065746144;
      }

      else
      {
        v115 = v110 == 4 ? 0xD000000000000010 : 0xD00000000000001ALL;
        v116 = v110 == 4 ? v246 : v247;
      }
    }

    else
    {
      v111 = 0xD000000000000012;
      if (v110 != 1)
      {
        v111 = 0x4465746144657564;
      }

      v112 = 0xEC00000061746C65;
      v113 = v242;
      v114 = v110 == 1 ? v242 : 0xEC00000061746C65;
      v115 = *(v107 + v22 + 32) ? v111 : 0x44497463656A626FLL;
      v116 = v110 ? v114 : 0xE800000000000000;
    }

    v117 = 0xD00000000000001ALL;
    if (v103 == 4)
    {
      v117 = 0xD000000000000010;
    }

    v118 = v247;
    if (v103 == 4)
    {
      v118 = v246;
    }

    if (v103 == 3)
    {
      v117 = 0x6E6F697461657263;
      v118 = 0xEC00000065746144;
    }

    v119 = 0xD000000000000012;
    if (v103 == 1)
    {
      v112 = v113;
    }

    else
    {
      v119 = 0x4465746144657564;
    }

    if (!v103)
    {
      v119 = 0x44497463656A626FLL;
      v112 = 0xE800000000000000;
    }

    v120 = v103 <= 2u ? v119 : v117;
    a3 = v103 <= 2u ? v112 : v118;
    if (v115 == v120 && v116 == a3)
    {
      break;
    }

    v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v22;
    v107 = v245;
    if (v109)
    {
      goto LABEL_111;
    }
  }

LABEL_111:
  v106 = v248;
  v121 = *(v248 + 88);
  type metadata accessor for REMCDDueDateDeltaAlert();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = [ObjCClassFromMetadata entity];
  v124 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v123 insertIntoManagedObjectContext:v121];
  v125 = v90;
  v126 = v124;
  [v121 assignObject:v126 toPersistentStore:v125];

  v127 = v126;
  v128 = v233;
  v129 = [v233 uuid];
  v130 = v235;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*v222)(v130, 0, 1, v240);
  REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(v130);

  v69 = v128;
  v22 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v131))
  {
    v132 = swift_slowAlloc();
    a3 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *v132 = v220;
    *(v132 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v258);
    *(v132 + 12) = 2082;
    v133 = *(v248 + 40);
    v255 = *(v248 + 24);
    *v256 = v133;
    *&v256[14] = *(v248 + 54);
    sub_100009DAC(&v255, &v252);
    v134 = sub_1000063E8();
    v136 = v135;
    sub_1005812D4(&v255);
    v137 = sub_10000668C(v134, v136, &v258);

    *(v132 + 14) = v137;
    *(v132 + 22) = 2114;
    *(v132 + 24) = v69;
    *a3 = v69;
    *(v132 + 32) = 2112;
    v138 = v69;
    v139 = [v127 objectID];
    *(v132 + 34) = v139;
    *(a3 + 8) = v139;
    _os_log_impl(&_mh_execute_header, v22, v131, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v132, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v106 = v248;
  }

  v96 = v241;
  swift_beginAccess();
  v140 = v96[6];
  if ((v140 & 0xC000000000000001) == 0)
  {
    v144 = v96[6];
    v145 = v69;
    goto LABEL_120;
  }

  if (v140 < 0)
  {
    v141 = v96[6];
  }

  else
  {
    v141 = v140 & 0xFFFFFFFFFFFFFF8;
  }

  v142 = v69;
  v143 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v143, 1))
  {
    v96[6] = sub_10021CDBC(v141, v143 + 1);
LABEL_120:
    v146 = swift_isUniquelyReferenced_nonNull_native();
    v258 = v96[6];
    v227 = v127;
    sub_1002C8398(v127, v69, v146);
    v96[6] = v258;

    swift_endAccess();
    goto LABEL_121;
  }

LABEL_189:
  __break(1u);
LABEL_190:
  swift_once();
LABEL_171:
  sub_100006654(v234, qword_100950D98);
  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    *v204 = 136446466;
    v205 = sub_100729CB0(1);
    v207 = sub_10000668C(v205, v206, &v252);

    *(v204 + 4) = v207;
    *(v204 + 12) = 2082;
    v208 = sub_100729CB0(v69);
    v210 = sub_10000668C(v208, v209, &v252);

    *(v204 + 14) = v210;
    _os_log_impl(&_mh_execute_header, v202, v203, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v204, 0x16u);
    swift_arrayDestroy();
  }

  v211 = objc_opt_self();
  v212 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v213 = String._bridgeToObjectiveC()();

  sub_100729CB0(v69);
  v214 = String._bridgeToObjectiveC()();

  [v211 unauthorizedErrorWithMissingEntitlement:v212 requestedAccessLevel:v213 currentAccesslevel:v214];

  swift_willThrow();
  swift_bridgeObjectRelease_n();

LABEL_168:
}

void sub_1006295AC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void (*a6)(void), void (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void, void), void *a10, void (*a11)(void), uint64_t (*a12)(void), void (*a13)(void, void, void), void *a14, uint64_t *a15)
{
  v285 = a8;
  v296 = a7;
  v290 = a6;
  v295 = a5;
  v292 = a4;
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v286 = &v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v253 - v23;
  v25 = type metadata accessor for UUID();
  v287 = *(v25 - 8);
  v26 = v287[8];
  __chkstk_darwin(v25);
  v28 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v253 - v30;
  v32 = a3[3];
  v288 = a3[2];
  v291 = v32;
  v33 = a3[4];
  v294 = v15;
  v34 = *(v15 + 72);
  v289 = a2;
  v299 = v34;
  v300 = a2;
  v298 = &v300;

  v35 = v293;
  v36 = (v295)(v292, v297, a1);
  if (v35)
  {
    return;
  }

  v37 = v36;
  v281 = v34;
  v277 = v33;
  v282 = v31;
  v280 = v28;
  v283 = v25;
  v278 = v24;
  v284 = a3;
  v38 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_180;
  }

LABEL_3:
  v39 = type metadata accessor for Logger();
  v40 = sub_100006654(v39, qword_100945730);
  v41 = v37;

  v292 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = (v37 >> 62);
  v295 = v37;
  v276 = v39;
  if (v44)
  {
    v41 = swift_slowAlloc();
    v293 = swift_slowAlloc();
    v300 = v293;
    *v41 = 136446978;
    *(v41 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v300);
    *(v41 + 12) = 2048;
    v37 = v38;
    v46 = &v308;
    if (!v45)
    {
      v47 = v295;
      v48 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_183;
  }

  v37 = v38;

  while (1)
  {
    v279 = v45;
    v54 = v45 ? _CocoaArrayWrapper.endIndex.getter() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = _swiftEmptyArrayStorage;
    if (!v54)
    {
      break;
    }

    v300 = _swiftEmptyArrayStorage;
    v42 = &v300;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v54 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      v293 = (v41 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v38 = (v55 + 1);
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v55 >= v293[2])
          {
            goto LABEL_177;
          }

          v56 = *(v295 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = [v56 remObjectID];
        v296(v58);
        if (v37)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v59 = v300[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v55;
        if (v38 == v54)
        {
          v45 = v300;
          v41 = v295;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_183:
    v47 = *(v46 - 32);
    v48 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v41 + 14) = v48;

    *(v41 + 22) = 2082;
    v290(0);
    v49 = [swift_getObjCClassFromMetadata() description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_10000668C(v50, v52, &v300);

    *(v41 + 24) = v53;
    *(v41 + 32) = 2082;
    *(v41 + 34) = sub_10000668C(v288, v291, &v300);
    _os_log_impl(&_mh_execute_header, v42, v43, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v41, 0x2Au);
    swift_arrayDestroy();

    v41 = v47;
  }

LABEL_21:
  v60 = *(v294 + 96);
  if (v60 <= 1)
  {
    if (v60)
    {
      if (v60 != 1)
      {
LABEL_187:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v293 = swift_slowAlloc();
        v300 = v293;
        *v81 = 136315138;
        v82 = [(v290)(0) cdEntityName];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = sub_10000668C(v83, v85, &v300);

        *(v81 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "Skipping fetch during upsert {CDType: %s}", v81, 0xCu);
        sub_10000607C(v293);
      }

      v73 = v37;
      v76 = v282;
      v87 = v279;
      v72 = v285(_swiftEmptyArrayStorage);
      v75 = v296;
      v77 = v41 & 0xFFFFFFFFFFFFFF8;
      if (!v87)
      {
        goto LABEL_32;
      }

LABEL_37:
      v78 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_38;
    }
  }

  else if ((v60 - 2) >= 3 && v60 != 4499 && v60 != 4599)
  {
    goto LABEL_187;
  }

  v61 = a15;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v293 = a15;
    v66 = v65;
    v300 = v65;
    *v64 = 136315138;
    v67 = [(v290)(0) cdEntityName];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = sub_10000668C(v68, v70, &v300);
    v41 = v295;

    *(v64 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "Performing fetch during upsert {CDType: %s}", v64, 0xCu);
    sub_10000607C(v66);
    v61 = v293;
  }

  v72 = (v61)(v45, v284);
  v73 = v37;

  v75 = v296;
  if (v37)
  {
    goto LABEL_174;
  }

  v76 = v282;
  v77 = v41 & 0xFFFFFFFFFFFFFF8;
  if (v279)
  {
    goto LABEL_37;
  }

LABEL_32:
  v78 = *(v77 + 16);
LABEL_38:
  if (!v78)
  {
    goto LABEL_165;
  }

  v88 = 0;
  v279 = a14;
  v266 = a13;
  v89 = v41 & 0xC000000000000001;
  v267 = a12;
  v270 = a11;
  v90 = (v41 & 0xFFFFFFFFFFFFFF8);
  v91 = v41 + 32;
  v272 = (v287 + 1);
  v269 = a10;
  v271 = a9;
  v293 = 0x80000001007E8C60;
  v261 = (v287 + 7);
  v260 = (v287 + 6);
  *&v74 = 136446978;
  v258 = v74;
  *&v74 = 136446210;
  v274 = v74;
  *&v74 = 136447490;
  v259 = v74;
  *&v74 = 136447234;
  v257 = v74;
  v275 = v72;
  v265 = v78;
  v264 = v41 & 0xC000000000000001;
  v263 = v41 & 0xFFFFFFFFFFFFFF8;
  v262 = v41 + 32;
  while (1)
  {
    if (v89)
    {
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v93 = __OFADD__(v88, 1);
      v94 = (v88 + 1);
      if (!v93)
      {
        goto LABEL_43;
      }

LABEL_164:
      __break(1u);
LABEL_165:

      goto LABEL_174;
    }

    if (v88 >= v90[2].isa)
    {
      __break(1u);
      goto LABEL_185;
    }

    v92 = *(v91 + 8 * v88);
    v93 = __OFADD__(v88, 1);
    v94 = (v88 + 1);
    if (v93)
    {
      goto LABEL_164;
    }

LABEL_43:
    v95 = v92;
    v288 = v75([v95 remObjectID]);
    if (v73)
    {

      return;
    }

    v268 = v94;
    v38 = 0;

    v291 = v95;
    v96 = [v95 accountID];
    v97 = [v96 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = UUID.uuidString.getter();
    v99 = v76;
    v100 = v98;
    v102 = v101;
    v103 = *v272;
    v104 = v283;
    (*v272)(v99, v283);
    v105 = [objc_opt_self() localInternalAccountID];
    v106 = [v105 uuid];

    v107 = v280;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = UUID.uuidString.getter();
    v110 = v109;
    v103(v107, v104);
    if (v100 != v108)
    {
      goto LABEL_47;
    }

    if (v102 == v110)
    {
    }

    else
    {
LABEL_47:
      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v111 & 1) == 0)
      {
        v113 = v281;
        v114 = v291;
        goto LABEL_55;
      }
    }

    v112 = *(v294 + 68);
    v113 = v281;
    v114 = v291;
    if (v112 >> 14 >= 2)
    {
      v115 = v112 >> 14 == 2 ? *(v294 + 64) : 0x7FFFFFFF;
    }

    else
    {
      v115 = 2147483519;
    }

    sub_100009A40(2, v115);
LABEL_55:
    v37 = v271(v114, v113);
    v285 = 0;
    v116._rawValue = v269;
    v117 = sub_1005F7D1C(v116, v270);
    v118 = v275;
    if (!*(v275 + 16))
    {
      break;
    }

    v119 = v267(v288);
    if ((v120 & 1) == 0)
    {
      break;
    }

    v273 = *(*(v118 + 56) + 8 * v119);
    v121 = v294;
LABEL_114:
    v173 = *(v37 + 16);
    v287 = v173;
    if (v173)
    {

      v174 = 0;
      while (v174 < *(v37 + 16))
      {
        if (((*(v121 + 64) | (*(v121 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v38 = *(v37 + v174 + 32);
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v300 = v178;
            *v177 = v274;
            LOBYTE(v306) = v38;
            v179 = String.init<A>(describing:)();
            v181 = sub_10000668C(v179, v180, &v300);

            *(v177 + 4) = v181;
            v173 = v287;
            _os_log_impl(&_mh_execute_header, v175, v176, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v177, 0xCu);
            sub_10000607C(v178);
          }

          v121 = v294;
        }

        LODWORD(v90) = *(v121 + 64);
        if (*(v121 + 68) >> 14 == 2 && (*(v121 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_167;
        }

        if (v173 == ++v174)
        {

          goto LABEL_127;
        }
      }

      goto LABEL_178;
    }

LABEL_127:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v183 = v288;
    v184 = v273;
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();

    v187 = os_log_type_enabled(v185, v186);
    v288 = v184;
    if (v187)
    {
      v255 = v186;
      v256 = v185;
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v306 = v254;
      *v188 = v259;
      *(v188 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v306);
      *(v188 + 12) = 2082;
      v190 = *(v121 + 40);
      v301 = *(v121 + 24);
      *v302 = v190;
      *&v302[14] = *(v121 + 54);
      sub_100009DAC(&v301, &v300);
      v191 = sub_1000063E8();
      v193 = v192;
      sub_1005812D4(&v301);
      v194 = sub_10000668C(v191, v193, &v306);

      *(v188 + 14) = v194;
      v195 = v288;
      *(v188 + 22) = 2114;
      *(v188 + 24) = v183;
      *v189 = v183;
      *(v188 + 32) = 2112;
      v273 = v183;
      v196 = v183;
      v197 = [v195 objectID];
      *(v188 + 34) = v197;
      v253 = v189;
      v189[1] = v197;
      *(v188 + 42) = 2082;
      v198 = *(v37 + 16);
      if (v198)
      {
        v300 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v198, 0);
        v199 = v300;
        v200 = 32;
        v201 = v293;
        do
        {
          v202 = *(v37 + v200);
          if (v202 == 2)
          {
            v203 = 0x6E6F697461657263;
          }

          else
          {
            v203 = 0x4E79616C70736964;
          }

          if (v202 == 2)
          {
            v204 = 0xEC00000065746144;
          }

          else
          {
            v204 = 0xEB00000000656D61;
          }

          v205 = 0xD000000000000017;
          if (*(v37 + v200))
          {
            v206 = v201;
          }

          else
          {
            v205 = 0x44497463656A626FLL;
            v206 = 0xE800000000000000;
          }

          if (*(v37 + v200) <= 1u)
          {
            v207 = v205;
          }

          else
          {
            v207 = v203;
          }

          if (*(v37 + v200) <= 1u)
          {
            v208 = v206;
          }

          else
          {
            v208 = v204;
          }

          v300 = v199;
          v210 = v199[2];
          v209 = v199[3];
          if (v210 >= v209 >> 1)
          {
            sub_100026EF4((v209 > 1), v210 + 1, 1);
            v201 = v293;
            v199 = v300;
          }

          v199[2] = v210 + 1;
          v211 = &v199[2 * v210];
          v211[4] = v207;
          v211[5] = v208;
          ++v200;
          --v198;
        }

        while (v198);

        v184 = v288;
      }

      else
      {

        v184 = v195;
      }

      v213 = Array.description.getter();
      v215 = v214;

      v216 = sub_10000668C(v213, v215, &v306);

      *(v188 + 44) = v216;
      *(v188 + 52) = 1024;
      v121 = v294;
      LODWORD(v216) = *(v294 + 104);

      *(v188 + 54) = v216;

      v217 = v256;
      _os_log_impl(&_mh_execute_header, v256, v255, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v188, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v212 = v285;
      v183 = v273;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v212 = v285;
    }

    v266(v291, v184, v37);
    if (v212)
    {

      goto LABEL_174;
    }

    v285 = 0;

    v218 = [v184 changedValues];
    v219 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v220 = v284;
    swift_beginAccess();
    v221 = v121;
    v222 = v183;

    v223 = v220[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v306 = v220[7];
    v220[7] = 0x8000000000000000;
    sub_1002C8688(v219, v222, isUniquelyReferenced_nonNull_native);

    v220[7] = v306;
    swift_endAccess();
    v225 = *(v221 + 104);
    if (v287 && (v225 & 1) != 0)
    {

      [v184 updateChangeCount];
    }

    else
    {

      v226 = v222;

      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v300 = v287;
        *v229 = v257;
        *(v229 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v300);
        *(v229 + 12) = 1024;
        *(v229 + 14) = v225;

        *(v229 + 18) = 1024;
        *(v229 + 20) = 0;
        *(v229 + 24) = 2114;
        *(v229 + 26) = v226;
        *v230 = v226;
        *(v229 + 34) = 2082;
        v231 = v226;
        v232 = v285;
        sub_1005E2810(v219);
        v285 = v232;

        v233 = Array.description.getter();
        v235 = v234;

        v236 = sub_10000668C(v233, v235, &v300);

        *(v229 + 36) = v236;
        _os_log_impl(&_mh_execute_header, v227, v228, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v229, 0x2Cu);
        sub_1000050A4(v230, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v237 = &v305;
      }

      else
      {

        v237 = &v307;
      }
    }

    v75 = v296;
    v88 = v268;
    v89 = v264;
    v73 = v285;
    v76 = v282;
    v90 = v263;
    v91 = v262;
    if (v268 == v265)
    {
      goto LABEL_165;
    }
  }

  if (v117 == 4)
  {
LABEL_170:

    v251 = objc_opt_self();
    v252 = v288;
    [v251 noSuchObjectErrorWithObjectID:v288];
    swift_willThrow();
  }

  else
  {
    v38 = 0;
    v122 = *(v37 + 16);
    while (1)
    {
      if (v122 == v38)
      {
        goto LABEL_170;
      }

      if (v38 >= *(v37 + 16))
      {
        goto LABEL_179;
      }

      v124 = v38[v37 + 32];
      v125 = v124 == 2 ? 0x6E6F697461657263 : 0x4E79616C70736964;
      v126 = v124 == 2 ? 0xEC00000065746144 : 0xEB00000000656D61;
      v127 = v38[v37 + 32] ? 0xD000000000000017 : 0x44497463656A626FLL;
      v128 = v38[v37 + 32] ? v293 : 0xE800000000000000;
      v129 = v38[v37 + 32] <= 1u ? v127 : v125;
      v130 = v38[v37 + 32] <= 1u ? v128 : v126;
      v131 = v117 == 2 ? 0x6E6F697461657263 : 0x4E79616C70736964;
      v132 = v117 == 2 ? 0xEC00000065746144 : 0xEB00000000656D61;
      v133 = v117 ? 0xD000000000000017 : 0x44497463656A626FLL;
      v134 = v117 ? v293 : 0xE800000000000000;
      v135 = v117 <= 1u ? v133 : v131;
      v136 = v117 <= 1u ? v134 : v132;
      if (v129 == v135 && v130 == v136)
      {
        break;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v38;
      if (v123)
      {
        goto LABEL_102;
      }
    }

LABEL_102:
    v137 = *(v294 + 88);
    v290(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v139 = [ObjCClassFromMetadata entity];
    v140 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v139 insertIntoManagedObjectContext:v137];
    v141 = v277;
    v142 = v140;
    [v137 assignObject:v142 toPersistentStore:v141];

    v143 = v142;
    v144 = [v288 uuid];
    v145 = v278;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v146 = v283;
    (*v261)(v145, 0, 1, v283);
    v147 = v286;
    sub_10018E470(v145, v286);
    isa = 0;
    if ((*v260)(v147, 1, v146) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v103(v147, v146);
    }

    [v143 setIdentifier:{isa, v253}];

    sub_1000050A4(v145, &unk_100939D90, "8\n\r");
    v149 = v294;

    v150 = v288;
    v151 = v143;
    v121 = v149;
    v38 = v151;
    v90 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();

    v153 = os_log_type_enabled(v90, v152);
    v273 = v38;
    if (v153)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      v306 = v287;
      *v154 = v258;
      *(v154 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v306);
      *(v154 + 12) = 2082;
      v156 = *(v294 + 40);
      v303 = *(v294 + 24);
      *v304 = v156;
      *&v304[14] = *(v294 + 54);
      sub_100009DAC(&v303, &v300);
      v157 = sub_1000063E8();
      v159 = v158;
      sub_1005812D4(&v303);
      v160 = sub_10000668C(v157, v159, &v306);

      *(v154 + 14) = v160;
      *(v154 + 22) = 2114;
      *(v154 + 24) = v150;
      *v155 = v150;
      *(v154 + 32) = 2112;
      v161 = v150;
      v162 = [v38 objectID];
      *(v154 + 34) = v162;
      v155[1] = v162;
      _os_log_impl(&_mh_execute_header, v90, v152, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v154, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v121 = v294;
    }

    v163 = v284;
    swift_beginAccess();
    v164 = v163[6];
    if ((v164 & 0xC000000000000001) == 0)
    {
      v170 = v163[6];
      v171 = v150;
      v169 = v284;
      goto LABEL_113;
    }

    if (v164 < 0)
    {
      v165 = v163[6];
    }

    else
    {
      v165 = v164 & 0xFFFFFFFFFFFFFF8;
    }

    v166 = v150;
    v167 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v167, 1))
    {
      v168 = sub_10021CDBC(v165, v167 + 1);
      v169 = v284;
      v284[6] = v168;
LABEL_113:
      v172 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v169[6];
      sub_1002C8398(v273, v150, v172);
      v169[6] = v306;

      swift_endAccess();
      goto LABEL_114;
    }

LABEL_185:
    __break(1u);
LABEL_186:
    swift_once();
LABEL_167:
    sub_100006654(v276, qword_100950D98);
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v300 = swift_slowAlloc();
      *v240 = 136446466;
      v241 = sub_100729CB0(1);
      v243 = sub_10000668C(v241, v242, &v300);

      *(v240 + 4) = v243;
      *(v240 + 12) = 2082;
      v244 = sub_100729CB0(v90);
      v246 = sub_10000668C(v244, v245, &v300);

      *(v240 + 14) = v246;
      _os_log_impl(&_mh_execute_header, v238, v239, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v240, 0x16u);
      swift_arrayDestroy();
    }

    v247 = objc_opt_self();
    v248 = String._bridgeToObjectiveC()();
    sub_100729CB0(1);
    v249 = String._bridgeToObjectiveC()();

    sub_100729CB0(v90);
    v250 = String._bridgeToObjectiveC()();

    [v247 unauthorizedErrorWithMissingEntitlement:v248 requestedAccessLevel:v249 currentAccesslevel:v250];

    swift_willThrow();
    swift_bridgeObjectRelease_n();

LABEL_174:
  }
}

void sub_10062B5D0(unint64_t a1, uint64_t *a2, unint64_t a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v264 = v237 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v237 - v11;
  v13 = type metadata accessor for UUID();
  v265 = *(v13 - 8);
  v14 = v265[8];
  __chkstk_darwin(v13);
  v16 = v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v237 - v18;
  v20 = *(a3 + 24);
  v267 = *(a3 + 16);
  v270 = v20;
  v21 = *(a3 + 32);
  v271 = v3;
  v22 = *(v3 + 72);
  v269 = a2;
  v273[3] = v22;
  v274 = a2;
  v273[2] = &v274;

  v23 = v272;
  v24 = sub_100759CB4(sub_1006B028C, v273, a1);
  if (v23)
  {
    return;
  }

  v25 = v24;
  v261 = v22;
  v256 = v21;
  v262 = v19;
  v260 = v16;
  v263 = v13;
  v257 = v12;
  v26 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_183;
  }

LABEL_3:
  v27 = type metadata accessor for Logger();
  v28 = sub_100006654(v27, qword_100945730);

  v268 = v28;
  v29 = Logger.logObject.getter();
  LOBYTE(v30) = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = (v25 >> 62);
  v272 = v25;
  v266 = a3;
  if (v31)
  {
    v21 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v274 = v259;
    *v21 = 136446978;
    *(v21 + 1) = sub_10000668C(0x747265737075, 0xE600000000000000, &v274);
    *(v21 + 6) = 2048;
    if (!v32)
    {
      v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_186;
  }

  v38 = v25;
  while (1)
  {
    v30 = v271;
    v25 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v254 = v27;
    if (!v25)
    {
      break;
    }

    v267 = v32;
    v274 = _swiftEmptyArrayStorage;
    v29 = &v274;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v41 = v38;
      a3 = v38 & 0xC000000000000001;
      v270 = (v41 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (a3)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= v270[2])
          {
            goto LABEL_180;
          }

          v43 = *(v272 + 8 * v40 + 32);
        }

        v44 = v43;
        v45 = sub_1005E8958([v43 remObjectID]);
        if (v26)
        {

          return;
        }

        v21 = v45;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = v274[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v40;
        if (v42 == v25)
        {
          v47 = v274;
          v38 = v272;
          v30 = v271;
          v32 = v267;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_186:
    v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v21 + 14) = v33;

    *(v21 + 11) = 2082;
    type metadata accessor for REMCDListSection();
    v34 = [swift_getObjCClassFromMetadata() description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = v272;
    v39 = sub_10000668C(v35, v37, &v274);

    *(v21 + 3) = v39;
    *(v21 + 16) = 2082;
    *(v21 + 34) = sub_10000668C(v267, v270, &v274);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_22:
  v48 = *(v30 + 96);
  if (v48 <= 1)
  {
    if (v48)
    {
      if (v48 != 1)
      {
LABEL_190:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v274 = v67;
        *v66 = 136315138;
        v68 = [type metadata accessor for REMCDListSection() cdEntityName];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = v69;
        v38 = v272;
        v73 = sub_10000668C(v72, v71, &v274);
        v30 = v271;

        *(v66 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "Skipping fetch during upsert {CDType: %s}", v66, 0xCu);
        sub_10000607C(v67);
      }

      v61 = v26;
      v63 = v262;
      v259 = sub_100390D0C(_swiftEmptyArrayStorage);
      goto LABEL_38;
    }
  }

  else if ((v48 - 2) >= 3 && v48 != 4499 && v48 != 4599)
  {
    goto LABEL_190;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v274 = v270;
    *v51 = 136315138;
    v52 = [type metadata accessor for REMCDListSection() cdEntityName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v47;
    v55 = v32;
    v57 = v56;

    v58 = v53;
    v38 = v272;
    v59 = sub_10000668C(v58, v57, &v274);
    v32 = v55;
    v47 = v54;

    *(v51 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "Performing fetch during upsert {CDType: %s}", v51, 0xCu);
    sub_10000607C(v270);
    v30 = v271;
  }

  v60 = sub_100669CD8(v47, v266);
  v61 = v26;

  if (v26)
  {
    goto LABEL_32;
  }

  v259 = v60;
  v63 = v262;
LABEL_38:
  v74 = v61;
  if (v32)
  {
    v75 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v75 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v75)
  {
    v76 = 0;
    v77 = v38 & 0xC000000000000001;
    v78 = v38 & 0xFFFFFFFFFFFFFF8;
    v79 = v38 + 32;
    v251 = (v265 + 1);
    v270 = 0x80000001007E8C60;
    v245 = (v265 + 7);
    v244 = (v265 + 6);
    *&v62 = 136446978;
    v241 = v62;
    *&v62 = 136446210;
    v253 = v62;
    *&v62 = 136447490;
    v242 = v62;
    *&v62 = 136447234;
    v240 = v62;
    v249 = v75;
    v248 = v38 & 0xC000000000000001;
    v247 = v38 & 0xFFFFFFFFFFFFFF8;
    v246 = v38 + 32;
    do
    {
      if (v77)
      {
        v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v81 = __OFADD__(v76, 1);
        v82 = v76 + 1;
        if (v81)
        {
LABEL_167:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v76 >= *(v78 + 16))
        {
          __break(1u);
          goto LABEL_188;
        }

        v80 = *(v79 + 8 * v76);
        v81 = __OFADD__(v76, 1);
        v82 = v76 + 1;
        if (v81)
        {
          goto LABEL_167;
        }
      }

      v83 = v80;
      v258 = sub_1005E8958([v83 remObjectID]);
      v265 = v74;
      if (v74)
      {

        return;
      }

      v250 = v82;

      v255 = v83;
      v84 = [v83 accountID];
      v85 = v260;
      v86 = [v84 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = UUID.uuidString.getter();
      v88 = v63;
      v89 = v87;
      v91 = v90;
      v92 = *v251;
      v93 = v263;
      (*v251)(v88, v263);
      v94 = [objc_opt_self() localInternalAccountID];
      v95 = [v94 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = UUID.uuidString.getter();
      v97 = v85;
      v98 = v96;
      v100 = v99;
      v267 = v92;
      v92(v97, v93);
      if (v89 == v98 && v91 == v100)
      {
      }

      else
      {
        v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v101 & 1) == 0)
        {
          v21 = v269;
          v103 = v261;
          a3 = 0x800000000000;
          v105 = v265;
          goto LABEL_59;
        }
      }

      v102 = *(v30 + 68);
      v103 = v261;
      a3 = 0x800000000000;
      if (v102 >> 14 >= 2)
      {
        if (v102 >> 14 == 2)
        {
          v104 = *(v30 + 64);
        }

        else
        {
          v104 = 0x7FFFFFFF;
        }

        v21 = v269;
      }

      else
      {
        v104 = 2147483519;
        v21 = v269;
      }

      v105 = v265;
      sub_100009A40(2, v104);
      if (v105)
      {

        goto LABEL_32;
      }

LABEL_59:
      v106 = sub_100692848(v255, v103, &type metadata for REMListSectionStorageCDIngestor.ValueKey, sub_1005F59A8);
      v265 = v105;
      if (v105)
      {

        return;
      }

      v26 = v106;
      v25 = sub_1005F7820();
      v107 = v259;
      if (!v259[2] || (v108 = sub_100393C74(v258), (v109 & 1) == 0))
      {
        if (v25 == 5)
        {
LABEL_170:

          v220 = objc_opt_self();
          v221 = v258;
          [v220 noSuchObjectErrorWithObjectID:v258];
          swift_willThrow();

          return;
        }

        a3 = 0;
        v21 = *(v26 + 16);
        while (1)
        {
          if (v21 == a3)
          {
            goto LABEL_170;
          }

          if (a3 >= *(v26 + 16))
          {
            goto LABEL_182;
          }

          v111 = *(v26 + a3 + 32);
          if (v111 <= 1)
          {
            v112 = 0xD000000000000017;
            if (*(v26 + a3 + 32))
            {
              v116 = 0xD000000000000017;
            }

            else
            {
              v116 = 0x44497463656A626FLL;
            }

            v115 = v270;
            if (*(v26 + a3 + 32))
            {
              v117 = v270;
            }

            else
            {
              v117 = 0xE800000000000000;
            }

            v113 = 0xED0000656D614E6CLL;
            v114 = 0x6163696E6F6E6163;
          }

          else
          {
            v112 = 0xD000000000000017;
            v113 = 0xED0000656D614E6CLL;
            v114 = 0x6163696E6F6E6163;
            v115 = v270;
            if (v111 == 2)
            {
              v116 = 0x6E6F697461657263;
              v117 = 0xEC00000065746144;
            }

            else
            {
              if (v111 == 3)
              {
                v116 = 0x4E79616C70736964;
              }

              else
              {
                v116 = 0x6163696E6F6E6163;
              }

              if (v111 == 3)
              {
                v117 = 0xEB00000000656D61;
              }

              else
              {
                v117 = 0xED0000656D614E6CLL;
              }
            }
          }

          if (v25 == 3)
          {
            v114 = 0x4E79616C70736964;
            v113 = 0xEB00000000656D61;
          }

          if (v25 == 2)
          {
            v114 = 0x6E6F697461657263;
            v113 = 0xEC00000065746144;
          }

          if (v25)
          {
            v118 = v115;
          }

          else
          {
            v112 = 0x44497463656A626FLL;
            v118 = 0xE800000000000000;
          }

          v119 = v25 <= 1u ? v112 : v114;
          v120 = (v25 <= 1u ? v118 : v113);
          if (v116 == v119 && v117 == v120)
          {
            break;
          }

          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++a3;
          if (v110)
          {
            goto LABEL_100;
          }
        }

LABEL_100:
        v121 = *(v30 + 88);
        type metadata accessor for REMCDListSection();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v123 = [ObjCClassFromMetadata entity];
        v124 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v123 insertIntoManagedObjectContext:v121];
        v125 = v256;
        v126 = v124;
        [v121 assignObject:v126 toPersistentStore:v125];

        v127 = v126;
        v128 = [v258 uuid];
        v129 = v257;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v130 = v263;
        (*v245)(v129, 0, 1, v263);
        v131 = v264;
        sub_10018E470(v129, v264);
        v132 = (*v244)(v131, 1, v130);
        isa = 0;
        if (v132 != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v267(v131, v263);
        }

        [v127 setIdentifier:isa];

        sub_1000050A4(v129, &unk_100939D90, "8\n\r");

        v134 = v258;
        v135 = v127;
        v76 = Logger.logObject.getter();
        v136 = static os_log_type_t.default.getter();

        v137 = os_log_type_enabled(v76, v136);
        v252 = v135;
        if (v137)
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          v279 = v267;
          *v138 = v241;
          *(v138 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v279);
          *(v138 + 12) = 2082;
          v140 = *(v30 + 40);
          v277 = *(v30 + 24);
          *v278 = v140;
          *&v278[14] = *(v30 + 54);
          sub_100009DAC(&v277, &v274);
          v141 = sub_1000063E8();
          LODWORD(v243) = v136;
          v142 = v141;
          v144 = v143;
          sub_1005812D4(&v277);
          v145 = sub_10000668C(v142, v144, &v279);

          *(v138 + 14) = v145;
          *(v138 + 22) = 2114;
          *(v138 + 24) = v134;
          *v139 = v134;
          *(v138 + 32) = 2112;
          v146 = v134;
          v147 = [v135 objectID];
          *(v138 + 34) = v147;
          v139[1] = v147;
          _os_log_impl(&_mh_execute_header, v76, v243, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v138, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v25 = v266;
        a3 = 0x800000000000;
        swift_beginAccess();
        v148 = *(v25 + 48);
        if ((v148 & 0xC000000000000001) == 0)
        {
          v152 = *(v25 + 48);
          v153 = v134;
          goto LABEL_111;
        }

        if (v148 < 0)
        {
          v149 = *(v25 + 48);
        }

        else
        {
          v149 = v148 & 0xFFFFFFFFFFFFFF8;
        }

        v150 = v134;
        v151 = __CocoaDictionary.count.getter();
        if (!__OFADD__(v151, 1))
        {
          *(v25 + 48) = sub_10021CDBC(v149, v151 + 1);
LABEL_111:
          v21 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v279 = *(v25 + 48);
          sub_1002C8398(v252, v134, isUniquelyReferenced_nonNull_native);
          *(v25 + 48) = v279;

          swift_endAccess();
          goto LABEL_112;
        }

LABEL_188:
        __break(1u);
LABEL_189:
        swift_once();
LABEL_172:
        sub_100006654(v254, qword_100950D98);
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.error.getter();
        v224 = os_log_type_enabled(v222, v223);
        v225 = v255;
        if (v224)
        {
          v226 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *v226 = 136446466;
          v227 = sub_100729CB0(1);
          v229 = sub_10000668C(v227, v228, &v274);

          *(v226 + 4) = v229;
          *(v226 + 12) = 2082;
          v230 = sub_100729CB0(v76);
          v232 = sub_10000668C(v230, v231, &v274);

          *(v226 + 14) = v232;
          _os_log_impl(&_mh_execute_header, v222, v223, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v226, 0x16u);
          swift_arrayDestroy();
        }

        v233 = objc_opt_self();
        v234 = String._bridgeToObjectiveC()();
        sub_100729CB0(1);
        v235 = String._bridgeToObjectiveC()();

        sub_100729CB0(v76);
        v236 = String._bridgeToObjectiveC()();

        [v233 unauthorizedErrorWithMissingEntitlement:v234 requestedAccessLevel:v235 currentAccesslevel:v236];

        swift_willThrow();
        swift_bridgeObjectRelease_n();

LABEL_32:

        return;
      }

      v252 = *(v107[7] + 8 * v108);
      v25 = v266;
LABEL_112:
      v155 = *(v26 + 16);
      v267 = v155;
      if (v155)
      {

        v156 = 0;
        while (v156 < *(v26 + 16))
        {
          if (((*(v30 + 64) | (*(v30 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v157 = *(v26 + v156 + 32);
            v158 = Logger.logObject.getter();
            v159 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v274 = v161;
              *v160 = v253;
              LOBYTE(v279) = v157;
              v162 = String.init<A>(describing:)();
              v164 = sub_10000668C(v162, v163, &v274);

              *(v160 + 4) = v164;
              _os_log_impl(&_mh_execute_header, v158, v159, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v160, 0xCu);
              sub_10000607C(v161);
              a3 = 0x800000000000;

              v21 = v269;
            }

            v30 = v271;
            v25 = v266;
            v155 = v267;
          }

          LODWORD(v76) = *(v30 + 64);
          if (*(v30 + 68) >> 14 == 2 && (*(v30 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_189;
            }

            goto LABEL_172;
          }

          if (v155 == ++v156)
          {

            goto LABEL_125;
          }
        }

        goto LABEL_181;
      }

LABEL_125:
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v166 = v258;
      v167 = v252;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.default.getter();
      v258 = v167;

      v170 = os_log_type_enabled(v168, v169);
      v243 = v166;
      if (v170)
      {
        v239 = v169;
        v252 = v168;
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        v279 = v238;
        *v171 = v242;
        *(v171 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v279);
        *(v171 + 12) = 2082;
        v173 = *(v30 + 40);
        v275 = *(v30 + 24);
        *v276 = v173;
        *&v276[14] = *(v30 + 54);
        sub_100009DAC(&v275, &v274);
        v174 = sub_1000063E8();
        v176 = v175;
        sub_1005812D4(&v275);
        v177 = sub_10000668C(v174, v176, &v279);

        *(v171 + 14) = v177;
        *(v171 + 22) = 2114;
        *(v171 + 24) = v166;
        *v172 = v166;
        *(v171 + 32) = 2112;
        v178 = v166;
        v179 = v258;
        v180 = [v258 objectID];
        *(v171 + 34) = v180;
        v237[1] = v172;
        v172[1] = v180;
        *(v171 + 42) = 2082;
        v181 = *(v26 + 16);
        if (v181)
        {
          v274 = _swiftEmptyArrayStorage;
          sub_100026EF4(0, v181, 0);
          v182 = v274;
          v183 = 32;
          v184 = v270;
          do
          {
            v185 = *(v26 + v183);
            if (v185 == 3)
            {
              v186 = 0x4E79616C70736964;
            }

            else
            {
              v186 = 0x6163696E6F6E6163;
            }

            if (v185 == 3)
            {
              v187 = 0xEB00000000656D61;
            }

            else
            {
              v187 = 0xED0000656D614E6CLL;
            }

            if (v185 == 2)
            {
              v186 = 0x6E6F697461657263;
              v187 = 0xEC00000065746144;
            }

            if (*(v26 + v183))
            {
              v188 = 0xD000000000000017;
            }

            else
            {
              v188 = 0x44497463656A626FLL;
            }

            if (*(v26 + v183))
            {
              v189 = v184;
            }

            else
            {
              v189 = 0xE800000000000000;
            }

            if (*(v26 + v183) <= 1u)
            {
              v190 = v188;
            }

            else
            {
              v190 = v186;
            }

            if (*(v26 + v183) <= 1u)
            {
              v191 = v189;
            }

            else
            {
              v191 = v187;
            }

            v274 = v182;
            v193 = v182[2];
            v192 = v182[3];
            if (v193 >= v192 >> 1)
            {
              sub_100026EF4((v192 > 1), v193 + 1, 1);
              v184 = v270;
              v182 = v274;
            }

            v182[2] = v193 + 1;
            v194 = &v182[2 * v193];
            v194[4] = v190;
            v194[5] = v191;
            ++v183;
            --v181;
          }

          while (v181);

          v30 = v271;
          v179 = v258;
        }

        else
        {
        }

        v196 = Array.description.getter();
        v198 = v197;

        v199 = sub_10000668C(v196, v198, &v279);

        *(v171 + 44) = v199;
        *(v171 + 52) = 1024;
        LODWORD(v199) = *(v30 + 104);

        *(v171 + 54) = v199;

        v200 = v252;
        _os_log_impl(&_mh_execute_header, v252, v239, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v171, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v25 = v266;
        v195 = v255;
      }

      else
      {

        swift_bridgeObjectRelease_n();

        v195 = v255;
        v179 = v258;
      }

      v201 = v265;
      sub_1003B6DCC(v195, v179, v26);
      if (v201)
      {

        return;
      }

      v202 = [v179 changedValues];
      v203 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v204 = v25;
      v205 = v243;

      v206 = *(v204 + 56);
      v207 = swift_isUniquelyReferenced_nonNull_native();
      v279 = *(v204 + 56);
      *(v204 + 56) = 0x8000000000000000;
      sub_1002C8688(v203, v205, v207);

      *(v204 + 56) = v279;
      swift_endAccess();
      v208 = *(v271 + 104);
      if (v267 && (v208 & 1) != 0)
      {

        v209 = v258;
        [v258 updateChangeCount];

LABEL_162:
        v74 = 0;
        goto LABEL_163;
      }

      v210 = v205;

      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v211, v212))
      {

        goto LABEL_162;
      }

      v213 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v274 = v267;
      *v213 = v240;
      *(v213 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v274);
      *(v213 + 12) = 1024;
      *(v213 + 14) = v208;

      *(v213 + 18) = 1024;
      *(v213 + 20) = 0;
      *(v213 + 24) = 2114;
      *(v213 + 26) = v210;
      v214 = v265;
      *v265 = v210;
      *(v213 + 34) = 2082;
      v215 = v210;
      sub_1005E2810(v203);

      v216 = Array.description.getter();
      v218 = v217;

      v219 = sub_10000668C(v216, v218, &v274);

      *(v213 + 36) = v219;
      _os_log_impl(&_mh_execute_header, v211, v212, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v213, 0x2Cu);
      sub_1000050A4(v214, &unk_100938E70, &unk_100797230);
      v74 = 0;

      swift_arrayDestroy();

LABEL_163:
      v76 = v250;
      v30 = v271;
      v63 = v262;
      v77 = v248;
      v78 = v247;
      v79 = v246;
    }

    while (v250 != v249);
  }
}

void sub_10062D634(unint64_t a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v276 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v247 - v11;
  v13 = type metadata accessor for UUID();
  v282 = *(v13 - 8);
  v14 = *(v282 + 64);
  __chkstk_darwin(v13);
  v16 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v247 - v18;
  v20 = a3[3];
  v283 = a3[2];
  v285 = v20;
  v21 = a3[4];
  v286 = v3;
  v22 = *(v3 + 72);
  v278 = a2;
  v288[3] = v22;
  v289 = a2;
  v288[2] = &v289;

  v23 = v287;
  v24 = sub_100759CB4(sub_1006B02A8, v288, a1);
  if (v23)
  {
    return;
  }

  v25 = v24;
  v271 = v22;
  v268 = v21;
  v272 = v19;
  v277 = v16;
  v273 = v13;
  v269 = v12;
  v275 = a3;
  v26 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_231;
  }

LABEL_3:
  v27 = type metadata accessor for Logger();
  v28 = sub_100006654(v27, qword_100945730);

  v284 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v25 >> 62;
  v287 = v25;
  if (v31)
  {
    v21 = swift_slowAlloc();
    v281 = swift_slowAlloc();
    v289 = v281;
    *v21 = 136446978;
    *(v21 + 1) = sub_10000668C(0x747265737075, 0xE600000000000000, &v289);
    *(v21 + 6) = 2048;
    if (!v32)
    {
      v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_234;
  }

  while (1)
  {
    v39 = v286;
    v40 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v266 = v27;
    if (!v40)
    {
      break;
    }

    v283 = v32;
    v289 = _swiftEmptyArrayStorage;
    v29 = &v289;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v42 = v25;
      v25 &= 0xC000000000000001;
      v285 = (v42 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v25)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= v285[2])
          {
            goto LABEL_228;
          }

          v44 = *(v287 + 8 * v41 + 32);
        }

        v45 = v44;
        v46 = sub_1005E96B8([v44 remObjectID]);
        if (v26)
        {

          return;
        }

        v21 = v46;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v47 = v289[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v41;
        if (v43 == v40)
        {
          v48 = v289;
          v39 = v286;
          v32 = v283;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_234:
    v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v21 + 14) = v33;

    *(v21 + 11) = 2082;
    type metadata accessor for REMCDTemplate();
    v34 = [swift_getObjCClassFromMetadata() description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v25 = v287;
    v38 = sub_10000668C(v35, v37, &v289);

    *(v21 + 3) = v38;
    *(v21 + 16) = 2082;
    *(v21 + 34) = sub_10000668C(v283, v285, &v289);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_22:
  v49 = *(v39 + 96);
  if (v49 <= 1)
  {
    if (v49)
    {
      if (v49 != 1)
      {
LABEL_238:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v289 = v69;
        *v68 = 136315138;
        v70 = [type metadata accessor for REMCDTemplate() cdEntityName];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v74 = sub_10000668C(v71, v73, &v289);

        *(v68 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v67, "Skipping fetch during upsert {CDType: %s}", v68, 0xCu);
        sub_10000607C(v69);
      }

      v63 = v26;
      v21 = v277;
      v65 = v272;
      v62 = sub_100390D20(_swiftEmptyArrayStorage);
      goto LABEL_38;
    }
  }

  else if ((v49 - 2) >= 3 && v49 != 4499 && v49 != 4599)
  {
    goto LABEL_238;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v285 = v48;
    v53 = v52;
    v54 = swift_slowAlloc();
    v289 = v54;
    *v53 = 136315138;
    v55 = [type metadata accessor for REMCDTemplate() cdEntityName];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v32;
    v59 = v58;

    v60 = sub_10000668C(v56, v59, &v289);
    v32 = v57;

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v50, v51, "Performing fetch during upsert {CDType: %s}", v53, 0xCu);
    sub_10000607C(v54);

    v48 = v285;
  }

  v21 = v277;
  v61 = v26;
  v62 = sub_10066A5A8(v48, v275);
  v63 = v61;

  if (v61)
  {

    return;
  }

  v65 = v272;
LABEL_38:
  v75 = v282;
  if (v32)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
LABEL_219:

      return;
    }
  }

  else
  {
    v76 = *((v287 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v76)
    {
      goto LABEL_219;
    }
  }

  v77 = 0;
  v78 = (v287 & 0xC000000000000001);
  v79 = v287 & 0xFFFFFFFFFFFFFF8;
  v80 = v287 + 32;
  v263 = (v75 + 8);
  v283 = 0x80000001007EA260;
  v282 = 0x80000001007EA240;
  v281 = 0x80000001007EA010;
  v280 = 0x80000001007EA6E0;
  v279 = 0x80000001007E8D40;
  v285 = 0x80000001007E8C60;
  v256 = (v75 + 56);
  v255 = (v75 + 48);
  *&v64 = 136446978;
  v252 = v64;
  *&v64 = 136446210;
  v264 = v64;
  *&v64 = 136447490;
  v253 = v64;
  *&v64 = 136447234;
  v251 = v64;
  v267 = v62;
  v260 = v76;
  v259 = v287 & 0xC000000000000001;
  v258 = v287 & 0xFFFFFFFFFFFFFF8;
  v257 = v287 + 32;
  while (1)
  {
    if (v78)
    {
      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v82 = __OFADD__(v77, 1);
      v83 = v77 + 1;
      if (v82)
      {
        goto LABEL_218;
      }
    }

    else
    {
      if (v77 >= *(v79 + 16))
      {
        __break(1u);
        goto LABEL_236;
      }

      v81 = *(v80 + 8 * v77);
      v82 = __OFADD__(v77, 1);
      v83 = v77 + 1;
      if (v82)
      {
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }
    }

    v84 = v81;
    v265 = sub_1005E96B8([v84 remObjectID]);
    if (v63)
    {

      return;
    }

    v261 = v83;

    v270 = v84;
    v85 = [v84 accountID];
    v86 = [v85 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    v90 = *v263;
    v91 = v65;
    v92 = v273;
    (*v263)(v91, v273);
    v93 = [objc_opt_self() localInternalAccountID];
    v94 = [v93 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = UUID.uuidString.getter();
    v96 = v21;
    v97 = v95;
    v99 = v98;
    v274 = v90;
    v90(v96, v92);
    if (v87 != v97)
    {
      goto LABEL_50;
    }

    if (v89 == v99)
    {

      v100 = v271;
      v25 = v286;
      v101 = v265;
    }

    else
    {
LABEL_50:
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v100 = v271;
      v25 = v286;
      v101 = v265;
      if ((v102 & 1) == 0)
      {
        v21 = v277;
        v104 = v270;
        goto LABEL_58;
      }
    }

    v103 = *(v25 + 68);
    v21 = v277;
    v104 = v270;
    if (v103 >> 14 >= 2)
    {
      v105 = v103 >> 14 == 2 ? *(v25 + 64) : 0x7FFFFFFF;
    }

    else
    {
      v105 = 2147483519;
    }

    sub_100009A40(2, v105);
LABEL_58:
    v106 = sub_100692848(v104, v100, &type metadata for REMTemplateStorageCDIngestor.ValueKey, sub_1005F4E24);
    v262 = 0;
    v26 = v106;
    v107 = sub_1005F6FC8();
    v108 = v267;
    if (!*(v267 + 16))
    {
      break;
    }

    v109 = sub_100393C74(v101);
    if ((v110 & 1) == 0)
    {
      break;
    }

    v111 = *(*(v108 + 56) + 8 * v109);
LABEL_147:
    v164 = *(v26 + 16);
    v274 = v164;
    if (v164)
    {
      v254 = v111;

      v165 = 0;
      while (v165 < *(v26 + 16))
      {
        if (((*(v25 + 64) | (*(v25 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v166 = *(v26 + v165 + 32);
          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            v289 = v170;
            *v169 = v264;
            LOBYTE(v296) = v166;
            v171 = String.init<A>(describing:)();
            v173 = sub_10000668C(v171, v172, &v289);

            *(v169 + 4) = v173;
            v21 = v277;
            _os_log_impl(&_mh_execute_header, v167, v168, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v169, 0xCu);
            sub_10000607C(v170);
          }

          v25 = v286;
          v164 = v274;
        }

        LODWORD(v78) = *(v25 + 64);
        if (*(v25 + 68) >> 14 == 2 && (*(v25 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_237;
          }

          goto LABEL_222;
        }

        if (v164 == ++v165)
        {

          v111 = v254;
          goto LABEL_160;
        }
      }

      goto LABEL_229;
    }

LABEL_160:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v175 = v265;
    v176 = v111;
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();

    v179 = os_log_type_enabled(v177, v178);
    v265 = v176;
    if (v179)
    {
      v249 = v178;
      v250 = v177;
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      v296 = v248;
      *v180 = v253;
      *(v180 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v296);
      *(v180 + 12) = 2082;
      v182 = *(v25 + 40);
      v290 = *(v25 + 24);
      *v291 = v182;
      *&v291[14] = *(v25 + 54);
      sub_100009DAC(&v290, &v289);
      v183 = sub_1000063E8();
      v185 = v184;
      sub_1005812D4(&v290);
      v186 = sub_10000668C(v183, v185, &v296);

      *(v180 + 14) = v186;
      *(v180 + 22) = 2114;
      *(v180 + 24) = v175;
      *v181 = v175;
      *(v180 + 32) = 2112;
      v254 = v175;
      v187 = v175;
      v188 = [v176 objectID];
      *(v180 + 34) = v188;
      v247 = v181;
      v181[1] = v188;
      *(v180 + 42) = 2082;
      v189 = *(v26 + 16);
      if (v189)
      {
        v289 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v189, 0);
        v190 = v289;
        v191 = 32;
        do
        {
          v192 = *(v26 + v191);
          v193 = 0xD00000000000001CLL;
          v194 = 0xD000000000000019;
          if (v192 != 10)
          {
            v194 = 0xD000000000000027;
          }

          v195 = v283;
          if (v192 == 10)
          {
            v195 = v282;
          }

          if (v192 != 9)
          {
            v193 = v194;
          }

          v196 = v281;
          if (v192 != 9)
          {
            v196 = v195;
          }

          v197 = 0xD000000000000015;
          if (v192 == 7)
          {
            v197 = 0x53676E6974726F73;
          }

          v198 = 0xEC000000656C7974;
          if (v192 != 7)
          {
            v198 = v280;
          }

          if (v192 == 6)
          {
            v197 = 0xD000000000000017;
            v198 = v279;
          }

          if (*(v26 + v191) <= 8u)
          {
            v193 = v197;
            v196 = v198;
          }

          v199 = 0x626D456567646162;
          if (v192 == 4)
          {
            v199 = 0x726F6C6F63;
          }

          v200 = 0xEB000000006D656CLL;
          if (v192 == 4)
          {
            v200 = 0xE500000000000000;
          }

          if (v192 == 3)
          {
            v199 = 1701667182;
            v200 = 0xE400000000000000;
          }

          v201 = 0x72756769666E6F63;
          if (v192 == 1)
          {
            v201 = 0xD000000000000017;
          }

          v202 = 0xED00006E6F697461;
          if (v192 == 1)
          {
            v202 = v285;
          }

          if (!*(v26 + v191))
          {
            v201 = 0x44497463656A626FLL;
            v202 = 0xE800000000000000;
          }

          if (*(v26 + v191) <= 2u)
          {
            v199 = v201;
            v200 = v202;
          }

          if (*(v26 + v191) <= 5u)
          {
            v203 = v199;
          }

          else
          {
            v203 = v193;
          }

          if (*(v26 + v191) <= 5u)
          {
            v204 = v200;
          }

          else
          {
            v204 = v196;
          }

          v289 = v190;
          v206 = v190[2];
          v205 = v190[3];
          if (v206 >= v205 >> 1)
          {
            sub_100026EF4((v205 > 1), v206 + 1, 1);
            v190 = v289;
          }

          v190[2] = v206 + 1;
          v207 = &v190[2 * v206];
          v207[4] = v203;
          v207[5] = v204;
          ++v191;
          --v189;
        }

        while (v189);

        v208 = v286;
      }

      else
      {

        v208 = v25;
      }

      v209 = Array.description.getter();
      v211 = v210;

      v212 = sub_10000668C(v209, v211, &v296);

      *(v180 + 44) = v212;
      *(v180 + 52) = 1024;
      LODWORD(v212) = *(v208 + 104);

      *(v180 + 54) = v212;

      v213 = v250;
      _os_log_impl(&_mh_execute_header, v250, v249, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v180, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v21 = v277;
      v25 = v208;
      v176 = v265;
      v175 = v254;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v214 = v262;
    sub_1001D6074(v270, v176, v26, v25);
    if (v214)
    {

      return;
    }

    v215 = [v176 changedValues];
    v216 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v217 = v275;
    swift_beginAccess();
    v218 = v175;

    v219 = v217[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v296 = v217[7];
    v217[7] = 0x8000000000000000;
    sub_1002C8688(v216, v218, isUniquelyReferenced_nonNull_native);

    v217[7] = v296;
    swift_endAccess();
    v221 = *(v25 + 104);
    if (v274 && (v221 & 1) != 0)
    {

      v222 = v265;
      [v265 updateChangeCount];

      v63 = 0;
    }

    else
    {

      v223 = v218;

      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        v289 = v274;
        *v226 = v251;
        *(v226 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v289);
        *(v226 + 12) = 1024;
        *(v226 + 14) = v221;

        *(v226 + 18) = 1024;
        *(v226 + 20) = 0;
        *(v226 + 24) = 2114;
        *(v226 + 26) = v223;
        *v227 = v223;
        *(v226 + 34) = 2082;
        v262 = v223;
        sub_1005E2810(v216);
        v63 = 0;

        v228 = Array.description.getter();
        v230 = v229;

        v231 = sub_10000668C(v228, v230, &v289);

        *(v226 + 36) = v231;
        _os_log_impl(&_mh_execute_header, v224, v225, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v226, 0x2Cu);
        sub_1000050A4(v227, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        v63 = 0;
      }

      v21 = v277;
    }

    v77 = v261;
    v65 = v272;
    v78 = v259;
    v79 = v258;
    v80 = v257;
    if (v261 == v260)
    {
      goto LABEL_219;
    }
  }

  if (v107 == 12)
  {
LABEL_220:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v101];
    swift_willThrow();

    return;
  }

  v25 = 0;
  v21 = *(v26 + 16);
  while (2)
  {
    if (v21 == v25)
    {
      goto LABEL_220;
    }

    if (v25 >= *(v26 + 16))
    {
      goto LABEL_230;
    }

    v113 = *(v26 + v25 + 32);
    if (v113 > 5)
    {
      if (*(v26 + v25 + 32) > 8u)
      {
        if (v113 == 9)
        {
          v118 = 0xD00000000000001CLL;
          v120 = &v296;
        }

        else if (v113 == 10)
        {
          v118 = 0xD000000000000019;
          v120 = &v297;
        }

        else
        {
          v118 = 0xD000000000000027;
          v120 = &v298;
        }
      }

      else if (v113 == 6)
      {
        v118 = 0xD000000000000017;
        v120 = &v294;
      }

      else
      {
        if (v113 == 7)
        {
          v118 = 0x53676E6974726F73;
          v119 = 0xEC000000656C7974;
          goto LABEL_97;
        }

        v118 = 0xD000000000000015;
        v120 = &v295;
      }

      v119 = *(v120 - 32);
    }

    else
    {
      v114 = 0x626D456567646162;
      if (v113 == 4)
      {
        v114 = 0x726F6C6F63;
      }

      v115 = 0xEB000000006D656CLL;
      if (v113 == 4)
      {
        v115 = 0xE500000000000000;
      }

      if (v113 == 3)
      {
        v114 = 1701667182;
        v115 = 0xE400000000000000;
      }

      v116 = 0x72756769666E6F63;
      if (v113 == 1)
      {
        v116 = 0xD000000000000017;
      }

      v117 = 0xED00006E6F697461;
      if (v113 == 1)
      {
        v117 = v285;
      }

      if (!*(v26 + v25 + 32))
      {
        v116 = 0x44497463656A626FLL;
        v117 = 0xE800000000000000;
      }

      if (*(v26 + v25 + 32) <= 2u)
      {
        v118 = v116;
      }

      else
      {
        v118 = v114;
      }

      if (*(v26 + v25 + 32) <= 2u)
      {
        v119 = v117;
      }

      else
      {
        v119 = v115;
      }
    }

LABEL_97:
    if (v107 > 5u)
    {
      v121 = 0xD00000000000001CLL;
      v126 = 0xD000000000000019;
      if (v107 != 10)
      {
        v126 = 0xD000000000000027;
      }

      v127 = v283;
      if (v107 == 10)
      {
        v127 = v282;
      }

      if (v107 != 9)
      {
        v121 = v126;
      }

      v122 = v281;
      if (v107 != 9)
      {
        v122 = v127;
      }

      v123 = 0xD000000000000015;
      if (v107 == 7)
      {
        v123 = 0x53676E6974726F73;
      }

      v124 = 0xEC000000656C7974;
      if (v107 != 7)
      {
        v124 = v280;
      }

      if (v107 == 6)
      {
        v123 = 0xD000000000000017;
        v124 = v279;
      }

      v125 = v107 <= 8u;
    }

    else
    {
      v121 = 0x626D456567646162;
      if (v107 == 4)
      {
        v121 = 0x726F6C6F63;
      }

      v122 = 0xEB000000006D656CLL;
      if (v107 == 4)
      {
        v122 = 0xE500000000000000;
      }

      if (v107 == 3)
      {
        v121 = 1701667182;
        v122 = 0xE400000000000000;
      }

      v123 = 0x72756769666E6F63;
      if (v107 == 1)
      {
        v123 = 0xD000000000000017;
      }

      v124 = 0xED00006E6F697461;
      if (v107 == 1)
      {
        v124 = v285;
      }

      if (!v107)
      {
        v123 = 0x44497463656A626FLL;
        v124 = 0xE800000000000000;
      }

      v125 = v107 <= 2u;
    }

    if (v125)
    {
      v128 = v123;
    }

    else
    {
      v128 = v121;
    }

    if (v125)
    {
      v129 = v124;
    }

    else
    {
      v129 = v122;
    }

    if (v118 != v128 || v119 != v129)
    {
      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v25;
      if (v112)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

LABEL_135:
  v130 = *(v286 + 88);
  type metadata accessor for REMCDTemplate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v132 = [ObjCClassFromMetadata entity];
  v133 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v132 insertIntoManagedObjectContext:v130];
  v134 = v268;
  v135 = v133;
  [v130 assignObject:v135 toPersistentStore:v134];

  v136 = v135;
  v137 = [v101 uuid];
  v138 = v269;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v139 = v273;
  (*v256)(v138, 0, 1, v273);
  v140 = v276;
  sub_10018E470(v138, v276);
  isa = 0;
  if ((*v255)(v140, 1, v139) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v274)(v140, v139);
  }

  [v136 setIdentifier:{isa, v247}];

  sub_1000050A4(v138, &unk_100939D90, "8\n\r");
  v142 = v286;

  v143 = v101;
  v111 = v136;
  v78 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    v296 = v274;
    *v145 = v252;
    *(v145 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v296);
    *(v145 + 12) = 2082;
    v147 = *(v142 + 40);
    v292 = *(v142 + 24);
    *v293 = v147;
    *&v293[14] = *(v142 + 54);
    sub_100009DAC(&v292, &v289);
    v148 = sub_1000063E8();
    v150 = v149;
    sub_1005812D4(&v292);
    v151 = sub_10000668C(v148, v150, &v296);

    *(v145 + 14) = v151;
    *(v145 + 22) = 2114;
    *(v145 + 24) = v143;
    *v146 = v143;
    *(v145 + 32) = 2112;
    v152 = v143;
    v153 = [v111 objectID];
    *(v145 + 34) = v153;
    v146[1] = v153;
    _os_log_impl(&_mh_execute_header, v78, v144, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v145, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  LOWORD(v78) = v278;
  v21 = v277;
  v154 = v275;
  swift_beginAccess();
  v155 = v154[6];
  if ((v155 & 0xC000000000000001) == 0)
  {
    v161 = v154[6];
    v162 = v143;
    v160 = v275;
    goto LABEL_146;
  }

  if (v155 < 0)
  {
    v156 = v154[6];
  }

  else
  {
    v156 = v155 & 0xFFFFFFFFFFFFFF8;
  }

  v157 = v143;
  v158 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v158, 1))
  {
    v159 = sub_10021CDBC(v156, v158 + 1);
    v160 = v275;
    v275[6] = v159;
LABEL_146:
    v163 = swift_isUniquelyReferenced_nonNull_native();
    v296 = v160[6];
    sub_1002C8398(v111, v143, v163);
    v160[6] = v296;

    swift_endAccess();
    v25 = v286;
    goto LABEL_147;
  }

LABEL_236:
  __break(1u);
LABEL_237:
  swift_once();
LABEL_222:
  sub_100006654(v266, qword_100950D98);
  v232 = Logger.logObject.getter();
  v233 = static os_log_type_t.error.getter();
  v234 = os_log_type_enabled(v232, v233);
  v235 = v265;
  if (v234)
  {
    v236 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    *v236 = 136446466;
    v237 = sub_100729CB0(1);
    v239 = sub_10000668C(v237, v238, &v289);

    *(v236 + 4) = v239;
    *(v236 + 12) = 2082;
    v240 = sub_100729CB0(v78);
    v242 = sub_10000668C(v240, v241, &v289);

    *(v236 + 14) = v242;
    _os_log_impl(&_mh_execute_header, v232, v233, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v236, 0x16u);
    swift_arrayDestroy();
  }

  v243 = objc_opt_self();
  v244 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v245 = String._bridgeToObjectiveC()();

  sub_100729CB0(v78);
  v246 = String._bridgeToObjectiveC()();

  [v243 unauthorizedErrorWithMissingEntitlement:v244 requestedAccessLevel:v245 currentAccesslevel:v246];

  swift_willThrow();
  swift_bridgeObjectRelease_n();
}

void sub_10062F878(unint64_t a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v265 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v232 - v11;
  v13 = type metadata accessor for UUID();
  v266 = *(v13 - 8);
  v14 = *(v266 + 8);
  __chkstk_darwin(v13);
  v16 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v232 - v18;
  v20 = a3[3];
  v267 = a3[2];
  v269 = v20;
  v21 = a3[4];
  v270 = v3;
  v22 = *(v3 + 72);
  v264 = a2;
  v272[3] = v22;
  v273 = a2;
  v272[2] = &v273;

  v23 = v271;
  v24 = sub_100759CB4(sub_1006B02C4, v272, a1);
  if (v23)
  {
    return;
  }

  v25 = v24;
  v258 = v22;
  v259 = v21;
  v260 = v19;
  v262 = v16;
  v261 = v13;
  v256 = v12;
  v263 = a3;
  v26 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_184;
  }

LABEL_3:
  v27 = type metadata accessor for Logger();
  v28 = sub_100006654(v27, qword_100945730);
  v29 = v25;

  v268 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = (v25 >> 62);
  v271 = v25;
  if (v32)
  {
    v25 = swift_slowAlloc();
    v257 = swift_slowAlloc();
    v273 = v257;
    *v25 = 136446978;
    *(v25 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
    *(v25 + 12) = 2048;
    if (!v33)
    {
      v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_187;
  }

  while (1)
  {
    v267 = v33;
    v40 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v255 = v27;
    if (!v40)
    {
      break;
    }

    v273 = _swiftEmptyArrayStorage;
    v30 = &v273;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v42 = v29;
      v43 = v29 & 0xC000000000000001;
      v269 = (v42 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v25 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v43)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= v269[2])
          {
            goto LABEL_181;
          }

          v44 = *(v271 + 8 * v41 + 32);
        }

        v45 = v44;
        sub_1005E3810([v44 remObjectID], &unk_10093F770, off_1008D41E8);
        if (v26)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = v273[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v41;
        if (v25 == v40)
        {
          v47 = v273;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_187:
    v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v25 + 14) = v34;

    *(v25 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v35 = [swift_getObjCClassFromMetadata() description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v29 = v271;
    v39 = sub_10000668C(v36, v38, &v273);

    *(v25 + 24) = v39;
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_10000668C(v267, v269, &v273);
    _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v25, 0x2Au);
    swift_arrayDestroy();
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_22:
  v48 = *(v270 + 96);
  if (v48 <= 1)
  {
    if (v48)
    {
      if (v48 != 1)
      {
LABEL_191:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v273 = v68;
        *v67 = 136315138;
        v69 = [objc_opt_self() cdEntityName];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v73 = sub_10000668C(v70, v72, &v273);

        *(v67 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v65, v66, "Skipping fetch during upsert {CDType: %s}", v67, 0xCu);
        sub_10000607C(v68);
      }

      v61 = v26;
      v58 = v262;
      v63 = v260;
      v74 = v267;
      v60 = sub_100390D34(_swiftEmptyArrayStorage);
      if (!v74)
      {
        goto LABEL_33;
      }

LABEL_38:
      v64 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_39;
    }
  }

  else if ((v48 - 2) >= 3 && v48 != 4499 && v48 != 4599)
  {
    goto LABEL_191;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v273 = v52;
    *v51 = 136315138;
    v53 = [objc_opt_self() cdEntityName];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_10000668C(v54, v56, &v273);

    *(v51 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "Performing fetch during upsert {CDType: %s}", v51, 0xCu);
    sub_10000607C(v52);
  }

  v58 = v262;
  v59 = v267;
  v60 = sub_10066AE78(v47, v263);
  v61 = v26;

  if (v26)
  {
    goto LABEL_174;
  }

  v63 = v260;
  if (v59)
  {
    goto LABEL_38;
  }

LABEL_33:
  v64 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
  if (!v64)
  {
    goto LABEL_169;
  }

  v75 = 0;
  v76 = v271 & 0xC000000000000001;
  v77 = v271 & 0xFFFFFFFFFFFFFF8;
  v78 = v271 + 32;
  v246 = v266 + 8;
  v252 = 0x80000001007EA260;
  v251 = 0x80000001007EA240;
  v250 = 0x80000001007EA010;
  v249 = 0x80000001007E8D40;
  v248 = 0x80000001007E8C60;
  v240 = v266 + 56;
  v239 = (v266 + 48);
  *&v62 = 136446978;
  v237 = v62;
  *&v62 = 136446210;
  v253 = v62;
  *&v62 = 136447490;
  v238 = v62;
  *&v62 = 136447234;
  v236 = v62;
  v254 = v60;
  v244 = v64;
  v243 = v271 & 0xC000000000000001;
  v242 = v271 & 0xFFFFFFFFFFFFFF8;
  v241 = v271 + 32;
  while (1)
  {
    if (v76)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v80 = __OFADD__(v75, 1);
      v81 = (&v75->isa + 1);
      if (v80)
      {
        goto LABEL_168;
      }
    }

    else
    {
      if (v75 >= *(v77 + 16))
      {
        __break(1u);
        goto LABEL_189;
      }

      v79 = *(v78 + 8 * v75);
      v80 = __OFADD__(v75, 1);
      v81 = (&v75->isa + 1);
      if (v80)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }
    }

    v82 = v79;
    v257 = sub_1005E3810([v82 remObjectID], &unk_10093F770, off_1008D41E8);
    v267 = v61;
    if (v61)
    {

      return;
    }

    v245 = v81;

    v266 = v82;
    v83 = [v82 accountID];
    v84 = [v83 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = UUID.uuidString.getter();
    v87 = v86;
    v88 = v58;
    v89 = *v246;
    v90 = v63;
    v91 = v261;
    (*v246)(v90, v261);
    v92 = [objc_opt_self() localInternalAccountID];
    v93 = [v92 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = UUID.uuidString.getter();
    v96 = v95;
    v269 = v89;
    (v89)(v88, v91);
    if (v85 != v94)
    {
      goto LABEL_48;
    }

    if (v87 == v96)
    {
    }

    else
    {
LABEL_48:
      v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v97 & 1) == 0)
      {
        v99 = v267;
        v26 = v270;
        v25 = v259;
        v101 = v258;
        goto LABEL_57;
      }
    }

    v26 = v270;
    v98 = *(v270 + 68);
    v99 = v267;
    if (v98 >> 14 >= 2)
    {
      v25 = v259;
      if (v98 >> 14 == 2)
      {
        v100 = *(v270 + 64);
      }

      else
      {
        v100 = 0x7FFFFFFF;
      }
    }

    else
    {
      v100 = 2147483519;
      v25 = v259;
    }

    sub_100009A40(2, v100);
    if (v99)
    {

      goto LABEL_174;
    }

    v101 = v258;
LABEL_57:
    v102 = sub_100692848(v266, v101, &type metadata for REMSmartListStorageCDIngestor.ValueKey, sub_1005F53DC);
    v267 = v99;
    if (v99)
    {

      return;
    }

    v103 = v102;
    v104 = sub_1005F731C();
    v105 = v254;
    if (!*(v254 + 16))
    {
      break;
    }

    v106 = sub_100393C74(v257);
    if ((v107 & 1) == 0)
    {
      break;
    }

    v247 = *(*(v105 + 56) + 8 * v106);
LABEL_119:
    v154 = *(v103 + 16);
    v269 = v154;
    if (!v154)
    {
      goto LABEL_132;
    }

    for (i = 0; i != v154; ++i)
    {
      if (i >= *(v103 + 16))
      {
        goto LABEL_182;
      }

      if (((*(v26 + 64) | (*(v26 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v25 = *(v103 + i + 32);
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v273 = v159;
          *v158 = v253;
          LOBYTE(v281) = v25;
          v160 = String.init<A>(describing:)();
          v162 = sub_10000668C(v160, v161, &v273);

          *(v158 + 4) = v162;
          v26 = v270;
          _os_log_impl(&_mh_execute_header, v156, v157, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v158, 0xCu);
          sub_10000607C(v159);
        }

        v154 = v269;
      }

      LODWORD(v64) = *(v26 + 64);
      if (*(v26 + 68) >> 14 == 2 && (*(v26 + 64) & 1) == 0)
      {
        if (qword_1009367A0 != -1)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

LABEL_132:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v164 = v257;
    v165 = v247;
    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.default.getter();

    v168 = os_log_type_enabled(v166, v167);
    v257 = v165;
    if (v168)
    {
      v234 = v167;
      v235 = v166;
      v169 = v26;
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v281 = v233;
      *v170 = v238;
      *(v170 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v281);
      *(v170 + 12) = 2082;
      v172 = *(v169 + 40);
      v277 = *(v169 + 24);
      *v278 = v172;
      *&v278[14] = *(v169 + 54);
      sub_100009DAC(&v277, &v273);
      v173 = sub_1000063E8();
      v175 = v174;
      sub_1005812D4(&v277);
      v176 = sub_10000668C(v173, v175, &v281);

      *(v170 + 14) = v176;
      *(v170 + 22) = 2114;
      *(v170 + 24) = v164;
      *v171 = v164;
      *(v170 + 32) = 2112;
      v247 = v164;
      v177 = v164;
      v178 = [v165 objectID];
      *(v170 + 34) = v178;
      v232 = v171;
      v171[1] = v178;
      *(v170 + 42) = 2082;
      v179 = *(v103 + 16);
      if (v179)
      {
        v273 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v179, 0);
        v180 = v273;
        v181 = 32;
        do
        {
          v182 = 0xE800000000000000;
          v183 = 0x44497463656A626FLL;
          switch(*(v103 + v181))
          {
            case 1:
              v183 = 0xD000000000000017;
              v184 = &v274;
              goto LABEL_148;
            case 2:
              v183 = 0x73694C7472616D73;
              v182 = 0xED00006570795474;
              break;
            case 3:
              v183 = 0x53676E6974726F73;
              v182 = 0xEC000000656C7974;
              break;
            case 4:
              v182 = 0xEA00000000006574;
              v183 = 0x614464656E6E6970;
              break;
            case 5:
              v183 = 0x724F6C61756E616DLL;
              v182 = 0xEE00676E69726564;
              break;
            case 6:
              v182 = 0xE400000000000000;
              v183 = 1701667182;
              break;
            case 7:
              v182 = 0xE500000000000000;
              v183 = 0x726F6C6F63;
              break;
            case 8:
              v183 = 0x626D456567646162;
              v182 = 0xEB000000006D656CLL;
              break;
            case 9:
              v183 = 0x61447265746C6966;
              v182 = 0xEA00000000006174;
              break;
            case 0xA:
              v183 = 0xD000000000000017;
              v184 = &v275;
              goto LABEL_148;
            case 0xB:
              v183 = 0xD00000000000001CLL;
              v184 = &v276;
              goto LABEL_148;
            case 0xC:
              v183 = 0xD000000000000019;
              v184 = &v277;
              goto LABEL_148;
            case 0xD:
              v183 = 0xD000000000000027;
              v184 = &v277 + 8;
LABEL_148:
              v182 = *(v184 - 32);
              break;
            default:
              break;
          }

          v273 = v180;
          v186 = v180[2];
          v185 = v180[3];
          if (v186 >= v185 >> 1)
          {
            sub_100026EF4((v185 > 1), v186 + 1, 1);
            v180 = v273;
          }

          v180[2] = v186 + 1;
          v187 = &v180[2 * v186];
          v187[4] = v183;
          v187[5] = v182;
          ++v181;
          --v179;
        }

        while (v179);
      }

      v188 = Array.description.getter();
      v190 = v189;

      v191 = sub_10000668C(v188, v190, &v281);

      *(v170 + 44) = v191;
      *(v170 + 52) = 1024;
      v192 = v270;
      LODWORD(v191) = *(v270 + 104);

      *(v170 + 54) = v191;

      v193 = v235;
      _os_log_impl(&_mh_execute_header, v235, v234, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v170, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v26 = v192;

      v165 = v257;
      v164 = v247;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v194 = v267;
    sub_10022C398(v266, v165, v103, v26);
    if (v194)
    {

      return;
    }

    v195 = [v165 changedValues];
    v196 = v164;
    v197 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v198 = v263;
    swift_beginAccess();
    v199 = v196;

    v200 = v198[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v281 = v198[7];
    v198[7] = 0x8000000000000000;
    sub_1002C8688(v197, v199, isUniquelyReferenced_nonNull_native);

    v198[7] = v281;
    swift_endAccess();
    v202 = *(v26 + 104);
    if (v269 && (v202 & 1) != 0)
    {

      v203 = v257;
      [v257 updateChangeCount];
    }

    else
    {

      v204 = v199;

      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v267 = v205;
        v209 = v208;
        v269 = swift_slowAlloc();
        v273 = v269;
        *v207 = v236;
        *(v207 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v273);
        *(v207 + 12) = 1024;
        *(v207 + 14) = v202;

        *(v207 + 18) = 1024;
        *(v207 + 20) = 0;
        *(v207 + 24) = 2114;
        *(v207 + 26) = v204;
        *v209 = v204;
        *(v207 + 34) = 2082;
        v210 = v204;
        sub_1005E2810(v197);

        v211 = Array.description.getter();
        v213 = v212;

        v214 = sub_10000668C(v211, v213, &v273);

        *(v207 + 36) = v214;
        v215 = v267;
        _os_log_impl(&_mh_execute_header, v267, v206, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v207, 0x2Cu);
        sub_1000050A4(v209, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v216 = &v279 + 1;
      }

      else
      {

        v216 = &v282;
      }
    }

    v61 = 0;
    v76 = v243;
    v77 = v242;
    LOWORD(v64) = v244;
    v75 = v245;
    v58 = v262;
    v63 = v260;
    v78 = v241;
    if (v245 == v244)
    {
LABEL_169:

      goto LABEL_174;
    }
  }

  v108 = v104;
  v109 = 0;
  v110 = *(v103 + 16);
  while (2)
  {
    if (v110 == v109)
    {
LABEL_64:

      v230 = objc_opt_self();
      v231 = v257;
      [v230 noSuchObjectErrorWithObjectID:v257];
      swift_willThrow();

      return;
    }

    v112 = v108;
    if (v109 >= *(v103 + 16))
    {
      goto LABEL_183;
    }

    v113 = 0xE800000000000000;
    v114 = 0x44497463656A626FLL;
    v115 = 0x44497463656A626FLL;
    switch(*(v103 + v109 + 32))
    {
      case 1:
        v115 = 0xD000000000000017;
        v116 = &v274;
        goto LABEL_79;
      case 2:
        v115 = 0x73694C7472616D73;
        v113 = 0xED00006570795474;
        break;
      case 3:
        v115 = 0x53676E6974726F73;
        v113 = 0xEC000000656C7974;
        break;
      case 4:
        v113 = 0xEA00000000006574;
        v115 = 0x614464656E6E6970;
        break;
      case 5:
        v115 = 0x724F6C61756E616DLL;
        v113 = 0xEE00676E69726564;
        break;
      case 6:
        v113 = 0xE400000000000000;
        v115 = 1701667182;
        break;
      case 7:
        v113 = 0xE500000000000000;
        v115 = 0x726F6C6F63;
        break;
      case 8:
        v115 = 0x626D456567646162;
        v113 = 0xEB000000006D656CLL;
        break;
      case 9:
        v115 = 0x61447265746C6966;
        v113 = 0xEA00000000006174;
        break;
      case 0xA:
        v115 = 0xD000000000000017;
        v116 = &v275;
        goto LABEL_79;
      case 0xB:
        v115 = 0xD00000000000001CLL;
        v116 = &v276;
        goto LABEL_79;
      case 0xC:
        v115 = 0xD000000000000019;
        v116 = &v277;
        goto LABEL_79;
      case 0xD:
        v115 = 0xD000000000000027;
        v116 = &v277 + 8;
LABEL_79:
        v113 = *(v116 - 32);
        break;
      default:
        break;
    }

    v117 = 0xE800000000000000;
    switch(v112)
    {
      case 0:
        goto LABEL_101;
      case 1:
        v114 = 0xD000000000000017;
        v118 = &v274;
        goto LABEL_100;
      case 2:
        v117 = 0xED00006570795474;
        if (v115 != 0x73694C7472616D73)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 3:
        v117 = 0xEC000000656C7974;
        if (v115 != 0x53676E6974726F73)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 4:
        v117 = 0xEA00000000006574;
        if (v115 != 0x614464656E6E6970)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 5:
        v117 = 0xEE00676E69726564;
        if (v115 != 0x724F6C61756E616DLL)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 6:
        v117 = 0xE400000000000000;
        if (v115 != 1701667182)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 7:
        v117 = 0xE500000000000000;
        if (v115 != 0x726F6C6F63)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 8:
        v117 = 0xEB000000006D656CLL;
        if (v115 != 0x626D456567646162)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 9:
        v117 = 0xEA00000000006174;
        if (v115 != 0x61447265746C6966)
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      case 10:
        v114 = 0xD000000000000017;
        v118 = &v275;
        goto LABEL_100;
      case 11:
        v114 = 0xD00000000000001CLL;
        v118 = &v276;
        goto LABEL_100;
      case 12:
        v114 = 0xD000000000000019;
        v118 = &v277;
        goto LABEL_100;
      case 13:
        v114 = 0xD000000000000027;
        v118 = &v277 + 8;
LABEL_100:
        v117 = *(v118 - 32);
LABEL_101:
        if (v115 != v114)
        {
          goto LABEL_62;
        }

LABEL_102:
        if (v113 != v117)
        {
LABEL_62:
          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v109;
          if (v111)
          {
            goto LABEL_107;
          }

          continue;
        }

LABEL_107:
        v119 = *(v26 + 88);
        sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v121 = [ObjCClassFromMetadata entity];
        v122 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v121 insertIntoManagedObjectContext:v119];
        v123 = v25;
        v124 = v122;
        [v119 assignObject:v124 toPersistentStore:v123];

        v125 = v124;
        v126 = [v257 uuid];
        v127 = v256;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v128 = v261;
        (*v240)(v127, 0, 1, v261);
        v129 = v265;
        sub_10018E470(v127, v265);
        isa = 0;
        if ((*v239)(v129, 1, v128) != 1)
        {
          v131 = v265;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v269)(v131, v128);
        }

        [v125 setIdentifier:{isa, v232}];

        sub_1000050A4(v127, &unk_100939D90, "8\n\r");

        v132 = v257;
        v25 = v125;
        v64 = Logger.logObject.getter();
        v133 = static os_log_type_t.default.getter();

        v134 = os_log_type_enabled(v64, v133);
        v247 = v25;
        if (v134)
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v281 = v269;
          *v135 = v237;
          *(v135 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v281);
          *(v135 + 12) = 2082;
          v137 = *(v270 + 40);
          v279 = *(v270 + 24);
          *v280 = v137;
          *&v280[14] = *(v270 + 54);
          sub_100009DAC(&v279, &v273);
          LODWORD(v235) = v133;
          v138 = sub_1000063E8();
          v140 = v139;
          sub_1005812D4(&v279);
          v141 = sub_10000668C(v138, v140, &v281);

          *(v135 + 14) = v141;
          *(v135 + 22) = 2114;
          *(v135 + 24) = v132;
          *v136 = v132;
          *(v135 + 32) = 2112;
          v142 = v132;
          v143 = [v25 objectID];
          *(v135 + 34) = v143;
          v136[1] = v143;
          _os_log_impl(&_mh_execute_header, v64, v235, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v135, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
          v26 = v270;

          swift_arrayDestroy();
        }

        v144 = v263;
        swift_beginAccess();
        v145 = v144[6];
        if ((v145 & 0xC000000000000001) == 0)
        {
          v151 = v144[6];
          v152 = v132;
          v150 = v263;
LABEL_118:
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v281 = v150[6];
          sub_1002C8398(v247, v132, v153);
          v150[6] = v281;

          swift_endAccess();
          goto LABEL_119;
        }

        if (v145 < 0)
        {
          v146 = v144[6];
        }

        else
        {
          v146 = v145 & 0xFFFFFFFFFFFFFF8;
        }

        v147 = v132;
        v148 = __CocoaDictionary.count.getter();
        if (!__OFADD__(v148, 1))
        {
          v149 = sub_10021CDBC(v146, v148 + 1);
          v150 = v263;
          v263[6] = v149;
          goto LABEL_118;
        }

LABEL_189:
        __break(1u);
LABEL_190:
        swift_once();
LABEL_171:
        sub_100006654(v255, qword_100950D98);
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          v273 = swift_slowAlloc();
          *v219 = 136446466;
          v220 = sub_100729CB0(1);
          v222 = sub_10000668C(v220, v221, &v273);

          *(v219 + 4) = v222;
          *(v219 + 12) = 2082;
          v223 = sub_100729CB0(v64);
          v225 = sub_10000668C(v223, v224, &v273);

          *(v219 + 14) = v225;
          _os_log_impl(&_mh_execute_header, v217, v218, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v219, 0x16u);
          swift_arrayDestroy();
        }

        v226 = objc_opt_self();
        v227 = String._bridgeToObjectiveC()();
        sub_100729CB0(1);
        v228 = String._bridgeToObjectiveC()();

        sub_100729CB0(v64);
        v229 = String._bridgeToObjectiveC()();

        [v226 unauthorizedErrorWithMissingEntitlement:v227 requestedAccessLevel:v228 currentAccesslevel:v229];

        swift_willThrow();
        swift_bridgeObjectRelease_n();

LABEL_174:

        return;
      default:
        goto LABEL_64;
    }
  }
}

void sub_100631BBC(unint64_t a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v265 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v229 - v11;
  v13 = type metadata accessor for UUID();
  v266 = *(v13 - 8);
  v14 = v266[8];
  __chkstk_darwin(v13);
  v16 = &v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v229 - v18;
  v20 = a3[3];
  v267 = a3[2];
  v270 = v20;
  v21 = a3[4];
  v271 = v3;
  v22 = *(v3 + 72);
  v269 = a2;
  v276 = v22;
  v277 = a2;
  v275 = &v277;

  v23 = v272;
  v24 = sub_100759CB4(sub_1006B02E0, &v273, a1);
  if (!v23)
  {
    v25 = v24;
    v259 = v22;
    v260 = v21;
    v262 = v19;
    v261 = v16;
    v263 = v13;
    v258 = v12;
    v264 = a3;
    v26 = 0;
    if (qword_100936008 != -1)
    {
      goto LABEL_192;
    }

LABEL_3:
    v27 = type metadata accessor for Logger();
    v28 = sub_100006654(v27, qword_100945730);

    v268 = v28;
    v29 = Logger.logObject.getter();
    LOBYTE(v30) = static os_log_type_t.info.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = (v25 >> 62);
    v272 = v25;
    if (v31)
    {
      v21 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      v277 = v257;
      *v21 = 136446978;
      *(v21 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v277);
      *(v21 + 12) = 2048;
      if (!v32)
      {
        v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_195;
    }

    while (1)
    {
      v39 = v271;
      v40 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = _swiftEmptyArrayStorage;
      v256 = v27;
      if (!v40)
      {
        break;
      }

      v267 = v32;
      v277 = _swiftEmptyArrayStorage;
      v29 = &v277;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v40 & 0x8000000000000000) == 0)
      {
        v41 = 0;
        v42 = v25;
        v25 &= 0xC000000000000001;
        v270 = (v42 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v25)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v41 >= *(v270 + 2))
            {
              goto LABEL_189;
            }

            v44 = *(v272 + 8 * v41 + 32);
          }

          v45 = v44;
          v46 = sub_1005EA438([v44 remObjectID]);
          if (v26)
          {

            return;
          }

          v21 = v46;

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = v277[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v41;
          if (v43 == v40)
          {
            v30 = v277;
            v39 = v271;
            v32 = v267;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_195:
      v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v21 + 14) = v33;

      *(v21 + 22) = 2082;
      type metadata accessor for REMCDSavedReminder();
      v34 = [swift_getObjCClassFromMetadata() description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v25 = v272;
      v38 = sub_10000668C(v35, v37, &v277);

      *(v21 + 24) = v38;
      *(v21 + 32) = 2082;
      *(v21 + 34) = sub_10000668C(v267, v270, &v277);
      _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
      swift_arrayDestroy();
    }

LABEL_21:
    v48 = *(v39 + 96);
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 != 1)
        {
LABEL_198:
          sub_1001F67C8(_swiftEmptyArrayStorage);
          sub_1001F67C8(_swiftEmptyArrayStorage);
          sub_10054573C("unknown mode", 12, 2);
          __break(1u);
          return;
        }

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v277 = v69;
          *v68 = 136315138;
          v70 = [type metadata accessor for REMCDSavedReminder() cdEntityName];
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = sub_10000668C(v71, v73, &v277);

          *(v68 + 4) = v74;
          _os_log_impl(&_mh_execute_header, v66, v67, "Skipping fetch during upsert {CDType: %s}", v68, 0xCu);
          sub_10000607C(v69);
        }

        v62 = v26;
        v64 = v262;
        v65 = v266;
        v61 = sub_100390D48(_swiftEmptyArrayStorage);
LABEL_36:
        v75 = v62;
        if (v32)
        {
          v76 = _CocoaArrayWrapper.endIndex.getter();
          if (!v76)
          {
LABEL_180:

LABEL_185:

            return;
          }
        }

        else
        {
          v76 = *((v272 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v76)
          {
            goto LABEL_180;
          }
        }

        v77 = 0;
        v254 = (v65 + 1);
        v250 = 0x80000001007EA630;
        v249 = 0x80000001007EA610;
        v248 = 0x80000001007E8FD0;
        v247 = 0x80000001007EA5E0;
        v246 = 0x80000001007EA5C0;
        v245 = 0x80000001007EA5A0;
        v244 = 0x80000001007EA570;
        v243 = 0x80000001007E8C60;
        v242 = 0x80000001007EA4D0;
        *&v63 = 136446978;
        v234 = v63;
        *&v63 = 136446210;
        v255 = v63;
        *&v63 = 136447490;
        v235 = v63;
        *&v63 = 136447234;
        v233 = v63;
        v237 = (v65 + 7);
        v236 = (v65 + 6);
        v78 = v272 & 0xC000000000000001;
        v79 = v272 & 0xFFFFFFFFFFFFFF8;
        v80 = v272 + 32;
        v257 = v61;
        v241 = v76;
        v240 = v272 & 0xC000000000000001;
        v239 = v272 & 0xFFFFFFFFFFFFFF8;
        v238 = v272 + 32;
        while (1)
        {
          if (v78)
          {
            v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v82 = __OFADD__(v77, 1);
            v83 = v77 + 1;
            if (v82)
            {
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }
          }

          else
          {
            if (v77 >= *(v79 + 16))
            {
              __break(1u);
LABEL_197:
              swift_once();
LABEL_182:
              sub_100006654(v256, qword_100950D98);
              v212 = Logger.logObject.getter();
              v213 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v212, v213))
              {
                v214 = swift_slowAlloc();
                v277 = swift_slowAlloc();
                *v214 = 136446466;
                v215 = sub_100729CB0(1);
                v217 = sub_10000668C(v215, v216, &v277);

                *(v214 + 4) = v217;
                *(v214 + 12) = 2082;
                v218 = sub_100729CB0(v78);
                v220 = sub_10000668C(v218, v219, &v277);

                *(v214 + 14) = v220;
                _os_log_impl(&_mh_execute_header, v212, v213, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v214, 0x16u);
                swift_arrayDestroy();
              }

              v221 = v251;
              v222 = objc_opt_self();
              v223 = String._bridgeToObjectiveC()();
              sub_100729CB0(1);
              v224 = String._bridgeToObjectiveC()();

              sub_100729CB0(v78);
              v225 = String._bridgeToObjectiveC()();

              [v222 unauthorizedErrorWithMissingEntitlement:v223 requestedAccessLevel:v224 currentAccesslevel:v225];

              swift_willThrow();
              swift_bridgeObjectRelease_n();

              goto LABEL_185;
            }

            v81 = *(v80 + 8 * v77);
            v82 = __OFADD__(v77, 1);
            v83 = v77 + 1;
            if (v82)
            {
              goto LABEL_179;
            }
          }

          v84 = v81;
          v267 = sub_1005EA438([v84 remObjectID]);
          if (v75)
          {

            return;
          }

          v252 = v83;

          v266 = v84;
          v85 = [v84 accountID];
          v86 = [v85 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = UUID.uuidString.getter();
          v89 = v88;
          v90 = *v254;
          v91 = v64;
          v92 = v263;
          (*v254)(v91, v263);
          v93 = [objc_opt_self() localInternalAccountID];
          v94 = [v93 uuid];

          v95 = v261;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v96 = UUID.uuidString.getter();
          v98 = v97;
          v270 = v90;
          v90(v95, v92);
          if (v87 == v96 && v89 == v98)
          {

            v21 = v260;
            v25 = v271;
          }

          else
          {
            v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v21 = v260;
            v25 = v271;
            if ((v99 & 1) == 0)
            {
              v103 = v259;
              v101 = v266;
              goto LABEL_56;
            }
          }

          v100 = *(v25 + 68);
          v101 = v266;
          if (v100 >> 14 >= 2)
          {
            if (v100 >> 14 == 2)
            {
              v102 = *(v25 + 64);
            }

            else
            {
              v102 = 0x7FFFFFFF;
            }
          }

          else
          {
            v102 = 2147483519;
          }

          sub_100009A40(2, v102);
          v103 = v259;
LABEL_56:
          v104 = sub_100692848(v101, v103, &type metadata for REMSavedReminderStorageCDIngestor.ValueKey, sub_1005F5C88);
          v253 = 0;
          v26 = v104;
          v105 = sub_1005F7B78();
          v106 = v257;
          v107 = v105;
          if (v257[2] && (v108 = sub_100393C74(v267), (v109 & 1) != 0))
          {
            v251 = *(v106[7] + 8 * v108);
            v21 = 0x800000000000;
          }

          else
          {
            v110 = v107;
            v25 = 0;
            v111 = *(v26 + 16);
            while (1)
            {
              if (v111 == v25)
              {
LABEL_62:

                v226 = v266;

                v227 = objc_opt_self();
                v228 = v267;
                [v227 noSuchObjectErrorWithObjectID:v267];
                swift_willThrow();

                return;
              }

              v113 = v110;
              if (v25 >= *(v26 + 16))
              {
                goto LABEL_191;
              }

              v114 = 0xE600000000000000;
              v115 = 0x7961446C6C61;
              v116 = 0x7961446C6C61;
              switch(*(v26 + v25 + 32))
              {
                case 1:
                  v116 = 0xD000000000000010;
                  v118 = &v272;
                  goto LABEL_87;
                case 2:
                  v116 = 0xD000000000000017;
                  v118 = &v273;
                  goto LABEL_87;
                case 3:
                  v116 = 0xD000000000000011;
                  v118 = &v274;
                  goto LABEL_87;
                case 4:
                  v117 = 0x44656C746974;
                  goto LABEL_79;
                case 5:
                  v114 = 0xE800000000000000;
                  v116 = 0x797469726F697270;
                  break;
                case 6:
                  v114 = 0xE700000000000000;
                  v116 = 0x64656767616C66;
                  break;
                case 7:
                  v116 = 0x6E6F697461657263;
                  v114 = 0xEC00000065746144;
                  break;
                case 8:
                  v116 = 0x6E65727275636572;
                  v114 = 0xEF73656C75526563;
                  break;
                case 9:
                  v116 = 0xD000000000000013;
                  v118 = &v275;
                  goto LABEL_87;
                case 0xA:
                  v116 = 0xD000000000000011;
                  v118 = &v276;
                  goto LABEL_87;
                case 0xB:
                  v114 = 0xE800000000000000;
                  v116 = 0x656E6F5A656D6974;
                  break;
                case 0xC:
                  break;
                case 0xD:
                  v116 = 0xD000000000000011;
                  v118 = &v277;
                  goto LABEL_87;
                case 0xE:
                  v117 = 0x447365746F6ELL;
LABEL_79:
                  v116 = v117 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                  v114 = 0xED0000746E656D75;
                  break;
                case 0xF:
                  v116 = 0x656D686361747461;
                  v114 = 0xEB0000000073746ELL;
                  break;
                case 0x10:
                  v116 = 0x736D72616C61;
                  break;
                case 0x11:
                  v116 = 0xD000000000000016;
                  v118 = &v278;
                  goto LABEL_87;
                case 0x12:
                  v116 = 0xD00000000000001ALL;
                  v118 = &v279;
                  goto LABEL_87;
                case 0x13:
                  v116 = 0xD000000000000024;
                  v118 = &v280;
LABEL_87:
                  v114 = *(v118 - 32);
                  break;
                case 0x14:
                  v114 = 0xE800000000000000;
                  v116 = 0x7367617468736168;
                  break;
                case 0x15:
                  v116 = 0x48746361746E6F63;
                  v114 = 0xEE0073656C646E61;
                  break;
                default:
                  v114 = 0xE800000000000000;
                  v116 = 0x44497463656A626FLL;
                  break;
              }

              v119 = 0xE600000000000000;
              switch(v113)
              {
                case 0:
                  v119 = 0xE800000000000000;
                  v115 = 0x44497463656A626FLL;
                  break;
                case 1:
                  v115 = 0xD000000000000010;
                  v121 = &v272;
                  goto LABEL_111;
                case 2:
                  v115 = 0xD000000000000017;
                  v121 = &v273;
                  goto LABEL_111;
                case 3:
                  v115 = 0xD000000000000011;
                  v121 = &v274;
                  goto LABEL_111;
                case 4:
                  v120 = 0x44656C746974;
                  goto LABEL_103;
                case 5:
                  v119 = 0xE800000000000000;
                  v115 = 0x797469726F697270;
                  break;
                case 6:
                  v119 = 0xE700000000000000;
                  v115 = 0x64656767616C66;
                  break;
                case 7:
                  v115 = 0x6E6F697461657263;
                  v119 = 0xEC00000065746144;
                  break;
                case 8:
                  v115 = 0x6E65727275636572;
                  v119 = 0xEF73656C75526563;
                  break;
                case 9:
                  v115 = 0xD000000000000013;
                  v121 = &v275;
                  goto LABEL_111;
                case 10:
                  v115 = 0xD000000000000011;
                  v121 = &v276;
                  goto LABEL_111;
                case 11:
                  v119 = 0xE800000000000000;
                  v115 = 0x656E6F5A656D6974;
                  break;
                case 12:
                  break;
                case 13:
                  v115 = 0xD000000000000011;
                  v121 = &v277;
                  goto LABEL_111;
                case 14:
                  v120 = 0x447365746F6ELL;
LABEL_103:
                  v115 = v120 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                  v119 = 0xED0000746E656D75;
                  break;
                case 15:
                  v115 = 0x656D686361747461;
                  v119 = 0xEB0000000073746ELL;
                  break;
                case 16:
                  v115 = 0x736D72616C61;
                  break;
                case 17:
                  v115 = 0xD000000000000016;
                  v121 = &v278;
                  goto LABEL_111;
                case 18:
                  v115 = 0xD00000000000001ALL;
                  v121 = &v279;
                  goto LABEL_111;
                case 19:
                  v115 = 0xD000000000000024;
                  v121 = &v280;
LABEL_111:
                  v119 = *(v121 - 32);
                  break;
                case 20:
                  v119 = 0xE800000000000000;
                  v115 = 0x7367617468736168;
                  break;
                case 21:
                  v115 = 0x48746361746E6F63;
                  v119 = 0xEE0073656C646E61;
                  break;
                default:
                  goto LABEL_62;
              }

              if (v116 == v115 && v114 == v119)
              {
                break;
              }

              v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v25;
              if (v112)
              {
                goto LABEL_115;
              }
            }

LABEL_115:
            v122 = *(v271 + 88);
            type metadata accessor for REMCDSavedReminder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v124 = [ObjCClassFromMetadata entity];
            v125 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v124 insertIntoManagedObjectContext:v122];
            v126 = v21;
            v127 = v125;
            [v122 assignObject:v127 toPersistentStore:v126];

            v128 = v127;
            v129 = [v267 uuid];
            v130 = v258;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v131 = v263;
            (*v237)(v130, 0, 1, v263);
            v132 = v265;
            sub_10018E470(v130, v265);
            isa = 0;
            if ((*v236)(v132, 1, v131) != 1)
            {
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v270(v132, v131);
            }

            [v128 setIdentifier:{isa, v229}];

            sub_1000050A4(v130, &unk_100939D90, "8\n\r");
            v25 = v271;

            v134 = v267;
            v135 = v128;
            v136 = Logger.logObject.getter();
            v137 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v270 = swift_slowAlloc();
              v285 = v270;
              *v138 = v234;
              *(v138 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v285);
              *(v138 + 12) = 2082;
              v140 = *(v25 + 40);
              v283 = *(v25 + 24);
              *v284 = v140;
              *&v284[14] = *(v25 + 54);
              sub_100009DAC(&v283, &v277);
              v141 = sub_1000063E8();
              LODWORD(v251) = v137;
              v142 = v141;
              v144 = v143;
              sub_1005812D4(&v283);
              v145 = sub_10000668C(v142, v144, &v285);

              *(v138 + 14) = v145;
              *(v138 + 22) = 2114;
              *(v138 + 24) = v134;
              *v139 = v134;
              *(v138 + 32) = 2112;
              v146 = v134;
              v147 = [v135 objectID];
              *(v138 + 34) = v147;
              v139[1] = v147;
              _os_log_impl(&_mh_execute_header, v136, v251, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v138, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();
            }

            v21 = 0x800000000000;
            swift_beginAccess();
            v148 = v134;
            v251 = v135;
            sub_10067AD6C(v135, v148);
            swift_endAccess();
          }

          v149 = *(v26 + 16);
          v270 = v149;
          if (v149)
          {

            v150 = 0;
            while (v150 < *(v26 + 16))
            {
              if (((*(v25 + 64) | (*(v25 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
              {
                v151 = *(v26 + v150 + 32);
                v152 = Logger.logObject.getter();
                v153 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v152, v153))
                {
                  v154 = swift_slowAlloc();
                  v155 = swift_slowAlloc();
                  v277 = v155;
                  *v154 = v255;
                  LOBYTE(v285) = v151;
                  v156 = String.init<A>(describing:)();
                  v158 = sub_10000668C(v156, v157, &v277);

                  *(v154 + 4) = v158;
                  v21 = 0x800000000000;
                  _os_log_impl(&_mh_execute_header, v152, v153, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v154, 0xCu);
                  sub_10000607C(v155);
                }

                v25 = v271;
                v149 = v270;
              }

              LODWORD(v78) = *(v25 + 64);
              if (*(v25 + 68) >> 14 == 2 && (*(v25 + 64) & 1) == 0)
              {
                if (qword_1009367A0 != -1)
                {
                  goto LABEL_197;
                }

                goto LABEL_182;
              }

              if (v149 == ++v150)
              {

                goto LABEL_133;
              }
            }

            goto LABEL_190;
          }

LABEL_133:
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v160 = v267;
          v161 = v251;
          v162 = Logger.logObject.getter();
          v163 = static os_log_type_t.default.getter();

          v164 = os_log_type_enabled(v162, v163);
          v267 = v161;
          if (v164)
          {
            v231 = v163;
            v232 = v162;
            v165 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            v285 = v230;
            *v165 = v235;
            *(v165 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v285);
            *(v165 + 12) = 2082;
            v167 = *(v25 + 40);
            v281 = *(v25 + 24);
            *v282 = v167;
            *&v282[14] = *(v25 + 54);
            sub_100009DAC(&v281, &v277);
            v168 = sub_1000063E8();
            v170 = v169;
            sub_1005812D4(&v281);
            v171 = sub_10000668C(v168, v170, &v285);

            *(v165 + 14) = v171;
            *(v165 + 22) = 2114;
            *(v165 + 24) = v160;
            *v166 = v160;
            *(v165 + 32) = 2112;
            v251 = v160;
            v172 = v160;
            v173 = [v161 objectID];
            *(v165 + 34) = v173;
            v229 = v166;
            v166[1] = v173;
            *(v165 + 42) = 2082;
            v174 = *(v26 + 16);
            if (v174)
            {
              v277 = _swiftEmptyArrayStorage;
              sub_100026EF4(0, v174, 0);
              v175 = v277;
              v176 = 32;
              do
              {
                v177 = 0xE600000000000000;
                v178 = 0x7961446C6C61;
                switch(*(v26 + v176))
                {
                  case 1:
                    v178 = 0xD000000000000010;
                    v180 = &v272;
                    goto LABEL_159;
                  case 2:
                    v178 = 0xD000000000000017;
                    v180 = &v273;
                    goto LABEL_159;
                  case 3:
                    v178 = 0xD000000000000011;
                    v180 = &v274;
                    goto LABEL_159;
                  case 4:
                    v179 = 0x44656C746974;
                    goto LABEL_151;
                  case 5:
                    v177 = 0xE800000000000000;
                    v178 = 0x797469726F697270;
                    break;
                  case 6:
                    v177 = 0xE700000000000000;
                    v178 = 0x64656767616C66;
                    break;
                  case 7:
                    v178 = 0x6E6F697461657263;
                    v177 = 0xEC00000065746144;
                    break;
                  case 8:
                    v178 = 0x6E65727275636572;
                    v177 = 0xEF73656C75526563;
                    break;
                  case 9:
                    v178 = 0xD000000000000013;
                    v180 = &v275;
                    goto LABEL_159;
                  case 0xA:
                    v178 = 0xD000000000000011;
                    v180 = &v276;
                    goto LABEL_159;
                  case 0xB:
                    v177 = 0xE800000000000000;
                    v178 = 0x656E6F5A656D6974;
                    break;
                  case 0xC:
                    break;
                  case 0xD:
                    v178 = 0xD000000000000011;
                    v180 = &v277;
                    goto LABEL_159;
                  case 0xE:
                    v179 = 0x447365746F6ELL;
LABEL_151:
                    v178 = v179 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                    v177 = 0xED0000746E656D75;
                    break;
                  case 0xF:
                    v178 = 0x656D686361747461;
                    v177 = 0xEB0000000073746ELL;
                    break;
                  case 0x10:
                    v178 = 0x736D72616C61;
                    break;
                  case 0x11:
                    v178 = 0xD000000000000016;
                    v180 = &v278;
                    goto LABEL_159;
                  case 0x12:
                    v178 = 0xD00000000000001ALL;
                    v180 = &v279;
                    goto LABEL_159;
                  case 0x13:
                    v178 = 0xD000000000000024;
                    v180 = &v280;
LABEL_159:
                    v177 = *(v180 - 32);
                    break;
                  case 0x14:
                    v177 = 0xE800000000000000;
                    v178 = 0x7367617468736168;
                    break;
                  case 0x15:
                    v178 = 0x48746361746E6F63;
                    v177 = 0xEE0073656C646E61;
                    break;
                  default:
                    v177 = 0xE800000000000000;
                    v178 = 0x44497463656A626FLL;
                    break;
                }

                v277 = v175;
                v182 = v175[2];
                v181 = v175[3];
                if (v182 >= v181 >> 1)
                {
                  sub_100026EF4((v181 > 1), v182 + 1, 1);
                  v175 = v277;
                }

                v175[2] = v182 + 1;
                v183 = &v175[2 * v182];
                v183[4] = v178;
                v183[5] = v177;
                ++v176;
                --v174;
                v184 = v271;
              }

              while (v174);
            }

            else
            {
              v184 = v25;
            }

            v185 = Array.description.getter();
            v187 = v186;

            v188 = sub_10000668C(v185, v187, &v285);

            *(v165 + 44) = v188;
            *(v165 + 52) = 1024;
            v25 = v184;
            LODWORD(v188) = *(v184 + 104);

            *(v165 + 54) = v188;

            v189 = v232;
            _os_log_impl(&_mh_execute_header, v232, v231, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v165, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v161 = v267;
            v160 = v251;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v190 = v253;
          sub_100510538(v266, v161, v26, 0, v25);
          v75 = v190;
          if (v190)
          {

            goto LABEL_185;
          }

          v191 = [v161 changedValues];
          v192 = v160;
          v193 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v194 = v264;
          swift_beginAccess();
          v195 = v192;

          v196 = v194[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v285 = v194[7];
          v194[7] = 0x8000000000000000;
          sub_1002C8688(v193, v195, isUniquelyReferenced_nonNull_native);

          v194[7] = v285;
          swift_endAccess();
          v198 = *(v25 + 104);
          if (v270 && (v198 & 1) != 0)
          {

            v199 = v267;
            [v267 updateChangeCount];

            v200 = v241;
            v77 = v252;
          }

          else
          {

            v201 = v195;

            v202 = Logger.logObject.getter();
            v203 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v202, v203))
            {
              v204 = swift_slowAlloc();
              v253 = swift_slowAlloc();
              v270 = swift_slowAlloc();
              v277 = v270;
              *v204 = v233;
              *(v204 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v277);
              *(v204 + 12) = 1024;
              *(v204 + 14) = v198;

              *(v204 + 18) = 1024;
              *(v204 + 20) = 0;
              *(v204 + 24) = 2114;
              *(v204 + 26) = v201;
              v205 = v253;
              *v253 = v201;
              *(v204 + 34) = 2082;
              v206 = v201;
              sub_1005E2810(v193);

              v207 = Array.description.getter();
              v209 = v208;

              v210 = sub_10000668C(v207, v209, &v277);

              *(v204 + 36) = v210;
              _os_log_impl(&_mh_execute_header, v202, v203, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v204, 0x2Cu);
              sub_1000050A4(v205, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v211 = &v286;
            }

            else
            {

              v211 = &v285;
            }

            v200 = v241;
            v77 = v252;
          }

          v64 = v262;
          v78 = v240;
          v79 = v239;
          v80 = v238;
          if (v77 == v200)
          {
            goto LABEL_180;
          }
        }
      }
    }

    else if ((v48 - 2) >= 3 && v48 != 4499 && v48 != 4599)
    {
      goto LABEL_198;
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v270 = v30;
      v53 = v52;
      v277 = v52;
      *v51 = 136315138;
      v54 = [type metadata accessor for REMCDSavedReminder() cdEntityName];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v32;
      v58 = v57;

      v59 = sub_10000668C(v55, v58, &v277);
      v32 = v56;

      *(v51 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "Performing fetch during upsert {CDType: %s}", v51, 0xCu);
      sub_10000607C(v53);
      v30 = v270;
    }

    v60 = v26;
    v61 = sub_10066B748(v30, v264);
    v62 = v60;

    if (v60)
    {
      goto LABEL_185;
    }

    v64 = v262;
    v65 = v266;
    goto LABEL_36;
  }
}

void sub_10063407C(unint64_t a1, void *a2, void *a3)
{
  v250 = a2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v245 = v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v220 - v10;
  v12 = type metadata accessor for UUID();
  v246 = *(v12 - 8);
  v13 = *(v246 + 64);
  __chkstk_darwin(v12);
  v15 = v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v220 - v17;
  v19 = a3[3];
  v247 = a3[2];
  v249 = v19;
  v20 = a3[4];
  v251 = v3;
  v21 = *(v3 + 72);
  v253[3] = v21;
  v254 = v250;
  v253[2] = &v254;

  v22 = v252;
  v23 = sub_100759CB4(sub_1006B02FC, v253, a1);
  if (v22)
  {
    return;
  }

  v24 = v23;
  v240 = v21;
  v239 = v20;
  v242 = v18;
  v243 = v15;
  v241 = v12;
  v237 = v11;
  v244 = a3;
  v25 = 0;
  if (qword_100936008 != -1)
  {
    goto LABEL_134;
  }

LABEL_3:
  v236 = type metadata accessor for Logger();
  v26 = sub_100006654(v236, qword_100945730);

  v248 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v24 >> 62;
  v252 = v24;
  v31 = v251;
  if (v29)
  {
    v21 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v254 = v250;
    *v21 = 136446978;
    *(v21 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v254);
    *(v21 + 12) = 2048;
    if (!v30)
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_137;
  }

  while (1)
  {
    v38 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = _swiftEmptyArrayStorage;
    v238 = v30;
    if (!v38)
    {
      break;
    }

    v254 = _swiftEmptyArrayStorage;
    v27 = &v254;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v38 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v40 = v24 & 0xC000000000000001;
      v250 = (v24 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v41 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v40)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= v250[2])
          {
            goto LABEL_131;
          }

          v42 = *(v24 + 8 * v21 + 32);
        }

        v43 = v42;
        sub_1005E2A38([v42 remObjectID]);
        if (v25)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v44 = v254[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v24 = v252;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v21;
        if (v41 == v38)
        {
          v39 = v254;
          v31 = v251;
          goto LABEL_21;
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
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_137:
    v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v21 + 14) = v32;

    *(v21 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v33 = [swift_getObjCClassFromMetadata() description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10000668C(v34, v36, &v254);

    *(v21 + 24) = v37;
    v24 = v252;
    *(v21 + 32) = 2082;
    *(v21 + 34) = sub_10000668C(v247, v249, &v254);
    _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();

    v31 = v251;
  }

LABEL_21:
  v45 = *(v31 + 96);
  if (v45 <= 1)
  {
    if (v45)
    {
      if (v45 != 1)
      {
LABEL_141:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v254 = v63;
        *v62 = 136315138;
        v64 = [objc_opt_self() cdEntityName];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = sub_10000668C(v65, v67, &v254);

        *(v62 + 4) = v68;
        v24 = v252;
        _os_log_impl(&_mh_execute_header, v60, v61, "Skipping fetch during upsert {CDType: %s}", v62, 0xCu);
        sub_10000607C(v63);
      }

      v58 = v25;
      v55 = v243;
      v56 = v242;
      v57 = sub_100390D5C(_swiftEmptyArrayStorage);
      goto LABEL_36;
    }
  }

  else if ((v45 - 2) >= 3 && v45 != 4499 && v45 != 4599)
  {
    goto LABEL_141;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v254 = v49;
    *v48 = 136315138;
    v50 = [objc_opt_self() cdEntityName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = sub_10000668C(v51, v53, &v254);

    *(v48 + 4) = v54;
    v24 = v252;
    _os_log_impl(&_mh_execute_header, v46, v47, "Performing fetch during upsert {CDType: %s}", v48, 0xCu);
    sub_10000607C(v49);
  }

  v55 = v243;
  v56 = v242;
  v57 = sub_10066C018(v39, v244);
  v58 = v25;

  if (v25)
  {
    goto LABEL_120;
  }

LABEL_36:
  v69 = v246;
  if (v238)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
    if (!v70)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v70 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
LABEL_119:

      goto LABEL_120;
    }
  }

  v71 = 0;
  v72 = v24 & 0xC000000000000001;
  v73 = v24 & 0xFFFFFFFFFFFFFF8;
  v74 = v24 + 32;
  v234 = (v69 + 8);
  v228 = (v69 + 56);
  v227 = (v69 + 48);
  *&v59 = 136446978;
  v224 = v59;
  *&v59 = 136446210;
  v235 = v59;
  *&v59 = 136447490;
  v225 = v59;
  *&v59 = 136447234;
  v223 = v59;
  v246 = v57;
  v232 = v70;
  v231 = v24 & 0xC000000000000001;
  v230 = v24 & 0xFFFFFFFFFFFFFF8;
  v229 = v24 + 32;
  while (1)
  {
    if (v72)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v76 = __OFADD__(v71, 1);
      v77 = v71 + 1;
      if (v76)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    else
    {
      if (v71 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_139;
      }

      v75 = *(v74 + 8 * v71);
      v76 = __OFADD__(v71, 1);
      v77 = v71 + 1;
      if (v76)
      {
        goto LABEL_118;
      }
    }

    v78 = v75;
    v249 = sub_1005E2A38([v78 remObjectID]);
    if (v58)
    {

      return;
    }

    v233 = v77;

    v250 = v78;
    v79 = [v78 accountID];
    v80 = [v79 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = UUID.uuidString.getter();
    v82 = v81;
    v83 = *v234;
    v84 = v56;
    v85 = v241;
    (*v234)(v84, v241);
    v86 = [objc_opt_self() localInternalAccountID];
    v25 = v83;
    v87 = [v86 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = UUID.uuidString.getter();
    v89 = v55;
    v90 = v88;
    v92 = v91;
    (v25)(v89, v85);
    if (v21 != v90)
    {
      goto LABEL_48;
    }

    if (v82 == v92)
    {

      v93 = v239;
      v94 = v251;
    }

    else
    {
LABEL_48:
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v93 = v239;
      v94 = v251;
      if ((v95 & 1) == 0)
      {
        v24 = v252;
        v97 = v240;
        v98 = v250;
        goto LABEL_56;
      }
    }

    v96 = *(v94 + 68);
    v97 = v240;
    v98 = v250;
    if (v96 >> 14 >= 2)
    {
      v24 = v252;
      v99 = v96 >> 14 == 2 ? *(v94 + 64) : 0x7FFFFFFF;
    }

    else
    {
      v99 = 2147483519;
      v24 = v252;
    }

    sub_100009A40(2, v99);
LABEL_56:
    v100 = sub_100692848(v98, v97, &type metadata for REMReminderStorageCDIngestor.ValueKey, sub_1005F4870);
    v238 = 0;
    v101 = sub_1005F6C6C();
    v102 = v246;
    if (!*(v246 + 16))
    {
      break;
    }

    v103 = sub_100393C74(v249);
    if ((v104 & 1) == 0)
    {
      break;
    }

    v105 = *(*(v102 + 56) + 8 * v103);
LABEL_83:
    v247 = *(v100 + 16);
    if (v247)
    {
      v226 = v105;

      v149 = 0;
      v21 = v247;
      while (v149 < *(v100 + 16))
      {
        if (((*(v94 + 64) | (*(v94 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v150 = *(v100 + v149 + 32);
          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v254 = v154;
            *v153 = v235;
            LOBYTE(v259) = v150;
            v155 = String.init<A>(describing:)();
            v157 = sub_10000668C(v155, v156, &v254);
            v21 = v247;

            *(v153 + 4) = v157;
            _os_log_impl(&_mh_execute_header, v151, v152, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v153, 0xCu);
            sub_10000607C(v154);
            v94 = v251;

            v24 = v252;
          }
        }

        v25 = *(v94 + 64);
        if (*(v94 + 68) >> 14 == 2 && (*(v94 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_140;
          }

          goto LABEL_123;
        }

        if (v21 == ++v149)
        {

          v105 = v226;
          goto LABEL_96;
        }
      }

      goto LABEL_132;
    }

LABEL_96:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v159 = v249;
    v160 = v105;
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v161, v162))
    {
      v222 = v162;
      v226 = v161;
      v25 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v259 = v221;
      *v25 = v225;
      *(v25 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v259);
      *(v25 + 12) = 2082;
      v164 = *(v94 + 40);
      v255 = *(v94 + 24);
      *v256 = v164;
      *&v256[14] = *(v94 + 54);
      sub_100009DAC(&v255, &v254);
      v165 = sub_1000063E8();
      v167 = v166;
      sub_1005812D4(&v255);
      v168 = sub_10000668C(v165, v167, &v259);

      *(v25 + 14) = v168;
      *(v25 + 22) = 2114;
      *(v25 + 24) = v159;
      *v163 = v159;
      *(v25 + 32) = 2112;
      v249 = v159;
      v169 = v159;
      v170 = [v160 objectID];
      *(v25 + 34) = v170;
      v220[1] = v163;
      v163[1] = v170;
      *(v25 + 42) = 2082;
      v171 = *(v100 + 16);
      if (v171)
      {
        v172 = v160;
        v254 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v171, 0);
        v173 = v254;
        v174 = 32;
        do
        {
          v175 = sub_1002ADDBC(*(v100 + v174));
          v254 = v173;
          v178 = v173[2];
          v177 = v173[3];
          if (v178 >= v177 >> 1)
          {
            v220[0] = v175;
            v180 = v176;
            sub_100026EF4((v177 > 1), v178 + 1, 1);
            v176 = v180;
            v175 = v220[0];
            v173 = v254;
          }

          v173[2] = v178 + 1;
          v179 = &v173[2 * v178];
          v179[4] = v175;
          v179[5] = v176;
          ++v174;
          --v171;
        }

        while (v171);

        v160 = v172;
      }

      else
      {
      }

      v182 = Array.description.getter();
      v184 = v183;

      v185 = sub_10000668C(v182, v184, &v259);

      *(v25 + 44) = v185;
      *(v25 + 52) = 1024;
      v94 = v251;
      LODWORD(v185) = *(v251 + 104);

      *(v25 + 54) = v185;

      v186 = v226;
      _os_log_impl(&_mh_execute_header, v226, v222, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v25, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v181 = v238;
      v159 = v249;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v181 = v238;
    }

    sub_1002B96C4(v250, v160, v100, v94);
    if (v181)
    {

      goto LABEL_119;
    }

    v238 = 0;

    v187 = [v160 changedValues];
    v188 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v189 = v244;
    swift_beginAccess();
    v190 = v159;

    v191 = v189[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v259 = v189[7];
    v189[7] = 0x8000000000000000;
    sub_1002C8688(v188, v190, isUniquelyReferenced_nonNull_native);

    v189[7] = v259;
    swift_endAccess();
    v193 = *(v94 + 104);
    if (v247 && (v193 & 1) != 0)
    {

      [v160 updateChangeCount];

      v56 = v242;
    }

    else
    {
      v249 = v160;

      v194 = v190;

      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v254 = v247;
        *v197 = v223;
        *(v197 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v254);
        *(v197 + 12) = 1024;
        *(v197 + 14) = v193;

        *(v197 + 18) = 1024;
        *(v197 + 20) = 0;
        *(v197 + 24) = 2114;
        *(v197 + 26) = v194;
        *v25 = v194;
        *(v197 + 34) = 2082;
        v198 = v194;
        v199 = v238;
        sub_1005E2810(v188);
        v238 = v199;

        v200 = Array.description.getter();
        v202 = v201;

        v203 = sub_10000668C(v200, v202, &v254);

        *(v197 + 36) = v203;
        _os_log_impl(&_mh_execute_header, v195, v196, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v197, 0x2Cu);
        sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v204 = &v260;
      }

      else
      {

        v204 = &v261;
      }

      v56 = v242;
    }

    v71 = v233;
    v58 = v238;
    v55 = v243;
    v72 = v231;
    v73 = v230;
    v74 = v229;
    if (v233 == v232)
    {
      goto LABEL_119;
    }
  }

  if (v101 == 40)
  {
LABEL_126:

    v218 = objc_opt_self();
    v219 = v249;
    [v218 noSuchObjectErrorWithObjectID:v249];
    swift_willThrow();

    return;
  }

  v106 = 0;
  v107 = *(v100 + 16);
  while (1)
  {
    if (v107 == v106)
    {
      goto LABEL_126;
    }

    if (v106 >= *(v100 + 16))
    {
      goto LABEL_133;
    }

    v108 = sub_1002ADDBC(*(v100 + v106 + 32));
    v21 = v109;
    if (v108 == sub_1002ADDBC(v101) && v21 == v110)
    {
      break;
    }

    ++v106;
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_70;
    }
  }

LABEL_70:
  v112 = *(v251 + 88);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v114 = [ObjCClassFromMetadata entity];
  v115 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v114 insertIntoManagedObjectContext:v112];
  v116 = v93;
  v117 = v115;
  [v112 assignObject:v117 toPersistentStore:v116];

  v118 = v117;
  v119 = [v249 uuid];
  v120 = v237;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v121 = v241;
  (*v228)(v120, 0, 1, v241);
  v122 = v245;
  sub_10018E470(v120, v245);
  isa = 0;
  if ((*v227)(v122, 1, v121) != 1)
  {
    v124 = v245;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v25)(v124, v241);
  }

  [v118 setIdentifier:isa];

  sub_1000050A4(v237, &unk_100939D90, "8\n\r");
  v94 = v251;

  v25 = v249;
  v125 = v118;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v259 = v247;
    *v128 = v224;
    *(v128 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v259);
    *(v128 + 12) = 2082;
    v130 = *(v94 + 40);
    v257 = *(v94 + 24);
    *v258 = v130;
    *&v258[14] = *(v94 + 54);
    sub_100009DAC(&v257, &v254);
    v131 = sub_1000063E8();
    LODWORD(v226) = v127;
    v132 = v131;
    v134 = v133;
    sub_1005812D4(&v257);
    v135 = sub_10000668C(v132, v134, &v259);

    *(v128 + 14) = v135;
    *(v128 + 22) = 2114;
    *(v128 + 24) = v25;
    *v129 = v25;
    *(v128 + 32) = 2112;
    v136 = v25;
    v137 = v125;
    v138 = [v125 objectID];
    *(v128 + 34) = v138;
    v129[1] = v138;
    _os_log_impl(&_mh_execute_header, v126, v226, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v128, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {
    v137 = v125;
  }

  v139 = v244;
  swift_beginAccess();
  v140 = v139[6];
  v105 = v137;
  if ((v140 & 0xC000000000000001) == 0)
  {
    v146 = v139[6];
    v147 = v25;
    v24 = v252;
    v145 = v244;
    goto LABEL_82;
  }

  if (v140 < 0)
  {
    v141 = v139[6];
  }

  else
  {
    v141 = v140 & 0xFFFFFFFFFFFFFF8;
  }

  v142 = v25;
  v143 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v143, 1))
  {
    v144 = sub_10021CDBC(v141, v143 + 1);
    v145 = v244;
    v244[6] = v144;
    v24 = v252;
LABEL_82:
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v259 = v145[6];
    sub_1002C8398(v105, v25, v148);
    v145[6] = v259;

    swift_endAccess();
    goto LABEL_83;
  }

LABEL_139:
  __break(1u);
LABEL_140:
  swift_once();
LABEL_123:
  sub_100006654(v236, qword_100950D98);
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *v207 = 136446466;
    v208 = sub_100729CB0(1);
    v210 = sub_10000668C(v208, v209, &v254);

    *(v207 + 4) = v210;
    *(v207 + 12) = 2082;
    v211 = sub_100729CB0(v25);
    v213 = sub_10000668C(v211, v212, &v254);

    *(v207 + 14) = v213;
    _os_log_impl(&_mh_execute_header, v205, v206, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v207, 0x16u);
    swift_arrayDestroy();
  }

  v214 = objc_opt_self();
  v215 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v216 = String._bridgeToObjectiveC()();

  sub_100729CB0(v25);
  v217 = String._bridgeToObjectiveC()();

  [v214 unauthorizedErrorWithMissingEntitlement:v215 requestedAccessLevel:v216 currentAccesslevel:v217];

  swift_willThrow();
  swift_bridgeObjectRelease_n();

LABEL_120:
}

void sub_100635E7C(unint64_t a1, void *a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v242 = v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v216 - v11;
  v13 = type metadata accessor for UUID();
  v243 = *(v13 - 8);
  v14 = *(v243 + 8);
  __chkstk_darwin(v13);
  v16 = v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v216 - v18;
  v20 = a3[3];
  v245 = a3[2];
  v246 = v20;
  v248 = a3[4];
  v247 = v3;
  v21 = *(v3 + 72);
  v22 = a2;
  v250[3] = v21;
  v251 = a2;
  v250[2] = &v251;

  v23 = v249;
  v24 = sub_100759CB4(sub_1006B0318, v250, a1);
  if (v23)
  {
    return;
  }

  v25 = v24;
  v26 = v246;
  v236 = v21;
  v237 = v19;
  v239 = v16;
  v238 = v13;
  v235 = v12;
  v234 = v22;
  v240 = a3;
  v27 = 0;
  if (qword_100936008 != -1)
  {
LABEL_125:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100006654(v28, qword_100945730);

  v30 = v26;

  v244 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v25 >> 62;
  v249 = v25;
  v241 = (v25 >> 62);
  if (!v33)
  {

    goto LABEL_8;
  }

  v26 = swift_slowAlloc();
  v232 = swift_slowAlloc();
  v251 = v232;
  *v26 = 136446978;
  *(v26 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v251);
  *(v26 + 12) = 2048;
  if (v34)
  {
    goto LABEL_128;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v26 + 14) = i;

    *(v26 + 22) = 2082;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v36 = [swift_getObjCClassFromMetadata() description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10000668C(v37, v39, &v251);

    *(v26 + 24) = v40;
    v25 = v249;
    *(v26 + 32) = 2082;
    *(v26 + 34) = sub_10000668C(v245, v30, &v251);
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v26, 0x2Au);
    swift_arrayDestroy();

    v34 = v241;
LABEL_8:
    v41 = v34 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v233 = v28;
    if (!v41)
    {
      break;
    }

    v251 = _swiftEmptyArrayStorage;
    v31 = &v251;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v41 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v43 = (v25 & 0xC000000000000001);
      v246 = (v25 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v26 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_121:

          return;
        }

        if (v43)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= v246[2])
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          v44 = *(v25 + 8 * v42 + 32);
        }

        v45 = v44;
        v46 = sub_1005E3810([v44 remObjectID], &unk_100938880, off_1008D41A8);
        if (v27)
        {

          return;
        }

        v30 = v46;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v47 = v251[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v25 = v249;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v42;
        if (v26 == v41)
        {
          v48 = v251;
          v34 = v241;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_128:
    ;
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_22:
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v251 = v52;
    *v51 = 136315138;
    v53 = [objc_opt_self() cdEntityName];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = v54;
    v34 = v241;
    v58 = sub_10000668C(v57, v56, &v251);

    *(v51 + 4) = v58;
    v25 = v249;
    _os_log_impl(&_mh_execute_header, v49, v50, "Performing fetch during upsert {CDType: %s}", v51, 0xCu);
    sub_10000607C(v52);
  }

  v59 = v239;
  v60 = sub_10066C8E8(v48, v240);
  if (v27)
  {
    goto LABEL_25;
  }

  v232 = v60;

  v62 = v34 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v63 = v237;
  if (!v62)
  {
    goto LABEL_25;
  }

  v64 = 0;
  v65 = v25 & 0xC000000000000001;
  v66 = v25 & 0xFFFFFFFFFFFFFF8;
  v67 = v25 + 32;
  v229 = v243 + 8;
  v223 = v243 + 56;
  v222 = (v243 + 48);
  *&v61 = 136446978;
  v220 = v61;
  *&v61 = 136446210;
  v231 = v61;
  *&v61 = 136447490;
  v221 = v61;
  *&v61 = 136447234;
  v219 = v61;
  v225 = v62;
  v224 = v25 & 0xC000000000000001;
  v227 = v25 & 0xFFFFFFFFFFFFFF8;
  v226 = v25 + 32;
  while (1)
  {
    if (v65)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v69 = __OFADD__(v64, 1);
      v70 = (&v64->isa + 1);
      if (!v69)
      {
        goto LABEL_37;
      }

LABEL_110:
      __break(1u);
LABEL_25:

      goto LABEL_26;
    }

    if (v64 >= *(v66 + 16))
    {
      __break(1u);
      goto LABEL_130;
    }

    v68 = *(v67 + 8 * v64);
    v69 = __OFADD__(v64, 1);
    v70 = (&v64->isa + 1);
    if (v69)
    {
      goto LABEL_110;
    }

    v71 = v68;
    v243 = sub_1005E3810([v71 remObjectID], &unk_100938880, off_1008D41A8);
    v245 = 0;
    v228 = v70;

    v241 = v71;
    v72 = [v71 accountID];
    v73 = [v72 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = UUID.uuidString.getter();
    v76 = v75;
    v26 = v59;
    v77 = *v229;
    v78 = v63;
    v79 = v238;
    (*v229)(v78, v238);
    v80 = [objc_opt_self() localInternalAccountID];
    v81 = [v80 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = UUID.uuidString.getter();
    v84 = v83;
    v77(v59, v79);
    if (v74 != v82)
    {
      goto LABEL_40;
    }

LABEL_37:
    if (v76 == v84)
    {
    }

    else
    {
LABEL_40:
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v85 & 1) == 0)
      {
        v25 = v249;
        v87 = v245;
        v27 = v247;
        v88 = v236;
        goto LABEL_48;
      }
    }

    v27 = v247;
    v86 = *(v247 + 68);
    v87 = v245;
    v88 = v236;
    if (v86 >> 14 >= 2)
    {
      v25 = v249;
      if (v86 >> 14 == 2)
      {
        v89 = *(v247 + 64);
      }

      else
      {
        v89 = 0x7FFFFFFF;
      }
    }

    else
    {
      v89 = 2147483519;
      v25 = v249;
    }

    sub_100009A40(2, v89);
    if (v87)
    {

      goto LABEL_26;
    }

LABEL_48:
    v90 = sub_100692848(v241, v88, &type metadata for REMListStorageCDIngestor.ValueKey, sub_1005F3FF0);
    v245 = v87;
    if (v87)
    {

      return;
    }

    v91 = v90;
    v92 = sub_1005F63F0();
    v93 = v232;
    if (!v232[2])
    {
      break;
    }

    v94 = sub_100393C74(v243);
    if ((v95 & 1) == 0)
    {
      break;
    }

    v230 = *(v93[7] + 8 * v94);
LABEL_75:
    v138 = *(v91 + 16);
    v246 = v138;
    if (v138)
    {

      v139 = 0;
      while (v139 < *(v91 + 16))
      {
        if (((*(v27 + 64) | (*(v27 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
        {
          v26 = *(v91 + v139 + 32);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v251 = v143;
            *v142 = v231;
            LOBYTE(v257) = v26;
            v144 = String.init<A>(describing:)();
            v146 = sub_10000668C(v144, v145, &v251);

            *(v142 + 4) = v146;
            v27 = v247;
            _os_log_impl(&_mh_execute_header, v140, v141, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v142, 0xCu);
            sub_10000607C(v143);

            v25 = v249;
          }

          v138 = v246;
        }

        LODWORD(v62) = *(v27 + 64);
        if (*(v27 + 68) >> 14 == 2 && (*(v27 + 64) & 1) == 0)
        {
          if (qword_1009367A0 != -1)
          {
            goto LABEL_131;
          }

          goto LABEL_113;
        }

        if (v138 == ++v139)
        {

          goto LABEL_88;
        }
      }

      goto LABEL_123;
    }

LABEL_88:
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v41 = v243;
    v43 = v230;
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();

    v150 = os_log_type_enabled(v148, v149);
    v243 = v43;
    if (v150)
    {
      v218 = v149;
      v151 = v27;
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v257 = v217;
      *v152 = v221;
      *(v152 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v257);
      *(v152 + 12) = 2082;
      v154 = *(v151 + 40);
      v252 = *(v151 + 24);
      *v253 = v154;
      *&v253[14] = *(v151 + 54);
      sub_100009DAC(&v252, &v251);
      v155 = sub_1000063E8();
      v157 = v156;
      sub_1005812D4(&v252);
      v158 = sub_10000668C(v155, v157, &v257);

      *(v152 + 14) = v158;
      *(v152 + 22) = 2114;
      *(v152 + 24) = v41;
      *v153 = v41;
      *(v152 + 32) = 2112;
      v230 = v41;
      v159 = v41;
      v160 = [v43 objectID];
      *(v152 + 34) = v160;
      v216[1] = v153;
      v153[1] = v160;
      *(v152 + 42) = 2082;
      v161 = *(v91 + 16);
      v30 = v241;
      if (v161)
      {
        v216[0] = v148;
        v251 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v161, 0);
        v162 = v251;
        v163 = v251[2];
        v164 = 2 * v163;
        v165 = 32;
        do
        {
          v166 = sub_100672E54(*(v91 + v165));
          v251 = v162;
          v168 = v162[3];
          v169 = v163 + 1;
          if (v163 >= v168 >> 1)
          {
            v171 = v166;
            v172 = v167;
            sub_100026EF4((v168 > 1), v169, 1);
            v167 = v172;
            v30 = v241;
            v166 = v171;
            v162 = v251;
          }

          v162[2] = v169;
          v170 = &v162[v164];
          v170[4] = v166;
          v170[5] = v167;
          v164 += 2;
          ++v165;
          v163 = v169;
          --v161;
        }

        while (v161);

        v148 = v216[0];
      }

      else
      {
      }

      v173 = Array.description.getter();
      v175 = v174;

      v176 = sub_10000668C(v173, v175, &v257);

      *(v152 + 44) = v176;
      *(v152 + 52) = 1024;
      v177 = v247;
      LODWORD(v176) = *(v247 + 104);

      *(v152 + 54) = v176;

      _os_log_impl(&_mh_execute_header, v148, v218, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v152, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v27 = v177;

      v43 = v243;
      v41 = v230;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v30 = v241;
    }

    v178 = v245;
    sub_100674D80(v30, v43, v91, v27);
    if (v178)
    {
      goto LABEL_121;
    }

    v179 = [v43 changedValues];
    v180 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v181 = v240;
    swift_beginAccess();
    v182 = v41;

    v183 = v181[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = v181[7];
    v181[7] = 0x8000000000000000;
    sub_1002C8688(v180, v182, isUniquelyReferenced_nonNull_native);

    v181[7] = v257;
    swift_endAccess();
    v185 = *(v27 + 104);
    if (v246 && (v185 & 1) != 0)
    {

      [v43 updateChangeCount];
    }

    else
    {

      v186 = v182;

      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v245 = v187;
        v191 = v190;
        v246 = swift_slowAlloc();
        v251 = v246;
        *v189 = v219;
        *(v189 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v251);
        *(v189 + 12) = 1024;
        *(v189 + 14) = v185;

        *(v189 + 18) = 1024;
        *(v189 + 20) = 0;
        *(v189 + 24) = 2114;
        *(v189 + 26) = v186;
        *v191 = v186;
        *(v189 + 34) = 2082;
        v192 = v186;
        sub_1005E2810(v180);

        v193 = Array.description.getter();
        v195 = v194;

        v196 = sub_10000668C(v193, v195, &v251);

        *(v189 + 36) = v196;
        v197 = v245;
        _os_log_impl(&_mh_execute_header, v245, v188, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v189, 0x2Cu);
        sub_1000050A4(v191, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v198 = &v257;
      }

      else
      {

        v198 = &v256;
      }
    }

    v59 = v239;
    v66 = v227;
    v67 = v226;
    LOWORD(v62) = v225;
    v64 = v228;
    v63 = v237;
    v65 = v224;
    if (v228 == v225)
    {
      goto LABEL_25;
    }
  }

  if (v92 == 42)
  {
LABEL_116:

    v214 = objc_opt_self();
    v215 = v243;
    [v214 noSuchObjectErrorWithObjectID:v243];
    swift_willThrow();
  }

  else
  {
    v26 = 0;
    v96 = *(v91 + 16);
    while (1)
    {
      if (v96 == v26)
      {
        goto LABEL_116;
      }

      if (v26 >= *(v91 + 16))
      {
        goto LABEL_124;
      }

      v97 = sub_100672E54(*(v91 + v26 + 32));
      v99 = v98;
      if (v97 == sub_100672E54(v92) && v99 == v100)
      {
        break;
      }

      ++v26;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v102 = v248;
      if (v25)
      {
        goto LABEL_63;
      }
    }

    v102 = v248;
LABEL_63:
    v103 = *(v27 + 88);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v105 = [ObjCClassFromMetadata entity];
    v106 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v105 insertIntoManagedObjectContext:v103];
    v107 = v102;
    v108 = v106;
    [v103 assignObject:v108 toPersistentStore:v107];

    v109 = v108;
    v110 = [v243 uuid];
    v111 = v235;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = v238;
    (*v223)(v111, 0, 1, v238);
    v113 = v242;
    sub_10018E470(v111, v242);
    isa = 0;
    if ((*v222)(v113, 1, v112) != 1)
    {
      v115 = v242;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v77(v115, v112);
    }

    [v109 setIdentifier:isa];

    sub_1000050A4(v235, &unk_100939D90, "8\n\r");

    v116 = v243;
    v117 = v109;
    v62 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();

    v119 = os_log_type_enabled(v62, v118);
    v230 = v117;
    if (v119)
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v257 = v246;
      *v120 = v220;
      *(v120 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v257);
      *(v120 + 12) = 2082;
      v122 = *(v247 + 40);
      v254 = *(v247 + 24);
      *v255 = v122;
      *&v255[14] = *(v247 + 54);
      sub_100009DAC(&v254, &v251);
      v218 = v118;
      v123 = sub_1000063E8();
      v125 = v124;
      sub_1005812D4(&v254);
      v126 = sub_10000668C(v123, v125, &v257);

      *(v120 + 14) = v126;
      *(v120 + 22) = 2114;
      *(v120 + 24) = v116;
      *v121 = v116;
      *(v120 + 32) = 2112;
      v127 = v116;
      v128 = [v117 objectID];
      *(v120 + 34) = v128;
      v121[1] = v128;
      _os_log_impl(&_mh_execute_header, v62, v218, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v120, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v27 = v247;

      swift_arrayDestroy();
    }

    v129 = v240;
    swift_beginAccess();
    v130 = v129[6];
    if ((v130 & 0xC000000000000001) == 0)
    {
      v135 = v129[6];
      v136 = v116;
      v25 = v249;
      v26 = v240;
      goto LABEL_74;
    }

    if (v130 < 0)
    {
      v131 = v129[6];
    }

    else
    {
      v131 = v130 & 0xFFFFFFFFFFFFFF8;
    }

    v132 = v116;
    v133 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v133, 1))
    {
      v134 = sub_10021CDBC(v131, v133 + 1);
      v26 = v240;
      v240[6] = v134;
      v25 = v249;
LABEL_74:
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v257 = *(v26 + 48);
      sub_1002C8398(v230, v116, v137);
      *(v26 + 48) = v257;

      swift_endAccess();
      goto LABEL_75;
    }

LABEL_130:
    __break(1u);
LABEL_131:
    swift_once();
LABEL_113:
    sub_100006654(v233, qword_100950D98);
    v199 = Logger.logObject.getter();
    v200 = static os_log_type_t.error.getter();
    v201 = os_log_type_enabled(v199, v200);
    v202 = v241;
    if (v201)
    {
      v203 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *v203 = 136446466;
      v204 = sub_100729CB0(1);
      v206 = sub_10000668C(v204, v205, &v251);

      *(v203 + 4) = v206;
      *(v203 + 12) = 2082;
      v207 = sub_100729CB0(v62);
      v209 = sub_10000668C(v207, v208, &v251);

      *(v203 + 14) = v209;
      _os_log_impl(&_mh_execute_header, v199, v200, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v203, 0x16u);
      swift_arrayDestroy();
    }

    v210 = objc_opt_self();
    v211 = String._bridgeToObjectiveC()();
    sub_100729CB0(1);
    v212 = String._bridgeToObjectiveC()();

    sub_100729CB0(v62);
    v213 = String._bridgeToObjectiveC()();

    [v210 unauthorizedErrorWithMissingEntitlement:v211 requestedAccessLevel:v212 currentAccesslevel:v213];

    swift_willThrow();
    swift_bridgeObjectRelease_n();

LABEL_26:
  }
}