uint64_t sub_1000871AC(uint64_t a1, unint64_t a2)
{
  v195 = a2;
  v190 = a1;
  v168 = type metadata accessor for OSSignpostError();
  v172 = *(v168 - 8);
  v3 = *(v172 + 64);
  __chkstk_darwin(v168);
  v167 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for UUID();
  v5 = *(v197 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v197);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for OSSignpostID();
  v175 = *(v174 - 8);
  v9 = v175[8];
  v10 = __chkstk_darwin(v174);
  v173 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - v13;
  __chkstk_darwin(v12);
  v16 = &v166 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = v2;
  v22 = *(&v2->isa + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  v26 = sub_1000144F0(v25, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v27 = v174;
  v28 = sub_1000144F0(v174, qword_1001387B0);
  v29 = v175[2];
  v29(v16, v28, v27);
  v171 = v26;
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "State refresh", "", v32, 2u);
  }

  v34 = v174;
  v29(v14, v16, v174);
  v35 = type metadata accessor for OSSignpostIntervalState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v169 = OSSignpostIntervalState.init(id:isOpen:)();
  v38 = v175[1];
  ++v175;
  v170 = v38;
  v38(v16, v34);
  UUID.init()();
  v189 = UUID.uuidString.getter();
  v196 = v39;
  (*(v5 + 8))(v8, v197);
  v40 = swift_allocObject();
  *(v40 + 16) = _swiftEmptyArrayStorage;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v42 = swift_allocObject();
  *(v42 + 16) = &_swiftEmptySetSingleton;
  v177 = type metadata accessor for StateManagerWrapper();
  v43 = swift_allocObject();
  *(v43 + 16) = v194;
  *(v43 + 24) = &off_100129F40;

  v14 = sub_1000C5A64(v43, v41, v42, v40);

  if (v14)
  {
    swift_beginAccess();
    v44 = *(v40 + 16);

    v182 = sub_10008DD24(v45);

    v202 = &_swiftEmptySetSingleton;
    v5 = v195;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = sub_1000144F0(v46, qword_10014E980);
    v8 = v196;

    v197 = v47;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_1000E3AF8(v189, v196, &v200);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v48, v49, "State refresh (id: %s, reason: %s): starting", v50, 0x16u);
      swift_arrayDestroy();

      v8 = v196;
    }

    v16 = v182;
    v51 = swift_allocObject();
    *(v51 + 16) = v194;
    *(v51 + 24) = &off_100129F40;

    sub_1000E402C(&v200, v51);

    if (v16 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v53 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_14:
        v54 = 0;
        v55 = v16 & 0xC000000000000001;
        v179 = v16 & 0xFFFFFFFFFFFFFF8;
        v178 = v16 + 32;
        *&v52 = 136315650;
        v176 = v52;
        *&v52 = 136315906;
        v186 = v52;
        v181 = v53;
        v180 = v16 & 0xC000000000000001;
        while (1)
        {
          if (v55)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v54 >= *(v179 + 16))
            {
              goto LABEL_103;
            }

            v14 = *(v178 + 8 * v54);

            v56 = __OFADD__(v54++, 1);
            if (v56)
            {
              goto LABEL_102;
            }
          }

          v57 = v202;
          if ((v202 & 0xC000000000000001) != 0)
          {

            v58 = __CocoaSet.contains(_:)();
            v59 = v14;

            if (v58)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v54 == v53)
            {
              break;
            }
          }

          else
          {
            if (!*(v202 + 16))
            {
              goto LABEL_15;
            }

            v89 = *(v202 + 40);
            Hasher.init(_seed:)();
            v90 = *(v14 + 16);
            Hasher._combine(_:)(v90);
            v91 = Hasher._finalize()();
            v92 = -1 << *(v57 + 32);
            v93 = v91 & ~v92;
            if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
            {
              goto LABEL_15;
            }

            v59 = v14;
            v94 = ~v92;
            while (*(*(*(v57 + 48) + 8 * v93) + 16) != v90)
            {
              v93 = (v93 + 1) & v94;
              if (((*(v57 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v184 = v54;
            v14 = *(v59 + 16);
            v60 = *(v59 + 24);
            v183 = v59;
            swift_unknownObjectRetain_n();

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = v8;
              v64 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v64 = v176;
              *(v64 + 4) = sub_1000E3AF8(v189, v63, &v200);
              *(v64 + 12) = 2080;
              *(v64 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v64 + 22) = 2080;
              swift_getObjectType();
              v65 = sub_1000C5A1C();
              v67 = sub_1000E3AF8(v65, v66, &v200);

              *(v64 + 24) = v67;
              _os_log_impl(&_mh_execute_header, v61, v62, "State refresh (id: %s, reason: %s): Notifying %s of state update", v64, 0x20u);
              swift_arrayDestroy();
            }

            v16 = v14;
            ObjectType = swift_getObjectType();
            v69 = *(v60 + 40);
            v193 = ObjectType;
            v70 = v69(ObjectType, v60);
            v191 = v60;
            if (v70)
            {
              v71 = v70;
              v8 = v196;

              swift_unknownObjectRetain();
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v74 = os_log_type_enabled(v72, v73);
              v185 = v16;
              if (v74)
              {
                LODWORD(v192) = v73;
                v194 = v72;
                v75 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                v199 = v187;
                *v75 = v186;
                *(v75 + 4) = sub_1000E3AF8(v189, v8, &v199);
                *(v75 + 12) = 2080;
                *(v75 + 14) = sub_1000E3AF8(v190, v5, &v199);
                *(v75 + 22) = 2080;
                v76 = sub_1000C5A1C();
                v78 = sub_1000E3AF8(v76, v77, &v199);

                *(v75 + 24) = v78;
                v188 = v75;
                *(v75 + 32) = 2080;
                v79 = *(v71 + 16);
                if (v79)
                {
                  v198 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v79, 0);
                  v80 = v198;
                  v81 = (v71 + 40);
                  do
                  {
                    v82 = *(v81 - 1);
                    v83 = *v81;
                    v200 = 538976288;
                    v201 = 0xE400000000000000;

                    v84._countAndFlagsBits = v82;
                    v84._object = v83;
                    String.append(_:)(v84);

                    v86 = v200;
                    v85 = v201;
                    v198 = v80;
                    v16 = v80[2];
                    v87 = v80[3];
                    if (v16 >= v87 >> 1)
                    {
                      sub_1000635A4((v87 > 1), v16 + 1, 1);
                      v80 = v198;
                    }

                    v80[2] = v16 + 1;
                    v88 = &v80[2 * v16];
                    v88[4] = v86;
                    v88[5] = v85;
                    v81 += 2;
                    --v79;
                  }

                  while (v79);

                  v5 = v195;
                  v8 = v196;
                }

                else
                {

                  v80 = _swiftEmptyArrayStorage;
                }

                v200 = v80;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
                v101 = BidirectionalCollection<>.joined(separator:)();
                v103 = v102;

                v104 = sub_1000E3AF8(v101, v103, &v199);

                v105 = v188;
                *(v188 + 34) = v104;
                v106 = v194;
                _os_log_impl(&_mh_execute_header, v194, v192, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v105, 0x2Au);
                swift_arrayDestroy();

                v14 = v177;
                v60 = v191;
              }

              else
              {

                v14 = v177;
              }

              v107 = (*(v60 + 16))(v193, v60);
              v108 = *(v107 + 16);
              if (v108)
              {
                v200 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v109 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v107 + v109);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v16 = *(v200 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v109 += 16;
                  --v108;
                }

                while (v108);

                v110 = v200;
                v8 = v196;
                if (!(v200 >> 62))
                {
LABEL_52:
                  v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v111)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v110 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v111 = _CocoaArrayWrapper.endIndex.getter();
              if (!v111)
              {
                goto LABEL_68;
              }

LABEL_53:
              v192 = v110;
              v194 = v111;
              if ((v110 & 0xC000000000000001) != 0)
              {
                v16 = 0;
                while (1)
                {
                  while (1)
                  {
                    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v56 = __OFADD__(v16++, 1);
                    if (v56)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v14 = v112;
                    v113 = v202;
                    if ((v202 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v202 + 16))
                    {
                      goto LABEL_65;
                    }

                    v115 = *(v202 + 40);
                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v14 + 16));
                    v116 = Hasher._finalize()();
                    v117 = -1 << *(v113 + 32);
                    v118 = v116 & ~v117;
                    if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v119 = ~v117;
                    while (*(*(*(v113 + 48) + 8 * v118) + 16) != *(v14 + 16))
                    {
                      v118 = (v118 + 1) & v119;
                      if (((*(v113 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v16 == v111)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v114 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v114)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v120 = Logger.logObject.getter();
                  v121 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v120, v121))
                  {
                    v122 = swift_slowAlloc();
                    v200 = swift_slowAlloc();
                    *v122 = v186;
                    *(v122 + 4) = sub_1000E3AF8(v189, v8, &v200);
                    *(v122 + 12) = 2080;
                    *(v122 + 14) = sub_1000E3AF8(v190, v195, &v200);
                    *(v122 + 22) = 2080;
                    v123 = sub_1000C5A1C();
                    v125 = sub_1000E3AF8(v123, v124, &v200);

                    *(v122 + 24) = v125;
                    *(v122 + 32) = 2080;
                    v126 = *(v14 + 16);
                    v127 = *(v14 + 24);
                    swift_getObjectType();
                    v128 = sub_1000C5A1C();
                    v130 = sub_1000E3AF8(v128, v129, &v200);

                    *(v122 + 34) = v130;
                    v8 = v196;
                    _os_log_impl(&_mh_execute_header, v120, v121, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v122, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v195;
                  }

                  sub_1000E402C(&v200, v14);

                  v111 = v194;
                  if (v16 == v194)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v188 = v110 & 0xFFFFFFFFFFFFFF8;
              v187 = v110 + 32;
              while (2)
              {
                if (v8 >= *(v188 + 16))
                {
                  goto LABEL_101;
                }

                v16 = *(v187 + 8 * v8);
                v131 = v202;
                if ((v202 & 0xC000000000000001) != 0)
                {
                  v132 = *(v187 + 8 * v8);
                  swift_retain_n();
                  v133 = __CocoaSet.contains(_:)();

                  if (v133)
                  {
                  }

                  else
                  {
LABEL_85:
                    v139 = v5;
                    v140 = v196;

                    swift_unknownObjectRetain();

                    v14 = Logger.logObject.getter();
                    v141 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v14, v141))
                    {
                      v142 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *v142 = v186;
                      *(v142 + 4) = sub_1000E3AF8(v189, v140, &v200);
                      *(v142 + 12) = 2080;
                      *(v142 + 14) = sub_1000E3AF8(v190, v139, &v200);
                      *(v142 + 22) = 2080;
                      v143 = sub_1000C5A1C();
                      v145 = sub_1000E3AF8(v143, v144, &v200);

                      *(v142 + 24) = v145;
                      *(v142 + 32) = 2080;
                      v146 = *(v16 + 16);
                      v147 = *(v16 + 24);
                      swift_getObjectType();
                      v148 = sub_1000C5A1C();
                      v150 = sub_1000E3AF8(v148, v149, &v200);

                      *(v142 + 34) = v150;
                      v5 = v195;
                      _os_log_impl(&_mh_execute_header, v14, v141, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v142, 0x2Au);
                      swift_arrayDestroy();

                      v111 = v194;
                    }

                    else
                    {

                      v5 = v139;
                    }

                    sub_1000E402C(&v200, v16);
                  }
                }

                else
                {
                  if (!*(v202 + 16) || (v134 = *(v202 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(*(v16 + 16)), v135 = Hasher._finalize()(), v136 = -1 << *(v131 + 32), v137 = v135 & ~v136, ((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v138 = ~v136;
                  while (*(*(*(v131 + 48) + 8 * v137) + 16) != *(v16 + 16))
                  {
                    v137 = (v137 + 1) & v138;
                    if (((*(v131 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v111)
                {
                  swift_unknownObjectRelease();

                  v8 = v196;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v196;

            swift_unknownObjectRetain();
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *v97 = v176;
              *(v97 + 4) = sub_1000E3AF8(v189, v196, &v200);
              *(v97 + 12) = 2080;
              *(v97 + 14) = sub_1000E3AF8(v190, v5, &v200);
              *(v97 + 22) = 2080;
              v98 = sub_1000C5A1C();
              v100 = sub_1000E3AF8(v98, v99, &v200);

              *(v97 + 24) = v100;
              _os_log_impl(&_mh_execute_header, v95, v96, "State refresh (id: %s, reason: %s): %s did not update state", v97, 0x20u);
              swift_arrayDestroy();

              v8 = v196;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v16 = v182;
            v53 = v181;
            v54 = v184;
            v55 = v180;
            if (v184 == v181)
            {
              break;
            }
          }
        }
      }
    }

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v153 = 136315394;
      v154 = sub_1000E3AF8(v189, v8, &v200);

      *(v153 + 4) = v154;
      *(v153 + 12) = 2080;
      *(v153 + 14) = sub_1000E3AF8(v190, v5, &v200);
      _os_log_impl(&_mh_execute_header, v151, v152, "State refresh (id: %s, reason: %s): completed", v153, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v155 = v172;
    v156 = v173;
    v157 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v158 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v159 = v167;
      checkForErrorAndConsumeState(state:)();

      v160 = v168;
      if ((*(v155 + 88))(v159, v168) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v161 = "[Error] Interval already ended";
      }

      else
      {
        (*(v155 + 8))(v159, v160);
        v161 = "";
      }

      v162 = swift_slowAlloc();
      *v162 = 0;
      v163 = v173;
      v164 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v157, v158, v164, "State refresh", v161, v162, 2u);
      v156 = v163;
    }

    return v170(v156, v174);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100088B34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_10008E950;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_10012A018;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10008E840(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_100088E18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return sub_1000871AC(0xD00000000000001BLL, 0x80000001001085C0);
}

uint64_t sub_100088EF0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests;
    swift_beginAccess();
    result = *(v0 + v9);
    *(v0 + v9) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100089030()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  if (v3)
  {
    v4 = v2[1];

    return v3;
  }

  if (qword_100133AE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000144F0(v5, qword_10014E9E0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37[0] = v9;
    *v8 = 136315138;
    v10 = URL.path.getter();
    v12 = sub_1000E3AF8(v10, v11, v37);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loading approvals database from %s", v8, 0xCu);
    sub_100003C90(v9);
  }

  v13 = *sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(v37);
  v14 = v37[4];
  sub_100003C4C(v37, v37[3]);
  v15 = URL.path.getter();
  v16 = (*(v14 + 16))(v15);
  v18 = v17;

  sub_100003C90(v37);
  if (v18 >> 60 != 15)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Loading approvals database, decoding data", v31, 2u);
    }

    v32 = type metadata accessor for PropertyListDecoder();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10008E894();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100014528(v16, v18);

    v3 = v37[0];
    v35 = v37[1];
    v36 = *v2;
    *v2 = v37[0];
    v2[1] = v35;

    return v3;
  }

  v19 = errno.getter();
  result = strerror(v19);
  if (result)
  {
    v21 = String.init(cString:)();
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315138;
      v28 = sub_1000E3AF8(v21, v23, v37);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "contentsOfFile failed to read approvals database: %s", v26, 0xCu);
      sub_100003C90(v27);
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_100089554()
{
  v2 = v0;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v434 = &v420 - v5;
  v433 = type metadata accessor for DriverBinEntry();
  v436 = *(v433 - 8);
  v6 = *(v436 + 64);
  v7 = __chkstk_darwin(v433);
  v447 = &v420 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v435 = &v420 - v9;
  v10 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v460 = &v420 - v12;
  v13 = type metadata accessor for URL();
  v438 = *(v13 - 8);
  v14 = *(v438 + 64);
  v15 = __chkstk_darwin(v13);
  v428 = &v420 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v432 = &v420 - v18;
  v19 = __chkstk_darwin(v17);
  v427 = &v420 - v20;
  v21 = __chkstk_darwin(v19);
  v426 = &v420 - v22;
  v23 = __chkstk_darwin(v21);
  v425 = &v420 - v24;
  v25 = __chkstk_darwin(v23);
  v431 = &v420 - v26;
  v27 = __chkstk_darwin(v25);
  v452 = &v420 - v28;
  v29 = __chkstk_darwin(v27);
  v443 = &v420 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v420 - v32;
  __chkstk_darwin(v31);
  v469 = (&v420 - v34);
  v35 = type metadata accessor for LookupSpec();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = &v420 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_100089030();
  v473 = _swiftEmptyArrayStorage;
  v474 = 0;
  v442 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager;
  if (!*(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager))
  {
    goto LABEL_373;
  }

  v39 = sub_100048948();
  v41 = v40;

  v42 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager);
  if (!v42)
  {
LABEL_374:
    __break(1u);
  }

  v43 = *(*(v42 + 56) + 656);

  os_unfair_lock_lock((v43 + 72));
  v44 = *(v43 + 32);
  v475[0] = *(v43 + 16);
  v475[1] = v44;
  v475[2] = *(v43 + 48);
  v476 = *(v43 + 64);
  sub_100013848(v475, &v490);
  os_unfair_lock_unlock((v43 + 72));

  swift_storeEnumTagMultiPayload();
  v45 = sub_100054F6C(v38, 0, 0);
  sub_1000138A4(v475);
  sub_10008E6A8(v38, type metadata accessor for LookupSpec);
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v47 = sub_10008101C(v39);
  *&v464 = 0;
  v48 = sub_1000EB530(v47);

  if (v46 >> 62)
  {
LABEL_343:
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v429 = v41;
  v451 = v2;
  v461 = v13;
  v439 = v39;
  v467 = v48;
  v448 = v46;
  if (!v49)
  {
    v446 = 0x80000001001084D0;
    v463 = _swiftEmptyArrayStorage;
    goto LABEL_80;
  }

  v41 = 0;
  v440 = v46 + 32;
  v441 = v46 & 0xFFFFFFFFFFFFFF8;
  v455 = (v438 + 56);
  v456 = v46 & 0xC000000000000001;
  v468 = (v438 + 16);
  v454 = (v438 + 48);
  v466 = (v48 + 56);
  v1 = v438 + 8;
  v462 = 0x8000000100104280;
  v444 = "Pending Requests ";
  *&v445 = v438 + 32;
  v446 = 0x80000001001084D0;
  v450 = (v457 + 64);
  v463 = _swiftEmptyArrayStorage;
  *(&v50 + 1) = 0xF000000000000000;
  v449 = xmmword_1000F9530;
  *&v50 = 136315394;
  v430 = v50;
  v2 = v460;
  v39 = v469;
  v453 = v49;
  do
  {
    if (v456)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v63 = __OFADD__(v41++, 1);
      if (v63)
      {
        goto LABEL_337;
      }
    }

    else
    {
      if (v41 >= *(v441 + 16))
      {
        goto LABEL_339;
      }

      v62 = *(v440 + 8 * v41);

      v63 = __OFADD__(v41++, 1);
      if (v63)
      {
        goto LABEL_337;
      }
    }

    sub_1000138F8(*(v62 + 24) + 24, &v490);
    v465 = v62;
    if (BYTE8(v492))
    {
      if (BYTE8(v492) == 1)
      {
        (*v468)(v2, v490._countAndFlagsBits + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v13);

        (*v455)(v2, 0, 1, v13);
      }

      else
      {
        (*v455)(v2, 1, 1, v13);
        sub_100013954(&v490);
      }
    }

    else
    {
      sub_100009F34(&v490._countAndFlagsBits, &v484);
      v64 = *(&v485 + 1);
      v65 = v486;
      sub_100003C4C(&v484, *(&v485 + 1));
      (*(v65 + 64))(v64, v65);
      (*v455)(v2, 0, 1, v13);
      sub_100003C90(&v484._countAndFlagsBits);
    }

    if ((*v454)(v2, 1, v13) == 1)
    {
      sub_10000A184(v2, &unk_1001389D0, &qword_1000F4F60);
LABEL_35:
      v79 = *(*(v465 + 24) + 16);
      if (qword_100133A50 != -1)
      {
        swift_once();
      }

      v80 = *(v79 + 16);
      v458 = *algn_10014E8C8;
      v459 = qword_10014E8C0;
      if (v80 && (v81 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v82 & 1) != 0) && (sub_10000B430(*(v79 + 56) + 32 * v81, &v490), (swift_dynamicCast() & 1) != 0))
      {
        object = v484._object;
        countAndFlagsBits = v484._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0xD000000000000014;
        object = v462;
      }

      v85 = *(v457 + 2);
      for (i = v450; v85; --v85)
      {
        v102 = *(i - 1);
        v101 = *i;
        if (*(i - 4) == countAndFlagsBits && *(i - 3) == object)
        {
          if (v102 >> 60 == 15)
          {
            goto LABEL_59;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v102 >> 60 == 15)
        {
LABEL_59:

          v13 = v461;
          v39 = v469;
          goto LABEL_60;
        }

        i = (i + 40);
      }

      v490._countAndFlagsBits = 0;
      v490._object = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v87._countAndFlagsBits = 0xD000000000000017;
      v87._object = (v444 | 0x8000000000000000);
      String.append(_:)(v87);
      v484._countAndFlagsBits = v465;
      type metadata accessor for RealizedInfo(0);
      _print_unlocked<A, B>(_:_:)();
      v88._countAndFlagsBits = 0xD00000000000001BLL;
      v88._object = v446;
      String.append(_:)(v88);
      if (qword_100133A30 != -1)
      {
        swift_once();
      }

      v89 = __chkstk_darwin(off_100135B38);
      v75 = v464;
      v90 = sub_10006573C(v89, sub_10008E964);
      *&v464 = v75;
      v91 = -1 << *(v90 + 32);
      v92 = _HashTable.startBucket.getter();
      v13 = v461;
      v39 = v469;
      if (v92 == 1 << *(v90 + 32))
      {

        __break(1u);
LABEL_367:
        __break(1u);
        goto LABEL_368;
      }

      v93 = sub_10008DF38(&v484, v92, *(v90 + 36), 0, v90);
      v95 = v94;

      v96._countAndFlagsBits = v93;
      v96._object = v95;
      String.append(_:)(v96);

      v97 = v490;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v463 = sub_100030EA0(0, *(v463 + 2) + 1, 1, v463);
      }

      v99 = *(v463 + 2);
      v98 = *(v463 + 3);
      if (v99 >= v98 >> 1)
      {
        v463 = sub_100030EA0((v98 > 1), v99 + 1, 1, v463);
      }

      v100 = v463;
      *(v463 + 2) = v99 + 1;
      *&v100[16 * v99 + 32] = v97;
      v101 = 1;
LABEL_60:
      v46 = v465;
      v104 = *(*(v465 + 24) + 16);
      if (*(v104 + 16) && (v105 = sub_100061588(v459, v458), (v106 & 1) != 0) && (sub_10000B430(*(v104 + 56) + 32 * v105, &v490), (swift_dynamicCast() & 1) != 0))
      {
        v108 = v484._object;
        v107 = v484._countAndFlagsBits;
      }

      else
      {
        v107 = 0xD000000000000014;
        v108 = v462;
      }

      v494[0] = v107;
      v494[1] = v108;
      v495 = v449;
      v496 = v101;
      v48 = v464;
      sub_10005DBD4(v494);
      *&v464 = v48;
      if (v48)
      {
        goto LABEL_361;
      }

      sub_100067FF4(v494);
      goto LABEL_12;
    }

    (*v445)(v39, v2, v13);
    v66 = v467;
    if (v467[2] && (v67 = v467[5], sub_10008E840(&qword_1001342B0, &type metadata accessor for URL), v68 = dispatch thunk of Hashable._rawHashValue(seed:)(), v69 = -1 << *(v66 + 32), v70 = v68 & ~v69, ((*&v466[(v70 >> 3) & 0xFFFFFFFFFFFFFF8] >> v70) & 1) != 0))
    {
      v71 = ~v69;
      v72 = *(v438 + 72);
      v73 = *(v438 + 16);
      while (1)
      {
        v73(v33, v467[6] + v72 * v70, v13);
        sub_10008E840(&qword_1001342B8, &type metadata accessor for URL);
        v74 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v1)(v33, v13);
        if (v74)
        {
          break;
        }

        v70 = (v70 + 1) & v71;
        if (((*&v466[(v70 >> 3) & 0xFFFFFFFFFFFFFF8] >> v70) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v39 = v469;
    }

    else
    {
LABEL_32:
      v75 = *(v451 + v442);
      if (!v75)
      {
        goto LABEL_367;
      }

      v76 = *(v451 + v442);

      v39 = v469;
      URL.path.getter();
      v77._countAndFlagsBits = URL.path.getter();
      v78 = String.hasPrefix(_:)(v77);

      if (!v78)
      {
        (*v1)(v39, v13);
        goto LABEL_35;
      }
    }

    v46 = v443;
    if (qword_100133AE0 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    sub_1000144F0(v109, qword_10014E9E0);
    (*v468)(v46, v39, v13);
    v48 = v465;

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();

    LODWORD(v459) = v111;
    v112 = os_log_type_enabled(v110, v111);
    v2 = v460;
    if (v112)
    {
      v458 = v110;
      v46 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v483[0] = v113;
      *v46 = v430;
      v114 = *(*(v48 + 24) + 16);
      if (qword_100133A50 != -1)
      {
        swift_once();
      }

      v115 = *(v114 + 16);
      v437 = v113;
      if (v115 && (v116 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v117 & 1) != 0) && (sub_10000B430(*(v114 + 56) + 32 * v116, &v490), swift_dynamicCast()))
      {
        v52 = v484._object;
        v51 = v484._countAndFlagsBits;
      }

      else
      {
        v51 = 0xD000000000000014;
        v52 = v462;
      }

      v53 = sub_1000E3AF8(v51, v52, v483);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v54 = v443;
      v55 = URL.path.getter();
      v57 = v56;
      v58 = *v1;
      (*v1)(v54, v13);
      v59 = sub_1000E3AF8(v55, v57, v483);

      *(v46 + 14) = v59;
      v60 = v458;
      _os_log_impl(&_mh_execute_header, v458, v459, "Skipping third party driver %s at %s during first approvals database update pass", v46, 0x16u);
      v48 = v437;
      swift_arrayDestroy();

      v61 = v469;
      v58(v469, v13);
      v39 = v61;
LABEL_12:
      v2 = v460;
      continue;
    }

    v118 = *v1;
    (*v1)(v46, v13);
    v118(v39, v13);
  }

  while (v41 != v453);
  v39 = v439;
LABEL_80:
  v119 = (v39 + 64);
  v120 = 1 << *(v39 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  v46 = v121 & *(v39 + 64);
  v456 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager;
  v48 = (v120 + 63) >> 6;
  v469 = (v438 + 16);
  v462 = (v438 + 8);
  v437 = " new entry to database";

  v13 = 0;
  *&v430 = v457 + 64;
  *&v122 = 136315138;
  v445 = v122;
  v41 = v433;
  v39 = v452;
  v454 = v48;
  v455 = v119;
  while (2)
  {
    while (2)
    {
      if (v46)
      {
        goto LABEL_88;
      }

      while (2)
      {
        v123 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }

        if (v123 >= v48)
        {

          v469 = swift_allocObject();
          v469[2] = _swiftEmptyArrayStorage;
          v290 = sub_100088EF0();
          v292 = v290;
          if (v290 >> 62)
          {
            v392 = v290;
            v293 = _CocoaArrayWrapper.endIndex.getter();
            v292 = v392;
          }

          else
          {
            v293 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v48 = v464;
          v468 = v292;
          if (v293)
          {
            if (v293 < 1)
            {
              __break(1u);
LABEL_346:
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
              goto LABEL_356;
            }

            v294 = 0;
            v465 = v292 & 0xC000000000000001;
            v459 = "Handled queued request ";
            v460 = "Approval database changed";
            *&v291 = 136315394;
            v464 = v291;
            v466 = v293;
            do
            {
              if (v465)
              {
                v295 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v295 = *(v292 + 8 * v294 + 32);
              }

              v296 = *(v295 + 32);
              v484 = *(v295 + 16);
              v485 = v296;
              LOBYTE(v486) = *(v295 + 48);
              sub_100067FBC(&v484, &v490);
              v297 = sub_10005E1C8(&v484._countAndFlagsBits);
              v298 = v48;
              if (v48)
              {
                sub_100067FF4(&v484);
                if (qword_100133AE0 != -1)
                {
                  swift_once();
                }

                v299 = type metadata accessor for Logger();
                sub_1000144F0(v299, qword_10014E9E0);

                swift_errorRetain();
                v300 = Logger.logObject.getter();
                v301 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v300, v301))
                {
                  v302 = swift_slowAlloc();
                  v490._countAndFlagsBits = swift_slowAlloc();
                  *v302 = v464;

                  updated = ApprovalStateUpdateRequest.description.getter();
                  v305 = v304;

                  v306 = sub_1000E3AF8(updated, v305, &v490._countAndFlagsBits);

                  *(v302 + 4) = v306;
                  *(v302 + 12) = 2080;
                  v483[0] = v298;
                  swift_errorRetain();
                  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
                  v307 = String.init<A>(describing:)();
                  v309 = sub_1000E3AF8(v307, v308, &v490._countAndFlagsBits);

                  *(v302 + 14) = v309;
                  _os_log_impl(&_mh_execute_header, v300, v301, "Failed to handle queued request %s: %s", v302, 0x16u);
                  swift_arrayDestroy();
                }

                swift_errorRetain();
                v48 = 0;
                v310 = v298;
              }

              else
              {
                v311 = v297;
                sub_100067FF4(&v484);
                if (v311)
                {
                  v490._countAndFlagsBits = 0;
                  v490._object = 0xE000000000000000;
                  _StringGuts.grow(_:)(61);
                  v312._countAndFlagsBits = 0xD000000000000017;
                  v312._object = (v460 | 0x8000000000000000);
                  String.append(_:)(v312);
                  v313._countAndFlagsBits = ApprovalStateUpdateRequest.description.getter();
                  String.append(_:)(v313);

                  v314._countAndFlagsBits = 0xD000000000000024;
                  v314._object = (v459 | 0x8000000000000000);
                  String.append(_:)(v314);
                  v315 = v490;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v463 = sub_100030EA0(0, *(v463 + 2) + 1, 1, v463);
                  }

                  v317 = *(v463 + 2);
                  v316 = *(v463 + 3);
                  if (v317 >= v316 >> 1)
                  {
                    v463 = sub_100030EA0((v316 > 1), v317 + 1, 1, v463);
                  }

                  v310 = 0;
                  v318 = v463;
                  *(v463 + 2) = v317 + 1;
                  *&v318[16 * v317 + 32] = v315;
                }

                else
                {
                  v310 = 0;
                }
              }

              v319 = v469;
              v320 = v469[2];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v319 + 16) = v320;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v320 = sub_100031324(0, *(v320 + 2) + 1, 1, v320);
                v469[2] = v320;
              }

              v323 = *(v320 + 2);
              v322 = *(v320 + 3);
              if (v323 >= v322 >> 1)
              {
                v320 = sub_100031324((v322 > 1), v323 + 1, 1, v320);
                v469[2] = v320;
              }

              ++v294;
              sub_10008E7A8(v310, v298 != 0);
              *(v320 + 2) = v323 + 1;
              v324 = &v320[24 * v323];
              *(v324 + 4) = v295;
              *(v324 + 5) = v310;
              v324[48] = v298 != 0;
              v292 = v468;
              v469[2] = v320;
            }

            while (v466 != v294);
          }

          v39 = v473;
          v41 = v474;
          v325 = sub_1000648C4(v473, v457);
          v326 = *(v463 + 2);
          if (v325)
          {
            v1 = v451;
            if (!v326)
            {

              sub_10008D138(0, v1, v469);
              goto LABEL_334;
            }

LABEL_317:
            if (qword_100133AE0 != -1)
            {
              swift_once();
            }

            v331 = type metadata accessor for Logger();
            v332 = sub_1000144F0(v331, qword_10014E9E0);
            v333 = Logger.logObject.getter();
            v334 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v333, v334))
            {
              v335 = swift_slowAlloc();
              *v335 = 0;
              _os_log_impl(&_mh_execute_header, v333, v334, "Saving appproval db, encoding", v335, 2u);
            }

            v336 = type metadata accessor for PropertyListEncoder();
            v337 = *(v336 + 48);
            v338 = *(v336 + 52);
            swift_allocObject();
            PropertyListEncoder.init()();
            v490._countAndFlagsBits = v39;
            v490._object = v41;
            sub_10008E7B4();

            v339 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
            v341 = v48;
            if (v48)
            {
            }

            else
            {
              v465 = v339;
              v466 = v340;
              v458 = v41;

              v460 = v39;

              *&v464 = v332;
              v342 = Logger.logObject.getter();
              v343 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v342, v343))
              {
                v344 = swift_slowAlloc();
                *v344 = 0;
                _os_log_impl(&_mh_execute_header, v342, v343, "Writing new approval db contents", v344, 2u);
              }

              v459 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
              URL.appendingPathExtension(_:)();
              v345 = *sub_100003C4C((v1 + 16), *(v1 + 40));
              sub_1000DF9D4(&v490);
              v346 = *(&v491 + 1);
              v347 = v492;
              sub_100003C4C(&v490, *(&v491 + 1));
              v348 = URL.path.getter();
              v350 = v349;
              v351 = v465;
              v352 = v466;
              sub_1000146C4(v465, v466);
              v353 = sub_10003E834(_swiftEmptyArrayStorage);
              LOBYTE(v348) = (*(v347 + 40))(v348, v350, v351, v352, v353, v346, v347);

              sub_1000128D8(v351, v352);

              sub_100003C90(&v490._countAndFlagsBits);
              if (v348)
              {

                v354 = Logger.logObject.getter();
                v355 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v354, v355))
                {
                  v356 = swift_slowAlloc();
                  *v356 = 0;
                  _os_log_impl(&_mh_execute_header, v354, v355, "Replacing old approval db contents", v356, 2u);
                }

                v357 = v451;
                v358 = *sub_100003C4C((v451 + 16), *(v451 + 40));
                sub_1000DF9D4(&v490);
                v359 = *(&v491 + 1);
                v360 = v492;
                sub_100003C4C(&v490, *(&v491 + 1));
                v361 = v428;
                (*(v360 + 88))(v357 + v459, v428, 0, 0, 0, 0, v359, v360);
                v362 = v460;
                sub_100003C90(&v490._countAndFlagsBits);
                v386 = *sub_100003C4C((v357 + 16), *(v357 + 40));
                sub_1000DF9D4(&v490);
                v387 = *(&v491 + 1);
                v388 = v492;
                sub_100003C4C(&v490, *(&v491 + 1));
                (*(v388 + 104))(v361, v387, v388);
                sub_100003C90(&v490._countAndFlagsBits);
                v389 = (v357 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
                v390 = *(v357 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
                v391 = v458;
                *v389 = v362;
                v389[1] = v391;

                sub_10008D138(0, v357, v469);
                sub_1000128D8(v465, v466);
                (*v462)(v361, v461);

                return v463;
              }

              v363 = errno.getter();
              v364 = strerror(v363);
              v280 = v439;
              if (!v364)
              {
LABEL_381:
                __break(1u);
                goto LABEL_382;
              }

              v365 = String.init(cString:)();
              v367 = v366;
              v490._countAndFlagsBits = 0;
              v490._object = 0xE000000000000000;
              _StringGuts.grow(_:)(30);

              v490._countAndFlagsBits = 0x6946657461657263;
              v490._object = 0xEB0000000020656CLL;
              sub_10008E840(&qword_1001342A0, &type metadata accessor for URL);
              v368 = v428;
              v369 = v461;
              v370._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v370);

              v371._countAndFlagsBits = 0x3A64656C69616620;
              v371._object = 0xEF206F6E72726520;
              String.append(_:)(v371);
              v372._countAndFlagsBits = v365;
              v372._object = v367;
              String.append(_:)(v372);

              v373 = v490;
              sub_10001449C();
              v341 = swift_allocError();
              *v374 = v373;
              v375 = *v493;
              v377 = v491;
              v376 = v492;
              *(v374 + 16) = v490;
              *(v374 + 32) = v377;
              *(v374 + 48) = v376;
              *(v374 + 64) = v375;
              *(v374 + 72) = 19;
              swift_willThrow();
              sub_1000128D8(v465, v466);
              (*v462)(v368, v369);
              v1 = v451;
            }

            swift_errorRetain();
            v378 = Logger.logObject.getter();
            v379 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v378, v379))
            {
              v380 = swift_slowAlloc();
              v381 = swift_slowAlloc();
              v490._countAndFlagsBits = v381;
              *v380 = v445;
              v483[0] = v341;
              swift_errorRetain();
              sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
              v382 = String.init<A>(describing:)();
              v384 = sub_1000E3AF8(v382, v383, &v490._countAndFlagsBits);

              *(v380 + 4) = v384;
              _os_log_impl(&_mh_execute_header, v378, v379, "Failed to write approval database during state update: %s", v380, 0xCu);
              sub_100003C90(v381);
            }

            swift_errorRetain();
            sub_10008D138(v341, v1, v469);

LABEL_334:

            return 0;
          }

          v1 = v451;
          if (v326)
          {
            goto LABEL_317;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_314:
            v328 = *(v463 + 2);
            v327 = *(v463 + 3);
            if (v328 >= v327 >> 1)
            {
              v463 = sub_100030EA0((v327 > 1), v328 + 1, 1, v463);
            }

            v329 = v463;
            *(v463 + 2) = v328 + 1;
            v330 = &v329[16 * v328];
            *(v330 + 4) = 0xD000000000000019;
            *(v330 + 5) = 0x8000000100108550;
            goto LABEL_317;
          }

LABEL_356:
          v463 = sub_100030EA0(0, 1, 1, v463);
          goto LABEL_314;
        }

        v46 = v119[v123];
        ++v13;
        if (!v46)
        {
          continue;
        }

        break;
      }

      v13 = v123;
LABEL_88:
      v124 = v435;
      sub_10008E708(v439[7] + *(v436 + 72) * (__clz(__rbit64(v46)) | (v13 << 6)), v435, type metadata accessor for DriverBinEntry);
      v125 = v124;
      v126 = v447;
      sub_100068024(v125, v447);
      v1 = *(v41 + 28);
      v466 = *v469;
      (v466)(v39, v126 + v1, v461);
      v127 = *(v451 + v456);
      if (!v127)
      {
        goto LABEL_372;
      }

      if (*(v127 + 88))
      {
        v128 = *(v127 + 88);
      }

      else
      {
        v129 = *(v451 + v456);

        sub_10001B0B4();
        v128 = v130;
        v131 = *(v127 + 88);
        *(v127 + 88) = v130;
      }

      v465 = (v46 - 1) & v46;
      v132 = *(v41 + 20);
      v133 = type metadata accessor for ApplicationRecord(0);
      v134 = v133;
      if (!*(v128 + 16))
      {

        goto LABEL_108;
      }

      v135 = *(v133 + 32);
      *&v449 = v447 + v132;
      v136 = (v447 + v132 + v135);
      v138 = *v136;
      v137 = v136[1];

      v139 = v138;
      v39 = v452;
      v140 = sub_1000618A8(v139, v137);
      if ((v141 & 1) == 0)
      {
LABEL_108:

        v164 = v434;
        (*(*(v134 - 8) + 56))(v434, 1, 1, v134);
        sub_10000A184(v164, &qword_1001342D8, &unk_100101820);
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v165 = type metadata accessor for Logger();
        sub_1000144F0(v165, qword_10014E9E0);
        v166 = v432;
        v33 = v461;
        (v466)(v432, v39, v461);
        v167 = Logger.logObject.getter();
        v2 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v167, v2))
        {
          v168 = v166;
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v490._countAndFlagsBits = v170;
          *v169 = v445;
          v468 = URL.path.getter();
          v172 = v171;
          v1 = *v462;
          (*v462)(v168, v33);
          v173 = sub_1000E3AF8(v468, v172, &v490._countAndFlagsBits);
          v41 = v433;

          *(v169 + 4) = v173;
          _os_log_impl(&_mh_execute_header, v167, v2, "Skipping bundle at %s since containing application was removed", v169, 0xCu);
          sub_100003C90(v170);
          v39 = v452;

          (v1)(v39, v33);
        }

        else
        {

          v174 = *v462;
          (*v462)(v166, v33);
          v174(v39, v33);
        }

        goto LABEL_113;
      }

      v142 = *(v134 - 8);
      v143 = v434;
      sub_10008E708(*(v128 + 56) + *(v142 + 72) * v140, v434, type metadata accessor for ApplicationRecord);

      (*(v142 + 56))(v143, 0, 1, v134);
      sub_10000A184(v143, &qword_1001342D8, &unk_100101820);
      v144 = *sub_100003C4C((v451 + 16), *(v451 + 40));
      sub_1000DFF08(&v490);
      v33 = v461;
      (v466)(v431, v39, v461);
      v145 = type metadata accessor for UncachedBundle();
      v2 = swift_allocObject();
      URL._bridgeToObjectiveC()(v146);
      v148 = v147;
      Unique = _CFBundleCreateUnique();

      v150 = *v462;
      v444 = *v462;
      if (!Unique)
      {
        v150(v431, v33);
        sub_100003C90(&v490._countAndFlagsBits);
        swift_deallocPartialClassInstance();
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v216 = type metadata accessor for Logger();
        sub_1000144F0(v216, qword_10014E9E0);
        v1 = v427;
        v39 = v452;
        (v466)(v427, v452, v33);
        v217 = Logger.logObject.getter();
        v2 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v217, v2))
        {
          v218 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          v490._countAndFlagsBits = v219;
          *v218 = v445;
          v220 = URL.path.getter();
          v222 = v221;
          v223 = v1;
          v1 = v462;
          (v444)(v223, v33);
          v224 = sub_1000E3AF8(v220, v222, &v490._countAndFlagsBits);
          v41 = v433;

          *(v218 + 4) = v224;
          _os_log_impl(&_mh_execute_header, v217, v2, "Bundle at %s is invalid", v218, 0xCu);
          sub_100003C90(v219);
          v39 = v452;

          (v444)(v39, v33);
        }

        else
        {

          v270 = v444;
          (v444)(v1, v33);
          v270(v39, v33);
        }

LABEL_113:
        sub_10008E6A8(v447, type metadata accessor for DriverBinEntry);
LABEL_114:
        v48 = v454;
        v119 = v455;
        v46 = v465;
        continue;
      }

      break;
    }

    v423 = v1;
    v151 = v150;
    v152 = Unique;
    v151(v431, v33);

    *(v2 + 16) = v152;
    *(&v485 + 1) = v145;
    *&v486 = sub_10008E840(&qword_1001373C0, type metadata accessor for UncachedBundle);
    v484._countAndFlagsBits = v2;
    sub_100003C90(&v490._countAndFlagsBits);
    sub_100009F34(&v484._countAndFlagsBits, v483);
    sub_100003C4C(v483, v483[3]);
    v450 = sub_1000990BC();
    if (!v153)
    {
      v1 = v426;
      v39 = v452;
      if (qword_100133AE0 != -1)
      {
        swift_once();
      }

      v225 = type metadata accessor for Logger();
      sub_1000144F0(v225, qword_10014E9E0);
      v33 = v461;
      (v466)(v1, v39, v461);
      v226 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v226, v2))
      {
        v227 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v490._countAndFlagsBits = v228;
        *v227 = v445;
        v229 = URL.path.getter();
        v231 = v230;
        v232 = v1;
        v1 = v462;
        (v444)(v232, v33);
        v233 = sub_1000E3AF8(v229, v231, &v490._countAndFlagsBits);
        v41 = v433;

        *(v227 + 4) = v233;
        _os_log_impl(&_mh_execute_header, v226, v2, "Bundle at %s does not have a bundle identifier", v227, 0xCu);
        sub_100003C90(v228);
        v39 = v452;

        (v444)(v39, v33);
      }

      else
      {

        v288 = v444;
        (v444)(v1, v33);
        v288(v39, v33);
      }

      sub_10008E6A8(v447, type metadata accessor for DriverBinEntry);
      sub_100003C90(v483);
      goto LABEL_114;
    }

    v154 = v153;
    v155 = v473;
    v156 = v449 + *(v134 + 28);
    v157 = *v156;
    v1 = *(v156 + 8);
    v424 = v156;
    v158 = v473[2];
    v39 = v452;
    v441 = v153;
    v468 = v158;
    if (v158)
    {
      v46 = 0;
      if (v157)
      {
        v159 = 0;
      }

      else
      {
        v159 = v1 == 0xC000000000000000;
      }

      v160 = !v159;
      LODWORD(v443) = v160;
      v161 = v1 >> 62;
      v458 = v157;
      v459 = v1 >> 62;
      v162 = HIDWORD(v157) - v157;
      v163 = __OFSUB__(HIDWORD(v157), v157);
      LODWORD(v440) = v163;
      v438 = v162;
      v442 = BYTE6(v1);
      v41 = (v473 + 7);
      v48 = v450;
      v453 = v1;
      v460 = v473;
      while (1)
      {
        if (v46 >= v155[2])
        {
          goto LABEL_338;
        }

        v33 = *(v41 - 16);
        v2 = *(v41 - 8);
        v39 = *v41;
        if (*(v41 - 24) == v48 && v154 == v33)
        {
          if (v39 >> 60 == 15)
          {
            goto LABEL_116;
          }
        }

        else
        {
          v176 = *(v41 - 16);
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v161 = v459;
            v155 = v460;
            goto LABEL_116;
          }

          v161 = v459;
          v155 = v460;
          if (v39 >> 60 == 15)
          {
            goto LABEL_116;
          }
        }

        v177 = v39 >> 62;
        if (v39 >> 62 == 3)
        {
          break;
        }

        if (v177 > 1)
        {
          if (v177 != 2)
          {
            goto LABEL_148;
          }

          v183 = *(v2 + 16);
          v182 = *(v2 + 24);
          v63 = __OFSUB__(v182, v183);
          v181 = v182 - v183;
          if (v63)
          {
            goto LABEL_347;
          }

          if (v161 > 1)
          {
            goto LABEL_149;
          }
        }

        else if (v177)
        {
          LODWORD(v181) = HIDWORD(v2) - v2;
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_346;
          }

          v181 = v181;
          if (v161 > 1)
          {
LABEL_149:
            if (v161 != 2)
            {
              if (!v181)
              {
                goto LABEL_178;
              }

              goto LABEL_116;
            }

            isa = v458[2].isa;
            v185 = v458[3].isa;
            v63 = __OFSUB__(v185, isa);
            v184 = v185 - isa;
            if (v63)
            {
              goto LABEL_341;
            }

            goto LABEL_151;
          }
        }

        else
        {
          v181 = BYTE6(v39);
          if (v161 > 1)
          {
            goto LABEL_149;
          }
        }

