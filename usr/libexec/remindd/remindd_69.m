void sub_100648E30(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, NSObject *), unsigned __int8 *a6, uint64_t (*a7)(id), uint64_t (*a8)(void *, void *), uint64_t (*a9)(uint64_t), uint64_t (*a10)(void), void (*a11)(id, id, void, uint64_t))
{
  v209 = a2;
  v17 = a3[2];
  v18 = a3[3];
  v205 = &v209;
  v19 = a5(a4, v204, a1);
  if (v12)
  {
    return;
  }

  v20 = v19;
  v198 = a7;
  v216 = v17;
  log = a1;
  v193 = a3;
  v21 = v11;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);

  v23 = v18;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v192 = v21;
  v202 = v20;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v206[0] = swift_slowAlloc();
    *v26 = 136446978;
    *(v26 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v206);
    *(v26 + 12) = 2048;
    *(v26 + 14) = *(v20 + 16);

    *(v26 + 22) = 2082;
    (a6)(0);
    a6 = v23;
    v27 = [swift_getObjCClassFromMetadata() description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v206);

    *(v26 + 24) = v31;
    v20 = v202;
    *(v26 + 32) = 2082;
    *(v26 + 34) = sub_10000668C(v216, a6, v206);
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v26, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v216 = *(v20 + 16);
  if (!v216)
  {

    return;
  }

  v208 = _swiftEmptySetSingleton;
  v203 = v20 + 32;

  v32 = 0;
  do
  {
    if (v32 >= *(v20 + 16))
    {
      __break(1u);
LABEL_125:

      v155 = v187;
LABEL_126:
      [objc_opt_self() noSuchObjectErrorWithObjectID:a6];

      swift_willThrow();
      return;
    }

    v33 = v203 + 16 * v32;
    a6 = *(v33 + 8);
    v34 = *(a6 + 2);
    if (v34)
    {
      v35 = *v33;

      v36 = 32;
      do
      {
        v37 = (a10)(v35, a6[v36]);
        sub_100392144(v37);

        ++v36;
        --v34;
      }

      while (v34);

      v20 = v202;
    }

    ++v32;
  }

  while (v32 != v216);

  if (log >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((log & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
    v45 = _swiftEmptyArrayStorage;
LABEL_29:
    v46 = sub_1005E2514(v208);

    v47 = v193;
    v48 = sub_10065F214(v46, v193);

    v185 = a8(v45, v193);

    swift_beginAccess();
    v49 = 0;
    v50 = &selRef_persistentStoreForIdentifier_;
    v191 = v48;
    while (1)
    {
      if (v49 >= *(v20 + 16))
      {
        goto LABEL_140;
      }

      v179 = v49;
      v51 = v203 + 16 * v49;
      v52 = *(v51 + 8);
      v40 = *v51;
      v188 = v52;

      v38 = v198([v40 v50[106]]);

      v53 = v47[6];
      if ((v53 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v53 + 16))
      {
        v55 = v38;

        v58 = sub_10002B924(v55);
        if (v59)
        {
          v57 = *(*(v53 + 56) + 8 * v58);
LABEL_40:

LABEL_42:
          v47 = v193;
          goto LABEL_43;
        }

LABEL_41:

        v57 = 0;
        goto LABEL_42;
      }

      v57 = 0;
LABEL_43:

      if (!*(v185 + 16))
      {
        goto LABEL_128;
      }

      v60 = a9(v38);
      if ((v61 & 1) == 0)
      {
        goto LABEL_128;
      }

      v187 = v40;
      v62 = *(*(v185 + 56) + 8 * v60);
      v63 = v188;
      swift_bridgeObjectRetain_n();
      v64 = v38;
      v186 = v62;

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      v182 = v64;
      if (os_log_type_enabled(v65, v66))
      {
        v196 = v66;
        loga = v65;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v67 = 136446978;
        *(v67 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v207);
        *(v67 + 12) = 2082;
        v69 = *(v192 + 40);
        v214 = *(v192 + 24);
        v215[0] = v69;
        *(v215 + 14) = *(v192 + 54);
        sub_100009DAC(&v214, v206);
        v70 = sub_1000063E8();
        v72 = v71;
        sub_1005812D4(&v214);
        v73 = sub_10000668C(v70, v72, &v207);

        *(v67 + 14) = v73;
        *(v67 + 22) = 2114;
        *(v67 + 24) = v64;
        v189 = v68;
        *v68 = v64;
        *(v67 + 32) = 2082;
        v74 = v64;
        v75 = *(v188 + 16);
        if (v75)
        {
          v206[0] = _swiftEmptyArrayStorage;
          v76 = v74;
          sub_100026EF4(0, v75, 0);
          v77 = v206[0];
          v78 = *(v206[0] + 16);
          v79 = 16 * v78;
          v80 = 32;
          v81 = v188;
          do
          {
            if (*(v81 + v80))
            {
              v82 = 0x4449746E65726170;
            }

            else
            {
              v82 = 0x49746E756F636361;
            }

            if (*(v81 + v80))
            {
              v83 = 0xE800000000000000;
            }

            else
            {
              v83 = 0xE900000000000044;
            }

            v206[0] = v77;
            v84 = *(v77 + 24);
            v85 = v78 + 1;
            if (v78 >= v84 >> 1)
            {
              sub_100026EF4((v84 > 1), v78 + 1, 1);
              v81 = v188;
              v77 = v206[0];
            }

            *(v77 + 16) = v85;
            v86 = v77 + v79;
            *(v86 + 32) = v82;
            *(v86 + 40) = v83;
            v79 += 16;
            ++v80;
            v78 = v85;
            --v75;
          }

          while (v75);
          v63 = v81;

          v48 = v191;
        }

        else
        {
          v87 = v74;
        }

        v88 = Array.description.getter();
        v90 = v89;

        v91 = sub_10000668C(v88, v90, &v207);

        *(v67 + 34) = v91;
        _os_log_impl(&_mh_execute_header, loga, v196, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v67, 0x2Au);
        sub_1000050A4(v189, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v20 = v202;
        v47 = v193;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v20 = v202;
      }

      v180 = *(v63 + 16);
      if (v180)
      {
        v92 = 0;
        v181 = v63 + 32;
        v93 = v187;
        while (1)
        {
          if (v92 >= *(v63 + 16))
          {
            goto LABEL_139;
          }

          v184 = *(v181 + v92);
          v94 = a10(v93);
          if (v94 >> 62)
          {
            v142 = v94;
            v95 = _CocoaArrayWrapper.endIndex.getter();
            v94 = v142;
          }

          else
          {
            v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v183 = v92;
          if (v95)
          {
            break;
          }

          v97 = _swiftEmptyDictionarySingleton;
LABEL_113:

          sub_10045BDE8(v97);
          v141 = v140;

          v93 = v187;
          a11(v187, v186, v184, v141);
          v92 = v183 + 1;

          v20 = v202;
          v47 = v193;
          v63 = v188;
          if (v183 + 1 == v180)
          {

            goto LABEL_117;
          }
        }

        v96 = 0;
        logb = (v94 & 0xC000000000000001);
        v194 = v94 + 32;
        v197 = v94 & 0xFFFFFFFFFFFFFF8;
        v97 = _swiftEmptyDictionarySingleton;
        v190 = v95;
        while (2)
        {
          if (logb)
          {
            v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v101 = __OFADD__(v96++, 1);
            if (v101)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v96 >= *(v197 + 16))
            {
              goto LABEL_135;
            }

            v100 = *(v194 + 8 * v96);
            v101 = __OFADD__(v96++, 1);
            if (v101)
            {
              goto LABEL_134;
            }
          }

          v102 = *(v48 + 16);
          v103 = v100;
          v104 = v103;
          if (!v102 || (v105 = sub_100393C74(v103), (v106 & 1) == 0))
          {

            a6 = v104;
            v32 = Logger.logObject.getter();
            v143 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v32, v143))
            {
              goto LABEL_125;
            }

            v144 = swift_slowAlloc();
            v216 = swift_slowAlloc();
            v207 = v216;
            *v144 = 136446978;
            *(v144 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v207);
            *(v144 + 12) = 2082;
            v145 = *(v192 + 40);
            v212 = *(v192 + 24);
            v213[0] = v145;
            *(v213 + 14) = *(v192 + 54);
            sub_100009DAC(&v212, v206);
            v146 = sub_1000063E8();
            v148 = v147;
            sub_1005812D4(&v212);
            v149 = sub_10000668C(v146, v148, &v207);

            *(v144 + 14) = v149;
            *(v144 + 22) = 2080;
            v150 = [a6 description];
            v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v153 = v152;

            v154 = sub_10000668C(v151, v153, &v207);

            *(v144 + 24) = v154;
            *(v144 + 32) = 2080;
            v155 = v187;
            v156 = [a6 description];
            v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;

            v160 = sub_10000668C(v157, v159, &v207);

            *(v144 + 34) = v160;
            _os_log_impl(&_mh_execute_header, v32, v143, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v144, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_126;
          }

          v107 = *(*(v48 + 56) + 8 * v105);
          if ((v97 & 0xC000000000000001) != 0)
          {
            if (v97 < 0)
            {
              v108 = v97;
            }

            else
            {
              v108 = v97 & 0xFFFFFFFFFFFFFF8;
            }

            v109 = v107;
            v110 = __CocoaDictionary.count.getter();
            if (__OFADD__(v110, 1))
            {
              goto LABEL_137;
            }

            v111 = v107;
            v112 = sub_10021D008(v108, v110 + 1);
          }

          else
          {
            v111 = *(*(v48 + 56) + 8 * v105);
            v113 = v107;
            v112 = v97;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v206[0] = v112;
          v115 = v104;
          v117 = sub_10002B924(v104);
          v118 = *(v112 + 16);
          v119 = (v116 & 1) == 0;
          v120 = v118 + v119;
          if (__OFADD__(v118, v119))
          {
            goto LABEL_136;
          }

          v121 = v116;
          if (*(v112 + 24) >= v120)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v97 = v112;
              if ((v116 & 1) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_68;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v126 = static _DictionaryStorage.copy(original:)();
            v97 = v126;
            if (*(v112 + 16))
            {
              v127 = (v126 + 64);
              __src = (v112 + 64);
              v128 = ((1 << *(v97 + 32)) + 63) >> 6;
              if (v97 != v112 || v127 >= &__src[8 * v128])
              {
                memmove(v127, __src, 8 * v128);
              }

              v129 = 0;
              *(v97 + 16) = *(v112 + 16);
              v130 = 1 << *(v112 + 32);
              if (v130 < 64)
              {
                v131 = ~(-1 << v130);
              }

              else
              {
                v131 = -1;
              }

              v175 = (v130 + 63) >> 6;
              v132 = v131 & *(v112 + 64);
              if (v132)
              {
                do
                {
                  v133 = __clz(__rbit64(v132));
                  v178 = (v132 - 1) & v132;
LABEL_108:
                  v136 = v133 | (v129 << 6);
                  v137 = *(*(v112 + 48) + 8 * v136);
                  v177 = *(*(v112 + 56) + 8 * v136);
                  *(*(v97 + 48) + 8 * v136) = v137;
                  *(*(v97 + 56) + 8 * v136) = v177;
                  v138 = v137;
                  v139 = v177;
                  v132 = v178;
                }

                while (v178);
              }

              v134 = v129;
              while (1)
              {
                v129 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  goto LABEL_141;
                }

                if (v129 >= v175)
                {
                  break;
                }

                v135 = *&__src[8 * v129];
                ++v134;
                if (v135)
                {
                  v133 = __clz(__rbit64(v135));
                  v178 = (v135 - 1) & v135;
                  goto LABEL_108;
                }
              }
            }

            if (v121)
            {
              goto LABEL_68;
            }

LABEL_89:
            *(v97 + 8 * (v117 >> 6) + 64) |= 1 << v117;
            *(*(v97 + 48) + 8 * v117) = v115;
            *(*(v97 + 56) + 8 * v117) = v111;

            v124 = *(v97 + 16);
            v101 = __OFADD__(v124, 1);
            v125 = v124 + 1;
            if (v101)
            {
              goto LABEL_138;
            }

            *(v97 + 16) = v125;
          }

          else
          {
            sub_10036CABC(v120, isUniquelyReferenced_nonNull_native);
            v97 = v206[0];
            v122 = sub_10002B924(v115);
            if ((v121 & 1) != (v123 & 1))
            {
              goto LABEL_142;
            }

            v117 = v122;
            if ((v121 & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_68:

            v98 = *(v97 + 56);
            v99 = *(v98 + 8 * v117);
            *(v98 + 8 * v117) = v111;
          }

          v48 = v191;
          if (v96 == v190)
          {
            goto LABEL_113;
          }

          continue;
        }
      }

      v93 = v187;
LABEL_117:
      if (*(v192 + 104) == 1)
      {
        [v186 updateChangeCount];
      }

      v49 = v179 + 1;
      v50 = &selRef_persistentStoreForIdentifier_;
      if ((v179 + 1) == v216)
      {

        return;
      }
    }

    if (v53 < 0)
    {
      v54 = v47[6];
    }

    v55 = v38;

    v56 = __CocoaDictionary.lookup(_:)();
    if (v56)
    {
      v207 = v56;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v57 = v206[0];
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v206[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v38 < 0)
  {
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
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v39 = 0;
    v40 = (log & 0xC000000000000001);
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *((log & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v42 = log[v39 + 4].isa;
      }

      v43 = v42;
      a7([(objc_class *)v42 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v44 = *(v206[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v39;
      if (v41 == v38)
      {
        v45 = v206[0];
        v20 = v202;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_128:

    v161 = v38;

    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *v164 = 136446722;
      *(v164 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v207);
      *(v164 + 12) = 2082;
      v165 = *(v192 + 40);
      v210 = *(v192 + 24);
      v211[0] = v165;
      *(v211 + 14) = *(v192 + 54);
      sub_100009DAC(&v210, v206);
      v166 = sub_1000063E8();
      v168 = v167;
      sub_1005812D4(&v210);
      v169 = sub_10000668C(v166, v168, &v207);

      *(v164 + 14) = v169;
      *(v164 + 22) = 2080;
      v170 = [v161 description];
      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;

      v174 = sub_10000668C(v171, v173, &v207);

      *(v164 + 24) = v174;
      _os_log_impl(&_mh_execute_header, v162, v163, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v164, 0x20u);
      swift_arrayDestroy();
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v161];
    swift_willThrow();
  }
}

void sub_10064A2B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v202 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v197 = &v202;
  v198 = v3;
  v10 = sub_1003E0D2C(sub_1006AC5F4, v196, a1);
  if (!v4)
  {
    v11 = v10;
    v191 = a1;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100945730);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v193 = v11;
    v189 = a3;
    if (os_log_type_enabled(v13, v14))
    {
      v194 = v9;
      v15 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v199[0] = v209;
      *v15 = 136446978;
      *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v199);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v11[2];

      *(v15 + 22) = 2082;
      type metadata accessor for REMCDTemplate();
      v16 = v5;
      v17 = [swift_getObjCClassFromMetadata() description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v5 = v16;
      v21 = sub_10000668C(v18, v20, v199);

      *(v15 + 24) = v21;
      v11 = v193;
      *(v15 + 32) = 2082;
      *(v15 + 34) = sub_10000668C(v194, v8, v199);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
      v8 = v209;
      swift_arrayDestroy();
    }

    else
    {
    }

    v209 = v11[2];
    if (!v209)
    {

      return;
    }

    v201 = _swiftEmptySetSingleton;
    v195 = v11 + 4;

    v22 = 0;
    do
    {
      if (v22 >= v11[2])
      {
        __break(1u);
LABEL_126:

        v151 = v179;
LABEL_127:
        [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

        swift_willThrow();
        return;
      }

      v23 = &v195[2 * v22];
      v8 = v23[1];
      isa = v8[2].isa;
      if (isa)
      {
        v25 = *v23;

        v26 = 32;
        do
        {
          v27 = sub_1001DB6FC(v25, *(&v8->isa + v26));
          sub_100392144(v27);

          ++v26;
          --isa;
        }

        while (isa);

        v11 = v193;
      }

      ++v22;
    }

    while (v22 != v209);

    if (v191 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v28)
    {
      v34 = _swiftEmptyArrayStorage;
      goto LABEL_29;
    }

    v186 = v5;
    v199[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v28 < 0)
    {
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
      __break(1u);
LABEL_144:
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
      v29 = 0;
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if ((v191 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);

            return;
          }

          v31 = *(v191 + 8 * v29 + 32);
        }

        v32 = v31;
        isa = sub_1005E96B8([v31 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = *(v199[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v29;
        if (v30 == v28)
        {
          v34 = v199[0];
          v5 = v186;
LABEL_29:
          v35 = sub_1005E2514(v201);

          v190 = sub_10065F214(v35, v189);

          v36 = sub_10066A5A8(v34, v189);

          swift_beginAccess();
          v37 = 0;
          v38 = &selRef_persistentStoreForIdentifier_;
          v39 = v193;
          v177 = v36;
          v40 = v190;
          while (1)
          {
            if (v37 >= v39[2])
            {
              goto LABEL_142;
            }

            v171 = v37;
            v41 = &v195[2 * v37];
            v42 = v41[1];
            v43 = *v41;
            v180 = v42;

            v28 = sub_1005E96B8([v43 v38[106]]);

            v44 = v189[6];
            v179 = v43;
            if ((v44 & 0xC000000000000001) != 0)
            {
              v45 = v28;

              v46 = __CocoaDictionary.lookup(_:)();
              if (v46)
              {
                v200 = v46;
                sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
                swift_dynamicCast();
                v47 = v199[0];
              }

              else
              {

                v47 = 0;
              }

              v40 = v190;
            }

            else if (*(v44 + 16))
            {
              v48 = v28;

              v49 = sub_10002B924(v48);
              if (v50)
              {
                v47 = *(*(v44 + 56) + 8 * v49);
              }

              else
              {

                v47 = 0;
              }
            }

            else
            {
              v47 = 0;
            }

            if (!*(v36 + 16))
            {
              goto LABEL_129;
            }

            v51 = sub_100393C74(v28);
            if ((v52 & 1) == 0)
            {
              goto LABEL_129;
            }

            v53 = *(*(v36 + 56) + 8 * v51);
            v54 = v180;
            swift_bridgeObjectRetain_n();
            v55 = v28;
            v178 = v53;

            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.default.getter();

            v174 = v55;
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v58 = 136446978;
              *(v58 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v200);
              *(v58 + 12) = 2082;
              v60 = *(v5 + 5);
              v207 = *(v5 + 3);
              v208[0] = v60;
              *(v208 + 14) = *(v5 + 54);
              sub_100009DAC(&v207, v199);
              v61 = sub_1000063E8();
              v63 = v62;
              sub_1005812D4(&v207);
              v64 = sub_10000668C(v61, v63, &v200);

              *(v58 + 14) = v64;
              *(v58 + 22) = 2114;
              *(v58 + 24) = v55;
              v184 = v59;
              *v59 = v55;
              *(v58 + 32) = 2082;
              v65 = v180[2];
              if (v65)
              {
                v182 = v57;
                v187 = v5;
                v199[0] = _swiftEmptyArrayStorage;
                v66 = v55;
                sub_100026EF4(0, v65, 0);
                v67 = v199[0];
                v68 = 32;
                v69 = v180;
                do
                {
                  v70 = 0xD000000000000014;
                  if (*(v69 + v68) == 1)
                  {
                    v70 = 0x6341746E65726170;
                    v71 = 0xEF4449746E756F63;
                  }

                  else
                  {
                    v71 = 0x80000001007E9FD0;
                  }

                  if (*(v69 + v68))
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = 0x49746E756F636361;
                  }

                  if (*(v69 + v68))
                  {
                    v73 = v71;
                  }

                  else
                  {
                    v73 = 0xE900000000000044;
                  }

                  v199[0] = v67;
                  v75 = *(v67 + 16);
                  v74 = *(v67 + 24);
                  if (v75 >= v74 >> 1)
                  {
                    sub_100026EF4((v74 > 1), v75 + 1, 1);
                    v69 = v180;
                    v67 = v199[0];
                  }

                  *(v67 + 16) = v75 + 1;
                  v76 = v67 + 16 * v75;
                  *(v76 + 32) = v72;
                  *(v76 + 40) = v73;
                  ++v68;
                  --v65;
                }

                while (v65);
                v54 = v69;

                v5 = v187;
                v57 = v182;
              }

              else
              {
                v77 = v55;
              }

              v78 = Array.description.getter();
              v80 = v79;

              v81 = sub_10000668C(v78, v80, &v200);

              *(v58 + 34) = v81;
              _os_log_impl(&_mh_execute_header, v56, v57, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v58, 0x2Au);
              sub_1000050A4(v184, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v36 = v177;
              v40 = v190;
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v39 = v193;
            v172 = v54[2];
            if (v172)
            {
              break;
            }

            v83 = v179;
LABEL_119:
            if (*(v5 + 104) == 1)
            {
              [v178 updateChangeCount];
            }

            v37 = v171 + 1;
            v38 = &selRef_persistentStoreForIdentifier_;
            if (v171 + 1 == v209)
            {

              return;
            }
          }

          v82 = 0;
          v173 = v54 + 4;
          v83 = v179;
          while (1)
          {
            if (v82 >= v54[2])
            {
              goto LABEL_141;
            }

            v176 = *(v173 + v82);
            v84 = sub_1001DB6FC(v83, v176);
            if (v84 >> 62)
            {
              v134 = v84;
              v85 = _CocoaArrayWrapper.endIndex.getter();
              v84 = v134;
            }

            else
            {
              v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v175 = v82;
            if (v85)
            {
              break;
            }

            v87 = _swiftEmptyDictionarySingleton;
LABEL_115:

            sub_10045BDE8(v87);
            v133 = v132;

            v83 = v179;
            sub_1001DBF70(v179, v178, v176, v133);
            v82 = v175 + 1;

            v36 = v177;
            v54 = v180;
            if (v175 + 1 == v172)
            {

              goto LABEL_119;
            }
          }

          v86 = 0;
          v183 = v84 & 0xFFFFFFFFFFFFFF8;
          v185 = v84 & 0xC000000000000001;
          v181 = (v84 + 32);
          v87 = _swiftEmptyDictionarySingleton;
          while (2)
          {
            if (v185)
            {
              v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v92 = __OFADD__(v86++, 1);
              if (v92)
              {
                goto LABEL_136;
              }
            }

            else
            {
              if (v86 >= *(v183 + 16))
              {
                goto LABEL_137;
              }

              v91 = v181[v86];
              v92 = __OFADD__(v86++, 1);
              if (v92)
              {
                goto LABEL_136;
              }
            }

            v93 = *(v40 + 16);
            v94 = v91;
            v95 = v94;
            if (!v93 || (v96 = v94, v97 = sub_100393C74(v94), v95 = v96, (v98 & 1) == 0))
            {

              v11 = v95;
              v8 = Logger.logObject.getter();
              v135 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v8, v135))
              {
                goto LABEL_126;
              }

              v136 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              v200 = v209;
              *v136 = 136446978;
              *(v136 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v200);
              *(v136 + 12) = 2082;
              v137 = *(v5 + 5);
              v205 = *(v5 + 3);
              v206[0] = v137;
              *(v206 + 14) = *(v5 + 54);
              sub_100009DAC(&v205, v199);
              v138 = sub_1000063E8();
              v140 = v139;
              sub_1005812D4(&v205);
              v141 = sub_10000668C(v138, v140, &v200);

              *(v136 + 14) = v141;
              *(v136 + 22) = 2080;
              v142 = [v11 description];
              v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v145 = v144;

              v146 = sub_10000668C(v143, v145, &v200);

              *(v136 + 24) = v146;
              *(v136 + 32) = 2080;
              v147 = [v11 description];
              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v150 = v149;

              v151 = v179;
              v152 = sub_10000668C(v148, v150, &v200);

              *(v136 + 34) = v152;
              _os_log_impl(&_mh_execute_header, v8, v135, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v136, 0x2Au);
              swift_arrayDestroy();

              goto LABEL_127;
            }

            v99 = *(*(v40 + 56) + 8 * v97);
            v192 = v99;
            if ((v87 & 0xC000000000000001) != 0)
            {
              if (v87 < 0)
              {
                v100 = v87;
              }

              else
              {
                v100 = v87 & 0xFFFFFFFFFFFFFF8;
              }

              v101 = v99;
              v102 = __CocoaDictionary.count.getter();
              if (__OFADD__(v102, 1))
              {
                goto LABEL_139;
              }

              v103 = sub_10021D008(v100, v102 + 1);
            }

            else
            {
              v104 = v99;
              v103 = v87;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v199[0] = v103;
            v107 = sub_10002B924(v96);
            v108 = *(v103 + 16);
            v109 = (v106 & 1) == 0;
            v110 = v108 + v109;
            if (__OFADD__(v108, v109))
            {
              goto LABEL_138;
            }

            v111 = v106;
            if (*(v103 + 24) < v110)
            {
              sub_10036CABC(v110, isUniquelyReferenced_nonNull_native);
              v87 = v199[0];
              v112 = sub_10002B924(v96);
              if ((v111 & 1) != (v113 & 1))
              {
                goto LABEL_144;
              }

              v107 = v112;
              goto LABEL_88;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v114 = v96;
              v87 = v103;
              v39 = v193;
              if ((v106 & 1) == 0)
              {
                goto LABEL_92;
              }

LABEL_70:

              v88 = *(v87 + 56);
              v89 = v114;
              v90 = *(v88 + 8 * v107);
              *(v88 + 8 * v107) = v192;
            }

            else
            {
              v188 = v5;
              sub_1000F5104(&qword_10093D598, &unk_10079B210);
              v117 = static _DictionaryStorage.copy(original:)();
              v87 = v117;
              if (*(v103 + 16))
              {
                v118 = (v117 + 64);
                __src = (v103 + 64);
                v119 = ((1 << *(v87 + 32)) + 63) >> 6;
                if (v87 != v103 || v118 >= &__src[8 * v119])
                {
                  memmove(v118, __src, 8 * v119);
                }

                v120 = 0;
                *(v87 + 16) = *(v103 + 16);
                v121 = 1 << *(v103 + 32);
                if (v121 < 64)
                {
                  v122 = ~(-1 << v121);
                }

                else
                {
                  v122 = -1;
                }

                v168 = (v121 + 63) >> 6;
                v123 = v122 & *(v103 + 64);
                if (v123)
                {
                  do
                  {
                    v124 = __clz(__rbit64(v123));
                    v170 = (v123 - 1) & v123;
LABEL_111:
                    v127 = v124 | (v120 << 6);
                    v128 = *(*(v103 + 48) + 8 * v127);
                    v129 = *(*(v103 + 56) + 8 * v127);
                    *(*(v87 + 48) + 8 * v127) = v128;
                    *(*(v87 + 56) + 8 * v127) = v129;
                    v130 = v128;
                    v131 = v129;
                    v123 = v170;
                  }

                  while (v170);
                }

                v125 = v120;
                while (1)
                {
                  v120 = v125 + 1;
                  if (__OFADD__(v125, 1))
                  {
                    goto LABEL_143;
                  }

                  if (v120 >= v168)
                  {
                    break;
                  }

                  v126 = *&__src[8 * v120];
                  ++v125;
                  if (v126)
                  {
                    v124 = __clz(__rbit64(v126));
                    v170 = (v126 - 1) & v126;
                    goto LABEL_111;
                  }
                }
              }

              v5 = v188;
LABEL_88:
              v39 = v193;
              v114 = v96;
              if (v111)
              {
                goto LABEL_70;
              }

LABEL_92:
              *(v87 + 8 * (v107 >> 6) + 64) |= 1 << v107;
              *(*(v87 + 48) + 8 * v107) = v114;
              *(*(v87 + 56) + 8 * v107) = v192;

              v115 = *(v87 + 16);
              v92 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v92)
              {
                goto LABEL_140;
              }

              *(v87 + 16) = v116;
            }

            v40 = v190;
            if (v86 == v85)
            {
              goto LABEL_115;
            }

            continue;
          }
        }
      }

      __break(1u);
LABEL_129:

      v153 = v28;

      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *v156 = 136446722;
        *(v156 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v200);
        *(v156 + 12) = 2082;
        v157 = *(v5 + 5);
        v203 = *(v5 + 3);
        v204[0] = v157;
        *(v204 + 14) = *(v5 + 54);
        sub_100009DAC(&v203, v199);
        v158 = sub_1000063E8();
        v160 = v159;
        sub_1005812D4(&v203);
        v161 = sub_10000668C(v158, v160, &v200);

        *(v156 + 14) = v161;
        *(v156 + 22) = 2080;
        v162 = [v153 description];
        v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v165 = v164;

        v166 = v179;
        v167 = sub_10000668C(v163, v165, &v200);

        *(v156 + 24) = v167;
        _os_log_impl(&_mh_execute_header, v154, v155, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v156, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v166 = v179;
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v153];
      swift_willThrow();
    }
  }
}

void sub_10064B780(unint64_t a1, uint64_t a2, void *a3)
{
  v191 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v187 = &v191;
  v9 = sub_1003E0D58(sub_1006AC8A0, &v186, a1);
  if (v4)
  {
    return;
  }

  v10 = v9;
  v179 = a3;
  v11 = v3;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v180 = v11;
  v183 = v10;
  if (os_log_type_enabled(v13, v14))
  {
    v184 = v8;
    v15 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v188[0] = v198;
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v188);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v10 + 16);

    *(v15 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v16 = [swift_getObjCClassFromMetadata() description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000668C(v17, v19, v188);

    *(v15 + 24) = v20;
    v10 = v183;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v184, v7, v188);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    v7 = v198;
    swift_arrayDestroy();
  }

  else
  {
  }

  v198 = *(v10 + 16);
  if (!v198)
  {
LABEL_30:

    return;
  }

  v190 = _swiftEmptySetSingleton;
  v185 = (v10 + 32);

  v21 = 0;
  do
  {
    if (v21 >= *(v10 + 16))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:

      v144 = v7;

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = v10;
        v148 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *v148 = 136446722;
        *(v148 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v189);
        *(v148 + 12) = 2082;
        v149 = *(v147 + 40);
        v192 = *(v147 + 24);
        v193[0] = v149;
        *(v193 + 14) = *(v147 + 54);
        sub_100009DAC(&v192, v188);
        v150 = sub_1000063E8();
        v152 = v151;
        sub_1005812D4(&v192);
        v153 = sub_10000668C(v150, v152, &v189);

        *(v148 + 14) = v153;
        *(v148 + 22) = 2080;
        v154 = [v144 description];
        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v157 = v156;

        v158 = sub_10000668C(v155, v157, &v189);
        v14 = v169;

        *(v148 + 24) = v158;
        _os_log_impl(&_mh_execute_header, v145, v146, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v148, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v144];
      swift_willThrow();

      return;
    }

    v22 = &v185[2 * v21];
    v7 = v22[1];
    v23 = *(v7 + 16);
    if (v23)
    {
      v24 = *v22;

      v14 = 32;
      do
      {
        v25 = sub_10022FDD4(v24, *(v7 + v14));
        sub_100392144(v25);

        ++v14;
        --v23;
      }

      while (v23);

      v10 = v183;
    }

    ++v21;
  }

  while (v21 != v198);

  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  if (!v7)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_29:
    v31 = sub_1005E2514(v190);

    v32 = sub_10065F214(v31, v179);

    v33 = sub_10066AE78(v30, v179);
    v10 = v180;

    swift_beginAccess();
    v34 = 0;
    v35 = &selRef_persistentStoreForIdentifier_;
    v171 = v33;
    v174 = v32;
    while (1)
    {
      if (v34 >= v183[2])
      {
        goto LABEL_145;
      }

      v163 = v34;
      v36 = &v185[2 * v34];
      v37 = v36[1];
      v14 = *v36;
      v172 = v37;

      v7 = sub_1005E3810([v14 v35[106]], &unk_10093F770, off_1008D41E8);

      v38 = v179[6];
      if ((v38 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v38 + 16))
      {
        v40 = v7;

        v43 = sub_10002B924(v40);
        if (v44)
        {
          v42 = *(*(v38 + 56) + 8 * v43);
LABEL_40:

LABEL_42:
          v10 = v180;
          goto LABEL_43;
        }

LABEL_41:

        v42 = 0;
        goto LABEL_42;
      }

      v42 = 0;
LABEL_43:

      v169 = v14;
      if (!*(v171 + 16))
      {
        goto LABEL_133;
      }

      v45 = sub_100393C74(v7);
      if ((v46 & 1) == 0)
      {
        goto LABEL_133;
      }

      v47 = *(*(v171 + 56) + 8 * v45);
      v48 = v172;
      swift_bridgeObjectRetain_n();
      v49 = v7;
      v170 = v47;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      v166 = v49;
      if (os_log_type_enabled(v50, v51))
      {
        v175 = v51;
        log = v50;
        v52 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *v52 = 136446978;
        *(v52 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v189);
        *(v52 + 12) = 2082;
        v53 = *(v10 + 40);
        v196 = *(v10 + 24);
        v197[0] = v53;
        *(v197 + 14) = *(v10 + 54);
        sub_100009DAC(&v196, v188);
        v54 = sub_1000063E8();
        v56 = v55;
        sub_1005812D4(&v196);
        v57 = sub_10000668C(v54, v56, &v189);

        *(v52 + 14) = v57;
        *(v52 + 22) = 2114;
        *(v52 + 24) = v49;
        *v181 = v49;
        *(v52 + 32) = 2082;
        v58 = v172[2];
        if (v58)
        {
          v188[0] = _swiftEmptyArrayStorage;
          v59 = v49;
          sub_100026EF4(0, v58, 0);
          v60 = v188[0];
          v61 = 32;
          do
          {
            v62 = 0xD000000000000014;
            if (*(v48 + v61) == 2)
            {
              v62 = 0x694C746E65726170;
              v63 = 0xEC00000044497473;
            }

            else
            {
              v63 = 0x80000001007E9FD0;
            }

            if (*(v48 + v61))
            {
              v64 = 0x6341746E65726170;
            }

            else
            {
              v64 = 0x49746E756F636361;
            }

            if (*(v48 + v61))
            {
              v65 = 0xEF4449746E756F63;
            }

            else
            {
              v65 = 0xE900000000000044;
            }

            if (*(v48 + v61) <= 1u)
            {
              v66 = v64;
            }

            else
            {
              v66 = v62;
            }

            if (*(v48 + v61) <= 1u)
            {
              v67 = v65;
            }

            else
            {
              v67 = v63;
            }

            v188[0] = v60;
            v69 = *(v60 + 16);
            v68 = *(v60 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_100026EF4((v68 > 1), v69 + 1, 1);
              v48 = v172;
              v60 = v188[0];
            }

            *(v60 + 16) = v69 + 1;
            v70 = v60 + 16 * v69;
            *(v70 + 32) = v66;
            *(v70 + 40) = v67;
            ++v61;
            --v58;
          }

          while (v58);

          v10 = v180;
          v32 = v174;
        }

        else
        {
          v71 = v49;
        }

        v72 = Array.description.getter();
        v74 = v73;

        v75 = sub_10000668C(v72, v74, &v189);

        *(v52 + 34) = v75;
        _os_log_impl(&_mh_execute_header, log, v175, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v52, 0x2Au);
        sub_1000050A4(v181, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v14 = v169;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v164 = v48[2];
      if (v164)
      {
        v76 = 0;
        v165 = v48 + 4;
        while (1)
        {
          if (v76 >= v48[2])
          {
            goto LABEL_144;
          }

          v167 = v76;
          v168 = v165[v76];
          v77 = sub_10022FDD4(v14, v168);
          if (!(v77 >> 62))
          {
            v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v78)
            {
              break;
            }

            goto LABEL_121;
          }

          v121 = v77;
          v78 = _CocoaArrayWrapper.endIndex.getter();
          v77 = v121;
          if (v78)
          {
            break;
          }

LABEL_121:
          v80 = _swiftEmptyDictionarySingleton;
LABEL_122:

          sub_10045BDE8(v80);
          v123 = v122;

          v14 = v169;
          sub_1002300BC(v169, v170, v168, v123);

          v76 = v167 + 1;
          v48 = v172;
          if (v167 + 1 == v164)
          {
            goto LABEL_123;
          }
        }

        v79 = 0;
        v182 = v77 & 0xC000000000000001;
        v176 = (v77 + 32);
        loga = (v77 & 0xFFFFFFFFFFFFFF8);
        v80 = _swiftEmptyDictionarySingleton;
        v173 = v78;
        while (2)
        {
          if (v182)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v84 = __OFADD__(v79, 1);
            v79 = (v79 + 1);
            if (v84)
            {
              goto LABEL_139;
            }
          }

          else
          {
            if (v79 >= loga[2].isa)
            {
              goto LABEL_140;
            }

            v83 = v176[v79];
            v84 = __OFADD__(v79, 1);
            v79 = (v79 + 1);
            if (v84)
            {
              goto LABEL_139;
            }
          }

          v85 = *(v32 + 16);
          v86 = v83;
          v87 = v86;
          if (!v85 || (v88 = sub_100393C74(v86), (v89 & 1) == 0))
          {

            v124 = v87;
            v125 = Logger.logObject.getter();
            v126 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v125, v126))
            {
              v127 = v10;
              v128 = swift_slowAlloc();
              v198 = swift_slowAlloc();
              v189 = v198;
              *v128 = 136446978;
              *(v128 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v189);
              *(v128 + 12) = 2082;
              v129 = *(v127 + 40);
              v194 = *(v127 + 24);
              v195[0] = v129;
              *(v195 + 14) = *(v127 + 54);
              sub_100009DAC(&v194, v188);
              v130 = sub_1000063E8();
              v132 = v131;
              sub_1005812D4(&v194);
              v133 = sub_10000668C(v130, v132, &v189);

              *(v128 + 14) = v133;
              *(v128 + 22) = 2080;
              v134 = [v124 description];
              v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v137 = v136;

              v138 = sub_10000668C(v135, v137, &v189);

              *(v128 + 24) = v138;
              *(v128 + 32) = 2080;
              v139 = [v124 description];
              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;

              v143 = sub_10000668C(v140, v142, &v189);

              *(v128 + 34) = v143;
              _os_log_impl(&_mh_execute_header, v125, v126, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v128, 0x2Au);
              swift_arrayDestroy();
            }

            [objc_opt_self() noSuchObjectErrorWithObjectID:v124];
            swift_willThrow();

            return;
          }

          v90 = *(*(v32 + 56) + 8 * v88);
          if ((v80 & 0xC000000000000001) != 0)
          {
            if (v80 < 0)
            {
              v91 = v80;
            }

            else
            {
              v91 = v80 & 0xFFFFFFFFFFFFFF8;
            }

            v92 = v90;
            v93 = __CocoaDictionary.count.getter();
            if (__OFADD__(v93, 1))
            {
              goto LABEL_142;
            }

            v94 = sub_10021D008(v91, v93 + 1);
          }

          else
          {
            v95 = v90;
            v94 = v80;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v188[0] = v94;
          v98 = sub_10002B924(v87);
          v99 = *(v94 + 16);
          v100 = (v97 & 1) == 0;
          v101 = v99 + v100;
          if (__OFADD__(v99, v100))
          {
            goto LABEL_141;
          }

          v102 = v97;
          if (*(v94 + 24) >= v101)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v80 = v94;
              v32 = v174;
              if ((v97 & 1) == 0)
              {
                goto LABEL_97;
              }

              goto LABEL_76;
            }

            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v107 = static _DictionaryStorage.copy(original:)();
            v80 = v107;
            if (*(v94 + 16))
            {
              v108 = (v107 + 64);
              __src = (v94 + 64);
              v109 = ((1 << *(v80 + 32)) + 63) >> 6;
              if (v80 != v94 || v108 >= &__src[8 * v109])
              {
                memmove(v108, __src, 8 * v109);
              }

              v110 = 0;
              *(v80 + 16) = *(v94 + 16);
              v111 = 1 << *(v94 + 32);
              if (v111 < 64)
              {
                v112 = ~(-1 << v111);
              }

              else
              {
                v112 = -1;
              }

              v159 = (v111 + 63) >> 6;
              v113 = v112 & *(v94 + 64);
              if (v113)
              {
                do
                {
                  v114 = __clz(__rbit64(v113));
                  v162 = (v113 - 1) & v113;
LABEL_116:
                  v117 = v114 | (v110 << 6);
                  v118 = *(*(v94 + 48) + 8 * v117);
                  v161 = *(*(v94 + 56) + 8 * v117);
                  *(*(v80 + 48) + 8 * v117) = v118;
                  *(*(v80 + 56) + 8 * v117) = v161;
                  v119 = v118;
                  v120 = v161;
                  v113 = v162;
                }

                while (v162);
              }

              v115 = v110;
              while (1)
              {
                v110 = v115 + 1;
                if (__OFADD__(v115, 1))
                {
                  goto LABEL_146;
                }

                if (v110 >= v159)
                {
                  break;
                }

                v116 = *&__src[8 * v110];
                ++v115;
                if (v116)
                {
                  v114 = __clz(__rbit64(v116));
                  v162 = (v116 - 1) & v116;
                  goto LABEL_116;
                }
              }
            }

            v32 = v174;
            if (v102)
            {
              goto LABEL_76;
            }

LABEL_97:
            *(v80 + 8 * (v98 >> 6) + 64) |= 1 << v98;
            *(*(v80 + 48) + 8 * v98) = v87;
            *(*(v80 + 56) + 8 * v98) = v90;

            v105 = *(v80 + 16);
            v84 = __OFADD__(v105, 1);
            v106 = v105 + 1;
            if (v84)
            {
              goto LABEL_143;
            }

            *(v80 + 16) = v106;
          }

          else
          {
            sub_10036CABC(v101, isUniquelyReferenced_nonNull_native);
            v80 = v188[0];
            v103 = sub_10002B924(v87);
            if ((v102 & 1) != (v104 & 1))
            {
              goto LABEL_147;
            }

            v98 = v103;
            v32 = v174;
            if ((v102 & 1) == 0)
            {
              goto LABEL_97;
            }

LABEL_76:

            v81 = *(v80 + 56);
            v82 = *(v81 + 8 * v98);
            *(v81 + 8 * v98) = v90;
          }

          v10 = v180;
          if (v79 == v173)
          {
            goto LABEL_122;
          }

          continue;
        }
      }

LABEL_123:

      if (*(v10 + 104) == 1)
      {
        [v170 updateChangeCount];
      }

      v34 = v163 + 1;
      v35 = &selRef_persistentStoreForIdentifier_;
      if (v163 + 1 == v198)
      {

        goto LABEL_30;
      }
    }

    if (v38 < 0)
    {
      v39 = v179[6];
    }

    v40 = v7;

    v41 = __CocoaDictionary.lookup(_:)();
    if (v41)
    {
      v189 = v41;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v42 = v188[0];
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v188[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v26 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_132;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v27 = *(a1 + 8 * v10 + 32);
      }

      v28 = v27;
      sub_1005E3810([v27 remObjectID], &unk_10093F770, off_1008D41E8);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v29 = *(v188[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v10;
      if (v26 == v7)
      {
        v30 = v188[0];
        goto LABEL_29;
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
  __break(1u);
LABEL_147:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10064CC40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v199 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v194 = &v199;
  v195 = v5;
  v10 = sub_1003E0D84(sub_1006AC9E8, v193, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v187 = a1;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v190 = v11;
  v185 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v191 = v9;
    v15 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v196[0] = v206;
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v196);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11[2];

    *(v15 + 22) = 2082;
    type metadata accessor for REMCDSavedReminder();
    v16 = v5;
    v17 = [swift_getObjCClassFromMetadata() description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v5 = v16;
    v21 = sub_10000668C(v18, v20, v196);

    *(v15 + 24) = v21;
    v11 = v190;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v191, v8, v196);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    v8 = v206;
    swift_arrayDestroy();
  }

  else
  {
  }

  v206 = v11[2];
  if (!v206)
  {

    return;
  }

  v198 = _swiftEmptySetSingleton;
  v192 = v11 + 4;

  v22 = 0;
  do
  {
    if (v22 >= v11[2])
    {
      __break(1u);
LABEL_122:

      v141 = v14;
LABEL_123:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

      swift_willThrow();
      return;
    }

    v23 = &v192[2 * v22];
    v8 = v23[1];
    isa = v8[2].isa;
    if (isa)
    {
      v25 = *v23;

      v14 = 32;
      do
      {
        v26 = sub_1005139DC(v25, *(&v8->isa + v14));
        sub_100392144(v26);

        ++v14;
        --isa;
      }

      while (isa);

      v11 = v190;
    }

    ++v22;
  }

  while (v22 != v206);

  if (v187 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v27)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_29:
    v34 = sub_1005E2514(v198);

    v35 = sub_10065F214(v34, v185);

    v175 = sub_10066B748(v33, v185);

    swift_beginAccess();
    v36 = 0;
    v37 = &selRef_persistentStoreForIdentifier_;
    v38 = v190;
    v186 = v35;
    while (1)
    {
      if (v36 >= v38[2])
      {
        goto LABEL_138;
      }

      v168 = v36;
      v39 = &v192[2 * v36];
      v40 = v39[1];
      v41 = *v39;
      v177 = v40;

      v27 = sub_1005EA438([v41 v37[106]]);

      v42 = v185[6];
      v176 = v41;
      if ((v42 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v42 + 16))
      {
        v43 = v27;

        v46 = sub_10002B924(v43);
        if (v47)
        {
          v45 = *(*(v42 + 56) + 8 * v46);
LABEL_38:

LABEL_40:
          v38 = v190;
          goto LABEL_41;
        }

LABEL_39:

        v45 = 0;
        goto LABEL_40;
      }

      v45 = 0;
LABEL_41:

      if (!*(v175 + 16))
      {
        goto LABEL_125;
      }

      v48 = sub_100393C74(v27);
      if ((v49 & 1) == 0)
      {
        goto LABEL_125;
      }

      v50 = *(*(v175 + 56) + 8 * v48);
      v51 = v177;
      swift_bridgeObjectRetain_n();
      v52 = v27;
      v174 = v50;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      v171 = v52;
      if (os_log_type_enabled(v53, v54))
      {
        log = v53;
        v188 = v54;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v55 = 136446978;
        *(v55 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v197);
        *(v55 + 12) = 2082;
        v57 = *(v5 + 40);
        v204 = *(v5 + 24);
        v205[0] = v57;
        *(v205 + 14) = *(v5 + 54);
        sub_100009DAC(&v204, v196);
        v58 = sub_1000063E8();
        v60 = v59;
        sub_1005812D4(&v204);
        v61 = sub_10000668C(v58, v60, &v197);

        *(v55 + 14) = v61;
        *(v55 + 22) = 2114;
        *(v55 + 24) = v52;
        *v56 = v52;
        *(v55 + 32) = 2082;
        v62 = v177[2];
        if (v62)
        {
          v183 = v5;
          v196[0] = _swiftEmptyArrayStorage;
          v63 = v52;
          sub_100026EF4(0, v62, 0);
          v64 = v196[0];
          v65 = *(v196[0] + 16);
          v66 = 16 * v65;
          v67 = 32;
          v68 = v177;
          do
          {
            if (*(v68 + v67))
            {
              v69 = 0x44497473696CLL;
            }

            else
            {
              v69 = 0x49746E756F636361;
            }

            if (*(v68 + v67))
            {
              v70 = 0xE600000000000000;
            }

            else
            {
              v70 = 0xE900000000000044;
            }

            v196[0] = v64;
            v71 = *(v64 + 24);
            v72 = v65 + 1;
            if (v65 >= v71 >> 1)
            {
              sub_100026EF4((v71 > 1), v65 + 1, 1);
              v68 = v177;
              v64 = v196[0];
            }

            *(v64 + 16) = v72;
            v73 = v64 + v66;
            *(v73 + 32) = v69;
            *(v73 + 40) = v70;
            v66 += 16;
            ++v67;
            v65 = v72;
            --v62;
          }

          while (v62);
          v51 = v68;

          v5 = v183;
          v38 = v190;
        }

        else
        {
          v75 = v52;
        }

        v74 = v176;
        v76 = Array.description.getter();
        v78 = v77;

        v79 = sub_10000668C(v76, v78, &v197);

        *(v55 + 34) = v79;
        _os_log_impl(&_mh_execute_header, log, v188, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v55, 0x2Au);
        sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v74 = v176;
      }

      v80 = v186;
      v169 = v51[2];
      if (v169)
      {
        v81 = 0;
        v170 = v51 + 4;
        while (1)
        {
          if (v81 >= v51[2])
          {
            goto LABEL_137;
          }

          v173 = *(v170 + v81);
          v82 = sub_1005139DC(v74, v173);
          if (v82 >> 62)
          {
            v131 = v82;
            v83 = _CocoaArrayWrapper.endIndex.getter();
            v82 = v131;
          }

          else
          {
            v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v172 = v81;
          if (v83)
          {
            break;
          }

          v85 = _swiftEmptyDictionarySingleton;
LABEL_111:

          sub_10045BDE8(v85);
          v130 = v129;

          v74 = v176;
          sub_100513B08(v176, v174, v173, v130);
          v81 = v172 + 1;

          v51 = v177;
          if (v172 + 1 == v169)
          {
            goto LABEL_114;
          }
        }

        v84 = 0;
        v180 = v82 & 0xFFFFFFFFFFFFFF8;
        v181 = v82 & 0xC000000000000001;
        loga = v82 + 4;
        v85 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v181)
          {
            v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v89 = __OFADD__(v84++, 1);
            if (v89)
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (v84 >= *(v180 + 16))
            {
              goto LABEL_133;
            }

            v88 = loga[v84].isa;
            v89 = __OFADD__(v84++, 1);
            if (v89)
            {
              goto LABEL_132;
            }
          }

          v90 = *(v80 + 16);
          v91 = v88;
          v92 = v91;
          if (!v90 || (v93 = v91, v94 = sub_100393C74(v91), v92 = v93, (v95 & 1) == 0))
          {
            v14 = v176;

            v11 = v92;
            v8 = Logger.logObject.getter();
            v132 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v8, v132))
            {
              goto LABEL_122;
            }

            v133 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            v197 = v206;
            *v133 = 136446978;
            *(v133 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v197);
            *(v133 + 12) = 2082;
            v134 = *(v5 + 40);
            v202 = *(v5 + 24);
            v203[0] = v134;
            *(v203 + 14) = *(v5 + 54);
            sub_100009DAC(&v202, v196);
            v135 = sub_1000063E8();
            v137 = v136;
            sub_1005812D4(&v202);
            v138 = sub_10000668C(v135, v137, &v197);

            *(v133 + 14) = v138;
            *(v133 + 22) = 2080;
            v139 = [v11 description];
            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v141 = v176;
            v143 = v142;

            v144 = sub_10000668C(v140, v143, &v197);

            *(v133 + 24) = v144;
            *(v133 + 32) = 2080;
            v145 = [v11 description];
            v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v148 = v147;

            v149 = sub_10000668C(v146, v148, &v197);

            *(v133 + 34) = v149;
            _os_log_impl(&_mh_execute_header, v8, v132, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v133, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_123;
          }

          v96 = *(*(v80 + 56) + 8 * v94);
          v189 = v96;
          if ((v85 & 0xC000000000000001) != 0)
          {
            if (v85 < 0)
            {
              v97 = v85;
            }

            else
            {
              v97 = v85 & 0xFFFFFFFFFFFFFF8;
            }

            v98 = v96;
            v99 = __CocoaDictionary.count.getter();
            if (__OFADD__(v99, 1))
            {
              goto LABEL_135;
            }

            v100 = sub_10021D008(v97, v99 + 1);
          }

          else
          {
            v101 = v96;
            v100 = v85;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v196[0] = v100;
          v104 = sub_10002B924(v93);
          v105 = *(v100 + 16);
          v106 = (v103 & 1) == 0;
          v107 = v105 + v106;
          if (__OFADD__(v105, v106))
          {
            goto LABEL_134;
          }

          v108 = v103;
          if (*(v100 + 24) < v107)
          {
            sub_10036CABC(v107, isUniquelyReferenced_nonNull_native);
            v85 = v196[0];
            v109 = sub_10002B924(v93);
            if ((v108 & 1) != (v110 & 1))
            {
              goto LABEL_140;
            }

            v104 = v109;
            goto LABEL_84;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v111 = v93;
            v85 = v100;
            v80 = v186;
            if ((v103 & 1) == 0)
            {
              goto LABEL_88;
            }

LABEL_66:

            v86 = *(v85 + 56);
            v87 = *(v86 + 8 * v104);
            *(v86 + 8 * v104) = v189;
          }

          else
          {
            v184 = v5;
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v114 = static _DictionaryStorage.copy(original:)();
            v85 = v114;
            if (*(v100 + 16))
            {
              v115 = (v114 + 64);
              __src = (v100 + 64);
              v116 = ((1 << *(v85 + 32)) + 63) >> 6;
              if (v85 != v100 || v115 >= &__src[8 * v116])
              {
                memmove(v115, __src, 8 * v116);
              }

              v117 = 0;
              *(v85 + 16) = *(v100 + 16);
              v118 = 1 << *(v100 + 32);
              if (v118 < 64)
              {
                v119 = ~(-1 << v118);
              }

              else
              {
                v119 = -1;
              }

              v165 = (v118 + 63) >> 6;
              v120 = v119 & *(v100 + 64);
              if (v120)
              {
                do
                {
                  v121 = __clz(__rbit64(v120));
                  v167 = (v120 - 1) & v120;
LABEL_107:
                  v124 = v121 | (v117 << 6);
                  v125 = *(*(v100 + 48) + 8 * v124);
                  v126 = *(*(v100 + 56) + 8 * v124);
                  *(*(v85 + 48) + 8 * v124) = v125;
                  *(*(v85 + 56) + 8 * v124) = v126;
                  v127 = v125;
                  v128 = v126;
                  v120 = v167;
                }

                while (v167);
              }

              v122 = v117;
              while (1)
              {
                v117 = v122 + 1;
                if (__OFADD__(v122, 1))
                {
                  goto LABEL_139;
                }

                if (v117 >= v165)
                {
                  break;
                }

                v123 = *&__src[8 * v117];
                ++v122;
                if (v123)
                {
                  v121 = __clz(__rbit64(v123));
                  v167 = (v123 - 1) & v123;
                  goto LABEL_107;
                }
              }
            }

            v5 = v184;
LABEL_84:
            v80 = v186;
            v111 = v93;
            if (v108)
            {
              goto LABEL_66;
            }

LABEL_88:
            *(v85 + 8 * (v104 >> 6) + 64) |= 1 << v104;
            *(*(v85 + 48) + 8 * v104) = v111;
            *(*(v85 + 56) + 8 * v104) = v189;

            v112 = *(v85 + 16);
            v89 = __OFADD__(v112, 1);
            v113 = v112 + 1;
            if (v89)
            {
              goto LABEL_136;
            }

            *(v85 + 16) = v113;
          }

          v38 = v190;
          if (v84 == v83)
          {
            goto LABEL_111;
          }

          continue;
        }
      }

LABEL_114:

      if (*(v5 + 104) == 1)
      {
        [v174 updateChangeCount];
      }

      v36 = v168 + 1;
      v37 = &selRef_persistentStoreForIdentifier_;
      if (v168 + 1 == v206)
      {

        return;
      }
    }

    v43 = v27;

    v44 = __CocoaDictionary.lookup(_:)();
    if (v44)
    {
      v197 = v44;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v45 = v196[0];
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v182 = v5;
  v196[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v27 < 0)
  {
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
    __break(1u);
LABEL_140:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v28 = 0;
    v5 = v187 & 0xC000000000000001;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v5)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v30 = *(v187 + 8 * v28 + 32);
      }

      v31 = v30;
      isa = sub_1005EA438([v30 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v32 = *(v196[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v28;
      if (v29 == v27)
      {
        v33 = v196[0];
        v5 = v182;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_125:

    v150 = v27;

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *v153 = 136446722;
      *(v153 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v197);
      *(v153 + 12) = 2082;
      v154 = *(v5 + 40);
      v200 = *(v5 + 24);
      v201[0] = v154;
      *(v201 + 14) = *(v5 + 54);
      sub_100009DAC(&v200, v196);
      v155 = sub_1000063E8();
      v157 = v156;
      sub_1005812D4(&v200);
      v158 = sub_10000668C(v155, v157, &v197);

      *(v153 + 14) = v158;
      *(v153 + 22) = 2080;
      v159 = [v150 description];
      v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v162 = v161;

      v163 = sub_10000668C(v160, v162, &v197);
      v164 = v176;

      *(v153 + 24) = v163;
      _os_log_impl(&_mh_execute_header, v151, v152, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v153, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v164 = v176;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v150];
    swift_willThrow();
  }
}

void sub_10064E084(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v204 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v199 = &v204;
  v200 = v5;
  v10 = sub_1003E0DB0(sub_1006AD794, v198, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v192 = a1;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100945730);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v195 = v11;
  v190 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v196 = v9;
    v15 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v201[0] = v211;
    *v15 = 136446978;
    *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v201);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11[2];

    *(v15 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v16 = v5;
    v17 = [swift_getObjCClassFromMetadata() description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v5 = v16;
    v21 = sub_10000668C(v18, v20, v201);

    *(v15 + 24) = v21;
    v11 = v195;
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_10000668C(v196, v8, v201);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
    v8 = v211;
    swift_arrayDestroy();
  }

  else
  {
  }

  v211 = v11[2];
  if (!v211)
  {

    return;
  }

  v203 = _swiftEmptySetSingleton;
  v197 = v11 + 4;

  v22 = 0;
  do
  {
    if (v22 >= v11[2])
    {
      __break(1u);
LABEL_133:

      v146 = v14;
LABEL_134:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v11];

      swift_willThrow();
      return;
    }

    v23 = &v197[2 * v22];
    v8 = v23[1];
    isa = v8[2].isa;
    if (isa)
    {
      v25 = *v23;

      v14 = 32;
      do
      {
        v26 = sub_1002BB620(v25, *(&v8->isa + v14));
        sub_100392144(v26);

        ++v14;
        --isa;
      }

      while (isa);

      v11 = v195;
    }

    ++v22;
  }

  while (v22 != v211);

  if (v192 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v27)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_29:
    v34 = sub_1005E2514(v203);

    v35 = sub_10065F214(v34, v190);

    v180 = sub_10066C018(v33, v190);

    swift_beginAccess();
    v36 = 0;
    v37 = &selRef_persistentStoreForIdentifier_;
    v38 = v195;
    v191 = v35;
    while (1)
    {
      if (v36 >= v38[2])
      {
        goto LABEL_149;
      }

      v173 = v36;
      v39 = &v197[2 * v36];
      v40 = v39[1];
      v41 = *v39;
      v182 = v40;

      v27 = sub_1005E2A38([v41 v37[106]]);

      v42 = v190[6];
      v181 = v41;
      if ((v42 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v42 + 16))
      {
        v43 = v27;

        v46 = sub_10002B924(v43);
        if (v47)
        {
          v45 = *(*(v42 + 56) + 8 * v46);
LABEL_38:

LABEL_40:
          v38 = v195;
          goto LABEL_41;
        }

LABEL_39:

        v45 = 0;
        goto LABEL_40;
      }

      v45 = 0;
LABEL_41:

      if (!*(v180 + 16))
      {
        goto LABEL_136;
      }

      v48 = sub_100393C74(v27);
      if ((v49 & 1) == 0)
      {
        goto LABEL_136;
      }

      v50 = *(*(v180 + 56) + 8 * v48);
      v51 = v182;
      swift_bridgeObjectRetain_n();
      v52 = v27;
      v179 = v50;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      v176 = v52;
      if (os_log_type_enabled(v53, v54))
      {
        log = v53;
        v193 = v54;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v55 = 136446978;
        *(v55 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v202);
        *(v55 + 12) = 2082;
        v57 = *(v5 + 40);
        v209 = *(v5 + 24);
        v210[0] = v57;
        *(v210 + 14) = *(v5 + 54);
        sub_100009DAC(&v209, v201);
        v58 = sub_1000063E8();
        v60 = v59;
        sub_1005812D4(&v209);
        v61 = sub_10000668C(v58, v60, &v202);

        *(v55 + 14) = v61;
        *(v55 + 22) = 2114;
        *(v55 + 24) = v52;
        *v56 = v52;
        *(v55 + 32) = 2082;
        v62 = v182[2];
        if (v62)
        {
          v188 = v5;
          v201[0] = _swiftEmptyArrayStorage;
          v63 = v52;
          sub_100026EF4(0, v62, 0);
          v64 = v201[0];
          v65 = 32;
          v66 = v182;
          do
          {
            v67 = *(v66 + v65);
            v68 = 0xD000000000000014;
            v69 = 0xD00000000000001FLL;
            if (v67 == 4)
            {
              v69 = 0xD000000000000014;
              v70 = 0x80000001007EA510;
            }

            else
            {
              v70 = 0x80000001007EA530;
            }

            if (v67 == 3)
            {
              v71 = 0x80000001007EA4F0;
            }

            else
            {
              v68 = v69;
              v71 = v70;
            }

            v72 = 0xD000000000000010;
            if (v67 == 1)
            {
              v72 = 0x44497473696CLL;
              v73 = 0xE600000000000000;
            }

            else
            {
              v73 = 0x80000001007EA4D0;
            }

            if (!*(v66 + v65))
            {
              v72 = 0x49746E756F636361;
              v73 = 0xE900000000000044;
            }

            if (*(v66 + v65) <= 2u)
            {
              v74 = v72;
            }

            else
            {
              v74 = v68;
            }

            if (*(v66 + v65) <= 2u)
            {
              v75 = v73;
            }

            else
            {
              v75 = v71;
            }

            v201[0] = v64;
            v77 = *(v64 + 16);
            v76 = *(v64 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_100026EF4((v76 > 1), v77 + 1, 1);
              v66 = v182;
              v64 = v201[0];
            }

            *(v64 + 16) = v77 + 1;
            v78 = v64 + 16 * v77;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            ++v65;
            --v62;
          }

          while (v62);
          v51 = v66;

          v5 = v188;
          v38 = v195;
        }

        else
        {
          v80 = v52;
        }

        v79 = v181;
        v81 = Array.description.getter();
        v83 = v82;

        v84 = sub_10000668C(v81, v83, &v202);

        *(v55 + 34) = v84;
        _os_log_impl(&_mh_execute_header, log, v193, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v55, 0x2Au);
        sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v79 = v181;
      }

      v85 = v191;
      v174 = v51[2];
      if (v174)
      {
        v86 = 0;
        v175 = v51 + 4;
        while (1)
        {
          if (v86 >= v51[2])
          {
            goto LABEL_148;
          }

          v178 = *(v175 + v86);
          v87 = sub_1002BB620(v79, v178);
          if (v87 >> 62)
          {
            v136 = v87;
            v88 = _CocoaArrayWrapper.endIndex.getter();
            v87 = v136;
          }

          else
          {
            v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v177 = v86;
          if (v88)
          {
            break;
          }

          v90 = _swiftEmptyDictionarySingleton;
LABEL_122:

          sub_10045BDE8(v90);
          v135 = v134;

          v79 = v181;
          sub_1002BB888(v181, v179, v178, v135);
          v86 = v177 + 1;

          v51 = v182;
          if (v177 + 1 == v174)
          {
            goto LABEL_125;
          }
        }

        v89 = 0;
        v185 = v87 & 0xFFFFFFFFFFFFFF8;
        v186 = v87 & 0xC000000000000001;
        loga = v87 + 4;
        v90 = _swiftEmptyDictionarySingleton;
        while (2)
        {
          if (v186)
          {
            v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v94 = __OFADD__(v89++, 1);
            if (v94)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (v89 >= *(v185 + 16))
            {
              goto LABEL_144;
            }

            v93 = loga[v89].isa;
            v94 = __OFADD__(v89++, 1);
            if (v94)
            {
              goto LABEL_143;
            }
          }

          v95 = *(v85 + 16);
          v96 = v93;
          v97 = v96;
          if (!v95 || (v98 = v96, v99 = sub_100393C74(v96), v97 = v98, (v100 & 1) == 0))
          {
            v14 = v181;

            v11 = v97;
            v8 = Logger.logObject.getter();
            v137 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v8, v137))
            {
              goto LABEL_133;
            }

            v138 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v202 = v211;
            *v138 = 136446978;
            *(v138 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v202);
            *(v138 + 12) = 2082;
            v139 = *(v5 + 40);
            v207 = *(v5 + 24);
            v208[0] = v139;
            *(v208 + 14) = *(v5 + 54);
            sub_100009DAC(&v207, v201);
            v140 = sub_1000063E8();
            v142 = v141;
            sub_1005812D4(&v207);
            v143 = sub_10000668C(v140, v142, &v202);

            *(v138 + 14) = v143;
            *(v138 + 22) = 2080;
            v144 = [v11 description];
            v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v146 = v181;
            v148 = v147;

            v149 = sub_10000668C(v145, v148, &v202);

            *(v138 + 24) = v149;
            *(v138 + 32) = 2080;
            v150 = [v11 description];
            v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v153 = v152;

            v154 = sub_10000668C(v151, v153, &v202);

            *(v138 + 34) = v154;
            _os_log_impl(&_mh_execute_header, v8, v137, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v138, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_134;
          }

          v101 = *(*(v85 + 56) + 8 * v99);
          v194 = v101;
          if ((v90 & 0xC000000000000001) != 0)
          {
            if (v90 < 0)
            {
              v102 = v90;
            }

            else
            {
              v102 = v90 & 0xFFFFFFFFFFFFFF8;
            }

            v103 = v101;
            v104 = __CocoaDictionary.count.getter();
            if (__OFADD__(v104, 1))
            {
              goto LABEL_146;
            }

            v105 = sub_10021D008(v102, v104 + 1);
          }

          else
          {
            v106 = v101;
            v105 = v90;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v201[0] = v105;
          v109 = sub_10002B924(v98);
          v110 = *(v105 + 16);
          v111 = (v108 & 1) == 0;
          v112 = v110 + v111;
          if (__OFADD__(v110, v111))
          {
            goto LABEL_145;
          }

          v113 = v108;
          if (*(v105 + 24) < v112)
          {
            sub_10036CABC(v112, isUniquelyReferenced_nonNull_native);
            v90 = v201[0];
            v114 = sub_10002B924(v98);
            if ((v113 & 1) != (v115 & 1))
            {
              goto LABEL_151;
            }

            v109 = v114;
            goto LABEL_95;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v116 = v98;
            v90 = v105;
            v85 = v191;
            if ((v108 & 1) == 0)
            {
              goto LABEL_99;
            }

LABEL_77:

            v91 = *(v90 + 56);
            v92 = *(v91 + 8 * v109);
            *(v91 + 8 * v109) = v194;
          }

          else
          {
            v189 = v5;
            sub_1000F5104(&qword_10093D598, &unk_10079B210);
            v119 = static _DictionaryStorage.copy(original:)();
            v90 = v119;
            if (*(v105 + 16))
            {
              v120 = (v119 + 64);
              __src = (v105 + 64);
              v121 = ((1 << *(v90 + 32)) + 63) >> 6;
              if (v90 != v105 || v120 >= &__src[8 * v121])
              {
                memmove(v120, __src, 8 * v121);
              }

              v122 = 0;
              *(v90 + 16) = *(v105 + 16);
              v123 = 1 << *(v105 + 32);
              if (v123 < 64)
              {
                v124 = ~(-1 << v123);
              }

              else
              {
                v124 = -1;
              }

              v170 = (v123 + 63) >> 6;
              v125 = v124 & *(v105 + 64);
              if (v125)
              {
                do
                {
                  v126 = __clz(__rbit64(v125));
                  v172 = (v125 - 1) & v125;
LABEL_118:
                  v129 = v126 | (v122 << 6);
                  v130 = *(*(v105 + 48) + 8 * v129);
                  v131 = *(*(v105 + 56) + 8 * v129);
                  *(*(v90 + 48) + 8 * v129) = v130;
                  *(*(v90 + 56) + 8 * v129) = v131;
                  v132 = v130;
                  v133 = v131;
                  v125 = v172;
                }

                while (v172);
              }

              v127 = v122;
              while (1)
              {
                v122 = v127 + 1;
                if (__OFADD__(v127, 1))
                {
                  goto LABEL_150;
                }

                if (v122 >= v170)
                {
                  break;
                }

                v128 = *&__src[8 * v122];
                ++v127;
                if (v128)
                {
                  v126 = __clz(__rbit64(v128));
                  v172 = (v128 - 1) & v128;
                  goto LABEL_118;
                }
              }
            }

            v5 = v189;
LABEL_95:
            v85 = v191;
            v116 = v98;
            if (v113)
            {
              goto LABEL_77;
            }

LABEL_99:
            *(v90 + 8 * (v109 >> 6) + 64) |= 1 << v109;
            *(*(v90 + 48) + 8 * v109) = v116;
            *(*(v90 + 56) + 8 * v109) = v194;

            v117 = *(v90 + 16);
            v94 = __OFADD__(v117, 1);
            v118 = v117 + 1;
            if (v94)
            {
              goto LABEL_147;
            }

            *(v90 + 16) = v118;
          }

          v38 = v195;
          if (v89 == v88)
          {
            goto LABEL_122;
          }

          continue;
        }
      }

LABEL_125:

      if (*(v5 + 104) == 1)
      {
        [v179 updateChangeCount];
      }

      v36 = v173 + 1;
      v37 = &selRef_persistentStoreForIdentifier_;
      if (v173 + 1 == v211)
      {

        return;
      }
    }

    v43 = v27;

    v44 = __CocoaDictionary.lookup(_:)();
    if (v44)
    {
      v202 = v44;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v45 = v201[0];
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v187 = v5;
  v201[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v27 < 0)
  {
    __break(1u);
LABEL_143:
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

  else
  {
    v28 = 0;
    v5 = v192 & 0xC000000000000001;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v5)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);

          return;
        }

        v30 = *(v192 + 8 * v28 + 32);
      }

      v31 = v30;
      isa = sub_1005E2A38([v30 remObjectID]);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v32 = *(v201[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v28;
      if (v29 == v27)
      {
        v33 = v201[0];
        v5 = v187;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_136:

    v155 = v27;

    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      *v158 = 136446722;
      *(v158 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v202);
      *(v158 + 12) = 2082;
      v159 = *(v5 + 40);
      v205 = *(v5 + 24);
      v206[0] = v159;
      *(v206 + 14) = *(v5 + 54);
      sub_100009DAC(&v205, v201);
      v160 = sub_1000063E8();
      v162 = v161;
      sub_1005812D4(&v205);
      v163 = sub_10000668C(v160, v162, &v202);

      *(v158 + 14) = v163;
      *(v158 + 22) = 2080;
      v164 = [v155 description];
      v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v166;

      v168 = sub_10000668C(v165, v167, &v202);
      v169 = v181;

      *(v158 + 24) = v168;
      _os_log_impl(&_mh_execute_header, v156, v157, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v158, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v169 = v181;
    }

    [objc_opt_self() noSuchObjectErrorWithObjectID:v155];
    swift_willThrow();
  }
}

void sub_10064F56C(unint64_t a1, uint64_t a2, void *a3)
{
  v200 = a2;
  v8 = a3[2];
  v7 = a3[3];
  v196 = &v200;
  v9 = sub_1003E0DDC(sub_1006AF658, &v195, a1);
  if (!v4)
  {
    v10 = v9;
    v189 = a3;
    v11 = v3;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100945730);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v190 = v11;
    v192 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v193 = v8;
      v15 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v197[0] = v207;
      *v15 = 136446978;
      *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v197);
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v10 + 16);

      *(v15 + 22) = 2082;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v16 = [swift_getObjCClassFromMetadata() description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_10000668C(v17, v19, v197);

      *(v15 + 24) = v20;
      v10 = v192;
      *(v15 + 32) = 2082;
      *(v15 + 34) = sub_10000668C(v193, v7, v197);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
      v7 = v207;
      swift_arrayDestroy();
    }

    else
    {
    }

    v207 = *(v10 + 16);
    if (!v207)
    {
LABEL_30:

      return;
    }

    v199 = _swiftEmptySetSingleton;
    v194 = (v10 + 32);

    v21 = 0;
    do
    {
      if (v21 >= *(v10 + 16))
      {
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:

        v153 = v7;

        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = v10;
          v157 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *v157 = 136446722;
          *(v157 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v198);
          *(v157 + 12) = 2082;
          v158 = *(v156 + 40);
          v201 = *(v156 + 24);
          v202[0] = v158;
          *(v202 + 14) = *(v156 + 54);
          sub_100009DAC(&v201, v197);
          v159 = sub_1000063E8();
          v161 = v160;
          sub_1005812D4(&v201);
          v162 = sub_10000668C(v159, v161, &v198);

          *(v157 + 14) = v162;
          *(v157 + 22) = 2080;
          v163 = [v153 description];
          v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = v165;

          v167 = sub_10000668C(v164, v166, &v198);
          v14 = v179;

          *(v157 + 24) = v167;
          _os_log_impl(&_mh_execute_header, v154, v155, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v157, 0x20u);
          swift_arrayDestroy();
        }

        [objc_opt_self() noSuchObjectErrorWithObjectID:v153];
        swift_willThrow();

        return;
      }

      v22 = &v194[2 * v21];
      v7 = v22[1];
      v23 = *(v7 + 16);
      if (v23)
      {
        v24 = *v22;

        v14 = 32;
        do
        {
          v25 = sub_1006A7CBC(v24, *(v7 + v14));
          sub_100392144(v25);

          ++v14;
          --v23;
        }

        while (v23);

        v10 = v192;
      }

      ++v21;
    }

    while (v21 != v207);

    if (a1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    if (!v7)
    {
      v30 = _swiftEmptyArrayStorage;
      goto LABEL_29;
    }

    v197[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      while (1)
      {
        v26 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_142;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);

            return;
          }

          v27 = *(a1 + 8 * v10 + 32);
        }

        v28 = v27;
        sub_1005E3810([v27 remObjectID], &unk_100938880, off_1008D41A8);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v29 = *(v197[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v10;
        if (v26 == v7)
        {
          v30 = v197[0];
LABEL_29:
          v31 = sub_1005E2514(v199);

          v32 = sub_10065F214(v31, v189);

          v33 = sub_10066C8E8(v30, v189);
          v10 = v190;

          swift_beginAccess();
          v34 = 0;
          v35 = &selRef_persistentStoreForIdentifier_;
          v178 = v33;
          v191 = v32;
          while (1)
          {
            if (v34 >= v192[2])
            {
              goto LABEL_155;
            }

            v172 = v34;
            v36 = &v194[2 * v34];
            v37 = v36[1];
            v14 = *v36;
            v181 = v37;

            v7 = sub_1005E3810([v14 v35[106]], &unk_100938880, off_1008D41A8);

            v38 = v189[6];
            if ((v38 & 0xC000000000000001) != 0)
            {
              if (v38 < 0)
              {
                v39 = v189[6];
              }

              v40 = v7;

              v41 = __CocoaDictionary.lookup(_:)();
              if (v41)
              {
                v198 = v41;
                sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
                swift_dynamicCast();
                v42 = v197[0];
              }

              else
              {

                v42 = 0;
              }

              v10 = v190;
            }

            else if (*(v38 + 16))
            {
              v43 = v7;

              v44 = sub_10002B924(v43);
              if (v45)
              {
                v42 = *(*(v38 + 56) + 8 * v44);
              }

              else
              {

                v42 = 0;
              }

              v10 = v190;
            }

            else
            {
              v42 = 0;
            }

            v179 = v14;
            if (!*(v33 + 16))
            {
              goto LABEL_143;
            }

            v46 = sub_100393C74(v7);
            if ((v47 & 1) == 0)
            {
              goto LABEL_143;
            }

            v48 = *(*(v33 + 56) + 8 * v46);
            v49 = v181;
            swift_bridgeObjectRetain_n();
            v50 = v7;
            v180 = v48;

            v51 = v10;
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();

            v175 = v50;
            if (os_log_type_enabled(v52, v53))
            {
              v183 = v52;
              v187 = v53;
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v198 = swift_slowAlloc();
              *v54 = 136446978;
              *(v54 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v198);
              *(v54 + 12) = 2082;
              v56 = *(v51 + 40);
              v205 = *(v51 + 24);
              v206[0] = v56;
              *(v206 + 14) = *(v51 + 54);
              sub_100009DAC(&v205, v197);
              v57 = sub_1000063E8();
              v59 = v58;
              sub_1005812D4(&v205);
              v60 = sub_10000668C(v57, v59, &v198);

              *(v54 + 14) = v60;
              *(v54 + 22) = 2114;
              *(v54 + 24) = v50;
              v185 = v55;
              *v55 = v50;
              *(v54 + 32) = 2082;
              v61 = v181[2];
              if (v61)
              {
                v197[0] = _swiftEmptyArrayStorage;
                v62 = v50;
                sub_100026EF4(0, v61, 0);
                v63 = v197[0];
                v64 = 32;
                v65 = v181;
                v66 = v183;
                do
                {
                  v67 = *(v65 + v64);
                  v68 = 0xD000000000000015;
                  if (v67 == 5)
                  {
                    v69 = 0x80000001007E9FB0;
                  }

                  else
                  {
                    v68 = 0xD000000000000014;
                    v69 = 0x80000001007E9FD0;
                  }

                  if (v67 == 3)
                  {
                    v70 = 0x6341746E65726170;
                  }

                  else
                  {
                    v70 = 0x694C746E65726170;
                  }

                  if (v67 == 3)
                  {
                    v71 = 0xEF4449746E756F63;
                  }

                  else
                  {
                    v71 = 0xEC00000044497473;
                  }

                  if (*(v65 + v64) <= 4u)
                  {
                    v68 = v70;
                    v69 = v71;
                  }

                  v72 = 0xD00000000000001BLL;
                  if (v67 == 1)
                  {
                    v72 = 0xD000000000000016;
                    v73 = 0x80000001007E9F50;
                  }

                  else
                  {
                    v73 = 0x80000001007E9F70;
                  }

                  if (!*(v65 + v64))
                  {
                    v72 = 0x49746E756F636361;
                    v73 = 0xE900000000000044;
                  }

                  if (*(v65 + v64) <= 2u)
                  {
                    v74 = v72;
                  }

                  else
                  {
                    v74 = v68;
                  }

                  if (*(v65 + v64) <= 2u)
                  {
                    v75 = v73;
                  }

                  else
                  {
                    v75 = v69;
                  }

                  v197[0] = v63;
                  v77 = *(v63 + 16);
                  v76 = *(v63 + 24);
                  if (v77 >= v76 >> 1)
                  {
                    sub_100026EF4((v76 > 1), v77 + 1, 1);
                    v65 = v181;
                    v63 = v197[0];
                  }

                  *(v63 + 16) = v77 + 1;
                  v78 = v63 + 16 * v77;
                  *(v78 + 32) = v74;
                  *(v78 + 40) = v75;
                  ++v64;
                  --v61;
                }

                while (v61);
                v49 = v65;
              }

              else
              {
                v79 = v50;

                v66 = v183;
              }

              v80 = Array.description.getter();
              v82 = v81;

              v83 = sub_10000668C(v80, v82, &v198);

              *(v54 + 34) = v83;
              _os_log_impl(&_mh_execute_header, v66, v187, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v54, 0x2Au);
              sub_1000050A4(v185, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v14 = v179;
              v33 = v178;
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v10 = v190;
            v173 = v49[2];
            if (v173)
            {
              break;
            }

LABEL_134:

            if (*(v10 + 104) == 1)
            {
              [v180 updateChangeCount];
            }

            v34 = v172 + 1;
            v35 = &selRef_persistentStoreForIdentifier_;
            if (v172 + 1 == v207)
            {

              goto LABEL_30;
            }
          }

          v84 = 0;
          v174 = v49 + 4;
          while (1)
          {
            if (v84 >= v49[2])
            {
              goto LABEL_154;
            }

            v176 = v84;
            v177 = *(v174 + v84);
            v85 = sub_1006A7CBC(v14, v177);
            if (v85 >> 62)
            {
              v132 = v85;
              v86 = _CocoaArrayWrapper.endIndex.getter();
              v85 = v132;
            }

            else
            {
              v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v87 = v191;
            if (v86)
            {
              break;
            }

            v89 = _swiftEmptyDictionarySingleton;
LABEL_131:

            sub_10045BDE8(v89);
            v131 = v130;

            v14 = v179;
            sub_1006A7EF0(v179, v180, v177, v131);
            v84 = v176 + 1;

            v33 = v178;
            v49 = v181;
            if (v176 + 1 == v173)
            {
              goto LABEL_134;
            }
          }

          v88 = 0;
          v186 = v85 & 0xFFFFFFFFFFFFFF8;
          v188 = v85 & 0xC000000000000001;
          v184 = (v85 + 32);
          v89 = _swiftEmptyDictionarySingleton;
          v182 = v86;
          while (2)
          {
            if (v188)
            {
              v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v93 = __OFADD__(v88++, 1);
              if (v93)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v88 >= *(v186 + 16))
              {
                goto LABEL_150;
              }

              v92 = v184[v88];
              v93 = __OFADD__(v88++, 1);
              if (v93)
              {
                goto LABEL_149;
              }
            }

            v94 = *(v87 + 16);
            v95 = v92;
            v96 = v95;
            if (!v94 || (v97 = sub_100393C74(v95), (v98 & 1) == 0))
            {

              v133 = v96;
              v134 = Logger.logObject.getter();
              v135 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v134, v135))
              {
                v136 = v10;
                v137 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                v198 = v207;
                *v137 = 136446978;
                *(v137 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v198);
                *(v137 + 12) = 2082;
                v138 = *(v136 + 40);
                v203 = *(v136 + 24);
                v204[0] = v138;
                *(v204 + 14) = *(v136 + 54);
                sub_100009DAC(&v203, v197);
                v139 = sub_1000063E8();
                v141 = v140;
                sub_1005812D4(&v203);
                v142 = sub_10000668C(v139, v141, &v198);

                *(v137 + 14) = v142;
                *(v137 + 22) = 2080;
                v143 = [v133 description];
                v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v146 = v145;

                v147 = sub_10000668C(v144, v146, &v198);

                *(v137 + 24) = v147;
                *(v137 + 32) = 2080;
                v148 = [v133 description];
                v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v151 = v150;

                v152 = sub_10000668C(v149, v151, &v198);

                *(v137 + 34) = v152;
                _os_log_impl(&_mh_execute_header, v134, v135, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v137, 0x2Au);
                swift_arrayDestroy();
              }

              [objc_opt_self() noSuchObjectErrorWithObjectID:v133];
              swift_willThrow();

              return;
            }

            v99 = *(*(v87 + 56) + 8 * v97);
            if ((v89 & 0xC000000000000001) != 0)
            {
              if (v89 < 0)
              {
                v100 = v89;
              }

              else
              {
                v100 = v89 & 0xFFFFFFFFFFFFFF8;
              }

              v101 = v99;
              v102 = __CocoaDictionary.count.getter();
              if (__OFADD__(v102, 1))
              {
                goto LABEL_152;
              }

              v103 = sub_10021D008(v100, v102 + 1);
            }

            else
            {
              v104 = v99;
              v103 = v89;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v197[0] = v103;
            v107 = sub_10002B924(v96);
            v108 = *(v103 + 16);
            v109 = (v106 & 1) == 0;
            v110 = v108 + v109;
            if (__OFADD__(v108, v109))
            {
              goto LABEL_151;
            }

            v111 = v106;
            if (*(v103 + 24) >= v110)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v89 = v103;
                v10 = v190;
                if ((v106 & 1) == 0)
                {
                  goto LABEL_107;
                }

                goto LABEL_86;
              }

              sub_1000F5104(&qword_10093D598, &unk_10079B210);
              v116 = static _DictionaryStorage.copy(original:)();
              v89 = v116;
              if (*(v103 + 16))
              {
                v117 = (v116 + 64);
                __src = (v103 + 64);
                v118 = ((1 << *(v89 + 32)) + 63) >> 6;
                if (v89 != v103 || v117 >= &__src[8 * v118])
                {
                  memmove(v117, __src, 8 * v118);
                }

                v119 = 0;
                *(v89 + 16) = *(v103 + 16);
                v120 = 1 << *(v103 + 32);
                if (v120 < 64)
                {
                  v121 = ~(-1 << v120);
                }

                else
                {
                  v121 = -1;
                }

                v168 = (v120 + 63) >> 6;
                v122 = v121 & *(v103 + 64);
                if (v122)
                {
                  do
                  {
                    v123 = __clz(__rbit64(v122));
                    v171 = (v122 - 1) & v122;
LABEL_126:
                    v126 = v123 | (v119 << 6);
                    v127 = *(*(v103 + 48) + 8 * v126);
                    v170 = *(*(v103 + 56) + 8 * v126);
                    *(*(v89 + 48) + 8 * v126) = v127;
                    *(*(v89 + 56) + 8 * v126) = v170;
                    v128 = v127;
                    v129 = v170;
                    v122 = v171;
                  }

                  while (v171);
                }

                v124 = v119;
                while (1)
                {
                  v119 = v124 + 1;
                  if (__OFADD__(v124, 1))
                  {
                    goto LABEL_156;
                  }

                  if (v119 >= v168)
                  {
                    break;
                  }

                  v125 = *&__src[8 * v119];
                  ++v124;
                  if (v125)
                  {
                    v123 = __clz(__rbit64(v125));
                    v171 = (v125 - 1) & v125;
                    goto LABEL_126;
                  }
                }
              }

              v10 = v190;
              if (v111)
              {
                goto LABEL_86;
              }

LABEL_107:
              *(v89 + 8 * (v107 >> 6) + 64) |= 1 << v107;
              *(*(v89 + 48) + 8 * v107) = v96;
              *(*(v89 + 56) + 8 * v107) = v99;

              v114 = *(v89 + 16);
              v93 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v93)
              {
                goto LABEL_153;
              }

              *(v89 + 16) = v115;
            }

            else
            {
              sub_10036CABC(v110, isUniquelyReferenced_nonNull_native);
              v89 = v197[0];
              v112 = sub_10002B924(v96);
              if ((v111 & 1) != (v113 & 1))
              {
                goto LABEL_157;
              }

              v107 = v112;
              v10 = v190;
              if ((v111 & 1) == 0)
              {
                goto LABEL_107;
              }

LABEL_86:

              v90 = *(v89 + 56);
              v91 = *(v90 + 8 * v107);
              *(v90 + 8 * v107) = v99;
            }

            v87 = v191;
            if (v88 == v182)
            {
              goto LABEL_131;
            }

            continue;
          }
        }
      }
    }

    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
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
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100650AD8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v204 = a2;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v198 = &v204;
  v9 = sub_1003E0E08(sub_1006AF7C8, &v197, a1);
  if (!v4)
  {
    v10 = v9;
    v191 = a1;
    v11 = v3;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100945730);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v193 = v11;
    v194 = v10;
    v190 = v5;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v200[0] = v211;
      *v15 = 136446978;
      *(v15 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, v200);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v194[2];

      *(v15 + 22) = 2082;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v16 = [swift_getObjCClassFromMetadata() description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v5, v18, v200);

      *(v15 + 24) = v19;
      *(v15 + 32) = 2082;
      *(v15 + 34) = sub_10000668C(v8, v7, v200);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
      swift_arrayDestroy();

      v10 = v194;
    }

    else
    {
    }

    v196 = v10[2];
    if (v196)
    {
      v203 = _swiftEmptySetSingleton;
      v195 = v10 + 4;

      for (i = 0; i != v196; ++i)
      {
        if (i >= v10[2])
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:

          v156 = v5;
          v157 = v7;

          v158 = Logger.logObject.getter();
          v159 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            *v160 = 136446722;
            *(v160 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v201);
            *(v160 + 12) = 2082;
            v161 = *(v156 + 40);
            v205 = *(v156 + 24);
            v206[0] = v161;
            *(v206 + 14) = *(v156 + 54);
            sub_100009DAC(&v205, v200);
            v162 = sub_1000063E8();
            v164 = v163;
            sub_1005812D4(&v205);
            v165 = sub_10000668C(v162, v164, &v201);

            *(v160 + 14) = v165;
            *(v160 + 22) = 2080;
            v166 = [v157 description];
            v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v168;

            v170 = sub_10000668C(v167, v169, &v201);

            *(v160 + 24) = v170;
            _os_log_impl(&_mh_execute_header, v158, v159, "[%{public}s] Tried to establish relationship with non-existing object -- skipping {author: %{public}s, cdObjectID: %s}", v160, 0x20u);
            swift_arrayDestroy();
            v8 = v181;
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v157];
          swift_willThrow();

          return;
        }

        v21 = &v195[2 * i];
        v5 = v21[1];
        v22 = *(v5 + 16);
        if (v22)
        {
          v211 = i;
          v23 = *v21;
          v24 = off_100941868;
          type metadata accessor for REMAccountStorageCDIngestor();
          v7 = v23;

          v25 = 32;
          v8 = v193;
          do
          {
            v202 = *(v5 + v25);
            v200[0] = v7;
            v26 = (v24)(v200, &v202);
            sub_100392144(v26);

            ++v25;
            --v22;
          }

          while (v22);

          v10 = v194;
          i = v211;
        }
      }

      v27 = v191;
      if (v191 >> 62)
      {
        v171 = _CocoaArrayWrapper.endIndex.getter();
        v27 = v191;
        v7 = v171;
      }

      else
      {
        v7 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = _swiftEmptyArrayStorage;
      if (!v7)
      {
        goto LABEL_27;
      }

      v29 = v27;
      v200[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v7 & 0x8000000000000000) == 0)
      {
        v30 = 0;
        v31 = v29;
        v32 = v29 & 0xC000000000000001;
        v33 = v29 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v5 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_123;
          }

          if (v32)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *(v33 + 16))
            {
              __break(1u);

              return;
            }

            v34 = *(v31 + 8 * v30 + 32);
          }

          v35 = v34;
          sub_1005E3810([v34 remObjectID], &qword_1009399F0, off_1008D4120);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v200[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v30;
          v31 = v191;
          if (v5 == v7)
          {
            v28 = v200[0];
LABEL_27:
            v36 = sub_1005E2514(v203);

            v37 = sub_10065F214(v36, v190);

            v183 = sub_1006666A4(v28, v190);

            swift_beginAccess();
            v38 = 0;
            v39 = &selRef_persistentStoreForIdentifier_;
            v5 = v193;
            v186 = v37;
            while (1)
            {
              if (v38 >= v10[2])
              {
                goto LABEL_136;
              }

              v174 = v38;
              v40 = &v195[2 * v38];
              v41 = v40[1];
              v8 = *v40;
              v184 = v41;

              v7 = sub_1005E3810([v8 v39[106]], &qword_1009399F0, off_1008D4120);

              v42 = v190[6];
              if ((v42 & 0xC000000000000001) != 0)
              {
                if (v42 < 0)
                {
                  v43 = v190[6];
                }

                v44 = v7;

                v45 = __CocoaDictionary.lookup(_:)();
                if (v45)
                {
                  v201 = v45;
                  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
                  swift_dynamicCast();
                  v46 = v200[0];
                }

                else
                {

                  v46 = 0;
                }

                v5 = v193;
              }

              else if (*(v42 + 16))
              {
                v47 = v7;

                v48 = sub_10002B924(v47);
                if (v49)
                {
                  v46 = *(*(v42 + 56) + 8 * v48);
                }

                else
                {

                  v46 = 0;
                }

                v5 = v193;
              }

              else
              {
                v46 = 0;
              }

              v181 = v8;
              if (!*(v183 + 16))
              {
                goto LABEL_124;
              }

              v50 = sub_100393C74(v7);
              if ((v51 & 1) == 0)
              {
                goto LABEL_124;
              }

              v52 = *(*(v183 + 56) + 8 * v50);
              swift_bridgeObjectRetain_n();
              v53 = v7;
              v182 = v52;

              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.default.getter();

              v178 = v53;
              if (os_log_type_enabled(v54, v55))
              {
                log = v54;
                LODWORD(v211) = v55;
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v201 = swift_slowAlloc();
                *v56 = 136446978;
                *(v56 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v201);
                *(v56 + 12) = 2082;
                v58 = *(v5 + 40);
                v209 = *(v5 + 24);
                v210[0] = v58;
                *(v210 + 14) = *(v5 + 54);
                sub_100009DAC(&v209, v200);
                v59 = sub_1000063E8();
                v61 = v60;
                sub_1005812D4(&v209);
                v62 = sub_10000668C(v59, v61, &v201);

                *(v56 + 14) = v62;
                *(v56 + 22) = 2114;
                *(v56 + 24) = v53;
                *v57 = v53;
                *(v56 + 32) = 2082;
                v63 = v184;
                v64 = v184[2];
                if (v64)
                {
                  v200[0] = _swiftEmptyArrayStorage;
                  v65 = v53;
                  sub_100026EF4(0, v64, 0);
                  v66 = v200[0];
                  v67 = *(v200[0] + 2);
                  v68 = 2 * v67;
                  v69 = 32;
                  v70 = v184;
                  do
                  {
                    if (*(v70 + v69))
                    {
                      v71 = 0xD000000000000016;
                    }

                    else
                    {
                      v71 = 0xD000000000000011;
                    }

                    if (*(v70 + v69))
                    {
                      v72 = "listIDsToUndelete";
                    }

                    else
                    {
                      v72 = "urrentAppVersion";
                    }

                    v200[0] = v66;
                    v73 = v66[3];
                    v74 = v67 + 1;
                    if (v67 >= v73 >> 1)
                    {
                      sub_100026EF4((v73 > 1), v67 + 1, 1);
                      v70 = v184;
                      v66 = v200[0];
                    }

                    v66[2] = v74;
                    v75 = &v66[v68];
                    v75[4] = v71;
                    v75[5] = v72 | 0x8000000000000000;
                    v68 += 2;
                    ++v69;
                    v67 = v74;
                    --v64;
                  }

                  while (v64);
                  v63 = v70;

                  v10 = v194;
                  v37 = v186;
                }

                else
                {
                  v76 = v53;
                }

                v77 = Array.description.getter();
                v79 = v78;

                v80 = sub_10000668C(v77, v79, &v201);

                *(v56 + 34) = v80;
                _os_log_impl(&_mh_execute_header, log, v211, "[%{public}s] UPDATE RELATIONSHIPS {author: %{public}s, objectID: %{public}@, changedRelationshipKeys: %{public}s}", v56, 0x2Au);
                sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v5 = v193;
                v8 = v181;
              }

              else
              {

                v63 = v184;
                swift_bridgeObjectRelease_n();
              }

              v81 = v63;
              v175 = v63[2];
              if (v175)
              {
                break;
              }

LABEL_115:

              if (*(v5 + 104) == 1)
              {
                [v182 updateChangeCount];
              }

              v38 = v174 + 1;
              v39 = &selRef_persistentStoreForIdentifier_;
              if ((v174 + 1) == v196)
              {

                goto LABEL_28;
              }
            }

            v82 = 0;
            v176 = v81 + 4;
            v177 = off_100941868;
            while (2)
            {
              if (v82 >= v81[2])
              {
                goto LABEL_135;
              }

              v179 = v82;
              v180 = *(v176 + v82);
              v199 = v180;
              v200[0] = v8;
              v83 = type metadata accessor for REMAccountStorageCDIngestor();
              v84 = (v177)(v200, &v199, v5, v83, &off_1009417A8);
              if (!(v84 >> 62))
              {
                v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v85)
                {
                  goto LABEL_67;
                }

LABEL_113:
                v87 = _swiftEmptyDictionarySingleton;
LABEL_114:

                sub_10045BDE8(v87);
                v135 = v134;

                v8 = v181;
                sub_1002FB558(v181, v182, v180, v135);
                v82 = v179 + 1;

                v81 = v184;
                if (v179 + 1 == v175)
                {
                  goto LABEL_115;
                }

                continue;
              }

              break;
            }

            v133 = v84;
            v85 = _CocoaArrayWrapper.endIndex.getter();
            v84 = v133;
            if (!v85)
            {
              goto LABEL_113;
            }

LABEL_67:
            v86 = 0;
            v192 = v84 & 0xC000000000000001;
            loga = (v84 + 32);
            v189 = v84 & 0xFFFFFFFFFFFFFF8;
            v87 = _swiftEmptyDictionarySingleton;
            v185 = v85;
            while (2)
            {
              if (v192)
              {
                v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v92 = __OFADD__(v86, 1);
                v93 = (v86 + 1);
                if (v92)
                {
                  goto LABEL_130;
                }
              }

              else
              {
                if (v86 >= *(v189 + 16))
                {
                  goto LABEL_131;
                }

                v91 = loga[v86].isa;
                v92 = __OFADD__(v86, 1);
                v93 = (v86 + 1);
                if (v92)
                {
                  goto LABEL_130;
                }
              }

              v94 = *(v37 + 16);
              v95 = v91;
              v96 = v95;
              if (!v94 || (v97 = sub_100393C74(v95), (v98 & 1) == 0))
              {

                v136 = v5;
                v137 = v96;
                v138 = Logger.logObject.getter();
                v139 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v138, v139))
                {
                  v140 = swift_slowAlloc();
                  v211 = swift_slowAlloc();
                  v201 = v211;
                  *v140 = 136446978;
                  *(v140 + 4) = sub_10000668C(0xD000000000000016, 0x80000001007FE380, &v201);
                  *(v140 + 12) = 2082;
                  v141 = *(v136 + 40);
                  v207 = *(v136 + 24);
                  v208[0] = v141;
                  *(v208 + 14) = *(v136 + 54);
                  sub_100009DAC(&v207, v200);
                  v142 = sub_1000063E8();
                  v144 = v143;
                  sub_1005812D4(&v207);
                  v145 = sub_10000668C(v142, v144, &v201);

                  *(v140 + 14) = v145;
                  *(v140 + 22) = 2080;
                  v146 = [(objc_class *)v137 description];
                  v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v149 = v148;

                  v150 = sub_10000668C(v147, v149, &v201);

                  *(v140 + 24) = v150;
                  *(v140 + 32) = 2080;
                  v151 = [(objc_class *)v137 description];
                  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v154 = v153;

                  v155 = sub_10000668C(v152, v154, &v201);

                  *(v140 + 34) = v155;
                  _os_log_impl(&_mh_execute_header, v138, v139, "[%{public}s] Tried to establish realtionship with non-existent target object -- bail {author: %{public}s, cdObjectID: %s, relationshipObjectID: %s}", v140, 0x2Au);
                  swift_arrayDestroy();
                }

                [objc_opt_self() noSuchObjectErrorWithObjectID:v137];
                swift_willThrow();

                return;
              }

              v99 = *(*(v37 + 56) + 8 * v97);
              v211 = v93;
              if ((v87 & 0xC000000000000001) != 0)
              {
                if (v87 < 0)
                {
                  v100 = v87;
                }

                else
                {
                  v100 = v87 & 0xFFFFFFFFFFFFFF8;
                }

                v101 = v99;
                v102 = __CocoaDictionary.count.getter();
                if (__OFADD__(v102, 1))
                {
                  goto LABEL_133;
                }

                v103 = sub_10021D008(v100, v102 + 1);
              }

              else
              {
                v104 = v99;
                v103 = v87;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v200[0] = v103;
              v106 = v96;
              v108 = sub_10002B924(v96);
              v109 = *(v103 + 16);
              v110 = (v107 & 1) == 0;
              v111 = v109 + v110;
              if (__OFADD__(v109, v110))
              {
                goto LABEL_132;
              }

              v112 = v107;
              if (*(v103 + 24) >= v111)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v87 = v103;
                  v5 = v193;
                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_68;
                }

                sub_1000F5104(&qword_10093D598, &unk_10079B210);
                v117 = static _DictionaryStorage.copy(original:)();
                v87 = v117;
                if (*(v103 + 16))
                {
                  v118 = (v117 + 64);
                  __src = (v103 + 64);
                  v119 = ((1 << *(v87 + 32)) + 63) >> 6;
                  if (v87 != v103 || v118 >= &__src[8 * v119])
                  {
                    memmove(v118, __src, 8 * v119);
                  }

                  v120 = 0;
                  *(v87 + 16) = *(v103 + 16);
                  v121 = 1 << *(v103 + 32);
                  if (v121 < 64)
                  {
                    v122 = ~(-1 << v121);
                  }

                  else
                  {
                    v122 = -1;
                  }

                  v123 = (v121 + 63) >> 6;
                  v124 = v122 & *(v103 + 64);
                  if (v124)
                  {
                    do
                    {
                      v125 = __clz(__rbit64(v124));
                      v173 = (v124 - 1) & v124;
LABEL_108:
                      v128 = v125 | (v120 << 6);
                      v129 = *(*(v103 + 48) + 8 * v128);
                      v130 = *(*(v103 + 56) + 8 * v128);
                      *(*(v87 + 48) + 8 * v128) = v129;
                      *(*(v87 + 56) + 8 * v128) = v130;
                      v131 = v129;
                      v132 = v130;
                      v124 = v173;
                    }

                    while (v173);
                  }

                  v126 = v120;
                  while (1)
                  {
                    v120 = v126 + 1;
                    if (__OFADD__(v126, 1))
                    {
                      goto LABEL_137;
                    }

                    if (v120 >= v123)
                    {
                      break;
                    }

                    v127 = *&__src[8 * v120];
                    ++v126;
                    if (v127)
                    {
                      v125 = __clz(__rbit64(v127));
                      v173 = (v127 - 1) & v127;
                      goto LABEL_108;
                    }
                  }
                }

                v5 = v193;
                v10 = v194;
                if (v112)
                {
                  goto LABEL_68;
                }

LABEL_89:
                *(v87 + 8 * (v108 >> 6) + 64) |= 1 << v108;
                *(*(v87 + 48) + 8 * v108) = v106;
                *(*(v87 + 56) + 8 * v108) = v99;

                v115 = *(v87 + 16);
                v92 = __OFADD__(v115, 1);
                v116 = v115 + 1;
                if (v92)
                {
                  goto LABEL_134;
                }

                *(v87 + 16) = v116;
              }

              else
              {
                sub_10036CABC(v111, isUniquelyReferenced_nonNull_native);
                v87 = v200[0];
                v113 = sub_10002B924(v106);
                if ((v112 & 1) != (v114 & 1))
                {
                  goto LABEL_138;
                }

                v108 = v113;
                v5 = v193;
                if ((v112 & 1) == 0)
                {
                  goto LABEL_89;
                }

LABEL_68:
                v88 = v106;

                v89 = *(v87 + 56);
                v90 = *(v89 + 8 * v108);
                *(v89 + 8 * v108) = v99;
              }

              v37 = v186;
              v86 = v211;
              if (v211 == v185)
              {
                goto LABEL_114;
              }

              continue;
            }
          }
        }
      }

      __break(1u);
