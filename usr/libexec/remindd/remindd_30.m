void sub_1002FD1B4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v251 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v243 = &v229 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v241 = &v229 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v242 = &v229 - v15;
  __chkstk_darwin(v16);
  v18 = &v229 - v17;
  __chkstk_darwin(v19);
  v248 = &v229 - v20;
  __chkstk_darwin(v21);
  v23 = (&v229 - v22);
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v253 = (&v229 - v26);
  v27 = [a3 listsDADisplayOrderChanged];
  v28 = &selRef_isEmpty;
  v254 = v7;
  v246 = a2;
  v244 = a4;
  v249 = v18;
  if (!v27)
  {
LABEL_32:
    v245 = v8;
    v73 = v28;
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    v75 = sub_100006654(v74, qword_100941670);
    v76 = a3;
    v77 = v251;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    LODWORD(v238) = v79;
    v80 = os_log_type_enabled(v78, v79);
    v240 = v75;
    v239 = v77;
    if (!v80)
    {

      v100 = v245;
LABEL_62:
      v107 = [v76 v73[83]];
      if (v107)
      {
        v108 = v107;
        v109 = swift_allocObject();
        *(v109 + 16) = _swiftEmptyDictionarySingleton;
        v110 = (v109 + 16);
        v260 = sub_1002FF4BC;
        v261 = v109;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v259 = sub_1002FFDC4;
        *(&v259 + 1) = &unk_1008ED560;
        v111 = _Block_copy(&aBlock);

        [v108 enumerateObjectsUsingBlock:v111];
        _Block_release(v111);
        swift_beginAccess();
        v112 = *v110;

        v113 = v239;
        sub_1000FEA70(v239, v112, 0);

        v114 = v76;
        v115 = v113;
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();

        v118 = os_log_type_enabled(v116, v117);
        v250 = v115;
        v251 = v108;
        if (!v118)
        {

          goto LABEL_94;
        }

        LODWORD(v236) = v117;
        v238 = v116;
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *&aBlock = v235;
        *v119 = 138412546;
        v121 = [v114 remObjectID];
        *(v119 + 4) = v121;
        v234 = v120;
        *v120 = v121;
        v237 = v119;
        *(v119 + 12) = 2080;
        v257 = v115;
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
        sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
        v122 = Sequence.elements<A>(ofType:)();
        v123 = v122;
        if (v122 >> 62)
        {
LABEL_92:
          v253 = (v123 & 0xFFFFFFFFFFFFFF8);
          v124 = _CocoaArrayWrapper.endIndex.getter();
          if (v124)
          {
LABEL_66:
            v125 = 0;
            v252 = (v123 & 0xC000000000000001);
            v126 = (v245 + 7);
            v127 = (v245 + 6);
            v233 = v245 + 2;
            v232 = (v245 + 1);
            v128 = _swiftEmptyArrayStorage;
            do
            {
              v239 = v128;
              v129 = v125;
              while (1)
              {
                if (v252)
                {
                  v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v129 >= v253[2].isa)
                  {
                    goto LABEL_91;
                  }

                  v130 = *(v123 + 8 * v129 + 32);
                }

                v131 = v130;
                v125 = (v129 + 1);
                if (__OFADD__(v129, 1))
                {
                  __break(1u);
LABEL_91:
                  __break(1u);
                  goto LABEL_92;
                }

                v132 = [v130 identifier];
                if (v132)
                {
                  v133 = v249;
                  v134 = v132;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v7 = v254;
                  v135 = 0;
                }

                else
                {
                  v135 = 1;
                  v133 = v249;
                }

                (*v126)(v133, v135, 1, v7);
                v136 = v133;
                v137 = v248;
                sub_100100FB4(v136, v248);
                if (!(*v127)(v137, 1, v7))
                {
                  break;
                }

                sub_1000050A4(v137, &unk_100939D90, "8\n\r");
                v129 = (v129 + 1);
                if (v125 == v124)
                {
                  goto LABEL_93;
                }
              }

              v138 = v243;
              (*v233)(v243, v137, v7);
              sub_1000050A4(v137, &unk_100939D90, "8\n\r");
              v139 = UUID.uuidString.getter();
              v231 = v140;

              (*v232)(v138, v7);
              v128 = v239;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v128 = sub_100365788(0, *(v128 + 2) + 1, 1, v128);
              }

              v142 = *(v128 + 2);
              v141 = *(v128 + 3);
              if (v142 >= v141 >> 1)
              {
                v128 = sub_100365788((v141 > 1), v142 + 1, 1, v128);
              }

              *(v128 + 2) = v142 + 1;
              v143 = &v128[16 * v142];
              v144 = v231;
              *(v143 + 4) = v139;
              *(v143 + 5) = v144;
              v7 = v254;
            }

            while (v125 != v124);
          }
        }

        else
        {
          v253 = (v122 & 0xFFFFFFFFFFFFFF8);
          v124 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v124)
          {
            goto LABEL_66;
          }
        }

LABEL_93:

        v155 = Array.description.getter();
        v157 = v156;

        v158 = sub_10000668C(v155, v157, &aBlock);

        v159 = v237;
        *(v237 + 14) = v158;
        v160 = v238;
        _os_log_impl(&_mh_execute_header, v238, v236, "sorting ordered set account.lists - after - {account: %@, lists: %s}", v159, 0x16u);
        sub_1000050A4(v234, &unk_100938E70, &unk_100797230);

        sub_10000607C(v235);

        a2 = v246;
        v100 = v245;
        v115 = v250;
        v108 = v251;
LABEL_94:
        v161 = String._bridgeToObjectiveC()();
        v162 = [a2 mutableOrderedSetValueForKey:v161];

        v253 = v162;
        if ([v162 count]>= 1)
        {
          v163 = swift_allocObject();
          *(v163 + 16) = _swiftEmptyDictionarySingleton;
          v164 = (v163 + 16);
          v260 = sub_1002FFDC8;
          v261 = v163;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v259 = sub_1002FFDC4;
          *(&v259 + 1) = &unk_1008ED588;
          v165 = a2;
          v166 = _Block_copy(&aBlock);

          [v108 enumerateObjectsUsingBlock:v166];
          _Block_release(v166);
          swift_beginAccess();
          v167 = *v164;

          v168 = v253;
          sub_1000FEA70(v253, v167, 0);

          v169 = v168;
          v170 = v165;
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v257 = v174;
            *v173 = 136446466;
            v175 = [v170 remObjectID];
            if (v175)
            {
              v176 = v175;
              v177 = [v175 description];

              v7 = v254;
              v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v180 = v179;
            }

            else
            {
              v178 = 7104878;
              v180 = 0xE300000000000000;
            }

            v181 = sub_10000668C(v178, v180, &v257);

            *(v173 + 4) = v181;
            *(v173 + 12) = 2048;
            v182 = [v169 count];

            *(v173 + 14) = v182;
            _os_log_impl(&_mh_execute_header, v171, v172, "REMAccountStorage+CDIngestor.mutateOrdering(): Sorted account.smartLists {account: %{public}s, #smartLists: %ld}", v173, 0x16u);
            sub_10000607C(v174);

            a2 = v246;
            v100 = v245;
            v115 = v250;
            v108 = v251;
          }

          else
          {

            a2 = v246;
            v108 = v251;
          }
        }

        v183 = [a2 identifier];
        if (v183)
        {
          v184 = v241;
          v185 = v183;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v186 = 0;
        }

        else
        {
          v186 = 1;
          v184 = v241;
        }

        (v100[7])(v184, v186, 1, v7);
        v187 = v242;
        sub_100100FB4(v184, v242);
        if ((v100[6])(v187, 1, v7))
        {
          sub_1000050A4(v187, &unk_100939D90, "8\n\r");
        }

        else
        {
          v200 = v243;
          (v100[2])(v243, v187, v7);
          sub_1000050A4(v187, &unk_100939D90, "8\n\r");
          UUID.uuidString.getter();
          (v100[1])(v200, v7);
          v201 = *(v244 + 80);
          v202 = a2;
          v203 = String._bridgeToObjectiveC()();

          v204 = [v201 storeForAccountIdentifier:v203];

          a2 = v202;
          if (v204)
          {
            v205 = sub_100724C50();
            v206 = v247;
            sub_100718C70(v115, v205, v108, v204);
            if (v206)
            {
            }

            v247 = 0;
            v208 = v115;
            v209 = v205;
            v210 = v208;
            v211 = v202;
            v212 = v209;
            v213 = Logger.logObject.getter();
            v214 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v213, v214))
            {
              LODWORD(v254) = v214;
              v215 = swift_slowAlloc();
              v252 = swift_slowAlloc();
              v257 = v252;
              *v215 = 136446722;
              v216 = [v211 remObjectID];
              if (v216)
              {
                v217 = v216;
                v218 = [v216 description];

                v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v221 = v220;
              }

              else
              {
                v219 = 7104878;
                v221 = 0xE300000000000000;
              }

              v222 = sub_10000668C(v219, v221, &v257);

              *(v215 + 4) = v222;
              *(v215 + 12) = 2048;
              v223 = [v212 count];

              *(v215 + 14) = v223;
              *(v215 + 22) = 2048;
              v224 = [v210 count];

              *(v215 + 24) = v224;
              _os_log_impl(&_mh_execute_header, v213, v254, "REMAccountStorage+CDIngestor.mutateOrdering(): Sorted intermixed ordered IDs for CSLs and Lists in REMCDAccountListData {account: %{public}s, #csls: %ld, #lists: %ld}", v215, 0x20u);
              sub_10000607C(v252);

              a2 = v246;
              v108 = v251;
            }

            else
            {

              a2 = v202;
            }

            goto LABEL_121;
          }
        }

        v188 = a2;
        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = a2;
          v192 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          v257 = v254;
          *v192 = 136446210;
          v193 = [v188 remObjectID];
          if (v193)
          {
            v194 = v193;
            v195 = v108;
            v196 = [v193 description];

            v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v199 = v198;

            v108 = v195;
            v191 = v246;
          }

          else
          {
            v197 = 7104878;
            v199 = 0xE300000000000000;
          }

          v207 = sub_10000668C(v197, v199, &v257);

          *(v192 + 4) = v207;
          _os_log_impl(&_mh_execute_header, v189, v190, "REMAccountStorage+CDIngestor.mutateOrdering(): Could not proceed to upsertOrderedIdentifiersForAccountListView() because there is problem finding the persistent store for the account {account: %{public}s}", v192, 0xCu);
          sub_10000607C(v254);

          a2 = v191;
        }

        else
        {
        }

LABEL_121:
        if (*(v244 + 17) & 1) == 0 && (v225 = [a2 accountTypeHost], v226 = objc_msgSend(v225, "isLocal"), v225, (v226) || (v227 = objc_msgSend(a2, "accountTypeHost"), v228 = objc_msgSend(v227, "isCalDav"), v227, v228))
        {
          sub_1002FC650();
        }

        return;
      }

      v145 = v76;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&aBlock = v150;
        *v148 = 138543618;
        v151 = [v145 objectID];
        *(v148 + 4) = v151;
        *v149 = v151;
        *(v148 + 12) = 2082;
        *(v148 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v146, v147, "REMAccountStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.listIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v148, 0x16u);
        sub_1000050A4(v149, &unk_100938E70, &unk_100797230);

        sub_10000607C(v150);
      }

      v152 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v51 = String._bridgeToObjectiveC()();
      v52 = [v152 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v51];
LABEL_88:
      v154 = v52;

      v247 = v154;
      swift_willThrow();
      return;
    }

    v235 = v78;
    v252 = v23;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    *&aBlock = v233;
    *v81 = 138412546;
    v236 = v76;
    v83 = [v76 remObjectID];
    *(v81 + 4) = v83;
    v232 = v82;
    *v82 = v83;
    v234 = v81;
    *(v81 + 12) = 2080;
    *&v255 = v77;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v69 = NSMutableOrderedSet_ptr;
    v67 = sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr);
    v84 = Sequence.elements<A>(ofType:)();
    v30 = v84;
    if (v84 >> 62)
    {
      v251 = (v84 & 0xFFFFFFFFFFFFFF8);
      a3 = _CocoaArrayWrapper.endIndex.getter();
      if (a3)
      {
LABEL_37:
        v8 = 0;
        v250 = (v30 & 0xC000000000000001);
        v28 = (v245 + 7);
        v85 = (v245 + 6);
        v231 = (v245 + 2);
        v86 = _swiftEmptyArrayStorage;
        v230 = (v245 + 1);
        do
        {
          v237 = v86;
          v87 = v8;
          while (1)
          {
            if (v250)
            {
              v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v87 >= *(v251 + 2))
              {
                goto LABEL_58;
              }

              v88 = *(v30 + 8 * v87 + 32);
            }

            v67 = v88;
            v8 = (v87 + 1);
            if (__OFADD__(v87, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v89 = [v88 identifier];
            if (v89)
            {
              v90 = v89;
              v91 = v252;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v92 = 0;
            }

            else
            {
              v92 = 1;
              v91 = v252;
            }

            v7 = v254;
            (*v28)(v91, v92, 1, v254);
            v93 = v91;
            v69 = v253;
            sub_100100FB4(v93, v253);
            if (!(*v85)(v69, 1, v7))
            {
              break;
            }

            sub_1000050A4(v69, &unk_100939D90, "8\n\r");
            ++v87;
            if (v8 == a3)
            {
              goto LABEL_61;
            }
          }

          v94 = v243;
          (*v231)(v243, v69, v7);
          sub_1000050A4(v69, &unk_100939D90, "8\n\r");
          v69 = UUID.uuidString.getter();
          v229 = v95;

          (*v230)(v94, v7);
          v86 = v237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_100365788(0, *(v86 + 2) + 1, 1, v86);
          }

          v97 = *(v86 + 2);
          v96 = *(v86 + 3);
          v67 = (v97 + 1);
          if (v97 >= v96 >> 1)
          {
            v86 = sub_100365788((v96 > 1), v97 + 1, 1, v86);
          }

          *(v86 + 2) = v67;
          v98 = &v86[16 * v97];
          v99 = v229;
          *(v98 + 4) = v69;
          *(v98 + 5) = v99;
          v7 = v254;
        }

        while (v8 != a3);
      }
    }

    else
    {
      v251 = (v84 & 0xFFFFFFFFFFFFFF8);
      a3 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
        goto LABEL_37;
      }
    }

LABEL_61:

    v101 = Array.description.getter();
    v103 = v102;

    v104 = sub_10000668C(v101, v103, &aBlock);

    v105 = v234;
    *(v234 + 14) = v104;
    v106 = v235;
    _os_log_impl(&_mh_execute_header, v235, v238, "sorting ordered set account.lists - before - {account: %@, lists: %s}", v105, 0x16u);
    sub_1000050A4(v232, &unk_100938E70, &unk_100797230);

    sub_10000607C(v233);

    a2 = v246;
    v100 = v245;
    v73 = &selRef_isEmpty;
    v76 = v236;
    goto LABEL_62;
  }

  v252 = v23;
  if (qword_100935E80 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_100941670);
  v30 = a3;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v8;
    v35 = swift_slowAlloc();
    *v33 = 138412290;
    v36 = [v30 remObjectID];
    *(v33 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "Some lists have changes in .daDisplayOrder so DA display orders is taking precedence as the true sort hint - {account: %@}", v33, 0xCu);
    sub_1000050A4(v35, &unk_100938E70, &unk_100797230);
    v8 = v34;

    v7 = v254;
  }

  v37 = [v30 listIDsMergeableOrdering];
  if (!v37)
  {
    v42 = v30;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&aBlock = v47;
      *v45 = 138543618;
      v48 = [v42 objectID];
      *(v45 + 4) = v48;
      *v46 = v48;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
      _os_log_impl(&_mh_execute_header, v43, v44, "REMAccountStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.listIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v45, 0x16u);
      sub_1000050A4(v46, &unk_100938E70, &unk_100797230);

      sub_10000607C(v47);
    }

    v49 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v50 = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    v52 = [v49 unexpectedNilPropertyWithClass:v50 property:v51];
    goto LABEL_88;
  }

  v38 = v37;
  v39 = v247;
  v40 = sub_1002FBEA0(v37, v251);
  v247 = v39;
  if (v39)
  {

    return;
  }

  v250 = v41;
  if ((v40 & 1) == 0)
  {
    v240 = v38;
    a2 = v246;
LABEL_31:
    [v30 setListsDADisplayOrderChanged:0];

    v23 = v252;
    goto LABEL_32;
  }

  v53 = [v30 resolutionTokenMap];
  if (v53)
  {
    v240 = v38;
    v239 = v53;
    sub_100693A78(3);
    v54 = String._bridgeToObjectiveC()();

    [v239 updateForKey:v54];

    [v30 setListIDsMergeableOrdering:v250];
    if ([v251 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v255 = 0u;
      v256 = 0u;
    }

    aBlock = v255;
    v259 = v256;
    if (*(&v256 + 1))
    {
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v67 = v257;
        v68 = [v257 account];
        if (v68)
        {
          v69 = v68;
          v70 = v247;
          sub_1002F9D20(v30, v68, &off_1008E2B60, v244);
          v247 = v70;
          if (v70)
          {

            return;
          }

LABEL_59:

          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    }

    v69 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v69, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v69, v71, "Cannot get any REMCDAccount from the ordered set of lists in the account.", v72, 2u);
    }

LABEL_30:
    a2 = v246;

    goto LABEL_31;
  }

  v55 = v30;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v38;
    v61 = swift_slowAlloc();
    *&aBlock = v61;
    *v58 = 138543618;
    v62 = [v55 objectID];
    *(v58 + 4) = v62;
    *v59 = v62;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
    _os_log_impl(&_mh_execute_header, v56, v57, "REMAccountStorageCDIngestor: mutateOrdering() cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v58, 0x16u);
    sub_1000050A4(v59, &unk_100938E70, &unk_100797230);

    sub_10000607C(v61);
    v38 = v60;
  }

  v63 = objc_opt_self();
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v64 = swift_getObjCClassFromMetadata();
  v65 = String._bridgeToObjectiveC()();
  v66 = [v63 unexpectedNilPropertyWithClass:v64 property:v65];

  v247 = v66;
  swift_willThrow();
}