LABEL_145:
        v184 = v442;
        if (v161)
        {
          v184 = v438;
          if (v440)
          {
            goto LABEL_342;
          }
        }

LABEL_151:
        if (v181 == v184)
        {
          if (v181 < 1)
          {
            goto LABEL_178;
          }

          if (v177 > 1)
          {
            if (v177 == 2)
            {
              v190 = v1;
              v1 = *(v2 + 16);
              v422 = *(v2 + 24);
              sub_1000146C4(v458, v190);

              sub_1000146B0(v2, v39);
              v191 = __DataStorage._bytes.getter();
              if (v191)
              {
                v48 = v191;
                v192 = __DataStorage._offset.getter();
                if (__OFSUB__(v1, v192))
                {
                  goto LABEL_352;
                }

                v193 = v1 - v192 + v48;
              }

              else
              {
                v193 = 0;
              }

              v48 = v422 - v1;
              if (__OFSUB__(v422, v1))
              {
                goto LABEL_351;
              }

              v201 = v193;
              __DataStorage._length.getter();
              v202 = v201;
              v203 = v458;
              v204 = v458;
              v1 = v453;
LABEL_176:
              v205 = v464;
              sub_100045F4C(v202, v204, v1, &v490);
              *&v464 = v205;
              sub_1000128D8(v203, v1);

              sub_100014528(v2, v39);
              v200 = v490._countAndFlagsBits;
              v154 = v441;
            }

            else
            {
              *(&v490._countAndFlagsBits + 6) = 0;
              v490._countAndFlagsBits = 0;
              v197 = v458;
              sub_1000146C4(v458, v453);

              sub_1000146B0(v2, v39);
              v198 = v464;
              sub_100045F4C(&v490, v197, v453, &v484);
              *&v464 = v198;
              v199 = v197;
              v1 = v453;
              sub_1000128D8(v199, v453);

              sub_100014528(v2, v39);
              v200 = v484._countAndFlagsBits;
            }

            v48 = v450;
            v161 = v459;
            v155 = v460;
            if (v200)
            {
              goto LABEL_178;
            }

            goto LABEL_116;
          }

          if (v177)
          {
            v48 = v2;
            if (v2 >> 32 < v2)
            {
              goto LABEL_350;
            }

            v422 = (v2 >> 32) - v2;
            v1 = v453;
            sub_1000146C4(v458, v453);

            sub_1000146B0(v2, v39);
            v194 = __DataStorage._bytes.getter();
            if (v194)
            {
              v1 = v194;
              v195 = __DataStorage._offset.getter();
              if (__OFSUB__(v2, v195))
              {
                goto LABEL_353;
              }

              v196 = v2 - v195 + v1;
              v1 = v453;
            }

            else
            {
              v196 = 0;
            }

            __DataStorage._length.getter();
            v202 = v196;
            v203 = v458;
            v204 = v458;
            goto LABEL_176;
          }

          v490._countAndFlagsBits = v2;
          LOWORD(v490._object) = v39;
          BYTE2(v490._object) = BYTE2(v39);
          BYTE3(v490._object) = BYTE3(v39);
          BYTE4(v490._object) = BYTE4(v39);
          BYTE5(v490._object) = BYTE5(v39);
          v187 = v458;
          v1 = v453;
          sub_1000146C4(v458, v453);

          sub_1000146B0(v2, v39);
          v154 = v441;
          v188 = v187;
          v189 = v464;
          sub_100045F4C(&v490, v188, v1, &v484);
          *&v464 = v189;
          sub_1000128D8(v458, v1);

          sub_100014528(v2, v39);
          v161 = v459;
          v155 = v460;
          v48 = v450;
          if (v484._countAndFlagsBits)
          {
            goto LABEL_178;
          }
        }