LABEL_130:
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

    else
    {
LABEL_28:
    }
  }
}

void sub_100651FAC(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v84 = a2;
  v8 = a3[2];
  v9 = a3[3];
  v79[2] = &v84;
  v79[3] = v5;

  v10 = sub_100759CB4(static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), v79, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v77 = v8;
  v12 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_55;
  }

LABEL_3:
  v13 = v12 - 32;
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = v11 >> 62;
  v78 = v11;
  v74 = v11 >> 62;
  v76 = v6;
  v73 = v5;
  v70 = v13;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v17 = 136446978;
    *(v17 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, v80);
    *(v17 + 12) = 2048;
    if (!(v11 >> 62))
    {
      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_58;
  }

  while (1)
  {
    v12 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = _swiftEmptyArrayStorage;
    if (!v12)
    {
      break;
    }

    v80[0] = _swiftEmptyArrayStorage;
    v15 = v80;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v24 = v11 & 0xC000000000000001;
      v77 = (v11 & 0xFFFFFFFFFFFFFF8);
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v25 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v24)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= v77[2])
          {
            goto LABEL_53;
          }

          v26 = *(v11 + 8 * v9 + 32);
        }

        v27 = v26;
        sub_1005E45B0([v26 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = *(v80[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        v11 = v78;
        if (v25 == v12)
        {
          v9 = v80[0];
          v5 = v73;
          v17 = v74;
          v6 = v76;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_58:
    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v17 + 14) = v18;

    *(v17 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v19 = [swift_getObjCClassFromMetadata() description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, v80);
    v11 = v78;

    *(v17 + 24) = v23;
    *(v17 + 32) = 2082;
    *(v17 + 34) = sub_10000668C(v77, v9, v80);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v17, 0x2Au);
    swift_arrayDestroy();

    v5 = v73;
    v17 = v74;
    v6 = v76;
  }

LABEL_20:
  v28 = sub_10065E91C(v9, v6);

  if (v17)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v12)
  {
LABEL_47:

    return;
  }

  v9 = 0;
  v71 = v11 & 0xFFFFFFFFFFFFFF8;
  v72 = v11 & 0xC000000000000001;
  *&v29 = 136446466;
  v67 = v29;
  v68 = v12;
  v69 = v28;
  while (1)
  {
    if (v72)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 >= *(v71 + 16))
      {
        goto LABEL_54;
      }

      v30 = *(v11 + 8 * v9 + 32);
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v31 = v30;
    v32 = sub_1005E45B0([v31 remObjectID]);

    if (!*(v28 + 16))
    {
      break;
    }

    v33 = sub_100393C74(v32);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = *(*(v28 + 56) + 8 * v33);
    v36 = v6[6];
    v77 = v31;
    v75 = v35;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = v35;
      v38 = v32;

      v39 = __CocoaDictionary.lookup(_:)();
      if (!v39)
      {
        goto LABEL_41;
      }

      v81 = v39;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v40 = v80[0];
    }

    else
    {
      v41 = *(v36 + 16);
      v42 = v35;
      if (!v41)
      {
        goto LABEL_42;
      }

      v38 = v32;

      v43 = sub_10002B924(v38);
      if ((v44 & 1) == 0)
      {
LABEL_41:

LABEL_42:
        v45 = v32;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v80[0] = v50;
          *v48 = v67;
          *(v48 + 4) = sub_10000668C(0xD00000000000001ALL, v70 | 0x8000000000000000, v80);
          *(v48 + 12) = 2114;
          *(v48 + 14) = v45;
          *v49 = v45;
          v51 = v45;
          _os_log_impl(&_mh_execute_header, v46, v47, "[%{public}s] Skipping mutateRelationshipOrdering() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v48, 0x16u);
          sub_1000050A4(v49, &unk_100938E70, &unk_100797230);

          sub_10000607C(v50);
          v11 = v78;
        }

        else
        {
        }

        goto LABEL_27;
      }

      v40 = *(*(v36 + 56) + 8 * v43);
    }

    if (!v40)
    {
      goto LABEL_42;
    }

LABEL_27:
    ++v9;
    v12 = v68;
    v28 = v69;
    v6 = v76;
    if (v5 == v68)
    {
      goto LABEL_47;
    }
  }

  v52 = v32;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v55 = 136446722;
    *(v55 + 4) = sub_10000668C(0xD00000000000001ALL, v70 | 0x8000000000000000, &v81);
    *(v55 + 12) = 2082;
    v56 = *(v73 + 5);
    v82 = *(v73 + 3);
    v83[0] = v56;
    *(v83 + 14) = *(v73 + 54);
    sub_100009DAC(&v82, v80);
    v57 = sub_1000063E8();
    v59 = v58;
    sub_1005812D4(&v82);
    v60 = sub_10000668C(v57, v59, &v81);

    *(v55 + 14) = v60;
    *(v55 + 22) = 2080;
    v61 = [v52 description];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v31;
    v65 = v64;

    v66 = sub_10000668C(v62, v65, &v81);
    v31 = v63;

    *(v55 + 24) = v66;
    _os_log_impl(&_mh_execute_header, v53, v54, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v55, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v52];
  swift_willThrow();
}