uint64_t sub_1002FF0BC(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_11:
    v6 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v12 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
      v13 = *v12;
      v14 = v12[1];

      v15 = sub_100005F4C(v13, v14);
      if (v16)
      {
        sub_100005EF0(*(a2 + 56) + 32 * v15, v42);
        sub_100005EE0(v42, &v43);
        v39 = v13;
        v17 = String._bridgeToObjectiveC()();
        sub_10000F61C(&v43, v44);
        v18 = [a1 postAccountPropertyChangeNotificationWithKey:v17 changedValue:_bridgeAnythingToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        if (v18)
        {
        }

        else
        {
          if (qword_100935E80 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100006654(v19, qword_100941670);
          sub_100005EF0(&v43, v42);

          v20 = a1;
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v37 = v22;
            log = v21;
            v23 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v23 = 136315650;
            v24 = [v20 remObjectID];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 description];

              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29 = v36;
            }

            else
            {
              v28 = 0xE300000000000000;
              v29 = 7104878;
            }

            v30 = sub_10000668C(v29, v28, &v45);

            *(v23 + 4) = v30;
            *(v23 + 12) = 2080;
            v31 = sub_10000668C(v39, v14, &v45);

            *(v23 + 14) = v31;
            *(v23 + 22) = 2080;
            sub_100005EF0(v42, v41);
            v32 = String.init<A>(describing:)();
            v34 = v33;
            sub_10000607C(v42);
            v35 = sub_10000668C(v32, v34, &v45);

            *(v23 + 24) = v35;
            _os_log_impl(&_mh_execute_header, log, v37, "REMCDAccountStorage+CDIngestor: Could not post RDStoreControllerREMAccountPropertiesDidUpdate due to unexpected values {remObjectID: %s, changedKey: %s, changedValue: %s}", v23, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10000607C(v42);
          }
        }

        result = sub_10000607C(&v43);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v10 = *(v3 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002FF4DC()
{
  result = qword_10093F7A0;
  if (!qword_10093F7A0)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F7A0);
  }

  return result;
}

id sub_1002FF534(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (a2 >> 60 == 15)
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100941670);
    v11 = a6;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      *(v14 + 14) = sub_10000668C(a4, a5, &v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected nil mergeable ordering data {objectID: %@, key: %s}", v14, 0x16u);
      sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

      sub_10000607C(v16);
    }

    v18 = [objc_allocWithZone(NSOrderedSet) init];
    v19 = [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:a3 orderedSet:v18];
  }

  else
  {
    v22 = objc_allocWithZone(REMCRMergeableOrderedSet);
    sub_1001CB4B8(a1, a2);
    v23 = a3;
    v19 = sub_1002F937C(v23);

    sub_100031A14(a1, a2);
  }

  return v19;
}

uint64_t getEnumTagSinglePayload for REMAccountStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMAccountStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002FFB90()
{
  result = qword_1009418C8;
  if (!qword_1009418C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418C8);
  }

  return result;
}

unint64_t sub_1002FFC2C()
{
  result = qword_1009418E0;
  if (!qword_1009418E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418E0);
  }

  return result;
}

unint64_t sub_1002FFCC8()
{
  result = qword_1009418F8;
  if (!qword_1009418F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418F8);
  }

  return result;
}

unint64_t sub_1002FFD64()
{
  result = qword_100941910;
  if (!qword_100941910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941910);
  }

  return result;
}

uint64_t sub_1002FFDD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941920);
  v1 = sub_100006654(v0, qword_100941920);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FFED0(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v72 = &v60 - v10;
  v71 = type metadata accessor for Date();
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v71);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v60 - v16;
  __chkstk_darwin(v17);
  v73 = &v60 - v18;
  v74 = _swiftEmptyArrayStorage;
  v61 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_34:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = a1;
  v63 = v8;
  v64 = v14;
  v62 = v5;
  if (v19)
  {
    v20 = 0;
    v5 = (a1 & 0xC000000000000001);
    v8 = (a1 & 0xFFFFFFFFFFFFFF8);
    v21 = v11;
    do
    {
      if (v5)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v8 + 2))
        {
          goto LABEL_33;
        }

        v22 = *(a1 + 8 * v20 + 32);
      }

      a1 = v22;
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v23 = [v22 request];
      v14 = [v23 content];

      LOBYTE(v23) = UNNotificationContent.firesBeforeFirstUnlock.getter();
      if (v23)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = *(v74 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v20;
      a1 = v70;
    }

    while (v11 != v19);
    v11 = v21;
    v24 = v74;
    v8 = v63;
    v14 = v64;
    v5 = v62;
    if ((v74 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v24 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v24 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v46 = v24;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v46;
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_36:

    v30 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

LABEL_19:
  v26 = v24;
  v74 = _swiftEmptyArrayStorage;
  sub_100253574(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v27 = 0;
  v28 = v26;
  v29 = v26 & 0xC000000000000001;
  v30 = v74;
  v31 = (v11 + 32);
  v67 = (v11 + 56);
  v68 = v29;
  v65 = (v11 + 48);
  v69 = v28;
  v32 = v72;
  do
  {
    if (v68)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v28 + 8 * v27 + 32);
    }

    v34 = v33;
    v35 = [v33 request];
    v36 = [v35 content];

    v37 = [v36 date];
    if (v37)
    {
      v38 = v66;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = *v31;
      v40 = v72;
      v41 = v38;
      v42 = v71;
      (*v31)(v72, v41, v71);
      (*v67)(v40, 0, 1, v42);
      v39(v73, v40, v42);
    }

    else
    {
      v42 = v71;
      (*v67)(v32, 1, 1, v71);
      v43 = [v34 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*v65)(v32, 1, v42) != 1)
      {
        sub_1000050A4(v72, &unk_100938850, qword_100795AE0);
      }
    }

    v74 = v30;
    v45 = v30[2];
    v44 = v30[3];
    if (v45 >= v44 >> 1)
    {
      sub_100253574(v44 > 1, v45 + 1, 1);
      v30 = v74;
    }

    ++v27;
    v30[2] = v45 + 1;
    (*(v11 + 32))(v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v45, v73, v42);
    v28 = v69;
  }

  while (v25 != v27);

  v8 = v63;
  v14 = v64;
  v5 = v62;
LABEL_37:
  v74 = v30;

  sub_100302DB8(&v74);

  v47 = v74;
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100006654(v48, qword_100941920);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134218240;
    if (v61)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 4) = v52;

    *(v51 + 12) = 2048;
    *(v51 + 14) = v47[2];

    _os_log_impl(&_mh_execute_header, v49, v50, "RDBeforeFirstUnlockNotificationEngine: Found %ld delivered notifications, %ld considered for lastPresentAlarmDate.", v51, 0x16u);

    v14 = v64;
  }

  else
  {
  }

  Date.init()();
  v53 = [objc_opt_self() daemonUserDefaults];
  __chkstk_darwin(v53);
  *(&v60 - 2) = v14;
  sub_10059B448(sub_10030513C, v47, v5);
  v54 = *(v11 + 48);
  v55 = v71;
  if (v54(v5, 1, v71) == 1)
  {
    v56 = v47[2];
    if (v56)
    {
      v55 = v71;
      (*(v11 + 16))(v8, v47 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v56 - 1), v71);
      v57 = 0;
    }

    else
    {
      v57 = 1;
      v55 = v71;
    }

    (*(v11 + 56))(v8, v57, 1, v55);
    if (v54(v5, 1, v55) != 1)
    {
      sub_1000050A4(v5, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {

    (*(v11 + 32))(v8, v5, v55);
    (*(v11 + 56))(v8, 0, 1, v55);
  }

  if (v54(v8, 1, v55) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v55);
  }

  [v53 setLastPresentAlarmDate:isa];

  return (*(v11 + 8))(v14, v55);
}

BOOL sub_1003007F8()
{
  type metadata accessor for Date();
  sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date);
  return (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0;
}

void sub_10030088C()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v0 - 8);
  v84 = v0;
  v1 = *(v83 + 64);
  v2 = __chkstk_darwin(v0);
  v82 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v81 = &v68 - v4;
  v5 = type metadata accessor for DispatchWallTime();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  v7 = __chkstk_darwin(v5);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v68 - v9;
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  ObjectType = *(v10 - 8);
  v11 = *(ObjectType + 64);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v14 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v85 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v68 - v24;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100301E90(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1000050A4(v25, &unk_100938850, qword_100795AE0);
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100941920);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "RDBeforeFirstUnlockNotificationEngine: Not going to presenting before first unlock notification as we don't have a due date.", v34, 2u);
    }
  }

  else
  {
    v71 = v27;
    v35 = *(v27 + 32);
    v72 = v26;
    v35(v30, v25, v26);
    Date.timeIntervalSinceNow.getter();
    v75 = v18;
    v74 = v19;
    v73 = v17;
    v70 = v30;
    if (v36 <= 0.0)
    {
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006654(v57, qword_100941920);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v71;
      if (v60)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "RDBeforeFirstUnlockNotificationEngine: Presenting before first unlock notification now because we have already passed the due date.", v62, 2u);
      }

      v63 = *(v87 + 16);
      v64 = swift_allocObject();
      swift_weakInit();
      v93 = sub_1003050F8;
      v94 = v64;
      aBlock = _NSConcreteStackBlock;
      v90 = 1107296256;
      v91 = sub_100019200;
      v92 = &unk_1008ED9E0;
      v65 = _Block_copy(&aBlock);

      v66 = v85;
      static DispatchQoS.unspecified.getter();
      v88 = _swiftEmptyArrayStorage;
      sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v67 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v65);
      (*(v86 + 8))(v67, v14);
      (*(v74 + 8))(v66, v75);
      (*(v61 + 8))(v70, v72);
    }

    else
    {
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v69 = v14;
      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_100941920);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "RDBeforeFirstUnlockNotificationEngine: Scheduling to present before first unlock notification at a future time.", v40, 2u);
      }

      sub_1000060C8(0, &qword_100941A18, OS_dispatch_source_ptr);
      v41 = *(v87 + 16);
      aBlock = _swiftEmptyArrayStorage;
      sub_1003050A8(&qword_100941A20, &type metadata accessor for OS_dispatch_source.TimerFlags);
      sub_1000F5104(&qword_100941A28, &unk_1007A1C10);
      sub_10000CB90(&qword_100941A30, &qword_100941A28, &unk_1007A1C10);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v68 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
      (*(ObjectType + 8))(v13, v10);
      ObjectType = swift_getObjectType();
      v42 = v77;
      static DispatchWallTime.now()();
      v43 = v78;
      + infix(_:_:)();
      v44 = v80;
      v79 = *(v79 + 8);
      (v79)(v42, v80);
      v46 = v83;
      v45 = v84;
      v47 = *(v83 + 104);
      v48 = v81;
      v47(v81, enum case for DispatchTimeInterval.never(_:), v84);
      v49 = v82;
      *v82 = 0;
      v47(v49, enum case for DispatchTimeInterval.nanoseconds(_:), v45);
      v50 = v68;
      OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
      v51 = *(v46 + 8);
      v51(v49, v45);
      v51(v48, v45);
      (v79)(v43, v44);
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v50;
      v93 = sub_1003050F0;
      v94 = v53;
      aBlock = _NSConcreteStackBlock;
      v90 = 1107296256;
      v91 = sub_100019200;
      v92 = &unk_1008ED9B8;
      v54 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v55 = v85;
      static DispatchQoS.unspecified.getter();
      v56 = v73;
      sub_1003015F4();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v54);
      (*(v86 + 8))(v56, v69);
      (*(v74 + 8))(v55, v75);

      OS_dispatch_source.activate()();
      swift_unknownObjectRelease();
      (*(v71 + 8))(v70, v72);
    }
  }
}

uint64_t sub_10030146C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003024F0();
  }

  return result;
}

void sub_1003014C4()
{
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100941920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDBeforeFirstUnlockNotificationEngine: Presenting before first unlock notification as we're now due.", v3, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003024F0();
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t sub_1003015F4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1003016FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v26 = a1;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100941920);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v26, v19, 2u);
    v15 = v25;
  }

  v20 = *(v7 + 16);
  v21 = swift_allocObject();
  v26 = *(v7 + 24);
  *(v21 + 16) = v26;
  aBlock[4] = a3;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a4;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v11, v8);
  (*(v12 + 8))(v15, v27);
}

void sub_100301AA8(void *a1)
{
  v16 = a1;
  v1 = type metadata accessor for RDUserNotificationCategory();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
  v10 = v2[13];
  v10(&v15 - v7, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v1);
  RDUserNotificationCategory.rawValue.getter();
  v11 = v2[1];
  v11(v8, v1);
  v10(v6, v9, v1);
  RDUserNotificationCategory.rawValue.getter();
  v11(v6, v1);
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100301CDC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008ED940;
  v14 = _Block_copy(aBlock);

  [v16 releaseNotificationWithIdentifier:v12 reference:v13 completion:v14];
  _Block_release(v14);
}

void sub_100301CDC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100941920);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10000668C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to dismiss before first unlock notification {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100301E90@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v58 = &v55 - v7;
  __chkstk_darwin(v6);
  v61 = &v55 - v8;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v55 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v55 - v20;
  v22 = __chkstk_darwin(v19);
  v64 = &v55 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v55 - v25;
  __chkstk_darwin(v24);
  v63 = &v55 - v27;
  v28 = objc_opt_self();
  v29 = [v28 daemonUserDefaults];
  v30 = [v29 lastPresentAlarmDate];

  if (v30)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v2;
    v32 = *(v2 + 56);
    v32(v26, 0, 1, v1);
  }

  else
  {
    v31 = v2;
    v32 = *(v2 + 56);
    v32(v26, 1, 1, v1);
  }

  v33 = v26;
  v34 = v63;
  sub_10012F7FC(v33, v63);
  v35 = [v28 daemonUserDefaults];
  v36 = [v35 nextScheduledAlarmDate];

  v37 = v61;
  if (v36)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v59 = v31 + 56;
  v32(v21, v38, 1, v1);
  v39 = v64;
  sub_10012F7FC(v21, v64);
  sub_10012F78C(v34, v18);
  v40 = *(v31 + 48);
  if (v40(v18, 1, v1) == 1)
  {
    v15 = v18;
    goto LABEL_11;
  }

  v56 = v32;
  v41 = *(v31 + 32);
  v41(v37, v18, v1);
  sub_10012F78C(v39, v15);
  if (v40(v15, 1, v1) == 1)
  {
    (*(v31 + 8))(v37, v1);
    v34 = v63;
    v39 = v64;
    v32 = v56;
LABEL_11:
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    v42 = v34;
    v43 = v60;
    sub_10012F7FC(v42, v60);
    if (v40(v43, 1, v1) == 1)
    {
      sub_10012F7FC(v39, v62);
      result = (v40)(v43, 1, v1);
      if (result != 1)
      {
        return sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
      v45 = v62;
      (*(v31 + 32))(v62, v43, v1);
      return (v32)(v45, 0, 1, v1);
    }

    return result;
  }

  v46 = v58;
  v41(v58, v15, v1);
  v47 = v57;
  Date.init()();
  sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date);
  v48 = v41;
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v49 = dispatch thunk of static Comparable.< infix(_:_:)();
  }

  else
  {
    v49 = dispatch thunk of static Comparable.>= infix(_:_:)();
  }

  v50 = v49;
  v51 = v37;
  v52 = *(v31 + 8);
  v52(v47, v1);
  sub_1000050A4(v64, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
  if (v50)
  {
    v53 = v37;
  }

  else
  {
    v53 = v46;
  }

  if (v50)
  {
    v51 = v46;
  }

  v52(v53, v1);
  v54 = v62;
  v48(v62, v51, v1);
  return (v56)(v54, 0, 1, v1);
}

void sub_1003024F0()
{
  v36 = type metadata accessor for RDUserNotificationCategory();
  v1 = *(v36 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v36);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v35 - v5;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for RDUserNotificationType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v0;
  v20 = v0[2];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    (*(v11 + 104))(v14, enum case for RDUserNotificationType.beforeFirstUnlock(_:), v10);
    v22 = sub_1002D833C(0, 0, 0);
    (*(v11 + 8))(v14, v10);
    sub_100301E90(v9);
    v23 = type metadata accessor for Date();
    v24 = *(v23 - 8);
    isa = 0;
    if ((*(v24 + 48))(v9, 1, v23) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v24 + 8))(v9, v23);
    }

    [v22 setDate:isa];

    v26 = v36;
    v37 = v37[3];
    v27 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
    v28 = v1[13];
    v29 = v35;
    v28(v35, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v36);
    RDUserNotificationCategory.rawValue.getter();
    v30 = v1[1];
    v30(v29, v26);
    v31 = v38;
    v28(v38, v27, v26);
    RDUserNotificationCategory.rawValue.getter();
    v30(v31, v26);
    v32 = String._bridgeToObjectiveC()();

    v33 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1003029E0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008ED8C8;
    v34 = _Block_copy(aBlock);

    [v37 retainNotificationWithIdentifier:v32 reference:v33 content:v22 skipBanner:0 completion:v34];
    _Block_release(v34);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003029E0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100941920);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10000668C(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "RDBeforeFirstUnlockNotificationEngine: Unable to post Before First Unlock notification {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100941920);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "RDBeforeFirstUnlockNotificationEngine: Posted Before First Unlock notification", v12, 2u);
    }

    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656449;
    *(inited + 40) = 0xEA00000000007265;
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    *(inited + 48) = NSString.init(stringLiteral:)();
    sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
    static Analytics.postEvent(_:payload:duration:)();
  }
}

uint64_t sub_100302D3C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100302DB8(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004364C8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100302E60(v5);
  *a1 = v3;
}

void sub_100302E60(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100303210(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100302F8C(0, v2, 1, a1);
  }
}