LABEL_116:
        ++v46;
        v41 += 40;
        v39 = v452;
        if (v468 == v46)
        {
          v157 = *v424;
          v1 = *(v424 + 8);
          goto LABEL_191;
        }
      }

      if (v2)
      {
        v178 = 0;
      }

      else
      {
        v178 = v39 == 0xC000000000000000;
      }

      v180 = !v178 || v161 < 3;
      if (((v180 | v443) & 1) == 0)
      {
LABEL_178:

        v39 = v452;
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v206 = type metadata accessor for Logger();
        sub_1000144F0(v206, qword_10014E9E0);
        v207 = v425;
        v33 = v461;
        (v466)(v425, v39, v461);
        v208 = Logger.logObject.getter();
        v2 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v208, v2))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v490._countAndFlagsBits = v210;
          *v209 = v445;
          v211 = URL.path.getter();
          v212 = v207;
          v214 = v213;
          v1 = v462;
          (v444)(v212, v33);
          v215 = sub_1000E3AF8(v211, v214, &v490._countAndFlagsBits);

          *(v209 + 4) = v215;
          _os_log_impl(&_mh_execute_header, v208, v2, "Skipping bundle at %s, already inserted into approvals database", v209, 0xCu);
          sub_100003C90(v210);
          v39 = v452;

          (v444)(v39, v33);
        }

        else
        {

          v289 = v444;
          (v444)(v207, v33);
          v289(v39, v33);
        }

        v41 = v433;
        v46 = v465;
LABEL_281:
        sub_10008E6A8(v447, type metadata accessor for DriverBinEntry);
        sub_100003C90(v483);
        v48 = v454;
        v119 = v455;
        continue;
      }

LABEL_148:
      v181 = 0;
      if (v161 > 1)
      {
        goto LABEL_149;
      }

      goto LABEL_145;
    }

    break;
  }

  v48 = v450;
LABEL_191:
  v468 = *(v457 + 2);
  if (v468)
  {
    v41 = 0;
    v235 = v1 != 0xC000000000000000 || v157 != 0;
    LODWORD(v459) = v235;
    v236 = v1 >> 62;
    v458 = v157;
    v237 = HIDWORD(v157) - v157;
    v238 = __OFSUB__(HIDWORD(v157), v157);
    LODWORD(v442) = v238;
    v440 = v237;
    v443 = BYTE6(v1);
    v46 = v430;
    v460 = v1 >> 62;
    v453 = v1;
    while (1)
    {
      if (v41 >= *(v457 + 2))
      {
        goto LABEL_340;
      }

      v239 = *(v46 - 32);
      v33 = *(v46 - 24);
      v2 = *(v46 - 16);
      v39 = *(v46 - 8);
      LODWORD(v466) = *v46;
      if (v239 == v48 && v154 == v33)
      {
        if (v39 >> 60 == 15)
        {
          goto LABEL_203;
        }
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v236 = v460;
          goto LABEL_203;
        }

        v236 = v460;
        if (v39 >> 60 == 15)
        {
          goto LABEL_203;
        }
      }

      v241 = v39 >> 62;
      if (v39 >> 62 == 3)
      {
        break;
      }

      if (v241 > 1)
      {
        if (v241 != 2)
        {
          goto LABEL_235;
        }

        v247 = *(v2 + 16);
        v246 = *(v2 + 24);
        v63 = __OFSUB__(v246, v247);
        v245 = v246 - v247;
        if (v63)
        {
          goto LABEL_354;
        }

        if (v236 <= 1)
        {
          goto LABEL_232;
        }
      }

      else if (v241)
      {
        LODWORD(v245) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_355;
        }

        v245 = v245;
        if (v236 <= 1)
        {
LABEL_232:
          v248 = v443;
          if (v236)
          {
            v248 = v440;
            if (v442)
            {
              goto LABEL_349;
            }
          }

          goto LABEL_238;
        }
      }

      else
      {
        v245 = BYTE6(v39);
        if (v236 <= 1)
        {
          goto LABEL_232;
        }
      }

LABEL_236:
      if (v236 != 2)
      {
        if (!v245)
        {
          goto LABEL_265;
        }

        goto LABEL_203;
      }

      v250 = v458[2].isa;
      v249 = v458[3].isa;
      v63 = __OFSUB__(v249, v250);
      v248 = (v249 - v250);
      if (v63)
      {
        goto LABEL_348;
      }

LABEL_238:
      if (v245 != v248)
      {
        goto LABEL_203;
      }

      if (v245 < 1)
      {
        goto LABEL_265;
      }

      if (v241 > 1)
      {
        if (v241 != 2)
        {
          *(&v490._countAndFlagsBits + 6) = 0;
          v490._countAndFlagsBits = 0;
          v262 = v458;
          sub_1000146C4(v458, v453);

          sub_1000146B0(v2, v39);
          v263 = v464;
          sub_100045F4C(&v490, v262, v453, &v484);
          *&v464 = v263;
          v264 = v262;
          v1 = v453;
          sub_1000128D8(v264, v453);

          sub_100014528(v2, v39);
          v265 = v484._countAndFlagsBits;
          goto LABEL_264;
        }

        v254 = *(v2 + 24);
        v438 = *(v2 + 16);
        v422 = v254;
        sub_1000146C4(v458, v1);

        sub_1000146B0(v2, v39);
        v255 = __DataStorage._bytes.getter();
        if (v255)
        {
          v256 = v255;
          v257 = __DataStorage._offset.getter();
          v258 = v438;
          if (__OFSUB__(v438, v257))
          {
            goto LABEL_359;
          }

          v421 = v438 - v257 + v256;
        }

        else
        {
          v421 = 0;
          v258 = v438;
        }

        if (__OFSUB__(v422, v258))
        {
          goto LABEL_358;
        }

        __DataStorage._length.getter();
        v266 = v421;
      }

      else
      {
        if (!v241)
        {
          v490._countAndFlagsBits = v2;
          LOWORD(v490._object) = v39;
          BYTE2(v490._object) = BYTE2(v39);
          BYTE3(v490._object) = BYTE3(v39);
          BYTE4(v490._object) = BYTE4(v39);
          BYTE5(v490._object) = BYTE5(v39);
          v251 = v458;
          sub_1000146C4(v458, v453);

          sub_1000146B0(v2, v39);
          v154 = v441;
          v252 = v464;
          sub_100045F4C(&v490, v251, v453, &v484);
          *&v464 = v252;
          v253 = v251;
          v1 = v453;
          sub_1000128D8(v253, v453);

          sub_100014528(v2, v39);
          v236 = v460;
          v48 = v450;
          if (v484._countAndFlagsBits)
          {
            goto LABEL_265;
          }

          goto LABEL_203;
        }

        v438 = (v2 >> 32) - v2;
        if (v2 >> 32 < v2)
        {
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          v75 = 0x80000001001084F0;
          v488[0] = v464;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          if (swift_dynamicCast())
          {
            v492 = v486;
            *v493 = v487[0];
            *&v493[9] = *(v487 + 9);
            v490 = v484;
            v491 = v485;
            *&v477 = 0xD000000000000026;
            *(&v477 + 1) = 0x80000001001084F0;
            v393._countAndFlagsBits = 8250;
            v393._object = 0xE200000000000000;
            String.append(_:)(v393);
            v395._countAndFlagsBits = sub_1000AA704(v394);
            String.append(_:)(v395);

            sub_10000A990(v451 + 16, v483);
            sub_10000A114(v483, &v479);
            if (v480)
            {
              sub_100009F34(&v479, v481);

              v396 = sub_1000AC3E4();
              v397 = [v396 code];

              if ((v397 & 0x8000000000000000) == 0)
              {
                v398 = *sub_100003C4C(v481, v482);
                sub_1000DF65C(&v479);
                v399 = *sub_100003C4C(&v479, v480);
                LOBYTE(v399) = sub_10006A994();
                sub_100003C90(&v479);
                if ((v399 & 1) == 0)
                {
                  goto LABEL_394;
                }

LABEL_371:
                String.utf8CString.getter();
                abort_with_reason();
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
                goto LABEL_374;
              }

              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
            }

LABEL_390:

            v419 = &v479;
LABEL_393:
            sub_10000A184(v419, &qword_100133CC0, &qword_1000F32F0);
            goto LABEL_394;
          }

LABEL_368:

          *&v477 = 0;
          *(&v477 + 1) = 0xE000000000000000;
          v400._countAndFlagsBits = 0xD000000000000026;
          v400._object = v75;
          String.append(_:)(v400);
          v401._countAndFlagsBits = 8250;
          v401._object = 0xE200000000000000;
          String.append(_:)(v401);
          v490._countAndFlagsBits = v464;
          _print_unlocked<A, B>(_:_:)();
          sub_10000A990(v451 + 16, v483);
          v490._countAndFlagsBits = 0x6E776F6E6B6E75;
          v490._object = 0xE700000000000000;
          v493[24] = 50;
          sub_10000A114(v483, &v479);
          if (v480)
          {
            sub_100009F34(&v479, v481);

            v402 = sub_1000AC3E4();
            v403 = [v402 code];

            if ((v403 & 0x8000000000000000) == 0)
            {
              v404 = *sub_100003C4C(v481, v482);
              sub_1000DF65C(&v479);
              v405 = *sub_100003C4C(&v479, v480);
              LOBYTE(v405) = sub_10006A994();
              sub_100003C90(&v479);
              if ((v405 & 1) == 0)
              {
                goto LABEL_394;
              }

              goto LABEL_371;
            }

            goto LABEL_387;
          }

          goto LABEL_390;
        }

        sub_1000146C4(v458, v1);

        sub_1000146B0(v2, v39);
        v259 = __DataStorage._bytes.getter();
        if (v259)
        {
          v422 = v259;
          v260 = __DataStorage._offset.getter();
          if (__OFSUB__(v2, v260))
          {
            goto LABEL_360;
          }

          v261 = v2 - v260 + v422;
        }

        else
        {
          v261 = 0;
        }

        __DataStorage._length.getter();
        v266 = v261;
      }

      v267 = v458;
      v268 = v464;
      sub_100045F4C(v266, v458, v1, &v490);
      *&v464 = v268;
      sub_1000128D8(v267, v1);

      sub_100014528(v2, v39);
      v265 = v490._countAndFlagsBits;
      v154 = v441;