void sub_10065291C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v77 = a2;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v72[2] = &v77;
  v72[3] = v5;

  v10 = sub_100759CB4(sub_1006B0238, v72, a1);
  if (!v4)
  {
    v11 = v10;
    v70 = v8;
    v12 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_55;
    }

LABEL_3:
    v13 = v12 - 32;
    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100945730);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v71 = v11;
    v66 = v11 >> 62;
    v68 = v6;
    v69 = v5;
    v62 = v13;
    if (os_log_type_enabled(v15, v16))
    {
      v6 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v6 = 136446978;
      *(v6 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, v73);
      *(v6 + 12) = 2048;
      if (!(v11 >> 62))
      {
        v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_58;
    }

    while (1)
    {
      v23 = v66;
      v12 = v66 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = _swiftEmptyArrayStorage;
      if (!v12)
      {
        break;
      }

      v73[0] = _swiftEmptyArrayStorage;
      v15 = v73;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v6 = v11 & 0xC000000000000001;
        v70 = (v11 & 0xFFFFFFFFFFFFFF8);
        v5 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v24 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v6)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v70[2])
            {
              goto LABEL_53;
            }

            v25 = *(v11 + 8 * v9 + 32);
          }

          v26 = v25;
          sub_1005E5350([v25 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = *(v73[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v71;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v9;
          if (v24 == v12)
          {
            v9 = v73[0];
            v6 = v68;
            v5 = v69;
            v23 = v66;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_58:
      v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v6 + 14) = v17;

      *(v6 + 22) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v18 = [swift_getObjCClassFromMetadata() description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v11 = v71;
      v22 = sub_10000668C(v19, v21, v73);

      *(v6 + 24) = v22;
      *(v6 + 32) = 2082;
      *(v6 + 34) = sub_10000668C(v70, v9, v73);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v6, 0x2Au);
      swift_arrayDestroy();

      v6 = v68;
      v5 = v69;
    }

LABEL_20:
    v28 = sub_1006603FC(v9, v6);

    if (v23)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v12)
    {
      v9 = 0;
      v65 = v11 & 0xFFFFFFFFFFFFFF8;
      v67 = v11 & 0xC000000000000001;
      v63 = v12;
      v64 = v28;
      while (1)
      {
        if (v67)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v9 >= *(v65 + 16))
          {
            goto LABEL_54;
          }

          v30 = *(v11 + 8 * v9 + 32);
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v31 = v30;
        v32 = sub_1005E5350([v31 remObjectID]);

        if (!*(v28 + 16))
        {
          break;
        }

        v33 = sub_100393C74(v32);
        if ((v34 & 1) == 0)
        {
          break;
        }

        v35 = *(*(v28 + 56) + 8 * v33);
        v36 = *(v6 + 48);
        v70 = v35;
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = v35;
          v38 = v32;

          v39 = __CocoaDictionary.lookup(_:)();
          if (v39)
          {
            v74 = v39;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v40 = v73[0];
          }

          else
          {

            v40 = 0;
          }

          v11 = v71;
        }

        else
        {
          v41 = *(v36 + 16);
          v42 = v35;
          if (v41)
          {
            v43 = v32;

            v44 = sub_10002B924(v43);
            if (v45)
            {
              v40 = *(*(v36 + 56) + 8 * v44);
            }

            else
            {

              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
          }
        }

        v46 = v69[9];
        v47 = [v31 remObjectID];
        if (*(v46 + 2))
        {
          v29 = v47;
          sub_10002B924(v47);
        }

        else
        {
          v29 = v31;
          v31 = v32;
          v32 = v47;
        }

        v6 = v68;
        v28 = v64;

        ++v9;
        v12 = v63;
        if (v5 == v63)
        {
          goto LABEL_47;
        }
      }

      v48 = v32;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v51 = 136446722;
        *(v51 + 4) = sub_10000668C(0xD00000000000001ALL, v62 | 0x8000000000000000, &v74);
        *(v51 + 12) = 2082;
        v52 = *(v69 + 5);
        v75 = *(v69 + 3);
        v76[0] = v52;
        *(v76 + 14) = *(v69 + 54);
        sub_100009DAC(&v75, v73);
        v53 = sub_1000063E8();
        v55 = v54;
        sub_1005812D4(&v75);
        v56 = sub_10000668C(v53, v55, &v74);

        *(v51 + 14) = v56;
        *(v51 + 22) = 2080;
        v57 = [v48 description];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = sub_10000668C(v58, v60, &v74);

        *(v51 + 24) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v51, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v48];
      swift_willThrow();
    }

    else
    {
LABEL_47:
    }
  }
}