void sub_100302F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v31 - v12;
  v15 = __chkstk_darwin(v13);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v20 = (v17 + v18 * (a3 - 1));
    v38 = -v18;
    v39 = (v14 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v22, v8, v15);
      v25 = v45;
      v24(v45, v20, v8);
      v26 = static Date.> infix(_:_:)();
      v27 = *v19;
      (*v19)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = &v36[v32];
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100303210(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v126 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v134 = &v119 - v14;
  __chkstk_darwin(v15);
  v140 = &v119 - v16;
  v18 = __chkstk_darwin(v17);
  v139 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = a4;
    }

    else
    {
LABEL_130:
      v113 = sub_1004361F4(a4);
    }

    v114 = v6;
    v142 = v113;
    a4 = *(v113 + 2);
    if (a4 >= 2)
    {
      v115 = v10;
      v10 = a3;
      a3 = v115;
      while (*v10)
      {
        v116 = *&v113[16 * a4];
        v117 = v113;
        v6 = *&v113[16 * a4 + 24];
        sub_100303BFC(*v10 + a3[9] * v116, *v10 + a3[9] * *&v113[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v114)
        {
          goto LABEL_107;
        }

        if (v6 < v116)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1004361F4(v117);
        }

        if (a4 - 2 >= *(v117 + 2))
        {
          goto LABEL_124;
        }

        v118 = &v117[16 * a4];
        *v118 = v116;
        *(v118 + 1) = v6;
        v142 = v117;
        sub_100436168(a4 - 1);
        v113 = v142;
        a4 = *(v142 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = _swiftEmptyArrayStorage;
  v124 = a3;
  v122 = a4;
  v141 = v9;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v121 = v6;
      v129 = *a3;
      v24 = v129;
      v25 = v10[9];
      v5 = v129 + v25 * (v21 + 1);
      v26 = v10[2];
      v27 = v139;
      v26(v139, v5, v9, v18);
      v28 = v24 + v25 * v23;
      v29 = v140;
      v131 = v26;
      (v26)(v140, v28, v9);
      LODWORD(v133) = static Date.> infix(_:_:)();
      v30 = v9;
      v31 = v10[1];
      v31(v29, v30);
      v130 = v31;
      v31(v27, v30);
      v120 = v23;
      v32 = v23 + 2;
      v135 = v25;
      v33 = v129 + v25 * (v23 + 2);
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v10;
        v36 = v139;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v5, v37);
        v40 = static Date.> infix(_:_:)() & 1;
        v41 = v130;
        (v130)(v39, v37);
        v42 = v36;
        v10 = v35;
        v41(v42, v37);
        ++v32;
        v33 += v135;
        v5 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      a3 = v124;
      v22 = v127;
      v6 = v121;
      a4 = v122;
      v9 = v141;
      v23 = v120;
      if (v133)
      {
        if (v34 < v120)
        {
          goto LABEL_127;
        }

        if (v120 < v34)
        {
          v119 = v10;
          v43 = v135 * (v34 - 1);
          v44 = v34 * v135;
          v45 = v34;
          v46 = v120;
          v47 = v120 * v135;
          do
          {
            if (v46 != --v45)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = v34;
              v5 = &v49[v47];
              v133 = *v136;
              (v133)(v126, &v49[v47], v141, v22);
              if (v47 < v43 || v5 >= &v49[v44])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v43], v126, v48);
              a3 = v124;
              v22 = v127;
              v34 = v50;
            }

            ++v46;
            v43 -= v135;
            v44 -= v135;
            v47 += v135;
          }

          while (v46 < v45);
          v6 = v121;
          a4 = v122;
          v10 = v119;
          v9 = v141;
          v23 = v120;
        }
      }
    }

    v51 = a3[1];
    if (v34 < v51)
    {
      if (__OFSUB__(v34, v23))
      {
        goto LABEL_126;
      }

      if (v34 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v23 + a4;
        }

        if (v52 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v52)
        {
          break;
        }
      }
    }

    v53 = v34;
    if (v34 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v127;
    }

    else
    {
      v22 = sub_1003658B8(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v22 + 2);
    v54 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      v22 = sub_1003658B8((v54 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v53;
    v56 = *v123;
    if (!*v123)
    {
      goto LABEL_135;
    }

    v128 = v53;
    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v22 + 4);
          v59 = *(v22 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_114;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_117;
          }

          v80 = &v22[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_121;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v22[16 * v5];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_116;
        }

        v87 = &v22[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = v22;
        v96 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v57 + 40];
        sub_100303BFC(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v96)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1004361F4(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_111;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v142 = v95;
        sub_100436168(v57);
        v22 = v142;
        v5 = *(v142 + 2);
        v9 = v141;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v22[16 * v5 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = &v22[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v73 >= v65)
      {
        v91 = &v22[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v122;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v121 = v6;
  v98 = *a3;
  v99 = v10[9];
  v119 = v10;
  v135 = v10[2];
  v100 = v98 + v99 * (v34 - 1);
  v101 = -v99;
  v120 = v23;
  v102 = (v23 - v34);
  v133 = v98;
  v125 = v99;
  v5 = v98 + v34 * v99;
  v128 = v52;
LABEL_85:
  v131 = v100;
  v132 = v34;
  v129 = v5;
  v130 = v102;
  v103 = v100;
  while (1)
  {
    v104 = v139;
    v105 = v135;
    (v135)(v139, v5, v9, v22);
    v106 = v140;
    v105(v140, v103, v141);
    v107 = static Date.> infix(_:_:)();
    a4 = v137;
    v108 = *v137;
    v109 = v106;
    v9 = v141;
    (*v137)(v109, v141);
    v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v100 = &v131[v125];
      v102 = v130 - 1;
      v5 = v129 + v125;
      v53 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v121;
      a3 = v124;
      v10 = v119;
      v23 = v120;
      if (v128 < v120)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    a4 = v136;
    v110 = *v136;
    v111 = v134;
    (*v136)(v134, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    v5 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
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
}

void sub_100303BFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = static Date.> infix(_:_:)();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = static Date.> infix(_:_:)();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_100558A28(&v60, &v59, &v58);
}

void sub_10030418C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100941920);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDBeforeFirstUnlockNotificationEngine: Updating nextScheduledAlarmDate as we got a new future alarm date.", v9, 2u);
  }

  v10 = [objc_opt_self() daemonUserDefaults];
  sub_10012F78C(a1, v5);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v5, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v5, v11);
  }

  [v10 setNextScheduledAlarmDate:isa];
}

uint64_t sub_100304390(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v114 = a5;
  v115 = a4;
  v112 = a3;
  v113 = a1;
  v6 = type metadata accessor for Date();
  v108 = *(v6 - 8);
  v109 = v6;
  v7 = *(v108 + 64);
  __chkstk_darwin(v6);
  v105 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v104 = &v102 - v10;
  __chkstk_darwin(v11);
  v107 = &v102 - v12;
  v13 = type metadata accessor for RDUserNotificationAction();
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = v110[8];
  __chkstk_darwin(v13);
  v106 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v102 - v17;
  __chkstk_darwin(v19);
  v21 = &v102 - v20;
  v22 = type metadata accessor for RDUserNotificationType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v102 - v28;
  v31 = __chkstk_darwin(v30);
  v33 = &v102 - v32;
  v34 = *(v23 + 16);
  v34(&v102 - v32, a2, v22, v31);
  v35 = (*(v23 + 88))(v33, v22);
  if (v35 == enum case for RDUserNotificationType.reminderAlarm(_:) || v35 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v35 == enum case for RDUserNotificationType.caldavSharedList(_:) || v35 == enum case for RDUserNotificationType.assignmentNotification(_:) || v35 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) || v35 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    (*(v23 + 8))(v33, v22);
  }

  else if (v35 != enum case for RDUserNotificationType.todayNotification(_:) && v35 != enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    if (v35 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      v52 = v111;
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      v54 = sub_100006654(v53, qword_100941920);
      v55 = v110;
      v103 = v110[2];
      v103(v21, v112, v52);
      v56 = v113;
      v113 = v54;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v59 = 136315394;
        v60 = [v56 actionIdentifier];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = sub_10000668C(v61, v63, &v116);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        v65 = RDUserNotificationAction.rawValue.getter();
        v67 = v66;
        v68 = v110[1];
        v68(v21, v111);
        v69 = sub_10000668C(v65, v67, &v116);
        v52 = v111;

        *(v59 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v57, v58, "Processing notification response {actionIdentifier: %s, action: %s}", v59, 0x16u);
        swift_arrayDestroy();

        v55 = v110;
      }

      else
      {

        v68 = v55[1];
        v68(v21, v52);
      }

      v70 = v103;
      v103(v18, v112, v52);
      v71 = (v55[11])(v18, v52);
      if (v71 == enum case for RDUserNotificationAction.defaultDismiss(_:))
      {
        v72 = v107;
        Date.init()();
        v73 = objc_opt_self();
        v74 = [v73 daemonUserDefaults];
        v75 = [v74 lastPresentAlarmDate];

        v77 = v108;
        v76 = v109;
        if (v75)
        {
          v78 = v104;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {
            v79 = [v73 daemonUserDefaults];
            [v79 setLastPresentAlarmDate:0];
          }

          (*(v77 + 8))(v78, v76);
        }

        v80 = [v73 daemonUserDefaults];
        v81 = [v80 nextScheduledAlarmDate];

        if (v81)
        {
          v82 = v105;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {
            v83 = [v73 daemonUserDefaults];
            [v83 setNextScheduledAlarmDate:0];
          }

          (*(v77 + 8))(v82, v76);
        }

        sub_10030088C();
        (*(v77 + 8))(v72, v76);
        goto LABEL_55;
      }

      if (v71 == enum case for RDUserNotificationAction.debugDismiss(_:) || v71 == enum case for RDUserNotificationAction.markAsCompleted(_:) || v71 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v71 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v71 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v71 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) || v71 == enum case for RDUserNotificationAction.addToReminders(_:) || v71 == enum case for RDUserNotificationAction.viewAssignmentInList(_:) || v71 == enum case for RDUserNotificationAction.declineAssignment(_:) || v71 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        v84 = v106;
        v70(v106, v112, v52);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = v84;
          v88 = swift_slowAlloc();
          v89 = v52;
          v90 = swift_slowAlloc();
          v116 = v90;
          *v88 = 136315138;
          v91 = RDUserNotificationAction.rawValue.getter();
          v93 = v92;
          v68(v87, v89);
          v94 = sub_10000668C(v91, v93, &v116);

          *(v88 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v85, v86, "Unexpected action for notification type .beforeFirstUnlock {action: %s}", v88, 0xCu);
          sub_10000607C(v90);
        }

        else
        {

          v68(v84, v52);
        }

LABEL_55:
        v43 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v43, v95))
        {
LABEL_58:

          goto LABEL_59;
        }

        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v43, v95, "Handled dismissal of before first unlock notification successfully.", v96, 2u);
LABEL_57:

        goto LABEL_58;
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_100941920);
  (v34)(v29, a2, v22);
  v42 = v113;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v116 = v113;
    *v45 = 136315394;
    (v34)(v26, v29, v22);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    (*(v23 + 8))(v29, v22);
    v49 = sub_10000668C(v46, v48, &v116);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v42;
    v50 = v112;
    *v112 = v42;
    v51 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "RDBeforeFirstUnlockNotificationEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v45, 0x16u);
    sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

    sub_10000607C(v113);

    goto LABEL_57;
  }

  (*(v23 + 8))(v29, v22);
LABEL_59:
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  sub_100006654(v97, qword_100941920);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "Completing action handler by calling completionHandler now.", v100, 2u);
  }

  return v115();
}

uint64_t sub_1003050A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003050F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1003014C4();
}

uint64_t sub_100305194()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941B00);
  v1 = sub_100006654(v0, qword_100941B00);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10030525C(void *a1, uint64_t a2)
{
  v6 = [v2 purpose];
  if ((v6 - 1) >= 2)
  {
    if (v6)
    {
      if (qword_100935E98 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_100941B00);
      sub_1001F67C8(_swiftEmptyArrayStorage);
      sub_1001F67C8(_swiftEmptyArrayStorage);
      sub_10054573C("unknown purpose", 15, 2);
      __break(1u);
    }

    else
    {
      sub_100305418(a1, a2);
      if (!v3)
      {
        v7 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v7 initWithStorages:isa];
      }
    }
  }

  else
  {
    __chkstk_darwin(v6);
    v10[2] = v2;
    sub_100402044(a2, sub_100309410, v10);
  }
}

unint64_t sub_100305418(void *a1, uint64_t a2)
{
  v4 = v3;
  v6 = a1;
  v7 = [a1 accountStoragesForAllGenericAccounts];
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100941B00);

  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v50 = v10;

  v13 = v8 >> 62;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51 = v15;
    *v14 = 134218242;
    v48 = a2;
    v49 = v6;
    if (v13)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    v17 = [v50 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000668C(v18, v20, &v51);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching all generic account storages {cached#: %ld, name: %s}", v14, 0x16u);
    sub_10000607C(v15);

    v4 = v3;
    a2 = v48;
    v6 = v49;
  }

  else
  {
  }

  if (v13)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v8;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v8;
  }

  v22 = sub_100401AE8(a2, sub_100305CD0, 0);
  if (!v4)
  {
    v8 = v22;
    v23 = v22 >> 62;
    if (v22 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v50;
    if (v24)
    {
      v26 = v6;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v51 = v30;
        *v29 = 134218242;
        if (v23)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v31;

        *(v29 + 12) = 2080;
        v41 = [v25 name];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_10000668C(v42, v44, &v51);

        *(v29 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v27, v28, "Putting all generic account storages fetched from DB to cache {fetched#: %ld, name: %s}", v29, 0x16u);
        sub_10000607C(v30);
      }

      else
      {
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v26 setAccountStoragesForAllGenericAccountsWithStorages:isa];
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v51 = v35;
        *v34 = 136315138;
        v36 = [v25 name];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = sub_10000668C(v37, v39, &v51);

        *(v34 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't fetch all generic account storages from database {name: %s}", v34, 0xCu);
        sub_10000607C(v35);
      }
    }
  }

  return v8;
}

void sub_10030596C()
{
  v2 = [v0 purpose];
  if (v2 >= 3)
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100941B00);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown purpose", 15, 2);
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = sub_10000F8A4(v2 + 3, 0, 7u);
    sub_1003093CC(v3 + 3, 0, 7u);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v5 = [objc_allocWithZone(NSFetchRequest) init];
    v6 = [swift_getObjCClassFromMetadata() entity];
    [v5 setEntity:v6];

    [v5 setAffectedStores:0];
    [v5 setPredicate:v4];

    NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
    }

    else
    {
      type metadata accessor for REMAccountStorageCDIngestor();
      swift_initStackObject();
      if (qword_100936098 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      v8 = sub_100006654(v7, qword_100946390);
      __chkstk_darwin(v8);
      sub_1000F5104(&qword_10094F630, qword_1007A3430);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_100308CDC();
      Sequence.map<A>(skippingError:_:)();

      v9 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 initWithStorages:isa];
    }
  }
}

void sub_100305CD0(uint64_t *a1@<X8>)
{
  v3 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];

  NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_100006654(v6, qword_100946390);
    __chkstk_darwin(v7);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v8 = Sequence.map<A>(skippingError:_:)();

    *a1 = v8;
  }
}

void sub_100305F98(void *a1, uint64_t a2)
{
  v4 = v3;
  v6 = [a1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v6)
  {
    v7 = v6;
    v70 = a2;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007953F0;
    *(v8 + 32) = v7;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v9 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [a1 accountStoragesForAccountObjectIDs:isa];

    v12 = v11;
    if (!v11)
    {
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = Array._bridgeToObjectiveC()().super.isa;
    }

    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100941B00);
    swift_bridgeObjectRetain_n();
    v15 = v9;
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v72 = v16;

    v19 = v13 >> 62;
    if (os_log_type_enabled(v17, v18))
    {
      v68 = v12;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v15;
      v24 = v22;
      v75 = v22;
      *v20 = 138412802;
      v25 = v23;
      *(v20 + 4) = v23;
      v67 = v21;
      *v21 = v7;
      *(v20 + 12) = 2048;
      v69 = v7;
      if (v19)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v25;
      v27 = v25;

      *(v20 + 14) = v26 != 0;

      *(v20 + 22) = 2080;
      v28 = [v72 name];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_10000668C(v29, v31, &v75);

      *(v20 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fetching account storage by ObjectID {input: %@, hit?: %ld, name: %s}", v20, 0x20u);
      sub_100039860(v67);

      sub_10000607C(v24);
      v15 = v66;

      v7 = v69;
      v4 = v3;
      v19 = v13 >> 62;
      v12 = v68;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    if (v19)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_18;
      }
    }

    else
    {
      v46 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_18:

        if (v46 == 1)
        {
          [objc_allocWithZone(REMAccountsDataViewInvocationResult) initWithStorages:v12];

          return;
        }

        v47 = objc_opt_self();
        v48 = String._bridgeToObjectiveC()();
        [v47 internalErrorWithDebugDescription:v48];

        swift_willThrow();
        goto LABEL_24;
      }
    }

    sub_100401AE8(v70, sub_100306828, 0);
    if (v4)
    {
LABEL_24:

      return;
    }

    v49 = v15;
    v50 = v72;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v53 = 138412546;
      *(v53 + 4) = v49;
      *v71 = v7;
      *(v53 + 12) = 2080;
      v54 = v49;
      v55 = [v50 name];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_10000668C(v56, v58, &v75);

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Putting account storage fetched from primaryActiveCloudKitAccountOptimized() to storage cache {accountID: %@, name: %s}", v53, 0x16u);
      sub_100039860(v71);

      sub_10000607C(v73);
    }

    v60 = Array._bridgeToObjectiveC()().super.isa;
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1007953F0;
    *(v61 + 32) = v49;
    v62 = v49;
    v63 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setAccountStorages:v60 forAccountObjectIDs:v63];

    v64 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    v65 = Array._bridgeToObjectiveC()().super.isa;

    [v64 initWithStorages:v65];
  }

  else
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100941B00);
    v34 = v2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v75 = v38;
      *v37 = 136315138;
      v39 = [v34 name];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10000668C(v40, v42, &v75);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "No need to fetching account storage because no active primary CK account is enabled {name: %s}", v37, 0xCu);
      sub_10000607C(v38);
    }

    v44 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v45 = Array._bridgeToObjectiveC()().super.isa;
    [v44 initWithStorages:v45];
  }
}