LABEL_264:
      v48 = v450;
      v236 = v460;
      if (v265)
      {
        goto LABEL_265;
      }

LABEL_203:
      ++v41;
      v46 += 40;
      v39 = v452;
      if (v468 == v41)
      {
        goto LABEL_267;
      }
    }

    if (v2)
    {
      v242 = 0;
    }

    else
    {
      v242 = v39 == 0xC000000000000000;
    }

    v244 = !v242 || v236 < 3;
    if (((v244 | v459) & 1) == 0)
    {
LABEL_265:
      v41 = v433;
      v39 = v452;
      v269 = v466;
      goto LABEL_275;
    }

LABEL_235:
    v245 = 0;
    if (v236 <= 1)
    {
      goto LABEL_232;
    }

    goto LABEL_236;
  }

LABEL_267:
  v490._countAndFlagsBits = 0;
  v490._object = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v271._object = (v437 | 0x8000000000000000);
  v271._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v271);
  v484._countAndFlagsBits = 0;
  v484._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  strcpy(&v484, "Staged bundle ");
  HIBYTE(v484._object) = -18;
  sub_10008E840(&qword_1001342A0, &type metadata accessor for URL);
  v272._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v272);

  v273._countAndFlagsBits = 0x70706120726F6620;
  v273._object = 0xE900000000000020;
  String.append(_:)(v273);
  String.append(_:)(*v449);
  String.append(_:)(v484);

  v274._countAndFlagsBits = 0xD00000000000001BLL;
  v274._object = v446;
  String.append(_:)(v274);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v275 = __chkstk_darwin(off_100135B38);
  v276 = v464;
  v277 = sub_10006573C(v275, sub_10008E964);
  *&v464 = v276;
  v278 = sub_10005B7B4(v277);
  v280 = v279;

  v41 = v433;
  if (!v280)
  {
    __break(1u);
    goto LABEL_381;
  }

  v281._countAndFlagsBits = v278;
  v281._object = v280;
  String.append(_:)(v281);

  v282 = v490;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v463 = sub_100030EA0(0, *(v463 + 2) + 1, 1, v463);
  }

  v2 = *(v463 + 2);
  v283 = *(v463 + 3);
  if (v2 >= v283 >> 1)
  {
    v463 = sub_100030EA0((v283 > 1), v2 + 1, 1, v463);
  }

  v269 = 0;
  v284 = v463;
  *(v463 + 2) = v2 + 1;
  *&v284[16 * v2 + 32] = v282;
  v154 = v441;
  v48 = v450;
LABEL_275:
  v285 = *v424;
  v286 = *(v424 + 8);
  v488[0] = v48;
  v488[1] = v154;
  v488[2] = v285;
  v488[3] = v286;
  v489 = v269;
  sub_1000146C4(v285, v286);
  v287 = v464;
  sub_10005DBD4(v488);
  *&v464 = v287;
  v46 = v465;
  if (!v287)
  {
    (v444)(v39, v461);
    sub_100067FF4(v488);
    goto LABEL_281;
  }

  v280 = 0x80000001001084F0;
  v472 = v464;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (swift_dynamicCast())
  {
    v492 = v486;
    *v493 = v487[0];
    *&v493[9] = *(v487 + 9);
    v490 = v484;
    v491 = v485;
    v470 = 0xD000000000000026;
    v471 = 0x80000001001084F0;
    v406._countAndFlagsBits = 8250;
    v406._object = 0xE200000000000000;
    String.append(_:)(v406);
    v408._countAndFlagsBits = sub_1000AA704(v407);
    String.append(_:)(v408);

    sub_10000A990(v451 + 16, v481);
    sub_10000A114(v481, &v477);
    if (v478)
    {
      sub_100009F34(&v477, &v479);

      v409 = sub_1000AC3E4();
      v410 = [v409 code];

      if ((v410 & 0x8000000000000000) != 0)
      {
        goto LABEL_388;
      }

      v411 = *sub_100003C4C(&v479, v480);
      sub_1000DF65C(&v477);
      v412 = *sub_100003C4C(&v477, v478);
      LOBYTE(v412) = sub_10006A994();
      sub_100003C90(&v477);
      if (v412)
      {
        goto LABEL_371;
      }

      goto LABEL_394;
    }

LABEL_392:

    v419 = &v477;
    goto LABEL_393;
  }

LABEL_382:

  v470 = 0;
  v471 = 0xE000000000000000;
  v413._countAndFlagsBits = 0xD000000000000026;
  v413._object = v280;
  String.append(_:)(v413);
  v414._countAndFlagsBits = 8250;
  v414._object = 0xE200000000000000;
  String.append(_:)(v414);
  v490._countAndFlagsBits = v464;
  _print_unlocked<A, B>(_:_:)();
  sub_10000A990(v451 + 16, v481);
  v490._countAndFlagsBits = 0x6E776F6E6B6E75;
  v490._object = 0xE700000000000000;
  v493[24] = 50;
  sub_10000A114(v481, &v477);
  if (!v478)
  {
    goto LABEL_392;
  }

  sub_100009F34(&v477, &v479);

  v415 = sub_1000AC3E4();
  v416 = [v415 code];

  if ((v416 & 0x8000000000000000) != 0)
  {
    goto LABEL_389;
  }

  v417 = *sub_100003C4C(&v479, v480);
  sub_1000DF65C(&v477);
  v418 = *sub_100003C4C(&v477, v478);
  LOBYTE(v418) = sub_10006A994();
  sub_100003C90(&v477);
  if (v418)
  {
    goto LABEL_371;
  }

LABEL_394:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10008D138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  aBlock[4] = sub_10008E820;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_100129FC8;
  v16 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10008E840(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_10008D420(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(a1 + 16);

    for (i = (v5 + 48); ; i += 24)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      v13 = *(v9 + 56);
      v12 = *(v9 + 64);

      if (v11)
      {
        sub_10008E888(v10, 1);

        v13(v10, 1);
        sub_10008E7A8(v10, 1);
      }

      else
      {
        if (a2)
        {
          swift_errorRetain();

          v13(a2, 1);

          goto LABEL_5;
        }

        v13(v10, 0);
      }

LABEL_5:
      if (!--v6)
      {
      }
    }
  }

  return result;
}

uint64_t sub_10008DA84()
{
  sub_100003C90((v0 + 16));
  v1 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests);

  v4 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager);

  v5 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager);

  v6 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager);

  v7 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers);

  v8 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);

  return v0;
}