void sub_1006531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), char **a6, uint64_t *a7, uint64_t (*a8)(void *, char **), uint64_t (*a9)(id))
{
  v14 = v9;
  v110 = a2;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v104 = &v110;
  v105 = v14;

  v19 = a5(a4, v103, a1);
  if (v10)
  {
    return;
  }

  v20 = v19;
  v97 = a3;
  v98 = v18;
  v94 = v14;
  v21 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_59;
  }

LABEL_3:
  v22 = v21 - 32;
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100945730);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v92 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v27 = v20 >> 62;
  v99 = v20;
  v100 = a6;
  v28 = a6;
  a6 = v97;
  v95 = v20 >> 62;
  v90 = v22;
  if (v26)
  {
    v29 = v17;
    v30 = v22;
    v21 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v21 = 136446978;
    *(v21 + 4) = sub_10000668C(0xD00000000000001ALL, v30 | 0x8000000000000000, v106);
    *(v21 + 12) = 2048;
    if (!v27)
    {
      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_62;
  }

  while (1)
  {
    v29 = a8;
    v21 = v27 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    v106[0] = _swiftEmptyArrayStorage;
    v24 = v106;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      v39 = v20 & 0xC000000000000001;
      v98 = v20 & 0xFFFFFFFFFFFFFF8;
      a6 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v98 + 16))
          {
            goto LABEL_57;
          }

          v41 = *(v20 + 8 * v38 + 32);
        }

        v42 = v41;
        v17 = sub_1005E3810([v41 remObjectID], v100, a7);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v43 = *(v106[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v20 = v99;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v38;
        v44 = v40 == v21;
        v29 = a8;
        if (v44)
        {
          v37 = v106[0];
          v45 = v94;
          v28 = v100;
          a6 = v97;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_62:
    v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    v17 = v98;
    *(v21 + 14) = v31;

    *(v21 + 22) = 2082;
    sub_1000060C8(0, v28, a7);
    v32 = [swift_getObjCClassFromMetadata() description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v28 = v100;
    v36 = sub_10000668C(v33, v35, v106);
    v20 = v99;

    *(v21 + 24) = v36;
    *(v21 + 32) = 2082;
    *(v21 + 34) = sub_10000668C(v29, v98, v106);
    _os_log_impl(&_mh_execute_header, v24, v92, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();

    v27 = v95;
    a6 = v97;
  }

  v45 = v94;
LABEL_22:
  v94 = v29(v37, a6);

  if (v95)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = a7;
  swift_beginAccess();
  if (!v17)
  {
LABEL_51:

    return;
  }

  v48 = v45;
  v21 = 0;
  v91 = v20 & 0xFFFFFFFFFFFFFF8;
  v93 = v20 & 0xC000000000000001;
  *&v47 = 136446466;
  v88 = v47;
  v89 = v17;
  while (1)
  {
    if (v93)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v50 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v21 >= *(v91 + 16))
      {
        goto LABEL_58;
      }

      v49 = *(v20 + 8 * v21 + 32);
      v50 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v98 = v50;
    v51 = v49;
    v52 = sub_1005E3810([v51 remObjectID], v28, v46);
    a8 = v51;

    if (!*(v94 + 16))
    {
      break;
    }

    v53 = a9(v52);
    if ((v54 & 1) == 0)
    {
      break;
    }

    v55 = *(*(v94 + 56) + 8 * v53);
    v56 = a6[6];
    v96 = v55;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = v55;
      v58 = v52;

      v59 = __CocoaDictionary.lookup(_:)();
      if (!v59)
      {

        v20 = v99;
LABEL_45:
        v46 = a7;
LABEL_46:
        v66 = v52;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = v48;
          v72 = swift_slowAlloc();
          v106[0] = v72;
          *v69 = v88;
          *(v69 + 4) = sub_10000668C(0xD00000000000001ALL, v90 | 0x8000000000000000, v106);
          *(v69 + 12) = 2114;
          *(v69 + 14) = v66;
          *v70 = v66;
          v73 = v66;
          _os_log_impl(&_mh_execute_header, v67, v68, "[%{public}s] Skipping mutateRelationshipOrdering() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v69, 0x16u);
          sub_1000050A4(v70, &unk_100938E70, &unk_100797230);
          v20 = v99;

          sub_10000607C(v72);
          v48 = v71;

          v46 = a7;
        }

        else
        {
        }

        goto LABEL_29;
      }

      v107 = v59;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v60 = v106[0];

      v20 = v99;
      v46 = a7;
      if (!v60)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v61 = *(v56 + 16);
      v62 = v55;
      if (!v61)
      {
        goto LABEL_46;
      }

      v63 = v52;

      v64 = sub_10002B924(v63);
      if ((v65 & 1) == 0)
      {

        goto LABEL_45;
      }

      v60 = *(*(v56 + 56) + 8 * v64);

      v46 = a7;
      if (!v60)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    a6 = v97;
    ++v21;
    v17 = v89;
    v28 = v100;
    if (v98 == v89)
    {
      goto LABEL_51;
    }
  }

  v74 = v52;

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v77 = 136446722;
    *(v77 + 4) = sub_10000668C(0xD00000000000001ALL, v90 | 0x8000000000000000, &v107);
    *(v77 + 12) = 2082;
    v78 = *(v48 + 40);
    v108 = *(v48 + 24);
    v109[0] = v78;
    *(v109 + 14) = *(v48 + 54);
    sub_100009DAC(&v108, v106);
    v79 = sub_1000063E8();
    v81 = v80;
    sub_1005812D4(&v108);
    v82 = sub_10000668C(v79, v81, &v107);

    *(v77 + 14) = v82;
    *(v77 + 22) = 2080;
    v83 = [v74 description];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = sub_10000668C(v84, v86, &v107);

    *(v77 + 24) = v87;
    _os_log_impl(&_mh_execute_header, v75, v76, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v77, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v74];
  swift_willThrow();
}

void sub_100653BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), unint64_t *a6, uint64_t *a7, unint64_t a8, uint64_t (*a9)(uint64_t))
{
  v14 = v9;
  v15 = a3;
  v95 = a2;
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  v89 = &v95;
  v90 = v14;

  v19 = a5(a4, v88, a1);
  if (!v10)
  {
    v20 = v19;
    v86 = a6;
    v84 = v17;
    v80 = v18;
    v81 = v15;
    v21 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_56;
    }

LABEL_3:
    v22 = v21 - 4;
    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100945730);

    v21 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = v20 >> 62;
    v82 = v14;
    v76 = v22;
    v85 = v20;
    v26 = v86;
    if (os_log_type_enabled(v21, v24))
    {
      v15 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v15 = 136446978;
      *(v15 + 4) = sub_10000668C(0xD00000000000001ALL, v22 | 0x8000000000000000, v91);
      *(v15 + 12) = 2048;
      v14 = a7;
      v79 = v24;
      if (!v25)
      {
        v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_59;
    }

    while (1)
    {
      v26 = a8;
      v34 = v81;
      v14 = v25 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = _swiftEmptyArrayStorage;
      if (!v14)
      {
        break;
      }

      v80 = v25;
      v91[0] = _swiftEmptyArrayStorage;
      v21 = v91;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v14 & 0x8000000000000000) == 0)
      {
        v36 = 0;
        v37 = v20 & 0xC000000000000001;
        v84 = (v20 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v15 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v37)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= v84[2])
            {
              goto LABEL_54;
            }

            v38 = *(v20 + 8 * v36 + 32);
          }

          v39 = v38;
          sub_1005E3810([v38 remObjectID], v86, a7);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v40 = *(v91[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v20 = v85;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 = v91;
          specialized ContiguousArray._endMutation()();
          ++v36;
          if (v15 == v14)
          {
            v35 = v91[0];
            v25 = v80;
            v34 = v81;
            v26 = a8;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_59:
      v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v15 + 14) = v27;

      *(v15 + 22) = 2082;
      sub_1000060C8(0, v26, v14);
      v28 = [swift_getObjCClassFromMetadata() description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v29;
      v20 = v85;
      v33 = sub_10000668C(v32, v31, v91);

      *(v15 + 24) = v33;
      *(v15 + 32) = 2082;
      *(v15 + 34) = sub_10000668C(v80, v84, v91);
      _os_log_impl(&_mh_execute_header, v21, v79, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
      swift_arrayDestroy();
    }

LABEL_20:
    v21 = (v26)(v35, v34);

    if (v25)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v82;
    swift_beginAccess();
    if (v41)
    {
      v14 = 0;
      a8 = v20 & 0xC000000000000001;
      v79 = a9;
      v80 = v20 & 0xFFFFFFFFFFFFFF8;
      v77 = v41;
      v78 = v21;
      while (1)
      {
        if (a8)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v45 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v14 >= *(v80 + 16))
          {
            goto LABEL_55;
          }

          v44 = *(v20 + 8 * v14 + 32);
          v45 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v46 = v44;
        v15 = sub_1005E3810([v46 remObjectID], v86, a7);

        if (!v21[2].isa)
        {
          break;
        }

        v47 = a9(v15);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v49 = *(v21[7].isa + v47);
        v50 = *(v34 + 48);
        v84 = v49;
        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = v49;
          v52 = v15;

          v53 = __CocoaDictionary.lookup(_:)();
          if (v53)
          {
            v92 = v53;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v54 = v91[0];
          }

          else
          {

            v54 = 0;
          }

          v42 = v82;
        }

        else
        {
          v55 = *(v50 + 16);
          v56 = v49;
          if (v55)
          {
            v57 = v15;

            v58 = sub_10002B924(v57);
            if (v59)
            {
              v54 = *(*(v50 + 56) + 8 * v58);
            }

            else
            {

              v54 = 0;
            }

            v34 = v81;
            v42 = v82;
          }

          else
          {
            v54 = 0;
            v34 = v81;
          }
        }

        v60 = v42[9];
        v61 = [v46 remObjectID];
        if (*(v60 + 16))
        {
          v43 = v61;
          sub_10002B924(v61);
        }

        else
        {
          v43 = v46;
          v46 = v15;
          v15 = v61;
        }

        v21 = v78;

        v14 = (v14 + 1);
        v20 = v85;
        if (v45 == v77)
        {
          goto LABEL_48;
        }
      }

      v62 = v15;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v65 = 136446722;
        *(v65 + 4) = sub_10000668C(0xD00000000000001ALL, v76 | 0x8000000000000000, &v92);
        *(v65 + 12) = 2082;
        v66 = *(v42 + 5);
        v93 = *(v42 + 3);
        v94[0] = v66;
        *(v94 + 14) = *(v42 + 54);
        sub_100009DAC(&v93, v91);
        v67 = sub_1000063E8();
        v69 = v68;
        sub_1005812D4(&v93);
        v70 = sub_10000668C(v67, v69, &v92);

        *(v65 + 14) = v70;
        *(v65 + 22) = 2080;
        v71 = [v62 description];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = sub_10000668C(v72, v74, &v92);

        *(v65 + 24) = v75;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v65, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v62];
      swift_willThrow();
    }

    else
    {
LABEL_48:
    }
  }
}