void sub_100306828(uint64_t *a1@<X8>)
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v3 = sub_100013674(qword_1009752E8);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100019990(v3);
    if (v1)
    {
    }

    else
    {
      v8 = v5;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007953F0;
      *(v9 + 32) = v8;

      *a1 = v9;
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    [v6 internalErrorWithDebugDescription:v7];

    swift_willThrow();
  }
}

void sub_100306960(void *a1, uint64_t a2)
{
  if ([*v2 fetchREMObjectIDOnly])
  {
    sub_100308D5C(a1);
  }

  else
  {
    sub_100305F98(a1, a2);
  }
}

id sub_1003069EC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = [v4 fetchOption];
  if (v6 == 2)
  {
    __chkstk_darwin(2);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
LABEL_9:
    NSManagedObjectContext.rem_performAndWait<A>(_:)();
    if (!v2)
    {
      v18 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v18 initWithAccountIDs:isa];

      return v20;
    }

    return v3;
  }

  if (v6 == 1)
  {
    __chkstk_darwin(1);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    goto LABEL_9;
  }

  if (v6)
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100941B00);
    v22 = v4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = [v22 fetchOption];

      _os_log_impl(&_mh_execute_header, v23, v24, "REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs: Unknown REMActiveCloudKitAccountFetchOption %{public}ld", v25, 0xCu);
    }

    else
    {

      v23 = v22;
    }

    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    v3 = [v26 internalErrorWithDebugDescription:v27];

    swift_willThrow();
    return v3;
  }

  v7 = [a1 storeController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v9 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v10)
    {
      v11 = v10;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007953F0;
      *(v12 + 32) = v11;
      v13 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v14 = v11;
      v15 = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v13 initWithAccountIDs:v15];

      return v16;
    }
  }

  v28 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v29 = Array._bridgeToObjectiveC()().super.isa;
  v30 = [v28 initWithAccountIDs:v29];

  return v30;
}

uint64_t **sub_100306E5C(void *a1, unint64_t a2)
{
  v5 = v2;
  v95 = _swiftEmptyArrayStorage;
  isa = [v2 objectIDs];
  if (!isa)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v90 = a1;
  v9 = [a1 accountStoragesForAccountObjectIDs:isa];

  v89 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [v5 objectIDs];
  v12 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1001A577C(v13);

  v94 = v14;
  if (v10 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v12;
  v88 = a2;
  if (v15)
  {
    if (v15 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    v87 = v5;
    v16 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v10 + 8 * v16 + 32);
      }

      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v16;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v95;
      v19 = [v18 objectID];
      v20 = sub_10019F060(v19);
    }

    while (v15 != v16);
    v5 = v87;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100006654(v22, qword_100941B00);
  v10 = v94;
  swift_bridgeObjectRetain_n();
  v24 = v5;
  v13 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v13, v15))
  {

    swift_bridgeObjectRelease_n();
    if ((v94 & 0xC000000000000001) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v86[1] = v23;
  v4 = swift_slowAlloc();
  v86[0] = swift_slowAlloc();
  v93[0] = v86[0];
  *v4 = 134218754;
  v87 = v24;
  v25 = [v24 objectIDs];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_21;
  }

LABEL_48:
  v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:

  *(v4 + 4) = v27;
  v28 = v87;

  *(v4 + 12) = 2048;
  if (v3 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 14) = v29;
  *(v4 + 22) = 2048;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v10 + 16);
  }

  *(v4 + 24) = v30;

  *(v4 + 32) = 2080;
  v51 = [v28 name];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = v52;
  v24 = v87;
  v56 = sub_10000668C(v55, v54, v93);

  *(v4 + 34) = v56;
  _os_log_impl(&_mh_execute_header, v13, v15, "Fetching account storage by ObjectID {input#: %ld, hit#: %ld, miss#: %ld, name: %s}", v4, 0x2Au);
  sub_10000607C(v86[0]);

  if ((v10 & 0xC000000000000001) == 0)
  {
LABEL_39:
    if (!*(v10 + 16))
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!__CocoaSet.count.getter())
  {
LABEL_40:

LABEL_57:
    swift_beginAccess();
    v82 = objc_allocWithZone(REMAccountsDataViewInvocationResult);

    v83 = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v82 initWithStorages:v83];

    return v33;
  }

LABEL_27:
  v31 = sub_100277EBC(v10);

  v33 = v86;
  __chkstk_darwin(v32);
  v85[2] = v24;
  v85[3] = v31;
  v34 = v92;
  v35 = sub_100401AE8(v88, sub_100309374, v85);
  if (!v34)
  {
    v92 = 0;
    if (v35 >> 62)
    {
      v68 = v35;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
        v88 = v68;
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

LABEL_32:
        if ((v31 & 0x4000000000000000) == 0)
        {
          v37 = *(v31 + 16);
LABEL_34:
          v38 = v24;

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();

          v41 = os_log_type_enabled(v39, v40);
          if (v36 == v37)
          {
            if (v41)
            {
              v42 = swift_slowAlloc();
              v93[0] = swift_slowAlloc();
              *v42 = 136315394;
              v43 = Array.description.getter();
              v45 = sub_10000668C(v43, v44, v93);

              *(v42 + 4) = v45;
              *(v42 + 12) = 2080;
              v46 = [v38 name];
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;

              v50 = sub_10000668C(v47, v49, v93);

              *(v42 + 14) = v50;
              _os_log_impl(&_mh_execute_header, v39, v40, "Putting account storages fetched from DB to cache {objIDs: %s, name: %s}", v42, 0x16u);
              swift_arrayDestroy();
            }

            v67 = Array._bridgeToObjectiveC()().super.isa;
            v39 = Array._bridgeToObjectiveC()().super.isa;

            [v90 setAccountStorages:v67 forAccountObjectIDs:v39];
          }

          else if (v41)
          {
            v57 = swift_slowAlloc();
            v93[0] = swift_slowAlloc();
            *v57 = 136315394;
            v58 = Array.description.getter();
            v60 = v59;

            v61 = sub_10000668C(v58, v60, v93);

            *(v57 + 4) = v61;
            *(v57 + 12) = 2080;
            v62 = [v38 name];
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            v66 = sub_10000668C(v63, v65, v93);

            *(v57 + 14) = v66;
            _os_log_impl(&_mh_execute_header, v39, v40, "Couldn't fetch all requested accounts {objIDs: %s, name: %s}", v57, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          swift_beginAccess();
          sub_100272530(v88);
          swift_endAccess();
          goto LABEL_57;
        }

LABEL_52:
        v37 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_34;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        v88 = v35;
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }
    }

    v69 = v24;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = Array.description.getter();
      v75 = v74;

      v76 = sub_10000668C(v73, v75, v93);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = [v69 name];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = sub_10000668C(v78, v80, v93);

      *(v72 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "None of the requested accounts could be fetched {objIDs: %s, name: %s}", v72, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_57;
  }

  return v33;
}

uint64_t sub_10030795C(void *a1)
{
  v3 = v1;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100941B00);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prefer using the store controller invoke() instead of this MoC invoke() for REMAccountsDataViewInvocation_fetchByExternalIdentifier", v8, 2u);
  }

  v9 = [v3 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100308FD8(v10, a1);

  if (!v2)
  {
    v12 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v12 initWithStorages:isa];

    return v14;
  }

  return result;
}

void *sub_100307B60(void *a1, uint64_t a2)
{
  v4 = v2;
  v99 = _swiftEmptyArrayStorage;
  v7 = &selRef_setPublicLinkLastModifiedDate_;
  isa = [v2 externalIdentifiers];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v96 = v3;
  v9 = [a1 accountStoragesForAccountExternalIdentifiers:isa];

  v10 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = v4;
  v12 = [v4 externalIdentifiers];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1001A5660(v13);

  v98 = v14;
  if (v11 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92[1] = v10;
  v93 = a2;
  v95 = a1;
  if (v15)
  {
    if (v15 < 1)
    {
      __break(1u);
      goto LABEL_45;
    }

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v11 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 externalIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v19;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v99;
        sub_10019EC58(v22, v24);
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100006654(v27, qword_100941B00);
  v11 = v98;
  swift_bridgeObjectRetain_n();
  v29 = v94;
  v13 = Logger.logObject.getter();
  LOBYTE(a1) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v13, a1))
  {

    swift_bridgeObjectRelease_n();
    v40 = v96;
    goto LABEL_25;
  }

  v7 = swift_slowAlloc();
  v94 = swift_slowAlloc();
  v97 = v94;
  *v7 = 134218754;
  v14 = v29;
  v30 = [v29 externalIdentifiers];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = *(v31 + 16);

  *(v7 + 4) = v32;

  *(v7 + 6) = 2048;
  v92[0] = v28;
  if (v17 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v7 + 14) = i;
    *(v7 + 11) = 2048;
    v34 = *(v11 + 16);

    v7[3] = v34;

    *(v7 + 16) = 2080;
    v35 = [v14 name];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10000668C(v36, v38, &v97);

    *(v7 + 34) = v39;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v13, a1, "Fetching account storage by ExtID {input#: %ld, hit#: %ld, miss#: %ld, name: %s}", v7, 0x2Au);
    sub_10000607C(v94);

    v40 = v96;
LABEL_25:
    v14 = *(v11 + 16);
    a1 = v95;
    if (!v14)
    {

      goto LABEL_41;
    }

    v7 = sub_1003689CC(*(v11 + 16), 0);
    v13 = sub_1002791DC(&v97, v7 + 4, v14, v11);
    v41 = sub_10001B860();
    if (v13 == v14)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v42 = v92;
  __chkstk_darwin(v41);
  v91[2] = v29;
  v91[3] = v7;
  v43 = sub_100401AE8(v93, sub_100308D40, v91);
  if (v40)
  {

    return v42;
  }

  if (v43 >> 62)
  {
    v77 = v43;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v43 = v77;
      goto LABEL_32;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
LABEL_32:
      v94 = v43;
      v45 = v29;
      v46 = v7[2];
      v47 = v45;

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      v50 = os_log_type_enabled(v48, v49);
      if (v44 == v46)
      {
        if (v50)
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v96 = 0;
          v97 = v52;
          *v51 = 136315394;
          v53 = Array.description.getter();
          v55 = sub_10000668C(v53, v54, &v97);

          *(v51 + 4) = v55;
          *(v51 + 12) = 2080;
          v56 = [v47 name];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          v60 = sub_10000668C(v57, v59, &v97);

          *(v51 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v48, v49, "Putting account storages fetched from DB to cache {extIds: %s, name: %s}", v51, 0x16u);
          swift_arrayDestroy();
        }

        v61 = Array._bridgeToObjectiveC()().super.isa;
        v62 = Array._bridgeToObjectiveC()().super.isa;

        [a1 setAccountStorages:v61 forAccountExternalIdentifiers:v62];
      }

      else
      {
        if (v50)
        {
          v63 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v63 = 136315394;
          v64 = Array.description.getter();
          v96 = 0;
          v65 = v64;
          v67 = v66;

          v68 = sub_10000668C(v65, v67, &v97);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          v69 = [v47 name];
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;

          v73 = sub_10000668C(v70, v72, &v97);

          *(v63 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v48, v49, "Couldn't fetch all requested accounts {extIds: %s, name: %s}", v63, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_100272530(v94);
      swift_endAccess();
      goto LABEL_41;
    }
  }

  v78 = v29;

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v81 = 136315394;
    v82 = Array.description.getter();
    v84 = v83;

    v85 = sub_10000668C(v82, v84, &v97);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = [v78 name];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = sub_10000668C(v87, v89, &v97);

    *(v81 + 14) = v90;
    _os_log_impl(&_mh_execute_header, v79, v80, "None of the requested accounts could be fetched {extIds: %s, name: %s}", v81, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_41:
  swift_beginAccess();
  v74 = objc_allocWithZone(REMAccountsDataViewInvocationResult);

  v75 = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v74 initWithStorages:v75];

  return v42;
}

void sub_100308648(unint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_10000F8A4(a1, 0, 2u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v8 = sub_100006654(v7, qword_100946390);
    __chkstk_darwin(v8);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v9 = Sequence.map<A>(skippingError:_:)();

    *a2 = v9;
  }
}

id sub_1003088C8()
{
  v2 = v0;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100941B00);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Prefer using the store controller invoke() instead of this MoC invoke() for REMAccountsDataViewInvocation_fetchByExternalIdentifier", v6, 2u);
  }

  v7 = [v2 externalIdentifiers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10000F8A4(v8, 0, 2u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v13 = v12;
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v14 = sub_100006654(v3, qword_100946390);
    v18[1] = v18;
    v18[5] = v13;
    __chkstk_darwin(v14);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    Sequence.map<A>(skippingError:_:)();

    v15 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v15 initWithStorages:isa];
  }

  return v8;
}

unint64_t sub_100308CDC()
{
  result = qword_100941B18;
  if (!qword_100941B18)
  {
    sub_1000F514C(&qword_10094F630, qword_1007A3430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941B18);
  }

  return result;
}

id sub_100308D5C(void *a1)
{
  v1 = [a1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v1)
  {
    v2 = v1;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007953F0;
    *(v3 + 32) = v2;
    v4 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v5 = v2;
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v4 initWithAccountIDs:v6.super.isa];
  }

  else
  {
    v8 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v7 = [v8 initWithAccountIDs:v6.super.isa];
  }

  return v7;
}

uint64_t sub_100308EA0()
{
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100941B00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unexpectedly calling the invoke() with the MoC instead of with the storeController for REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 internalErrorWithDebugDescription:v5];

  return swift_willThrow();
}

uint64_t sub_100308FD8(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = [a2 persistentStoreOfAccountWithAccountID:v6];

    ++v5;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v8;
    }
  }

  v11 = sub_10000F8A4(a1, 0, 1u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setAffectedStores:isa];

  [v12 setPredicate:v11];

  v15 = a2;
  NSManagedObjectContext.fetch<A>(_:)();
  if (v19)
  {
  }

  else
  {
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100006654(v16, qword_100946390);
    __chkstk_darwin(v17);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v15 = Sequence.map<A>(skippingError:_:)();
  }

  return v15;
}

uint64_t sub_100309374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100308FD8(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003093CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u || a3 == 6)
  {
  }

  return result;
}

void sub_100309410(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  sub_10030596C();
  if (!v2)
  {
    *a1 = v5;
  }
}