uint64_t sub_10008DB5C()
{
  sub_10008DA84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ApprovalManager()
{
  result = qword_100136F48;
  if (!qword_100136F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008DC08()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10008DCD8()
{
  v1 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_subscribers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

unint64_t sub_10008DD24(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v16 = a1;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      v18 = v17;
      v1 = sub_100041D50(v17, 0);
      sub_10008E34C(v1 + 32, v18, v16);
      v20 = v19;

      if (v20 != v18)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100068614(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_100068614(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        v14 = v12 + 8 * v7;
        v15 = *(v14 + 32);
        *(v14 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

_BYTE *sub_10008DF38(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10008DFBC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v9 = result;
    v10 = *(a6 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
    v12 = *(a6 + 56);
    v13 = type metadata accessor for DriverBinEntry();
    return sub_10008E708(v12 + *(*(v13 - 8) + 72) * a3, a2, type metadata accessor for DriverBinEntry);
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_10008E0C0(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v18 = v5;
    v19 = v6;
    v7 = *(*(a5 + 48) + 8 * a2);
    v8 = (*(a5 + 56) + 80 * a2);
    v16[0] = *v8;
    v10 = v8[2];
    v9 = v8[3];
    v11 = v8[1];
    *&v17[9] = *(v8 + 57);
    v16[2] = v10;
    *v17 = v9;
    v16[1] = v11;
    v12 = *v8;
    v13 = v8[1];
    *(result + 57) = *(v8 + 57);
    v14 = v8[3];
    result[2] = v8[2];
    result[3] = v14;
    *result = v12;
    result[1] = v13;

    sub_1000419A4(v16, &v15);
    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_10008E188(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 32 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    v10 = *(*(a5 + 56) + 16 * a2);
    *result = v10;

    sub_1000146B0(v10, *(&v10 + 1));
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t (*sub_10008E244(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10008E968;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10008E2C4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10008E344;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E34C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001455C(&qword_1001370F8, &qword_1001370F0, &qword_1000F95B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100003CDC(&qword_1001370F0, &qword_1000F95B8);
            v9 = sub_10008E244(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StateManagerWrapper();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E4F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001455C(&qword_100137110, &qword_100137108, &unk_1000F95C0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003CDC(&qword_100137108, &unk_1000F95C0);
            v9 = sub_10008E2C4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003CDC(&qword_100137100, &unk_1001013C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E6A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008E708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E770()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E7A8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10008E7B4()
{
  result = qword_1001370E0;
  if (!qword_1001370E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001370E0);
  }

  return result;
}

uint64_t sub_10008E828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E888(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10008E894()
{
  result = qword_1001370E8;
  if (!qword_1001370E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001370E8);
  }

  return result;
}

uint64_t sub_10008E900(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10008E970@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.pathExtension.getter() == 0x6775626564 && v6 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x6D706F6C65766564 && v9 == 0xEB00000000746E65)
  {
    goto LABEL_3;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x6E6173616BLL && v11 == 0xE500000000000000)
  {
LABEL_3:

LABEL_5:
    URL.deletingPathExtension()();
    URL.appendingPathExtension(_:)();
    (*(v15 + 8))(v5, v2);
    return (*(v15 + 56))(a1, 0, 1, v2);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_5;
  }

  v13 = *(v15 + 56);

  return v13(a1, 1, 1, v2);
}

uint64_t sub_10008EBCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v54 = a1;
  URL.appendingPathExtension(_:)();
  v15 = *sub_100003C4C((v2 + 16), *(v2 + 40));
  sub_1000DF9D4(v55);
  v16 = v57;
  sub_100003C4C(v55, v56);
  v17 = URL.path.getter();
  v18 = (*(v16 + 16))(v17);
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    sub_100003C90(v55);
    v21 = errno.getter();
    if (v21 != 2)
    {
      v22 = v21;
      static os_log_type_t.error.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000F3C80;
      v24 = URL.path.getter();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100003D24();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 96) = &type metadata for Int32;
      *(v23 + 104) = &protocol witness table for Int32;
      *(v23 + 72) = v22;
      os_log(_:dso:log:_:_:)();

      (*(v9 + 8))(v14, v8);
      return 0;
    }

    sub_10008E970(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v9 + 8))(v14, v8);
      sub_10007B024(v7);
      return 0;
    }

    (*(v9 + 32))(v53, v7, v8);
    v27 = *sub_100003C4C((v2 + 16), *(v2 + 40));
    sub_1000DF9D4(v55);
    v28 = v57;
    sub_100003C4C(v55, v56);
    v29 = URL.path.getter();
    v18 = (*(v28 + 16))(v29);
    v31 = v30;

    sub_100003C90(v55);
    if (v31 >> 60 == 15)
    {
      LODWORD(v51) = errno.getter();
      v52 = static os_log_type_t.error.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      v50 = qword_10014E958;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000F7EC0;
      v33 = v53;
      v34 = URL.path.getter();
      v36 = v35;
      *(v32 + 56) = &type metadata for String;
      v37 = sub_100003D24();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = URL.path.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      *(v32 + 136) = &type metadata for Int32;
      *(v32 + 144) = &protocol witness table for Int32;
      *(v32 + 112) = v51;
      os_log(_:dso:log:_:_:)();

      v40 = *(v9 + 8);
      v40(v33, v8);
    }

    else
    {
      v52 = static os_log_type_t.default.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      v51 = qword_10014E958;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1000F3C80;
      v42 = v53;
      v43 = URL.path.getter();
      v45 = v44;
      *(v41 + 56) = &type metadata for String;
      v46 = sub_100003D24();
      *(v41 + 64) = v46;
      *(v41 + 32) = v43;
      *(v41 + 40) = v45;
      v47 = URL.path.getter();
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = v46;
      *(v41 + 72) = v47;
      *(v41 + 80) = v48;
      os_log(_:dso:log:_:_:)();

      v40 = *(v9 + 8);
      v40(v42, v8);
    }

    v40(v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    sub_100003C90(v55);
  }

  return v18;
}

void *sub_10008F210(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10008EBCC(a1);
  if (v10 >> 60 == 15)
  {
    static os_log_type_t.default.getter();
    if (qword_100133A98 != -1)
    {
      swift_once();
    }

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F3160;
    v12 = URL.path.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100003D24();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    return _swiftEmptyArrayStorage;
  }

  v41 = v9;
  v42 = v10;
  static String.Encoding.utf8.getter();
  sub_10008F69C();
  v15 = String.init<A>(bytes:encoding:)();
  if (!v16)
  {
    static os_log_type_t.error.getter();
    if (qword_100133A98 != -1)
    {
      swift_once();
    }

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000F3160;
    v36 = URL.path.getter();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100003D24();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    os_log(_:dso:log:_:_:)();
    goto LABEL_15;
  }

  v41 = v15;
  v42 = v16;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100012814();
  v17 = StringProtocol.trimmingCharacters(in:)();
  v19 = v18;
  (*(v3 + 8))(v6, v2);

  v41 = 32;
  v42 = 0xE100000000000000;
  __chkstk_darwin(v20);
  *&v40[-16] = &v41;
  v21 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100041C40, &v40[-32], v17, v19, v40);
  v22 = v21[2];
  if (!v22)
  {
LABEL_15:

    sub_100014988();
    return _swiftEmptyArrayStorage;
  }

  v41 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v22, 0);
  v23 = v41;
  v24 = v21 + 7;
  do
  {
    v25 = *(v24 - 3);
    v26 = *(v24 - 2);
    v27 = *(v24 - 1);
    v28 = *v24;

    v29 = static String._fromSubstring(_:)();
    v31 = v30;

    v41 = v23;
    v33 = *(v23 + 16);
    v32 = *(v23 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1000635A4((v32 > 1), v33 + 1, 1);
      v23 = v41;
    }

    *(v23 + 16) = v33 + 1;
    v34 = v23 + 16 * v33;
    *(v34 + 32) = v29;
    *(v34 + 40) = v31;
    v24 += 4;
    --v22;
  }

  while (v22);
  sub_100014988();

  return v23;
}

unint64_t sub_10008F69C()
{
  result = qword_100137118;
  if (!qword_100137118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137118);
  }

  return result;
}

uint64_t sub_10008F6F0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 56);

    do
    {
      sub_10000A990(v4, v11);
      v6 = v12;
      v7 = v13;
      sub_100003C4C(v11, v12);
      (*(v7 + 8))(v6, v7);
      sub_100003C90(v11);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  v8 = *(v0 + 80);
  sub_1000824F4(0xD000000000000011, 0x80000001001087F0);
  v9 = *(v1 + 120);
  return sub_100083E74(0xD000000000000014, 0x8000000100108810);
}

uint64_t sub_10008F7F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (qword_100133A50 == -1)
    {
      if (!*(result + 16))
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!*(v1 + 16))
      {
        return 0;
      }
    }

    v2 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v3)
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_10008F8D0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0xD00000000000001ELL;
  v46 = 0x80000001001087B0;
  static Date.now.getter();
  sub_1000981E8(&unk_1001372C0, &type metadata accessor for Date);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  (*(v3 + 8))(v6, v2);
  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v0[9];
  v44._countAndFlagsBits = sub_10001BAB8();
  v44._object = v10;
  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v44);

  v12 = v1[11];
  v44._countAndFlagsBits = 0xD000000000000014;
  v44._object = 0x80000001001087D0;
  v13 = sub_100048948();
  sub_100042B90(v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  String.append(_:)(v44);

  v23 = v1[12];
  v44._countAndFlagsBits = sub_10008D570(v22);
  v44._object = v24;
  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  String.append(_:)(v44);

  v27 = v1[10];
  v44._countAndFlagsBits = sub_10001113C(v26);
  v44._object = v28;
  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v44);

  v30 = *(v1[13] + 56);

  v32 = ApprovalSettingsState.debugDescription.getter(v31);
  v34 = v33;

  v44._countAndFlagsBits = v32;
  v44._object = v34;
  v35._countAndFlagsBits = 10;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  String.append(_:)(v44);

  v36 = v1[14];
  v44._countAndFlagsBits = sub_10001F904();
  v44._object = v37;
  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  String.append(_:)(v44);

  v40 = v1[15];
  v44._countAndFlagsBits = sub_10009EB98(v39);
  v44._object = v41;
  v42._countAndFlagsBits = 10;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  String.append(_:)(v44);

  return v45;
}

uint64_t sub_10008FC14()
{
  v1 = v0;
  *(v0 + 16) = sub_10003D554(_swiftEmptyArrayStorage);
  v106 = type metadata accessor for DriverKitDaemonSideEffects();
  v107 = &off_10012A108;
  v105[0] = v0;
  v103 = type metadata accessor for RealBundleResolver();
  v104 = &off_10012A460;
  v102[0] = swift_allocObject();
  v2 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v3 = v101;
  v4 = sub_100003DA0(v100, v101);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v100[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;

  sub_100095978(v9, v2);
  sub_100003C90(v102);
  sub_100003C90(v100);
  v10 = [objc_allocWithZone(NSFileManager) init];
  v11 = sub_100003DA0(v105, v106);
  sub_100095B78(v10, v11);
  v12 = type metadata accessor for RealKernelClient();
  swift_allocObject();
  sub_10006AE80();
  v103 = v12;
  v104 = &off_100128770;
  v102[0] = v13;
  v14 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v15 = v101;
  v16 = sub_100003DA0(v100, v101);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v100[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  sub_100095D88(*v19, v14);
  sub_100003C90(v102);
  sub_100003C90(v100);
  v21 = type metadata accessor for RealDaemonLauncher();
  v22 = swift_allocObject();
  v103 = v21;
  v104 = &off_1001286E8;
  v102[0] = v22;
  v23 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v24 = v101;
  v25 = sub_100003DA0(v100, v101);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v100[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_100095F88(*v28, v23);
  sub_100003C90(v102);
  sub_100003C90(v100);
  type metadata accessor for RealCodeSigningResolver();
  v30 = swift_allocObject();
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0;
  sub_1000CB9B8(v105);

  type metadata accessor for NullSystemPolicyClient();
  v31 = swift_allocObject();
  v31[3] = 0;
  v31[4] = 0;
  v31[2] = _swiftEmptyArrayStorage;
  v32 = sub_100003DA0(v105, v106);
  sub_100096188(v31, v32);
  v33 = type metadata accessor for EmbeddedSIPStatus();
  v34 = swift_allocObject();
  v103 = v33;
  v104 = &off_100127530;
  v102[0] = v34;
  v35 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v36 = v101;
  v37 = sub_100003DA0(v100, v101);
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v100[-1] - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  sub_100096388(*v40, v35);
  sub_100003C90(v102);
  sub_100003C90(v100);
  v42 = type metadata accessor for RealDistNote();
  v43 = swift_allocObject();
  v103 = v42;
  v104 = &off_1001286F8;
  v102[0] = v43;
  v44 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v45 = v101;
  v46 = sub_100003DA0(v100, v101);
  v47 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v46);
  v49 = (&v100[-1] - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  sub_100096588(*v49, v44);
  sub_100003C90(v102);
  sub_100003C90(v100);
  type metadata accessor for MinimalDeveloperKitClient();
  v51 = swift_allocObject();
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0;
  *(v51 + 16) = 0u;
  v52 = v51 + 16;
  v53 = sub_100003DA0(v105, v106);

  sub_100096788(v54, v53);
  sub_10000A990(v105, v102);
  swift_beginAccess();
  sub_100098230(v102, v52);
  swift_endAccess();

  v55 = type metadata accessor for RealApprovalsXPCPublisher();
  *(swift_allocObject() + 64) = 0;
  v56 = sub_10006E534(0xD00000000000002BLL, 0x8000000100109050, 0xD00000000000002BLL);
  v103 = v55;
  v104 = &off_10012E4F8;
  v102[0] = v56;
  v57 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v58 = v101;
  v59 = sub_100003DA0(v100, v101);
  v60 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = (&v100[-1] - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  sub_100096988(*v62, v57);
  sub_100003C90(v102);
  sub_100003C90(v100);
  v64 = type metadata accessor for RealDeviceProperties();
  v65 = swift_allocObject();
  v103 = v64;
  v104 = &off_10012E1B0;
  v102[0] = v65;
  v66 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v67 = v101;
  v68 = sub_100003DA0(v100, v101);
  v69 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v68);
  v71 = (&v100[-1] - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  sub_100096B88(*v71, v66);
  sub_100003C90(v102);
  sub_100003C90(v100);
  v73 = type metadata accessor for RealOSEnvironment();
  v74 = swift_allocObject();
  *(v74 + 16) = 2;
  v103 = v73;
  v104 = &off_100129DD0;
  v102[0] = v74;
  v75 = sub_100003DA0(v105, v106);
  sub_10000A990(v102, v100);
  v76 = v101;
  v77 = sub_100003DA0(v100, v101);
  v78 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v77);
  v80 = (&v100[-1] - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  sub_100096D88(*v80, v75);
  sub_100003C90(v102);
  sub_100003C90(v100);
  if (qword_100133B38 != -1)
  {
    swift_once();
  }

  if (byte_100138870 == 1)
  {
    type metadata accessor for NullCoreAnalyticsClient();
    v82 = swift_allocObject();
    v83 = sub_100003DA0(v105, v106);
    sub_100097188(v82, v83);
    type metadata accessor for RestoreOSFeatureFlagsClient();
    v84 = swift_allocObject();
    v85 = sub_100003DA0(v105, v106);
    sub_100097588(v84, v85);
    type metadata accessor for NullRunningBoardSupport();
    v86 = swift_allocObject();
    v87 = sub_100003DA0(v105, v106);
    sub_100097998(v86, v87);
    type metadata accessor for NullLaunchServices();
    v88 = swift_allocObject();
    v89 = sub_100003DA0(v105, v106);
    sub_100097D98(v88, v89);
  }

  else
  {
    type metadata accessor for RealCoreAnalyticsClient();
    v90 = swift_allocObject();
    v91 = sub_100003DA0(v105, v106);
    sub_100096F88(v90, v91);
    type metadata accessor for RealFeatureFlagsClient();
    v92 = swift_allocObject();
    v93 = sub_100003DA0(v105, v106);
    sub_100097388(v92, v93);
    v94 = [objc_allocWithZone(RunningBoardSupport) init];
    v95 = sub_100003DA0(v105, v106);
    sub_100097788(v94, v95);
    type metadata accessor for RealLaunchServices();
    v96 = swift_allocObject();
    v97 = sub_100003DA0(v105, v106);
    sub_100097B98(v96, v97);
  }

  sub_100003C90(v105);
  return v1;
}

uint64_t sub_10009077C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000907D8()
{
  v1 = os_transaction_create();
  swift_beginAccess();
  v2 = *sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF65C(v20);
  swift_endAccess();
  v3 = *sub_100003C4C(v20, v20[3]);
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v5 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000100106690;
  v6 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v5, &unk_1001372D0, &unk_1000F4500);
  v19[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v19[0] = v6;
  v7 = sub_10009C698(v19);
  v9 = v8;
  sub_100003C90(v19);
  if (v9 >> 60 == 15)
  {
    sub_10001449C();
    v10 = swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    *(v11 + 72) = 75;
    swift_willThrow();
    sub_100003C90(v20);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000F3160;
    v20[0] = v10;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100003D24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_10009CBAC(v7, v9);
    sub_100014988();
    sub_100003C90(v20);
    sub_100090AE0(v18, v1);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100090AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v98 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v98);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v96);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v103 = v2;
  if (v9)
  {
    v10 = (a1 + 32);
    v102 = _swiftEmptyArrayStorage;
    v101 = xmmword_1000F3C80;
    do
    {
      v11 = *v10;

      sub_10006931C(&v112, v12);

      sub_100009F34(&v112, &aBlock);
      v13 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v13;
      v111[0] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_100031C1C(0, v13[2] + 1, 1, v13);
        v111[0] = v15;
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        v102 = sub_100031C1C((v16 > 1), v17 + 1, 1, v15);
        v111[0] = v102;
      }

      else
      {
        v102 = v15;
      }

      v18 = *(&v107 + 1);
      v19 = v108;
      v20 = sub_100003DA0(&aBlock, *(&v107 + 1));
      v21 = *(*(v18 - 8) + 64);
      __chkstk_darwin(v20);
      v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_100097F98(v17, v23, v111, v18, v19);
      sub_100003C90(&aBlock);
      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {
    v102 = _swiftEmptyArrayStorage;
  }

  *&v101 = swift_allocObject();
  *(v101 + 16) = _swiftEmptyArrayStorage;
  v25 = v102[2];
  if (v25)
  {
    v26 = (v102 + 4);
    v91 = "quest %{public}s: %{public}s";
    v100 = xmmword_1000F3C80;
    *(&v27 + 1) = 2;
    v99 = xmmword_1000F3160;
    *&v27 = 136315138;
    v90 = v27;
    do
    {
      sub_10000A990(v26, &v112);
      sub_10000A990(&v112, v111);
      sub_100003CDC(&qword_100137300, &qword_1000F5020);
      if (swift_dynamicCast())
      {
        v34 = aBlock;
        v35 = sub_100091A64(aBlock);
        sub_100092504(v34, v35, v36);
        sub_100003C90(&v112);

        goto LABEL_15;
      }

      if (swift_dynamicCast())
      {
        v45 = v104;
        v46 = v101;
        v47 = *(v101 + 16);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *(v46 + 16) = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
          *(v101 + 16) = v47;
        }

        v50 = v47[2];
        v49 = v47[3];
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v47 = sub_100031C1C((v49 > 1), v50 + 1, 1, v47);
          *(v101 + 16) = v47;
        }

        sub_100003C90(&v112);
        *&v108 = &off_100129428;
        v52 = &type metadata for KernelRequests.RequestExit;
LABEL_25:
        *(&v107 + 1) = v52;
        *&aBlock = v45;
        v47[2] = v51;
        sub_100009F34(&aBlock, &v47[5 * v50 + 4]);
        *(v101 + 16) = v47;
        goto LABEL_15;
      }

      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v45 = v104;
          v66 = v101;
          v47 = *(v101 + 16);
          v67 = swift_isUniquelyReferenced_nonNull_native();
          *(v66 + 16) = v47;
          if ((v67 & 1) == 0)
          {
            v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          v50 = v47[2];
          v68 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v68 >> 1)
          {
            v47 = sub_100031C1C((v68 > 1), v50 + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          sub_100003C90(&v112);
          *&v108 = &off_100129448;
          v52 = &type metadata for KernelRequests.UnloadNotification;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(21);
            v72._object = (v91 | 0x8000000000000000);
            v72._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v72);
            _print_unlocked<A, B>(_:_:)();
            v73 = aBlock;
            sub_10001449C();
            v74 = swift_allocError();
            *v75 = v73;
            v76 = v109;
            v78 = v107;
            v77 = v108;
            *(v75 + 16) = aBlock;
            *(v75 + 32) = v78;
            *(v75 + 48) = v77;
            *(v75 + 64) = v76;
            *(v75 + 72) = 9;
            swift_willThrow();
            sub_100003C90(v111);
            static os_log_type_t.error.getter();
            sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
            v37 = swift_allocObject();
            *(v37 + 16) = v100;
            sub_10000A990(&v112, &aBlock);
            v38 = String.init<A>(describing:)();
            v40 = v39;
            *(v37 + 56) = &type metadata for String;
            v41 = sub_100003D24();
            *(v37 + 64) = v41;
            *(v37 + 32) = v38;
            *(v37 + 40) = v40;
            *&aBlock = v74;
            swift_errorRetain();
            sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
            v42 = String.init<A>(describing:)();
            *(v37 + 96) = &type metadata for String;
            *(v37 + 104) = v41;
            *(v37 + 72) = v42;
            *(v37 + 80) = v43;
            sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
            v44 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)();

            sub_100003C90(&v112);
            v3 = v103;
            goto LABEL_16;
          }

          v45 = v104;
          v69 = v101;
          v47 = *(v101 + 16);
          v70 = swift_isUniquelyReferenced_nonNull_native();
          *(v69 + 16) = v47;
          if ((v70 & 1) == 0)
          {
            v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          v50 = v47[2];
          v71 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v71 >> 1)
          {
            v47 = sub_100031C1C((v71 > 1), v50 + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          sub_100003C90(&v112);
          *&v108 = &off_100129468;
          v52 = &type metadata for KernelRequests.DextUpdateNotification;
        }

        goto LABEL_25;
      }

      v53 = v110;
      if (v110)
      {
        if (qword_100133A50 == -1)
        {
          if (*(v110 + 16))
          {
            goto LABEL_30;
          }
        }

        else
        {
          swift_once();
          if (*(v53 + 16))
          {
LABEL_30:
            v54 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
            if (v55)
            {
              sub_10000B430(*(v53 + 56) + 32 * v54, &aBlock);
              v56 = swift_dynamicCast();
              if (v56)
              {
                v57 = v104;
                v58 = v105;
                if (qword_100133A48 != -1)
                {
                  v79 = v104;
                  v56 = swift_once();
                  v57 = v79;
                }

                v59 = *(qword_10014E8A0 + 16);
                if (v59)
                {
                  __chkstk_darwin(v56);
                  *(&v88 - 2) = v28;
                  *(&v88 - 1) = v58;

                  os_unfair_lock_lock((v59 + 24));
                  sub_1000980FC((v59 + 16));
                  os_unfair_lock_unlock((v59 + 24));
                }

                else
                {
                  v89 = v57;
                  if (qword_100133B08 != -1)
                  {
                    swift_once();
                  }

                  v60 = type metadata accessor for Logger();
                  sub_1000144F0(v60, qword_10014EA58);

                  v61 = Logger.logObject.getter();
                  v62 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v61, v62))
                  {
                    v63 = v58;
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    *&aBlock = v65;
                    *v64 = v90;
                    *(v64 + 4) = sub_1000E3AF8(v89, v63, &aBlock);
                    _os_log_impl(&_mh_execute_header, v61, v62, "Skipping removeBreadcrumbForDextWithIdentifier for %s", v64, 0xCu);
                    sub_100003C90(v65);
                    v3 = v103;
                  }
                }
              }
            }
          }
        }
      }

      static os_log_type_t.debug.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v29 = swift_allocObject();
      *(v29 + 16) = v99;
      *&aBlock = v53;
      v30 = String.init<A>(describing:)();
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_100003D24();
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v33 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_100003C90(&v112);
LABEL_15:
      sub_100003C90(v111);
LABEL_16:
      v26 += 40;
      --v25;
    }

    while (v25);
  }

  v80 = *(v3 + 64);
  v81 = swift_allocObject();
  v82 = v101;
  v81[2] = v92;
  v81[3] = v82;
  v81[4] = v3;
  *&v108 = sub_1000980B0;
  *(&v108 + 1) = v81;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v107 = sub_10006CCB0;
  *(&v107 + 1) = &unk_10012A168;
  v83 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v84 = v93;
  static DispatchQoS.unspecified.getter();
  *&v112 = _swiftEmptyArrayStorage;
  sub_1000981E8(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  v85 = v95;
  v86 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v83);
  (*(v97 + 8))(v85, v86);
  (*(v94 + 8))(v84, v96);
}

uint64_t sub_100091A64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ApplicationRecord(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DriverBinEntry();
  v96 = *(v105 - 8);
  v14 = *(v96 + 64);
  v15 = __chkstk_darwin(v105);
  v117 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v86 - v17;
  v109 = type metadata accessor for UUID();
  v98 = *(v109 - 8);
  v18 = *(v98 + 64);
  __chkstk_darwin(v109);
  v94 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v86 - v25;
  v27 = sub_10008F7F8(a1);
  if (v28)
  {
    v103 = v13;
    v104 = v9;
    v87 = v8;
    v88 = v2;
    v29 = v28;
    v30 = v27;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000F3160;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100003D24();
    v90 = v30;
    *(v31 + 32) = v30;
    *(v31 + 40) = v29;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v91 = v29;

    v32 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v33 = v3[11];
    v34 = sub_100048948();

    v36 = v10;
    v37 = 0;
    v39 = v34 + 64;
    v38 = *(v34 + 8);
    v97 = v34;
    v40 = 1 << v34[32];
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v38;
    v89 = (v40 + 63) >> 6;
    v93 = v98 + 16;
    v92 = v98 + 32;
    v101 = (v36 + 16);
    v100 = (v36 + 8);
    v102 = (v98 + 8);
    v106 = v24;
    v43 = v26;
    v99 = v39;
    v107 = v26;
    v108 = v3;
    while (1)
    {
      if (!v42)
      {
        if (v89 <= v37 + 1)
        {
          v45 = v37 + 1;
        }

        else
        {
          v45 = v89;
        }

        v46 = v45 - 1;
        while (1)
        {
          v44 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v44 >= v89)
          {
            v78 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
            (*(*(v78 - 8) + 56))(v24, 1, 1, v78);
            v42 = 0;
            v37 = v46;
            goto LABEL_19;
          }

          v42 = *&v39[8 * v44];
          ++v37;
          if (v42)
          {
            v37 = v44;
            goto LABEL_18;
          }
        }

        __break(1u);
        return result;
      }

      v44 = v37;
LABEL_18:
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v48 = v47 | (v44 << 6);
      v49 = v97;
      v50 = v98;
      v51 = v94;
      v52 = v109;
      (*(v98 + 16))(v94, *(v97 + 6) + *(v98 + 72) * v48, v109);
      v53 = v95;
      sub_10008E708(*(v49 + 7) + *(v96 + 72) * v48, v95, type metadata accessor for DriverBinEntry);
      v54 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v55 = *(v54 + 48);
      v56 = *(v50 + 32);
      v24 = v106;
      v56(v106, v51, v52);
      sub_100068024(v53, &v24[v55]);
      (*(*(v54 - 8) + 56))(v24, 0, 1, v54);
      v43 = v107;
      v3 = v108;
LABEL_19:
      sub_100098118(v24, v43);
      v57 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v57 - 8) + 48))(v43, 1, v57) == 1)
      {

        return 0;
      }

      v58 = v43 + *(v57 + 48);
      v59 = v117;
      sub_100068024(v58, v117);
      swift_beginAccess();
      v60 = *sub_100003C4C(v3 + 2, v3[5]);
      sub_1000DFF08(v110);
      swift_endAccess();
      v61 = v59 + *(v105 + 28);
      v62 = v103;
      v63 = v104;
      (*v101)(v103, v61, v104);
      v64 = type metadata accessor for UncachedBundle();
      v65 = swift_allocObject();
      URL._bridgeToObjectiveC()(v66);
      v68 = v67;
      Unique = _CFBundleCreateUnique();

      v70 = *v100;
      if (Unique)
      {
        v71 = Unique;
        v70(v62, v63);

        *(v65 + 16) = v71;
        *(&v114 + 1) = v64;
        *&v115 = sub_1000981E8(&qword_1001373C0, type metadata accessor for UncachedBundle);
        *&v113 = v65;
        sub_100003C90(v110);
      }

      else
      {
        v70(v62, v63);
        swift_deallocPartialClassInstance();
        sub_100003C90(v110);
        *&v115 = 0;
        v113 = 0u;
        v114 = 0u;
      }

      sub_100014894(&v113, v110, &qword_1001342A8, &unk_1000F39C0);
      v72 = v111;
      v43 = v107;
      v3 = v108;
      v24 = v106;
      if (!v111)
      {
        break;
      }

      v73 = v112;
      sub_100003C4C(v110, v111);
      v74 = (*(v73 + 24))(v72, v73);
      v76 = v75;
      sub_100003C90(v110);
      if (!v76)
      {
        goto LABEL_6;
      }

      if (v74 == v90 && v76 == v91)
      {

        sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
LABEL_33:

        v83 = v117;
        v84 = v87;
        sub_10008E708(v117 + *(v105 + 20), v87, type metadata accessor for ApplicationRecord);
        sub_100098188(v83, type metadata accessor for DriverBinEntry);
        v13 = *v84;
        v85 = v84[1];

        sub_100098188(v84, type metadata accessor for ApplicationRecord);
        (*v102)(v43, v109);
        return v13;
      }

      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
      if (v77)
      {
        goto LABEL_33;
      }

LABEL_7:
      sub_100098188(v117, type metadata accessor for DriverBinEntry);
      result = (*v102)(v43, v109);
      v39 = v99;
    }

    sub_10000A184(v110, &qword_1001342A8, &unk_1000F39C0);
LABEL_6:
    sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
    goto LABEL_7;
  }

  sub_10001449C();
  swift_allocError();
  *v79 = 0xD00000000000002FLL;
  *(v79 + 8) = 0x8000000100108E30;
  v80 = v116;
  v82 = v114;
  v81 = v115;
  *(v79 + 16) = v113;
  *(v79 + 32) = v82;
  *(v79 + 48) = v81;
  *(v79 + 64) = v80;
  *(v79 + 72) = 9;
  swift_willThrow();
  return v13;
}

uint64_t sub_100093EA4()
{
  sub_100003C90((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  return v0;
}

uint64_t sub_100093F0C()
{
  sub_100093EA4();

  return swift_deallocClassInstance();
}

uint64_t sub_100093F80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 32)
    {
      sub_100014894(i, v8, &qword_1001343C8, &unk_1000F3CA0);
      if (!v9)
      {
        break;
      }

      result = sub_10000A184(v8, &qword_1001343C8, &unk_1000F3CA0);
      if (!--v1)
      {
        return result;
      }
    }

    sub_10001449C();
    swift_allocError();
    *v3 = 0x2064696C61766E49;
    *(v3 + 8) = 0xEF74736575716572;
    *(v3 + 16) = v4;
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    *(v3 + 72) = 9;
    swift_willThrow();
    return sub_10000A184(v8, &qword_1001343C8, &unk_1000F3CA0);
  }

  return result;
}