void sub_10065449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), uint64_t a6, unint64_t a7, unint64_t a8, uint64_t (*a9)(void *))
{
  v14 = v9;
  v97 = a2;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v91 = &v97;
  v92 = v14;

  v19 = a5(a4, v90, a1);
  if (v10)
  {
    return;
  }

  v20 = v19;
  v82 = v17;
  v86 = a3;
  v21 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v22 = v21 - 4;
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100945730);

  v24 = v18;

  v21 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v80 = v25;
  v26 = os_log_type_enabled(v21, v25);
  v27 = v20 >> 62;
  v78 = v22;
  v89 = v20;
  v18 = v14;
  v83 = v20 >> 62;
  if (v26)
  {
    v20 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v20 = 136446978;
    *(v20 + 4) = sub_10000668C(0xD00000000000001ALL, v22 | 0x8000000000000000, v93);
    *(v20 + 12) = 2048;
    v85 = a8;
    if (!v27)
    {
      v28 = v89;
      v29 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  while (1)
  {
    v34 = a7;
    v24 = v27 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = _swiftEmptyArrayStorage;
    if (!v24)
    {
      break;
    }

    v82 = v18;
    v93[0] = _swiftEmptyArrayStorage;
    v21 = v93;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v37 = v20 & 0xC000000000000001;
      a6 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v37)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(a6 + 16))
          {
            goto LABEL_52;
          }

          v38 = *(v20 + 8 * v36 + 32);
        }

        v39 = v38;
        v18 = a8;
        (a8)([v38 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = *(v93[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v20 = v89;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v93;
        specialized ContiguousArray._endMutation()();
        ++v36;
        if (v14 == v24)
        {
          v35 = v93[0];
          v18 = v82;
          v34 = a7;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_57:
    v28 = v89;
    v29 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v20 + 14) = v29;

    *(v20 + 22) = 2082;
    (a6)(0);
    v14 = [swift_getObjCClassFromMetadata() description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10000668C(v30, v32, v93);

    *(v20 + 24) = v33;
    *(v20 + 32) = 2082;
    *(v20 + 34) = sub_10000668C(v82, v24, v93);
    _os_log_impl(&_mh_execute_header, v21, v80, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v20, 0x2Au);
    swift_arrayDestroy();

    v27 = v83;
    a8 = v85;
    v20 = v28;
  }

LABEL_20:
  v21 = v34(v35, v86);

  if (v83)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v86;
  swift_beginAccess();
  if (!v41)
  {
LABEL_46:

    return;
  }

  v85 = a8;
  a8 = 0;
  a7 = v20 & 0xC000000000000001;
  v82 = a9;
  v84 = v20 & 0xFFFFFFFFFFFFFF8;
  v79 = v41;
  v81 = v21;
  while (1)
  {
    if (a7)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v46 = (a8 + 1);
      if (__OFADD__(a8, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (a8 >= *(v84 + 16))
      {
        goto LABEL_53;
      }

      v45 = *(v20 + 8 * a8 + 32);
      v46 = (a8 + 1);
      if (__OFADD__(a8, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v47 = v45;
    v48 = v85([v47 remObjectID]);

    if (!v21[2].isa)
    {
      break;
    }

    v49 = a9(v48);
    if ((v50 & 1) == 0)
    {
      break;
    }

    v51 = *(v21[7].isa + v49);
    v52 = *(v42 + 48);
    a6 = v51;
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = v51;
      v54 = v48;

      v55 = __CocoaDictionary.lookup(_:)();
      if (!v55)
      {
        goto LABEL_39;
      }

      v94 = v55;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v56 = v93[0];
    }

    else
    {
      v57 = *(v52 + 16);
      v58 = v51;
      if (!v57)
      {
        goto LABEL_40;
      }

      v54 = v48;

      v59 = sub_10002B924(v54);
      if ((v60 & 1) == 0)
      {
LABEL_39:

LABEL_40:
        v56 = 0;
        goto LABEL_41;
      }

      v56 = *(*(v52 + 56) + 8 * v59);
    }

LABEL_41:

    v61 = *(v18 + 9);
    v62 = [v47 remObjectID];
    if (*(v61 + 16))
    {
      v43 = v62;
      sub_10002B924(v62);
      v44 = v43;
    }

    else
    {
      v44 = v48;
      v48 = v47;
      v47 = v62;
    }

    v42 = v86;
    v14 = v79;
    v21 = v81;

    ++a8;
    v20 = v89;
    if (v46 == v79)
    {
      goto LABEL_46;
    }
  }

  v63 = v48;

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = v18;
    v67 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v67 = 136446722;
    *(v67 + 4) = sub_10000668C(0xD00000000000001ALL, v78 | 0x8000000000000000, &v94);
    *(v67 + 12) = 2082;
    v68 = *(v66 + 40);
    v95 = *(v66 + 24);
    v96[0] = v68;
    *(v96 + 14) = *(v66 + 54);
    sub_100009DAC(&v95, v93);
    v69 = sub_1000063E8();
    v71 = v70;
    sub_1005812D4(&v95);
    v72 = sub_10000668C(v69, v71, &v94);

    *(v67 + 14) = v72;
    *(v67 + 22) = 2080;
    v73 = [v63 description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = sub_10000668C(v74, v76, &v94);

    *(v67 + 24) = v77;
    _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v67, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v63];
  swift_willThrow();
}

void sub_100654D60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v164 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v158[2] = &v164;
  v159 = v3;

  v10 = sub_100759CB4(sub_1006AC5C0, v158, a1);
  if (!v4)
  {
    v11 = v10;
    v157 = v9;
    v12 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_66;
    }

LABEL_3:
    v13 = v12 - 32;
    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100945730);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v11 >> 62;
    v156 = v5;
    v177 = v11;
    v154 = v13;
    v155 = v6;
    v152 = v11 >> 62;
    if (v17)
    {
      v5 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, &v162);
      *(v5 + 12) = 2048;
      if (!v18)
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_69;
    }

    while (1)
    {
      v12 = v18 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = _swiftEmptyArrayStorage;
      if (!v12)
      {
        break;
      }

      v162 = _swiftEmptyArrayStorage;
      v15 = &v162;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v25 = v11 & 0xC000000000000001;
        v157 = (v11 & 0xFFFFFFFFFFFFFF8);
        v6 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v26 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v25)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= v157[2])
            {
              goto LABEL_64;
            }

            v27 = *(v11 + 8 * v8 + 32);
          }

          v28 = v27;
          sub_1005E96B8([v27 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = v162[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v11 = v177;
          if (v26 == v12)
          {
            v8 = v162;
            v5 = v156;
            v6 = v155;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_69:
      v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v19;

      *(v5 + 22) = 2082;
      type metadata accessor for REMCDTemplate();
      v20 = [swift_getObjCClassFromMetadata() description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_10000668C(v21, v23, &v162);
      v11 = v177;

      *(v5 + 24) = v24;
      *(v5 + 32) = 2082;
      *(v5 + 34) = sub_10000668C(v157, v8, &v162);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v5 = v156;
      v6 = v155;
      v18 = v152;
    }

LABEL_23:
    v29 = sub_10066A5A8(v8, v6);

    if (v152)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v30)
    {
      v31 = 0;
      v32 = v11 & 0xC000000000000001;
      v33 = v11 & 0xFFFFFFFFFFFFFF8;
      v34 = (v11 + 32);
      v147 = v29;
      v144 = v11 & 0xC000000000000001;
      v145 = v30;
      v142 = (v11 + 32);
      v143 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v32)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v33 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
            return;
          }

          v35 = *&v34[8 * v31];
        }

        v146 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_71;
        }

        v153 = v35;
        v36 = sub_1005E96B8([v153 remObjectID]);

        if (!*(v29 + 16) || (v37 = sub_100393C74(v36), (v38 & 1) == 0))
        {

          v110 = v36;

          v111 = Logger.logObject.getter();
          v112 = v5;
          v113 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v111, v113))
          {
            v114 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *v114 = 136446722;
            *(v114 + 4) = sub_10000668C(0xD00000000000001ALL, v154 | 0x8000000000000000, &v160);
            *(v114 + 12) = 2082;
            v115 = *(v112 + 40);
            v165 = *(v112 + 24);
            v166[0] = v115;
            *(v166 + 14) = *(v112 + 54);
            sub_100009DAC(&v165, &v162);
            v116 = sub_1000063E8();
            v118 = v117;
            sub_1005812D4(&v165);
            v119 = sub_10000668C(v116, v118, &v160);

            *(v114 + 14) = v119;
            *(v114 + 22) = 2080;
            v120 = [v110 description];
            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            v124 = sub_10000668C(v121, v123, &v160);

            *(v114 + 24) = v124;
            _os_log_impl(&_mh_execute_header, v111, v113, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v114, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v110];
          swift_willThrow();

          return;
        }

        v39 = v6[6];
        v11 = *(*(v29 + 56) + 8 * v37);
        v6 = v36;

        v12 = sub_1003536F0(v6, v39);

        v40 = sub_1006AA1E0(v153, *(v5 + 72));
        v8 = v40;
        v149 = v40[2];
        if (v149)
        {
          break;
        }

LABEL_49:

        v32 = v144;
        v31 = v146;
        v29 = v147;
        v6 = v155;
        v34 = v142;
        v33 = v143;
        if (v146 == v145)
        {
          goto LABEL_21;
        }
      }

      v41 = 0;
      v150 = v40;
      v151 = v11;
      while (v41 < *(v8 + 16))
      {
        v42 = [v11 entity];
        v43 = [v42 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v44 + 16) || (v45 = sub_100005F4C(0x736E6F6974636573, 0xE800000000000000), (v46 & 1) == 0))
        {

          v64 = v6;

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v160 = v177;
            *v67 = 136446978;
            *(v67 + 4) = sub_10000668C(0xD00000000000001ALL, v154 | 0x8000000000000000, &v160);
            *(v67 + 12) = 2082;
            v68 = *(v5 + 40);
            v169 = *(v5 + 24);
            v170[0] = v68;
            *(v170 + 14) = *(v5 + 54);
            sub_100009DAC(&v169, &v162);
            v69 = sub_1000063E8();
            v71 = v70;
            sub_1005812D4(&v169);
            v72 = sub_10000668C(v69, v71, &v160);

            *(v67 + 14) = v72;
            *(v67 + 22) = 2080;
            v73 = [v64 description];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;

            v5 = v156;
            v77 = sub_10000668C(v74, v76, &v160);

            *(v67 + 24) = v77;
            *(v67 + 32) = 2080;
            *(v67 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v160);
            _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v67, 0x2Au);
            swift_arrayDestroy();
          }

          v78 = objc_opt_self();
          v162 = 0;
          v163 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v160 = v162;
          v161 = v163;
          v79._countAndFlagsBits = 0xD000000000000049;
          v79._object = 0x80000001007FE5D0;
          String.append(_:)(v79);
          v80 = *(v5 + 40);
          v167 = *(v5 + 24);
          v168[0] = v80;
          *(v168 + 14) = *(v5 + 54);
          sub_100009DAC(&v167, &v162);
          v81 = sub_1000063E8();
          v83 = v82;
          sub_1005812D4(&v167);
          v84._countAndFlagsBits = v81;
          v84._object = v83;
          String.append(_:)(v84);

          v85._countAndFlagsBits = 0x656A624F6463202CLL;
          v85._object = 0xEE00203A44497463;
          String.append(_:)(v85);
          v86 = [v64 description];
          v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          v90._countAndFlagsBits = v87;
          v90._object = v89;
          String.append(_:)(v90);

          v91._object = 0x80000001007FE620;
          v91._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v91);
          v92._countAndFlagsBits = 0x736E6F6974636573;
          v92._object = 0xE800000000000000;
          String.append(_:)(v92);
          v93._countAndFlagsBits = 125;
          v93._object = 0xE100000000000000;
          String.append(_:)(v93);
          v94 = String._bridgeToObjectiveC()();

          [v78 internalErrorWithDebugDescription:v94];

          swift_willThrow();
          return;
        }

        v47 = *(*(v44 + 56) + 8 * v45);

        v157 = v47;
        if (![v47 isOrdered])
        {

          v95 = v6;

          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *v98 = 136446978;
            *(v98 + 4) = sub_10000668C(0xD00000000000001ALL, v154 | 0x8000000000000000, &v160);
            *(v98 + 12) = 2082;
            v99 = *(v156 + 40);
            v175 = *(v156 + 24);
            v176[0] = v99;
            *(v176 + 14) = *(v156 + 54);
            sub_100009DAC(&v175, &v162);
            v100 = sub_1000063E8();
            v102 = v101;
            sub_1005812D4(&v175);
            v103 = sub_10000668C(v100, v102, &v160);

            *(v98 + 14) = v103;
            *(v98 + 22) = 2080;
            v104 = [v95 description];
            v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v107 = v106;

            v108 = sub_10000668C(v105, v107, &v160);

            *(v98 + 24) = v108;
            *(v98 + 32) = 2080;
            *(v98 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v160);
            _os_log_impl(&_mh_execute_header, v96, v97, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v98, 0x2Au);
            swift_arrayDestroy();

            v109 = v156;
          }

          else
          {

            v109 = v156;
          }

          v125 = objc_opt_self();
          v162 = 0;
          v163 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v160 = v162;
          v161 = v163;
          v126._countAndFlagsBits = 0xD000000000000044;
          v126._object = 0x80000001007FE640;
          String.append(_:)(v126);
          v127 = *(v109 + 40);
          v173 = *(v109 + 24);
          v174[0] = v127;
          *(v174 + 14) = *(v109 + 54);
          sub_100009DAC(&v173, &v162);
          v128 = sub_1000063E8();
          v130 = v129;
          sub_1005812D4(&v173);
          v131._countAndFlagsBits = v128;
          v131._object = v130;
          String.append(_:)(v131);

          v132._countAndFlagsBits = 0x656A624F6463202CLL;
          v132._object = 0xEE00203A44497463;
          String.append(_:)(v132);
          v133 = [v95 description];
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;

          v137._countAndFlagsBits = v134;
          v137._object = v136;
          String.append(_:)(v137);

          v138._object = 0x80000001007FE620;
          v138._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v138);
          v139._countAndFlagsBits = 0x736E6F6974636573;
          v139._object = 0xE800000000000000;
          String.append(_:)(v139);
          v140._countAndFlagsBits = 125;
          v140._object = 0xE100000000000000;
          String.append(_:)(v140);
          v141 = String._bridgeToObjectiveC()();

          [v125 internalErrorWithDebugDescription:v141];

          swift_willThrow();
          return;
        }

        v48 = v6;

        v49 = v5;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = v48;
          v53 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          *v53 = 136447234;
          *(v53 + 4) = sub_10000668C(0xD00000000000001ALL, v154 | 0x8000000000000000, &v160);
          *(v53 + 12) = 2082;
          v54 = *(v49 + 40);
          v171 = *(v49 + 24);
          v172[0] = v54;
          *(v172 + 14) = *(v49 + 54);
          sub_100009DAC(&v171, &v162);
          v55 = sub_1000063E8();
          v57 = v56;
          sub_1005812D4(&v171);
          v58 = sub_10000668C(v55, v57, &v160);

          *(v53 + 14) = v58;
          *(v53 + 22) = 2114;
          *(v53 + 24) = v52;
          *v148 = v6;
          *(v53 + 32) = 2082;
          v59 = v52;
          *(v53 + 34) = sub_10000668C(0xD00000000000001CLL, 0x80000001007EA010, &v160);
          *(v53 + 42) = 2082;
          *(v53 + 44) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v160);
          _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v53, 0x34u);
          sub_1000050A4(v148, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        v60 = objc_autoreleasePoolPush();
        v61 = String._bridgeToObjectiveC()();
        v11 = v151;
        v12 = [v151 mutableOrderedSetValueForKey:v61];

        if (v12)
        {
          sub_1001DCD64(v151, v153);
        }

        else
        {
          v12 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v12, v62))
          {
            v63 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            *v63 = 136446466;
            *(v63 + 4) = sub_10000668C(0xD00000000000001ALL, v154 | 0x8000000000000000, &v162);
            *(v63 + 12) = 2080;
            *(v63 + 14) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v162);
            _os_log_impl(&_mh_execute_header, v12, v62, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v63, 0x16u);
            swift_arrayDestroy();
            v11 = v151;
          }
        }

        v8 = v150;
        objc_autoreleasePoolPop(v60);
        v5 = v156;
        if (*(v156 + 104))
        {
          v12 = v11;
          [v12 updateChangeCount];
        }

        ++v41;

        if (v149 == v41)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_65;
    }