uint64_t sub_100309474()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941B20);
  v1 = sub_100006654(v0, qword_100941B20);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10030953C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v317 = a4;
  v312 = a3;
  v296 = a2;
  v262 = a5;
  v264 = type metadata accessor for REMRemindersListDataView.TaggedModel();
  v263 = *(v264 - 8);
  v6 = *(v263 + 64);
  __chkstk_darwin(v264);
  v260 = &v251 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v261 = &v251 - v9;
  v10 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v269 = &v251 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v280 = &v251 - v14;
  v281 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v267 = *(v281 - 8);
  v15 = *(v267 + 64);
  __chkstk_darwin(v281);
  v268 = &v251 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v279 = &v251 - v18;
  v295 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v294 = *(v295 - 8);
  v19 = *(v294 + 64);
  __chkstk_darwin(v295);
  v265 = &v251 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v21 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275);
  v273 = &v251 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v286 = &v251 - v24;
  v25 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v257 = &v251 - v27;
  v272 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v278 = *(v272 - 8);
  v28 = *(v278 + 64);
  __chkstk_darwin(v272);
  v270 = (&v251 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v277 = &v251 - v31;
  v282 = type metadata accessor for REMRemindersListDataView.Diff();
  v276 = *(v282 - 8);
  v32 = *(v276 + 64);
  __chkstk_darwin(v282);
  v259 = &v251 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v290 = &v251 - v35;
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v292 = *(Style - 8);
  v36 = *(v292 + 64);
  __chkstk_darwin(Style);
  v313 = &v251 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v287 = *(v288 - 8);
  v38 = *(v287 + 64);
  __chkstk_darwin(v288);
  v291 = &v251 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v266 = &v251 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v271 = &v251 - v44;
  __chkstk_darwin(v45);
  v283 = &v251 - v46;
  __chkstk_darwin(v47);
  v298 = &v251 - v48;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v305 = *(Subtasks - 8);
  v49 = *(v305 + 64);
  __chkstk_darwin(Subtasks);
  v304 = &v251 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v308 = *(v51 - 8);
  v309 = v51;
  v52 = *(v308 + 64);
  __chkstk_darwin(v51);
  v258 = &v251 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v284 = &v251 - v55;
  __chkstk_darwin(v56);
  v285 = &v251 - v57;
  __chkstk_darwin(v58);
  v303 = &v251 - v59;
  v60 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v302 = &v251 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = _s9UtilitiesO12SortingStyleOMa();
  v63 = *(*(v301 - 8) + 64);
  __chkstk_darwin(v301);
  v300 = &v251 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v306 = &v251 - v66;
  v311 = _s10PredicatesOMa(0);
  v67 = *(*(v311 - 1) + 64);
  __chkstk_darwin(v311);
  v274 = (&v251 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v69);
  v310 = (&v251 - v70);
  v319 = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters();
  v314 = *(v319 - 1);
  v71 = *(v314 + 64);
  __chkstk_darwin(v319);
  v73 = &v251 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v315 = *(v74 - 8);
  v75 = v315[8];
  __chkstk_darwin(v74);
  v77 = &v251 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v80 = &v251 - v79;
  __chkstk_darwin(v81);
  v83 = &v251 - v82;
  v84 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v316 = *(v84 - 8);
  v85 = v316[8];
  __chkstk_darwin(v84);
  v87 = &v251 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v251 - v89;
  v91 = v318;
  sub_10030C6BC();
  if (!v91)
  {
    v254 = v87;
    v251 = v80;
    v252 = v77;
    v256 = v83;
    v299 = v73;
    v253 = v74;
    v297 = v92;
    v318 = 0;
    v255 = a1;
    REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
    v93 = v316;
    v94 = v316[11];
    v95 = v94(v90, v84);
    v96 = enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:);
    v97 = enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:);
    if (v95 == enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:) || v95 == enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:))
    {
      (v93[1])(v90, v84);
      v98 = v254;
    }

    else
    {
      v98 = v254;
      if (v95 != enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
      {
        if (v95 == enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
        {
          v99 = v310;
          swift_storeEnumTagMultiPayload();
          v100 = sub_100043AA8();
          sub_1001A4F3C(v99, _s10PredicatesOMa);
          v101 = v302;
          v102 = v317;
          REMRemindersListDataView.TaggedInvocation.Parameters.sortingStyle.getter();
          v103 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
          v104 = type metadata accessor for REMRemindersListDataView.SortingDirection();
          v105 = v300;
          (*(*(v104 - 8) + 104))(v300, v103, v104);
          swift_storeEnumTagMultiPayload();
          v106 = v306;
          sub_1005368D8(v101, v105, v306);
          v107 = v303;
          REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
          v108 = v304;
          v109 = v305;
          v110 = Subtasks;
          (*(v305 + 104))(v304, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), Subtasks);
          v319 = v100;
          v111 = v318;
          v112 = sub_100536D54(v255, v100, v106, v107, v108, _swiftEmptyArrayStorage, 0);
          v113 = v309;
          if (v111)
          {

            (*(v109 + 8))(v108, v110);
            (*(v308 + 8))(v107, v113);
            sub_1001A4F3C(v106, _s9UtilitiesO12SortingStyleOMa);
            return;
          }

          v149 = v108;
          v150 = v112;
          (*(v109 + 8))(v149, v110);
          (*(v308 + 8))(v107, v113);
          v320 = v150;
          sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
          type metadata accessor for REMObjectID_Codable();
          sub_10030CB0C();
          sub_10030D7F0(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
          v151 = Sequence.compactMapToSet<A>(_:)();
          v318 = 0;

          sub_100393DD8(v151);
          v153 = v152;

          sub_1001A4F3C(v106, _s9UtilitiesO12SortingStyleOMa);
          v154 = v102;
LABEL_49:
          v166 = v255;
          v167 = v318;
          v168 = sub_10030CB70(v255, v312);
          v169 = v313;
          if (v167)
          {

            return;
          }

          v170 = v168;
          v171 = sub_10030CE70(v153, v166, v154);
          if (REMRemindersListDataView.TaggedInvocation.Parameters.countCompleted.getter())
          {
            v172 = v310;
            *v310 = v153;
            swift_storeEnumTagMultiPayload();

            v173 = sub_100043AA8();
            sub_1001A4F3C(v172, _s10PredicatesOMa);
            v174 = v298;
            sub_10053464C(v255, v173);
            v319 = v171;
            v316 = v170;

            v175 = 0;
            v169 = v313;
          }

          else
          {
            v319 = v171;
            v316 = v170;
            v175 = 1;
            v174 = v298;
          }

          (*(v294 + 56))(v174, v175, 1, v295);
          type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
          v176 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          REMRemindersListDataView.TaggedInvocation.Parameters.smartListHashtagLabelsFetchStyle.getter();
          v177 = v169;
          v178 = [objc_opt_self() daemonUserDefaults];
          v179 = v291;
          sub_100035608(v255, v178, &off_1008F7C98, v296, v177, v291);
          (*(v292 + 8))(v177, Style);

          v180 = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.labels.getter();
          LODWORD(v177) = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.isUpToDate.getter();

          (*(v287 + 8))(v179, v288);
          v181 = [v289 fetchResultTokenToDiffAgainst];
          v182 = v290;
          sub_100534D44(v181, v290);
          v318 = 0;
          v313 = v180;

          v183 = v277;
          REMRemindersListDataView.TaggedInvocation.Parameters.remindersPrefetch.getter();
          v184 = v183;
          v185 = v278;
          v186 = v270;
          v187 = v272;
          (*(v278 + 16))(v270, v184, v272);
          v188 = (*(v185 + 88))(v186, v187);
          LODWORD(Subtasks) = v177;
          if (v188 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
          {
            (*(v185 + 96))(v186, v187);
            v310 = sub_10053DB98(*v186, v319, v255, v312, 0);
            v312 = _swiftEmptyArrayStorage;
            v189 = v286;
            v190 = v309;
            v191 = v285;
            v192 = v275;
            v193 = v274;
          }

          else
          {
            if (v188 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
            {
              (*(v185 + 96))(v186, v187);
              v310 = sub_10053E698(*v186, v182, v255, v312, 0);
              v312 = _swiftEmptyArrayStorage;
            }

            else if (v188 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
            {
              (*(v185 + 96))(v186, v187);
              v194 = *v186;
              v195 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
              v196 = v186;
              v197 = v255;
              v198 = v257;
              sub_100031B58(v196 + *(v195 + 48), v257, &qword_10094B8E0, &unk_1007AABD0);
              v199 = v194;
              v184 = v277;
              v200 = v319;
              v201 = v312;
              v310 = sub_10053DB98(v199, v319, v197, v312, 0);
              v319 = v200;
              v202 = v201;
              v185 = v278;
              v312 = sub_10053EBE4(v198, v200, v197, v202, 0);
              sub_1000050A4(v198, &qword_10094B8E0, &unk_1007AABD0);
            }

            else
            {
              if (v188 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
              {
LABEL_92:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
LABEL_93:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                return;
              }

              v312 = _swiftEmptyArrayStorage;
              v310 = _swiftEmptyArrayStorage;
            }

            v189 = v286;
            v191 = v285;
            v193 = v274;
            v190 = v309;
            v192 = v275;
          }

          (*(v185 + 8))(v184, v187);
          *v193 = v153;
          swift_storeEnumTagMultiPayload();
          v315 = sub_100043AA8();
          sub_1001A4F3C(v193, _s10PredicatesOMa);
          REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
          sub_100010364(v298, v189, &qword_100938A70, &qword_1007ACC60);
          v203 = *(v192 + 48);
          v204 = v308;
          v311 = *(v308 + 16);
          v311(v189 + v203, v191, v190);
          *(v189 + *(v192 + 64)) = v319;
          v205 = v273;
          sub_100010364(v189, v273, &qword_10093AE38, &unk_100798450);
          v206 = *(v192 + 48);
          v314 = *(v205 + *(v192 + 64));
          v207 = v283;
          sub_100031B58(v205, v283, &qword_100938A70, &qword_1007ACC60);
          v208 = v205 + v206;
          v209 = v284;
          (*(v204 + 32))(v284, v208, v190);
          v210 = v271;
          sub_100010364(v207, v271, &qword_100938A70, &qword_1007ACC60);
          v211 = v294;
          v212 = v295;
          v213 = (*(v294 + 48))(v210, 1, v295);

          if (v213 == 1)
          {
            v214 = v315;
            v215 = v309;
            sub_1000050A4(v210, &qword_100938A70, &qword_1007ACC60);
            if (*(v314 + 16))
            {

              v216 = *(v308 + 8);
              v216(v284, v215);
              sub_1000050A4(v283, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v286, &qword_10093AE38, &unk_100798450);
              v216(v285, v215);
LABEL_68:
              v217 = v281;
              v218 = v267;
              v219 = v280;
              v220 = v279;
              v221 = v269;
              v222 = v268;
LABEL_71:
              sub_100010364(v298, v266, &qword_100938A70, &qword_1007ACC60);
              REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
              v229 = v318;
              sub_10030BB78(v219);
              v318 = v229;
              if (v229)
              {

                (*(v218 + 8))(v220, v217);
                (*(v276 + 8))(v290, v282);
              }

              else
              {
                (*(v218 + 16))(v222, v220, v217);
                sub_100010364(v219, v221, &qword_100938A68, &unk_10079DDF0);
                v319 = v316;
                v230 = v261;
                REMRemindersListDataView.TaggedModel.init(flatModel:allHashtagLabels:smartListHashtagLabels:smartListHashtagLabelsUpToDate:taggedSmartList:manualOrderingID:)();
                v231 = v230;
                v232 = v263;
                v233 = v230;
                v234 = v218;
                v235 = v264;
                (*(v263 + 16))(v260, v233, v264);
                v236 = v276;
                (*(v276 + 16))(v259, v290, v282);
                sub_10030D7F0(&qword_100941B70, &type metadata accessor for REMRemindersListDataView.TaggedModel);
                sub_10030D7F0(&qword_100941B78, &type metadata accessor for REMRemindersListDataView.TaggedModel);
                REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

                (*(v232 + 8))(v231, v235);
                sub_1000050A4(v280, &qword_100938A68, &unk_10079DDF0);
                (*(v234 + 8))(v279, v281);
                (*(v236 + 8))(v290, v282);
              }

              v237 = v298;
              goto LABEL_75;
            }

            v238 = v258;
            v311(v258, v284, v215);
            v239 = v308;
            v240 = (*(v308 + 88))(v238, v215);
            if (v240 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
            {

              (*(v239 + 8))(v238, v215);
              v241 = v276;
              v242 = v283;
              p_attr = (&stru_100923FF8 + 8);
LABEL_83:
              sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
              v244 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
              v245 = [swift_getObjCClassFromMetadata() entity];
              [v244 setEntity:v245];

              [v244 setAffectedStores:0];
              [v244 setPredicate:v214];
              [v244 setFetchLimit:1];
              [v244 setAffectedStores:0];
              v246 = v318;
              NSManagedObjectContext.count<A>(for:)();
              v318 = v246;
              if (v246)
              {

                v247 = *(v239 + 8);
                v247(v284, v215);
                sub_1000050A4(v242, &qword_100938A70, &qword_1007ACC60);
                sub_1000050A4(v286, &qword_10093AE38, &unk_100798450);
                v247(v285, v215);
                (*(v241 + 8))(v290, v282);
                v237 = v298;
LABEL_75:
                sub_1000050A4(v237, &qword_100938A70, &qword_1007ACC60);
                return;
              }

              v248 = *(v239 + 8);
              v248(v284, v215);
              sub_1000050A4(v242, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v286, &qword_10093AE38, &unk_100798450);
              v248(v285, v215);
              goto LABEL_68;
            }

            p_attr = &stru_100923FF8.attr;
            if (v240 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
            {

              (*(v239 + 8))(v238, v215);
LABEL_82:
              v241 = v276;
              v242 = v283;
              goto LABEL_83;
            }

            if (v240 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
            {

              goto LABEL_82;
            }

            if (v240 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
            {

              v249 = v309;
              v250 = *(v308 + 8);
              v250(v284, v309);
              sub_1000050A4(v283, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v286, &qword_10093AE38, &unk_100798450);
              v250(v285, v249);
              goto LABEL_68;
            }

            goto LABEL_93;
          }

          v223 = v209;
          v224 = v265;
          (*(v211 + 32))(v265, v210, v212);
          v225 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
          v226 = REMRemindersListDataView.CountByCompleted.completed.getter();

          (*(v211 + 8))(v224, v212);
          v227 = *(v204 + 8);
          v228 = v309;
          v227(v223, v309);
          sub_1000050A4(v207, &qword_100938A70, &qword_1007ACC60);
          sub_1000050A4(v286, &qword_10093AE38, &unk_100798450);
          v227(v285, v228);
          v217 = v281;
          v219 = v280;
          v220 = v279;
          v221 = v269;
          v222 = v268;
          if (!__OFADD__(v225, v226))
          {
            v218 = v267;
            goto LABEL_71;
          }

          goto LABEL_90;
        }

LABEL_91:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_92;
      }
    }

    LODWORD(Subtasks) = v97;
    v114 = v297;
    if (v297 >> 62)
    {
      sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);

      v114 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
    }

    REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
    v115 = v94(v98, v84);
    if (v115 == v96)
    {

      (v93[12])(v98, v84);
      v117 = *v98;
      v116 = v98[1];
      v118 = v315;
      v119 = v256;
      v120 = v253;
      (v315[13])(v256, enum case for REMHashtagLabelDataView.Operation.all(_:), v253);
      v121 = v255;
      v122 = v319;
LABEL_46:
      (v118[2])(v251, v119, v120);
      REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.init(include:exclude:operation:)();
      type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation();
      v319 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v155 = v120;
      v156 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
      v157 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
      v158 = v252;
      REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
      v159 = v318;
      v160 = sub_100584A24(v156, v157, v158, v121);
      v161 = (v314 + 8);
      v318 = v159;
      if (v159)
      {
        v162 = v118[1];
        v162(v158, v155);

        (*v161)(v299, v122);
        v162(v256, v155);
        return;
      }

      v163 = v118[1];
      v164 = v160;
      v163(v158, v155);

      sub_100393DD8(v164);
      v153 = v165;

      (*v161)(v299, v122);
      v163(v256, v155);
      v154 = v317;
      goto LABEL_49;
    }

    v123 = v255;
    v118 = v315;
    v119 = v256;
    if (v115 == Subtasks)
    {

      (v93[12])(v98, v84);
      v125 = *v98;
      v124 = v98[1];
      v120 = v253;
      (v118[13])(v119, enum case for REMHashtagLabelDataView.Operation.some(_:), v253);
      v122 = v319;
      v121 = v123;
      goto LABEL_46;
    }

    if (v115 == enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
    {
      if (v114 >> 62)
      {
        v126 = _CocoaArrayWrapper.endIndex.getter();
        v122 = v319;
        v120 = v253;
        if (v126)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v126 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v122 = v319;
        v120 = v253;
        if (v126)
        {
LABEL_18:
          v320 = _swiftEmptyArrayStorage;
          sub_100026EF4(0, v126 & ~(v126 >> 63), 0);
          if ((v126 & 0x8000000000000000) == 0)
          {
            v127 = 0;
            v128 = v320;
            do
            {
              if ((v114 & 0xC000000000000001) != 0)
              {
                v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v129 = *(v114 + 8 * v127 + 32);
              }

              v130 = v129;
              v131 = [v129 name];
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v134 = v133;

              v320 = v128;
              v136 = v128[2];
              v135 = v128[3];
              if (v136 >= v135 >> 1)
              {
                sub_100026EF4((v135 > 1), v136 + 1, 1);
                v128 = v320;
              }

              ++v127;
              v128[2] = v136 + 1;
              v137 = &v128[2 * v136];
              v137[4] = v132;
              v137[5] = v134;
              v122 = v319;
            }

            while (v126 != v127);
LABEL_38:

            v121 = v255;
            v120 = v253;
            v118 = v315;
            v119 = v256;
LABEL_45:
            sub_1001A5660(v128);

            (v118[13])(v119, enum case for REMHashtagLabelDataView.Operation.some(_:), v120);
            goto LABEL_46;
          }

          __break(1u);
          goto LABEL_89;
        }
      }

LABEL_44:
      v121 = v123;

      v128 = _swiftEmptyArrayStorage;
      goto LABEL_45;
    }

    if (v115 != enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
    {
      goto LABEL_91;
    }

    v122 = v319;
    v120 = v253;
    if (v114 >> 62)
    {
      v138 = _CocoaArrayWrapper.endIndex.getter();
      if (!v138)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v138 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v138)
      {
        goto LABEL_44;
      }
    }

    v320 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v138 & ~(v138 >> 63), 0);
    if ((v138 & 0x8000000000000000) == 0)
    {
      v139 = 0;
      v128 = v320;
      do
      {
        if ((v114 & 0xC000000000000001) != 0)
        {
          v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v140 = *(v114 + 8 * v139 + 32);
        }

        v141 = v140;
        v142 = [v140 name];
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        v320 = v128;
        v147 = v128[2];
        v146 = v128[3];
        if (v147 >= v146 >> 1)
        {
          sub_100026EF4((v146 > 1), v147 + 1, 1);
          v128 = v320;
        }

        ++v139;
        v128[2] = v147 + 1;
        v148 = &v128[2 * v147];
        v148[4] = v143;
        v148[5] = v145;
        v122 = v319;
      }

      while (v138 != v139);
      goto LABEL_38;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }
}

void sub_10030BB78(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B80, &unk_1007A1E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for REMHashtagLabelSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (REMRemindersListDataView.TaggedInvocation.Parameters.shouldFetchManualOrderingID.getter())
  {
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v15 = sub_100013674(qword_1009752E8);
    if (v15)
    {
      v16 = v15;
      REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
      sub_10030C040(v5, v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_1000050A4(v9, &qword_100941B80, &unk_1007A1E50);
        v17 = objc_opt_self();
        v28 = 0;
        v29 = 0xE000000000000000;
        _StringGuts.grow(_:)(84);
        v18._object = 0x80000001007F4AC0;
        v18._countAndFlagsBits = 0xD000000000000051;
        String.append(_:)(v18);
        REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
        v19 = v27;
        _print_unlocked<A, B>(_:_:)();
        (*(v26 + 8))(v5, v19);
        v20._countAndFlagsBits = 125;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);
        v21 = v16;
        v22 = String._bridgeToObjectiveC()();

        [v17 invalidParameterErrorWithDescription:v22];

        swift_willThrow();
      }

      else
      {
        (*(v11 + 32))(v14, v9, v10);
        sub_1000060C8(0, &qword_100941B88, REMManualOrdering_ptr);
        v24 = v30;
        sub_10030C3B8(v14, v16);
        (*(v11 + 8))(v14, v10);

        if (!v24)
        {
          v25 = type metadata accessor for REMManualOrdering.ManualOrderingID();
          (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
        }
      }
    }

    else
    {
      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();
    }
  }

  else
  {
    v23 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }
}

void sub_10030BFF4(uint64_t *a1@<X8>)
{
  v2 = REMRemindersListDataView.ReminderLite.objectID.getter();
  v3 = REMObjectID.codable.getter();

  *a1 = v3;
}

uint64_t sub_10030C040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v12);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:))
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v16 = *(sub_1000F5104(&qword_100941120, &qword_1007A0A78) + 64);
    *v14 = *v8;
    v17 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
LABEL_5:
    v18 = *v17;
    v19 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v19 - 8) + 104))(&v14[v16], v18, v19);
    v20 = &enum case for REMHashtagLabelSpecifier.labels(_:);
LABEL_6:
    (*(v10 + 104))(v14, *v20, v9);
    (*(v10 + 32))(a2, v14, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  if (v15 == enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:))
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v16 = *(sub_1000F5104(&qword_100941120, &qword_1007A0A78) + 64);
    *v14 = *v8;
    v17 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    goto LABEL_5;
  }

  if (v15 == enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
  {
    (*(v5 + 8))(a1, v4);
    v20 = &enum case for REMHashtagLabelSpecifier.allLabels(_:);
    goto LABEL_6;
  }

  if (v15 == enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
  {
    (*(v5 + 8))(a1, v4);
    v20 = &enum case for REMHashtagLabelSpecifier.noLabels(_:);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10030C3B8(uint64_t a1, id a2)
{
  v4 = [a2 storeControllerManagedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = [a2 remObjectID];
    if (v6)
    {
      v7 = v6;
      sub_10059EB10(&v19);
      if (v20)
      {
        sub_100054B6C(&v19, v21);
        v8 = sub_1002D7E80(a1, v21);
        sub_10053F868(3, v8, v9, v7, v5);
        if (!v10)
        {
          v10 = [objc_opt_self() newObjectID];
        }

        v11 = v10;
        REMObjectID.codable.getter();
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        sub_10000607C(v21);
      }

      else
      {
        sub_1000050A4(&v19, &qword_100947E90, &qword_10079B250);
        v17 = objc_opt_self();
        v18 = String._bridgeToObjectiveC()();
        [v17 invalidParameterErrorWithDescription:v18];

        swift_willThrow();
      }
    }

    else
    {
      v14 = objc_opt_self();
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = String._bridgeToObjectiveC()();
      [v14 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v16];

      swift_willThrow();
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 internalErrorWithDebugDescription:v13];

    swift_willThrow();
  }
}

uint64_t sub_10030C664(uint64_t a1)
{
  result = sub_10030D7F0(&qword_100941B58, &type metadata accessor for REMRemindersListDataView.TaggedInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_10030C6BC()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v2 + 56))(v12, 1, 1, v1);
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.init(sortingStyle:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v17 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v18 = (*(v2 + 88))(v5, v1);
    v17 = v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v2 + 8))(v9, v1);
  }

  sub_1000131E0(0, 2, v17);
  if (v0)
  {
    (*(v32 + 8))(v16, v13);
  }

  else
  {
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v30 = v13;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v22 = type metadata accessor for REMHashtagLabel_Codable();
      v29 = v20;
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = objc_allocWithZone(v22);

        v27 = String._bridgeToObjectiveC()();

        [v26 initWithName:{v27, v29}];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = v33[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 += 2;
        --v21;
      }

      while (v21);

      (*(v32 + 8))(v16, v30);
    }

    else
    {

      (*(v32 + 8))(v16, v13);
    }
  }
}