uint64_t sub_10009409C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v11 = *(*(*(v5 + 80) + 56) + 656);

  os_unfair_lock_lock((v11 + 72));
  v12 = *(v11 + 32);
  v102[0] = *(v11 + 16);
  v102[1] = v12;
  v102[2] = *(v11 + 48);
  v103 = *(v11 + 64);
  sub_100013848(v102, &v98);
  os_unfair_lock_unlock((v11 + 72));

  v13 = sub_100056C60(a1, a2);
  sub_1000138A4(v102);
  if (!v13)
  {
    goto LABEL_67;
  }

  v87 = a5;
  v91 = a3;
  v104 = _swiftEmptyArrayStorage;
  v14 = (v13 & 0xFFFFFFFFFFFFFF8);
  if (v13 >> 62)
  {
    goto LABEL_64;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v16 = _swiftEmptyArrayStorage;
  v88 = a2;
  v89 = a1;
  v94 = a4;
  if (v15)
  {
    a1 = 0;
    a4 = v13 & 0xC000000000000001;
    v92 = v13 & 0xC000000000000001;
    v93 = v13;
    while (1)
    {
      if (a4)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v16 = v104;
          a2 = v88;
          a1 = v89;
          a4 = v94;
          break;
        }
      }

      else
      {
        if (a1 >= *(v14 + 2))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v15 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v17 = *(v13 + 8 * a1 + 32);

        a2 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_18;
        }
      }

      sub_1000138F8(*(v17 + 24) + 24, &v98);
      if (BYTE8(v100))
      {
        sub_100013954(&v98);
      }

      else
      {
        v18 = v15;
        v19 = v14;
        sub_100009F34(&v98, v95);
        v20 = v96;
        v21 = v97;
        sub_100003C4C(v95, v96);
        (*(v21 + 56))(v20, v21);
        v23 = v22;
        sub_100003C90(v95);
        if (v23)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v24 = v104[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v14 = v19;
        v15 = v18;
        a4 = v92;
        v13 = v93;
      }

      ++a1;
      if (a2 == v15)
      {
        goto LABEL_19;
      }
    }
  }

  v25 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (!v25)
  {
    v26 = *(v16 + 16);
    if (v26 > 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (v26 <= 0)
  {
LABEL_66:

LABEL_67:
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v56._countAndFlagsBits = 0xD000000000000027;
    v56._object = 0x80000001001089A0;
    String.append(_:)(v56);
    v57._countAndFlagsBits = a1;
    v57._object = a2;
    String.append(_:)(v57);
    v58._object = 0x80000001001089D0;
    v58._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v58);
    v59 = v98;
    sub_10001449C();
    swift_allocError();
    *v36 = v59;
    v60 = v101;
    v61 = v100;
    v62 = v99;
    *(v36 + 16) = v98;
    *(v36 + 32) = v62;
    *(v36 + 48) = v61;
    *(v36 + 64) = v60;
    v40 = 10;
    goto LABEL_68;
  }

LABEL_25:
  v86 = v25;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000F3C80;
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v26;
  *(v27 + 96) = &type metadata for String;
  v28 = sub_100003D24();
  *(v27 + 104) = v28;
  *(v27 + 72) = a1;
  *(v27 + 80) = a2;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v29 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a4 >> 60 == 15)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000F3160;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v28;
    *(v30 + 32) = a1;
    *(v30 + 40) = a2;

    v31 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v87)
    {

      *&v98 = 0;
      *(&v98 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(93);
      v32._countAndFlagsBits = 0xD000000000000036;
      v32._object = 0x8000000100108CD0;
      String.append(_:)(v32);
      v33._countAndFlagsBits = a1;
      v33._object = a2;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 0xD000000000000025;
      v34._object = 0x8000000100108D10;
      String.append(_:)(v34);
      v35 = v98;
      sub_10001449C();
      swift_allocError();
      *v36 = v35;
      v37 = v101;
      v38 = v100;
      v39 = v99;
      *(v36 + 16) = v98;
      *(v36 + 32) = v39;
      *(v36 + 48) = v38;
      *(v36 + 64) = v37;
      v40 = 50;
LABEL_68:
      *(v36 + 72) = v40;
      swift_willThrow();
      return a1;
    }

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000F3160;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v28;
    v44 = v28;
    *(v45 + 32) = a1;
    *(v45 + 40) = a2;

    v46 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v86)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_32:
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_81;
        }

        if (*(v16 + 16))
        {
          a1 = *(v16 + 32);

          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_83;
      }
    }

    else if (*(v16 + 16))
    {
      goto LABEL_32;
    }

    return 0;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000F3C80;
  sub_1000146C4(v91, a4);
  *&v98 = sub_10005BD44(v91, a4);
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
  v42 = BidirectionalCollection<>.joined(separator:)();
  v44 = v43;

  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = v28;
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  *(v41 + 96) = &type metadata for String;
  *(v41 + 104) = v28;
  v85 = v28;
  *(v41 + 72) = a1;
  *(v41 + 80) = a2;

  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *&v98 = _swiftEmptyArrayStorage;
  if (v86)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a1 = *(v16 + 16);
  }

  if (!a1)
  {
    v49 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_52;
  }

  v13 = 0;
  a4 = v16 & 0xC000000000000001;
  while (a4)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    a2 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_48;
    }