LABEL_21:
  }
}

void sub_1006561D8(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v163 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v157[2] = &v163;
  v158 = v3;

  v10 = sub_100759CB4(sub_1006AC86C, v157, a1);
  if (!v4)
  {
    v11 = v10;
    v156 = v9;
    v12 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_65;
    }

LABEL_3:
    v13 = v12 - 32;
    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100945730);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v11 >> 62;
    v155 = v5;
    v176 = v11;
    v152 = v11 >> 62;
    v154 = v6;
    v151 = v13;
    if (v17)
    {
      v5 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, &v161);
      *(v5 + 6) = 2048;
      if (!v18)
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_68;
    }

    while (1)
    {
      v12 = v18 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = _swiftEmptyArrayStorage;
      if (!v12)
      {
        break;
      }

      v161 = _swiftEmptyArrayStorage;
      v15 = &v161;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v25 = v11 & 0xC000000000000001;
        v156 = (v11 & 0xFFFFFFFFFFFFFF8);
        v5 = off_1008D41E8;
        while (1)
        {
          v6 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v25)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= v156[2])
            {
              goto LABEL_63;
            }

            v26 = *(v11 + 8 * v8 + 32);
          }

          v27 = v26;
          sub_1005E3810([v26 remObjectID], &unk_10093F770, off_1008D41E8);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v28 = v161[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v176;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          if (v6 == v12)
          {
            v8 = v161;
            v5 = v155;
            v18 = v152;
            v6 = v154;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_68:
      v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v19;

      *(v5 + 11) = 2082;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v20 = [swift_getObjCClassFromMetadata() description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v11 = v176;
      v24 = sub_10000668C(v21, v23, &v161);

      v5[3] = v24;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v156, v8, &v161);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v5 = v155;
      v18 = v152;
      v6 = v154;
    }

LABEL_22:
    v147 = sub_10066AE78(v8, v6);

    if (v18)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v29)
    {
      v30 = 0;
      v31 = v11 & 0xC000000000000001;
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v33 = (v11 + 32);
      v143 = v11 & 0xC000000000000001;
      v144 = v29;
      v141 = (v11 + 32);
      v142 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v31)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v32 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            return;
          }

          v34 = v33[v30];
        }

        v145 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_70;
        }

        v153 = v34;
        v35 = sub_1005E3810([v153 remObjectID], &unk_10093F770, off_1008D41E8);

        if (!*(v147 + 16) || (v36 = sub_100393C74(v35), (v37 & 1) == 0))
        {

          v109 = v35;

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = v5;
            v113 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            *v113 = 136446722;
            *(v113 + 4) = sub_10000668C(0xD00000000000001ALL, v151 | 0x8000000000000000, &v159);
            *(v113 + 12) = 2082;
            v114 = *(v112 + 5);
            v164 = *(v112 + 3);
            v165[0] = v114;
            *(v165 + 14) = *(v112 + 54);
            sub_100009DAC(&v164, &v161);
            v115 = sub_1000063E8();
            v117 = v116;
            sub_1005812D4(&v164);
            v118 = sub_10000668C(v115, v117, &v159);

            *(v113 + 14) = v118;
            *(v113 + 22) = 2080;
            v119 = [v109 description];
            v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v122 = v121;

            v123 = sub_10000668C(v120, v122, &v159);

            *(v113 + 24) = v123;
            _os_log_impl(&_mh_execute_header, v110, v111, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v113, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v109];
          swift_willThrow();

          return;
        }

        v38 = v6[6];
        v6 = *(*(v147 + 56) + 8 * v36);
        v39 = v35;

        v12 = sub_1003536F0(v39, v38);

        v40 = sub_1006AA2B0(v153, v5[9]);
        v8 = v40;
        v148 = v40[2];
        if (v148)
        {
          break;
        }