unint64_t sub_10030CB0C()
{
  result = qword_100941B68;
  if (!qword_100941B68)
  {
    sub_1000F514C(&qword_100941B60, &qword_1007A1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941B68);
  }

  return result;
}

id sub_10030CB70(void *a1, uint64_t a2)
{
  v5 = REMSmartListTypeTagged;
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v6 = sub_100717244(v5, 0, a1, qword_1009752F0);
  if (v2)
  {
    if (qword_100935EA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100941B20);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v11 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = v5;
      v15 = a2;
      v16 = sub_10000668C(v12, v13, &v25);

      *(v11 + 4) = v16;
      a2 = v15;
      v5 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Creating tagged smart list with empty storage because tagged smart list not found due to error {error: %s}", v11, 0xCu);
      sub_10000607C(v24);
    }

    v17 = sub_10003A1B8();
    if (v17)
    {
      v18 = v17;
      v19 = sub_10022F65C(v5, v17);
      v22 = [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 storage:v19];
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v7 = v6;
    v20 = sub_10022EB6C(v6);
    [objc_allocWithZone(REMSmartList) initWithStore:a2 storage:v20];
    v21 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
    v22 = REMSmartList_Codable.init(_:)();
  }

  return v22;
}

uint64_t sub_10030CE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a2;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v79 = *(Subtasks - 8);
  v80 = Subtasks;
  v6 = *(v79 + 64);
  __chkstk_darwin(Subtasks);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  __chkstk_darwin(v78);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B80, &unk_1007A1E50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  *&v74 = &v69 - v15;
  *&v73 = type metadata accessor for REMHashtagLabelSpecifier();
  v72 = *(v73 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s9UtilitiesO12SortingStyleOMa();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  __chkstk_darwin(v29);
  v31 = &v69 - v30;
  v32 = _s10PredicatesOMa(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
  *v35 = a1;

  REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v81 = a3;
  REMRemindersListDataView.TaggedInvocation.Parameters.sortingStyle.getter();
  v37 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v38 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v38 - 8) + 104))(v28, v37, v38);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v21, v28, v31);
  sub_1001A4ED8(v31, v25);
  LODWORD(v37) = swift_getEnumCaseMultiPayload();
  sub_1001A4F3C(v25, _s9UtilitiesO12SortingStyleOMa);
  if (v37 != 5)
  {
    goto LABEL_15;
  }

  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v39 = sub_100013674(qword_1009752E8);
  v40 = v74;
  if (!v39)
  {
    sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);
LABEL_13:
    v50 = 0;
    v51 = 0uLL;
    v52 = 0uLL;
LABEL_14:
    *v31 = v51;
    *(v31 + 1) = v52;
    *(v31 + 4) = v50;
    *(v31 + 5) = 0;
    swift_storeEnumTagMultiPayload();
LABEL_15:
    v53 = sub_100043AA8();
    v54 = v75;
    REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
    v56 = v79;
    v55 = v80;
    v57 = v76;
    (*(v79 + 104))(v76, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v80);
    v58 = sub_100536D54(v91, v53, v31, v54, v57, _swiftEmptyArrayStorage, 0);

    (*(v56 + 8))(v57, v55);
    (*(v77 + 8))(v54, v78);
    sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);
    sub_1001A4F3C(v35, _s10PredicatesOMa);
    return v58;
  }

  v41 = v39;
  v42 = [v39 remObjectID];
  if (!v42)
  {
    sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);

    goto LABEL_13;
  }

  v43 = v42;
  sub_10059EB10(&aBlock);
  if (!v84)
  {
    sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);

    v47 = &qword_100947E90;
    v48 = &qword_10079B250;
    p_aBlock = &aBlock;
    goto LABEL_12;
  }

  sub_100054B6C(&aBlock, v90);
  v44 = v70;
  REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
  sub_10030C040(v44, v40);
  v45 = v72;
  v46 = v73;
  if ((*(v72 + 48))(v40, 1, v73) == 1)
  {

    sub_10000607C(v90);
    sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);
    v47 = &qword_100941B80;
    v48 = &unk_1007A1E50;
    p_aBlock = v40;
LABEL_12:
    sub_1000050A4(p_aBlock, v47, v48);
    goto LABEL_13;
  }

  v60 = v71;
  (*(v45 + 32))(v71, v40, v46);
  v61 = sub_1002D7E80(v60, v90);
  v63 = v62;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v64 = swift_allocObject();
  *(v64 + 16) = 3;
  *(v64 + 24) = v61;
  *(v64 + 32) = v63;
  *(v64 + 40) = v43;
  *&v74 = v43;
  v65 = v91;
  *(v64 + 48) = v91;
  *(v64 + 56) = &v87;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_10026A4B4;
  *(v66 + 24) = v64;
  v85 = sub_1000529DC;
  v86 = v66;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v83 = sub_10000F160;
  v84 = &unk_1008EDB88;
  v67 = _Block_copy(&aBlock);
  *&v74 = v74;
  v68 = v65;

  [v68 performBlockAndWait:v67];
  _Block_release(v67);

  (*(v72 + 8))(v71, v73);
  sub_10000607C(v90);
  sub_1001A4F3C(v31, _s9UtilitiesO12SortingStyleOMa);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if ((v67 & 1) == 0)
  {
    v74 = v87;
    v73 = v88;
    v50 = v89;

    v52 = v73;
    v51 = v74;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030D7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030D838()
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v1)
  {
    _StringGuts.grow(_:)(46);
    v2._object = 0x80000001007EC120;
    v2._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v2);
    sub_1000F5104(&qword_100941DD8, &qword_1007A1FC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030D980()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10030DA80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E1BC(*a1);
  *a2 = result;
  return result;
}