LABEL_43:
    v95[0] = v44;
    v47 = sub_10009EF5C(v95, v91, v94);
    if (v90)
    {
      goto LABEL_85;
    }

    if (v47)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v48 = *(v98 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = &v98;
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      v14 = 0;
    }

    ++v13;
    if (a2 == a1)
    {
      goto LABEL_49;
    }
  }

  if (v13 >= *(v16 + 16))
  {
    goto LABEL_63;
  }

  v44 = *(v16 + 8 * v13 + 32);

  a2 = (v13 + 1);
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_43;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v49 = v98;
  if ((v98 & 0x8000000000000000) == 0)
  {
LABEL_52:
    if ((v49 & 0x4000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if (*(v49 + 16))
    {
      goto LABEL_54;
    }

LABEL_71:

    static os_log_type_t.error.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1000F3C80;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = v28;
    *(v66 + 32) = v89;
    *(v66 + 40) = v88;

    *&v98 = sub_10005BD44(v91, v94);
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v85;
    *(v66 + 72) = v67;
    *(v66 + 80) = v69;
    v70 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    if (v87)
    {

      *&v98 = 0;
      *(&v98 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(68);
      v71._countAndFlagsBits = 0xD000000000000029;
      v71._object = 0x8000000100108DE0;
      String.append(_:)(v71);
      v72._countAndFlagsBits = v89;
      v72._object = v88;
      String.append(_:)(v72);
      v73._countAndFlagsBits = 0xD000000000000017;
      v73._object = 0x8000000100108E10;
      String.append(_:)(v73);
      v95[0] = sub_10005BD44(v91, v94);
      v74 = BidirectionalCollection<>.joined(separator:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);

      v78 = v98;
      sub_10001449C();
      swift_allocError();
      *v79 = v78;
      v80 = v101;
      v81 = v100;
      v82 = v99;
      *(v79 + 16) = v98;
      *(v79 + 32) = v82;
      *(v79 + 48) = v81;
      *(v79 + 64) = v80;
      *(v79 + 72) = 10;
      swift_willThrow();
      sub_100014988();
      return a1;
    }

    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1000F3160;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = v85;
    *(v83 + 32) = v89;
    *(v83 + 40) = v88;

    v84 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!a1)
    {

      sub_100014988();
      return a1;
    }

    if ((v16 & 0xC000000000000001) == 0)
    {
      if (!*(v16 + 16))
      {
        __break(1u);
LABEL_85:

        __break(1u);
        return result;
      }

      a1 = *(v16 + 32);

      goto LABEL_77;
    }

LABEL_83:
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_77:

    sub_100014988();
LABEL_58:
    v44 = v85;
    goto LABEL_59;
  }

LABEL_70:
  v64 = v49;
  v65 = _CocoaArrayWrapper.endIndex.getter();
  v49 = v64;
  if (!v65)
  {
    goto LABEL_71;
  }

LABEL_54:
  if ((v49 & 0xC000000000000001) != 0)
  {
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_57:
    sub_100014988();

    goto LABEL_58;
  }

  if (*(v49 + 16))
  {
    a1 = *(v49 + 32);

    goto LABEL_57;
  }

  __break(1u);
LABEL_81:
  a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_59:
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1000F3C80;
  *(v50 + 56) = &type metadata for String;
  *(v50 + 64) = v44;
  *(v50 + 32) = v89;
  *(v50 + 40) = v88;
  v51 = *(a1 + 24);
  swift_retain_n();

  v53 = sub_1000D77B8(v52);
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v44;
  *(v50 + 72) = v53;
  *(v50 + 80) = v54;
  v55 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return a1;
}

uint64_t sub_100095978(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealBundleResolver();
  v17[4] = &off_10012A460;
  v17[0] = a1;
  v4 = sub_100003CDC(&unk_100137450, &unk_1000F9738);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100095B78(uint64_t a1, uint64_t *a2)
{
  v17[3] = sub_100009FEC(0, &qword_100137440, NSFileManager_ptr);
  v17[4] = &off_10012E208;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137448, &qword_1000F9730);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100095D88(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealKernelClient();
  v17[4] = &off_100128770;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137438, &qword_1000F9728);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100095F88(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealDaemonLauncher();
  v17[4] = &off_1001286E8;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137430, &qword_1000F9720);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096188(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for NullSystemPolicyClient();
  v17[4] = &off_100129860;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137428, &qword_1000F9718);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096388(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for EmbeddedSIPStatus();
  v17[4] = &off_100127530;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137420, &qword_1000F9710);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096588(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealDistNote();
  v17[4] = &off_1001286F8;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137418, &qword_1001018C0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096788(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for MinimalDeveloperKitClient();
  v17[4] = &off_10012E368;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100137410, &unk_1000F9700);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096988(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealApprovalsXPCPublisher();
  v17[4] = &off_10012E4F8;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_100133C70, &qword_100101860);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096B88(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealDeviceProperties();
  v17[4] = &off_10012E1B0;
  v17[0] = a1;
  v4 = sub_100003CDC(&unk_100137400, &unk_1000F96F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096D88(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealOSEnvironment();
  v17[4] = &off_100129DD0;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373F8, &qword_100101960);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100096F88(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealCoreAnalyticsClient();
  v17[4] = &off_100126E20;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E8, &unk_1000F96E0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097188(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for NullCoreAnalyticsClient();
  v17[4] = &off_100126E10;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E8, &unk_1000F96E0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097388(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealFeatureFlagsClient();
  v17[4] = &off_100127920;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E0, &qword_1001019B0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097588(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RestoreOSFeatureFlagsClient();
  v17[4] = &off_1001278F8;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373E0, &qword_1001019B0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097788(uint64_t a1, uint64_t *a2)
{
  v17[3] = sub_100009FEC(0, &qword_1001373F0, &off_100125108);
  v17[4] = &off_100127000;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D8, &unk_1000F96D0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097998(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for NullRunningBoardSupport();
  v17[4] = &off_100127020;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D8, &unk_1000F96D0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097B98(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for RealLaunchServices();
  v17[4] = &off_1001278B8;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D0, &qword_1001018F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097D98(uint64_t a1, uint64_t *a2)
{
  v17[3] = type metadata accessor for NullLaunchServices();
  v17[4] = &off_1001278D0;
  v17[0] = a1;
  v4 = sub_100003CDC(&qword_1001373D0, &qword_1001018F0);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = sub_100061698(v4), (v8 & 1) != 0))
  {
    sub_10000B430(*(v6 + 56) + 32 * v7, &v15);
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000A184(&v15, &qword_1001343C8, &unk_1000F3CA0);
  }

  *(&v16 + 1) = v4;
  *&v15 = swift_allocObject();
  sub_10000A990(v17, v15 + 16);
  swift_beginAccess();
  sub_100048114(&v15, v4);
  swift_endAccess();
  return sub_100003C90(v17);
}

uint64_t sub_100097F98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000193A4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100009F34(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100098030()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098068()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000980E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100098118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000981E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100133CC0, &qword_1000F32F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000982A0()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

const __CFDictionary *sub_100098310()
{
  result = CFBundleGetInfoDictionary(*(v0 + 16));
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000983B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))();
  if (result)
  {
    return sub_1000CAE64(result);
  }

  return result;
}

void sub_100098614()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 _cfBundle];
  if (v7)
  {
    v8 = v7;
    v9 = _CFBundleCopyInfoPlistURL();

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = (v3 + 8);
      v11 = Data.init(contentsOf:options:)();
      v13 = v12;
      (*v10)(v6, v2);
      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(length:)();
      v19 = 0x2000000000;
      v20 = v17;
      sub_10003CEB8(&v19, 0);
      v20 |= 0x4000000000000000uLL;
      sub_1000146C4(v11, v13);
      sub_10003ED1C(&v19, v11, v13);
      sub_1000128D8(v11, v13);
      sub_1000128D8(v11, v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100098818(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000988B4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_100098918()
{
  v1 = [*v0 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100098978@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 builtInPlugInsURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100098A1C(uint64_t a1)
{
  result = sub_10009932C(&qword_100137460, 255, sub_100098A78);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098A78()
{
  result = qword_100137468;
  if (!qword_100137468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100137468);
  }

  return result;
}

const __CFDictionary *sub_100098AC4()
{
  result = CFBundleGetInfoDictionary(*(v0 + 16));
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

id sub_100098C10(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

uint64_t sub_100098CB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_autoreleasePoolPush();
  v7 = *(v0 + 16);
  result = _CFBundleCopyInfoPlistURL();
  if (result)
  {
    v9 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = (v2 + 8);
    v11 = Data.init(contentsOf:options:)();
    v12 = v5;
    v14 = v13;
    (*v10)(v12, v1);
    v15 = type metadata accessor for __DataStorage();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = __DataStorage.init(length:)();
    v21 = 0x2000000000;
    v22 = v18;
    sub_10003CEB8(&v21, 0);
    v22 |= 0x4000000000000000uLL;
    sub_10003ED1C(&v21, v11, v14);
    sub_1000128D8(v11, v14);
    v19 = v21;
    objc_autoreleasePoolPop(v6);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098E60()
{
  v1 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = CFBundleCopyExecutableURL(*(v0 + 16));
  if (v8)
  {
    v9 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_100099374(v5, v7);
  type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_10007B024(v7);
    return 0;
  }

  else
  {
    v13 = URL.path.getter();
    (*(v11 + 8))(v7, v10);
    return v13;
  }
}

uint64_t sub_10009903C()
{

  return swift_deallocClassInstance();
}

void sub_100099198()
{
  v1 = CFBundleCopyBundleURL(*(*v0 + 16));
  if (v1)
  {
    v2 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000991F4@<X0>(uint64_t a1@<X8>)
{
  v3 = CFBundleCopyBuiltInPlugInsURL(*(*v1 + 16));
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1000992D4(uint64_t a1, uint64_t a2)
{
  result = sub_10009932C(&qword_1001375A8, a2, type metadata accessor for UncachedBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009932C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100099374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000993E4(uint64_t a1)
{
  type metadata accessor for UncachedBundle();
  v2 = swift_allocObject();
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  Unique = _CFBundleCreateUnique();

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  if (Unique)
  {
    v9 = Unique;
    v8(a1, v7);

    *(v2 + 16) = v9;
  }

  else
  {
    v8(a1, v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_100099D48(unint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v9 = type metadata accessor for URL();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v13 = *(a1 + 24);
  v71 = v3;
  if ((*(v3 + 650) & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v70 = v4;
  if ((a3 & 1) == 0 && *v13 != _TtC10driverkitd15DriverExtension)
  {
    if (sub_1000D7374() != 0xD000000000000020 || 0x8000000100109100 != v14)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) != 0 || sub_10009A664(v13))
      {
        goto LABEL_9;
      }

      if (*v13 == _TtC10driverkitd15KernelExtension)
      {
        sub_1000138F8((v13 + 3), &v73);
        if (BYTE8(v75) == 2)
        {
          if (v73 != 2 && v73 != 4)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_100013954(&v73);
        }

        sub_1000D790C();
        static os_log_type_t.error.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1000F3160;
        v59 = sub_1000D77B8(v58);
        v61 = v60;
        *(v58 + 56) = &type metadata for String;
        *(v58 + 64) = sub_100003D24();
        *(v58 + 32) = v59;
        *(v58 + 40) = v61;
        sub_10001491C();
        v57 = static OS_os_log.default.getter();
      }

      else
      {
        static os_log_type_t.error.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1000F3160;
        v54 = sub_1000D77B8(v53);
        v56 = v55;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_100003D24();
        *(v53 + 32) = v54;
        *(v53 + 40) = v56;
        sub_10001491C();
        v57 = static OS_os_log.default.getter();
      }

      os_log(_:dso:log:_:_:)();

      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      strcpy(&v73, "Cannot insert ");
      HIBYTE(v73) = -18;
      v63._countAndFlagsBits = sub_1000D77B8(v62);
      String.append(_:)(v63);

      v64._countAndFlagsBits = 0xD00000000000001FLL;
      v64._object = 0x8000000100109210;
      String.append(_:)(v64);
      v65 = v73;
      sub_10001449C();
      swift_allocError();
      *v48 = v65;
      v66 = v76;
      v68 = v74;
      v67 = v75;
      *(v48 + 16) = v73;
      *(v48 + 32) = v68;
      *(v48 + 48) = v67;
      *(v48 + 64) = v66;
      v52 = 68;
      goto LABEL_53;
    }
  }

LABEL_9:
  if (*v13 == _TtC10driverkitd15DriverExtension)
  {
    static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000F3160;
    v17 = sub_1000D77B8(v16);
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100003D24();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10001491C();
    v20 = static OS_os_log.default.getter();
  }

  else
  {
    if (*v13 == _TtC10driverkitd15KernelExtension)
    {
      sub_1000D790C();
    }

    static os_log_type_t.debug.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000F3160;
    v22 = sub_1000D77B8(v21);
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100003D24();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_10001491C();
    v20 = static OS_os_log.default.getter();
  }

  os_log(_:dso:log:_:_:)();
  v5 = v70;

LABEL_16:
  if (sub_1000D7374() == 0xD000000000000020 && 0x8000000100109100 == v25)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      return sub_100056178(v80);
    }
  }

  sub_1000138F8((v13 + 3), &v73);
  if (BYTE8(v75))
  {
    sub_100013954(&v73);
    return sub_100056178(v80);
  }

  v70 = a2;
  v29 = v5;
  sub_100009F34(&v73, v77);
  v30 = v78;
  v31 = v79;
  sub_100003C4C(v77, v78);
  (*(v31 + 64))(v30, v31);
  v32 = URL.path.getter();
  v34 = v33;
  (*(v72 + 8))(v12, v9);
  sub_100003C90(v77);
  if (v32 == 0xD000000000000042 && 0x8000000100109130 == v34)
  {

    v37 = v29;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v29;
    if ((v36 & 1) == 0)
    {
      return sub_100056178(v80);
    }
  }

  v38 = sub_1000D76D4();
  v39 = v71;
  swift_beginAccess();
  v40 = *(v39 + 664);

  sub_10005B9F4(v41);
  v43 = v42;
  v45 = v44;

  if (v43)
  {

    v46 = v70;
    if (v45 >= v38)
    {
      return sub_100056178(v80);
    }
  }

  else
  {
    v46 = v70;
    if (v38 < 1)
    {
      return sub_100056178(v80);
    }
  }

  sub_1000138F8((v13 + 3), &v73);
  if (BYTE8(v75) == 2)
  {
    return sub_100056178(v80);
  }

  sub_100013954(&v73);
  if (*v13 != _TtC10driverkitd15KernelExtension || !v13)
  {
    sub_10001449C();
    swift_allocError();
    *v48 = 0xD00000000000003ELL;
    *(v48 + 8) = 0x8000000100109180;
    v49 = v76;
    v51 = v74;
    v50 = v75;
    *(v48 + 16) = v73;
    *(v48 + 32) = v51;
    *(v48 + 48) = v50;
    *(v48 + 64) = v49;
    v52 = 44;
LABEL_53:
    *(v48 + 72) = v52;
    return swift_willThrow();
  }

  sub_10009A778(v47, v46);

  if (!v37)
  {

    return sub_100056178(v80);
  }

  return result;
}

BOOL sub_10009A664(__objc2_class **a1)
{
  if (*a1 != _TtC10driverkitd15KernelExtension)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  sub_1000138F8((a1 + 3), v9);
  if (v10)
  {
    sub_100013954(v9);
  }

  else
  {
    sub_100009F34(v9, v11);
    v5 = v12;
    v6 = v13;
    sub_100003C4C(v11, v12);
    (*(v6 + 56))(v5, v6);
    v8 = v7;
    sub_100003C90(v11);
    if (v8)
    {

      return 0;
    }
  }

  sub_1000138F8((a1 + 3), v9);
  result = v10 == 2;
  if (v10 != 2)
  {
    sub_100013954(v9);
    return 0;
  }

  return result;
}

uint64_t sub_10009AF80(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[1];
  v51 = *a2;
  v52 = v10;
  v53 = a2[2];
  v54 = *(a2 + 6);
  v11 = *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
  if (!sub_100055F6C(*(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind)))
  {
    v39 = v11;
    v55 = v51;
    v40 = v2;
    v41 = a2;
    v46 = a1;
    if (v51 >> 62)
    {
LABEL_43:
      v43 = v55 & 0xFFFFFFFFFFFFFF8;
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = v55 & 0xFFFFFFFFFFFFFF8;
      v44 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    v45 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
    v14 = v55 & 0xC000000000000001;
    v15 = (v6 + 16);
    v16 = (v6 + 8);
    while (1)
    {
      if (v44 == v13)
      {
        goto LABEL_15;
      }

      if (v14)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v18 = v46;
          v19 = v42;
          v20 = v40;
          v21 = sub_10002D180(v46);
          v6 = v20;
          if (!v20)
          {
            v5 = v21;
            v22 = sub_10008F210(v18 + v45);
            if ((*(v19 + 649) & 8) != 0)
            {
              v23 = v41;
            }

            else
            {
              v23 = v41;
              if (v39 > 1)
              {
                if (v39 == 2)
                {
                  sub_10009BAA8(v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, 0, 0, v41, v18);
                  v34 = v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID;
                  v35 = 1;
                  v36 = 1;
                  goto LABEL_39;
                }
              }

              else
              {
                if (!v39)
                {
                  sub_10009B874(1, v41, v18);
                  sub_10009B874(2, v23, v18);
                  goto LABEL_40;
                }

                sub_10009B874(2, v41, v18);
                v34 = v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID;
                v35 = 0;
                v36 = 0;
LABEL_39:
                sub_10009BAA8(v34, v35, v36, v23, v18);
LABEL_40:
                v6 = 0;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_45;
            }

LABEL_24:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_beginAccess();
            sub_10009C570(v22);
            swift_endAccess();

            v31 = *(v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions);
            if (v31 >> 62)
            {
              if (v31 < 0)
              {
                v37 = *(v5 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions);
              }

              v32 = _CocoaArrayWrapper.endIndex.getter();
              if (!v32)
              {
                return v5;
              }
            }

            else
            {
              v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v32)
              {
                return v5;
              }
            }

            v40 = v5;
            v55 = v31 & 0xC000000000000001;
            v43 = v31 & 0xFFFFFFFFFFFFFF8;

            v33 = 0;
            v45 = v32;
            v46 = v31;
            while (1)
            {
              if (v55)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v9 = (v33 + 1);
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_42;
                }
              }

              else
              {
                if (v33 >= *(v43 + 16))
                {
                  __break(1u);
                  __break(1u);
                  __break(1u);
LABEL_45:
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  goto LABEL_24;
                }

                v22 = *(v31 + 8 * v33 + 32);

                v9 = (v33 + 1);
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_42;
                }
              }

              sub_100099D48(v22, v23, 0);
              v5 = v6;

              v31 = v46;
              ++v33;
              if (v9 == v45)
              {

                return v40;
              }
            }
          }

          return v5;
        }
      }

      else
      {
        if (v13 >= *(v43 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v6 = *(v55 + 8 * v13 + 32);

        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      (*v15)(v9, *(v6 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v5);
      v17 = static URL.== infix(_:_:)();
      (*v16)(v9, v5);

      ++v13;
      if (v17)
      {
        *&v47 = 0;
        *(&v47 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v47 = 0xD000000000000016;
        *(&v47 + 1) = 0x8000000100109520;
        sub_10009C5E0(&qword_1001342A0, &type metadata accessor for URL);
        v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000017;
        v25._object = 0x8000000100109540;
        String.append(_:)(v25);
        v26 = v47;
        sub_10001449C();
        swift_allocError();
        *v12 = v26;
        goto LABEL_20;
      }
    }
  }

  sub_10001449C();
  swift_allocError();
  *v12 = 0xD00000000000003BLL;
  *(v12 + 8) = 0x8000000100109560;
LABEL_20:
  v27 = v50;
  v28 = v49;
  v29 = v48;
  *(v12 + 16) = v47;
  *(v12 + 32) = v29;
  *(v12 + 48) = v28;
  *(v12 + 64) = v27;
  *(v12 + 72) = 9;
  swift_willThrow();
  return v5;
}

uint64_t sub_10009C1E0(uint64_t a1, char a2, void *a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v5 = *(a1 + 32);
  LOBYTE(v6) = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a3;

  v10 = sub_100061E08(v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100034620(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_100061E08(v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_10003AD24();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v5;
  v22 = v21[7] + 24 * v10;
  *v22 = v6;
  *(v22 + 8) = v7;
  *(v22 + 16) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100104B40;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v4 = (a1 + 88);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v5 = *(v4 - 24);
      v8 = *(v4 - 16);
      v7 = *(v4 - 1);
      v25 = *v4;
      v26 = *a3;

      v27 = sub_100061E08(v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_100034620(v31, 1);
        v32 = *a3;
        v27 = sub_100061E08(v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v5;
      v35 = v34[7] + 24 * v27;
      *v35 = v8;
      *(v35 + 8) = v7;
      *(v35 + 16) = v25;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v6;
      v34[2] = v37;
      v4 += 4;
      if (v40 == v6)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10009C570(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1000E49A0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10009C5E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009C628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10009C698(uint64_t a1)
{
  sub_10000B430(a1, v7);
  type metadata accessor for CFDictionary(0);
  if (swift_dynamicCast())
  {
    v1 = v6;
  }

  else
  {
    v1 = 0;
  }

  sub_100003CDC(&qword_1001342C0, &qword_1000F39E0);
  v2 = Optional._bridgeToObjectiveC()();

  v3 = IOCFSerialize(v2, 0);
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v3;
}

uint64_t sub_10009C774(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009D078(a1, a1, a2);
  if (v2)
  {
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      if (v38 == 3)
      {

        v5 = *(v4 + 16);
        if (v5)
        {
          sub_100063608(0, v5, 0);
          v28 = v4;
          v6 = (v4 + 40);
          do
          {
            v7 = *(v6 - 1);
            v8 = *v6;

            v9 = static os_log_type_t.error.getter();
            v11 = _swiftEmptyArrayStorage[2];
            v10 = _swiftEmptyArrayStorage[3];
            if (v11 >= v10 >> 1)
            {
              sub_100063608((v10 > 1), v11 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v11 + 1;
            v12 = &_swiftEmptyArrayStorage[3 * v11];
            *(v12 + 32) = v9;
            v12[5] = v7;
            v12[6] = v8;
            v6 += 2;
            --v5;
          }

          while (v5);

          sub_10005AFAC(v28, v30, v31, v32, v33, v34, v35, v36, v37, 3);
        }

        else
        {

          sub_10005AFAC(v4, v30, v31, v32, v33, v34, v35, v36, v37, 3);
        }
      }

      else
      {
        sub_10005AFAC(v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    swift_willThrow();
    v20 = _swiftEmptyArrayStorage[2];
    if (v20)
    {
      v21 = &_swiftEmptyArrayStorage[6];
      do
      {
        v22 = *(v21 - 16);
        v23 = *(v21 - 1);
        v24 = *v21;
        v25 = qword_100133AA8;

        if (v25 != -1)
        {
          swift_once();
        }

        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1000F3160;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_100003D24();
        *(v26 + 32) = v23;
        *(v26 + 40) = v24;

        os_log(_:dso:log:_:_:)();

        v21 += 3;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v13 = *(v3 + 16);
    if (v13)
    {
      v14 = (v3 + 48);
      do
      {
        v15 = *(v14 - 16);
        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = qword_100133AA8;

        if (v18 != -1)
        {
          swift_once();
        }

        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1000F3160;
        *(v19 + 56) = &type metadata for String;
        *(v19 + 64) = sub_100003D24();
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;

        os_log(_:dso:log:_:_:)();

        v14 += 3;
        --v13;
      }

      while (v13);
    }
  }
}

void *sub_10009CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10009D7D8(&v45, a1, a2, a3, a4);
  if (v4)
  {
    v55 = v4;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      v6 = v46;
      v8 = v47;
      v7 = v48;
      v10 = v49;
      v9 = v50;
      v12 = v51;
      v11 = v52;
      if (v54 == 3)
      {
        v44 = v53;

        v14 = *(v13 + 16);
        if (v14)
        {
          v39 = v8;
          v40 = v10;
          v41 = v9;
          v43 = v11;
          v45 = _swiftEmptyArrayStorage;
          sub_100063608(0, v14, 0);
          v15 = v45;
          v38 = v13;
          v16 = (v13 + 40);
          do
          {
            v17 = *(v16 - 1);
            v18 = *v16;

            v19 = static os_log_type_t.error.getter();
            v45 = v15;
            v21 = v15[2];
            v20 = v15[3];
            if (v21 >= v20 >> 1)
            {
              sub_100063608((v20 > 1), v21 + 1, 1);
              v15 = v45;
            }

            v15[2] = v21 + 1;
            v22 = &v15[3 * v21];
            *(v22 + 32) = v19;
            v22[5] = v17;
            v22[6] = v18;
            v16 += 2;
            --v14;
          }

          while (v14);

          sub_10005AFAC(v38, v6, v39, v7, v40, v41, v12, v43, v44, 3);
        }

        else
        {

          sub_10005AFAC(v13, v6, v8, v7, v10, v9, v12, v11, v44, 3);
          v15 = _swiftEmptyArrayStorage;
        }

        goto LABEL_18;
      }

      sub_10005AFAC(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_18:
    swift_willThrow();
    v30 = v15[2];
    if (v30)
    {
      v31 = v15 + 6;
      do
      {
        v32 = *(v31 - 16);
        v33 = *(v31 - 1);
        v34 = *v31;
        v35 = qword_100133AA8;

        if (v35 != -1)
        {
          swift_once();
        }

        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1000F3160;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = sub_100003D24();
        *(v36 + 32) = v33;
        *(v36 + 40) = v34;

        os_log(_:dso:log:_:_:)();

        v31 += 3;
        --v30;
      }

      while (v30);
    }

    goto LABEL_23;
  }

  v15 = v45;
  v23 = *(v5 + 16);
  if (!v23)
  {
LABEL_23:

    return v15;
  }

  v42 = v45;
  v24 = (v5 + 48);
  do
  {
    v25 = *(v24 - 16);
    v26 = *(v24 - 1);
    v27 = *v24;
    v28 = qword_100133AA8;

    if (v28 != -1)
    {
      swift_once();
    }

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000F3160;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100003D24();
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;

    os_log(_:dso:log:_:_:)();

    v24 += 3;
    --v23;
  }

  while (v23);

  return v42;
}

void *sub_10009E148(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_100063628(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000B430(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100063628((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10009E254(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000B430(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000635A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10009E368(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100063608(0, v6, 0);
  v33 = v5;
  v34 = v4;
  v31 = a2;
  v32 = v6;
  v30 = a1;
  if (!v6)
  {
LABEL_22:
    v17 = v33;
    v16 = v34;
    if (v34 <= v33)
    {
      return _swiftEmptyArrayStorage;
    }

    v18 = v30 + 32;
    v19 = v32;
    v20 = (v31 + 16 * v32 + 40);
    while (1)
    {
      if (v19 >= v16)
      {
        goto LABEL_47;
      }

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_48;
      }

      if (v17 == v19)
      {
        return _swiftEmptyArrayStorage;
      }

      if (v19 >= v17)
      {
        goto LABEL_49;
      }

      v22 = *(v18 + 8 * v19);
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_51;
      }

      v24 = *(v20 - 1);
      v23 = *v20;
      v25 = *(v18 + 8 * v19) & 7;

      if (v25 <= 2)
      {
        break;
      }

      if (v25 == 3)
      {
        result = static os_log_type_t.info.getter();
        goto LABEL_39;
      }

      if (v25 != 7)
      {
        goto LABEL_36;
      }

      result = static os_log_type_t.debug.getter();
LABEL_39:
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        v35 = result;
        sub_100063608((v26 > 1), v27 + 1, 1);
        result = v35;
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      *(v28 + 32) = result;
      ++v19;
      v20 += 2;
      v28[5] = v24;
      v28[6] = v23;
      v17 = v33;
      v16 = v34;
      if (v21 == v34)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    if (v25 == 1)
    {
      result = static os_log_type_t.error.getter();
      goto LABEL_39;
    }

LABEL_36:
    result = static os_log_type_t.default.getter();
    goto LABEL_39;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 40);
  while (v4)
  {
    if (!v5)
    {
      goto LABEL_44;
    }

    if ((*v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (HIDWORD(*v8))
    {
      goto LABEL_46;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *v8 & 7;

    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        result = static os_log_type_t.error.getter();
        goto LABEL_19;
      }

LABEL_16:
      result = static os_log_type_t.default.getter();
      goto LABEL_19;
    }

    if (v12 == 3)
    {
      result = static os_log_type_t.info.getter();
      goto LABEL_19;
    }

    if (v12 != 7)
    {
      goto LABEL_16;
    }

    result = static os_log_type_t.debug.getter();
LABEL_19:
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v29 = result;
      sub_100063608((v13 > 1), v14 + 1, 1);
      result = v29;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[3 * v14];
    *(v15 + 32) = result;
    --v5;
    v15[5] = v11;
    v15[6] = v10;
    --v4;
    v9 += 2;
    ++v8;
    if (!--v6)
    {
      goto LABEL_22;
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
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_10009E624()
{
  v1 = *sub_100003C4C((v0 + 16), *(v0 + 40));
  sub_1000DF65C(&v37);
  v2 = *sub_100003C4C(&v37, *(&v38 + 1));
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0x65526E6F6D656144;
  *(inited + 56) = 0xEB00000000796461;
  v5 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10009EEF4(v4);
  *(&v33 + 1) = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  *&v32 = v5;
  v6 = sub_10009C698(&v32);
  v8 = v7;
  sub_100003C90(&v32);
  if (v8 >> 60 != 15)
  {
    sub_10009C774(v6, v8);
    sub_100014988();
    sub_100003C90(&v37);
    return 1;
  }

  sub_10001449C();
  v9 = swift_allocError();
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = 75;
  swift_willThrow();
  sub_100003C90(&v37);
  v36 = v9;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  v11 = swift_dynamicCast();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  *&v40[9] = *&v35[9];
  v39 = v34;
  *v40 = *v35;
  v37 = v32;
  v38 = v33;
  if (v35[24] != 3)
  {
    sub_10001465C(&v37);
LABEL_11:
    if (qword_100133AF8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000144F0(v22, qword_10014EA28);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v32 = v26;
      *v25 = 136315138;
      v36 = v9;
      swift_errorRetain();
      v27 = String.init<A>(describing:)();
      v29 = sub_1000E3AF8(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "unexpected error checking if daemon is active %s", v25, 0xCu);
      sub_100003C90(v26);
    }

    else
    {
    }

    return 0;
  }

  if (qword_100133AF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000144F0(v12, qword_10014EA28);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_10001465C(&v37);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;

    v18 = sub_1000AA704(v17);
    v20 = v19;
    sub_10001465C(&v37);
    v21 = sub_1000E3AF8(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "kernel reports daemon is not active: %s", v15, 0xCu);
    sub_100003C90(v16);

    sub_10001465C(&v37);
  }

  else
  {

    sub_10001465C(&v37);
  }

  return 0;
}

_UNKNOWN **sub_10009EB50()
{
  v1 = sub_10009E624();
  v2 = *(v0 + 72);
  if (v2 != 2 && ((v1 ^ v2) & 1) == 0)
  {
    return 0;
  }

  *(v0 + 72) = v1 & 1;
  return &off_1001260E0;
}

uint64_t sub_10009EC84()
{
  sub_100003C90((v0 + 16));

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

CFStringRef sub_10009ECF4(const char *a1)
{

  return sub_10009ED5C(a1, &unk_1001389A0, &qword_1000F96A0);
}

CFStringRef sub_10009ED5C(const char *a1, uint64_t *a2, uint64_t *a3)
{
  errorString[0] = 0;
  IOCFUnserialize(a1, kCFAllocatorDefault, 0, errorString);
  v5 = errorString[0];
  if (errorString[0])
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F3160;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100003D24();
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    sub_10001491C();
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    sub_100003CDC(&qword_1001376C0, &qword_1000F9880);
    sub_100003CDC(a2, a3);
    if (swift_dynamicCast())
    {
      return errorString[1];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009EEF4(uint64_t a1)
{
  v2 = sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009EF5C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_100023AFC(0, 0, 0);
  if (!*(v6 + 16) || (v7 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_10000B430(*(v6 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0 || v12 >> 60 == 15)
  {
LABEL_8:
    if (a3 >> 60 == 15)
    {
      sub_1000146C4(a2, a3);
      sub_100014988();
      v9 = 1;
      return v9 & 1;
    }

LABEL_10:
    sub_1000146C4(a2, a3);
    sub_100014988();
    sub_100014988();
    v9 = 0;
    return v9 & 1;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_1000146C4(a2, a3);
  sub_100041D48();
  v9 = sub_10006475C(v11, v12, a2, a3);
  sub_100014988();
  sub_100014988();
  sub_100014988();
  return v9 & 1;
}

uint64_t sub_10009F0FC(uint64_t a1)
{
  v43 = type metadata accessor for URL();
  v3 = *(v43 - 8);
  v4 = v3[8];
  __chkstk_darwin(v43);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v35 = v1;
  v49 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v6, 0);
  v7 = v49;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v40 = v3 + 1;
  v41 = v3 + 2;
  v36 = a1 + 64;
  v37 = v6;
  v38 = v3;
  v39 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v44 = v12;
    v45 = v15;
    v16 = *(a1 + 48) + v3[9] * v11;
    v17 = v3[2];
    v46 = v7;
    v19 = v42;
    v18 = v43;
    v17(v42, v16, v43);
    v47 = 2314;
    v48 = 0xE200000000000000;
    v20._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v20);

    v21 = v3;
    v22 = v47;
    v23 = v48;
    v24 = v19;
    v7 = v46;
    result = (v21[1])(v24, v18);
    v49 = v7;
    v26 = v7[2];
    v25 = v7[3];
    if (v26 >= v25 >> 1)
    {
      result = sub_1000635A4((v25 > 1), v26 + 1, 1);
      v7 = v49;
    }

    v7[2] = v26 + 1;
    v27 = &v7[2 * v26];
    v27[4] = v22;
    v27[5] = v23;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v39;
    v28 = *(v39 + 8 * v14);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v14 << 6;
      v31 = v14 + 1;
      v32 = (v36 + 8 * v14);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1000147E0(v11, v45, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v11, v45, 0);
    }

LABEL_4:
    v12 = v44 + 1;
    v11 = v13;
    v3 = v38;
    if (v44 + 1 == v37)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10009F428(uint64_t a1)
{
  v39 = type metadata accessor for URL();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v33 = v1;
    v47 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v6, 0);
    v8 = v47;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v36 = a1 + 64;
    v37 = (v3 + 8);
    v34 = a1 + 72;
    v35 = v6;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v40 = v12;
      v41 = v15;
      sub_10000A990(*(a1 + 56) + 40 * v11, v44);
      v42 = 2314;
      v43 = 0xE200000000000000;
      v16 = v45;
      v17 = v46;
      sub_100003C4C(v44, v45);
      v18 = v38;
      (*(v17 + 64))(v16, v17);
      v19 = URL.path(percentEncoded:)(1);
      (*v37)(v18, v39);
      String.append(_:)(v19);

      v21 = v42;
      v20 = v43;
      result = sub_100003C90(v44);
      v22 = v8;
      v47 = v8;
      v23 = v8[2];
      v24 = v22[3];
      if (v23 >= v24 >> 1)
      {
        result = sub_1000635A4((v24 > 1), v23 + 1, 1);
        v22 = v47;
      }

      v22[2] = v23 + 1;
      v25 = &v22[2 * v23];
      v25[4] = v21;
      v25[5] = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v36;
      v26 = *(v36 + 8 * v14);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v22;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v34 + 8 * v14);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1000147E0(v11, v41, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1000147E0(v11, v41, 0);
      }

LABEL_4:
      v12 = v40 + 1;
      v11 = v13;
      if (v40 + 1 == v35)
      {
        return v8;
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
  }

  return result;
}

uint64_t sub_10009F77C(uint64_t a1)
{
  v40 = type metadata accessor for URL();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v33[1] = v1;
  v42 = _swiftEmptyArrayStorage;
  v35 = v5;
  sub_1000635C4(0, v8, 0);
  v9 = v42;
  v10 = v35 + 56;
  v11 = -1 << *(v35 + 32);
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = v35;
  v15 = 0;
  v38 = v3 + 32;
  v39 = v3;
  v34 = v35 + 64;
  v36 = v8;
  v37 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v41 = *(v14 + 36);
    v19 = (*(v14 + 48) + 16 * v13);
    v20 = *v19;
    v21 = v19[1];
    v22 = v14;

    URL.init(fileURLWithPath:)();

    v42 = v9;
    v23 = v7;
    v25 = v9[2];
    v24 = v9[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000635C4(v24 > 1, v25 + 1, 1);
      v9 = v42;
    }

    v9[2] = v25 + 1;
    result = (*(v39 + 32))(v9 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v23, v40);
    v16 = 1 << *(v22 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v14 = v22;
    v10 = v37;
    v26 = *(v37 + 8 * v18);
    if ((v26 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v41 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v7 = v23;
    v27 = v26 & (-2 << (v13 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
    }

    else
    {
      v28 = v18 << 6;
      v29 = v18 + 1;
      v30 = (v34 + 8 * v18);
      v17 = v36;
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000147E0(v13, v41, 0);
          v14 = v35;
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      result = sub_1000147E0(v13, v41, 0);
      v14 = v35;
LABEL_19:
      v7 = v23;
    }

    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v9;
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
  return result;
}

uint64_t sub_10009FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = v26[4];
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_10:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_12;
      }

      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = 0;
    v3 += 32;
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      v7 = v6 + 1;
      v8 = *(v3 + 8 * v6);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v10 = [v8 evaluateWithObject:isa];

      v6 = v7;
      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

LABEL_12:
  v12 = v26[2];
  if (*(v12 + 16) && (sub_1000814E8(a1, a2, v12) & 1) != 0)
  {
    return 0;
  }

  if (*(*v26 + 16))
  {
    return (sub_1000814E8(a1, a2, *v26) & 1) == 0;
  }

  v13 = v26[1];
  if (!*(v13 + 16))
  {
    if (!a3)
    {
      return 2;
    }

    goto LABEL_25;
  }

  v14 = sub_1000814E8(a1, a2, v13);
  if (v14)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if (a3 && (v14 & 1) == 0)
  {
LABEL_25:
    p_ivars = v26[3];
    v16 = p_ivars & 0xFFFFFFFFFFFFFF8;
    if (p_ivars >> 62)
    {
LABEL_33:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_27:
        v18 = 0;
        v19 = (p_ivars + 32);
        p_ivars = &ApprovalSettingsStateManager.ivars;
        while (v17 != v18)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = v18 + 1;
          v21 = v19[v18];
          v22 = Dictionary._bridgeToObjectiveC()().super.isa;
          v23 = [(__objc2_ivar_list *)v21 evaluateWithObject:v22];

          v18 = v20;
          if ((v23 & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else
    {
      v17 = *((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_27;
      }
    }

    return 2;
  }

  return result;
}

BOOL sub_10009FD70(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10009FDA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10009FDCC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10009FEA0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10006FA70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10009FEE0()
{
  _StringGuts.grow(_:)(132);
  v1._countAndFlagsBits = 0x203A686372610A5BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x6E61697261760A2CLL;
  v2._object = 0xEB00000000203A74;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x6C656E72656B0A2CLL;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._object = 0x8000000100109FB0;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  v6._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x8000000100109FD0;
  String.append(_:)(v7);
  object = v0[3]._object;
  v9._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v9);

  v10._object = 0x8000000100109FF0;
  v10._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v10);
  v11 = v0[4]._countAndFlagsBits;
  v12._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v12);

  v13._object = 0x800000010010A010;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  v14 = v0[4]._object;
  v15._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 6097452;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_1000A00DC(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_1001378B8, &qword_1000F9F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000AA290();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[6];
    HIBYTE(v18) = 3;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001945C(&qword_100134610);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v3[7];
    HIBYTE(v18) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v3[8];
    HIBYTE(v18) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v3[9];
    HIBYTE(v18) = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000A03A8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x746E6169726176;
    if (v1 != 1)
    {
      v4 = 0x6C656E72656BLL;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 1751347809;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 3)
    {
      v2 = 0x6465726975716572;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

uint64_t sub_1000A0488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A9A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A04BC(uint64_t a1)
{
  v2 = sub_1000AA290();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A04F8(uint64_t a1)
{
  v2 = sub_1000AA290();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000A0534@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A9CC0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000A059C(uint64_t *a1, _DWORD *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v174 = *(v6 - 8);
  v175 = v6;
  v7 = *(v174 + 64);
  v8 = __chkstk_darwin(v6);
  v171 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v172 = &v170 - v10;
  v185 = type metadata accessor for OSSignpostID();
  v190 = *(v185 - 8);
  v11 = *(v190 + 64);
  v12 = __chkstk_darwin(v185);
  v173 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v176 = &v170 - v15;
  v16 = __chkstk_darwin(v14);
  v177 = &v170 - v17;
  v18 = __chkstk_darwin(v16);
  v181 = &v170 - v19;
  __chkstk_darwin(v18);
  v178 = &v170 - v20;
  v188 = type metadata accessor for URL();
  v201 = *(v188 - 8);
  v21 = *(v201 + 64);
  v22 = __chkstk_darwin(v188);
  v179 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v187 = &v170 - v24;
  *(v2 + 664) = sub_10003F2C0(_swiftEmptyArrayStorage);
  *(v2 + 672) = _swiftEmptyArrayStorage;
  *(v2 + 680) = sub_10003F3CC(_swiftEmptyArrayStorage);
  *(v2 + 688) = 0u;
  *(v2 + 704) = 0;
  *(v2 + 712) = sub_10003F3E0(_swiftEmptyArrayStorage);
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0;
  *(v2 + 744) = &_swiftEmptySetSingleton;
  *(v2 + 752) = 0;
  v199 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v25 = swift_allocObject();
  v200 = xmmword_1000F3160;
  *(v25 + 16) = xmmword_1000F3160;
  v26 = sub_1000A1C58();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  v193 = sub_100003D24();
  *(v25 + 64) = v193;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v202 = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v29 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v197 = a1;
  sub_10000A990(a1, v3 + 16);
  memcpy((v3 + 56), a2, 0x255uLL);
  sub_100041A84(a2, v212);
  v30 = sub_10003F3F4(_swiftEmptyArrayStorage);
  v31 = sub_10003F5B0(_swiftEmptyArrayStorage);
  v32 = sub_10003F6A8(_swiftEmptyArrayStorage);
  v33 = sub_10003F6BC(_swiftEmptyArrayStorage);
  v34 = sub_10003F8A4(_swiftEmptyArrayStorage);
  sub_100003CDC(&qword_100137850, &qword_1000F9B98);
  v35 = swift_allocObject();
  *(v35 + 72) = 0;
  *(v35 + 16) = _swiftEmptyArrayStorage;
  *(v35 + 24) = v30;
  *(v35 + 32) = &_swiftEmptySetSingleton;
  *(v35 + 40) = v31;
  *(v35 + 48) = v32;
  *(v35 + 56) = v33;
  v36 = a2;
  *(v35 + 64) = v34;
  *(v3 + 656) = v35;
  v37 = a2[148];
  v192 = v3;
  v194 = a2;
  v180 = v37;
  if ((v37 & 0x20) != 0)
  {
    v41 = &type metadata for String;
    goto LABEL_51;
  }

  *&v212[0] = off_100136EB8[0];
  swift_bridgeObjectRetain_n();
  v38 = v198;
  sub_1000A7E2C(v212);
  if (v38)
  {

    __break(1u);
    return result;
  }

  v198 = 0;

  v39 = *&v212[0];
  v40 = *(*&v212[0] + 16);
  v41 = &type metadata for String;
  v42 = v193;
  if (!v40)
  {
LABEL_50:

LABEL_51:
    v43 = v190;
    v42 = v178;
    if (qword_100133B10 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_52;
  }

  v43 = 0;
  v196 = v40 - 1;
  v191 = "system kext collection";
  v183 = "auxiliary kext collection";
  v184 = (v201 + 8);
  v186 = "o prelink UUID key?";
  v182 = "f dext in the ARV at %{public}s";
  v189 = *&v212[0];
  while (1)
  {
    v44 = *(v39 + v43 + 32);
    v45 = swift_allocObject();
    *(v45 + 16) = v200;
    v46 = 0xD000000000000016;
    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v46 = 0xD000000000000019;
        v47 = v186;
      }

      else
      {
        v46 = 0xD000000000000012;
        v47 = v182;
      }
    }

    else
    {
      v47 = v191;
      if (v44)
      {
        v47 = v183;
      }
    }

    *(v45 + 56) = v41;
    *(v45 + 64) = v42;
    *(v45 + 32) = v46;
    *(v45 + 40) = v47 | 0x8000000000000000;
    v48 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (qword_100133A78 != -1)
    {
      swift_once();
    }

    v49 = qword_10014E948;
    if (!*(qword_10014E948 + 16))
    {
      break;
    }

    v50 = sub_1000616D4(v44);
    if ((v51 & 1) == 0)
    {
      goto LABEL_85;
    }

    v52 = *(*(v49 + 56) + 8 * v50);
    memcpy(v211, v36, sizeof(v211));
    sub_100041A84(v36, &v208);

    v201 = v52;
    swift_getAtKeyPath();
    memcpy(v212, v211, 0x255uLL);
    sub_100041AE0(v212);
    v53 = *(&v206 + 1);
    if (*(&v206 + 1))
    {
      v54 = v41;
      v55 = v206;
      v56 = *sub_100003C4C(v197, v197[3]);
      sub_1000DF9D4(&v208);
      v57 = v209;
      v58 = v210;
      sub_100003C4C(&v208, v209);
      v59 = v58[14];
      v195 = v55;
      v59(&v206, v55, v53, 1, v57, v58);
      if (v207)
      {
        sub_100009F34(&v206, v211);
        sub_100003C90(&v208);
        v60 = sub_100003C4C(v211, *&v211[24]);
        v61 = *v60;
        v62 = v60[1];
        if (sub_1000A9608() && sub_10000166C())
        {
          sub_1000146C4(v61, v62);
          v63 = v198;
          sub_1000A90F8(v61, v62, v61, v62, &v203);
          v198 = v63;
          if (*(&v204 + 1))
          {
            sub_100009F34(&v203, &v206);
LABEL_27:
            v68 = sub_100003C4C(&v206, v207);
            v69 = *v68;
            v70 = v68[1];
            if (sub_1000A9628())
            {
              sub_1000146C4(v69, v70);
              v71 = v198;
              sub_1000D527C(v69, v70, v69, v70, &v208);
              v72 = v71;
              v73 = v192;
            }

            else
            {
              static os_log_type_t.error.getter();
              v77 = static OS_os_log.default.getter();
              v73 = v192;
              os_log(_:dso:log:_:_:)();

              v209 = &type metadata for Data;
              v210 = &off_10012DA28;
              *&v208 = v69;
              *(&v208 + 1) = v70;
              sub_1000146C4(v69, v70);
              v72 = v198;
            }

            sub_100003C90(&v206);
            v78 = v187;
            URL.init(fileURLWithPath:)();

            v80 = *(v73 + 656);
            __chkstk_darwin(v79);
            *(&v170 - 6) = v73;
            v81 = v78;
            v36 = v194;
            *(&v170 - 5) = v194;
            *(&v170 - 4) = v81;
            *(&v170 - 24) = v44;
            *(&v170 - 2) = &v208;

            os_unfair_lock_lock((v80 + 72));
            sub_1000A963C((v80 + 16), &v206);
            v198 = v72;
            v82 = (v80 + 72);
            if (v72)
            {
              os_unfair_lock_unlock(v82);
              v111 = v192;

              sub_100041AE0(v36);

              (*v184)(v81, v188);
              sub_100003C90(&v208);
              sub_100003C90(v211);
              goto LABEL_83;
            }

            os_unfair_lock_unlock(v82);

            (*v184)(v81, v188);
            sub_100003C90(&v208);
            sub_100003C90(v211);
            v41 = &type metadata for String;
            v42 = v193;
            v39 = v189;
            goto LABEL_46;
          }
        }

        else
        {
          static os_log_type_t.error.getter();
          v67 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v205 = 0;
          v203 = 0u;
          v204 = 0u;
        }

        sub_10000A990(v211, &v206);
        if (*(&v204 + 1))
        {
          sub_10000A184(&v203, &qword_1001350F0, &qword_1000F89E0);
        }

        goto LABEL_27;
      }

      sub_10000A184(&v206, &qword_1001350F0, &qword_1000F89E0);
      sub_100003C90(&v208);
      v42 = v193;
      v41 = v54;
      if (v44 == 2)
      {

        v74 = swift_allocObject();
        *(v74 + 16) = v200;
        v36 = v194;
        v39 = v189;
        v75 = 0xD000000000000019;
        v76 = v186;
      }

      else
      {
        v36 = v194;
        v39 = v189;
        if ((v180 & 0x10) == 0)
        {

          *v211 = 0;
          *&v211[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          *v211 = 0xD000000000000023;
          *&v211[8] = 0x8000000100109A50;
          v162._countAndFlagsBits = v195;
          v162._object = v53;
          String.append(_:)(v162);

          v163 = *v211;
          v164 = *&v211[8];
          sub_10001449C();
          swift_allocError();
          *v165 = v163;
          *(v165 + 8) = v164;
          v166 = *&v211[48];
          v167 = *&v211[32];
          v168 = *&v211[16];
          *(v165 + 16) = *v211;
          *(v165 + 32) = v168;
          *(v165 + 48) = v167;
          *(v165 + 64) = v166;
          *(v165 + 72) = 9;
          swift_willThrow();
          sub_100041AE0(v36);

          v111 = v192;
          goto LABEL_82;
        }

        v74 = swift_allocObject();
        *(v74 + 16) = v200;
        v75 = 0xD000000000000016;
        if (v44 > 1)
        {
          v75 = 0xD000000000000012;
          v76 = v182;
        }

        else if (v44)
        {
          v76 = v183;
        }

        else
        {
          v76 = v191;
        }
      }

      *(v74 + 56) = v41;
      *(v74 + 64) = v42;
      *(v74 + 32) = v75;
      *(v74 + 40) = v76 | 0x8000000000000000;
      v83 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v64 = swift_allocObject();
      *(v64 + 16) = v200;
      v65 = 0xD000000000000016;
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v65 = 0xD000000000000019;
          v66 = v186;
        }

        else
        {
          v65 = 0xD000000000000012;
          v66 = v182;
        }
      }

      else
      {
        v66 = v191;
        if (v44)
        {
          v66 = v183;
        }
      }

      *(v64 + 56) = v41;
      *(v64 + 64) = v42;
      *(v64 + 32) = v65;
      *(v64 + 40) = v66 | 0x8000000000000000;
      v83 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

LABEL_46:
    if (v196 == v43)
    {
      goto LABEL_50;
    }

    if (++v43 >= *(v39 + 16))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_52:
  v84 = type metadata accessor for OSSignposter();
  v85 = sub_1000144F0(v84, qword_10014EA70);
  static OSSignpostID.exclusive.getter();
  v196 = v85;
  v86 = OSSignposter.logHandle.getter();
  v87 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    v89 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, v87, v89, "AkelExtensionLoad", "", v88, 2u);
    v43 = v190;
  }

  v90 = *(v43 + 16);
  v91 = v185;
  v195 = v43 + 16;
  v191 = v90;
  (v90)(v181, v42, v185);
  v92 = type metadata accessor for OSSignpostIntervalState();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v201 = OSSignpostIntervalState.init(id:isOpen:)();
  v95 = *(v43 + 8);
  v190 = v43 + 8;
  v95(v42, v91);
  v97 = v36[18];
  v96 = v36[19];
  v98 = sub_1000C7804(0xD000000000000042, 0x8000000100109130);
  v100 = v99;
  *&v212[0] = v97;
  *(&v212[0] + 1) = v96;

  v101._countAndFlagsBits = v98;
  v101._object = v100;
  String.append(_:)(v101);

  v102 = *sub_100003C4C(v197, v197[3]);
  sub_1000DFF08(v211);
  v103 = v179;
  URL.init(fileURLWithPath:)();

  v104 = sub_1000993E4(v103);
  if (v104)
  {
    v105 = v104;
    v209 = type metadata accessor for UncachedBundle();
    v210 = sub_1000A958C();
    *&v208 = v105;
    sub_100003C90(v211);
    v106 = sub_100009F34(&v208, v212);
    v107 = v192;
    v108 = *(v192 + 656);
    __chkstk_darwin(v106);
    *(&v170 - 2) = v107;
    *(&v170 - 1) = v212;

    os_unfair_lock_lock(v108 + 18);
    v109 = v198;
    sub_1000A95E4(&v108[4], v211);
    v198 = v109;
    v110 = v108 + 18;
    if (v109)
    {
      os_unfair_lock_unlock(v110);

      sub_100041AE0(v194);

      sub_100003C90(v212);
      v111 = v107;
      goto LABEL_83;
    }

    os_unfair_lock_unlock(v110);

    sub_100003C90(v212);
    v36 = v194;
  }

  else
  {
    sub_100003C90(v211);
    sub_100003CDC(&qword_100137858, &unk_1000F9BA0);
    v112 = swift_allocObject();
    *(v112 + 16) = v200;
    *(v112 + 56) = v41;
    *(v112 + 32) = 0xD000000000000038;
    *(v112 + 40) = 0x8000000100109990;
    print(_:separator:terminator:)();

    static os_log_type_t.error.getter();
    v113 = swift_allocObject();
    *(v113 + 16) = v200;
    v114 = v193;
    *(v113 + 56) = v41;
    *(v113 + 64) = v114;
    *(v113 + 32) = 0xD000000000000020;
    *(v113 + 40) = 0x8000000100109100;
    v115 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  v116 = OSSignposter.logHandle.getter();
  v117 = v177;
  OSSignpostIntervalState.signpostID.getter();
  v118 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v119 = v172;
    checkForErrorAndConsumeState(state:)();

    v121 = v174;
    v120 = v175;
    if ((*(v174 + 88))(v119, v175) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v122 = "[Error] Interval already ended";
    }

    else
    {
      (*(v121 + 8))(v119, v120);
      v122 = "";
    }

    v123 = swift_slowAlloc();
    *v123 = 0;
    v124 = v177;
    v125 = OSSignpostID.rawValue.getter();
    v126 = v122;
    v117 = v124;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v116, v118, v125, "AkelExtensionLoad", v126, v123, 2u);

    v36 = v194;
  }

  v95(v117, v185);
  v127 = v198;
  sub_1000A2A04();
  v128 = v127;
  if (v127)
  {
    static os_log_type_t.error.getter();
    v129 = swift_allocObject();
    *(v129 + 16) = v200;
    swift_getErrorValue();
    v130 = Error.localizedDescription.getter();
    v131 = v193;
    *(v129 + 56) = v41;
    *(v129 + 64) = v131;
    *(v129 + 32) = v130;
    *(v129 + 40) = v132;
    v133 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v128 = 0;
  }

  v202 = v95;
  v134 = v176;
  static OSSignpostID.exclusive.getter();
  v135 = OSSignposter.logHandle.getter();
  v136 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    v138 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v135, v136, v138, "DriverkitExtensionLoad", "", v137, 2u);
    v36 = v194;
  }

  v139 = v185;
  (v191)(v181, v134, v185);
  v140 = *(v92 + 48);
  v141 = *(v92 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v202(v134, v139);
  v142 = v192;
  sub_1000A3568(0, 1uLL);
  if (v128)
  {
    sub_100041AE0(v36);

    v111 = v142;
  }

  else
  {
    v143 = OSSignposter.logHandle.getter();
    v144 = v173;
    OSSignpostIntervalState.signpostID.getter();
    v145 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v146 = v171;
      checkForErrorAndConsumeState(state:)();

      v148 = v174;
      v147 = v175;
      if ((*(v174 + 88))(v146, v175) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v149 = "[Error] Interval already ended";
      }

      else
      {
        (*(v148 + 8))(v146, v147);
        v149 = "";
      }

      v150 = swift_slowAlloc();
      *v150 = 0;
      v151 = v173;
      v152 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v143, v145, v152, "DriverkitExtensionLoad", v149, v150, 2u);
      v144 = v151;
    }

    v202(v144, v139);
    v111 = v192;
    if ((v180 & 0x4000) == 0)
    {
      sub_1000A3D84();
    }

    v153 = v194;

    v154 = v197;
    sub_10000A990(v197, v212);
    v155 = swift_allocObject();
    sub_100009F34(v212, v155 + 16);
    v156 = *(v111 + 688);
    v157 = *(v111 + 696);
    *(v111 + 688) = sub_1000A937C;
    *(v111 + 696) = v155;
    *(v111 + 704) = 1;

    sub_100057C80(v156);

    v158 = v180 & 0xC0;
    sub_10000A990(v154, v212);
    v159 = swift_allocObject();
    memcpy((v159 + 16), v153, 0x255uLL);
    sub_100009F34(v212, v159 + 616);
    swift_beginAccess();
    v160 = *(v111 + 720);
    v161 = *(v111 + 728);
    *(v111 + 720) = sub_1000A956C;
    *(v111 + 728) = v159;

    sub_100057C80(v160);
    if (v158)
    {
      *(v111 + 736) = 1;
    }

    swift_endAccess();
LABEL_82:
  }

LABEL_83:
  sub_100003C90(v197);
  return v111;
}