LABEL_48:

        v31 = v143;
        v30 = v145;
        v6 = v154;
        v33 = v141;
        v32 = v142;
        if (v145 == v144)
        {
          goto LABEL_51;
        }
      }

      v11 = 0;
      v149 = v40;
      v150 = v6;
      while (v11 < *(v8 + 16))
      {
        v41 = [v6 entity];
        v42 = [v41 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v43 + 16) || (v44 = sub_100005F4C(0x736E6F6974636573, 0xE800000000000000), (v45 & 1) == 0))
        {

          v63 = v39;

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v159 = v176;
            *v66 = 136446978;
            *(v66 + 4) = sub_10000668C(0xD00000000000001ALL, v151 | 0x8000000000000000, &v159);
            *(v66 + 12) = 2082;
            v67 = *(v5 + 5);
            v168 = *(v5 + 3);
            v169[0] = v67;
            *(v169 + 14) = *(v5 + 54);
            sub_100009DAC(&v168, &v161);
            v68 = sub_1000063E8();
            v70 = v69;
            sub_1005812D4(&v168);
            v71 = sub_10000668C(v68, v70, &v159);

            *(v66 + 14) = v71;
            *(v66 + 22) = 2080;
            v72 = [v63 description];
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v5 = v155;
            v76 = sub_10000668C(v73, v75, &v159);

            *(v66 + 24) = v76;
            *(v66 + 32) = 2080;
            *(v66 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v159);
            _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v66, 0x2Au);
            swift_arrayDestroy();
          }

          v77 = objc_opt_self();
          v161 = 0;
          v162 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v159 = v161;
          v160 = v162;
          v78._countAndFlagsBits = 0xD000000000000049;
          v78._object = 0x80000001007FE5D0;
          String.append(_:)(v78);
          v79 = *(v5 + 5);
          v166 = *(v5 + 3);
          v167[0] = v79;
          *(v167 + 14) = *(v5 + 54);
          sub_100009DAC(&v166, &v161);
          v80 = sub_1000063E8();
          v82 = v81;
          sub_1005812D4(&v166);
          v83._countAndFlagsBits = v80;
          v83._object = v82;
          String.append(_:)(v83);

          v84._countAndFlagsBits = 0x656A624F6463202CLL;
          v84._object = 0xEE00203A44497463;
          String.append(_:)(v84);
          v85 = [v63 description];
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          v89._countAndFlagsBits = v86;
          v89._object = v88;
          String.append(_:)(v89);

          v90._object = 0x80000001007FE620;
          v90._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v90);
          v91._countAndFlagsBits = 0x736E6F6974636573;
          v91._object = 0xE800000000000000;
          String.append(_:)(v91);
          v92._countAndFlagsBits = 125;
          v92._object = 0xE100000000000000;
          String.append(_:)(v92);
          v93 = String._bridgeToObjectiveC()();

          [v77 internalErrorWithDebugDescription:v93];

          swift_willThrow();
          return;
        }

        v46 = *(*(v43 + 56) + 8 * v44);

        v156 = v46;
        if (![v46 isOrdered])
        {

          v94 = v39;

          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            *v97 = 136446978;
            *(v97 + 4) = sub_10000668C(0xD00000000000001ALL, v151 | 0x8000000000000000, &v159);
            *(v97 + 12) = 2082;
            v98 = *(v155 + 5);
            v174 = *(v155 + 3);
            v175[0] = v98;
            *(v175 + 14) = *(v155 + 54);
            sub_100009DAC(&v174, &v161);
            v99 = sub_1000063E8();
            v101 = v100;
            sub_1005812D4(&v174);
            v102 = sub_10000668C(v99, v101, &v159);

            *(v97 + 14) = v102;
            *(v97 + 22) = 2080;
            v103 = [v94 description];
            v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v105;

            v107 = sub_10000668C(v104, v106, &v159);

            *(v97 + 24) = v107;
            *(v97 + 32) = 2080;
            *(v97 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v159);
            _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v97, 0x2Au);
            swift_arrayDestroy();

            v108 = v155;
          }

          else
          {

            v108 = v155;
          }

          v124 = objc_opt_self();
          v161 = 0;
          v162 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v159 = v161;
          v160 = v162;
          v125._countAndFlagsBits = 0xD000000000000044;
          v125._object = 0x80000001007FE640;
          String.append(_:)(v125);
          v126 = *(v108 + 5);
          v172 = *(v108 + 3);
          v173[0] = v126;
          *(v173 + 14) = *(v108 + 54);
          sub_100009DAC(&v172, &v161);
          v127 = sub_1000063E8();
          v129 = v128;
          sub_1005812D4(&v172);
          v130._countAndFlagsBits = v127;
          v130._object = v129;
          String.append(_:)(v130);

          v131._countAndFlagsBits = 0x656A624F6463202CLL;
          v131._object = 0xEE00203A44497463;
          String.append(_:)(v131);
          v132 = [v94 description];
          v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = v134;

          v136._countAndFlagsBits = v133;
          v136._object = v135;
          String.append(_:)(v136);

          v137._object = 0x80000001007FE620;
          v137._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v137);
          v138._countAndFlagsBits = 0x736E6F6974636573;
          v138._object = 0xE800000000000000;
          String.append(_:)(v138);
          v139._countAndFlagsBits = 125;
          v139._object = 0xE100000000000000;
          String.append(_:)(v139);
          v140 = String._bridgeToObjectiveC()();

          [v124 internalErrorWithDebugDescription:v140];

          swift_willThrow();
          return;
        }

        v47 = v39;

        v48 = v5;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = v47;
          v52 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          *v52 = 136447234;
          *(v52 + 4) = sub_10000668C(0xD00000000000001ALL, v151 | 0x8000000000000000, &v159);
          *(v52 + 12) = 2082;
          v53 = *(v48 + 5);
          v170 = *(v48 + 3);
          v171[0] = v53;
          *(v171 + 14) = *(v48 + 54);
          sub_100009DAC(&v170, &v161);
          v54 = sub_1000063E8();
          v56 = v55;
          sub_1005812D4(&v170);
          v57 = sub_10000668C(v54, v56, &v159);

          *(v52 + 14) = v57;
          *(v52 + 22) = 2114;
          *(v52 + 24) = v51;
          *v146 = v39;
          *(v52 + 32) = 2082;
          v58 = v51;
          *(v52 + 34) = sub_10000668C(0xD00000000000001CLL, 0x80000001007EA010, &v159);
          *(v52 + 42) = 2082;
          *(v52 + 44) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v159);
          _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v52, 0x34u);
          sub_1000050A4(v146, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        v59 = objc_autoreleasePoolPush();
        v60 = String._bridgeToObjectiveC()();
        v6 = v150;
        v12 = [v150 mutableOrderedSetValueForKey:v60];

        if (v12)
        {
          sub_10023108C(v150, v153);
        }

        else
        {
          v12 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v12, v61))
          {
            v62 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v62 = 136446466;
            *(v62 + 4) = sub_10000668C(0xD00000000000001ALL, v151 | 0x8000000000000000, &v161);
            *(v62 + 12) = 2080;
            *(v62 + 14) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v161);
            _os_log_impl(&_mh_execute_header, v12, v61, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v62, 0x16u);
            swift_arrayDestroy();
            v6 = v150;
          }
        }

        v8 = v149;
        objc_autoreleasePoolPop(v59);
        v5 = v155;
        if (v155[13])
        {
          v12 = v6;
          [v12 updateChangeCount];
        }

        ++v11;

        if (v148 == v11)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_64;
    }

LABEL_51:
  }
}

void sub_10065767C(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v81 = a2;
  v8 = a3[2];
  v9 = a3[3];
  v76[2] = &v81;
  v76[3] = v5;

  v10 = sub_100759CB4(sub_1006B0238, v76, a1);
  if (v4)
  {
    return;
  }

  v11 = v10;
  v74 = v8;
  v12 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v13 = v12 - 32;
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = v11 >> 62;
  v71 = v11 >> 62;
  v73 = v6;
  v75 = v11;
  v70 = v5;
  v65 = v13;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v17 = 136446978;
    *(v17 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, v77);
    *(v17 + 12) = 2048;
    if (!(v11 >> 62))
    {
      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  while (1)
  {
    v12 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = _swiftEmptyArrayStorage;
    if (!v12)
    {
      break;
    }

    v77[0] = _swiftEmptyArrayStorage;
    v15 = v77;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v24 = v11 & 0xC000000000000001;
      v74 = v11 & 0xFFFFFFFFFFFFFF8;
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v25 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v24)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v74 + 16))
          {
            goto LABEL_52;
          }

          v26 = *(v11 + 8 * v9 + 32);
        }

        v27 = v26;
        sub_1005E2A38([v26 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = *(v77[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        v11 = v75;
        if (v25 == v12)
        {
          v9 = v77[0];
          v5 = v70;
          v17 = v71;
          v6 = v73;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_57:
    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v17 + 14) = v18;

    *(v17 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v19 = [swift_getObjCClassFromMetadata() description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, v77);
    v11 = v75;

    *(v17 + 24) = v23;
    *(v17 + 32) = 2082;
    *(v17 + 34) = sub_10000668C(v74, v9, v77);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v17, 0x2Au);
    swift_arrayDestroy();

    v5 = v70;
    v17 = v71;
    v6 = v73;
  }

LABEL_20:
  v28 = sub_10066C018(v9, v6);

  if (v17)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v12)
  {
LABEL_46:

    return;
  }

  v9 = 0;
  v68 = v11 & 0xFFFFFFFFFFFFFF8;
  v69 = v11 & 0xC000000000000001;
  v29 = &selRef_persistentStoreForIdentifier_;
  v66 = v12;
  v67 = v28;
  while (1)
  {
    if (v69)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v9 >= *(v68 + 16))
      {
        goto LABEL_53;
      }

      v32 = *(v11 + 8 * v9 + 32);
      v33 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v34 = v32;
    v35 = sub_1005E2A38([v34 v29[106]]);

    if (!*(v28 + 16))
    {
      break;
    }

    v36 = sub_100393C74(v35);
    if ((v37 & 1) == 0)
    {
      break;
    }

    v74 = v33;
    v38 = *(*(v28 + 56) + 8 * v36);
    v39 = v6[6];
    v72 = v38;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = v38;
      v41 = v35;

      v42 = __CocoaDictionary.lookup(_:)();
      if (!v42)
      {
        goto LABEL_39;
      }

      v78 = v42;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v43 = v77[0];
    }

    else
    {
      v44 = *(v39 + 16);
      v45 = v38;
      if (!v44)
      {
        goto LABEL_40;
      }

      v41 = v35;

      v46 = sub_10002B924(v41);
      if ((v47 & 1) == 0)
      {
LABEL_39:

LABEL_40:
        v43 = 0;
        goto LABEL_41;
      }

      v43 = *(*(v39 + 56) + 8 * v46);
    }

LABEL_41:

    v48 = v5[9];
    v29 = &selRef_persistentStoreForIdentifier_;
    v49 = [v34 remObjectID];
    if (*(v48 + 2))
    {
      v30 = v49;
      sub_10002B924(v49);
      v31 = v30;
    }

    else
    {
      v31 = v35;
      v35 = v34;
      v34 = v49;
    }

    v6 = v73;
    v12 = v66;
    v28 = v67;

    ++v9;
    v11 = v75;
    if (v74 == v66)
    {
      goto LABEL_46;
    }
  }

  v50 = v35;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = v5;
    v54 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v54 = 136446722;
    *(v54 + 4) = sub_10000668C(0xD00000000000001ALL, v65 | 0x8000000000000000, &v78);
    *(v54 + 12) = 2082;
    v55 = *(v53 + 5);
    v79 = *(v53 + 3);
    v80[0] = v55;
    *(v80 + 14) = *(v53 + 54);
    sub_100009DAC(&v79, v77);
    v56 = sub_1000063E8();
    v58 = v57;
    sub_1005812D4(&v79);
    v59 = sub_10000668C(v56, v58, &v78);

    *(v54 + 14) = v59;
    *(v54 + 22) = 2080;
    v60 = [v50 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = sub_10000668C(v61, v63, &v78);

    *(v54 + 24) = v64;
    _os_log_impl(&_mh_execute_header, v51, v52, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v54, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v50];
  swift_willThrow();
}

void sub_100657EEC(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v202 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v196[2] = &v202;
  v197 = v3;

  v10 = sub_100759CB4(sub_1006AF554, v196, a1);
  v11 = v4;
  if (!v4)
  {
    v12 = v10;
    v195 = v9;
    v13 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_100;
    }

LABEL_3:
    v14 = v13 - 32;
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100945730);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v12 >> 62;
    v192 = v5;
    v215 = v12;
    v188 = v6;
    v185 = v14;
    v193 = v12 >> 62;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v19 = 136446978;
      *(v19 + 4) = sub_10000668C(0xD00000000000001ALL, v14 | 0x8000000000000000, &v200);
      *(v19 + 12) = 2048;
      if (!(v12 >> 62))
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_103;
    }

    while (1)
    {
      v13 = v19 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = _swiftEmptyArrayStorage;
      if (!v13)
      {
        break;
      }

      v200 = _swiftEmptyArrayStorage;
      v16 = &v200;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v6 = (v12 & 0xC000000000000001);
        v195 = v12 & 0xFFFFFFFFFFFFFF8;
        do
        {
          v26 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          if (v6)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v195 + 16))
            {
              goto LABEL_98;
            }

            v27 = *(v12 + 8 * v8 + 32);
          }

          v28 = v27;
          sub_1005E3810([v27 remObjectID], &unk_100938880, off_1008D41A8);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = v200[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v12 = v215;
        }

        while (v26 != v13);
        v8 = v200;
        v5 = v192;
        v19 = v193;
        v6 = v188;
        break;
      }

      __break(1u);
LABEL_103:
      v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v19 + 14) = v20;

      *(v19 + 22) = 2082;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v21 = [swift_getObjCClassFromMetadata() description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v12 = v215;
      v25 = sub_10000668C(v22, v24, &v200);

      *(v19 + 24) = v25;
      *(v19 + 32) = 2082;
      *(v19 + 34) = sub_10000668C(v195, v8, &v200);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v19, 0x2Au);
      swift_arrayDestroy();

      v5 = v192;
      v19 = v193;
      v6 = v188;
    }

    v181 = sub_10066C8E8(v8, v6);

    if (v19)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v29)
    {
      v30 = 0;
      v31 = v12 & 0xC000000000000001;
      v32 = v12 & 0xFFFFFFFFFFFFFF8;
      v33 = (v12 + 32);
      v178 = v12 & 0xC000000000000001;
      v179 = v29;
      v176 = (v12 + 32);
      v177 = v12 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v31)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v32 + 16))
          {
            __break(1u);
LABEL_105:
            __break(1u);
            return;
          }

          v34 = *&v33[8 * v30];
        }

        v180 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_105;
        }

        v35 = v34;
        v187 = sub_1005E3810([v35 remObjectID], &unk_100938880, off_1008D41A8);

        if (!*(v181 + 16) || (v36 = sub_100393C74(v187), (v37 & 1) == 0))
        {

          v144 = v187;

          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            *v147 = 136446722;
            *(v147 + 4) = sub_10000668C(0xD00000000000001ALL, v185 | 0x8000000000000000, &v198);
            *(v147 + 12) = 2082;
            v148 = *(v5 + 40);
            v203 = *(v5 + 24);
            v204[0] = v148;
            *(v204 + 14) = *(v5 + 54);
            sub_100009DAC(&v203, &v200);
            v149 = sub_1000063E8();
            v151 = v150;
            sub_1005812D4(&v203);
            v152 = sub_10000668C(v149, v151, &v198);

            *(v147 + 14) = v152;
            *(v147 + 22) = 2080;
            v153 = [v144 description];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v155;

            v157 = sub_10000668C(v154, v156, &v198);

            *(v147 + 24) = v157;
            _os_log_impl(&_mh_execute_header, v145, v146, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v147, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v144];
          swift_willThrow();

          return;
        }

        v186 = v35;
        v6 = *(*(v181 + 56) + 8 * v36);
        v38 = v188[6];
        if ((v38 & 0xC000000000000001) != 0)
        {
          if (v38 < 0)
          {
            v39 = v188[6];
          }

          v40 = v6;
          v41 = v187;
          v42 = v187;

          v43 = __CocoaDictionary.lookup(_:)();
          if (!v43)
          {
            goto LABEL_42;
          }

          v198 = v43;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v44 = v200;
        }

        else
        {
          v45 = *(v38 + 16);
          v46 = v6;
          v41 = v187;
          if (!v45)
          {
            goto LABEL_43;
          }

          v42 = v187;

          v47 = sub_10002B924(v42);
          if ((v48 & 1) == 0)
          {
LABEL_42:

LABEL_43:
            v44 = 0;
            goto LABEL_44;
          }

          v44 = *(*(v38 + 56) + 8 * v47);
        }