void sub_10030DAB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xD000000000000014;
  v6 = 0x80000001007A1EA0;
  v7 = 0x80000001007E8B40;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001007E8B60;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC00000065746144;
  v10 = 0x64656E6769737361;
  if (v2 != 1)
  {
    v10 = 0x737574617473;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10030DB88@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E1BC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10030DBB0()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656E6769737361;
  if (v1 != 1)
  {
    v5 = 0x737574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_10030DC80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10030DD58()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10030DE1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10030DEF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E208(*a1);
  *a2 = result;
  return result;
}

void sub_10030DF20(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = 0x65656E6769737361;
  v5 = 0xEA00000000004449;
  if (*v1 != 2)
  {
    v4 = 0x74616E696769726FLL;
    v5 = 0xEC0000004449726FLL;
  }

  if (*v1)
  {
    v3 = 0x7265646E696D6572;
    v2 = 0xEA00000000004449;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10030DFC4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E208(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10030DFEC()
{
  v1 = 0x49746E756F636361;
  v2 = 0x65656E6769737361;
  if (*v0 != 2)
  {
    v2 = 0x74616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
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

void sub_10030E07C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckAssigneeIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10030E0E4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setCkAssigneeIdentifier:?];
}

unint64_t sub_10030E1BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0A28, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10030E208(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E12E8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10030E254(void *a1, SEL *a2, const char *a3, const char *a4)
{
  v95 = a4;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v88 - v13;
  v15 = type metadata accessor for UUID();
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v96 = &v88 - v21;
  __chkstk_darwin(v20);
  v98 = &v88 - v22;
  v23 = [a1 *a2];
  if (!v23)
  {
    return;
  }

  v24 = v23;
  v97 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [a1 managedObjectContext];
  if (v25)
  {
    v94 = v25;
    UUID.init(uuidString:)();

    v26 = v99;
    if ((*(v99 + 48))(v14, 1, v15) == 1)
    {

      sub_1000050A4(v14, &unk_100939D90, "8\n\r");
      return;
    }

    v91 = a3;
    v31 = v98;
    (*(v26 + 32))(v98, v14, v15);
    KeyPath = swift_getKeyPath();
    v92 = *(v26 + 16);
    v92(v12, v31, v15);
    (*(v26 + 56))(v12, 0, 1, v15);
    v33 = sub_10039239C(KeyPath, v12);
    v93 = v15;
    v34 = v33;

    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    [v35 setAffectedStores:0];
    [v35 setPredicate:v34];
    v37 = v94;
    v38 = v97;
    v39 = NSManagedObjectContext.fetch<A>(_:)();
    if (v38)
    {
      (*(v26 + 8))(v98, v93);

      return;
    }

    v40 = v39;
    v89 = v35;
    v90 = v34;
    v42 = v92;
    v41 = v93;
    v100[3] = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    v100[0] = v40;
    sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v100);
    v43 = v101;
    if (v101 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v44 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v96;
    v97 = 0;
    if (v44)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v46 = *(v43 + 32);
LABEL_20:
        v47 = v46;

        if (qword_100935EA8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100006654(v48, qword_100941BA0);
        v42(v45, v98, v41);
        v49 = v47;
        v50 = a1;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        v96 = v49;
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v100[0] = v95;
          *v53 = 136446722;
          LODWORD(v92) = v52;
          v55 = UUID.uuidString.getter();
          v57 = v56;
          v99 = *(v99 + 8);
          (v99)(v45, v41);
          v58 = sub_10000668C(v55, v57, v100);

          *(v53 + 4) = v58;
          *(v53 + 12) = 2112;
          v59 = v96;
          *(v53 + 14) = v96;
          *v54 = v59;
          v60 = v54;
          *(v53 + 22) = 2080;
          v61 = v59;
          v62 = [v50 loggingDescription];
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;

          v66 = sub_10000668C(v63, v65, v100);

          *(v53 + 24) = v66;
          _os_log_impl(&_mh_execute_header, v51, v92, v91, v53, 0x20u);
          sub_1000050A4(v60, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          (v99)(v98, v93);
        }

        else
        {

          v86 = *(v99 + 8);
          v86(v45, v41);
          v86(v98, v41);
        }

        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_100935EA8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    v67 = type metadata accessor for Logger();
    sub_100006654(v67, qword_100941BA0);
    v68 = v98;
    v69 = v41;
    v42(v19, v98, v41);
    v70 = a1;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v100[0] = v96;
      *v73 = 136446466;
      v74 = UUID.uuidString.getter();
      LODWORD(v92) = v72;
      v75 = v74;
      v77 = v76;
      v78 = *(v99 + 8);
      v78(v19, v69);
      v79 = v78;
      v80 = sub_10000668C(v75, v77, v100);

      *(v73 + 4) = v80;
      *(v73 + 12) = 2080;
      v81 = [v70 loggingDescription];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = sub_10000668C(v82, v84, v100);

      *(v73 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v71, v92, v95, v73, 0x16u);
      swift_arrayDestroy();

      v79(v98, v69);
    }

    else
    {

      v87 = *(v99 + 8);
      v87(v19, v41);
      v87(v68, v41);
    }

    return;
  }

  if (qword_100935EA8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100941BA0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Cannot get managedObjectContext from the given REMCDAssignment", v30, 2u);
  }
}

NSObject *sub_10030ED04(void *a1, int a2, int a3)
{
  LODWORD(v308) = a3;
  v6 = type metadata accessor for Date();
  v304 = *(v6 - 8);
  v305 = v6;
  v7 = *(v304 + 64);
  v8 = __chkstk_darwin(v6);
  v303 = &v291 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v302 = (&v291 - v10);
  v310 = type metadata accessor for UUID();
  v11 = *(v310 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v310);
  v306 = &v291 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v291 - v15;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v291 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v291 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v291 - v26;
  __chkstk_darwin(v25);
  v29 = &v291 - v28;
  v311 = a1;
  v312 = 0;
  v309 = [a1 remObjectIDWithError:&v312];
  if (!v309)
  {
    v38 = v312;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v38;
  }

  v30 = v312;
  LODWORD(v307) = a2;
  v301 = v3;
  if ((a2 & 1) != 0 && [v311 markedForDeletion])
  {
    v31 = [v311 owningReminderIdentifier];
    if (v31)
    {
      v32 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    (*(v11 + 56))(v27, v33, 1, v310);
    sub_100100FB4(v27, v29);
  }

  else
  {
    v34 = [v311 reminder];
    if (v34 && (v35 = v34, v36 = [v34 remObjectID], v35, v36))
    {
      v37 = [v36 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v11 + 56))(v29, 0, 1, v310);
    }

    else
    {
      (*(v11 + 56))(v29, 1, 1, v310);
    }
  }

  v39 = [v311 account];
  if (!v39)
  {
    goto LABEL_17;
  }

  v40 = v39;
  v41 = [v39 remObjectID];

  v300 = v41;
  if (!v41)
  {
    goto LABEL_17;
  }

  v298 = v29;
  v299 = v16;
  sub_10018E470(v29, v24);
  v42 = v11;
  v43 = *(v11 + 48);
  v44 = v310;
  if (v43(v24, 1, v310) == 1)
  {

    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v29 = v298;
LABEL_17:
    v45 = v311;
    v46 = [v311 account];
    if (v46)
    {
      v47 = v46;
      v38 = 0xE900000000000029;
      v48 = v309;
    }

    else
    {
      v48 = v309;
      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_100941BB8);
      v50 = v48;
      v47 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        *(v52 + 4) = v50;
        *v53 = v48;
        v54 = v50;
        _os_log_impl(&_mh_execute_header, v47, v51, "REMAssignmentCDIngestor: cdAssignment.account is nil {cdAssignment.remObjectID: %@}", v52, 0xCu);
        sub_1000050A4(v53, &unk_100938E70, &unk_100797230);
      }

      v38 = 0xE700000000000000;
    }

    v55 = v307;

    if ((v55 & 1) != 0 && [v45 markedForDeletion])
    {

      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100006654(v56, qword_100941BB8);
      v57 = v48;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v48;
        v62 = v57;
        _os_log_impl(&_mh_execute_header, v58, v59, "REMAssignmentCDIngestor: cdAssignment.owningReminderIdentifier of this markedForDeletion assignment is nil {cdAssignment.remObjectID: %@}", v60, 0xCu);
        sub_1000050A4(v61, &unk_100938E70, &unk_100797230);
      }

      v38 = 0xE800000000000000;
    }

    else
    {
      v63 = [v45 reminder];
      if (v63)
      {
      }

      else
      {

        if (qword_100935EB0 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_100006654(v64, qword_100941BB8);
        v65 = v48;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v65;
          *v69 = v48;
          v70 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "REMAssignmentCDIngestor: cdAssignment.reminder is nil {cdAssignment.remObjectID: %@}", v68, 0xCu);
          sub_1000050A4(v69, &unk_100938E70, &unk_100797230);
        }

        swift_getKeyPath();
        sub_10030D838();
        v38 = v71;
      }
    }

    v72 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v74 = String._bridgeToObjectiveC()();

    [v72 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v74];

    swift_willThrow();
    goto LABEL_39;
  }

  v297 = v42;
  v77 = *(v42 + 32);
  v77(v299, v24, v44);
  v78 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v80 = [v78 objectIDWithUUID:isa];

  v81 = v311;
  v38 = [v311 status];
  if ((v308 & 1) == 0)
  {
    v97 = [v81 assignee];
    if (v97)
    {
      v98 = v97;
      v99 = v298;
      v87 = v299;
      v100 = v301;
    }

    else
    {
      v129 = v301;
      sub_10030E254(v81, &selRef_ckAssigneeIdentifier, "FETCH COREDATA assigneeIDFromCKAssigneeIdentifier() fetched sharee {uuid: %{public}s, result: %@, assignment: %s}", "FETCH COREDATA assigneeIDFromCKAssigneeIdentifier() sharee not found {uuid: %{public}s, assignment: %s}");
      v100 = v129;
      v99 = v298;
      if (v129)
      {

        (*(v297 + 8))(v299, v44);
LABEL_68:
        v75 = v99;
        goto LABEL_40;
      }

      v98 = v130;
      v87 = v299;
      if (!v130)
      {
        goto LABEL_78;
      }
    }

    v101 = [v98 remObjectID];
    if (v101)
    {
      v102 = v101;
      v103 = [objc_opt_self() isShareeActivelyParticipatingWithSharee:v98];
      v306 = v102;
      if ((v103 & 1) == 0)
      {
        if (qword_100935EB0 != -1)
        {
          swift_once();
        }

        v29 = v99;
        v167 = type metadata accessor for Logger();
        sub_100006654(v167, qword_100941BB8);
        v168 = v309;
        v169 = v309;
        v170 = v98;
        v171 = v80;
        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          *v174 = 138543874;
          *(v174 + 4) = v169;
          *(v174 + 12) = 2114;
          *(v174 + 14) = v171;
          *v175 = v168;
          v175[1] = v171;
          *(v174 + 22) = 512;
          v176 = v169;
          v177 = v171;
          *(v174 + 24) = [v170 status];

          _os_log_impl(&_mh_execute_header, v172, v173, "REMAssignmentCDIngestor: assignee status is disallowed {assignmentID: %{public}@, reminderID: %{public}@}, assignee.status: %hd", v174, 0x1Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        else
        {

          v172 = v170;
        }

        v180 = objc_opt_self();
        swift_getKeyPath();
        sub_10030D838();

        v38 = String._bridgeToObjectiveC()();

        [v180 nullifiedRelationshipErrorWithRelationshipName:v38];

        swift_willThrow();
        (*(v297 + 8))(v299, v310);
        goto LABEL_39;
      }

      v307 = v80;
      v104 = [v98 list];
      if (!v104)
      {
        goto LABEL_127;
      }

      v105 = v104;
      v106 = [v311 reminder];
      if (v106)
      {
        v107 = v106;
        v108 = [v106 list];

        if (v108)
        {
          v109 = [v105 remObjectID];
          v110 = [v108 remObjectID];
          v111 = v108;
          v112 = v110;
          v301 = v109;
          if (!v109)
          {

            if (!v112)
            {
              v115 = v102;
              v301 = v100;

              v85 = v310;
              v99 = v298;
              goto LABEL_70;
            }

            goto LABEL_126;
          }

          v296 = v111;
          if (v110)
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v295 = v38;
            v113 = v301;
            v114 = static NSObject.== infix(_:_:)();
            v38 = v295;
            LODWORD(v294) = v114;

            v99 = v298;
            if (v294)
            {
              v115 = v102;
              v301 = v100;

              v85 = v310;
              goto LABEL_70;
            }

LABEL_127:
            if (qword_100935EB0 != -1)
            {
              swift_once();
            }

            v230 = type metadata accessor for Logger();
            sub_100006654(v230, qword_100941BB8);
            v231 = v309;
            v232 = v309;
            v233 = v98;
            v234 = v311;
            v235 = Logger.logObject.getter();
            v236 = static os_log_type_t.error.getter();

            v237 = os_log_type_enabled(v235, v236);
            v308 = v233;
            if (!v237)
            {

              v249 = v299;
              v29 = v99;
LABEL_142:
              v261 = v306;
              v262 = objc_opt_self();
              swift_getKeyPath();
              sub_10030D838();

              v38 = String._bridgeToObjectiveC()();

              [v262 nullifiedRelationshipErrorWithRelationshipName:v38];

              swift_willThrow();
              (*(v297 + 8))(v249, v310);
LABEL_39:
              v75 = v29;
LABEL_40:
              sub_1000050A4(v75, &unk_100939D90, "8\n\r");
              return v38;
            }

            v238 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v311 = swift_slowAlloc();
            v312 = v311;
            *v238 = 138543874;
            *(v238 + 4) = v232;
            v305 = v239;
            *v239 = v231;
            *(v238 + 12) = 2082;
            v240 = v232;
            v241 = [v233 list];
            if (v241)
            {
              v242 = v241;
              v243 = [v241 remObjectID];
              if (v243)
              {
                v244 = v243;
                v245 = [v243 description];

                v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v248 = v247;

                goto LABEL_136;
              }
            }

            v248 = 0xE300000000000000;
            v246 = 7104878;
LABEL_136:
            v250 = sub_10000668C(v246, v248, &v312);

            *(v238 + 14) = v250;
            *(v238 + 22) = 2082;
            v251 = [v234 reminder];
            if (v251 && (v252 = v251, v253 = [v251 list], v252, v253))
            {
              v254 = [v253 remObjectID];
              v255 = 7104878;
              if (v254)
              {
                v256 = v254;
                v257 = [v254 description];

                v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v259 = v258;
              }

              else
              {

                v259 = 0xE300000000000000;
              }
            }

            else
            {
              v259 = 0xE300000000000000;
              v255 = 7104878;
            }

            v260 = sub_10000668C(v255, v259, &v312);

            *(v238 + 24) = v260;
            _os_log_impl(&_mh_execute_header, v235, v236, "REMAssignmentCDIngestor: assignee not belongs to the same list to the reminder's {assignmentID: %{public}@, candidateAssignee.list: %{public}s, assignment.reminder.list: %{public}s}", v238, 0x20u);
            sub_1000050A4(v305, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v29 = v298;
            v249 = v299;
            goto LABEL_142;
          }
        }
      }

      v112 = v105;
LABEL_126:

      v99 = v298;
      goto LABEL_127;
    }

LABEL_78:
    v155 = v99;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    sub_100006654(v156, qword_100941BB8);
    v157 = v309;
    v158 = v309;
    v159 = v80;
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v162 = 138543618;
      *(v162 + 4) = v158;
      *(v162 + 12) = 2114;
      *(v162 + 14) = v159;
      *v163 = v157;
      v163[1] = v159;
      v164 = v158;
      v165 = v159;
      _os_log_impl(&_mh_execute_header, v160, v161, "REMAssignmentCDIngestor: nullifiedRelationship assignee {assignmentID: %{public}@, reminderID: %{public}@}", v162, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v166 = objc_opt_self();
    swift_getKeyPath();
    sub_10030D838();

    v38 = String._bridgeToObjectiveC()();

    [v166 nullifiedRelationshipErrorWithRelationshipName:v38];

    swift_willThrow();
    (*(v297 + 8))(v87, v310);
    v75 = v155;
    goto LABEL_40;
  }

  v82 = [v81 ckAssigneeIdentifier];
  if (!v82)
  {
    v116 = v299;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v117 = v80;
    v118 = type metadata accessor for Logger();
    sub_100006654(v118, qword_100941BB8);
    v119 = v309;
    v120 = v309;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    v123 = os_log_type_enabled(v121, v122);
    v99 = v298;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v124 = 138412290;
      *(v124 + 4) = v120;
      *v125 = v119;
      v126 = v120;
      _os_log_impl(&_mh_execute_header, v121, v122, "REMAssignmentCDIngestor: cdAssignment.ckAssigneeIdentifier is nil {cdAssignment.remObjectID: %@}", v124, 0xCu);
      sub_1000050A4(v125, &unk_100938E70, &unk_100797230);
    }

    v127 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v128 = swift_getObjCClassFromMetadata();
    swift_getKeyPath();
    sub_10030D838();

    v38 = String._bridgeToObjectiveC()();

    [v127 unexpectedNilPropertyWithClass:v128 property:v38];

    swift_willThrow();
    (*(v297 + 8))(v116, v310);
    goto LABEL_68;
  }

  v83 = v38;
  v307 = v80;
  v84 = v82;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();
  v85 = v310;

  v86 = v43(v21, 1, v85);
  v87 = v299;
  if (v86 == 1)
  {
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
    v88 = v297;
    v89 = v298;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100006654(v90, qword_100941BB8);
    v91 = v309;
    v92 = v309;
    v38 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138412290;
      *(v94 + 4) = v92;
      *v95 = v91;
      v96 = v92;
      _os_log_impl(&_mh_execute_header, v38, v93, "REMAssignmentCDIngestor: Can't create UUID from ckAssigneeIdentifier {cdAssignment.remObjectID: %@}", v94, 0xCu);
      sub_1000050A4(v95, &unk_100938E70, &unk_100797230);
      v85 = v310;

      v88 = v297;
    }

    [objc_opt_self() unexpectedError];
    swift_willThrow();

    (*(v88 + 8))(v87, v85);
    v75 = v89;
    goto LABEL_40;
  }

  v131 = v77;
  v132 = v306;
  v131(v306, v21, v85);
  v133 = objc_opt_self();
  v134 = UUID._bridgeToObjectiveC()().super.isa;
  v115 = [v133 objectIDWithUUID:v134];

  (*(v297 + 8))(v132, v85);
  v99 = v298;
  v38 = v83;
LABEL_70:
  v296 = v38;
  v135 = v311;
  v136 = [v311 originator];
  v137 = v300;
  if (v136)
  {
    v138 = v136;
  }

  else
  {
    v178 = v301;
    sub_10030E254(v135, &selRef_ckOriginatorIdentifier, "FETCH COREDATA originatorIDFromCKOriginatorIdentifier() fetched sharee {uuid: %{public}s, result: %@, assignment: %s}", "FETCH COREDATA originatorIDFromCKOriginatorIdentifier() sharee not found {uuid: %{public}s, assignment: %s}");
    v301 = v178;
    if (v178)
    {

      (*(v297 + 8))(v87, v85);
      sub_1000050A4(v99, &unk_100939D90, "8\n\r");
      return v38;
    }

    v138 = v179;
    if (!v179)
    {
      goto LABEL_94;
    }
  }

  v139 = [v138 remObjectID];
  if (!v139)
  {

LABEL_94:
    v181 = v307;
    v140 = v115;
    v143 = v297;
    goto LABEL_155;
  }

  v140 = v115;
  if ((v308 & 1) == 0)
  {
    v308 = v139;
    LODWORD(v306) = [objc_opt_self() isShareeActivelyParticipatingWithSharee:v138];
    if ((v306 & 1) == 0)
    {
      v182 = v115;
      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v183 = type metadata accessor for Logger();
      sub_100006654(v183, qword_100941BB8);
      v184 = v138;
      v185 = v309;
      v186 = v309;
      v187 = v307;
      v188 = v184;
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *v191 = 138543874;
        *(v191 + 4) = v186;
        *(v191 + 12) = 2114;
        *(v191 + 14) = v187;
        *v192 = v185;
        v192[1] = v187;
        *(v191 + 22) = 512;
        v193 = v186;
        v194 = v187;
        v195 = [v188 status];

        *(v191 + 24) = v195;
        _os_log_impl(&_mh_execute_header, v189, v190, "REMAssignmentCDIngestor: originator status is disallowed {assignmentID: %{public}@, reminderID: %{public}@, originator.status: %hd}", v191, 0x1Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {

        v189 = v188;
      }

      v140 = v182;
      v99 = v298;
    }

    v202 = [v138 list];
    v143 = v297;
    if (!v202)
    {
      goto LABEL_117;
    }

    v203 = v202;
    v204 = [v311 reminder];
    if (v204 && (v205 = v204, v206 = [v204 list], v205, v206))
    {
      v207 = [v203 remObjectID];
      v208 = [v206 remObjectID];
      v209 = v208;
      if (v207)
      {
        if (v208)
        {
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v210 = static NSObject.== infix(_:_:)();

          v85 = v310;
          v99 = v298;
          if ((v210 & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_169:

          v137 = v300;
          v142 = v308;
          if (v306)
          {
            goto LABEL_75;
          }

          goto LABEL_154;
        }

        v209 = v203;
        v99 = v298;
      }

      else
      {

        v85 = v310;
        v99 = v298;
        if (!v209)
        {
          goto LABEL_169;
        }
      }
    }

    else
    {
      v209 = v203;
    }

LABEL_117:
    v306 = v140;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v211 = type metadata accessor for Logger();
    sub_100006654(v211, qword_100941BB8);
    v212 = v309;
    v213 = v309;
    v214 = v311;
    v215 = v138;
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.error.getter();
    v294 = v214;

    LODWORD(v295) = v217;
    v302 = v216;
    if (os_log_type_enabled(v216, v217))
    {
      v218 = v215;
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v312 = swift_slowAlloc();
      *v219 = 138543874;
      *(v219 + 4) = v213;
      *v220 = v212;
      *(v219 + 12) = 2080;
      v221 = v213;
      v293 = v218;
      v222 = [v218 list];
      v140 = v306;
      if (v222)
      {
        v223 = v222;
        v224 = [v222 remObjectID];
        if (v224)
        {
          v225 = v224;
          v226 = [v224 description];

          v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v229 = v228;

          goto LABEL_146;
        }
      }

      v229 = 0xE300000000000000;
      v227 = 7104878;
LABEL_146:
      v263 = sub_10000668C(v227, v229, &v312);

      *(v219 + 14) = v263;
      *(v219 + 22) = 2080;
      v264 = [v294 reminder];
      v292 = v220;
      if (v264)
      {
        v265 = v264;
        v266 = [v264 list];

        v143 = v297;
        v99 = v298;
        if (v266)
        {
          v267 = [v266 remObjectID];
          v268 = 7104878;
          if (v267)
          {
            v269 = v267;
            v270 = [v267 description];

            v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v272 = v271;

            v143 = v297;
          }

          else
          {

            v272 = 0xE300000000000000;
          }

          goto LABEL_153;
        }

        v272 = 0xE300000000000000;
      }

      else
      {
        v272 = 0xE300000000000000;
        v143 = v297;
        v99 = v298;
      }

      v268 = 7104878;
LABEL_153:
      v273 = sub_10000668C(v268, v272, &v312);

      *(v219 + 24) = v273;
      v274 = v302;
      _os_log_impl(&_mh_execute_header, v302, v295, "REMAssignmentCDIngestor: originator not belongs to the same list to the reminder's {cdAssignment.remObjectID: %{public}@, candidateOriginator.list: %s, assignment.reminder.list: %s}", v219, 0x20u);
      sub_1000050A4(v292, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v137 = v300;
LABEL_154:
      v181 = v307;
      goto LABEL_155;
    }

    v137 = v300;
    v140 = v306;
    v181 = v307;
LABEL_155:
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v275 = type metadata accessor for Logger();
    sub_100006654(v275, qword_100941BB8);
    v276 = v309;
    v201 = v181;
    v277 = v181;
    v278 = Logger.logObject.getter();
    v279 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v280 = 138543618;
      *(v280 + 4) = v276;
      *(v280 + 12) = 2114;
      *(v280 + 14) = v277;
      *v281 = v309;
      v281[1] = v277;
      v282 = v276;
      v283 = v277;
      _os_log_impl(&_mh_execute_header, v278, v279, "storage(from cdAssignment:): originator of this assignment was nullified {objectID: %{public}@, reminderID: %{public}@}", v280, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v137 = v300;

      v143 = v297;
    }

    v284 = [v311 assignedDate];
    if (v284)
    {
      v285 = v303;
      v286 = v284;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v154.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v304 + 8))(v285, v305);
    }

    else
    {
      v154.super.isa = 0;
    }

    v85 = v310;
    v200 = [objc_opt_self() nullifiedOriginatorAssignmentWithObjectID:v276 accountID:v137 reminderID:v277 assigneeID:v140 status:v296 assignedDate:v154.super.isa];
    v144 = 0;
    goto LABEL_163;
  }

  v141 = v139;

  v142 = v141;
  v143 = v297;
LABEL_75:
  v144 = v142;
  v145 = [v311 assignedDate];
  if (v145)
  {
    v146 = v302;
    v147 = v145;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v148 = v309;
    v149 = v309;
    v150 = v307;
    v151 = v307;
    v152 = v137;
    v153 = v140;
    v154.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v304 + 8))(v146, v305);
  }

  else
  {
    v148 = v309;
    v196 = v309;
    v150 = v307;
    v197 = v307;
    v198 = v137;
    v199 = v140;
    v154.super.isa = 0;
  }

  v200 = [objc_allocWithZone(REMAssignment) initWithObjectID:v148 accountID:v137 reminderID:v150 assigneeID:v140 originatorID:v144 status:v296 assignedDate:v154.super.isa];

  v201 = v150;
  v99 = v298;
LABEL_163:

  v38 = v200;
  v287 = [v311 assignee];
  v288 = v287;
  if (v287)
  {
  }

  [v38 set_debug_cdAssigneeLinked:v288 != 0];
  v289 = [v311 originator];
  v290 = v289;
  if (v289)
  {
  }

  [v38 set_debug_cdOriginatorLinked:v290 != 0];

  (*(v143 + 8))(v299, v85);
  sub_1000050A4(v99, &unk_100939D90, "8\n\r");
  return v38;
}

void sub_10031109C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date();
  v11 = *(*(v34 - 8) + 64);
  *&v13 = __chkstk_darwin(v34).n128_u64[0];
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 16);
  if (!v15)
  {
    return;
  }

  v16 = (a3 + 32);
  v17 = (v7 + 8);
  v32 = (v12 + 8);
  while (1)
  {
    v22 = *v16++;
    v21 = v22;
    if (v22 > 2)
    {
      if (v21 == 3)
      {
        v28 = [a1 assigneeID];
        v29 = [v28 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.uuidString.getter();
        (*v17)(v10, v6);
        v20.super.isa = String._bridgeToObjectiveC()();

        [a2 setCkAssigneeIdentifier:v20.super.isa];
      }

      else
      {
        if (v21 != 4 || ([a1 isOriginatorNullified] & 1) != 0)
        {
          goto LABEL_5;
        }

        v26 = [a1 originatorID];
        v27 = [v26 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.uuidString.getter();
        (*v17)(v10, v6);
        v20.super.isa = String._bridgeToObjectiveC()();

        [a2 setCkOriginatorIdentifier:v20.super.isa];
      }

      goto LABEL_4;
    }

    if (!v21)
    {
      v18 = [a1 objectID];
      v19 = [v18 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v17)(v10, v6);
      [a2 setIdentifier:v20.super.isa];
LABEL_4:

      goto LABEL_5;
    }

    if (v21 == 1)
    {
      v23 = [a1 assignedDate];
      if (v23)
      {
        v24 = v33;
        v25 = v23;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v20.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*v32)(v24, v34);
      }

      else
      {
        v20.super.isa = 0;
      }

      [a2 setAssignedDate:v20.super.isa];
      goto LABEL_4;
    }

    v30 = [a1 status];
    if (v30 < -32768)
    {
      break;
    }

    if (v30 >= 0x8000)
    {
      goto LABEL_23;
    }

    [a2 setStatus:v30];
LABEL_5:
    if (!--v15)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_1003114A0(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1007953F0;
      v8 = [a1 assigneeID];
    }

    else
    {
      if ([a1 isOriginatorNullified])
      {
        return _swiftEmptyArrayStorage;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1007953F0;
      v8 = [a1 originatorID];
    }

    v12 = v8;
    result = v7;
    *(v7 + 32) = v12;
  }

  else
  {
    if (a2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v3 = swift_allocObject();
      v4 = v3;
      *(v3 + 16) = xmmword_1007953F0;
      v5 = *(v2 + 24);
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v3 = swift_allocObject();
      v4 = v3;
      *(v3 + 16) = xmmword_1007953F0;
      v5 = *(v2 + 16);
    }

    *(v3 + 32) = v5;
    v9 = v5;
    return v4;
  }

  return result;
}

unint64_t sub_100311670()
{
  result = qword_100941DF0;
  if (!qword_100941DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941DF0);
  }

  return result;
}

unint64_t sub_1003116F8()
{
  result = qword_100941E08;
  if (!qword_100941E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941E08);
  }

  return result;
}

id sub_10031174C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v5 = type metadata accessor for Date();
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  __chkstk_darwin(v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v82 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        [objc_allocWithZone(NSNumber) initWithInteger:v13];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v82[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v10;
      }

      while (v10);
      v11 = v82;
    }

    v77 = v11;
    v15 = *(a1 + 8);
    if (v15)
    {
LABEL_7:
      v16 = *(v15 + 16);
      v17 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v82 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v18 = objc_opt_self();
        v19 = (v15 + 40);
        do
        {
          v20 = [v18 dayOfWeek:*(v19 - 1) weekNumber:*v19];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = v82[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v19 += 2;
          --v16;
        }

        while (v16);
        v17 = v82;
      }

      v22 = *(a1 + 16);
      if (v22)
      {
        goto LABEL_12;
      }

LABEL_18:
      v24 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v77 = 0;
    v15 = *(a1 + 8);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_12:
  v23 = *(v22 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v76 = v5;
    v82 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = (v22 + 32);
    do
    {
      v26 = *v25++;
      [objc_allocWithZone(NSNumber) initWithInteger:v26];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = v82[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v23;
    }

    while (v23);
    v24 = v82;
    v5 = v76;
  }

LABEL_19:
  v28 = *(a1 + 32);
  v72 = v17;
  if (v28)
  {
    v76 = 0;
  }

  else
  {
    v29 = *(a1 + 24);
    Date.init(timeIntervalSinceReferenceDate:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v76 = [objc_opt_self() recurrenceEndWithEndDate:isa];

    (*(v75 + 8))(v8, v5);
  }

  v31 = *(a1 + 40);
  v74 = *(a1 + 48);
  v75 = v31;
  v32 = *(a1 + 64);
  v73 = *(a1 + 56);
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = _swiftEmptyArrayStorage;
    if (v33)
    {
      v82 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v35 = (v32 + 32);
      do
      {
        v36 = *v35++;
        [objc_allocWithZone(NSNumber) initWithInteger:v36];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = v82[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v33;
      }

      while (v33);
      v34 = v82;
    }

    v38 = *(a1 + 72);
    if (v38)
    {
LABEL_28:
      v39 = *(v38 + 16);
      v40 = _swiftEmptyArrayStorage;
      if (v39)
      {
        v71 = v24;
        v82 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v41 = (v38 + 32);
        do
        {
          v42 = *v41++;
          [objc_allocWithZone(NSNumber) initWithInteger:v42];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v43 = v82[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v39;
        }

        while (v39);
        v40 = v82;
        v24 = v71;
      }

      v44 = *(a1 + 80);
      if (v44)
      {
        goto LABEL_33;
      }

LABEL_39:
      sub_100311E40(a1);
      v49 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v34 = 0;
    v38 = *(a1 + 72);
    if (v38)
    {
      goto LABEL_28;
    }
  }

  v40 = 0;
  v44 = *(a1 + 80);
  if (!v44)
  {
    goto LABEL_39;
  }

LABEL_33:
  v45 = *(v44 + 16);
  if (v45)
  {
    v71 = v24;
    v82 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v46 = (v44 + 32);
    do
    {
      v47 = *v46++;
      [objc_allocWithZone(NSNumber) initWithInteger:v47];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v48 = v82[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v45;
    }

    while (v45);
    sub_100311E40(a1);
    v49 = v82;
    v24 = v71;
  }

  else
  {
    sub_100311E40(a1);
    v49 = _swiftEmptyArrayStorage;
  }

LABEL_41:
  v50 = v77;
  if (v72)
  {
    sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
    v51.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v50)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v51.super.isa = 0;
    if (v77)
    {
LABEL_43:
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v52.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v34)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }
  }

  v52.super.isa = 0;
  if (v34)
  {
LABEL_44:
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v49)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_50:
  v53.super.isa = 0;
  if (v49)
  {
LABEL_45:
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v54.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v24)
    {
      goto LABEL_46;
    }

LABEL_52:
    v55.super.isa = 0;
    if (v40)
    {
      goto LABEL_47;
    }

LABEL_53:
    v56.super.isa = 0;
    goto LABEL_54;
  }

LABEL_51:
  v54.super.isa = 0;
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_46:
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v55.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!v40)
  {
    goto LABEL_53;
  }

LABEL_47:
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v56.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_54:
  v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v58 = v76;
  v69 = v54.super.isa;
  v70 = v55.super.isa;
  v68 = v52.super.isa;
  v78 = v55.super.isa;
  v59 = v54.super.isa;
  v60 = v52.super.isa;
  v61 = v51.super.isa;
  v67 = v51.super.isa;
  v63 = v79;
  v62 = v80;
  v64 = v81;
  v65 = [v57 initRecurrenceRuleWithObjectID:v79 accountID:v80 reminderID:v81 frequency:v74 interval:v73 firstDayOfTheWeek:v75 daysOfTheWeek:v67 daysOfTheMonth:v68 monthsOfTheYear:v53.super.isa weeksOfTheYear:v69 daysOfTheYear:v70 setPositions:v56.super.isa end:v76];

  return v65;
}

uint64_t sub_100311E94(uint64_t a1)
{
  v24[0] = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10031D8C4(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB90(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = swift_allocObject();
  v18 = v24[0];
  *(v17 + 16) = v24[1];
  *(v17 + 24) = v18;
  aBlock[4] = sub_10031D90C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EE090;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10031D8C4(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v21 = v25;
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v21, v22);
  (*(v26 + 8))(v10, v27);
}

void *sub_100312328(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v35 = v4;
    v36 = v5;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v11 = v35;
        v10 = v36;
        v12 = v37;
        sub_100411DBC(v35, v36, v37, a1);
        v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v14)
        {
          goto LABEL_43;
        }

        v15 = v13;
        v16 = v14;
        v34 = &type metadata for String;

        *&v33 = v15;
        *(&v33 + 1) = v16;
        v17 = v32;
        v38 = v32;
        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          sub_100010D04((v18 > 1), v19 + 1, 1);
          v17 = v38;
        }

        v17[2] = v19 + 1;
        v32 = v17;
        sub_100005EE0(&v33, &v17[4 * v19 + 4]);
        if (v31)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_100941FA8, &qword_1007A2418);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(&v33, 0);
          if (v7 == v2)
          {
LABEL_33:
            sub_100010E34(v35, v36, v37);
            return v32;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v20 = 1 << *(a1 + 32);
          if (v11 >= v20)
          {
            goto LABEL_37;
          }

          v21 = v11 >> 6;
          v22 = *(a1 + 56 + 8 * (v11 >> 6));
          if (((v22 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_39;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (a1 + 64 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v11, v10, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_32;
              }
            }

            sub_100010E34(v11, v10, 0);
          }

LABEL_32:
          v29 = *(a1 + 36);
          v35 = v20;
          v36 = v29;
          v37 = 0;
          if (v7 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v30._object = 0x80000001007EC120;
    v30._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v30);
    sub_1000F5104(&qword_1009431E0, &qword_1007A2410);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100312738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = type metadata accessor for UnmigrateRequest(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for UUID();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10031512C();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 codeServiceWithName:v13 databaseScope:2];

  type metadata accessor for TantorMigrationAPIAsyncOperationClient();
  inited = swift_initStackObject();
  v56 = v14;
  *(inited + 16) = v14;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100006654(v15, qword_100941E18);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = v16;
    v22 = v21;
    v57 = v21;
    *v20 = 136446210;
    v23 = [*(v3 + 24) uuid];
    v24 = v52;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v3;
    v26 = UUID.uuidString.getter();
    v27 = v8;
    v28 = a2;
    v30 = v29;
    (*(v53 + 8))(v24, v54);
    v31 = v26;
    v3 = v25;
    v32 = sub_10000668C(v31, v30, &v57);
    a2 = v28;
    v8 = v27;

    *(v20 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "Setting up unmigration service call {accountID: %{public}s}", v20, 0xCu);
    sub_10000607C(v22);

    v5 = v50;
  }

  *v8 = 0;
  v33 = v8 + *(v5 + 20);
  UnknownStorage.init()();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v57 = v37;
    *v36 = 136446210;
    v38 = [*(v3 + 24) uuid];
    v39 = v52;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*(v53 + 8))(v39, v54);
    v43 = sub_10000668C(v40, v42, &v57);

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Making request to inverness for unmigration {accountID: %{public}s}", v36, 0xCu);
    sub_10000607C(v37);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v51;
  *(v44 + 24) = a2;

  v45 = TantorMigrationAPIAsyncOperationClient.unmigrate(_:completion:)(v8);

  v46 = sub_1003152A4();
  sub_10031D370(v45, v46, v47, &unk_1008EDFC8);

  return sub_10031D85C(v8, type metadata accessor for UnmigrateRequest);
}

void sub_100312C34(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for REMMigrationResultState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 48);
  os_unfair_lock_lock(v15);
  *(v5 + 91) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v5 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1003667AC(0, v17[2] + 1, 1, v17);
    *(v5 + 40) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1003667AC((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_10031D7A0;
  v21[5] = v16;
  *(v5 + 40) = v17;
  swift_endAccess();
  if ((*(v5 + 89) & 1) == 0)
  {
    sub_10031571C(sub_10031D994, v5);
  }

  v22 = *(v5 + 32);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v5 + 56);
      v24 = *(v5 + 64);
      if (v24 == 255)
      {
        (*(v11 + 104))(v14, enum case for REMMigrationResultState.complete(_:), v10);
        REMMigrationResultState.rawValue.getter();
        (*(v11 + 8))(v14, v10);
        v30 = objc_allocWithZone(REMMigrationResult);
        v31 = String._bridgeToObjectiveC()();

        v32 = String._bridgeToObjectiveC()();
        v25 = [v30 initWithState:v31 IsObserver:0 timeElapsed:0 listsMigrated:0 remindersMigrated:v32 log:0.0];

        v33 = *(v5 + 56);
        *(v5 + 56) = v25;
        LOBYTE(v32) = *(v5 + 64);
        *(v5 + 64) = 0;
        v34 = v25;
        sub_10031D788(v33, v32);
        v26 = 0;
      }

      else
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 64);
      }

      sub_10031D7D4(v23, v24);
      sub_10031D7D4(v23, v24);
      sub_100317644(v25, v26 & 1);
      sub_100067078(v25, v26 & 1);
      v35 = v26 & 1;
      goto LABEL_24;
    }
  }

  else if (*(v5 + 32))
  {
    goto LABEL_25;
  }

  if (v22 == 3 && (a2 & 1) == 0)
  {
    v27 = *(v5 + 56);
    v28 = *(v5 + 64);
    if (v28 == 255)
    {
      v36 = objc_opt_self();
      v37 = String._bridgeToObjectiveC()();
      v25 = [v36 internalErrorWithDebugDescription:v37];

      v38 = *(v5 + 56);
      *(v5 + 56) = v25;
      v39 = *(v5 + 64);
      v29 = 1;
      *(v5 + 64) = 1;
      v40 = v25;
      sub_10031D788(v38, v39);
    }

    else
    {
      v25 = *(v5 + 56);
      v29 = *(v5 + 64);
    }

    sub_10031D7D4(v27, v28);
    sub_10031D7D4(v27, v28);
    sub_100317644(v25, v29 & 1);
    sub_100067078(v25, v29 & 1);
    v35 = v29 & 1;
LABEL_24:
    sub_100067078(v25, v35);
    goto LABEL_25;
  }

  *(v5 + 32) = 1;
  if (*(v5 + 88) == 1)
  {
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    sub_10031571C(sub_10031D990, v5);
    sub_100316840();
  }

  sub_100314078(a2 & 1);
LABEL_25:
  os_unfair_lock_unlock(v15);
}

uint64_t sub_100313098()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941E18);
  v1 = sub_100006654(v0, qword_100941E18);
  if (qword_100936438 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100313160()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003131D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100313218@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10031D598(*a1);
  *a2 = result;
  return result;
}

void *sub_100313250()
{
  result = sub_10038EB8C(_swiftEmptyArrayStorage);
  off_100941E30 = result;
  return result;
}

_DWORD *sub_100313278()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_100941E38 = result;
  return result;
}

void sub_1003132A4(void *a1)
{
  v2 = v1;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100941E18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resume all uncompleted migration processes", v7, 2u);
  }

  if (qword_100935EC8 != -1)
  {
    swift_once();
  }

  v8 = qword_100941E38;
  os_unfair_lock_lock(qword_100941E38);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 newBackgroundContextWithAuthor:v9];

  KeyPath = swift_getKeyPath();
  v12 = sub_100392664(KeyPath, 1);

  v13 = swift_getKeyPath();
  v14 = sub_100392678(v13, 0);

  sub_1000F5104(&qword_100941FA0, &unk_1007A2400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = v14;
  v17 = v12;
  v18 = sub_10000C2B0(inited);
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v18;
  v19[4] = v2;
  v19[5] = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10031D94C;
  *(v20 + 24) = v19;
  v25[4] = sub_1000FDA90;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_10000F160;
  v25[3] = &unk_1008EE108;
  v21 = _Block_copy(v25);
  v22 = v18;
  v23 = a1;

  v24 = v10;

  [v24 performBlockAndWait:v21];
  _Block_release(v21);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v8);
  }
}

void sub_1003135FC(void (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v72 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v60 - v12;
  __chkstk_darwin(v11);
  v15 = &v60 - v14;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100941F60, off_1008D41B0);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  [v17 setPredicate:a2];
  v74 = &_swiftEmptySetSingleton;

  sub_1003928CC(v19);

  sub_100312328(v74);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v23 = v70;
  v66 = v15;
  v67 = v13;
  v65 = v10;

  if (v22 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v69;
  v27 = v66;
  v28 = v67;
  if (!v25)
  {
LABEL_25:

    return;
  }

  if (v25 >= 1)
  {
    v29 = 0;
    v30 = v22 & 0xC000000000000001;
    v31 = (v23 + 8);
    v72 = (v23 + 16);
    *&v24 = 136446210;
    v60 = v24;
    v63 = v25;
    v64 = v22;
    v62 = v22 & 0xC000000000000001;
    v71 = (v23 + 8);
    do
    {
      if (v30)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v22 + 8 * v29 + 32);
      }

      v33 = v32;
      v34 = [v32 accountIdentifier];
      if (v34)
      {
        v35 = v34;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_100935EC0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (*(off_100941E30 + 2) && (sub_100363F20(v27), (v36 & 1) != 0))
        {
          swift_endAccess();

          (*v31)(v27, v26);
        }

        else
        {
          swift_endAccess();
          v37 = *v72;
          (*v72)(v28, v27, v26);
          sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
          v38 = v27;
          v39 = [swift_getObjCClassFromMetadata() cdEntityName];
          if (!v39)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = String._bridgeToObjectiveC()();
          }

          v40 = objc_allocWithZone(REMObjectID);
          v41 = UUID._bridgeToObjectiveC()().super.isa;
          v42 = [v40 initWithUUID:v41 entityName:v39];

          v70 = *v71;
          (v70)(v28, v26);
          type metadata accessor for RDMigrationClient();
          swift_allocObject();
          v43 = v68;
          v44 = sub_10031C608(v42, v43);

          sub_100313FF4(v33);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = off_100941E30;
          off_100941E30 = 0x8000000000000000;
          sub_1002C86E0(v44, v38, isUniquelyReferenced_nonNull_native);
          off_100941E30 = v73;
          swift_endAccess();
          if (qword_100935EB8 != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          sub_100006654(v46, qword_100941E18);
          v47 = v65;
          v37(v65, v38, v26);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v74 = v51;
            *v50 = v60;
            v52 = UUID.uuidString.getter();
            v54 = v53;
            v55 = v47;
            v56 = v71;
            v61 = v33;
            v57 = v70;
            (v70)(v55, v69);
            v58 = sub_10000668C(v52, v54, &v74);

            *(v50 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v48, v49, "Wake up migration client {accountID: %{public}s}", v50, 0xCu);
            sub_10000607C(v51);
            v26 = v69;

            v31 = v56;

            v59 = v57;
            v33 = v61;
          }

          else
          {

            v59 = v70;
            v31 = v71;
            (v70)(v47, v26);
          }

          v25 = v63;
          sub_100314078(0);

          v27 = v66;
          (v59)(v66, v26);
          v28 = v67;
          v22 = v64;
          v30 = v62;
        }
      }

      else
      {
      }

      ++v29;
    }

    while (v25 != v29);
    goto LABEL_25;
  }

  __break(1u);
}