LABEL_44:

        v49 = *(v5 + 72);
        v50 = [v186 remObjectID];
        v51 = v50;
        if (*(v49 + 16) && (v52 = sub_10002B924(v50), (v53 & 1) != 0))
        {
          v13 = *(*(v49 + 56) + 8 * v52);
        }

        else
        {

          v13 = 0;
        }

        v8 = v6;
        v54 = sub_1005F4B38(v13, &off_1008DF1C0, sub_1003663AC, &qword_10094F5D8, &unk_1007B50F0);

        v182 = v54[2];
        if (v182)
        {
          v12 = 0;
          v183 = v54;
          v184 = v6;
          while (v12 < v54[2])
          {
            v190 = v11;
            v55 = *(v54 + v12 + 32);
            v56 = v8;
            v57 = [v8 entity];
            v58 = [v57 relationshipsByName];

            sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
            v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v191 = v55;
            if (v55 <= 1)
            {
              v60 = 0x7265646E696D6572;
            }

            else
            {
              v60 = 0x736E6F6974636573;
            }

            if (v55 <= 1)
            {
              v61 = 0xE900000000000073;
            }

            else
            {
              v61 = 0xE800000000000000;
            }

            v195 = v61;
            v194 = v60;
            if (!*(v59 + 16))
            {

LABEL_86:

              v89 = v41;

              v90 = v5;
              v91 = Logger.logObject.getter();
              v92 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                *v93 = 136446978;
                *(v93 + 4) = sub_10000668C(0xD00000000000001ALL, v185 | 0x8000000000000000, &v198);
                *(v93 + 12) = 2082;
                v94 = *(v5 + 40);
                v207 = *(v5 + 24);
                v208[0] = v94;
                *(v208 + 14) = *(v5 + 54);
                sub_100009DAC(&v207, &v200);
                v95 = sub_1000063E8();
                v97 = v96;
                sub_1005812D4(&v207);
                v98 = sub_10000668C(v95, v97, &v198);

                *(v93 + 14) = v98;
                *(v93 + 22) = 2080;
                v99 = [v89 description];
                v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v215 = v89;
                v102 = v101;

                v103 = sub_10000668C(v100, v102, &v198);

                *(v93 + 24) = v103;
                *(v93 + 32) = 2080;
                v104 = v194;
                v105 = v195;
                v106 = sub_10000668C(v194, v195, &v198);

                *(v93 + 34) = v106;
                _os_log_impl(&_mh_execute_header, v91, v92, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v93, 0x2Au);
                swift_arrayDestroy();
                v56 = v184;

                v107 = v215;
              }

              else
              {

                v107 = v89;
                v105 = v195;
                v104 = v194;
              }

              v200 = 0;
              v201 = 0xE000000000000000;
              _StringGuts.grow(_:)(120);
              v198 = v200;
              v199 = v201;
              v108._countAndFlagsBits = 0xD000000000000049;
              v108._object = 0x80000001007FE5D0;
              String.append(_:)(v108);
              v109 = *(v90 + 40);
              v205 = *(v90 + 24);
              v206[0] = v109;
              *(v206 + 14) = *(v90 + 54);
              sub_100009DAC(&v205, &v200);
              v110 = sub_1000063E8();
              v112 = v111;
              sub_1005812D4(&v205);
              v113._countAndFlagsBits = v110;
              v113._object = v112;
              String.append(_:)(v113);

              v114._countAndFlagsBits = 0x656A624F6463202CLL;
              v114._object = 0xEE00203A44497463;
              String.append(_:)(v114);
              v115 = [v107 description];
              v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v118 = v117;

              v119._countAndFlagsBits = v116;
              v119._object = v118;
              String.append(_:)(v119);

              v120._object = 0x80000001007FE620;
              v120._countAndFlagsBits = 0xD00000000000001ALL;
              String.append(_:)(v120);
              v121 = objc_opt_self();
              v122._countAndFlagsBits = v104;
              v122._object = v105;
              String.append(_:)(v122);

              v123._countAndFlagsBits = 125;
              v123._object = 0xE100000000000000;
              String.append(_:)(v123);
              v124 = String._bridgeToObjectiveC()();

              [v121 internalErrorWithDebugDescription:v124];

              swift_willThrow();
              return;
            }

            v62 = sub_100005F4C(v60, v61);
            v64 = v63;

            if ((v64 & 1) == 0)
            {
              goto LABEL_86;
            }

            v65 = *(*(v59 + 56) + 8 * v62);

            v189 = v65;
            if (![v65 isOrdered])
            {

              v125 = v41;

              v126 = v5;
              v127 = Logger.logObject.getter();
              v128 = static os_log_type_t.fault.getter();

              v129 = os_log_type_enabled(v127, v128);
              v215 = v125;
              if (v129)
              {
                v130 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                *v130 = 136446978;
                *(v130 + 4) = sub_10000668C(0xD00000000000001ALL, v185 | 0x8000000000000000, &v198);
                *(v130 + 12) = 2082;
                v131 = *(v5 + 40);
                v213 = *(v5 + 24);
                v214[0] = v131;
                *(v214 + 14) = *(v5 + 54);
                sub_100009DAC(&v213, &v200);
                v132 = sub_1000063E8();
                v134 = v133;
                sub_1005812D4(&v213);
                v135 = sub_10000668C(v132, v134, &v198);

                *(v130 + 14) = v135;
                *(v130 + 22) = 2080;
                v136 = [v125 description];
                v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v139 = v138;

                v140 = sub_10000668C(v137, v139, &v198);

                *(v130 + 24) = v140;
                *(v130 + 32) = 2080;
                v141 = v194;
                v142 = v195;
                v143 = sub_10000668C(v194, v195, &v198);

                *(v130 + 34) = v143;
                _os_log_impl(&_mh_execute_header, v127, v128, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v130, 0x2Au);
                swift_arrayDestroy();
                v56 = v184;
              }

              else
              {

                v142 = v195;
                v141 = v194;
              }

              v200 = 0;
              v201 = 0xE000000000000000;
              _StringGuts.grow(_:)(115);
              v198 = v200;
              v199 = v201;
              v158._countAndFlagsBits = 0xD000000000000044;
              v158._object = 0x80000001007FE640;
              String.append(_:)(v158);
              v159 = *(v126 + 40);
              v211 = *(v126 + 24);
              v212[0] = v159;
              *(v212 + 14) = *(v126 + 54);
              sub_100009DAC(&v211, &v200);
              v160 = sub_1000063E8();
              v162 = v161;
              sub_1005812D4(&v211);
              v163._countAndFlagsBits = v160;
              v163._object = v162;
              String.append(_:)(v163);

              v164._countAndFlagsBits = 0x656A624F6463202CLL;
              v164._object = 0xEE00203A44497463;
              String.append(_:)(v164);
              v165 = v215;
              v166 = [v215 description];
              v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v169 = v168;

              v170._countAndFlagsBits = v167;
              v170._object = v169;
              String.append(_:)(v170);

              v171._object = 0x80000001007FE620;
              v171._countAndFlagsBits = 0xD00000000000001ALL;
              String.append(_:)(v171);
              v172 = objc_opt_self();
              v173._countAndFlagsBits = v141;
              v173._object = v142;
              String.append(_:)(v173);

              v174._countAndFlagsBits = 125;
              v174._object = 0xE100000000000000;
              String.append(_:)(v174);
              v175 = String._bridgeToObjectiveC()();

              [v172 internalErrorWithDebugDescription:v175];

              swift_willThrow();
              return;
            }

            v66 = v41;

            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v198 = swift_slowAlloc();
              *v69 = 136447234;
              *(v69 + 4) = sub_10000668C(0xD00000000000001ALL, v185 | 0x8000000000000000, &v198);
              *(v69 + 12) = 2082;
              v71 = *(v5 + 40);
              v209 = *(v5 + 24);
              v210[0] = v71;
              *(v210 + 14) = *(v5 + 54);
              sub_100009DAC(&v209, &v200);
              v72 = sub_1000063E8();
              v74 = v73;
              sub_1005812D4(&v209);
              v75 = sub_10000668C(v72, v74, &v198);

              *(v69 + 14) = v75;
              *(v69 + 22) = 2114;
              *(v69 + 24) = v66;
              *v70 = v41;
              v76 = 0xD00000000000001FLL;
              *(v69 + 32) = 2082;
              if (v191 != 1)
              {
                v76 = 0xD00000000000001CLL;
              }

              v77 = "sectionIDsToUndelete";
              if (v191 != 1)
              {
                v77 = "remindersICSDisplayOrderChanged";
              }

              if (v191)
              {
                v78 = v76;
              }

              else
              {
                v78 = 0xD00000000000001CLL;
              }

              if (v191)
              {
                v79 = v77;
              }

              else
              {
                v79 = "lastUserAccessDate";
              }

              v80 = v66;
              v81 = sub_10000668C(v78, v79 | 0x8000000000000000, &v198);

              *(v69 + 34) = v81;
              *(v69 + 42) = 2082;
              v82 = sub_10000668C(v194, v195, &v198);

              *(v69 + 44) = v82;
              _os_log_impl(&_mh_execute_header, v67, v68, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v69, 0x34u);
              sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v83 = v192;
              v84 = v186;
            }

            else
            {
              v83 = v5;
              v84 = v186;
            }

            v6 = objc_autoreleasePoolPush();
            v85 = String._bridgeToObjectiveC()();

            v8 = v184;
            v13 = [v184 mutableOrderedSetValueForKey:v85];

            if (v13)
            {
              v5 = v83;
              sub_100679214(v13, v191 > 1, v184, v84, v83);
              v11 = v190;
            }

            else
            {
              v13 = Logger.logObject.getter();
              v86 = static os_log_type_t.default.getter();
              v5 = v83;
              if (os_log_type_enabled(v13, v86))
              {
                v87 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                *v87 = 136446466;
                *(v87 + 4) = sub_10000668C(0xD00000000000001ALL, v185 | 0x8000000000000000, &v200);
                *(v87 + 12) = 2080;
                v88 = sub_10000668C(v194, v195, &v200);

                *(v87 + 14) = v88;
                _os_log_impl(&_mh_execute_header, v13, v86, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v87, 0x16u);
                swift_arrayDestroy();
                v8 = v184;

                v11 = v190;
              }

              else
              {

                v11 = v190;
                v8 = v184;
              }
            }

            v54 = v183;
            objc_autoreleasePoolPop(v6);
            v41 = v187;
            if (*(v5 + 104))
            {
              v13 = v8;
              [v13 updateChangeCount];
            }

            ++v12;

            if (v182 == v12)
            {
              goto LABEL_81;
            }
          }

LABEL_99:
          __break(1u);
LABEL_100:
          swift_once();
          goto LABEL_3;
        }

LABEL_81:

        v31 = v178;
        v30 = v180;
        v33 = v176;
        v32 = v177;
      }

      while (v180 != v179);
    }
  }
}

void sub_1006595E8(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v172 = a2;
  v8 = a3[2];
  v9 = a3[3];
  v167[2] = &v172;
  v167[3] = v5;

  v10 = sub_100759CB4(sub_1006AF794, v167, a1);
  if (!v4)
  {
    v11 = v10;
    v166 = v8;
    v12 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_72;
    }

LABEL_3:
    v13 = v12 - 32;
    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100945730);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v11 >> 62;
    v165 = v5;
    v185 = v11;
    v162 = v11 >> 62;
    v164 = v6;
    v161 = v13;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *v18 = 136446978;
      *(v18 + 4) = sub_10000668C(0xD00000000000001ALL, v13 | 0x8000000000000000, &v170);
      *(v18 + 12) = 2048;
      if (!(v11 >> 62))
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_75;
    }

    while (1)
    {
      v12 = v18 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = _swiftEmptyArrayStorage;
      if (!v12)
      {
        break;
      }

      v170 = _swiftEmptyArrayStorage;
      v15 = &v170;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v5 = v11 & 0xC000000000000001;
        v166 = (v11 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v6 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v5)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v166[2])
            {
              goto LABEL_70;
            }

            v25 = *(v11 + 8 * v9 + 32);
          }

          v26 = v25;
          sub_1005E3810([v25 remObjectID], &qword_1009399F0, off_1008D4120);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = v170[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v185;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v9;
          if (v6 == v12)
          {
            v9 = v170;
            v5 = v165;
            v18 = v162;
            v6 = v164;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_75:
      v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v18 + 14) = v19;

      *(v18 + 22) = 2082;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v20 = [swift_getObjCClassFromMetadata() description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v11 = v185;
      v24 = sub_10000668C(v21, v23, &v170);

      *(v18 + 24) = v24;
      *(v18 + 32) = 2082;
      *(v18 + 34) = sub_10000668C(v166, v9, &v170);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v18, 0x2Au);
      swift_arrayDestroy();

      v5 = v165;
      v18 = v162;
      v6 = v164;
    }

LABEL_23:
    v155 = sub_1006666A4(v9, v6);

    if (v18)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v155;
    swift_beginAccess();
    if (v28)
    {
      v30 = 0;
      v31 = v11 & 0xC000000000000001;
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v33 = (v11 + 32);
      v152 = v11 & 0xC000000000000001;
      v153 = v28;
      v150 = (v11 + 32);
      v151 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v31)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v32 + 16))
          {
            __break(1u);
LABEL_77:
            __break(1u);
            return;
          }

          v34 = *&v33[8 * v30];
        }

        v154 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_77;
        }

        v35 = v34;
        v36 = sub_1005E3810([v35 remObjectID], &qword_1009399F0, off_1008D4120);

        v157 = v35;
        if (!*(v29 + 16) || (v37 = sub_100393C74(v36), (v38 & 1) == 0))
        {

          v118 = v36;

          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *v121 = 136446722;
            *(v121 + 4) = sub_10000668C(0xD00000000000001ALL, v161 | 0x8000000000000000, &v168);
            *(v121 + 12) = 2082;
            v122 = *(v5 + 40);
            v173 = *(v5 + 24);
            v174[0] = v122;
            *(v174 + 14) = *(v5 + 54);
            sub_100009DAC(&v173, &v170);
            v123 = sub_1000063E8();
            v125 = v124;
            sub_1005812D4(&v173);
            v126 = sub_10000668C(v123, v125, &v168);

            *(v121 + 14) = v126;
            *(v121 + 22) = 2080;
            v127 = [v118 description];
            v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v130 = v129;

            v131 = sub_10000668C(v128, v130, &v168);

            *(v121 + 24) = v131;
            _os_log_impl(&_mh_execute_header, v119, v120, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v121, 0x20u);
            swift_arrayDestroy();

            v35 = v157;
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v118];
          swift_willThrow();

          return;
        }

        v39 = *(*(v29 + 56) + 8 * v37);
        v40 = v6[6];
        v9 = v39;
        v41 = v36;

        v12 = sub_1003536F0(v41, v40);

        v42 = sub_1006ACAFC(v35, *(v5 + 72));
        v43 = v42;
        v158 = v42[2];
        if (v158)
        {
          break;
        }

LABEL_56:

        v31 = v152;
        v30 = v154;
        v6 = v164;
        v29 = v155;
        v33 = v150;
        v32 = v151;
        if (v154 == v153)
        {
          goto LABEL_21;
        }
      }

      v6 = 0;
      v163 = v41;
      v159 = v42;
      v160 = v9;
      while (v6 < v43[2])
      {
        v44 = *(v6 + v43 + 32);
        v45 = [v9 entity];
        v46 = [v45 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v47 + 16) || (v48 = sub_100005F4C(0x737473696CLL, 0xE500000000000000), (v49 & 1) == 0))
        {

          v71 = v41;

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *v74 = 136446978;
            *(v74 + 4) = sub_10000668C(0xD00000000000001ALL, v161 | 0x8000000000000000, &v168);
            *(v74 + 12) = 2082;
            v75 = *(v5 + 40);
            v177 = *(v5 + 24);
            v178[0] = v75;
            *(v178 + 14) = *(v5 + 54);
            sub_100009DAC(&v177, &v170);
            v76 = sub_1000063E8();
            v78 = v77;
            sub_1005812D4(&v177);
            v79 = sub_10000668C(v76, v78, &v168);

            *(v74 + 14) = v79;
            *(v74 + 22) = 2080;
            v80 = [v71 description];
            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            v84 = v81;
            v5 = v165;
            v85 = sub_10000668C(v84, v83, &v168);

            *(v74 + 24) = v85;
            *(v74 + 32) = 2080;
            *(v74 + 34) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v168);
            _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v74, 0x2Au);
            swift_arrayDestroy();
          }

          v86 = objc_opt_self();
          v170 = 0;
          v171 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v168 = v170;
          v169 = v171;
          v87._countAndFlagsBits = 0xD000000000000049;
          v87._object = 0x80000001007FE5D0;
          String.append(_:)(v87);
          v88 = *(v5 + 40);
          v175 = *(v5 + 24);
          v176[0] = v88;
          *(v176 + 14) = *(v5 + 54);
          sub_100009DAC(&v175, &v170);
          v89 = sub_1000063E8();
          v91 = v90;
          sub_1005812D4(&v175);
          v92._countAndFlagsBits = v89;
          v92._object = v91;
          String.append(_:)(v92);

          v93._countAndFlagsBits = 0x656A624F6463202CLL;
          v93._object = 0xEE00203A44497463;
          String.append(_:)(v93);
          v94 = [v71 description];
          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          v98._countAndFlagsBits = v95;
          v98._object = v97;
          String.append(_:)(v98);

          v99._object = 0x80000001007FE620;
          v99._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v99);
          v100._countAndFlagsBits = 0x737473696CLL;
          v100._object = 0xE500000000000000;
          String.append(_:)(v100);
          v101._countAndFlagsBits = 125;
          v101._object = 0xE100000000000000;
          String.append(_:)(v101);
          v102 = String._bridgeToObjectiveC()();

          [v86 internalErrorWithDebugDescription:v102];

          swift_willThrow();
          return;
        }

        v50 = *(*(v47 + 56) + 8 * v48);

        v166 = v50;
        if (![v50 isOrdered])
        {

          v103 = v41;

          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.fault.getter();

          v106 = os_log_type_enabled(v104, v105);
          v185 = v103;
          if (v106)
          {
            v107 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *v107 = 136446978;
            *(v107 + 4) = sub_10000668C(0xD00000000000001ALL, v161 | 0x8000000000000000, &v168);
            *(v107 + 12) = 2082;
            v108 = *(v165 + 40);
            v183 = *(v165 + 24);
            v184[0] = v108;
            *(v184 + 14) = *(v165 + 54);
            sub_100009DAC(&v183, &v170);
            v109 = sub_1000063E8();
            v111 = v110;
            sub_1005812D4(&v183);
            v112 = sub_10000668C(v109, v111, &v168);

            *(v107 + 14) = v112;
            *(v107 + 22) = 2080;
            v113 = [v103 description];
            v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v116 = v115;

            v117 = sub_10000668C(v114, v116, &v168);

            *(v107 + 24) = v117;
            *(v107 + 32) = 2080;
            *(v107 + 34) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v168);
            _os_log_impl(&_mh_execute_header, v104, v105, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v107, 0x2Au);
            swift_arrayDestroy();

            v5 = v165;
          }

          v132 = objc_opt_self();
          v170 = 0;
          v171 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v168 = v170;
          v169 = v171;
          v133._countAndFlagsBits = 0xD000000000000044;
          v133._object = 0x80000001007FE640;
          String.append(_:)(v133);
          v134 = *(v5 + 40);
          v181 = *(v5 + 24);
          v182[0] = v134;
          *(v182 + 14) = *(v5 + 54);
          sub_100009DAC(&v181, &v170);
          v135 = sub_1000063E8();
          v137 = v136;
          sub_1005812D4(&v181);
          v138._countAndFlagsBits = v135;
          v138._object = v137;
          String.append(_:)(v138);

          v139._countAndFlagsBits = 0x656A624F6463202CLL;
          v139._object = 0xEE00203A44497463;
          String.append(_:)(v139);
          v140 = v185;
          v141 = [v185 description];
          v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v144 = v143;

          v145._countAndFlagsBits = v142;
          v145._object = v144;
          String.append(_:)(v145);

          v146._object = 0x80000001007FE620;
          v146._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v146);
          v147._countAndFlagsBits = 0x737473696CLL;
          v147._object = 0xE500000000000000;
          String.append(_:)(v147);
          v148._countAndFlagsBits = 125;
          v148._object = 0xE100000000000000;
          String.append(_:)(v148);
          v149 = String._bridgeToObjectiveC()();

          [v132 internalErrorWithDebugDescription:v149];

          swift_willThrow();
          return;
        }

        v51 = v41;

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v156 = v53;
          v54 = v5;
          v55 = v51;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          *v56 = 136447234;
          *(v56 + 4) = sub_10000668C(0xD00000000000001ALL, v161 | 0x8000000000000000, &v168);
          *(v56 + 12) = 2082;
          v58 = *(v54 + 40);
          v179 = *(v54 + 24);
          v180[0] = v58;
          *(v180 + 14) = *(v54 + 54);
          sub_100009DAC(&v179, &v170);
          v59 = sub_1000063E8();
          v61 = v60;
          sub_1005812D4(&v179);
          v62 = sub_10000668C(v59, v61, &v168);

          *(v56 + 14) = v62;
          *(v56 + 22) = 2114;
          *(v56 + 24) = v55;
          *v57 = v163;
          if (v44)
          {
            v63 = 0xD00000000000001ALL;
          }

          else
          {
            v63 = 0xD000000000000018;
          }

          if (v44)
          {
            v64 = "smartListIDsToUndelete";
          }

          else
          {
            v64 = "didFinishMigration";
          }

          *(v56 + 32) = 2082;
          v65 = v55;
          v66 = sub_10000668C(v63, v64 | 0x8000000000000000, &v168);
          v35 = v157;

          *(v56 + 34) = v66;
          *(v56 + 42) = 2082;
          *(v56 + 44) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v168);
          _os_log_impl(&_mh_execute_header, v52, v156, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v56, 0x34u);
          sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        else
        {
        }

        v67 = objc_autoreleasePoolPush();
        v68 = String._bridgeToObjectiveC()();
        v9 = v160;
        v12 = [v160 mutableOrderedSetValueForKey:v68];

        if (v12)
        {
          v5 = v165;
          sub_1002FD1B4(v12, v160, v35, v165);
        }

        else
        {
          v12 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();
          v5 = v165;
          if (os_log_type_enabled(v12, v69))
          {
            v70 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            *v70 = 136446466;
            *(v70 + 4) = sub_10000668C(0xD00000000000001ALL, v161 | 0x8000000000000000, &v170);
            *(v70 + 12) = 2080;
            *(v70 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v170);
            _os_log_impl(&_mh_execute_header, v12, v69, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v70, 0x16u);
            swift_arrayDestroy();
            v35 = v157;

            v9 = v160;
          }
        }

        v11 = v185;
        v43 = v159;
        objc_autoreleasePoolPop(v67);
        if (*(v5 + 104))
        {
          v12 = v9;
          [v12 updateChangeCount];
        }

        v6 = (v6 + 1);

        v41 = v163;
        if (v158 == v6)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_71;
    }

LABEL_21:
  }
}