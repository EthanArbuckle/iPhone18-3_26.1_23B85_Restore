const char *sub_1005535D8()
{
  v1 = type metadata accessor for DIPError.Code();
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Logger();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v9 = *(v0 + 40);
  v10 = String.utf8CString.getter();
  LODWORD(v9) = sqlite3_prepare_v3(v9, (v10 + 32), -1, 0, &ppStmt, 0);

  if (!v9)
  {
    if (sqlite3_step(ppStmt) != 100)
    {
      v31 = 0;
      goto LABEL_12;
    }

    v32 = sqlite3_column_double(ppStmt, 0);
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v31 = v32;
LABEL_12:
        sqlite3_finalize(ppStmt);
        return v31;
      }

LABEL_16:
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v34 = v1;
  v35 = v0;
  result = sqlite3_errmsg(*(v0 + 40));
  if (result)
  {
    v12 = String.init(cString:)();
    v14 = v13;
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v12;
      v19 = v4;
      v20 = swift_slowAlloc();
      v38 = v20;
      *v17 = 136446210;
      *(v17 + 4) = sub_100141FE4(v18, v14, &v38);
      _os_log_impl(&_mh_execute_header, v15, v16, "coreidvd: failed to getting user version select statement: %{public}s", v17, 0xCu);
      sub_10000BB78(v20);
      v4 = v19;
      v12 = v18;
    }

    (*(v5 + 8))(v8, v37);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v38 = 0xD00000000000002ALL;
    v39 = 0x8000000100721400;
    v21._countAndFlagsBits = v12;
    v21._object = v14;
    String.append(_:)(v21);

    (*(v36 + 104))(v4, enum case for DIPError.Code.sqliteError(_:), v34);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v22 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v23 = *(*v22 + 72);
    v24 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006BF520;
    v26 = v25 + v24;
    v27 = v25 + v24 + v22[14];
    v28 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v29 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v29 - 8) + 104))(v26, v28, v29);
    v30 = sqlite3_errcode(*(v35 + 40));
    *(v27 + 24) = &type metadata for Int32;
    *(v27 + 32) = &protocol witness table for Int32;
    *v27 = v30;
    sub_10003C9C0(v25);
    swift_setDeallocating();
    sub_10000BE18(v26, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v31 = type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_100553BD0()
{
  v216 = type metadata accessor for DIPError.Code();
  v218 = *(v216 - 8);
  v1 = *(v218 + 64);
  __chkstk_darwin(v216);
  v217 = &v202 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Logger();
  v219 = *(v222 - 8);
  v3 = *(v219 + 64);
  v4 = __chkstk_darwin(v222);
  v212 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v215 = &v202 - v7;
  v8 = __chkstk_darwin(v6);
  v214 = &v202 - v9;
  v10 = __chkstk_darwin(v8);
  v211 = &v202 - v11;
  v12 = __chkstk_darwin(v10);
  v221 = &v202 - v13;
  v14 = __chkstk_darwin(v12);
  v220 = &v202 - v15;
  v16 = __chkstk_darwin(v14);
  v213 = &v202 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v202 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v202 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v202 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v202 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v202 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v202 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v202 - v37;
  __chkstk_darwin(v36);
  v40 = &v202 - v39;
  v41 = v229;
  result = sub_1005535D8();
  if (!v41)
  {
    v229 = result;
    v205 = v38;
    v208 = v35;
    v204 = v32;
    v203 = v29;
    v202 = v26;
    v206 = v23;
    v207 = v20;
    v43 = v219;
    v210 = v0;
    v209 = 0;
    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134349056;
      *(v46 + 4) = v229;
      _os_log_impl(&_mh_execute_header, v44, v45, "Current schema version is %{public}ld", v46, 0xCu);
    }

    v47 = *(v43 + 8);
    v48 = v222;
    result = v47(v40, v222);
    v49 = v220;
    v50 = v221;
    if (v229 > 1)
    {
      if (v229 == 2)
      {
        defaultLogger()();
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "Migrating schema to version 4", v131, 2u);
        }

        v47(v49, v48);
        v132 = v210;
        swift_beginAccess();
        v133 = *(v132 + 40);
        v134 = String.utf8CString.getter();
        LODWORD(v133) = sqlite3_exec(v133, (v134 + 32), 0, 0, 0);

        v135 = v218;
        if (v133)
        {
          result = sqlite3_errmsg(*(v132 + 40));
          if (result)
          {
            v136 = String.init(cString:)();
            v138 = v137;
            defaultLogger()();
            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              *v141 = 0;
              _os_log_impl(&_mh_execute_header, v139, v140, "coreidvd: error altering table pregenerated assessments", v141, 2u);
              v48 = v222;
            }

            v47(v50, v48);
            v223 = 0;
            v224 = 0xE000000000000000;
            _StringGuts.grow(_:)(49);

            v223 = 0xD00000000000002FLL;
            v224 = 0x8000000100720C80;
            v142._countAndFlagsBits = v136;
            v142._object = v138;
            String.append(_:)(v142);

            (*(v135 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v143 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v144 = *(*v143 + 72);
            v145 = (*(*v143 + 80) + 32) & ~*(*v143 + 80);
            v146 = swift_allocObject();
            *(v146 + 16) = xmmword_1006BF520;
            v147 = v146 + v145;
            v148 = v147 + v143[14];
            v149 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v150 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v150 - 8) + 104))(v147, v149, v150);
            v151 = sqlite3_errcode(*(v210 + 40));
            *(v148 + 24) = &type metadata for Int32;
            *(v148 + 32) = &protocol witness table for Int32;
            *v148 = v151;
            sub_10003C9C0(v146);
            swift_setDeallocating();
            sub_10000BE18(v147, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_57;
          }

          goto LABEL_68;
        }

        v176 = v209;
        result = sub_100552F38(4);
        if (v176)
        {
          return result;
        }

        v152 = v211;
      }

      else
      {
        if (v229 != 3)
        {
          return result;
        }

        v79 = v214;
        defaultLogger()();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Migrating schema to version 4", v82, 2u);
          v79 = v214;
        }

        v47(v79, v48);
        v83 = v210;
        swift_beginAccess();
        v84 = *(v83 + 40);
        v85 = String.utf8CString.getter();
        LODWORD(v84) = sqlite3_exec(v84, (v85 + 32), 0, 0, 0);

        if (v84)
        {
          result = sqlite3_errmsg(*(v83 + 40));
          if (result)
          {
            v86 = String.init(cString:)();
            v88 = v87;
            defaultLogger()();
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.error.getter();
            v91 = os_log_type_enabled(v89, v90);
            v92 = v218;
            if (v91)
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&_mh_execute_header, v89, v90, "coreidvd: error altering table pregenerated assessments", v93, 2u);
              v48 = v222;
            }

            v47(v215, v48);
            v223 = 0;
            v224 = 0xE000000000000000;
            _StringGuts.grow(_:)(49);

            v223 = 0xD00000000000002FLL;
            v224 = 0x8000000100720C80;
            v94._countAndFlagsBits = v86;
            v94._object = v88;
            String.append(_:)(v94);

            (*(v92 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v95 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v96 = *(*v95 + 72);
            v97 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
            v98 = swift_allocObject();
            *(v98 + 16) = xmmword_1006BF520;
            v99 = v98 + v97;
            v100 = v99 + v95[14];
            v101 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v102 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v102 - 8) + 104))(v99, v101, v102);
            v103 = sqlite3_errcode(*(v210 + 40));
            *(v100 + 24) = &type metadata for Int32;
            *(v100 + 32) = &protocol witness table for Int32;
            *v100 = v103;
            sub_10003C9C0(v98);
            swift_setDeallocating();
            sub_10000BE18(v99, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_57;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v156 = v209;
        result = sub_100552F38(4);
        if (v156)
        {
          return result;
        }

        v152 = v212;
      }

      defaultLogger()();
      v153 = Logger.logObject.getter();
      v177 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v153, v177))
      {
LABEL_60:

        return v47(v152, v48);
      }

      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&_mh_execute_header, v153, v177, "Done migrating schema to version 4", v178, 2u);
LABEL_51:

      goto LABEL_60;
    }

    v51 = v209;
    v52 = v218;
    if (v229)
    {
      if (v229 != 1)
      {
        return result;
      }

      goto LABEL_7;
    }

    v104 = v205;
    defaultLogger()();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Migrating schema to version 1", v107, 2u);
    }

    v47(v104, v48);
    v108 = v210;
    swift_beginAccess();
    v109 = *(v108 + 40);
    v110 = String.utf8CString.getter();
    v111 = sqlite3_exec(v109, (v110 + 32), 0, 0, 0);

    v112 = *(v108 + 40);
    if (v111)
    {
      result = sqlite3_errmsg(*(v108 + 40));
      if (!result)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v113 = String.init(cString:)();
      v115 = v114;
      defaultLogger()();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v116, v117, "coreidvd: error creating table signalmap", v118, 2u);
        v48 = v222;
      }

      v47(v208, v48);
      v227 = 0;
      v228 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v227 = 0xD00000000000001ELL;
      v228 = 0x80000001007210E0;
      v119._countAndFlagsBits = v113;
      v119._object = v115;
      String.append(_:)(v119);

      (*(v52 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v120 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v121 = *(*v120 + 72);
      v122 = (*(*v120 + 80) + 32) & ~*(*v120 + 80);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_1006BF520;
      v124 = v123 + v122;
      v125 = v124 + v120[14];
      v126 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v127 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v127 - 8) + 104))(v124, v126, v127);
      v128 = sqlite3_errcode(*(v210 + 40));
      *(v125 + 24) = &type metadata for Int32;
      *(v125 + 32) = &protocol witness table for Int32;
      *v125 = v128;
      sub_10003C9C0(v123);
      swift_setDeallocating();
      sub_10000BE18(v124, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v157 = String.utf8CString.getter();
      v158 = sqlite3_exec(v112, (v157 + 32), 0, 0, 0);

      v159 = *(v108 + 40);
      if (v158)
      {
        result = sqlite3_errmsg(*(v108 + 40));
        if (result)
        {
          v160 = String.init(cString:)();
          v162 = v161;
          defaultLogger()();
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&_mh_execute_header, v163, v164, "coreidvd: error creating table verifiedclaim", v165, 2u);
            v48 = v222;
          }

          v47(v204, v48);
          v227 = 0;
          v228 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v227 = 0xD000000000000024;
          v228 = 0x8000000100721270;
          v166._countAndFlagsBits = v160;
          v166._object = v162;
          String.append(_:)(v166);

          (*(v52 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v167 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v168 = *(*v167 + 72);
          v169 = (*(*v167 + 80) + 32) & ~*(*v167 + 80);
          v170 = swift_allocObject();
          *(v170 + 16) = xmmword_1006BF520;
          v171 = v170 + v169;
          v172 = v171 + v167[14];
          v173 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v174 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v174 - 8) + 104))(v171, v173, v174);
          v175 = sqlite3_errcode(*(v210 + 40));
          *(v172 + 24) = &type metadata for Int32;
          *(v172 + 32) = &protocol witness table for Int32;
          *v172 = v175;
          sub_10003C9C0(v170);
          swift_setDeallocating();
          sub_10000BE18(v171, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_57;
        }

        goto LABEL_69;
      }

      v179 = String.utf8CString.getter();
      v180 = sqlite3_exec(v159, (v179 + 32), 0, 0, 0);

      if (v180)
      {
        result = sqlite3_errmsg(*(v210 + 40));
        if (result)
        {
          v181 = String.init(cString:)();
          v183 = v182;
          defaultLogger()();
          v184 = Logger.logObject.getter();
          v185 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            *v186 = 0;
            _os_log_impl(&_mh_execute_header, v184, v185, "coreidvd: error creating table training signal labels", v186, 2u);
            v48 = v222;
          }

          v47(v203, v48);
          v227 = 0;
          v228 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v227 = 0xD00000000000002DLL;
          v228 = 0x80000001007213B0;
          v187._countAndFlagsBits = v181;
          v187._object = v183;
          String.append(_:)(v187);

          (*(v52 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v188 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v189 = *(*v188 + 72);
          v190 = (*(*v188 + 80) + 32) & ~*(*v188 + 80);
          v191 = swift_allocObject();
          *(v191 + 16) = xmmword_1006BF520;
          v192 = v191 + v190;
          v193 = v192 + v188[14];
          v194 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v195 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v195 - 8) + 104))(v192, v194, v195);
          v196 = sqlite3_errcode(*(v210 + 40));
          *(v193 + 24) = &type metadata for Int32;
          *(v193 + 32) = &protocol witness table for Int32;
          *v193 = v196;
          sub_10003C9C0(v191);
          swift_setDeallocating();
          sub_10000BE18(v192, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_57;
        }

LABEL_70:
        __break(1u);
        return result;
      }

      v197 = v209;
      result = sub_100552F38(1);
      if (!v197)
      {
        v198 = v202;
        defaultLogger()();
        v199 = Logger.logObject.getter();
        v200 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          *v201 = 0;
          _os_log_impl(&_mh_execute_header, v199, v200, "Done migrating schema to version 1", v201, 2u);
        }

        v47(v198, v48);
        v51 = 0;
LABEL_7:
        v53 = v206;
        defaultLogger()();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Migrating schema to version 4", v56, 2u);
        }

        v57 = v53;
        v58 = v47;
        v47(v57, v48);
        v59 = v210;
        swift_beginAccess();
        v60 = *(v59 + 40);
        v61 = String.utf8CString.getter();
        LODWORD(v60) = sqlite3_exec(v60, (v61 + 32), 0, 0, 0);

        v62 = v207;
        if (v60)
        {
          result = sqlite3_errmsg(*(v59 + 40));
          if (result)
          {
            v63 = String.init(cString:)();
            v65 = v64;
            defaultLogger()();
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              *v68 = 0;
              _os_log_impl(&_mh_execute_header, v66, v67, "coreidvd: error creating table pregenerated assessments", v68, 2u);
              v48 = v222;
            }

            v58(v62, v48);
            v225 = 0;
            v226 = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v225 = 0xD00000000000002ELL;
            v226 = 0x8000000100720F50;
            v69._countAndFlagsBits = v63;
            v69._object = v65;
            String.append(_:)(v69);

            (*(v52 + 104))(v217, enum case for DIPError.Code.sqliteError(_:), v216);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v70 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v71 = *(*v70 + 72);
            v72 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
            v73 = swift_allocObject();
            *(v73 + 16) = xmmword_1006BF520;
            v74 = v73 + v72;
            v75 = v74 + v70[14];
            v76 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v77 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v77 - 8) + 104))(v74, v76, v77);
            v78 = sqlite3_errcode(*(v210 + 40));
            *(v75 + 24) = &type metadata for Int32;
            *(v75 + 32) = &protocol witness table for Int32;
            *v75 = v78;
            sub_10003C9C0(v73);
            swift_setDeallocating();
            sub_10000BE18(v74, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
LABEL_57:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            return swift_willThrow();
          }

          __break(1u);
          goto LABEL_66;
        }

        result = sub_100552F38(4);
        if (v51)
        {
          return result;
        }

        v152 = v213;
        defaultLogger()();
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v153, v154))
        {
          v47 = v58;
          goto LABEL_60;
        }

        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&_mh_execute_header, v153, v154, "Done migrating schema to version 4", v155, 2u);
        v47 = v58;
        goto LABEL_51;
      }
    }
  }

  return result;
}

const char *sub_100555910()
{
  v60 = type metadata accessor for Logger();
  v1 = *(v60 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v60);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  __chkstk_darwin(v9);
  v13 = &v59 - v12;
  swift_beginAccess();
  v14 = *(v0 + 40);
  v15 = String.utf8CString.getter();
  v16 = sqlite3_exec(v14, (v15 + 32), 0, 0, 0);

  v17 = *(v0 + 40);
  if (!v16)
  {
    v27 = String.utf8CString.getter();
    v28 = sqlite3_exec(v17, (v27 + 32), 0, 0, 0);

    v29 = *(v0 + 40);
    if (!v28)
    {
      v38 = String.utf8CString.getter();
      v39 = sqlite3_exec(v29, (v38 + 32), 0, 0, 0);

      v40 = *(v0 + 40);
      if (!v39)
      {
        v49 = String.utf8CString.getter();
        v50 = sqlite3_exec(v40, (v49 + 32), 0, 0, 0);

        if (!v50)
        {
          return 1;
        }

        result = sqlite3_errmsg(*(v0 + 40));
        if (result)
        {
          v51 = String.init(cString:)();
          v53 = v52;
          defaultLogger()();

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v61 = v57;
            *v56 = 136446210;
            v58 = sub_100141FE4(v51, v53, &v61);

            *(v56 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v54, v55, "coreidvd: invalid table pregeneratedassessments: %{public}s", v56, 0xCu);
            sub_10000BB78(v57);
          }

          else
          {
          }

          (*(v1 + 8))(v5, v60);
          return 0;
        }

LABEL_31:
        __break(1u);
        return result;
      }

      result = sqlite3_errmsg(*(v0 + 40));
      if (result)
      {
        v41 = String.init(cString:)();
        v43 = v42;
        defaultLogger()();

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v61 = v47;
          *v46 = 136446210;
          v48 = sub_100141FE4(v41, v43, &v61);

          *(v46 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v44, v45, "coreidvd: invalid table trainingsignallabels: %{public}s", v46, 0xCu);
          sub_10000BB78(v47);
        }

        else
        {
        }

        (*(v1 + 8))(v8, v60);
        return 0;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    result = sqlite3_errmsg(*(v0 + 40));
    if (result)
    {
      v30 = String.init(cString:)();
      v32 = v31;
      defaultLogger()();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61 = v36;
        *v35 = 136446210;
        v37 = sub_100141FE4(v30, v32, &v61);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "coreidvd: invalid table verifiedclaim: %{public}s", v35, 0xCu);
        sub_10000BB78(v36);
      }

      else
      {
      }

      (*(v1 + 8))(v11, v60);
      return 0;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = sqlite3_errmsg(*(v0 + 40));
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v19 = String.init(cString:)();
  v21 = v20;
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v25;
    *v24 = 136446210;
    v26 = sub_100141FE4(v19, v21, &v61);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "coreidvd: invalid table signalmap: %{public}s", v24, 0xCu);
    sub_10000BB78(v25);
  }

  else
  {
  }

  (*(v1 + 8))(v13, v60);
  return 0;
}

uint64_t sub_100555FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[11] = 0;
  v9[0] = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v9[9] = v9;
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = v9[0];
  if (v5)
  {
  }

  return v7;
}

void *sub_100556098(uint64_t a1, sqlite3_stmt **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v97 = a5;
  v98 = a6;
  v99 = a4;
  v10 = type metadata accessor for Logger();
  v100 = *(v10 - 8);
  v101 = v10;
  v11 = *(v100 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v94 - v16;
  __chkstk_darwin(v15);
  v96 = &v94 - v18;
  v19 = type metadata accessor for DIPError.Code();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  __chkstk_darwin(v19);
  v107 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(a1 + 40);
  if (!v22)
  {
    sub_1005507F8();
    v22 = *(a1 + 40);
    if (!v22)
    {
      (*(v103 + 104))(v107, enum case for DIPError.Code.databaseInaccessible(_:), v104);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v23 = String.utf8CString.getter();
  v24 = sqlite3_prepare_v3(v22, (v23 + 32), -1, 0, a2, 0);

  v102 = v22;
  if (v24)
  {
    result = sqlite3_errmsg(v22);
    if (result)
    {
      v26 = String.init(cString:)();
      v28 = v27;
      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v105 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_100141FE4(v26, v28, &v105);
        _os_log_impl(&_mh_execute_header, v29, v30, "coreidvd: failed to prepare select statement: %{public}s", v31, 0xCu);
        sub_10000BB78(v32);
      }

      (*(v100 + 8))(v14, v101);
      v105 = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v105 = 0xD00000000000001FLL;
      v106 = 0x800000010071F8B0;
      v33._countAndFlagsBits = v26;
      v33._object = v28;
      String.append(_:)(v33);

      (*(v103 + 104))(v107, enum case for DIPError.Code.sqliteError(_:), v104);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v34 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v35 = *(*v34 + 72);
      v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1006BF520;
      v38 = v37 + v36;
      v39 = v38 + v34[14];
      v40 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v41 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v41 - 8) + 104))(v38, v40, v41);
      v42 = sqlite3_errcode(v102);
      *(v39 + 24) = &type metadata for Int32;
      *(v39 + 32) = &protocol witness table for Int32;
      *v39 = v42;
      sub_10003C9C0(v37);
      swift_setDeallocating();
      sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    goto LABEL_33;
  }

  v95 = a2;
  v43 = *a2;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v44 = qword_1008823D0;
  v45 = String.utf8CString.getter();
  v46 = sqlite3_bind_text(v43, 1, (v45 + 32), -1, v44);

  if (v46)
  {
    result = sqlite3_errmsg(v102);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v47 = String.init(cString:)();
    v49 = v48;
    defaultLogger()();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v105 = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_100141FE4(v47, v49, &v105);
      _os_log_impl(&_mh_execute_header, v50, v51, "coreidvd: failure binding serviceName: %{public}s", v52, 0xCu);
      sub_10000BB78(v53);
    }

    (*(v100 + 8))(v17, v101);
    v105 = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v105 = 0xD00000000000001BLL;
    v106 = 0x8000000100720820;
    v54._countAndFlagsBits = v47;
    v54._object = v49;
    String.append(_:)(v54);

    (*(v103 + 104))(v107, enum case for DIPError.Code.sqliteError(_:), v104);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v55 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v56 = *(*v55 + 72);
    v57 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1006BF520;
    v59 = v58 + v57;
    v60 = v59 + v55[14];
    v61 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v62 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v62 - 8) + 104))(v59, v61, v62);
    v63 = sqlite3_errcode(v102);
    *(v60 + 24) = &type metadata for Int32;
    *(v60 + 32) = &protocol witness table for Int32;
    *v60 = v63;
    sub_10003C9C0(v58);
    swift_setDeallocating();
    sub_10000BE18(v59, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
  }

  else
  {
    v64 = v95;
    v65 = *v95;
    v66 = String.utf8CString.getter();
    LODWORD(v65) = sqlite3_bind_text(v65, 2, (v66 + 32), -1, v44);

    if (!v65)
    {
      while (1)
      {
        if (sqlite3_step(*v64) != 100)
        {
          v85 = *v64;
          return sqlite3_finalize(v85);
        }

        result = sqlite3_column_text(*v64, 0);
        if (!result)
        {
          break;
        }

        v87 = String.init(cString:)();
        v89 = v88;
        v90 = *a7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v90;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = sub_1003C5110(0, *(v90 + 2) + 1, 1, v90);
          *a7 = v90;
        }

        v93 = *(v90 + 2);
        v92 = *(v90 + 3);
        if (v93 >= v92 >> 1)
        {
          v90 = sub_1003C5110((v92 > 1), v93 + 1, 1, v90);
          *a7 = v90;
        }

        *(v90 + 2) = v93 + 1;
        v86 = &v90[16 * v93];
        *(v86 + 4) = v87;
        *(v86 + 5) = v89;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    result = sqlite3_errmsg(v102);
    if (!result)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v67 = String.init(cString:)();
    v69 = v68;
    v70 = v96;
    defaultLogger()();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v105 = v74;
      *v73 = 136446210;
      *(v73 + 4) = sub_100141FE4(v67, v69, &v105);
      _os_log_impl(&_mh_execute_header, v71, v72, "coreidvd: failure binding targetTier: %{public}s", v73, 0xCu);
      sub_10000BB78(v74);
    }

    (*(v100 + 8))(v70, v101);
    v105 = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v105 = 0xD00000000000001ALL;
    v106 = 0x8000000100720840;
    v75._countAndFlagsBits = v67;
    v75._object = v69;
    String.append(_:)(v75);

    (*(v103 + 104))(v107, enum case for DIPError.Code.sqliteError(_:), v104);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v76 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v77 = *(*v76 + 72);
    v78 = (*(*v76 + 80) + 32) & ~*(*v76 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1006BF520;
    v80 = v79 + v78;
    v81 = v80 + v76[14];
    v82 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v83 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v83 - 8) + 104))(v80, v82, v83);
    v84 = sqlite3_errcode(v102);
    *(v81 + 24) = &type metadata for Int32;
    *(v81 + 32) = &protocol witness table for Int32;
    *v81 = v84;
    sub_10003C9C0(v79);
    swift_setDeallocating();
    sub_10000BE18(v80, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v85 = *v95;
  return sqlite3_finalize(v85);
}

uint64_t sub_100556F98(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v463 = &v459 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100847538, &unk_1006E83A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v472 = &v459 - v9;
  v471 = type metadata accessor for OTDRequest(0);
  v468 = *(v471 - 8);
  v10 = *(v468 + 64);
  __chkstk_darwin(v471);
  v469 = &v459 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v479 = *(v12 - 8);
  v480 = v12;
  v13 = *(v479 + 64);
  __chkstk_darwin(v12);
  v478 = &v459 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v485 = v15;
  v486 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v464 = &v459 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v462 = &v459 - v21;
  v22 = __chkstk_darwin(v20);
  v461 = &v459 - v23;
  v24 = __chkstk_darwin(v22);
  v466 = &v459 - v25;
  v26 = __chkstk_darwin(v24);
  v467 = &v459 - v27;
  v28 = __chkstk_darwin(v26);
  v465 = &v459 - v29;
  v30 = __chkstk_darwin(v28);
  v473 = &v459 - v31;
  v32 = __chkstk_darwin(v30);
  v474 = &v459 - v33;
  v34 = __chkstk_darwin(v32);
  v475 = &v459 - v35;
  v36 = __chkstk_darwin(v34);
  v476 = &v459 - v37;
  v38 = __chkstk_darwin(v36);
  v477 = &v459 - v39;
  v40 = __chkstk_darwin(v38);
  v481 = &v459 - v41;
  v42 = __chkstk_darwin(v40);
  v482 = &v459 - v43;
  v44 = __chkstk_darwin(v42);
  v483 = &v459 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v459 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v459 - v50;
  v52 = __chkstk_darwin(v49);
  v54 = (&v459 - v53);
  v55 = __chkstk_darwin(v52);
  v57 = &v459 - v56;
  __chkstk_darwin(v55);
  v59 = &v459 - v58;
  v60 = type metadata accessor for DIPError.Code();
  v61 = *(v60 - 8);
  v487 = v60;
  v488 = v61;
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v64 = &v459 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v65 = *(a1 + 40);
  if (!v65)
  {
    sub_1005507F8();
    v65 = *(a1 + 40);
    if (!v65)
    {
      (*(v488 + 104))(v64, enum case for DIPError.Code.databaseInaccessible(_:), v487);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_15;
    }
  }

  if (a2[1] >> 60 == 15)
  {
    (*(v488 + 104))(v64, enum case for DIPError.Code.invalidAssessmentGUID(_:), v487);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_15:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v460 = v64;
  v66 = String.utf8CString.getter();
  v67 = sqlite3_prepare_v3(v65, (v66 + 32), -1, 0, &ppStmt, 0);

  v484 = v65;
  if (v67)
  {
    v68 = sqlite3_errmsg(v65);
    if (v68)
    {
      v70 = String.init(cString:)();
      v72 = v71;
      defaultLogger()();

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v489 = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_100141FE4(v70, v72, &v489);
        _os_log_impl(&_mh_execute_header, v73, v74, "coreidvd: failed to prepare insert statement %{public}s", v75, 0xCu);
        sub_10000BB78(v76);
      }

      (*(v486 + 8))(v59, v485);
      v78 = v487;
      v77 = v488;
      *&v489 = 0xD00000000000002ALL;
      *(&v489 + 1) = 0x8000000100721780;
      v79._countAndFlagsBits = v70;
      v79._object = v72;
      String.append(_:)(v79);

      (*(v77 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v78);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v80 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v81 = *(*v80 + 72);
      v82 = (*(*v80 + 80) + 32) & ~*(*v80 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1006BF520;
      v84 = v83 + v82;
      v85 = v84 + v80[14];
      v86 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v87 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v87 - 8) + 104))(v84, v86, v87);
      v88 = sqlite3_errcode(v484);
      *(v85 + 24) = &type metadata for Int32;
      *(v85 + 32) = &protocol witness table for Int32;
      *v85 = v88;
      sub_10003C9C0(v83);
      swift_setDeallocating();
      sub_10000BE18(v84, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_104;
  }

  v89 = ppStmt;
  v90 = a2[8];
  v91 = a2[9];
  if (qword_100832CA0 != -1)
  {
    v277 = a2[8];
    v278 = a2[9];
    swift_once();
    v91 = v278;
  }

  v92 = qword_1008823D0;
  if (v91)
  {
    v93 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v93 = 0;
  }

  v95 = sqlite3_bind_text(v89, 1, v93, -1, v92);
  swift_unknownObjectRelease();
  if (v95)
  {
    if (sqlite3_errmsg(v484))
    {
      v96 = String.init(cString:)();
      v98 = v97;
      defaultLogger()();

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v489 = v102;
        *v101 = 136446210;
        *(v101 + 4) = sub_100141FE4(v96, v98, &v489);
        _os_log_impl(&_mh_execute_header, v99, v100, "coreidvd: failure binding dsid: %{public}s", v101, 0xCu);
        sub_10000BB78(v102);
      }

      (*(v486 + 8))(v57, v485);
      v104 = v487;
      v103 = v488;
      *&v489 = 0xD000000000000025;
      *(&v489 + 1) = 0x80000001007217B0;
      v105._countAndFlagsBits = v96;
      v105._object = v98;
      String.append(_:)(v105);

      (*(v103 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v104);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v106 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v107 = *(*v106 + 72);
      v108 = (*(*v106 + 80) + 32) & ~*(*v106 + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1006BF520;
      v110 = v109 + v108;
      v111 = v110 + v106[14];
      v112 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v113 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v113 - 8) + 104))(v110, v112, v113);
      v114 = sqlite3_errcode(v484);
      *(v111 + 24) = &type metadata for Int32;
      *(v111 + 32) = &protocol witness table for Int32;
      *v111 = v114;
      sub_10003C9C0(v109);
      swift_setDeallocating();
      sub_10000BE18(v110, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    __break(1u);
    goto LABEL_107;
  }

  v115 = ppStmt;
  v116 = a2[2];
  v117 = a2[3];
  v118 = String.utf8CString.getter();
  LODWORD(v115) = sqlite3_bind_text(v115, 2, (v118 + 32), -1, v92);

  if (v115)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {
      v119 = String.init(cString:)();
      v121 = v120;
      defaultLogger()();

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v489 = v125;
        *v124 = 136446210;
        *(v124 + 4) = sub_100141FE4(v119, v121, &v489);
        _os_log_impl(&_mh_execute_header, v122, v123, "coreidvd: failure binding signalsUUID: %{public}s", v124, 0xCu);
        sub_10000BB78(v125);
      }

      (*(v486 + 8))(v54, v485);
      v127 = v487;
      v126 = v488;
      *&v489 = 0xD00000000000002CLL;
      *(&v489 + 1) = 0x80000001007217E0;
      v128._countAndFlagsBits = v119;
      v128._object = v121;
      String.append(_:)(v128);

      (*(v126 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v127);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v129 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v130 = *(*v129 + 72);
      v131 = (*(*v129 + 80) + 32) & ~*(*v129 + 80);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_1006BF520;
      v133 = v132 + v131;
      v134 = v133 + v129[14];
      v135 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v136 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v136 - 8) + 104))(v133, v135, v136);
      v137 = sqlite3_errcode(v484);
      *(v134 + 24) = &type metadata for Int32;
      *(v134 + 32) = &protocol witness table for Int32;
      *v134 = v137;
      sub_10003C9C0(v132);
      swift_setDeallocating();
      sub_10000BE18(v133, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    __break(1u);
    goto LABEL_134;
  }

  if (a2[1] >> 60 == 15)
  {
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
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v54 = v92;
  v138 = *a2;
  v139 = ppStmt;
  Data.base64EncodedString(options:)(0);
  v140 = String.utf8CString.getter();

  LODWORD(v139) = sqlite3_bind_text(v139, 3, (v140 + 32), -1, v92);

  if (v139)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {
      v141 = String.init(cString:)();
      v143 = v142;
      defaultLogger()();

      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&v489 = v147;
        *v146 = 136446210;
        *(v146 + 4) = sub_100141FE4(v141, v143, &v489);
        _os_log_impl(&_mh_execute_header, v144, v145, "coreidvd: failure binding assessmentGUID: %{public}s", v146, 0xCu);
        sub_10000BB78(v147);
      }

      (*(v486 + 8))(v51, v485);
      v149 = v487;
      v148 = v488;
      *&v489 = 0xD00000000000002FLL;
      *(&v489 + 1) = 0x8000000100721810;
      v150._countAndFlagsBits = v141;
      v150._object = v143;
      String.append(_:)(v150);

      (*(v148 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v149);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v151 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v152 = *(*v151 + 72);
      v153 = (*(*v151 + 80) + 32) & ~*(*v151 + 80);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_1006BF520;
      v155 = v154 + v153;
      v156 = v155 + v151[14];
      v157 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v158 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v158 - 8) + 104))(v155, v157, v158);
      v159 = sqlite3_errcode(v484);
      *(v156 + 24) = &type metadata for Int32;
      *(v156 + 32) = &protocol witness table for Int32;
      *v156 = v159;
      sub_10003C9C0(v154);
      swift_setDeallocating();
      sub_10000BE18(v155, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_135;
  }

  v160 = ppStmt;
  if (a2[11])
  {
    v161 = a2[10];
    v162 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v162 = 0;
  }

  v163 = sqlite3_bind_text(v160, 4, v162, -1, v92);
  swift_unknownObjectRelease();
  if (v163)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {
      v164 = String.init(cString:)();
      v166 = v165;
      defaultLogger()();

      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v489 = v170;
        *v169 = 136446210;
        *(v169 + 4) = sub_100141FE4(v164, v166, &v489);
        _os_log_impl(&_mh_execute_header, v167, v168, "coreidvd: failure binding asdVersion: %{public}s", v169, 0xCu);
        sub_10000BB78(v170);
      }

      (*(v486 + 8))(v48, v485);
      v172 = v487;
      v171 = v488;
      *&v489 = 0xD00000000000002BLL;
      *(&v489 + 1) = 0x8000000100721840;
      v173._countAndFlagsBits = v164;
      v173._object = v166;
      String.append(_:)(v173);

      (*(v171 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v172);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v174 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v175 = *(*v174 + 72);
      v176 = (*(*v174 + 80) + 32) & ~*(*v174 + 80);
      v177 = swift_allocObject();
      *(v177 + 16) = xmmword_1006BF520;
      v178 = v177 + v176;
      v179 = v178 + v174[14];
      v180 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v181 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v181 - 8) + 104))(v178, v180, v181);
      v182 = sqlite3_errcode(v484);
      *(v179 + 24) = &type metadata for Int32;
      *(v179 + 32) = &protocol witness table for Int32;
      *v179 = v182;
      sub_10003C9C0(v177);
      swift_setDeallocating();
      sub_10000BE18(v178, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_136;
  }

  v183 = [objc_opt_self() mainBundle];
  v184 = [v183 infoDictionary];

  if (v184)
  {
    v185 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v185 + 16) && (v186 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v187 & 1) != 0))
    {
      sub_10001F2EC(*(v185 + 56) + 32 * v186, &v489);
    }

    else
    {
      v489 = 0u;
      v490 = 0u;
    }

    if (*(&v490 + 1))
    {
      swift_dynamicCast();
      goto LABEL_50;
    }
  }

  else
  {
    v489 = 0u;
    v490 = 0u;
  }

  sub_10000BE18(&v489, &unk_100845ED0, &qword_1006DA1D0);
LABEL_50:
  v188 = ppStmt;
  v189 = String.utf8CString.getter();
  LODWORD(v188) = sqlite3_bind_text(v188, 5, (v189 + 32), -1, v92);

  if (v188)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v190 = String.init(cString:)();
      v192 = v191;
      v193 = v483;
      defaultLogger()();

      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *&v489 = v197;
        *v196 = 136446210;
        *(v196 + 4) = sub_100141FE4(v190, v192, &v489);
        _os_log_impl(&_mh_execute_header, v194, v195, "coreidvd: failure binding idvVersion: %{public}s", v196, 0xCu);
        sub_10000BB78(v197);
      }

      (*(v486 + 8))(v193, v485);
      *&v489 = 0xD00000000000002BLL;
      *(&v489 + 1) = 0x800000010071FC20;
      v198._countAndFlagsBits = v190;
      v198._object = v192;
      String.append(_:)(v198);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v199 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v200 = *(*v199 + 72);
      v201 = (*(*v199 + 80) + 32) & ~*(*v199 + 80);
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_1006BF520;
      v203 = v202 + v201;
      v204 = v203 + v199[14];
      v205 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v206 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v206 - 8) + 104))(v203, v205, v206);
      v207 = sqlite3_errcode(v484);
      *(v204 + 24) = &type metadata for Int32;
      *(v204 + 32) = &protocol witness table for Int32;
      *v204 = v207;
      sub_10003C9C0(v202);
      swift_setDeallocating();
      sub_10000BE18(v203, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_137;
  }

  v208 = ppStmt;
  v209 = a2[12];
  v210 = a2[13];
  v211 = String.utf8CString.getter();
  LODWORD(v208) = sqlite3_bind_text(v208, 6, (v211 + 32), -1, v92);

  if (v208)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v212 = String.init(cString:)();
      v214 = v213;
      v215 = v482;
      defaultLogger()();

      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        *&v489 = v219;
        *v218 = 136446210;
        *(v218 + 4) = sub_100141FE4(v212, v214, &v489);
        _os_log_impl(&_mh_execute_header, v216, v217, "coreidvd: failure binding serviceName: %{public}s", v218, 0xCu);
        sub_10000BB78(v219);
      }

      (*(v486 + 8))(v215, v485);
      v221 = v487;
      v220 = v488;
      *&v489 = 0xD00000000000002CLL;
      *(&v489 + 1) = 0x800000010071F720;
      v222._countAndFlagsBits = v212;
      v222._object = v214;
      String.append(_:)(v222);

      (*(v220 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v221);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v223 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v224 = *(*v223 + 72);
      v225 = (*(*v223 + 80) + 32) & ~*(*v223 + 80);
      v226 = swift_allocObject();
      *(v226 + 16) = xmmword_1006BF520;
      v227 = v226 + v225;
      v228 = v227 + v223[14];
      v229 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v230 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v230 - 8) + 104))(v227, v229, v230);
      v231 = sqlite3_errcode(v484);
      *(v228 + 24) = &type metadata for Int32;
      *(v228 + 32) = &protocol witness table for Int32;
      *v228 = v231;
      sub_10003C9C0(v226);
      swift_setDeallocating();
      sub_10000BE18(v227, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_138;
  }

  v232 = ppStmt;
  v233 = a2[14];
  v234 = a2[15];
  v235 = String.utf8CString.getter();
  LODWORD(v232) = sqlite3_bind_text(v232, 7, (v235 + 32), -1, v92);

  if (v232)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v236 = String.init(cString:)();
      v238 = v237;
      v239 = v481;
      defaultLogger()();

      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        *&v489 = v243;
        *v242 = 136446210;
        *(v242 + 4) = sub_100141FE4(v236, v238, &v489);
        _os_log_impl(&_mh_execute_header, v240, v241, "coreidvd: failure binding workflowid: %{public}s", v242, 0xCu);
        sub_10000BB78(v243);
      }

      (*(v486 + 8))(v239, v485);
      v245 = v487;
      v244 = v488;
      *&v489 = 0xD00000000000002BLL;
      *(&v489 + 1) = 0x800000010071FAE0;
      v246._countAndFlagsBits = v236;
      v246._object = v238;
      String.append(_:)(v246);

      (*(v244 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v245);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v247 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v248 = *(*v247 + 72);
      v249 = (*(*v247 + 80) + 32) & ~*(*v247 + 80);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_1006BF520;
      v251 = v250 + v249;
      v252 = v251 + v247[14];
      v253 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v254 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v254 - 8) + 104))(v251, v253, v254);
      v255 = sqlite3_errcode(v484);
      *(v252 + 24) = &type metadata for Int32;
      *(v252 + 32) = &protocol witness table for Int32;
      *v252 = v255;
      sub_10003C9C0(v250);
      swift_setDeallocating();
      sub_10000BE18(v251, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_139;
  }

  v256 = v478;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v258 = v257;
  (*(v479 + 8))(v256, v480);
  if (sqlite3_bind_double(ppStmt, 8, v258))
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v259 = String.init(cString:)();
      v261 = v260;
      v262 = v477;
      defaultLogger()();

      v263 = Logger.logObject.getter();
      v264 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v263, v264))
      {
        v265 = swift_slowAlloc();
        v266 = swift_slowAlloc();
        *&v489 = v266;
        *v265 = 136446210;
        *(v265 + 4) = sub_100141FE4(v259, v261, &v489);
        _os_log_impl(&_mh_execute_header, v263, v264, "coreidvd: failure binding date: %{public}s", v265, 0xCu);
        sub_10000BB78(v266);
      }

      (*(v486 + 8))(v262, v485);
      *&v489 = 0xD00000000000002ELL;
      *(&v489 + 1) = 0x8000000100721870;
      v267._countAndFlagsBits = v259;
      v267._object = v261;
      String.append(_:)(v267);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v268 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v269 = *(*v268 + 72);
      v270 = (*(*v268 + 80) + 32) & ~*(*v268 + 80);
      v271 = swift_allocObject();
      *(v271 + 16) = xmmword_1006BF520;
      v272 = v271 + v270;
      v273 = v272 + v268[14];
      v274 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v275 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v275 - 8) + 104))(v272, v274, v275);
      v276 = sqlite3_errcode(v484);
      *(v273 + 24) = &type metadata for Int32;
      *(v273 + 32) = &protocol witness table for Int32;
      *v273 = v276;
      sub_10003C9C0(v271);
      swift_setDeallocating();
      sub_10000BE18(v272, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_140;
  }

  if (sqlite3_bind_text(ppStmt, 9, "NEW", -1, v92))
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v279 = String.init(cString:)();
      v281 = v280;
      defaultLogger()();

      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v489 = v285;
        *v284 = 136446210;
        *(v284 + 4) = sub_100141FE4(v279, v281, &v489);
        _os_log_impl(&_mh_execute_header, v282, v283, "coreidvd: failure binding status: %{public}s", v284, 0xCu);
        sub_10000BB78(v285);
      }

      (*(v486 + 8))(v476, v485);
      *&v489 = 0xD000000000000027;
      *(&v489 + 1) = 0x80000001007218A0;
      v286._countAndFlagsBits = v279;
      v286._object = v281;
      String.append(_:)(v286);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v287 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v288 = *(*v287 + 72);
      v289 = (*(*v287 + 80) + 32) & ~*(*v287 + 80);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_1006BF520;
      v291 = v290 + v289;
      v292 = v291 + v287[14];
      v293 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v294 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v294 - 8) + 104))(v291, v293, v294);
      v295 = sqlite3_errcode(v484);
      *(v292 + 24) = &type metadata for Int32;
      *(v292 + 32) = &protocol witness table for Int32;
      *v292 = v295;
      sub_10003C9C0(v290);
      swift_setDeallocating();
      sub_10000BE18(v291, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_141;
  }

  v296 = ppStmt;
  v297 = a2[4];
  v298 = a2[5];
  v299 = String.utf8CString.getter();
  LODWORD(v296) = sqlite3_bind_text(v296, 10, (v299 + 32), -1, v92);

  if (v296)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v300 = String.init(cString:)();
      v302 = v301;
      defaultLogger()();

      v303 = Logger.logObject.getter();
      v304 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v303, v304))
      {
        v305 = swift_slowAlloc();
        v306 = swift_slowAlloc();
        *&v489 = v306;
        *v305 = 136446210;
        *(v305 + 4) = sub_100141FE4(v300, v302, &v489);
        _os_log_impl(&_mh_execute_header, v303, v304, "coreidvd: failure binding sessionUuid: %{public}s", v305, 0xCu);
        sub_10000BB78(v306);
      }

      (*(v486 + 8))(v475, v485);
      *&v489 = 0xD00000000000002CLL;
      *(&v489 + 1) = 0x80000001007218D0;
      v307._countAndFlagsBits = v300;
      v307._object = v302;
      String.append(_:)(v307);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v308 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v309 = *(*v308 + 72);
      v310 = (*(*v308 + 80) + 32) & ~*(*v308 + 80);
      v311 = swift_allocObject();
      *(v311 + 16) = xmmword_1006BF520;
      v312 = v311 + v310;
      v313 = v312 + v308[14];
      v314 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v315 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v315 - 8) + 104))(v312, v314, v315);
      v316 = sqlite3_errcode(v484);
      *(v313 + 24) = &type metadata for Int32;
      *(v313 + 32) = &protocol witness table for Int32;
      *v313 = v316;
      sub_10003C9C0(v311);
      swift_setDeallocating();
      sub_10000BE18(v312, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_142;
  }

  v317 = ppStmt;
  if (a2[18])
  {
    v318 = a2[17];
    v319 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v319 = 0;
  }

  v320 = sqlite3_bind_text(v317, 11, v319, -1, v92);
  swift_unknownObjectRelease();
  if (v320)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v321 = String.init(cString:)();
      v323 = v322;
      defaultLogger()();

      v324 = Logger.logObject.getter();
      v325 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v324, v325))
      {
        v326 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        *&v489 = v327;
        *v326 = 136446210;
        *(v326 + 4) = sub_100141FE4(v321, v323, &v489);
        _os_log_impl(&_mh_execute_header, v324, v325, "coreidvd: failure binding launchTier: %{public}s", v326, 0xCu);
        sub_10000BB78(v327);
      }

      (*(v486 + 8))(v474, v485);
      *&v489 = 0xD00000000000002BLL;
      *(&v489 + 1) = 0x8000000100721900;
      v328._countAndFlagsBits = v321;
      v328._object = v323;
      String.append(_:)(v328);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v329 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v330 = *(*v329 + 72);
      v331 = (*(*v329 + 80) + 32) & ~*(*v329 + 80);
      v332 = swift_allocObject();
      *(v332 + 16) = xmmword_1006BF520;
      v333 = v332 + v331;
      v334 = v333 + v329[14];
      v335 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v336 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v336 - 8) + 104))(v333, v335, v336);
      v337 = sqlite3_errcode(v484);
      *(v334 + 24) = &type metadata for Int32;
      *(v334 + 32) = &protocol witness table for Int32;
      *v334 = v337;
      sub_10003C9C0(v332);
      swift_setDeallocating();
      sub_10000BE18(v333, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_143;
  }

  v338 = ppStmt;
  v339 = a2[19];
  v340 = a2[20];
  v341 = String.utf8CString.getter();
  LODWORD(v338) = sqlite3_bind_text(v338, 12, (v341 + 32), -1, v92);

  if (v338)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v342 = String.init(cString:)();
      v344 = v343;
      defaultLogger()();

      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v345, v346))
      {
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        *&v489 = v348;
        *v347 = 136315138;
        *(v347 + 4) = sub_100141FE4(v342, v344, &v489);
        _os_log_impl(&_mh_execute_header, v345, v346, "coreidvd: failure binding targetTier: %s", v347, 0xCu);
        sub_10000BB78(v348);
      }

      (*(v486 + 8))(v473, v485);
      *&v489 = 0xD00000000000002BLL;
      *(&v489 + 1) = 0x8000000100721930;
      v349._countAndFlagsBits = v342;
      v349._object = v344;
      String.append(_:)(v349);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v350 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v351 = *(*v350 + 72);
      v352 = (*(*v350 + 80) + 32) & ~*(*v350 + 80);
      v353 = swift_allocObject();
      *(v353 + 16) = xmmword_1006BF520;
      v354 = v353 + v352;
      v355 = v354 + v350[14];
      v356 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v357 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v357 - 8) + 104))(v354, v356, v357);
      v358 = sqlite3_errcode(v484);
      *(v355 + 24) = &type metadata for Int32;
      *(v355 + 32) = &protocol witness table for Int32;
      *v355 = v358;
      sub_10003C9C0(v353);
      swift_setDeallocating();
      sub_10000BE18(v354, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_144;
  }

  v57 = type metadata accessor for DIPODINPair(0);
  v359 = v472;
  sub_10000BBC4(a2 + *(v57 + 13), v472, &qword_100847538, &unk_1006E83A0);
  if ((*(v468 + 48))(v359, 1, v471) == 1)
  {
    sub_10000BE18(v472, &qword_100847538, &unk_1006E83A0);
    if (!sqlite3_bind_null(ppStmt, 13))
    {
      goto LABEL_114;
    }

    result = sqlite3_errmsg(v484);
    if (result)
    {

      v360 = String.init(cString:)();
      v362 = v361;
      defaultLogger()();

      v363 = Logger.logObject.getter();
      v364 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v363, v364))
      {
        v365 = swift_slowAlloc();
        v366 = swift_slowAlloc();
        *&v489 = v366;
        *v365 = 136446210;
        *(v365 + 4) = sub_100141FE4(v360, v362, &v489);
        _os_log_impl(&_mh_execute_header, v363, v364, "coreidvd: failure binding null otd_request: %{public}s", v365, 0xCu);
        sub_10000BB78(v366);
      }

      (*(v486 + 8))(v467, v485);
      *&v489 = 0xD00000000000002CLL;
      *(&v489 + 1) = 0x8000000100720520;
      v367._countAndFlagsBits = v360;
      v367._object = v362;
      String.append(_:)(v367);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v368 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v369 = *(*v368 + 72);
      v370 = (*(*v368 + 80) + 32) & ~*(*v368 + 80);
      v371 = swift_allocObject();
      *(v371 + 16) = xmmword_1006BF520;
      v372 = v371 + v370;
      v373 = v372 + v368[14];
      v374 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v375 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v375 - 8) + 104))(v372, v374, v375);
      v376 = sqlite3_errcode(v484);
      *(v373 + 24) = &type metadata for Int32;
      *(v373 + 32) = &protocol witness table for Int32;
      *v373 = v376;
      sub_10003C9C0(v371);
      swift_setDeallocating();
      sub_10000BE18(v372, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  sub_100576224(v472, v469, type metadata accessor for OTDRequest);
  v377 = type metadata accessor for JSONEncoder();
  v378 = *(v377 + 48);
  v379 = *(v377 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10057628C(&unk_1008480C0, type metadata accessor for OTDRequest);
  v380 = v470;
  v68 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v470 = v380;
  if (v380)
  {
    sub_1005762D4(v469, type metadata accessor for OTDRequest);

    return sqlite3_finalize(ppStmt);
  }

LABEL_104:
  v48 = v68;
  v95 = v69;

  *&v489 = v48;
  *(&v489 + 1) = v95;
  static String.Encoding.utf8.getter();
  sub_10053B880();
  String.init<A>(bytes:encoding:)();
  v92 = ppStmt;
  if (!v381)
  {
LABEL_107:
    v382 = 0;
    goto LABEL_108;
  }

  v382 = (String.utf8CString.getter() + 32);
LABEL_108:
  v383 = sqlite3_bind_text(v92, 13, v382, -1, v54);
  swift_unknownObjectRelease();
  if (v383)
  {
    result = sqlite3_errmsg(v484);
    if (result)
    {

      v384 = String.init(cString:)();
      v386 = v385;
      defaultLogger()();

      v387 = Logger.logObject.getter();
      v388 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v387, v388))
      {
        v389 = swift_slowAlloc();
        v390 = swift_slowAlloc();
        *&v489 = v390;
        *v389 = 136446210;
        *(v389 + 4) = sub_100141FE4(v384, v386, &v489);
        _os_log_impl(&_mh_execute_header, v387, v388, "coreidvd: failure binding otd_request: %{public}s", v389, 0xCu);
        sub_10000BB78(v390);
      }

      (*(v486 + 8))(v465, v485);
      *&v489 = 0xD00000000000002CLL;
      *(&v489 + 1) = 0x8000000100720520;
      v391._countAndFlagsBits = v384;
      v391._object = v386;
      String.append(_:)(v391);

      v485 = *(&v489 + 1);
      v486 = v489;
      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v392 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v393 = *(*v392 + 72);
      v394 = (*(*v392 + 80) + 32) & ~*(*v392 + 80);
      v395 = swift_allocObject();
      *(v395 + 16) = xmmword_1006BF520;
      v396 = v395 + v394;
      v397 = v396 + v392[14];
      v398 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v399 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v399 - 8) + 104))(v396, v398, v399);
      v400 = sqlite3_errcode(v484);
      *(v397 + 24) = &type metadata for Int32;
      *(v397 + 32) = &protocol witness table for Int32;
      *v397 = v400;
      sub_10003C9C0(v395);
      swift_setDeallocating();
      sub_10000BE18(v396, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v48, v95);
      sub_1005762D4(v469, type metadata accessor for OTDRequest);
      return sqlite3_finalize(ppStmt);
    }

    goto LABEL_146;
  }

  sub_1005762D4(v469, type metadata accessor for OTDRequest);

  sub_10000B90C(v48, v95);
LABEL_114:
  v401 = (a2 + *(v57 + 14));
  if (v401[1])
  {
    v402 = *v401;
    v403 = ppStmt;
    v404 = String.utf8CString.getter();
    LODWORD(v403) = sqlite3_bind_text(v403, 14, (v404 + 32), -1, v54);

    if (v403)
    {
      result = sqlite3_errmsg(v484);
      if (!result)
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v405 = String.init(cString:)();
      v407 = v406;
      defaultLogger()();

      v408 = Logger.logObject.getter();
      v409 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v408, v409))
      {
        v410 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        *&v489 = v411;
        *v410 = 136446210;
        *(v410 + 4) = sub_100141FE4(v405, v407, &v489);
        _os_log_impl(&_mh_execute_header, v408, v409, "coreidvd: failure binding otd_url: %{public}s", v410, 0xCu);
        sub_10000BB78(v411);
      }

      (*(v486 + 8))(v466, v485);
      *&v489 = 0xD000000000000028;
      *(&v489 + 1) = 0x8000000100721960;
      v412._countAndFlagsBits = v405;
      v412._object = v407;
      String.append(_:)(v412);

      (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v413 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v414 = *(*v413 + 72);
      v415 = (*(*v413 + 80) + 32) & ~*(*v413 + 80);
      v416 = swift_allocObject();
      *(v416 + 16) = xmmword_1006BF520;
      v417 = v416 + v415;
      v418 = v417 + v413[14];
      v419 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v420 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v420 - 8) + 104))(v417, v419, v420);
      v421 = sqlite3_errcode(v484);
      *(v418 + 24) = &type metadata for Int32;
      *(v418 + 32) = &protocol witness table for Int32;
      *v418 = v421;
      sub_10003C9C0(v416);
      swift_setDeallocating();
      sub_10000BE18(v417, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 14))
  {
    result = sqlite3_errmsg(v484);
    if (!result)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v422 = String.init(cString:)();
    v424 = v423;
    defaultLogger()();

    v425 = Logger.logObject.getter();
    v426 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v425, v426))
    {
      v427 = swift_slowAlloc();
      v428 = swift_slowAlloc();
      *&v489 = v428;
      *v427 = 136446210;
      *(v427 + 4) = sub_100141FE4(v422, v424, &v489);
      _os_log_impl(&_mh_execute_header, v425, v426, "coreidvd: failure binding null otd_url: %{public}s", v427, 0xCu);
      sub_10000BB78(v428);
    }

    (*(v486 + 8))(v461, v485);
    *&v489 = 0xD000000000000028;
    *(&v489 + 1) = 0x8000000100721960;
    v429._countAndFlagsBits = v422;
    v429._object = v424;
    String.append(_:)(v429);

    (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v430 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v431 = *(*v430 + 72);
    v432 = (*(*v430 + 80) + 32) & ~*(*v430 + 80);
    v433 = swift_allocObject();
    *(v433 + 16) = xmmword_1006BF520;
    v434 = v433 + v432;
    v435 = v434 + v430[14];
    v436 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v437 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v437 - 8) + 104))(v434, v436, v437);
    v438 = sqlite3_errcode(v484);
    *(v435 + 24) = &type metadata for Int32;
    *(v435 + 32) = &protocol witness table for Int32;
    *v435 = v438;
    sub_10003C9C0(v433);
    swift_setDeallocating();
    sub_10000BE18(v434, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_93;
  }

  if (sqlite3_step(ppStmt) == 101)
  {

    defaultLogger()();
    v439 = Logger.logObject.getter();
    v440 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v439, v440))
    {
      v441 = swift_slowAlloc();
      *v441 = 0;
      _os_log_impl(&_mh_execute_header, v439, v440, "coredivd: Stored new value mapping", v441, 2u);
    }

    (*(v486 + 8))(v464, v485);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v484);
  if (result)
  {

    v442 = String.init(cString:)();
    v444 = v443;
    defaultLogger()();

    v445 = Logger.logObject.getter();
    v446 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v445, v446))
    {
      v447 = swift_slowAlloc();
      v448 = swift_slowAlloc();
      *&v489 = v448;
      *v447 = 136446210;
      *(v447 + 4) = sub_100141FE4(v442, v444, &v489);
      _os_log_impl(&_mh_execute_header, v445, v446, "coreidvd: failure inserting mapping: %{public}s", v447, 0xCu);
      sub_10000BB78(v448);
    }

    (*(v486 + 8))(v462, v485);
    *&v489 = 0xD000000000000019;
    *(&v489 + 1) = 0x8000000100721990;
    v449._countAndFlagsBits = v442;
    v449._object = v444;
    String.append(_:)(v449);

    (*(v488 + 104))(v460, enum case for DIPError.Code.sqliteError(_:), v487);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v450 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v451 = *(*v450 + 72);
    v452 = (*(*v450 + 80) + 32) & ~*(*v450 + 80);
    v453 = swift_allocObject();
    *(v453 + 16) = xmmword_1006BF520;
    v454 = v453 + v452;
    v455 = v454 + v450[14];
    v456 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v457 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v457 - 8) + 104))(v454, v456, v457);
    v458 = sqlite3_errcode(v484);
    *(v455 + 24) = &type metadata for Int32;
    *(v455 + 32) = &protocol witness table for Int32;
    *v455 = v458;
    sub_10003C9C0(v453);
    swift_setDeallocating();
    sub_10000BE18(v454, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_93:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_149:
  __break(1u);
  return result;
}

const char *sub_10055BAE0(uint64_t a1, char **a2)
{
  v4 = type metadata accessor for Logger();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v50 = type metadata accessor for DIPError.Code();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v50);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v15 = *(a1 + 40);
  if (!v15)
  {
    sub_1005507F8();
    v15 = *(a1 + 40);
    if (!v15)
    {
      (*(v11 + 104))(v14, enum case for DIPError.Code.databaseInaccessible(_:), v50);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_19:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v51 = v4;
  v16 = String.utf8CString.getter();
  v17 = sqlite3_prepare_v3(v15, (v16 + 32), -1, 0, &ppStmt, 0);

  if (v17)
  {
    result = sqlite3_errmsg(v15);
    if (result)
    {
      v19 = String.init(cString:)();
      v21 = v20;
      defaultLogger()();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v49 = v14;
        v26 = v25;
        v53 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_100141FE4(v19, v21, &v53);
        _os_log_impl(&_mh_execute_header, v22, v23, "coreidvd: failed to prepare select statement: %{public}s", v24, 0xCu);
        sub_10000BB78(v26);
        v14 = v49;
      }

      (*(v52 + 8))(v8, v51);
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v53 = 0xD00000000000001FLL;
      v54 = 0x800000010071F8B0;
      v27._countAndFlagsBits = v19;
      v27._object = v21;
      String.append(_:)(v27);

      v52 = v53;
      (*(v11 + 104))(v14, enum case for DIPError.Code.sqliteError(_:), v50);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v28 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v29 = *(*v28 + 72);
      v30 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1006BF520;
      v32 = v31 + v30;
      v33 = v32 + v28[14];
      v34 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v35 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v35 - 8) + 104))(v32, v34, v35);
      v36 = sqlite3_errcode(v15);
      *(v33 + 24) = &type metadata for Int32;
      *(v33 + 32) = &protocol witness table for Int32;
      *v33 = v36;
      sub_10003C9C0(v31);
      swift_setDeallocating();
      sub_10000BE18(v32, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      if (!sqlite3_column_text(ppStmt, 0))
      {
        __break(1u);
      }

      v38 = String.init(cString:)();
      v40 = v39;
      v41 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_1003C5110(0, *(v41 + 2) + 1, 1, v41);
        *a2 = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_1003C5110((v43 > 1), v44 + 1, 1, v41);
        *a2 = v41;
      }

      *(v41 + 2) = v44 + 1;
      v37 = &v41[16 * v44];
      *(v37 + 4) = v38;
      *(v37 + 5) = v40;
    }

    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "retrieved all claim id", v47, 2u);
    }

    (*(v52 + 8))(v10, v51);
    return sqlite3_finalize(ppStmt);
  }

  return result;
}

void *sub_10055C2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v165 = a4;
  v167 = a2;
  v168 = a3;
  v6 = type metadata accessor for Logger();
  v170 = *(v6 - 8);
  v171 = v6;
  v7 = *(v170 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v143 - v12;
  __chkstk_darwin(v11);
  v162 = &v143 - v14;
  v166 = type metadata accessor for VerifiedClaim(0);
  v15 = *(*(v166 - 8) + 64);
  v16 = __chkstk_darwin(v166);
  v164 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = &v143 - v18;
  v19 = type metadata accessor for String.Encoding();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DIPError.Code();
  v172 = *(v24 - 8);
  v173 = v24;
  v25 = *(v172 + 64);
  __chkstk_darwin(v24);
  v174 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v27 = *(a1 + 40);
  if (!v27)
  {
    sub_1005507F8();
    v27 = *(a1 + 40);
    if (!v27)
    {
      (*(v172 + 104))(v174, enum case for DIPError.Code.databaseInaccessible(_:), v173);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v28 = String.utf8CString.getter();
  v29 = sqlite3_prepare_v3(v27, (v28 + 32), -1, 0, &ppStmt, 0);

  if (v29)
  {
    result = sqlite3_errmsg(v27);
    if (result)
    {
      v31 = String.init(cString:)();
      v33 = v32;
      defaultLogger()();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v177 = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_100141FE4(v31, v33, &v177);
        _os_log_impl(&_mh_execute_header, v34, v35, "coreidvd: failed to prepare select statement: %{public}s", v36, 0xCu);
        sub_10000BB78(v37);
      }

      (*(v170 + 8))(v10, v171);
      v177 = 0;
      v178 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v177 = 0xD00000000000001FLL;
      v178 = 0x800000010071F8B0;
      v38._countAndFlagsBits = v31;
      v38._object = v33;
      String.append(_:)(v38);

      v171 = v177;
      (*(v172 + 104))(v174, enum case for DIPError.Code.sqliteError(_:), v173);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v39 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v40 = *(*v39 + 72);
      v41 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1006BF520;
      v43 = v42 + v41;
      v44 = v43 + v39[14];
      v45 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v46 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v46 - 8) + 104))(v43, v45, v46);
      v47 = sqlite3_errcode(v27);
      *(v44 + 24) = &type metadata for Int32;
      *(v44 + 32) = &protocol witness table for Int32;
      *v44 = v47;
      sub_10003C9C0(v42);
      swift_setDeallocating();
      sub_10000BE18(v43, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v49 = qword_1008823D0;
  v50 = String.utf8CString.getter();
  v51 = sqlite3_bind_text(v48, 1, (v50 + 32), -1, v49);

  if (!v51)
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v163 = (v20 + 8);
      v144 = v19;
      while (1)
      {
        result = sqlite3_column_text(ppStmt, 0);
        if (!result)
        {
          break;
        }

        v86 = String.init(cString:)();
        v88 = v87;
        result = sqlite3_column_text(ppStmt, 1);
        if (!result)
        {
          goto LABEL_47;
        }

        v152 = v86;
        v89 = String.init(cString:)();
        v156 = v90;
        result = sqlite3_column_text(ppStmt, 2);
        if (!result)
        {
          goto LABEL_45;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v161 = String.data(using:allowLossyConversion:)();
        v92 = v91;

        v93 = *v163;
        (*v163)(v23, v19);
        if (v92 >> 60 == 15)
        {

          (*(v172 + 104))(v174, enum case for DIPError.Code.jsonDecodingFailed(_:), v173);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v119 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v120 = *(*v119 + 72);
          v121 = (*(*v119 + 80) + 32) & ~*(*v119 + 80);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_1006BF520;
          v123 = v122 + v121;
          v124 = (v123 + v119[14]);
          v125 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v126 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v126 - 8) + 104))(v123, v125, v126);
          v124[3] = &type metadata for String;
          v124[4] = &protocol witness table for String;
          *v124 = 0x6D69616C63;
          v124[1] = 0xE500000000000000;
          sub_10003C9C0(v122);
          swift_setDeallocating();
          sub_10000BE18(v123, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_15;
        }

        result = sqlite3_column_text(ppStmt, 3);
        if (!result)
        {
          goto LABEL_48;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v159 = String.data(using:allowLossyConversion:)();
        v95 = v94;

        v93(v23, v19);
        v160 = v95;
        if (v95 >> 60 == 15)
        {

          (*(v172 + 104))(v174, enum case for DIPError.Code.jsonDecodingFailed(_:), v173);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v127 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v128 = *(*v127 + 72);
          v129 = (*(*v127 + 80) + 32) & ~*(*v127 + 80);
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_1006BF520;
          v131 = v130 + v129;
          v132 = (v131 + v127[14]);
          v133 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v134 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v134 - 8) + 104))(v131, v133, v134);
          v132[3] = &type metadata for String;
          v132[4] = &protocol witness table for String;
          *v132 = 0x7461646D69616C63;
          v132[1] = 0xE900000000000061;
          sub_10003C9C0(v130);
          swift_setDeallocating();
          sub_10000BE18(v131, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BD94(v161, v92);
          return sqlite3_finalize(ppStmt);
        }

        result = sqlite3_column_text(ppStmt, 4);
        if (!result)
        {
          goto LABEL_49;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v157 = String.data(using:allowLossyConversion:)();
        v97 = v96;

        v93(v23, v19);
        v158 = v97;
        v155 = v92;
        if (v97 >> 60 == 15)
        {

          (*(v172 + 104))(v174, enum case for DIPError.Code.jsonDecodingFailed(_:), v173);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v135 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v136 = *(*v135 + 72);
          v137 = (*(*v135 + 80) + 32) & ~*(*v135 + 80);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_1006BF520;
          v139 = v138 + v137;
          v140 = (v139 + v135[14]);
          v141 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v142 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v142 - 8) + 104))(v139, v141, v142);
          v140[3] = &type metadata for String;
          v140[4] = &protocol witness table for String;
          *v140 = 0xD000000000000013;
          v140[1] = 0x800000010071F970;
          sub_10003C9C0(v138);
          swift_setDeallocating();
          sub_10000BE18(v139, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BD94(v159, v160);
          sub_10000BD94(v161, v155);
          return sqlite3_finalize(ppStmt);
        }

        v150 = v89;
        result = sqlite3_column_text(ppStmt, 5);
        if (!result)
        {
          goto LABEL_52;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v98 = String.data(using:allowLossyConversion:)();
        v100 = v99;

        v93(v23, v19);
        result = sqlite3_column_text(ppStmt, 6);
        if (!result)
        {
          goto LABEL_51;
        }

        v101 = v98;
        v102 = String.init(cString:)();
        v154 = v103;
        result = sqlite3_column_text(ppStmt, 7);
        if (!result)
        {
          goto LABEL_50;
        }

        v177 = String.init(cString:)();
        v178 = v104;
        v175 = 124;
        v176 = 0xE100000000000000;
        sub_10001F298();
        v153 = StringProtocol.components<A>(separatedBy:)();

        v105 = type metadata accessor for JSONDecoder();
        v106 = *(v105 + 48);
        v107 = *(v105 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_10057628C(&qword_100837948, type metadata accessor for VerifiedClaim);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v4)
        {
          sub_10000BD94(v161, v92);
          sub_10000BD94(v159, v160);
          sub_10000BD94(v101, v100);
          sub_10000BD94(v157, v158);

          return sqlite3_finalize(ppStmt);
        }

        v149 = v102;
        v151 = v88;

        v108 = *(v105 + 48);
        v109 = *(v105 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_100007224(&unk_10084A070, &unk_1006E7DF0);
        sub_1000AB6CC();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v110 = v177;
        v111 = *(v105 + 48);
        v112 = *(v105 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v148 = v110;
        v147 = v101;
        v146 = v177;
        v145 = v100;
        if (v100 >> 60 == 15)
        {
          v69 = 0;
          v70 = v168;
        }

        else
        {
          v113 = *(v105 + 48);
          v114 = *(v105 + 52);
          swift_allocObject();
          sub_10000B8B8(v101, v100);
          JSONDecoder.init()();
          sub_100007224(&qword_100848070, &unk_1006E8370);
          sub_100575EDC();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v70 = v168;
          sub_10000BD94(v101, v100);

          v69 = v177;
        }

        v71 = v164;
        sub_100575E78(v169, v164);
        v72 = type metadata accessor for DIPStoredVerifiedClaim(0);
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        v75 = swift_allocObject();
        v76 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData;
        *(v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData) = 0;
        v75[2] = v167;
        v75[3] = v70;
        v77 = v152;
        v78 = v151;
        v75[4] = v152;
        v75[5] = v78;
        v79 = v156;
        v75[6] = v150;
        v75[7] = v79;
        sub_100576224(v71, v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, type metadata accessor for VerifiedClaim);
        *(v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData) = v148;
        *(v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData) = v146;
        *(v75 + v76) = v69;
        v80 = (v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName);
        v81 = v154;
        *v80 = v149;
        v80[1] = v81;
        *(v75 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl) = v153;

        v82 = v165;
        v83 = *v165;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v177 = *v82;
        *v82 = 0x8000000000000000;
        sub_10016E3A4(v75, v77, v78, isUniquelyReferenced_nonNull_native);

        *v82 = v177;
        sub_10000BD94(v161, v155);
        sub_10000BD94(v159, v160);
        sub_10000BD94(v157, v158);
        sub_10000BD94(v147, v145);
        sub_1005762D4(v169, type metadata accessor for VerifiedClaim);
        v85 = sqlite3_step(ppStmt);
        v19 = v144;
        if (v85 != 100)
        {
          goto LABEL_36;
        }
      }

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
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_36:
    v115 = v162;
    defaultLogger()();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "retrieved claim", v118, 2u);
    }

    (*(v170 + 8))(v115, v171);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v27);
  if (result)
  {
    v52 = String.init(cString:)();
    v54 = v53;
    defaultLogger()();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v177 = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_100141FE4(v52, v54, &v177);
      _os_log_impl(&_mh_execute_header, v55, v56, "coreidvd: failure binding providerId: %{public}s", v57, 0xCu);
      sub_10000BB78(v58);
    }

    (*(v170 + 8))(v13, v171);
    v177 = 0;
    v178 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v177 = 0xD00000000000002ALL;
    v178 = 0x800000010071F8D0;
    v59._countAndFlagsBits = v52;
    v59._object = v54;
    String.append(_:)(v59);

    v171 = v177;
    (*(v172 + 104))(v174, enum case for DIPError.Code.sqliteError(_:), v173);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v60 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v61 = *(*v60 + 72);
    v62 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1006BF520;
    v64 = v63 + v62;
    v65 = v64 + v60[14];
    v66 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v67 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v67 - 8) + 104))(v64, v66, v67);
    v68 = sqlite3_errcode(v27);
    *(v65 + 24) = &type metadata for Int32;
    *(v65 + 32) = &protocol witness table for Int32;
    *v65 = v68;
    sub_10003C9C0(v63);
    swift_setDeallocating();
    sub_10000BE18(v64, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_15:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_10055DF9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = _swiftEmptyArrayStorage;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1005761C0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100816AB0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

const char *sub_10055E124(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  ppStmt = 0;
  swift_beginAccess();
  v17 = *(a1 + 40);
  if (v17 || (sub_1005507F8(), (v17 = *(a1 + 40)) != 0))
  {
    v18 = String.utf8CString.getter();
    v19 = sqlite3_prepare_v3(v17, (v18 + 32), -1, 0, &ppStmt, 0);

    if (v19)
    {
      result = sqlite3_errmsg(v17);
      if (result)
      {
        v21 = String.init(cString:)();
        v23 = v22;
        defaultLogger()();

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v52 = v27;
          *v26 = 136446210;
          v28 = sub_100141FE4(v21, v23, &v52);

          *(v26 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v24, v25, "coreidvd: failed to prepare select statement: %{public}s", v26, 0xCu);
          sub_10000BB78(v27);
        }

        else
        {
        }

        return (*(v7 + 8))(v11, v6);
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v29 = ppStmt;
    if (qword_100832CA0 != -1)
    {
      swift_once();
    }

    v30 = qword_1008823D0;
    v31 = String.utf8CString.getter();
    v32 = sqlite3_bind_text(v29, 1, (v31 + 32), -1, v30);

    if (v32)
    {
      result = sqlite3_errmsg(v17);
      if (!result)
      {
        goto LABEL_30;
      }

      v33 = String.init(cString:)();
      v35 = v34;
      defaultLogger()();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 136446210;
        v40 = sub_100141FE4(v33, v35, &v52);

        *(v38 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "coreidvd: failure binding service_name: %{public}s", v38, 0xCu);
        sub_10000BB78(v39);
      }

      else
      {
      }

      (*(v7 + 8))(v14, v6);
    }

    else
    {
      while (sqlite3_step(ppStmt) == 100)
      {
        if (!sqlite3_column_text(ppStmt, 0))
        {
          __break(1u);
        }

        v42 = String.init(cString:)();
        v44 = v43;
        v45 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_1003C5110(0, *(v45 + 2) + 1, 1, v45);
          *a4 = v45;
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v48 >= v47 >> 1)
        {
          v45 = sub_1003C5110((v47 > 1), v48 + 1, 1, v45);
          *a4 = v45;
        }

        *(v45 + 2) = v48 + 1;
        v41 = &v45[16 * v48];
        *(v41 + 4) = v42;
        *(v41 + 5) = v44;
      }
    }

    return sqlite3_finalize(ppStmt);
  }

  defaultLogger()();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "coreidvd: unable to obtain sqlite database pointer", v51, 2u);
  }

  return (*(v7 + 8))(v16, v6);
}

const char *sub_10055E6C4(uint64_t a1, void *a2, uint64_t a3)
{
  v448 = a3;
  v467 = a2;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v450 = &v431 - v6;
  v7 = type metadata accessor for Date();
  v453 = *(v7 - 8);
  v454 = v7;
  v8 = *(v453 + 64);
  v9 = __chkstk_darwin(v7);
  v449 = &v431 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v451 = &v431 - v11;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v460 = &v431 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for VerifiedClaim(0);
  v15 = *(*(v461 - 8) + 64);
  __chkstk_darwin(v461);
  v462 = &v431 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v465 = *(v17 - 1);
  v466 = v17;
  v18 = *(v465 + 64);
  __chkstk_darwin(v17);
  v20 = &v431 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v468 = v21;
  v469 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v442 = &v431 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v444 = &v431 - v27;
  v28 = __chkstk_darwin(v26);
  v443 = &v431 - v29;
  v30 = __chkstk_darwin(v28);
  v447 = &v431 - v31;
  v32 = __chkstk_darwin(v30);
  v445 = &v431 - v33;
  v34 = __chkstk_darwin(v32);
  v446 = &v431 - v35;
  v36 = __chkstk_darwin(v34);
  v452 = &v431 - v37;
  v38 = __chkstk_darwin(v36);
  v455 = &v431 - v39;
  v40 = __chkstk_darwin(v38);
  v456 = &v431 - v41;
  v42 = __chkstk_darwin(v40);
  v457 = &v431 - v43;
  v44 = __chkstk_darwin(v42);
  v458 = &v431 - v45;
  v46 = __chkstk_darwin(v44);
  v459 = &v431 - v47;
  v48 = __chkstk_darwin(v46);
  v464 = (&v431 - v49);
  v50 = __chkstk_darwin(v48);
  v52 = &v431 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v431 - v54;
  v56 = __chkstk_darwin(v53);
  v58 = &v431 - v57;
  __chkstk_darwin(v56);
  v60 = &v431 - v59;
  v61 = type metadata accessor for DIPError.Code();
  v62 = *(v61 - 8);
  v470 = v61;
  v471 = v62;
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  v472 = &v431 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v65 = *(a1 + 40);
  if (!v65)
  {
    sub_1005507F8();
    v65 = *(a1 + 40);
    if (!v65)
    {
      (*(v471 + 104))(v472, enum case for DIPError.Code.databaseInaccessible(_:), v470);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v66 = String.utf8CString.getter();
  v67 = sqlite3_prepare_v3(v65, (v66 + 32), -1, 0, &ppStmt, 0);

  if (v67)
  {
    if (sqlite3_errmsg(v65))
    {
      v68 = String.init(cString:)();
      v70 = v69;
      defaultLogger()();

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v482[0] = v74;
        *v73 = 136446210;
        v75 = sub_100141FE4(v68, v70, v482);

        *(v73 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v71, v72, "coreidvd: failed to prepare insert statement %{public}s", v73, 0xCu);
        sub_10000BB78(v74);
      }

      else
      {
      }

      (*(v469 + 8))(v60, v468);
      (*(v471 + 104))(v472, enum case for DIPError.Code.internalError(_:), v470);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
LABEL_92:
    v335 = v450;
    sub_10000BBC4(v448, v450, &unk_100849400, &unk_1006BFBB0);
    if ((*(v453 + 48))(v335, 1, v454) == 1)
    {
      sub_10000BE18(v450, &unk_100849400, &unk_1006BFBB0);
      if (sqlite3_bind_null(ppStmt, 11))
      {
        result = sqlite3_errmsg(v441);
        if (result)
        {

          v336 = String.init(cString:)();
          v338 = v337;
          defaultLogger()();

          v339 = Logger.logObject.getter();
          v340 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v339, v340))
          {
            v341 = swift_slowAlloc();
            v342 = swift_slowAlloc();
            *&v473 = v342;
            *v341 = 136446210;
            *(v341 + 4) = sub_100141FE4(v336, v338, &v473);
            _os_log_impl(&_mh_execute_header, v339, v340, "coreidvd: failure binding null deleteAfter: %{public}s", v341, 0xCu);
            sub_10000BB78(v342);
          }

          (*(v469 + 8))(v445, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(46);

          *&v473 = 0xD00000000000002CLL;
          *(&v473 + 1) = 0x800000010071FC80;
          v343._countAndFlagsBits = v336;
          v343._object = v338;
          String.append(_:)(v343);

          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v344 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v345 = *(*v344 + 72);
          v346 = (*(*v344 + 80) + 32) & ~*(*v344 + 80);
          v347 = swift_allocObject();
          *(v347 + 16) = xmmword_1006BF520;
          v348 = v347 + v346;
          v349 = v348 + v344[14];
          v350 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v351 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v351 - 8) + 104))(v348, v350, v351);
          v352 = sqlite3_errcode(v441);
          *(v349 + 24) = &type metadata for Int32;
          *(v349 + 32) = &protocol witness table for Int32;
          *v349 = v352;
          sub_10003C9C0(v347);
          swift_setDeallocating();
          sub_10000BE18(v348, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
LABEL_90:
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v431, v432);
          sub_10000B90C(v433, v434);
          sub_10000B90C(v439, v436);
          sub_10000B90C(v440, v461);
          return sqlite3_finalize(ppStmt);
        }

        goto LABEL_132;
      }

      goto LABEL_106;
    }

    goto LABEL_99;
  }

  v440 = v20;
  v441 = v65;
  v76 = ppStmt;
  v78 = v467[2];
  v77 = v467[3];
  v79 = v467;
  v80 = qword_100832CA0;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = qword_1008823D0;
  v82 = String.utf8CString.getter();

  v83 = sqlite3_bind_text(v76, 1, (v82 + 32), -1, v81);

  if (v83)
  {
    if (!sqlite3_errmsg(v441))
    {
      __break(1u);
LABEL_99:
      (*(v453 + 32))(v449, v450, v454);
      Date.timeIntervalSinceReferenceDate.getter();
      if (sqlite3_bind_double(ppStmt, 11, v353))
      {
        result = sqlite3_errmsg(v441);
        if (result)
        {

          v354 = String.init(cString:)();
          v356 = v355;
          defaultLogger()();

          v357 = Logger.logObject.getter();
          v358 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v357, v358))
          {
            v359 = swift_slowAlloc();
            v360 = swift_slowAlloc();
            *&v473 = v360;
            *v359 = 136446210;
            *(v359 + 4) = sub_100141FE4(v354, v356, &v473);
            _os_log_impl(&_mh_execute_header, v357, v358, "coreidvd: failure binding deleteAfter: %{public}s", v359, 0xCu);
            sub_10000BB78(v360);
          }

          (*(v469 + 8))(v446, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          *&v473 = 0xD000000000000027;
          *(&v473 + 1) = 0x800000010071FD00;
          v361._countAndFlagsBits = v354;
          v361._object = v356;
          String.append(_:)(v361);

          v468 = *(&v473 + 1);
          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v362 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v363 = *(*v362 + 72);
          v364 = (*(*v362 + 80) + 32) & ~*(*v362 + 80);
          v365 = swift_allocObject();
          *(v365 + 16) = xmmword_1006BF520;
          v366 = v365 + v364;
          v367 = v366 + v362[14];
          v368 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v369 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v369 - 8) + 104))(v366, v368, v369);
          v370 = sqlite3_errcode(v441);
          *(v367 + 24) = &type metadata for Int32;
          *(v367 + 32) = &protocol witness table for Int32;
          *v367 = v370;
          sub_10003C9C0(v365);
          swift_setDeallocating();
          sub_10000BE18(v366, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v431, v432);
          sub_10000B90C(v433, v434);
          sub_10000B90C(v439, v436);
          sub_10000B90C(v440, v461);
          v464(v449, v454);
          return sqlite3_finalize(ppStmt);
        }

        goto LABEL_133;
      }

      goto LABEL_105;
    }

    v84 = String.init(cString:)();
    v86 = v85;
    defaultLogger()();

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v482[0] = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_100141FE4(v84, v86, v482);
      _os_log_impl(&_mh_execute_header, v87, v88, "coreidvd: failure binding providerid: %{public}s", v89, 0xCu);
      sub_10000BB78(v90);
    }

    (*(v469 + 8))(v58, v468);
    *&v482[0] = 0;
    *(&v482[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v482[0] = 0xD00000000000002BLL;
    *(&v482[0] + 1) = 0x800000010071FE50;
    v91._countAndFlagsBits = v84;
    v91._object = v86;
    String.append(_:)(v91);

    v469 = *&v482[0];
    (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v92 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v93 = *(*v92 + 72);
    v94 = (*(*v92 + 80) + 32) & ~*(*v92 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1006BF520;
    v96 = v95 + v94;
    v97 = v96 + v92[14];
    v98 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v99 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v99 - 8) + 104))(v96, v98, v99);
    v100 = sqlite3_errcode(v441);
    *(v97 + 24) = &type metadata for Int32;
    *(v97 + 32) = &protocol witness table for Int32;
    *v97 = v100;
    sub_10003C9C0(v95);
    swift_setDeallocating();
    sub_10000BE18(v96, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_33;
  }

  v102 = ppStmt;
  v103 = v79[4];
  v104 = v79[5];
  v105 = String.utf8CString.getter();
  LODWORD(v102) = sqlite3_bind_text(v102, 2, (v105 + 32), -1, v81);

  if (v102)
  {
    if (!sqlite3_errmsg(v441))
    {
      __break(1u);
LABEL_105:
      v464(v449, v454);
LABEL_106:
      v371 = ppStmt;
      v372 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName);
      v373 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName + 8);
      v374 = String.utf8CString.getter();
      LODWORD(v371) = sqlite3_bind_text(v371, 12, (v374 + 32), -1, v466);

      if (v371)
      {
        result = sqlite3_errmsg(v441);
        if (result)
        {

          v375 = String.init(cString:)();
          v377 = v376;
          defaultLogger()();

          v378 = Logger.logObject.getter();
          v379 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v378, v379))
          {
            v380 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            *&v473 = v381;
            *v380 = 136446210;
            *(v380 + 4) = sub_100141FE4(v375, v377, &v473);
            _os_log_impl(&_mh_execute_header, v378, v379, "coreidvd: failure binding serviceName: %{public}s", v380, 0xCu);
            sub_10000BB78(v381);
          }

          (*(v469 + 8))(v447, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(46);

          *&v473 = 0xD00000000000002CLL;
          *(&v473 + 1) = 0x800000010071F720;
          v382._countAndFlagsBits = v375;
          v382._object = v377;
          String.append(_:)(v382);

          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v383 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v384 = *(*v383 + 72);
          v385 = (*(*v383 + 80) + 32) & ~*(*v383 + 80);
          v386 = swift_allocObject();
          *(v386 + 16) = xmmword_1006BF520;
          v387 = v386 + v385;
          v388 = v387 + v383[14];
          v389 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v390 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v390 - 8) + 104))(v387, v389, v390);
          v391 = sqlite3_errcode(v441);
          *(v388 + 24) = &type metadata for Int32;
          *(v388 + 32) = &protocol witness table for Int32;
          *v388 = v391;
          sub_10003C9C0(v386);
          swift_setDeallocating();
          sub_10000BE18(v387, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_134;
      }

      *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl);

      sub_100007224(&qword_100834EA0, &qword_1006C06B0);
      sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0);
      BidirectionalCollection<>.joined(separator:)();

      v392 = ppStmt;
      v393 = String.utf8CString.getter();
      LODWORD(v392) = sqlite3_bind_text(v392, 13, (v393 + 32), -1, v466);

      if (v392)
      {
        result = sqlite3_errmsg(v441);
        if (result)
        {

          v394 = String.init(cString:)();
          v396 = v395;
          defaultLogger()();

          v397 = Logger.logObject.getter();
          v398 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v397, v398))
          {
            v399 = swift_slowAlloc();
            v400 = swift_slowAlloc();
            *&v473 = v400;
            *v399 = 136446210;
            *(v399 + 4) = sub_100141FE4(v394, v396, &v473);
            _os_log_impl(&_mh_execute_header, v397, v398, "coreidvd: failure binding acl: %{public}s", v399, 0xCu);
            sub_10000BB78(v400);
          }

          (*(v469 + 8))(v443, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&v473 = 0xD000000000000024;
          *(&v473 + 1) = 0x800000010071FCB0;
          v401._countAndFlagsBits = v394;
          v401._object = v396;
          String.append(_:)(v401);

          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v402 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v403 = *(*v402 + 72);
          v404 = (*(*v402 + 80) + 32) & ~*(*v402 + 80);
          v405 = swift_allocObject();
          *(v405 + 16) = xmmword_1006BF520;
          v406 = v405 + v404;
          v407 = v406 + v402[14];
          v408 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v409 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v409 - 8) + 104))(v406, v408, v409);
          v410 = sqlite3_errcode(v441);
          *(v407 + 24) = &type metadata for Int32;
          *(v407 + 32) = &protocol witness table for Int32;
          *v407 = v410;
          sub_10003C9C0(v405);
          swift_setDeallocating();
          sub_10000BE18(v406, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_135;
      }

      goto LABEL_117;
    }

    v106 = String.init(cString:)();
    v108 = v107;
    defaultLogger()();

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v482[0] = v112;
      *v111 = 136446210;
      *(v111 + 4) = sub_100141FE4(v106, v108, v482);
      _os_log_impl(&_mh_execute_header, v109, v110, "coreidvd: failure binding tier: %{public}s", v111, 0xCu);
      sub_10000BB78(v112);
    }

    (*(v469 + 8))(v55, v468);
    *&v482[0] = 0;
    *(&v482[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v482[0] = 0xD000000000000025;
    *(&v482[0] + 1) = 0x800000010071FE80;
    v113._countAndFlagsBits = v106;
    v113._object = v108;
    String.append(_:)(v113);

    v469 = *&v482[0];
    (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v114 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v115 = *(*v114 + 72);
    v116 = (*(*v114 + 80) + 32) & ~*(*v114 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1006BF520;
    v118 = v117 + v116;
    v119 = v118 + v114[14];
    v120 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v121 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v121 - 8) + 104))(v118, v120, v121);
    v122 = sqlite3_errcode(v441);
    *(v119 + 24) = &type metadata for Int32;
    *(v119 + 32) = &protocol witness table for Int32;
    *v119 = v122;
    sub_10003C9C0(v117);
    swift_setDeallocating();
    sub_10000BE18(v118, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_33;
  }

  v123 = ppStmt;
  v124 = v79[6];
  v125 = v79[7];
  v126 = String.utf8CString.getter();
  LODWORD(v123) = sqlite3_bind_text(v123, 3, (v126 + 32), -1, v81);

  if (!v123)
  {
    v144 = ppStmt;
    v145 = v81;
    v146 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim;
    v148 = v465;
    v147 = v466;
    v149 = v440;
    (*(v465 + 16))(v440, v79 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, v466);
    JWSSignedJSON.payload.getter();
    (*(v148 + 8))(v149, v147);
    v482[6] = v479;
    v482[7] = v480;
    v483 = v481;
    v482[0] = v473;
    v482[1] = v474;
    v482[2] = v475;
    v482[3] = v476;
    v482[4] = v477;
    v482[5] = v478;

    sub_1000C3BBC(v482);
    v150 = String.utf8CString.getter();

    v151 = sqlite3_bind_text(v144, 4, (v150 + 32), -1, v145);

    if (v151)
    {
      if (!sqlite3_errmsg(v441))
      {
        __break(1u);
        goto LABEL_122;
      }

      v152 = String.init(cString:)();
      v154 = v153;
      v155 = v464;
      defaultLogger()();

      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v473 = v159;
        *v158 = 136446210;
        *(v158 + 4) = sub_100141FE4(v152, v154, &v473);
        _os_log_impl(&_mh_execute_header, v156, v157, "coreidvd: failure binding claimid: %{public}s", v158, 0xCu);
        sub_10000BB78(v159);
      }

      (*(v469 + 8))(v155, v468);
      *&v473 = 0;
      *(&v473 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v473 = 0xD000000000000028;
      *(&v473 + 1) = 0x800000010071FB10;
      v160._countAndFlagsBits = v152;
      v160._object = v154;
      String.append(_:)(v160);

      v469 = v473;
      (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v161 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v162 = *(*v161 + 72);
      v163 = (*(*v161 + 80) + 32) & ~*(*v161 + 80);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_1006BF520;
      v165 = v164 + v163;
      v166 = v165 + v161[14];
      v167 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v168 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v168 - 8) + 104))(v165, v167, v168);
      v169 = sqlite3_errcode(v441);
      *(v166 + 24) = &type metadata for Int32;
      *(v166 + 32) = &protocol witness table for Int32;
      *v166 = v169;
      sub_10003C9C0(v164);
      swift_setDeallocating();
      sub_10000BE18(v165, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_33;
    }

    v466 = v145;
    v170 = type metadata accessor for JSONEncoder();
    v171 = *(v170 + 48);
    v172 = *(v170 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v173 = v467;
    v174 = v467 + v146;
    v175 = v462;
    sub_100575E78(v174, v462);
    sub_10057628C(&qword_100837960, type metadata accessor for VerifiedClaim);
    v176 = v463;
    v177 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v176)
    {
      sub_1005762D4(v175, type metadata accessor for VerifiedClaim);

      return sqlite3_finalize(ppStmt);
    }

    v179 = v177;
    v180 = v178;
    sub_1005762D4(v175, type metadata accessor for VerifiedClaim);

    *&v473 = v179;
    *(&v473 + 1) = v180;
    static String.Encoding.utf8.getter();
    v464 = sub_10053B880();
    v463 = String.init<A>(bytes:encoding:)();
    v465 = v181;
    v182 = *(v170 + 48);
    v183 = *(v170 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v173 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);

    sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB81C();
    v184 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v440 = v179;
    v461 = v180;
    v185 = v184;
    v187 = v186;

    v439 = v185;
    *&v473 = v185;
    *(&v473 + 1) = v187;
    static String.Encoding.utf8.getter();
    v438 = String.init<A>(bytes:encoding:)();
    v189 = v188;
    v190 = *(v170 + 48);
    v191 = *(v170 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

    v192 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v462 = 0;
    v193 = v192;
    v195 = v194;
    v436 = v187;
    v437 = v189;

    *&v473 = v193;
    *(&v473 + 1) = v195;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v197 = v196;
    v198 = *(v170 + 48);
    v199 = *(v170 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);

    sub_100007224(&qword_100848088, &qword_1006E8388);
    v200 = v195;
    sub_100575F98();
    v201 = v462;
    v202 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v462 = v201;
    if (v201)
    {

      sub_10000B90C(v193, v195);
      sub_10000B90C(v439, v436);
      sub_10000B90C(v440, v461);

      return sqlite3_finalize(ppStmt);
    }

    v204 = v203;
    v434 = v200;
    v435 = v197;
    v433 = v193;
    v205 = v202;

    v431 = v205;
    v432 = v204;
    *&v473 = v205;
    *(&v473 + 1) = v204;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v207 = v206;
    v208 = ppStmt;
    if (v465)
    {
      v209 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v209 = 0;
    }

    v210 = sqlite3_bind_text(v208, 5, v209, -1, v466);
    swift_unknownObjectRelease();
    if (v210)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v211 = String.init(cString:)();
        v213 = v212;
        v214 = v459;
        defaultLogger()();

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          v218 = swift_slowAlloc();
          *&v473 = v218;
          *v217 = 136446210;
          *(v217 + 4) = sub_100141FE4(v211, v213, &v473);
          _os_log_impl(&_mh_execute_header, v215, v216, "coreidvd: failure binding claim: %{public}s", v217, 0xCu);
          sub_10000BB78(v218);
        }

        (*(v469 + 8))(v214, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        *&v473 = 0xD000000000000026;
        *(&v473 + 1) = 0x800000010071FB40;
        v219._countAndFlagsBits = v211;
        v219._object = v213;
        String.append(_:)(v219);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v220 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v221 = *(*v220 + 72);
        v222 = (*(*v220 + 80) + 32) & ~*(*v220 + 80);
        v223 = swift_allocObject();
        *(v223 + 16) = xmmword_1006BF520;
        v224 = v223 + v222;
        v225 = v224 + v220[14];
        v226 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v227 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v227 - 8) + 104))(v224, v226, v227);
        v228 = sqlite3_errcode(v441);
        *(v225 + 24) = &type metadata for Int32;
        *(v225 + 32) = &protocol witness table for Int32;
        *v225 = v228;
        sub_10003C9C0(v223);
        swift_setDeallocating();
        sub_10000BE18(v224, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      __break(1u);
      goto LABEL_127;
    }

    v229 = ppStmt;
    if (v437)
    {
      v230 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v230 = 0;
    }

    v231 = sqlite3_bind_text(v229, 6, v230, -1, v466);
    swift_unknownObjectRelease();
    if (v231)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v232 = String.init(cString:)();
        v234 = v233;
        defaultLogger()();

        v235 = Logger.logObject.getter();
        v236 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v235, v236))
        {
          v237 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          *&v473 = v238;
          *v237 = 136446210;
          *(v237 + 4) = sub_100141FE4(v232, v234, &v473);
          _os_log_impl(&_mh_execute_header, v235, v236, "coreidvd: failure binding claimdata: %{public}s", v237, 0xCu);
          sub_10000BB78(v238);
        }

        (*(v469 + 8))(v458, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        *&v473 = 0xD00000000000002ALL;
        *(&v473 + 1) = 0x800000010071FB70;
        v239._countAndFlagsBits = v232;
        v239._object = v234;
        String.append(_:)(v239);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v240 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v241 = *(*v240 + 72);
        v242 = (*(*v240 + 80) + 32) & ~*(*v240 + 80);
        v243 = swift_allocObject();
        *(v243 + 16) = xmmword_1006BF520;
        v244 = v243 + v242;
        v245 = v244 + v240[14];
        v246 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v247 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v247 - 8) + 104))(v244, v246, v247);
        v248 = sqlite3_errcode(v441);
        *(v245 + 24) = &type metadata for Int32;
        *(v245 + 32) = &protocol witness table for Int32;
        *v245 = v248;
        sub_10003C9C0(v243);
        swift_setDeallocating();
        sub_10000BE18(v244, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v249 = ppStmt;
    if (v435)
    {
      v250 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v250 = 0;
    }

    v251 = sqlite3_bind_text(v249, 7, v250, -1, v466);
    swift_unknownObjectRelease();
    if (v251)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v252 = String.init(cString:)();
        v254 = v253;
        defaultLogger()();

        v255 = Logger.logObject.getter();
        v256 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v255, v256))
        {
          v257 = swift_slowAlloc();
          v258 = swift_slowAlloc();
          *&v473 = v258;
          *v257 = 136446210;
          *(v257 + 4) = sub_100141FE4(v252, v254, &v473);
          _os_log_impl(&_mh_execute_header, v255, v256, "coreidvd: failure binding unverifiedClaimdata: %{public}s", v257, 0xCu);
          sub_10000BB78(v258);
        }

        (*(v469 + 8))(v457, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v259._countAndFlagsBits = 0xD000000000000034;
        v259._object = 0x800000010071FEE0;
        String.append(_:)(v259);
        v260._countAndFlagsBits = v252;
        v260._object = v254;
        String.append(_:)(v260);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v261 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v262 = *(*v261 + 72);
        v263 = (*(*v261 + 80) + 32) & ~*(*v261 + 80);
        v264 = swift_allocObject();
        *(v264 + 16) = xmmword_1006BF520;
        v265 = v264 + v263;
        v266 = v265 + v261[14];
        v267 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v268 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v268 - 8) + 104))(v265, v267, v268);
        v269 = sqlite3_errcode(v441);
        *(v266 + 24) = &type metadata for Int32;
        *(v266 + 32) = &protocol witness table for Int32;
        *v266 = v269;
        sub_10003C9C0(v264);
        swift_setDeallocating();
        sub_10000BE18(v265, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      goto LABEL_128;
    }

    v270 = ppStmt;
    if (v207)
    {
      v271 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v271 = 0;
    }

    v272 = sqlite3_bind_text(v270, 8, v271, -1, v466);
    swift_unknownObjectRelease();
    if (v272)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v273 = String.init(cString:)();
        v275 = v274;
        defaultLogger()();

        v276 = Logger.logObject.getter();
        v277 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v276, v277))
        {
          v278 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          *&v473 = v279;
          *v278 = 136446210;
          *(v278 + 4) = sub_100141FE4(v273, v275, &v473);
          _os_log_impl(&_mh_execute_header, v276, v277, "coreidvd: failure binding encryptedClaimdata: %{public}s", v278, 0xCu);
          sub_10000BB78(v279);
        }

        (*(v469 + 8))(v456, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        v280._countAndFlagsBits = 0xD000000000000033;
        v280._object = 0x800000010071FF20;
        String.append(_:)(v280);
        v281._countAndFlagsBits = v273;
        v281._object = v275;
        String.append(_:)(v281);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v282 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v283 = *(*v282 + 72);
        v284 = (*(*v282 + 80) + 32) & ~*(*v282 + 80);
        v285 = swift_allocObject();
        *(v285 + 16) = xmmword_1006BF520;
        v286 = v285 + v284;
        v287 = v286 + v282[14];
        v288 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v289 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v289 - 8) + 104))(v286, v288, v289);
        v290 = sqlite3_errcode(v441);
        *(v287 + 24) = &type metadata for Int32;
        *(v287 + 32) = &protocol witness table for Int32;
        *v287 = v290;
        sub_10003C9C0(v285);
        swift_setDeallocating();
        sub_10000BE18(v286, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_90;
      }

      goto LABEL_129;
    }

    v291 = [objc_opt_self() mainBundle];
    v292 = [v291 infoDictionary];

    if (v292)
    {
      v293 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v293 + 16) && (v294 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v295 & 1) != 0))
      {
        sub_10001F2EC(*(v293 + 56) + 32 * v294, &v473);
      }

      else
      {
        v473 = 0u;
        v474 = 0u;
      }

      if (*(&v474 + 1))
      {
        swift_dynamicCast();
LABEL_80:
        v296 = ppStmt;
        v297 = String.utf8CString.getter();
        LODWORD(v296) = sqlite3_bind_text(v296, 9, (v297 + 32), -1, v466);

        if (!v296)
        {
          v315 = v451;
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v317 = v316;
          v464 = *(v453 + 8);
          v464(v315, v454);
          if (!sqlite3_bind_double(ppStmt, 10, v317))
          {
            goto LABEL_92;
          }

          result = sqlite3_errmsg(v441);
          if (result)
          {

            v318 = String.init(cString:)();
            v320 = v319;
            defaultLogger()();

            v321 = Logger.logObject.getter();
            v322 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v321, v322))
            {
              v323 = swift_slowAlloc();
              v324 = swift_slowAlloc();
              *&v473 = v324;
              *v323 = 136446210;
              *(v323 + 4) = sub_100141FE4(v318, v320, &v473);
              _os_log_impl(&_mh_execute_header, v321, v322, "coreidvd: failure binding date: %{public}s", v323, 0xCu);
              sub_10000BB78(v324);
            }

            (*(v469 + 8))(v452, v468);
            *&v473 = 0;
            *(&v473 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(39);

            *&v473 = 0xD000000000000025;
            *(&v473 + 1) = 0x800000010071FF60;
            v325._countAndFlagsBits = v318;
            v325._object = v320;
            String.append(_:)(v325);

            v469 = v473;
            (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v326 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v327 = *(*v326 + 72);
            v328 = (*(*v326 + 80) + 32) & ~*(*v326 + 80);
            v329 = swift_allocObject();
            *(v329 + 16) = xmmword_1006BF520;
            v330 = v329 + v328;
            v331 = v330 + v326[14];
            v332 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v333 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v333 - 8) + 104))(v330, v332, v333);
            v334 = sqlite3_errcode(v441);
            *(v331 + 24) = &type metadata for Int32;
            *(v331 + 32) = &protocol witness table for Int32;
            *v331 = v334;
            sub_10003C9C0(v329);
            swift_setDeallocating();
            sub_10000BE18(v330, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_90;
          }

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
          goto LABEL_136;
        }

        result = sqlite3_errmsg(v441);
        if (result)
        {

          v298 = String.init(cString:)();
          v300 = v299;
          defaultLogger()();

          v301 = Logger.logObject.getter();
          v302 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            *&v473 = v304;
            *v303 = 136446210;
            *(v303 + 4) = sub_100141FE4(v298, v300, &v473);
            _os_log_impl(&_mh_execute_header, v301, v302, "coreidvd: failure binding idvVersion: %{public}s", v303, 0xCu);
            sub_10000BB78(v304);
          }

          (*(v469 + 8))(v455, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          *&v473 = 0xD00000000000002BLL;
          *(&v473 + 1) = 0x800000010071FC20;
          v305._countAndFlagsBits = v298;
          v305._object = v300;
          String.append(_:)(v305);

          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v306 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v307 = *(*v306 + 72);
          v308 = (*(*v306 + 80) + 32) & ~*(*v306 + 80);
          v309 = swift_allocObject();
          *(v309 + 16) = xmmword_1006BF520;
          v310 = v309 + v308;
          v311 = v310 + v306[14];
          v312 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v313 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v313 - 8) + 104))(v310, v312, v313);
          v314 = sqlite3_errcode(v441);
          *(v311 + 24) = &type metadata for Int32;
          *(v311 + 32) = &protocol witness table for Int32;
          *v311 = v314;
          sub_10003C9C0(v309);
          swift_setDeallocating();
          sub_10000BE18(v310, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_90;
        }

LABEL_130:
        __break(1u);
        goto LABEL_131;
      }
    }

    else
    {
      v473 = 0u;
      v474 = 0u;
    }

    sub_10000BE18(&v473, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_80;
  }

  if (sqlite3_errmsg(v441))
  {
    v127 = String.init(cString:)();
    v129 = v128;
    defaultLogger()();

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v482[0] = v133;
      *v132 = 136446210;
      *(v132 + 4) = sub_100141FE4(v127, v129, v482);
      _os_log_impl(&_mh_execute_header, v130, v131, "coreidvd: failure binding workflowid: %{public}s", v132, 0xCu);
      sub_10000BB78(v133);
    }

    (*(v469 + 8))(v52, v468);
    *&v482[0] = 0;
    *(&v482[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v482[0] = 0xD00000000000002BLL;
    *(&v482[0] + 1) = 0x800000010071FEB0;
    v134._countAndFlagsBits = v127;
    v134._object = v129;
    String.append(_:)(v134);

    v469 = *&v482[0];
    (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v135 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v136 = *(*v135 + 72);
    v137 = (*(*v135 + 80) + 32) & ~*(*v135 + 80);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1006BF520;
    v139 = v138 + v137;
    v140 = v139 + v135[14];
    v141 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v142 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v142 - 8) + 104))(v139, v141, v142);
    v143 = sqlite3_errcode(v441);
    *(v140 + 24) = &type metadata for Int32;
    *(v140 + 32) = &protocol witness table for Int32;
    *v140 = v143;
    sub_10003C9C0(v138);
    swift_setDeallocating();
    sub_10000BE18(v139, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_33:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  __break(1u);
LABEL_117:
  if (sqlite3_step(ppStmt) == 101)
  {

    defaultLogger()();
    v411 = Logger.logObject.getter();
    v412 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v411, v412))
    {
      v413 = swift_slowAlloc();
      *v413 = 0;
      _os_log_impl(&_mh_execute_header, v411, v412, "coredivd: Stored new claim", v413, 2u);
    }

    sub_10000B90C(v431, v432);
    sub_10000B90C(v433, v434);
    sub_10000B90C(v439, v436);
    sub_10000B90C(v440, v461);

    (*(v469 + 8))(v442, v468);
    return sqlite3_finalize(ppStmt);
  }

LABEL_122:
  result = sqlite3_errmsg(v441);
  if (result)
  {

    v414 = String.init(cString:)();
    v416 = v415;
    defaultLogger()();

    v417 = Logger.logObject.getter();
    v418 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v417, v418))
    {
      v419 = swift_slowAlloc();
      v420 = swift_slowAlloc();
      *&v473 = v420;
      *v419 = 136446210;
      *(v419 + 4) = sub_100141FE4(v414, v416, &v473);
      _os_log_impl(&_mh_execute_header, v417, v418, "coreidvd: failure inserting claim to sqlite: %{public}s", v419, 0xCu);
      sub_10000BB78(v420);
    }

    (*(v469 + 8))(v444, v468);
    *&v473 = 0;
    *(&v473 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v473 = 0xD000000000000021;
    *(&v473 + 1) = 0x800000010071FF90;
    v421._countAndFlagsBits = v414;
    v421._object = v416;
    String.append(_:)(v421);

    v469 = v473;
    (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v422 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v423 = *(*v422 + 72);
    v424 = (*(*v422 + 80) + 32) & ~*(*v422 + 80);
    v425 = swift_allocObject();
    *(v425 + 16) = xmmword_1006BF520;
    v426 = v425 + v424;
    v427 = v426 + v422[14];
    v428 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v429 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v429 - 8) + 104))(v426, v428, v429);
    v430 = sqlite3_errcode(v441);
    *(v427 + 24) = &type metadata for Int32;
    *(v427 + 32) = &protocol witness table for Int32;
    *v427 = v430;
    sub_10003C9C0(v425);
    swift_setDeallocating();
    sub_10000BE18(v426, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_90;
  }

LABEL_136:
  __break(1u);
  return result;
}

const char *sub_1005630B8(uint64_t a1, void *a2, uint64_t a3)
{
  v450 = a3;
  v467 = a2;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v452 = &v427 - v6;
  v7 = type metadata accessor for Date();
  v455 = *(v7 - 8);
  v456 = v7;
  v8 = *(v455 + 64);
  v9 = __chkstk_darwin(v7);
  v451 = &v427 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v453 = &v427 - v11;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v462 = &v427 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = type metadata accessor for VerifiedClaim(0);
  v15 = *(*(v463 - 1) + 64);
  __chkstk_darwin(v463);
  v464 = &v427 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v466 = *(v17 - 8);
  v18 = *(v466 + 64);
  __chkstk_darwin(v17);
  v20 = &v427 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v468 = v21;
  v469 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v442 = &v427 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v444 = &v427 - v27;
  v28 = __chkstk_darwin(v26);
  v443 = &v427 - v29;
  v30 = __chkstk_darwin(v28);
  v445 = &v427 - v31;
  v32 = __chkstk_darwin(v30);
  v446 = &v427 - v33;
  v34 = __chkstk_darwin(v32);
  v447 = &v427 - v35;
  v36 = __chkstk_darwin(v34);
  v448 = &v427 - v37;
  v38 = __chkstk_darwin(v36);
  v449 = &v427 - v39;
  v40 = __chkstk_darwin(v38);
  v454 = &v427 - v41;
  v42 = __chkstk_darwin(v40);
  v457 = &v427 - v43;
  v44 = __chkstk_darwin(v42);
  v458 = &v427 - v45;
  v46 = __chkstk_darwin(v44);
  v459 = &v427 - v47;
  v48 = __chkstk_darwin(v46);
  v460 = &v427 - v49;
  v50 = __chkstk_darwin(v48);
  v461 = &v427 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v427 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v427 - v56;
  __chkstk_darwin(v55);
  v59 = &v427 - v58;
  v60 = type metadata accessor for DIPError.Code();
  v61 = *(v60 - 8);
  v470 = v60;
  v471 = v61;
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v472 = &v427 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v64 = *(a1 + 40);
  if (!v64)
  {
    sub_1005507F8();
    v64 = *(a1 + 40);
    if (!v64)
    {
      (*(v471 + 104))(v472, enum case for DIPError.Code.databaseInaccessible(_:), v470);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v65 = String.utf8CString.getter();
  v66 = sqlite3_prepare_v3(v64, (v65 + 32), -1, 0, &ppStmt, 0);

  if (v66)
  {
    if (sqlite3_errmsg(v64))
    {
      v67 = String.init(cString:)();
      v69 = v68;
      defaultLogger()();

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v482[0] = v73;
        *v72 = 136446210;
        v74 = sub_100141FE4(v67, v69, v482);

        *(v72 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "coreidvd: failed to prepare update statement %{public}s", v72, 0xCu);
        sub_10000BB78(v73);
      }

      else
      {
      }

      (*(v469 + 8))(v59, v468);
      (*(v471 + 104))(v472, enum case for DIPError.Code.internalError(_:), v470);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_91;
  }

  v441 = v64;
  v75 = ppStmt;
  v77 = v467[6];
  v76 = v467[7];
  v78 = qword_100832CA0;

  if (v78 != -1)
  {
    swift_once();
  }

  v79 = qword_1008823D0;
  v80 = String.utf8CString.getter();

  v81 = sqlite3_bind_text(v75, 1, (v80 + 32), -1, v79);

  if (!v81)
  {
    v100 = ppStmt;
    v101 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim;
    v102 = v466;
    (*(v466 + 16))(v20, v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, v17);
    JWSSignedJSON.payload.getter();
    (*(v102 + 8))(v20, v17);
    v482[6] = v479;
    v482[7] = v480;
    v483 = v481;
    v482[0] = v473;
    v482[1] = v474;
    v482[2] = v475;
    v482[3] = v476;
    v482[4] = v477;
    v482[5] = v478;

    sub_1000C3BBC(v482);
    v103 = String.utf8CString.getter();

    v104 = sqlite3_bind_text(v100, 2, (v103 + 32), -1, v79);

    if (v104)
    {
      if (!sqlite3_errmsg(v441))
      {
        __break(1u);
        goto LABEL_109;
      }

      v105 = String.init(cString:)();
      v107 = v106;
      defaultLogger()();

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v473 = v111;
        *v110 = 136446210;
        *(v110 + 4) = sub_100141FE4(v105, v107, &v473);
        _os_log_impl(&_mh_execute_header, v108, v109, "coreidvd: failure binding claimid: %{public}s", v110, 0xCu);
        sub_10000BB78(v111);
      }

      (*(v469 + 8))(v54, v468);
      *&v473 = 0;
      *(&v473 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      *&v473 = 0xD000000000000028;
      *(&v473 + 1) = 0x800000010071FB10;
      v112._countAndFlagsBits = v105;
      v112._object = v107;
      String.append(_:)(v112);

      v469 = v473;
      (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v113 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v114 = *(*v113 + 72);
      v115 = (*(*v113 + 80) + 32) & ~*(*v113 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_1006BF520;
      v117 = v116 + v115;
      v118 = v117 + v113[14];
      v119 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v120 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v120 - 8) + 104))(v117, v119, v120);
      v121 = sqlite3_errcode(v441);
      *(v118 + 24) = &type metadata for Int32;
      *(v118 + 32) = &protocol witness table for Int32;
      *v118 = v121;
      sub_10003C9C0(v116);
      swift_setDeallocating();
      sub_10000BE18(v117, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_23;
    }

    v122 = type metadata accessor for JSONEncoder();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v125 = v467;
    v126 = v467 + v101;
    v127 = v464;
    sub_100575E78(v126, v464);
    sub_10057628C(&qword_100837960, type metadata accessor for VerifiedClaim);
    v128 = v465;
    v129 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v128)
    {
      sub_1005762D4(v127, type metadata accessor for VerifiedClaim);

      return sqlite3_finalize(ppStmt);
    }

    v131 = v129;
    v132 = v130;
    v463 = v79;
    sub_1005762D4(v127, type metadata accessor for VerifiedClaim);

    *&v473 = v131;
    *(&v473 + 1) = v132;
    static String.Encoding.utf8.getter();
    v465 = sub_10053B880();
    v464 = String.init<A>(bytes:encoding:)();
    v466 = v133;
    v134 = *(v122 + 48);
    v135 = *(v122 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v125 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);

    sub_100007224(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB81C();
    v136 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v438 = v131;
    v439 = v132;
    v137 = v136;
    v139 = v138;

    v437 = v137;
    *&v473 = v137;
    *(&v473 + 1) = v139;
    static String.Encoding.utf8.getter();
    v436 = String.init<A>(bytes:encoding:)();
    v440 = v140;
    v141 = *(v122 + 48);
    v142 = *(v122 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

    v143 = v139;
    v144 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v146 = v145;

    *&v473 = v144;
    *(&v473 + 1) = v146;
    static String.Encoding.utf8.getter();
    v147 = v146;
    v434 = String.init<A>(bytes:encoding:)();
    v149 = v148;
    v150 = *(v122 + 48);
    v151 = *(v122 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);

    sub_100007224(&qword_100848088, &qword_1006E8388);
    v152 = v144;
    sub_100575F98();
    v153 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v435 = 0;
    v155 = v154;
    v432 = v143;
    v433 = v149;
    v430 = v152;
    v431 = v147;
    v156 = v153;

    v428 = v156;
    *&v473 = v156;
    *(&v473 + 1) = v155;
    static String.Encoding.utf8.getter();
    String.init<A>(bytes:encoding:)();
    v158 = v157;
    v159 = ppStmt;
    if (v466)
    {
      v160 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v160 = 0;
    }

    v161 = v433;
    v162 = sqlite3_bind_text(v159, 3, v160, -1, v463);
    swift_unknownObjectRelease();
    v429 = v155;
    if (v162)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v163 = String.init(cString:)();
        v165 = v164;
        v166 = v461;
        defaultLogger()();

        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          *&v473 = v170;
          *v169 = 136446210;
          *(v169 + 4) = sub_100141FE4(v163, v165, &v473);
          _os_log_impl(&_mh_execute_header, v167, v168, "coreidvd: failure binding claim: %{public}s", v169, 0xCu);
          sub_10000BB78(v170);
        }

        (*(v469 + 8))(v166, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        *&v473 = 0xD000000000000026;
        *(&v473 + 1) = 0x800000010071FB40;
        v171._countAndFlagsBits = v163;
        v171._object = v165;
        String.append(_:)(v171);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v172 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v173 = *(*v172 + 72);
        v174 = (*(*v172 + 80) + 32) & ~*(*v172 + 80);
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_1006BF520;
        v176 = v175 + v174;
        v177 = v176 + v172[14];
        v178 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v179 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v179 - 8) + 104))(v176, v178, v179);
        v180 = sqlite3_errcode(v441);
        *(v177 + 24) = &type metadata for Int32;
        *(v177 + 32) = &protocol witness table for Int32;
        *v177 = v180;
        sub_10003C9C0(v175);
        swift_setDeallocating();
        sub_10000BE18(v176, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_123;
    }

    v181 = ppStmt;
    if (v440)
    {
      v182 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v182 = 0;
    }

    v183 = sqlite3_bind_text(v181, 4, v182, -1, v463);
    swift_unknownObjectRelease();
    if (v183)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v184 = String.init(cString:)();
        v186 = v185;
        v187 = v460;
        defaultLogger()();

        v188 = Logger.logObject.getter();
        v189 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *&v473 = v191;
          *v190 = 136446210;
          *(v190 + 4) = sub_100141FE4(v184, v186, &v473);
          _os_log_impl(&_mh_execute_header, v188, v189, "coreidvd: failure binding claimdata: %{public}s", v190, 0xCu);
          sub_10000BB78(v191);
        }

        (*(v469 + 8))(v187, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        *&v473 = 0xD00000000000002ALL;
        *(&v473 + 1) = 0x800000010071FB70;
        v192._countAndFlagsBits = v184;
        v192._object = v186;
        String.append(_:)(v192);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v193 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v194 = *(*v193 + 72);
        v195 = (*(*v193 + 80) + 32) & ~*(*v193 + 80);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_1006BF520;
        v197 = v196 + v195;
        v198 = v197 + v193[14];
        v199 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v200 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v200 - 8) + 104))(v197, v199, v200);
        v201 = sqlite3_errcode(v441);
        *(v198 + 24) = &type metadata for Int32;
        *(v198 + 32) = &protocol witness table for Int32;
        *v198 = v201;
        sub_10003C9C0(v196);
        swift_setDeallocating();
        sub_10000BE18(v197, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v202 = ppStmt;
    if (v161)
    {
      v203 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v203 = 0;
    }

    v204 = sqlite3_bind_text(v202, 5, v203, -1, v463);
    swift_unknownObjectRelease();
    if (v204)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v205 = String.init(cString:)();
        v207 = v206;
        v208 = v459;
        defaultLogger()();

        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *&v473 = v212;
          *v211 = 136446210;
          *(v211 + 4) = sub_100141FE4(v205, v207, &v473);
          _os_log_impl(&_mh_execute_header, v209, v210, "coreidvd: failure binding unverifiedClaimdata: %{public}s", v211, 0xCu);
          sub_10000BB78(v212);
        }

        (*(v469 + 8))(v208, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        v213._countAndFlagsBits = 0xD000000000000036;
        v213._object = 0x800000010071FBA0;
        String.append(_:)(v213);
        v214._countAndFlagsBits = v205;
        v214._object = v207;
        String.append(_:)(v214);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v215 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v216 = *(*v215 + 72);
        v217 = (*(*v215 + 80) + 32) & ~*(*v215 + 80);
        v218 = swift_allocObject();
        *(v218 + 16) = xmmword_1006BF520;
        v219 = v218 + v217;
        v220 = v219 + v215[14];
        v221 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v222 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v222 - 8) + 104))(v219, v221, v222);
        v223 = sqlite3_errcode(v441);
        *(v220 + 24) = &type metadata for Int32;
        *(v220 + 32) = &protocol witness table for Int32;
        *v220 = v223;
        sub_10003C9C0(v218);
        swift_setDeallocating();
        sub_10000BE18(v219, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      goto LABEL_124;
    }

    v224 = ppStmt;
    if (v158)
    {
      v225 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v225 = 0;
    }

    v226 = sqlite3_bind_text(v224, 6, v225, -1, v463);
    swift_unknownObjectRelease();
    if (v226)
    {
      result = sqlite3_errmsg(v441);
      if (result)
      {

        v227 = String.init(cString:)();
        v229 = v228;
        defaultLogger()();

        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          *&v473 = v233;
          *v232 = 136446210;
          *(v232 + 4) = sub_100141FE4(v227, v229, &v473);
          _os_log_impl(&_mh_execute_header, v230, v231, "coreidvd: failure binding encryptedClaimdata: %{public}s", v232, 0xCu);
          sub_10000BB78(v233);
        }

        (*(v469 + 8))(v458, v468);
        *&v473 = 0;
        *(&v473 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v234._countAndFlagsBits = 0xD000000000000035;
        v234._object = 0x800000010071FBE0;
        String.append(_:)(v234);
        v235._countAndFlagsBits = v227;
        v235._object = v229;
        String.append(_:)(v235);

        v469 = v473;
        (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v236 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v237 = *(*v236 + 72);
        v238 = (*(*v236 + 80) + 32) & ~*(*v236 + 80);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_1006BF520;
        v240 = v239 + v238;
        v241 = v240 + v236[14];
        v242 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v243 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v243 - 8) + 104))(v240, v242, v243);
        v244 = sqlite3_errcode(v441);
        *(v241 + 24) = &type metadata for Int32;
        *(v241 + 32) = &protocol witness table for Int32;
        *v241 = v244;
        sub_10003C9C0(v239);
        swift_setDeallocating();
        sub_10000BE18(v240, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_78;
      }

      goto LABEL_125;
    }

    v245 = [objc_opt_self() mainBundle];
    v246 = [v245 infoDictionary];

    if (v246)
    {
      v247 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v247 + 16) && (v248 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v249 & 1) != 0))
      {
        sub_10001F2EC(*(v247 + 56) + 32 * v248, &v473);
      }

      else
      {
        v473 = 0u;
        v474 = 0u;
      }

      if (*(&v474 + 1))
      {
        swift_dynamicCast();
LABEL_68:
        v250 = ppStmt;
        v251 = String.utf8CString.getter();
        LODWORD(v250) = sqlite3_bind_text(v250, 7, (v251 + 32), -1, v463);

        if (!v250)
        {
          v269 = v453;
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v271 = v270;
          v465 = *(v455 + 8);
          v465(v269, v456);
          if (!sqlite3_bind_double(ppStmt, 8, v271))
          {
            v289 = v452;
            sub_10000BBC4(v450, v452, &unk_100849400, &unk_1006BFBB0);
            if ((*(v455 + 48))(v289, 1, v456) != 1)
            {
              (*(v455 + 32))(v451, v452, v456);
              Date.timeIntervalSinceReferenceDate.getter();
              if (!sqlite3_bind_double(ppStmt, 9, v307))
              {
LABEL_91:
                v465(v451, v456);
                goto LABEL_92;
              }

              result = sqlite3_errmsg(v441);
              if (result)
              {

                v308 = String.init(cString:)();
                v310 = v309;
                defaultLogger()();

                v311 = Logger.logObject.getter();
                v312 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v311, v312))
                {
                  v313 = swift_slowAlloc();
                  v314 = swift_slowAlloc();
                  *&v473 = v314;
                  *v313 = 136446210;
                  *(v313 + 4) = sub_100141FE4(v308, v310, &v473);
                  _os_log_impl(&_mh_execute_header, v311, v312, "coreidvd: failure binding deleteAfter: %{public}s", v313, 0xCu);
                  sub_10000BB78(v314);
                }

                (*(v469 + 8))(v449, v468);
                *&v473 = 0;
                *(&v473 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(41);

                *&v473 = 0xD000000000000027;
                *(&v473 + 1) = 0x800000010071FD00;
                v315._countAndFlagsBits = v308;
                v315._object = v310;
                String.append(_:)(v315);

                v468 = *(&v473 + 1);
                v469 = v473;
                (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
                sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                v316 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                v317 = *(*v316 + 72);
                v318 = (*(*v316 + 80) + 32) & ~*(*v316 + 80);
                v319 = swift_allocObject();
                *(v319 + 16) = xmmword_1006BF520;
                v320 = v319 + v318;
                v321 = v320 + v316[14];
                v322 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                v323 = type metadata accessor for DIPError.PropertyKey();
                (*(*(v323 - 8) + 104))(v320, v322, v323);
                v324 = sqlite3_errcode(v441);
                *(v321 + 24) = &type metadata for Int32;
                *(v321 + 32) = &protocol witness table for Int32;
                *v321 = v324;
                sub_10003C9C0(v319);
                swift_setDeallocating();
                sub_10000BE18(v320, &qword_1008341D0, &unk_1006BF8D0);
                swift_deallocClassInstance();
                type metadata accessor for DIPError();
                sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
                swift_allocError();
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();
                sub_10000B90C(v428, v429);
                sub_10000B90C(v430, v431);
                sub_10000B90C(v437, v432);
                sub_10000B90C(v438, v439);
                v465(v451, v456);
                return sqlite3_finalize(ppStmt);
              }

LABEL_129:
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
              return result;
            }

            sub_10000BE18(v452, &unk_100849400, &unk_1006BFBB0);
            if (!sqlite3_bind_null(ppStmt, 9))
            {
LABEL_92:
              v325 = ppStmt;
              v326 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName);
              v327 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName + 8);
              v328 = String.utf8CString.getter();
              LODWORD(v325) = sqlite3_bind_text(v325, 10, (v328 + 32), -1, v463);

              if (v325)
              {
                result = sqlite3_errmsg(v441);
                if (result)
                {

                  v329 = String.init(cString:)();
                  v331 = v330;
                  defaultLogger()();

                  v332 = Logger.logObject.getter();
                  v333 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v332, v333))
                  {
                    v334 = swift_slowAlloc();
                    v335 = swift_slowAlloc();
                    *&v473 = v335;
                    *v334 = 136446210;
                    *(v334 + 4) = sub_100141FE4(v329, v331, &v473);
                    _os_log_impl(&_mh_execute_header, v332, v333, "coreidvd: failure binding serviceName: %{public}s", v334, 0xCu);
                    sub_10000BB78(v335);
                  }

                  (*(v469 + 8))(v447, v468);
                  *&v473 = 0;
                  *(&v473 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(46);

                  *&v473 = 0xD00000000000002CLL;
                  *(&v473 + 1) = 0x800000010071F720;
                  v336._countAndFlagsBits = v329;
                  v336._object = v331;
                  String.append(_:)(v336);

                  v469 = v473;
                  (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
                  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                  v337 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                  v338 = *(*v337 + 72);
                  v339 = (*(*v337 + 80) + 32) & ~*(*v337 + 80);
                  v340 = swift_allocObject();
                  *(v340 + 16) = xmmword_1006BF520;
                  v341 = v340 + v339;
                  v342 = v341 + v337[14];
                  v343 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                  v344 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v344 - 8) + 104))(v341, v343, v344);
                  v345 = sqlite3_errcode(v441);
                  *(v342 + 24) = &type metadata for Int32;
                  *(v342 + 32) = &protocol witness table for Int32;
                  *v342 = v345;
                  sub_10003C9C0(v340);
                  swift_setDeallocating();
                  sub_10000BE18(v341, &qword_1008341D0, &unk_1006BF8D0);
                  swift_deallocClassInstance();
                  type metadata accessor for DIPError();
                  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
                  swift_allocError();
LABEL_78:
                  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                  swift_willThrow();
                  sub_10000B90C(v428, v429);
                  sub_10000B90C(v430, v431);
                  sub_10000B90C(v437, v432);
                  sub_10000B90C(v438, v439);
                  return sqlite3_finalize(ppStmt);
                }

                goto LABEL_130;
              }

              *&v473 = *(v467 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl);

              sub_100007224(&qword_100834EA0, &qword_1006C06B0);
              sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0);
              BidirectionalCollection<>.joined(separator:)();

              v346 = ppStmt;
              v347 = String.utf8CString.getter();
              LODWORD(v346) = sqlite3_bind_text(v346, 11, (v347 + 32), -1, v463);

              if (v346)
              {
                result = sqlite3_errmsg(v441);
                if (result)
                {

                  v348 = String.init(cString:)();
                  v350 = v349;
                  defaultLogger()();

                  v351 = Logger.logObject.getter();
                  v352 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v351, v352))
                  {
                    v353 = swift_slowAlloc();
                    v354 = swift_slowAlloc();
                    *&v473 = v354;
                    *v353 = 136446210;
                    *(v353 + 4) = sub_100141FE4(v348, v350, &v473);
                    _os_log_impl(&_mh_execute_header, v351, v352, "coreidvd: failure binding acl: %{public}s", v353, 0xCu);
                    sub_10000BB78(v354);
                  }

                  (*(v469 + 8))(v446, v468);
                  *&v473 = 0;
                  *(&v473 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(38);

                  *&v473 = 0xD000000000000024;
                  *(&v473 + 1) = 0x800000010071FCB0;
                  v355._countAndFlagsBits = v348;
                  v355._object = v350;
                  String.append(_:)(v355);

                  v469 = v473;
                  (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
                  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
                  v356 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
                  v357 = *(*v356 + 72);
                  v358 = (*(*v356 + 80) + 32) & ~*(*v356 + 80);
                  v359 = swift_allocObject();
                  *(v359 + 16) = xmmword_1006BF520;
                  v360 = v359 + v358;
                  v361 = v360 + v356[14];
                  v362 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
                  v363 = type metadata accessor for DIPError.PropertyKey();
                  (*(*(v363 - 8) + 104))(v360, v362, v363);
                  v364 = sqlite3_errcode(v441);
                  *(v361 + 24) = &type metadata for Int32;
                  *(v361 + 32) = &protocol witness table for Int32;
                  *v361 = v364;
                  sub_10003C9C0(v359);
                  swift_setDeallocating();
                  sub_10000BE18(v360, &qword_1008341D0, &unk_1006BF8D0);
                  swift_deallocClassInstance();
                  type metadata accessor for DIPError();
                  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
                  swift_allocError();
                  goto LABEL_78;
                }

                goto LABEL_131;
              }

              goto LABEL_103;
            }

            result = sqlite3_errmsg(v441);
            if (result)
            {

              v290 = String.init(cString:)();
              v292 = v291;
              defaultLogger()();

              v293 = Logger.logObject.getter();
              v294 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v293, v294))
              {
                v295 = swift_slowAlloc();
                v296 = swift_slowAlloc();
                *&v473 = v296;
                *v295 = 136446210;
                *(v295 + 4) = sub_100141FE4(v290, v292, &v473);
                _os_log_impl(&_mh_execute_header, v293, v294, "coreidvd: failure binding null deleteAfter: %{public}s", v295, 0xCu);
                sub_10000BB78(v296);
              }

              (*(v469 + 8))(v448, v468);
              *&v473 = 0;
              *(&v473 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(46);

              *&v473 = 0xD00000000000002CLL;
              *(&v473 + 1) = 0x800000010071FC80;
              v297._countAndFlagsBits = v290;
              v297._object = v292;
              String.append(_:)(v297);

              v469 = v473;
              (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
              sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
              v298 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
              v299 = *(*v298 + 72);
              v300 = (*(*v298 + 80) + 32) & ~*(*v298 + 80);
              v301 = swift_allocObject();
              *(v301 + 16) = xmmword_1006BF520;
              v302 = v301 + v300;
              v303 = v302 + v298[14];
              v304 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
              v305 = type metadata accessor for DIPError.PropertyKey();
              (*(*(v305 - 8) + 104))(v302, v304, v305);
              v306 = sqlite3_errcode(v441);
              *(v303 + 24) = &type metadata for Int32;
              *(v303 + 32) = &protocol witness table for Int32;
              *v303 = v306;
              sub_10003C9C0(v301);
              swift_setDeallocating();
              sub_10000BE18(v302, &qword_1008341D0, &unk_1006BF8D0);
              swift_deallocClassInstance();
              type metadata accessor for DIPError();
              sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
              swift_allocError();
              goto LABEL_78;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          result = sqlite3_errmsg(v441);
          if (result)
          {

            v272 = String.init(cString:)();
            v274 = v273;
            defaultLogger()();

            v275 = Logger.logObject.getter();
            v276 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v275, v276))
            {
              v277 = swift_slowAlloc();
              v278 = swift_slowAlloc();
              *&v473 = v278;
              *v277 = 136446210;
              *(v277 + 4) = sub_100141FE4(v272, v274, &v473);
              _os_log_impl(&_mh_execute_header, v275, v276, "coreidvd: failure binding update_date: %{public}s", v277, 0xCu);
              sub_10000BB78(v278);
            }

            (*(v469 + 8))(v454, v468);
            *&v473 = 0;
            *(&v473 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);

            *&v473 = 0xD00000000000002CLL;
            *(&v473 + 1) = 0x800000010071FC50;
            v279._countAndFlagsBits = v272;
            v279._object = v274;
            String.append(_:)(v279);

            v469 = v473;
            (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v280 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v281 = *(*v280 + 72);
            v282 = (*(*v280 + 80) + 32) & ~*(*v280 + 80);
            v283 = swift_allocObject();
            *(v283 + 16) = xmmword_1006BF520;
            v284 = v283 + v282;
            v285 = v284 + v280[14];
            v286 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v287 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v287 - 8) + 104))(v284, v286, v287);
            v288 = sqlite3_errcode(v441);
            *(v285 + 24) = &type metadata for Int32;
            *(v285 + 32) = &protocol witness table for Int32;
            *v285 = v288;
            sub_10003C9C0(v283);
            swift_setDeallocating();
            sub_10000BE18(v284, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_78;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        result = sqlite3_errmsg(v441);
        if (result)
        {

          v252 = String.init(cString:)();
          v254 = v253;
          defaultLogger()();

          v255 = Logger.logObject.getter();
          v256 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v255, v256))
          {
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            *&v473 = v258;
            *v257 = 136446210;
            *(v257 + 4) = sub_100141FE4(v252, v254, &v473);
            _os_log_impl(&_mh_execute_header, v255, v256, "coreidvd: failure binding idvVersion: %{public}s", v257, 0xCu);
            sub_10000BB78(v258);
          }

          (*(v469 + 8))(v457, v468);
          *&v473 = 0;
          *(&v473 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          *&v473 = 0xD00000000000002BLL;
          *(&v473 + 1) = 0x800000010071FC20;
          v259._countAndFlagsBits = v252;
          v259._object = v254;
          String.append(_:)(v259);

          v469 = v473;
          (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v260 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v261 = *(*v260 + 72);
          v262 = (*(*v260 + 80) + 32) & ~*(*v260 + 80);
          v263 = swift_allocObject();
          *(v263 + 16) = xmmword_1006BF520;
          v264 = v263 + v262;
          v265 = v264 + v260[14];
          v266 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v267 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v267 - 8) + 104))(v264, v266, v267);
          v268 = sqlite3_errcode(v441);
          *(v265 + 24) = &type metadata for Int32;
          *(v265 + 32) = &protocol witness table for Int32;
          *v265 = v268;
          sub_10003C9C0(v263);
          swift_setDeallocating();
          sub_10000BE18(v264, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_78;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    else
    {
      v473 = 0u;
      v474 = 0u;
    }

    sub_10000BE18(&v473, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_68;
  }

  if (sqlite3_errmsg(v441))
  {
    v82 = String.init(cString:)();
    v84 = v83;
    defaultLogger()();

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v482[0] = v88;
      *v87 = 136446210;
      *(v87 + 4) = sub_100141FE4(v82, v84, v482);
      _os_log_impl(&_mh_execute_header, v85, v86, "coreidvd: failure binding workflowid: %{public}s", v87, 0xCu);
      sub_10000BB78(v88);
    }

    (*(v469 + 8))(v57, v468);
    *&v482[0] = 0;
    *(&v482[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v482[0] = 0xD00000000000002BLL;
    *(&v482[0] + 1) = 0x800000010071FAE0;
    v89._countAndFlagsBits = v82;
    v89._object = v84;
    String.append(_:)(v89);

    v469 = *&v482[0];
    (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v90 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v91 = *(*v90 + 72);
    v92 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1006BF520;
    v94 = v93 + v92;
    v95 = v94 + v90[14];
    v96 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v97 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v97 - 8) + 104))(v94, v96, v97);
    v98 = sqlite3_errcode(v441);
    *(v95 + 24) = &type metadata for Int32;
    *(v95 + 32) = &protocol witness table for Int32;
    *v95 = v98;
    sub_10003C9C0(v93);
    swift_setDeallocating();
    sub_10000BE18(v94, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  __break(1u);
LABEL_103:
  v365 = ppStmt;
  v366 = v467[2];
  v367 = v467[3];
  v368 = String.utf8CString.getter();
  LODWORD(v365) = sqlite3_bind_text(v365, 12, (v368 + 32), -1, v463);

  if (v365)
  {
    result = sqlite3_errmsg(v441);
    if (result)
    {

      v369 = String.init(cString:)();
      v371 = v370;
      defaultLogger()();

      v372 = Logger.logObject.getter();
      v373 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v372, v373))
      {
        v374 = swift_slowAlloc();
        v375 = swift_slowAlloc();
        *&v473 = v375;
        *v374 = 136446210;
        *(v374 + 4) = sub_100141FE4(v369, v371, &v473);
        _os_log_impl(&_mh_execute_header, v372, v373, "coreidvd: failure binding providerid: %{public}s", v374, 0xCu);
        sub_10000BB78(v375);
      }

      (*(v469 + 8))(v445, v468);
      *&v473 = 0;
      *(&v473 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v473 = 0xD00000000000002BLL;
      *(&v473 + 1) = 0x800000010071F5A0;
      v376._countAndFlagsBits = v369;
      v376._object = v371;
      String.append(_:)(v376);

      v469 = v473;
      (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v377 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v378 = *(*v377 + 72);
      v379 = (*(*v377 + 80) + 32) & ~*(*v377 + 80);
      v380 = swift_allocObject();
      *(v380 + 16) = xmmword_1006BF520;
      v381 = v380 + v379;
      v382 = v381 + v377[14];
      v383 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v384 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v384 - 8) + 104))(v381, v383, v384);
      v385 = sqlite3_errcode(v441);
      *(v382 + 24) = &type metadata for Int32;
      *(v382 + 32) = &protocol witness table for Int32;
      *v382 = v385;
      sub_10003C9C0(v380);
      swift_setDeallocating();
      sub_10000BE18(v381, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_132;
  }

LABEL_109:
  v386 = ppStmt;
  v387 = v467[4];
  v388 = v467[5];
  v389 = String.utf8CString.getter();
  LODWORD(v386) = sqlite3_bind_text(v386, 13, (v389 + 32), -1, v463);

  if (v386)
  {
    result = sqlite3_errmsg(v441);
    if (result)
    {

      v390 = String.init(cString:)();
      v392 = v391;
      defaultLogger()();

      v393 = Logger.logObject.getter();
      v394 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v393, v394))
      {
        v395 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        *&v473 = v396;
        *v395 = 136446210;
        *(v395 + 4) = sub_100141FE4(v390, v392, &v473);
        _os_log_impl(&_mh_execute_header, v393, v394, "coreidvd: failure binding tier: %{public}s", v395, 0xCu);
        sub_10000BB78(v396);
      }

      (*(v469 + 8))(v443, v468);
      *&v473 = 0;
      *(&v473 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v473 = 0xD000000000000026;
      *(&v473 + 1) = 0x800000010071F5D0;
      v397._countAndFlagsBits = v390;
      v397._object = v392;
      String.append(_:)(v397);

      v469 = v473;
      (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v398 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v399 = *(*v398 + 72);
      v400 = (*(*v398 + 80) + 32) & ~*(*v398 + 80);
      v401 = swift_allocObject();
      *(v401 + 16) = xmmword_1006BF520;
      v402 = v401 + v400;
      v403 = v402 + v398[14];
      v404 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v405 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v405 - 8) + 104))(v402, v404, v405);
      v406 = sqlite3_errcode(v441);
      *(v403 + 24) = &type metadata for Int32;
      *(v403 + 32) = &protocol witness table for Int32;
      *v403 = v406;
      sub_10003C9C0(v401);
      swift_setDeallocating();
      sub_10000BE18(v402, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_133;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    result = sqlite3_errmsg(v441);
    if (result)
    {

      v410 = String.init(cString:)();
      v412 = v411;
      defaultLogger()();

      v413 = Logger.logObject.getter();
      v414 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v413, v414))
      {
        v415 = swift_slowAlloc();
        v416 = swift_slowAlloc();
        *&v473 = v416;
        *v415 = 136446210;
        *(v415 + 4) = sub_100141FE4(v410, v412, &v473);
        _os_log_impl(&_mh_execute_header, v413, v414, "coreidvd: failure updating claim: %{public}s", v415, 0xCu);
        sub_10000BB78(v416);
      }

      (*(v469 + 8))(v444, v468);
      *&v473 = 0;
      *(&v473 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      *&v473 = 0xD000000000000016;
      *(&v473 + 1) = 0x800000010071FCE0;
      v417._countAndFlagsBits = v410;
      v417._object = v412;
      String.append(_:)(v417);

      v469 = v473;
      (*(v471 + 104))(v472, enum case for DIPError.Code.sqliteError(_:), v470);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v418 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v419 = *(*v418 + 72);
      v420 = (*(*v418 + 80) + 32) & ~*(*v418 + 80);
      v421 = swift_allocObject();
      *(v421 + 16) = xmmword_1006BF520;
      v422 = v421 + v420;
      v423 = v422 + v418[14];
      v424 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v425 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v425 - 8) + 104))(v422, v424, v425);
      v426 = sqlite3_errcode(v441);
      *(v423 + 24) = &type metadata for Int32;
      *(v423 + 32) = &protocol witness table for Int32;
      *v423 = v426;
      sub_10003C9C0(v421);
      swift_setDeallocating();
      sub_10000BE18(v422, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_78;
    }

    goto LABEL_134;
  }

  defaultLogger()();
  v407 = Logger.logObject.getter();
  v408 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v407, v408))
  {
    v409 = swift_slowAlloc();
    *v409 = 0;
    _os_log_impl(&_mh_execute_header, v407, v408, "coreidvd: updated claim", v409, 2u);
  }

  sub_10000B90C(v428, v429);
  sub_10000B90C(v430, v431);
  sub_10000B90C(v437, v432);
  sub_10000B90C(v438, v439);

  (*(v469 + 8))(v442, v468);
  return sqlite3_finalize(ppStmt);
}

const char *sub_100567B58(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v113 = v4;
  v114 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v112 = &v112 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v112 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v112 - v16;
  __chkstk_darwin(v15);
  v19 = &v112 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v115 = *(v20 - 8);
  v116 = v20;
  v21 = *(v115 + 64);
  __chkstk_darwin(v20);
  v117 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v23 = *(a1 + 40);
  if (!v23)
  {
    sub_1005507F8();
    v23 = *(a1 + 40);
    if (!v23)
    {
      (*(v115 + 104))(v117, enum case for DIPError.Code.databaseInaccessible(_:), v116);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v24 = String.utf8CString.getter();
  v25 = sqlite3_prepare_v3(v23, (v24 + 32), -1, 0, &ppStmt, 0);

  v118 = v23;
  if (v25)
  {
    result = sqlite3_errmsg(v23);
    if (result)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v119 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_100141FE4(v27, v29, &v119);
        _os_log_impl(&_mh_execute_header, v30, v31, "coreidvd: failed to prepare delete claim statement %{public}s", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v114 + 8))(v19, v113);
      v119 = 0;
      v120 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v119 = 0xD000000000000028;
      v120 = 0x800000010071F570;
      v34._countAndFlagsBits = v27;
      v34._object = v29;
      String.append(_:)(v34);

      (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v36 = *(*v35 + 72);
      v37 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1006BF520;
      v39 = v38 + v37;
      v40 = v39 + v35[14];
      v41 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v42 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v42 - 8) + 104))(v39, v41, v42);
      v43 = sqlite3_errcode(v118);
      *(v40 + 24) = &type metadata for Int32;
      *(v40 + 32) = &protocol witness table for Int32;
      *v40 = v43;
      sub_10003C9C0(v38);
      swift_setDeallocating();
      sub_10000BE18(v39, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v44 = ppStmt;
  v46 = a2[2];
  v45 = a2[3];
  v47 = qword_100832CA0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = qword_1008823D0;
  v49 = String.utf8CString.getter();

  v50 = sqlite3_bind_text(v44, 1, (v49 + 32), -1, v48);

  if (v50)
  {
    result = sqlite3_errmsg(v118);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v51 = String.init(cString:)();
    v53 = v52;
    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119 = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_100141FE4(v51, v53, &v119);
      _os_log_impl(&_mh_execute_header, v54, v55, "coreidvd: failure binding providerid: %{public}s", v56, 0xCu);
      sub_10000BB78(v57);
    }

    (*(v114 + 8))(v17, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v119 = 0xD00000000000002BLL;
    v120 = 0x800000010071F5A0;
    v58._countAndFlagsBits = v51;
    v58._object = v53;
    String.append(_:)(v58);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v59 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v60 = *(*v59 + 72);
    v61 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1006BF520;
    v63 = v62 + v61;
    v64 = v63 + v59[14];
    v65 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v66 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v66 - 8) + 104))(v63, v65, v66);
    v67 = sqlite3_errcode(v118);
    *(v64 + 24) = &type metadata for Int32;
    *(v64 + 32) = &protocol witness table for Int32;
    *v64 = v67;
    sub_10003C9C0(v62);
    swift_setDeallocating();
    sub_10000BE18(v63, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v68 = ppStmt;
  v69 = a2[4];
  v70 = a2[5];
  v71 = String.utf8CString.getter();
  v72 = sqlite3_bind_text(v68, 2, (v71 + 32), -1, v48);

  if (v72)
  {
    result = sqlite3_errmsg(v118);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v73 = String.init(cString:)();
    v75 = v74;
    defaultLogger()();

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v119 = v79;
      *v78 = 136446210;
      *(v78 + 4) = sub_100141FE4(v73, v75, &v119);
      _os_log_impl(&_mh_execute_header, v76, v77, "coreidvd: failure binding tier: %{public}s", v78, 0xCu);
      sub_10000BB78(v79);
    }

    (*(v114 + 8))(v14, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v119 = 0xD000000000000026;
    v120 = 0x800000010071F5D0;
    v80._countAndFlagsBits = v73;
    v80._object = v75;
    String.append(_:)(v80);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v81 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v82 = *(*v81 + 72);
    v83 = (*(*v81 + 80) + 32) & ~*(*v81 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1006BF520;
    v85 = v84 + v83;
    v86 = v85 + v81[14];
    v87 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v88 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v88 - 8) + 104))(v85, v87, v88);
    v89 = sqlite3_errcode(v118);
    *(v86 + 24) = &type metadata for Int32;
    *(v86 + 32) = &protocol witness table for Int32;
    *v86 = v89;
    sub_10003C9C0(v84);
    swift_setDeallocating();
    sub_10000BE18(v85, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v90 = v118;
  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "coreidvd: deleted out of date claims", v93, 2u);
    }

    (*(v114 + 8))(v9, v113);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v90);
  if (result)
  {
    v94 = String.init(cString:)();
    v96 = v95;
    v97 = v112;
    defaultLogger()();

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v119 = v101;
      *v100 = 136446210;
      *(v100 + 4) = sub_100141FE4(v94, v96, &v119);
      _os_log_impl(&_mh_execute_header, v98, v99, "coreidvd: failure deleting claim: %{public}s", v100, 0xCu);
      sub_10000BB78(v101);
    }

    (*(v114 + 8))(v97, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v119 = 0xD000000000000022;
    v120 = 0x800000010071F600;
    v102._countAndFlagsBits = v94;
    v102._object = v96;
    String.append(_:)(v102);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v103 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v104 = *(*v103 + 72);
    v105 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1006BF520;
    v107 = v106 + v105;
    v108 = v107 + v103[14];
    v109 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v110 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v110 - 8) + 104))(v107, v109, v110);
    v111 = sqlite3_errcode(v118);
    *(v108 + 24) = &type metadata for Int32;
    *(v108 + 32) = &protocol witness table for Int32;
    *v108 = v111;
    sub_10003C9C0(v106);
    swift_setDeallocating();
    sub_10000BE18(v107, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_100568DE8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v85 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v84 - v16;
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = *(v89 + 64);
  __chkstk_darwin(v20);
  v91 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v23 = *(a1 + 40);
  if (!v23)
  {
    sub_1005507F8();
    v23 = *(a1 + 40);
    if (!v23)
    {
      (*(v89 + 104))(v91, enum case for DIPError.Code.databaseInaccessible(_:), v90);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_14:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v24 = String.utf8CString.getter();
  v25 = sqlite3_prepare_v3(v23, (v24 + 32), -1, 0, &ppStmt, 0);

  v88 = v23;
  if (v25)
  {
    result = sqlite3_errmsg(v23);
    if (result)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v92 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_100141FE4(v27, v29, &v92);
        _os_log_impl(&_mh_execute_header, v30, v31, "coreidvd: failed to prepare delete statement %{public}s", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v87 + 8))(v19, v86);
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v92 = 0xD000000000000029;
      v93 = 0x8000000100721C60;
      v34._countAndFlagsBits = v27;
      v34._object = v29;
      String.append(_:)(v34);

      (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v36 = *(*v35 + 72);
      v37 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1006BF520;
      v39 = v38 + v37;
      v40 = v39 + v35[14];
      v41 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v42 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v42 - 8) + 104))(v39, v41, v42);
      v43 = sqlite3_errcode(v88);
      *(v40 + 24) = &type metadata for Int32;
      *(v40 + 32) = &protocol witness table for Int32;
      *v40 = v43;
      sub_10003C9C0(v38);
      swift_setDeallocating();
      sub_10000BE18(v39, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_25;
  }

  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v45 = v44;
  (*(v3 + 8))(v6, v2);
  if (sqlite3_bind_double(ppStmt, 1, v45))
  {
    result = sqlite3_errmsg(v88);
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v46 = String.init(cString:)();
    v48 = v47;
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v92 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100141FE4(v46, v48, &v92);
      _os_log_impl(&_mh_execute_header, v49, v50, "coreidvd: failure binding date: %{public}s", v51, 0xCu);
      sub_10000BB78(v52);
    }

    (*(v87 + 8))(v17, v86);
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v92 = 0xD000000000000025;
    v93 = 0x800000010071FF60;
    v53._countAndFlagsBits = v46;
    v53._object = v48;
    String.append(_:)(v53);

    (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v54 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006BF520;
    v58 = v57 + v56;
    v59 = v58 + v54[14];
    v60 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v61 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v61 - 8) + 104))(v58, v60, v61);
    v62 = sqlite3_errcode(v88);
    *(v59 + 24) = &type metadata for Int32;
    *(v59 + 32) = &protocol witness table for Int32;
    *v59 = v62;
    sub_10003C9C0(v57);
    swift_setDeallocating();
    sub_10000BE18(v58, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    result = sqlite3_errmsg(v88);
    if (!result)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v66 = String.init(cString:)();
    v68 = v67;
    v69 = v85;
    defaultLogger()();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v92 = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_100141FE4(v66, v68, &v92);
      _os_log_impl(&_mh_execute_header, v70, v71, "coreidvd: failure deleting claim: %{public}s", v72, 0xCu);
      sub_10000BB78(v73);
    }

    (*(v87 + 8))(v69, v86);
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v92 = 0xD000000000000022;
    v93 = 0x800000010071F600;
    v74._countAndFlagsBits = v66;
    v74._object = v68;
    String.append(_:)(v74);

    (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v75 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v76 = *(*v75 + 72);
    v77 = (*(*v75 + 80) + 32) & ~*(*v75 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1006BF520;
    v79 = v78 + v77;
    v80 = v79 + v75[14];
    v81 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v82 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v82 - 8) + 104))(v79, v81, v82);
    v83 = sqlite3_errcode(v88);
    *(v80 + 24) = &type metadata for Int32;
    *(v80 + 32) = &protocol witness table for Int32;
    *v80 = v83;
    sub_10003C9C0(v78);
    swift_setDeallocating();
    sub_10000BE18(v79, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "coreidvd: deleted out of date claims", v65, 2u);
  }

  (*(v87 + 8))(v12, v86);
  return sqlite3_finalize(ppStmt);
}

const char *sub_100569D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v112._countAndFlagsBits = a4;
  v112._object = a5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v110 = &v109 - v13;
  v14 = __chkstk_darwin(v12);
  v111 = &v109 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - v17;
  __chkstk_darwin(v16);
  v20 = &v109 - v19;
  v21 = type metadata accessor for DIPError.Code();
  v115 = *(v21 - 8);
  v116 = v21;
  v22 = *(v115 + 64);
  __chkstk_darwin(v21);
  v117 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v24 = *(a1 + 40);
  if (!v24)
  {
    sub_1005507F8();
    v24 = *(a1 + 40);
    if (!v24)
    {
      (*(v115 + 104))(v117, enum case for DIPError.Code.databaseInaccessible(_:), v116);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v25 = String.utf8CString.getter();
  v26 = sqlite3_prepare_v3(v24, (v25 + 32), -1, 0, &ppStmt, 0);

  v118 = v24;
  if (v26)
  {
    result = sqlite3_errmsg(v24);
    if (result)
    {
      v28 = String.init(cString:)();
      v30 = v29;
      defaultLogger()();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v119 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_100141FE4(v28, v30, &v119);
        _os_log_impl(&_mh_execute_header, v31, v32, "coreidvd: failed to prepare delete sp claims statement %{public}s", v33, 0xCu);
        sub_10000BB78(v34);
      }

      (*(v114 + 8))(v20, v113);
      v119 = 0;
      v120 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v119 = 0xD00000000000002CLL;
      v120 = 0x800000010071F6F0;
      v35._countAndFlagsBits = v28;
      v35._object = v30;
      String.append(_:)(v35);

      (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v36 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v37 = *(*v36 + 72);
      v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1006BF520;
      v40 = v39 + v38;
      v41 = v40 + v36[14];
      v42 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v43 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v43 - 8) + 104))(v40, v42, v43);
      v44 = sqlite3_errcode(v118);
      *(v41 + 24) = &type metadata for Int32;
      *(v41 + 32) = &protocol witness table for Int32;
      *v41 = v44;
      sub_10003C9C0(v39);
      swift_setDeallocating();
      sub_10000BE18(v40, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_33;
  }

  v45 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v46 = qword_1008823D0;
  v47 = String.utf8CString.getter();
  v48 = sqlite3_bind_text(v45, 1, (v47 + 32), -1, v46);

  if (v48)
  {
    result = sqlite3_errmsg(v118);
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v49 = String.init(cString:)();
    v51 = v50;
    defaultLogger()();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v119 = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_100141FE4(v49, v51, &v119);
      _os_log_impl(&_mh_execute_header, v52, v53, "coreidvd: failure binding serviceName: %{public}s", v54, 0xCu);
      sub_10000BB78(v55);
    }

    (*(v114 + 8))(v18, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v119 = 0xD00000000000002CLL;
    v120 = 0x800000010071F720;
    v56._countAndFlagsBits = v49;
    v56._object = v51;
    String.append(_:)(v56);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v57 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v58 = *(*v57 + 72);
    v59 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1006BF520;
    v61 = v60 + v59;
    v62 = v61 + v57[14];
    v63 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v64 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v64 - 8) + 104))(v61, v63, v64);
    v65 = sqlite3_errcode(v118);
    *(v62 + 24) = &type metadata for Int32;
    *(v62 + 32) = &protocol witness table for Int32;
    *v62 = v65;
    sub_10003C9C0(v60);
    swift_setDeallocating();
    sub_10000BE18(v61, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  v66 = ppStmt;
  v119 = 37;
  v120 = 0xE100000000000000;
  String.append(_:)(v112);

  v67._countAndFlagsBits = 37;
  v67._object = 0xE100000000000000;
  String.append(_:)(v67);

  v68 = String.utf8CString.getter();

  LODWORD(v66) = sqlite3_bind_text(v66, 2, (v68 + 32), -1, v46);

  if (v66)
  {
    result = sqlite3_errmsg(v118);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v69 = String.init(cString:)();
    v71 = v70;
    v72 = v111;
    defaultLogger()();

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v119 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_100141FE4(v69, v71, &v119);
      _os_log_impl(&_mh_execute_header, v73, v74, "coreidvd: failure binding applicationIdentifier: %{public}s", v75, 0xCu);
      sub_10000BB78(v76);
    }

    (*(v114 + 8))(v72, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v77._countAndFlagsBits = 0xD000000000000036;
    v77._object = 0x800000010071F750;
    String.append(_:)(v77);
    v78._countAndFlagsBits = v69;
    v78._object = v71;
    String.append(_:)(v78);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v79 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v80 = *(*v79 + 72);
    v81 = (*(*v79 + 80) + 32) & ~*(*v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1006BF520;
    v83 = v82 + v81;
    v84 = v83 + v79[14];
    v85 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v86 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v86 - 8) + 104))(v83, v85, v86);
    v87 = sqlite3_errcode(v118);
    *(v84 + 24) = &type metadata for Int32;
    *(v84 + 32) = &protocol witness table for Int32;
    *v84 = v87;
    sub_10003C9C0(v82);
    swift_setDeallocating();
    sub_10000BE18(v83, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_30;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "coreidvd: deleted claims", v90, 2u);
    }

    (*(v114 + 8))(v11, v113);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v118);
  if (result)
  {
    v91 = String.init(cString:)();
    v93 = v92;
    v94 = v110;
    defaultLogger()();

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v119 = v98;
      *v97 = 136446210;
      *(v97 + 4) = sub_100141FE4(v91, v93, &v119);
      _os_log_impl(&_mh_execute_header, v95, v96, "coreidvd: failure deleting sp claims: %{public}s", v97, 0xCu);
      sub_10000BB78(v98);
    }

    (*(v114 + 8))(v94, v113);
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v119 = 0xD000000000000022;
    v120 = 0x800000010071F600;
    v99._countAndFlagsBits = v91;
    v99._object = v93;
    String.append(_:)(v99);

    (*(v115 + 104))(v117, enum case for DIPError.Code.sqliteError(_:), v116);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v100 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v101 = *(*v100 + 72);
    v102 = (*(*v100 + 80) + 32) & ~*(*v100 + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1006BF520;
    v104 = v103 + v102;
    v105 = v104 + v100[14];
    v106 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v107 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v107 - 8) + 104))(v104, v106, v107);
    v108 = sqlite3_errcode(v118);
    *(v105 + 24) = &type metadata for Int32;
    *(v105 + 32) = &protocol witness table for Int32;
    *v105 = v108;
    sub_10003C9C0(v103);
    swift_setDeallocating();
    sub_10000BE18(v104, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_30:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_35:
  __break(1u);
  return result;
}

const char *sub_10056B014(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v86 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v85 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v85 - v15;
  __chkstk_darwin(v14);
  v18 = &v85 - v17;
  v19 = type metadata accessor for DIPError.Code();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  __chkstk_darwin(v19);
  v91 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v22 = *(a1 + 40);
  if (!v22)
  {
    sub_1005507F8();
    v22 = *(a1 + 40);
    if (!v22)
    {
      (*(v89 + 104))(v91, enum case for DIPError.Code.databaseInaccessible(_:), v90);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v23 = String.utf8CString.getter();
  v24 = sqlite3_prepare_v3(v22, (v23 + 32), -1, 0, &ppStmt, 0);

  if (v24)
  {
    result = sqlite3_errmsg(v22);
    if (result)
    {
      v26 = String.init(cString:)();
      v28 = v27;
      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v92 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_100141FE4(v26, v28, &v92);
        _os_log_impl(&_mh_execute_header, v29, v30, "coreidvd: failed to prepare delete sp claims statement %{public}s", v31, 0xCu);
        sub_10000BB78(v32);
      }

      (*(v88 + 8))(v18, v87);
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v92 = 0xD00000000000002CLL;
      v93 = 0x800000010071F6F0;
      v33._countAndFlagsBits = v26;
      v33._object = v28;
      String.append(_:)(v33);

      v88 = v92;
      (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v34 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v35 = *(*v34 + 72);
      v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1006BF520;
      v38 = v37 + v36;
      v39 = v38 + v34[14];
      v40 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v41 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v41 - 8) + 104))(v38, v40, v41);
      v42 = sqlite3_errcode(v22);
      *(v39 + 24) = &type metadata for Int32;
      *(v39 + 32) = &protocol witness table for Int32;
      *v39 = v42;
      sub_10003C9C0(v37);
      swift_setDeallocating();
      sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v43 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v44 = qword_1008823D0;
  v45 = String.utf8CString.getter();
  v46 = sqlite3_bind_text(v43, 1, (v45 + 32), -1, v44);

  if (v46)
  {
    result = sqlite3_errmsg(v22);
    if (!result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v47 = String.init(cString:)();
    v49 = v48;
    defaultLogger()();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v92 = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_100141FE4(v47, v49, &v92);
      _os_log_impl(&_mh_execute_header, v50, v51, "coreidvd: failure binding serviceName: %{public}s", v52, 0xCu);
      sub_10000BB78(v53);
    }

    (*(v88 + 8))(v16, v87);
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v92 = 0xD00000000000002CLL;
    v93 = 0x800000010071F720;
    v54._countAndFlagsBits = v47;
    v54._object = v49;
    String.append(_:)(v54);

    v88 = v92;
    (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v55 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v56 = *(*v55 + 72);
    v57 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1006BF520;
    v59 = v58 + v57;
    v60 = v59 + v55[14];
    v61 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v62 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v62 - 8) + 104))(v59, v61, v62);
    v63 = sqlite3_errcode(v22);
    *(v60 + 24) = &type metadata for Int32;
    *(v60 + 32) = &protocol witness table for Int32;
    *v60 = v63;
    sub_10003C9C0(v58);
    swift_setDeallocating();
    sub_10000BE18(v59, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_25;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v92 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100141FE4(v86, a3, &v92);
      _os_log_impl(&_mh_execute_header, v64, v65, "coreidvd: deleted claims for service provider %s", v66, 0xCu);
      sub_10000BB78(v67);
    }

    (*(v88 + 8))(v10, v87);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v22);
  if (result)
  {
    v68 = String.init(cString:)();
    v70 = v69;
    defaultLogger()();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v92 = v74;
      *v73 = 136446210;
      *(v73 + 4) = sub_100141FE4(v68, v70, &v92);
      _os_log_impl(&_mh_execute_header, v71, v72, "coreidvd: failure deleting sp claims: %{public}s", v73, 0xCu);
      sub_10000BB78(v74);
    }

    (*(v88 + 8))(v13, v87);
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v92 = 0xD000000000000022;
    v93 = 0x800000010071F600;
    v75._countAndFlagsBits = v68;
    v75._object = v70;
    String.append(_:)(v75);

    v88 = v92;
    (*(v89 + 104))(v91, enum case for DIPError.Code.sqliteError(_:), v90);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v76 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v77 = *(*v76 + 72);
    v78 = (*(*v76 + 80) + 32) & ~*(*v76 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1006BF520;
    v80 = v79 + v78;
    v81 = v80 + v76[14];
    v82 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v83 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v83 - 8) + 104))(v80, v82, v83);
    v84 = sqlite3_errcode(v22);
    *(v81 + 24) = &type metadata for Int32;
    *(v81 + 32) = &protocol witness table for Int32;
    *v81 = v84;
    sub_10003C9C0(v79);
    swift_setDeallocating();
    sub_10000BE18(v80, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_10056BF5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError();
  v184 = *(v4 - 8);
  v5 = *(v184 + 64);
  __chkstk_darwin(v4);
  v183 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for DIPError.Code();
  v7 = *(v189 - 8);
  v8 = v7[8];
  __chkstk_darwin(v189);
  v190 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v173 - v18;
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v173 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v173 - v26;
  v28 = __chkstk_darwin(v25);
  v35 = &v173 - v34;
  if (!*(a1 + 64))
  {
    return;
  }

  v181 = v30;
  v180 = v29;
  v179 = v19;
  v177 = v33;
  v178 = v32;
  v182 = v2;
  v185 = v7;
  v186 = v28;
  v187 = v4;
  v188 = v31;
  v36 = *(a1 + 56);
  v37 = *(a1 + 48);

  v38 = String._bridgeToObjectiveC()();
  v193[0] = 0;
  v39 = [v37 attributesOfItemAtPath:v38 error:v193];

  if (!v39)
  {
    v67 = v193[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v68 = v185[13];
    v188 = 0x800000010071F430;
    v186 = 0x80000001007219D0;
    v68(v190, enum case for DIPError.Code.sqliteError(_:), v189);
    goto LABEL_30;
  }

  v40 = v193[0];
  if ([v39 fileSize] >= 0x1900001)
  {
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v176 = v39;
    if (v43)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Db getting too large. Attempting cleanup of old data", v44, 2u);
      v39 = v176;
    }

    v45 = *(v188 + 8);
    v188 += 8;
    v45(v35, v186);
    ppStmt = 0;
    swift_beginAccess();
    v46 = *(a1 + 40);
    if (v46 || (sub_1005507F8(), (v46 = *(a1 + 40)) != 0))
    {
      v175 = v45;
      v47 = String.utf8CString.getter();
      v48 = sqlite3_prepare_v3(v46, (v47 + 32), -1, 0, &ppStmt, 0);

      v174 = v46;
      if (v48)
      {
        if (sqlite3_errmsg(v46))
        {

          v49 = String.init(cString:)();
          v51 = v50;
          defaultLogger()();

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v191 = v55;
            *v54 = 136446210;
            *(v54 + 4) = sub_100141FE4(v49, v51, &v191);
            _os_log_impl(&_mh_execute_header, v52, v53, "failed to prepare delete old signalmap statement %{public}s", v54, 0xCu);
            sub_10000BB78(v55);
          }

          v175(v27, v186);
          v191 = 0;
          v192 = 0xE000000000000000;
          _StringGuts.grow(_:)(50);

          v191 = 0xD000000000000030;
          v192 = 0x8000000100721A60;
          v56._countAndFlagsBits = v49;
          v56._object = v51;
          String.append(_:)(v56);

          v57 = v185[13];
          v184 = (v185 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v185 = v57;
          (v57)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v58 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v59 = *(*v58 + 72);
          v60 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1006BF520;
          v62 = v61 + v60;
          v63 = v62 + v58[14];
          v64 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v65 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v65 - 8) + 104))(v62, v64, v65);
          v66 = sqlite3_errcode(v174);
          *(v63 + 24) = &type metadata for Int32;
          *(v63 + 32) = &protocol witness table for Int32;
          *v63 = v66;
          sub_10003C9C0(v61);
          swift_setDeallocating();
          sub_10000BE18(v62, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (sqlite3_step(ppStmt) != 101)
      {
        if (sqlite3_errmsg(v46))
        {

          v94 = String.init(cString:)();
          v96 = v95;
          defaultLogger()();

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v191 = v100;
            *v99 = 136446210;
            *(v99 + 4) = sub_100141FE4(v94, v96, &v191);
            _os_log_impl(&_mh_execute_header, v97, v98, "failure deleting old signalmap: %{public}s", v99, 0xCu);
            sub_10000BB78(v100);
          }

          v175(v24, v186);
          v191 = 0;
          v192 = 0xE000000000000000;
          _StringGuts.grow(_:)(36);

          v191 = 0xD000000000000022;
          v192 = 0x800000010071F600;
          v101._countAndFlagsBits = v94;
          v101._object = v96;
          String.append(_:)(v101);

          v102 = v185[13];
          v184 = (v185 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v185 = v102;
          (v102)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v103 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v104 = *(*v103 + 72);
          v105 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1006BF520;
          v107 = v106 + v105;
          v108 = v107 + v103[14];
          v109 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v110 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v110 - 8) + 104))(v107, v109, v110);
          v111 = sqlite3_errcode(v174);
          *(v108 + 24) = &type metadata for Int32;
          *(v108 + 32) = &protocol witness table for Int32;
          *v108 = v111;
          sub_10003C9C0(v106);
          swift_setDeallocating();
          sub_10000BE18(v107, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      sqlite3_finalize(ppStmt);
      ppStmt = 0;
      v72 = String.utf8CString.getter();
      v73 = sqlite3_prepare_v3(v46, (v72 + 32), -1, 0, &ppStmt, 0);

      if (v73)
      {
        if (sqlite3_errmsg(v46))
        {

          v74 = String.init(cString:)();
          v76 = v75;
          v77 = v181;
          defaultLogger()();

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v191 = v81;
            *v80 = 136446210;
            *(v80 + 4) = sub_100141FE4(v74, v76, &v191);
            _os_log_impl(&_mh_execute_header, v78, v79, "failed to prepare delete old signallabel statement %{public}s", v80, 0xCu);
            sub_10000BB78(v81);
          }

          v175(v77, v186);
          v191 = 0;
          v192 = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v82._countAndFlagsBits = 0xD000000000000032;
          v82._object = 0x8000000100721B30;
          String.append(_:)(v82);
          v83._countAndFlagsBits = v74;
          v83._object = v76;
          String.append(_:)(v83);

          v84 = v185[13];
          v184 = (v185 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v185 = v84;
          (v84)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v85 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v86 = *(*v85 + 72);
          v87 = (*(*v85 + 80) + 32) & ~*(*v85 + 80);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_1006BF520;
          v89 = v88 + v87;
          v90 = v89 + v85[14];
          v91 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v92 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v92 - 8) + 104))(v89, v91, v92);
          v93 = sqlite3_errcode(v174);
          *(v90 + 24) = &type metadata for Int32;
          *(v90 + 32) = &protocol witness table for Int32;
          *v90 = v93;
          sub_10003C9C0(v88);
          swift_setDeallocating();
          sub_10000BE18(v89, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_27;
        }

        goto LABEL_53;
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        sqlite3_finalize(ppStmt);
        ppStmt = 0;
        v122 = String.utf8CString.getter();
        v123 = sqlite3_prepare_v3(v46, (v122 + 32), -1, 0, &ppStmt, 0);

        v124 = v185;
        if (v123)
        {
          if (sqlite3_errmsg(v46))
          {

            v125 = String.init(cString:)();
            v127 = v126;
            v128 = v179;
            defaultLogger()();

            v129 = Logger.logObject.getter();
            v130 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v191 = v132;
              *v131 = 136446210;
              *(v131 + 4) = sub_100141FE4(v125, v127, &v191);
              _os_log_impl(&_mh_execute_header, v129, v130, "failed to prepare delete old signallabel statement %{public}s", v131, 0xCu);
              sub_10000BB78(v132);
            }

            v175(v128, v186);
            v191 = 0;
            v192 = 0xE000000000000000;
            _StringGuts.grow(_:)(52);
            v133._countAndFlagsBits = 0xD000000000000032;
            v133._object = 0x8000000100721B30;
            String.append(_:)(v133);
            v134._countAndFlagsBits = v125;
            v134._object = v127;
            String.append(_:)(v134);

            v135 = v185[13];
            v184 = (v185 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
            v185 = v135;
            (v135)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v136 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v137 = *(*v136 + 72);
            v138 = (*(*v136 + 80) + 32) & ~*(*v136 + 80);
            v139 = swift_allocObject();
            *(v139 + 16) = xmmword_1006BF520;
            v140 = v139 + v138;
            v141 = v140 + v136[14];
            v142 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v143 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v143 - 8) + 104))(v140, v142, v143);
            v144 = sqlite3_errcode(v174);
            *(v141 + 24) = &type metadata for Int32;
            *(v141 + 32) = &protocol witness table for Int32;
            *v141 = v144;
            sub_10003C9C0(v139);
            swift_setDeallocating();
            sub_10000BE18(v140, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_27;
          }

          goto LABEL_55;
        }

        if (sqlite3_step(ppStmt) == 101)
        {

          sqlite3_finalize(ppStmt);
          ppStmt = 0;
          (v124[13])(v190, enum case for DIPError.Code.dbLimitReachedAndCleared(_:), v189);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v164 = v183;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
          v165 = v187;
          swift_allocError();
          v166 = v184;
          (*(v184 + 16))(v167, v164, v165);
          v168 = v177;
          defaultLogger()();
          DIPRecordError(_:message:log:)();
          v175(v168, v186);
          (*(v166 + 8))(v164, v165);

          if (ppStmt)
          {
            sqlite3_finalize(ppStmt);
          }

          return;
        }

        if (!sqlite3_errmsg(v46))
        {
LABEL_56:
          __break(1u);
          return;
        }

        v145 = String.init(cString:)();
        v147 = v169;
        v148 = v178;
        defaultLogger()();

        v149 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v149, v170))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v191 = v172;
          *v171 = 136446210;
          *(v171 + 4) = sub_100141FE4(v145, v147, &v191);
          _os_log_impl(&_mh_execute_header, v149, v170, "failure deleting old signallabel: %{public}s", v171, 0xCu);
          sub_10000BB78(v172);
        }
      }

      else
      {
        if (!sqlite3_errmsg(v46))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v145 = String.init(cString:)();
        v147 = v146;
        v148 = v180;
        defaultLogger()();

        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v191 = v152;
          *v151 = 136446210;
          *(v151 + 4) = sub_100141FE4(v145, v147, &v191);
          _os_log_impl(&_mh_execute_header, v149, v150, "failure deleting old signallabel: %{public}s", v151, 0xCu);
          sub_10000BB78(v152);
        }
      }

      v175(v148, v186);
      v191 = 0;
      v192 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v191 = 0xD000000000000022;
      v192 = 0x800000010071F600;
      v153._countAndFlagsBits = v145;
      v153._object = v147;
      String.append(_:)(v153);

      v154 = v185[13];
      v184 = (v185 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v185 = v154;
      (v154)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v155 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v156 = *(*v155 + 72);
      v157 = (*(*v155 + 80) + 32) & ~*(*v155 + 80);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_1006BF520;
      v159 = v158 + v157;
      v160 = v159 + v155[14];
      v161 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v162 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v162 - 8) + 104))(v159, v161, v162);
      v163 = sqlite3_errcode(v174);
      *(v160 + 24) = &type metadata for Int32;
      *(v160 + 32) = &protocol witness table for Int32;
      *v160 = v163;
      sub_10003C9C0(v158);
      swift_setDeallocating();
      sub_10000BE18(v159, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_27:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
      }

      v188 = 0x800000010071F430;
      v186 = 0x80000001007219D0;
      (v185)(v190, enum case for DIPError.Code.sqliteError(_:), v189);
      goto LABEL_30;
    }

    v121 = v185[13];
    v121(v190, enum case for DIPError.Code.databaseInaccessible(_:), v189);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v186 = 0x80000001007219D0;
    v188 = 0x800000010071F430;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v121(v190, enum case for DIPError.Code.sqliteError(_:), v189);
LABEL_30:
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v112 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v113 = *(*v112 + 72);
    v114 = (*(*v112 + 80) + 32) & ~*(*v112 + 80);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1006BF520;
    v116 = v115 + v114;
    v117 = (v116 + v112[14]);
    v118 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v119 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v119 - 8) + 104))(v116, v118, v119);
    swift_getErrorValue();
    v120 = dispatch thunk of Error._code.getter();
    v117[3] = &type metadata for Int;
    v117[4] = &protocol witness table for Int;
    *v117 = v120;
    sub_10003C9C0(v115);
    swift_setDeallocating();
    sub_10000BE18(v116, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  defaultLogger()();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "File is still less than max", v71, 2u);
  }

  (*(v188 + 8))(v14, v186);
}

uint64_t sub_10056E060(uint64_t a1, void *a2)
{
  v469 = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v459 = &v452 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v470 = v6;
  v471 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v453 = &v452 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v454 = &v452 - v12;
  v13 = __chkstk_darwin(v11);
  v455 = &v452 - v14;
  v15 = __chkstk_darwin(v13);
  v456 = &v452 - v16;
  v17 = __chkstk_darwin(v15);
  v457 = &v452 - v18;
  v19 = __chkstk_darwin(v17);
  v458 = &v452 - v20;
  v21 = __chkstk_darwin(v19);
  v461 = &v452 - v22;
  v23 = __chkstk_darwin(v21);
  v460 = &v452 - v24;
  v25 = __chkstk_darwin(v23);
  v463 = &v452 - v26;
  v27 = __chkstk_darwin(v25);
  v464 = &v452 - v28;
  v29 = __chkstk_darwin(v27);
  v465 = &v452 - v30;
  v31 = __chkstk_darwin(v29);
  v466 = &v452 - v32;
  v33 = __chkstk_darwin(v31);
  v467 = &v452 - v34;
  v35 = __chkstk_darwin(v33);
  v468 = &v452 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v452 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v452 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v452 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v452 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v452 - v50;
  __chkstk_darwin(v49);
  v53 = &v452 - v52;
  v54 = type metadata accessor for DIPError.Code();
  v55 = *(v54 - 8);
  v472 = v54;
  v473 = v55;
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  v474 = &v452 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v58 = *(a1 + 40);
  if (!v58)
  {
    sub_1005507F8();
    v58 = *(a1 + 40);
    if (!v58)
    {
      (*(v473 + 104))(v474, enum case for DIPError.Code.databaseInaccessible(_:), v472);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v59 = String.utf8CString.getter();
  v60 = sqlite3_prepare_v3(v58, (v59 + 32), -1, 0, &ppStmt, 0);

  v475 = v58;
  if (v60)
  {
    if (sqlite3_errmsg(v58))
    {
      v61 = String.init(cString:)();
      v63 = v62;
      defaultLogger()();

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v476 = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_100141FE4(v61, v63, &v476);
        _os_log_impl(&_mh_execute_header, v64, v65, "coreidvd: failed to prepare insert statement %{public}s", v66, 0xCu);
        sub_10000BB78(v67);
      }

      (*(v471 + 8))(v53, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v68._countAndFlagsBits = 0xD00000000000003BLL;
      v68._object = 0x8000000100720480;
      String.append(_:)(v68);
      v69._countAndFlagsBits = v61;
      v69._object = v63;
      String.append(_:)(v69);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v70 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v71 = *(*v70 + 72);
      v72 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1006BF520;
      v74 = v73 + v72;
      v75 = v74 + v70[14];
      v76 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v77 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v77 - 8) + 104))(v74, v76, v77);
      v78 = sqlite3_errcode(v475);
      *(v75 + 24) = &type metadata for Int32;
      *(v75 + 32) = &protocol witness table for Int32;
      *v75 = v78;
      sub_10003C9C0(v73);
      swift_setDeallocating();
      sub_10000BE18(v74, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_116;
  }

  v79 = ppStmt;
  v80 = v469;
  v81 = *v469;
  v82 = v469[1];
  if (qword_100832CA0 != -1)
  {
    v263 = *v469;
    v264 = v469[1];
    swift_once();
  }

  v83 = qword_1008823D0;
  v84 = String.utf8CString.getter();
  v85 = sqlite3_bind_text(v79, 1, (v84 + 32), -1, v83);

  if (v85)
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v87 = String.init(cString:)();
      v89 = v88;
      defaultLogger()();

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v476 = v93;
        *v92 = 136315138;
        *(v92 + 4) = sub_100141FE4(v87, v89, &v476);
        _os_log_impl(&_mh_execute_header, v90, v91, "coreidvd: failure binding workflowID: %s", v92, 0xCu);
        sub_10000BB78(v93);
      }

      (*(v471 + 8))(v51, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v476 = 0xD00000000000002BLL;
      v477 = 0x80000001007202D0;
      v94._countAndFlagsBits = v87;
      v94._object = v89;
      String.append(_:)(v94);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v95 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v96 = *(*v95 + 72);
      v97 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1006BF520;
      v99 = v98 + v97;
      v100 = v99 + v95[14];
      v101 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v102 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v102 - 8) + 104))(v99, v101, v102);
      v103 = sqlite3_errcode(v475);
      *(v100 + 24) = &type metadata for Int32;
      *(v100 + 32) = &protocol witness table for Int32;
      *v100 = v103;
      sub_10003C9C0(v98);
      swift_setDeallocating();
      sub_10000BE18(v99, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_121;
  }

  v104 = type metadata accessor for DIPPregeneratedAssessment(0);
  v105 = v80 + v104[5];
  Date.timeIntervalSinceReferenceDate.getter();
  if (sqlite3_bind_double(ppStmt, 2, v106))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v107 = String.init(cString:)();
      v109 = v108;
      defaultLogger()();

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v476 = v113;
        *v112 = 136446210;
        *(v112 + 4) = sub_100141FE4(v107, v109, &v476);
        _os_log_impl(&_mh_execute_header, v110, v111, "coreidvd: failure binding createdAt: %{public}s", v112, 0xCu);
        sub_10000BB78(v113);
      }

      (*(v471 + 8))(v48, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v476 = 0xD00000000000002ALL;
      v477 = 0x80000001007204C0;
      v114._countAndFlagsBits = v107;
      v114._object = v109;
      String.append(_:)(v114);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v115 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v116 = *(*v115 + 72);
      v117 = (*(*v115 + 80) + 32) & ~*(*v115 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1006BF520;
      v119 = v118 + v117;
      v120 = v119 + v115[14];
      v121 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v122 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v122 - 8) + 104))(v119, v121, v122);
      v123 = sqlite3_errcode(v475);
      *(v120 + 24) = &type metadata for Int32;
      *(v120 + 32) = &protocol witness table for Int32;
      *v120 = v123;
      sub_10003C9C0(v118);
      swift_setDeallocating();
      sub_10000BE18(v119, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v124 = ppStmt;
  v125 = (v80 + v104[6]);
  v126 = *v125;
  v127 = v125[1];
  v128 = String.utf8CString.getter();
  LODWORD(v124) = sqlite3_bind_text(v124, 3, (v128 + 32), -1, v83);

  if (v124)
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v129 = String.init(cString:)();
      v131 = v130;
      defaultLogger()();

      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v476 = v135;
        *v134 = 136446210;
        *(v134 + 4) = sub_100141FE4(v129, v131, &v476);
        _os_log_impl(&_mh_execute_header, v132, v133, "coreidvd: failure binding assessment: %{public}s", v134, 0xCu);
        sub_10000BB78(v135);
      }

      (*(v471 + 8))(v45, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v476 = 0xD00000000000002BLL;
      v477 = 0x80000001007204F0;
      v136._countAndFlagsBits = v129;
      v136._object = v131;
      String.append(_:)(v136);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v137 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v138 = *(*v137 + 72);
      v139 = (*(*v137 + 80) + 32) & ~*(*v137 + 80);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1006BF520;
      v141 = v140 + v139;
      v142 = v141 + v137[14];
      v143 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v144 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v144 - 8) + 104))(v141, v143, v144);
      v145 = sqlite3_errcode(v475);
      *(v142 + 24) = &type metadata for Int32;
      *(v142 + 32) = &protocol witness table for Int32;
      *v142 = v145;
      sub_10003C9C0(v140);
      swift_setDeallocating();
      sub_10000BE18(v141, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_122;
  }

  v146 = (v80 + v104[7]);
  if (v146[1])
  {
    v147 = *v146;
    v148 = ppStmt;
    v149 = String.utf8CString.getter();
    LODWORD(v148) = sqlite3_bind_text(v148, 4, (v149 + 32), -1, v83);

    if (v148)
    {
      result = sqlite3_errmsg(v475);
      if (result)
      {
        v150 = String.init(cString:)();
        v152 = v151;
        defaultLogger()();

        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v476 = v156;
          *v155 = 136446210;
          *(v155 + 4) = sub_100141FE4(v150, v152, &v476);
          _os_log_impl(&_mh_execute_header, v153, v154, "coreidvd: failure binding training data: %{public}s", v155, 0xCu);
          sub_10000BB78(v156);
        }

        (*(v471 + 8))(v42, v470);
        v476 = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v476 = 0xD00000000000002ELL;
        v477 = 0x8000000100720710;
        v157._countAndFlagsBits = v150;
        v157._object = v152;
        String.append(_:)(v157);

        (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v158 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v159 = *(*v158 + 72);
        v160 = (*(*v158 + 80) + 32) & ~*(*v158 + 80);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_1006BF520;
        v162 = v161 + v160;
        v163 = v162 + v158[14];
        v164 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v165 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v165 - 8) + 104))(v162, v164, v165);
        v166 = sqlite3_errcode(v475);
        *(v163 + 24) = &type metadata for Int32;
        *(v163 + 32) = &protocol witness table for Int32;
        *v163 = v166;
        sub_10003C9C0(v161);
        swift_setDeallocating();
        sub_10000BE18(v162, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_125;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 4))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v167 = String.init(cString:)();
      v169 = v168;
      defaultLogger()();

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v476 = v173;
        *v172 = 136446210;
        *(v172 + 4) = sub_100141FE4(v167, v169, &v476);
        _os_log_impl(&_mh_execute_header, v170, v171, "coreidvd: failure binding null otd_request: %{public}s", v172, 0xCu);
        sub_10000BB78(v173);
      }

      (*(v471 + 8))(v39, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v476 = 0xD00000000000002CLL;
      v477 = 0x8000000100720520;
      v174._countAndFlagsBits = v167;
      v174._object = v169;
      String.append(_:)(v174);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v175 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v176 = *(*v175 + 72);
      v177 = (*(*v175 + 80) + 32) & ~*(*v175 + 80);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1006BF520;
      v179 = v178 + v177;
      v180 = v179 + v175[14];
      v181 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v182 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v182 - 8) + 104))(v179, v181, v182);
      v183 = sqlite3_errcode(v475);
      *(v180 + 24) = &type metadata for Int32;
      *(v180 + 32) = &protocol witness table for Int32;
      *v180 = v183;
      sub_10003C9C0(v178);
      swift_setDeallocating();
      sub_10000BE18(v179, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_126;
  }

  v184 = ppStmt;
  v185 = (v80 + v104[8]);
  v186 = *v185;
  v187 = v185[1];
  v188 = String.utf8CString.getter();
  LODWORD(v184) = sqlite3_bind_text(v184, 5, (v188 + 32), -1, v83);

  if (v184)
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v189 = String.init(cString:)();
      v191 = v190;
      v192 = v468;
      defaultLogger()();

      v193 = Logger.logObject.getter();
      v194 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v476 = v196;
        *v195 = 136446210;
        *(v195 + 4) = sub_100141FE4(v189, v191, &v476);
        _os_log_impl(&_mh_execute_header, v193, v194, "coreidvd: failure binding assessment guid: %{public}s", v195, 0xCu);
        sub_10000BB78(v196);
      }

      (*(v471 + 8))(v192, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v476 = 0xD000000000000030;
      v477 = 0x8000000100720550;
      v197._countAndFlagsBits = v189;
      v197._object = v191;
      String.append(_:)(v197);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v198 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v199 = *(*v198 + 72);
      v200 = (*(*v198 + 80) + 32) & ~*(*v198 + 80);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_1006BF520;
      v202 = v201 + v200;
      v203 = v202 + v198[14];
      v204 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v205 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v205 - 8) + 104))(v202, v204, v205);
      v206 = sqlite3_errcode(v475);
      *(v203 + 24) = &type metadata for Int32;
      *(v203 + 32) = &protocol witness table for Int32;
      *v203 = v206;
      sub_10003C9C0(v201);
      swift_setDeallocating();
      sub_10000BE18(v202, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_127;
  }

  v207 = ppStmt;
  v208 = (v80 + v104[9]);
  v209 = *v208;
  v210 = v208[1];
  v211 = String.utf8CString.getter();
  LODWORD(v207) = sqlite3_bind_text(v207, 6, (v211 + 32), -1, v83);

  if (v207)
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v212 = String.init(cString:)();
      v214 = v213;
      v215 = v467;
      defaultLogger()();

      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v476 = v219;
        *v218 = 136446210;
        *(v218 + 4) = sub_100141FE4(v212, v214, &v476);
        _os_log_impl(&_mh_execute_header, v216, v217, "coreidvd: failure binding assessment guid seeds: %{public}s", v218, 0xCu);
        sub_10000BB78(v219);
      }

      (*(v471 + 8))(v215, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v220._countAndFlagsBits = 0xD000000000000036;
      v220._object = 0x8000000100720590;
      String.append(_:)(v220);
      v221._countAndFlagsBits = v212;
      v221._object = v214;
      String.append(_:)(v221);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v222 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v223 = *(*v222 + 72);
      v224 = (*(*v222 + 80) + 32) & ~*(*v222 + 80);
      v225 = swift_allocObject();
      *(v225 + 16) = xmmword_1006BF520;
      v226 = v225 + v224;
      v227 = v226 + v222[14];
      v228 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v229 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v229 - 8) + 104))(v226, v228, v229);
      v230 = sqlite3_errcode(v475);
      *(v227 + 24) = &type metadata for Int32;
      *(v227 + 32) = &protocol witness table for Int32;
      *v227 = v230;
      sub_10003C9C0(v225);
      swift_setDeallocating();
      sub_10000BE18(v226, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_128;
  }

  v231 = ppStmt;
  v232 = (v80 + v104[10]);
  v233 = *v232;
  v234 = v232[1];
  v235 = String.utf8CString.getter();
  LODWORD(v231) = sqlite3_bind_text(v231, 7, (v235 + 32), -1, v83);

  if (v231)
  {
    result = sqlite3_errmsg(v475);
    if (!result)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v236 = String.init(cString:)();
    v238 = v237;
    v239 = v466;
    defaultLogger()();

    v240 = Logger.logObject.getter();
    v241 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v476 = v243;
      *v242 = 136446210;
      *(v242 + 4) = sub_100141FE4(v236, v238, &v476);
      _os_log_impl(&_mh_execute_header, v240, v241, "coreidvd: failure binding training guid: %{public}s", v242, 0xCu);
      sub_10000BB78(v243);
    }

LABEL_54:

    (*(v471 + 8))(v239, v470);
    v476 = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v476 = 0xD00000000000002BLL;
    v477 = 0x80000001007204F0;
    v244._countAndFlagsBits = v236;
    v244._object = v238;
    String.append(_:)(v244);

    (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v245 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v246 = *(*v245 + 72);
    v247 = (*(*v245 + 80) + 32) & ~*(*v245 + 80);
    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_1006BF520;
    v249 = v248 + v247;
    v250 = v249 + v245[14];
    v251 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v252 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v252 - 8) + 104))(v249, v251, v252);
    v253 = sqlite3_errcode(v475);
    *(v250 + 24) = &type metadata for Int32;
    *(v250 + 32) = &protocol witness table for Int32;
    *v250 = v253;
    sub_10003C9C0(v248);
    swift_setDeallocating();
    sub_10000BE18(v249, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_27:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

  v254 = ppStmt;
  v255 = (v80 + v104[11]);
  v256 = *v255;
  v257 = v255[1];
  v258 = String.utf8CString.getter();
  LODWORD(v254) = sqlite3_bind_text(v254, 8, (v258 + 32), -1, v83);

  if (v254)
  {
    result = sqlite3_errmsg(v475);
    if (!result)
    {
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
      __break(1u);
      goto LABEL_139;
    }

    v236 = String.init(cString:)();
    v238 = v259;
    v239 = v465;
    defaultLogger()();

    v240 = Logger.logObject.getter();
    v260 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v240, v260))
    {
      v261 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v476 = v262;
      *v261 = 136446210;
      *(v261 + 4) = sub_100141FE4(v236, v238, &v476);
      _os_log_impl(&_mh_execute_header, v240, v260, "coreidvd: failure binding training guid seeds: %{public}s", v261, 0xCu);
      sub_10000BB78(v262);
    }

    goto LABEL_54;
  }

  v265 = ppStmt;
  v266 = (v80 + v104[12]);
  v267 = *v266;
  v268 = v266[1];
  v269 = String.utf8CString.getter();
  LODWORD(v265) = sqlite3_bind_text(v265, 9, (v269 + 32), -1, v83);

  if (v265)
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v270 = String.init(cString:)();
      v272 = v271;
      v273 = v464;
      defaultLogger()();

      v274 = Logger.logObject.getter();
      v275 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        v476 = v277;
        *v276 = 136446210;
        *(v276 + 4) = sub_100141FE4(v270, v272, &v476);
        _os_log_impl(&_mh_execute_header, v274, v275, "coreidvd: failure binding training signal id: %{public}s", v276, 0xCu);
        sub_10000BB78(v277);
      }

      (*(v471 + 8))(v273, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v278._countAndFlagsBits = 0xD000000000000033;
      v278._object = 0x80000001007205D0;
      String.append(_:)(v278);
      v279._countAndFlagsBits = v270;
      v279._object = v272;
      String.append(_:)(v279);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v280 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v281 = *(*v280 + 72);
      v282 = (*(*v280 + 80) + 32) & ~*(*v280 + 80);
      v283 = swift_allocObject();
      *(v283 + 16) = xmmword_1006BF520;
      v284 = v283 + v282;
      v285 = v284 + v280[14];
      v286 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v287 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v287 - 8) + 104))(v284, v286, v287);
      v288 = sqlite3_errcode(v475);
      *(v285 + 24) = &type metadata for Int32;
      *(v285 + 32) = &protocol witness table for Int32;
      *v285 = v288;
      sub_10003C9C0(v283);
      swift_setDeallocating();
      sub_10000BE18(v284, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_131;
  }

  v289 = *(v80 + v104[13]);
  if (v289 < 0xFFFFFFFF80000000)
  {
    goto LABEL_123;
  }

  if (v289 > 0x7FFFFFFF)
  {
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

  v290 = v104;
  if (sqlite3_bind_int(ppStmt, 10, v289))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v291 = String.init(cString:)();
      v293 = v292;
      defaultLogger()();

      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v294, v295))
      {
        v296 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        v476 = v297;
        *v296 = 136446210;
        *(v296 + 4) = sub_100141FE4(v291, v293, &v476);
        _os_log_impl(&_mh_execute_header, v294, v295, "coreidvd: failure binding digestIndex: %{public}s", v296, 0xCu);
        sub_10000BB78(v297);
      }

      (*(v471 + 8))(v463, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v476 = 0xD00000000000002CLL;
      v477 = 0x8000000100720610;
      v298._countAndFlagsBits = v291;
      v298._object = v293;
      String.append(_:)(v298);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v299 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v300 = *(*v299 + 72);
      v301 = (*(*v299 + 80) + 32) & ~*(*v299 + 80);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_1006BF520;
      v303 = v302 + v301;
      v304 = v303 + v299[14];
      v305 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v306 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v306 - 8) + 104))(v303, v305, v306);
      v307 = sqlite3_errcode(v475);
      *(v304 + 24) = &type metadata for Int32;
      *(v304 + 32) = &protocol witness table for Int32;
      *v304 = v307;
      sub_10003C9C0(v302);
      swift_setDeallocating();
      sub_10000BE18(v303, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_132;
  }

  v308 = *(v469 + v104[14]);
  if (v308)
  {
    v309 = type metadata accessor for JSONEncoder();
    v310 = *(v309 + 48);
    v311 = *(v309 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v476 = v308;
    sub_10057612C();
    v312 = v462;
    v313 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v462 = v312;
    if (v312)
    {

      return sqlite3_finalize(ppStmt);
    }

    v332 = v313;
    v333 = v314;

    v476 = v332;
    v477 = v333;
    static String.Encoding.utf8.getter();
    sub_10053B880();
    String.init<A>(bytes:encoding:)();
    v334 = ppStmt;
    if (v335)
    {
      v336 = (String.utf8CString.getter() + 32);
    }

    else
    {
      v336 = 0;
    }

    v337 = sqlite3_bind_text(v334, 11, v336, -1, v83);
    swift_unknownObjectRelease();
    if (v337)
    {
      result = sqlite3_errmsg(v475);
      if (result)
      {

        v338 = String.init(cString:)();
        v340 = v339;
        defaultLogger()();

        v341 = Logger.logObject.getter();
        v342 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v341, v342))
        {
          v343 = swift_slowAlloc();
          v344 = swift_slowAlloc();
          v476 = v344;
          *v343 = 136446210;
          *(v343 + 4) = sub_100141FE4(v338, v340, &v476);
          _os_log_impl(&_mh_execute_header, v341, v342, "coreidvd: failure binding bindings: %{public}s", v343, 0xCu);
          sub_10000BB78(v344);
        }

        (*(v471 + 8))(v460, v470);
        v476 = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v476 = 0xD000000000000029;
        v477 = 0x8000000100720640;
        v345._countAndFlagsBits = v338;
        v345._object = v340;
        String.append(_:)(v345);

        v470 = v477;
        v471 = v476;
        (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v346 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v347 = *(*v346 + 72);
        v348 = (*(*v346 + 80) + 32) & ~*(*v346 + 80);
        v349 = swift_allocObject();
        *(v349 + 16) = xmmword_1006BF520;
        v350 = v349 + v348;
        v351 = v350 + v346[14];
        v352 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v353 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v353 - 8) + 104))(v350, v352, v353);
        v354 = sqlite3_errcode(v475);
        *(v351 + 24) = &type metadata for Int32;
        *(v351 + 32) = &protocol witness table for Int32;
        *v351 = v354;
        sub_10003C9C0(v349);
        swift_setDeallocating();
        sub_10000BE18(v350, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10000B90C(v332, v333);
        return sqlite3_finalize(ppStmt);
      }

      goto LABEL_134;
    }

    sub_10000B90C(v332, v333);
  }

  else if (sqlite3_bind_null(ppStmt, 11))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v315 = String.init(cString:)();
      v317 = v316;
      defaultLogger()();

      v318 = Logger.logObject.getter();
      v319 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v318, v319))
      {
        v320 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v476 = v321;
        *v320 = 136446210;
        *(v320 + 4) = sub_100141FE4(v315, v317, &v476);
        _os_log_impl(&_mh_execute_header, v318, v319, "coreidvd: failure binding null bindings: %{public}s", v320, 0xCu);
        sub_10000BB78(v321);
      }

      (*(v471 + 8))(v461, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v476 = 0xD000000000000029;
      v477 = 0x8000000100720640;
      v322._countAndFlagsBits = v315;
      v322._object = v317;
      String.append(_:)(v322);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v323 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v324 = *(*v323 + 72);
      v325 = (*(*v323 + 80) + 32) & ~*(*v323 + 80);
      v326 = swift_allocObject();
      *(v326 + 16) = xmmword_1006BF520;
      v327 = v326 + v325;
      v328 = v327 + v323[14];
      v329 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v330 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v330 - 8) + 104))(v327, v329, v330);
      v331 = sqlite3_errcode(v475);
      *(v328 + 24) = &type metadata for Int32;
      *(v328 + 32) = &protocol witness table for Int32;
      *v328 = v331;
      sub_10003C9C0(v326);
      swift_setDeallocating();
      sub_10000BE18(v327, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_133;
  }

  v355 = (v469 + v290[15]);
  if (v355[1])
  {
    v356 = *v355;
    v357 = ppStmt;
    v358 = String.utf8CString.getter();
    LODWORD(v357) = sqlite3_bind_text(v357, 12, (v358 + 32), -1, v83);

    if (v357)
    {
      result = sqlite3_errmsg(v475);
      if (result)
      {
        v359 = String.init(cString:)();
        v361 = v360;
        defaultLogger()();

        v362 = Logger.logObject.getter();
        v363 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          v365 = swift_slowAlloc();
          v476 = v365;
          *v364 = 136446210;
          *(v364 + 4) = sub_100141FE4(v359, v361, &v476);
          _os_log_impl(&_mh_execute_header, v362, v363, "coreidvd: failure binding encryptedTSID: %{public}s", v364, 0xCu);
          sub_10000BB78(v365);
        }

        (*(v471 + 8))(v458, v470);
        v476 = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v476 = 0xD00000000000002ELL;
        v477 = 0x8000000100720670;
        v366._countAndFlagsBits = v359;
        v366._object = v361;
        String.append(_:)(v366);

        (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v367 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v368 = *(*v367 + 72);
        v369 = (*(*v367 + 80) + 32) & ~*(*v367 + 80);
        v370 = swift_allocObject();
        *(v370 + 16) = xmmword_1006BF520;
        v371 = v370 + v369;
        v372 = v371 + v367[14];
        v373 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v374 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v374 - 8) + 104))(v371, v373, v374);
        v375 = sqlite3_errcode(v475);
        *(v372 + 24) = &type metadata for Int32;
        *(v372 + 32) = &protocol witness table for Int32;
        *v372 = v375;
        sub_10003C9C0(v370);
        swift_setDeallocating();
        sub_10000BE18(v371, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_135;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 12))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v376 = String.init(cString:)();
      v378 = v377;
      defaultLogger()();

      v379 = Logger.logObject.getter();
      v380 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v379, v380))
      {
        v381 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        v476 = v382;
        *v381 = 136446210;
        *(v381 + 4) = sub_100141FE4(v376, v378, &v476);
        _os_log_impl(&_mh_execute_header, v379, v380, "coreidvd: failure binding null encryptedTSID: %{public}s", v381, 0xCu);
        sub_10000BB78(v382);
      }

      (*(v471 + 8))(v457, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v476 = 0xD00000000000002ELL;
      v477 = 0x8000000100720670;
      v383._countAndFlagsBits = v376;
      v383._object = v378;
      String.append(_:)(v383);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v384 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v385 = *(*v384 + 72);
      v386 = (*(*v384 + 80) + 32) & ~*(*v384 + 80);
      v387 = swift_allocObject();
      *(v387 + 16) = xmmword_1006BF520;
      v388 = v387 + v386;
      v389 = v388 + v384[14];
      v390 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v391 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v391 - 8) + 104))(v388, v390, v391);
      v392 = sqlite3_errcode(v475);
      *(v389 + 24) = &type metadata for Int32;
      *(v389 + 32) = &protocol witness table for Int32;
      *v389 = v392;
      sub_10003C9C0(v387);
      swift_setDeallocating();
      sub_10000BE18(v388, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_136;
  }

  v393 = (v469 + v290[16]);
  if (v393[1])
  {
    v394 = *v393;
    v395 = ppStmt;
    v396 = String.utf8CString.getter();
    LODWORD(v395) = sqlite3_bind_text(v395, 13, (v396 + 32), -1, v83);

    if (v395)
    {
      result = sqlite3_errmsg(v475);
      if (result)
      {
        v397 = String.init(cString:)();
        v399 = v398;
        defaultLogger()();

        v400 = Logger.logObject.getter();
        v401 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v400, v401))
        {
          v402 = swift_slowAlloc();
          v403 = swift_slowAlloc();
          v476 = v403;
          *v402 = 136446210;
          *(v402 + 4) = sub_100141FE4(v397, v399, &v476);
          _os_log_impl(&_mh_execute_header, v400, v401, "coreidvd: failure binding encryptedAGUID: %{public}s", v402, 0xCu);
          sub_10000BB78(v403);
        }

        (*(v471 + 8))(v456, v470);
        v476 = 0;
        v477 = 0xE000000000000000;
        _StringGuts.grow(_:)(49);

        v476 = 0xD00000000000002FLL;
        v477 = 0x80000001007206A0;
        v404._countAndFlagsBits = v397;
        v404._object = v399;
        String.append(_:)(v404);

        (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v405 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v406 = *(*v405 + 72);
        v407 = (*(*v405 + 80) + 32) & ~*(*v405 + 80);
        v408 = swift_allocObject();
        *(v408 + 16) = xmmword_1006BF520;
        v409 = v408 + v407;
        v410 = v409 + v405[14];
        v411 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v412 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v412 - 8) + 104))(v409, v411, v412);
        v413 = sqlite3_errcode(v475);
        *(v410 + 24) = &type metadata for Int32;
        *(v410 + 32) = &protocol witness table for Int32;
        *v410 = v413;
        sub_10003C9C0(v408);
        swift_setDeallocating();
        sub_10000BE18(v409, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_137;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 13))
  {
    result = sqlite3_errmsg(v475);
    if (result)
    {
      v414 = String.init(cString:)();
      v416 = v415;
      defaultLogger()();

      v417 = Logger.logObject.getter();
      v418 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v417, v418))
      {
        v419 = swift_slowAlloc();
        v420 = swift_slowAlloc();
        v476 = v420;
        *v419 = 136446210;
        *(v419 + 4) = sub_100141FE4(v414, v416, &v476);
        _os_log_impl(&_mh_execute_header, v417, v418, "coreidvd: failure binding null encryptedAGUID: %{public}s", v419, 0xCu);
        sub_10000BB78(v420);
      }

      (*(v471 + 8))(v455, v470);
      v476 = 0;
      v477 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v476 = 0xD00000000000002FLL;
      v477 = 0x80000001007206A0;
      v421._countAndFlagsBits = v414;
      v421._object = v416;
      String.append(_:)(v421);

      (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v422 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v423 = *(*v422 + 72);
      v424 = (*(*v422 + 80) + 32) & ~*(*v422 + 80);
      v425 = swift_allocObject();
      *(v425 + 16) = xmmword_1006BF520;
      v426 = v425 + v424;
      v427 = v426 + v422[14];
      v428 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v429 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v429 - 8) + 104))(v426, v428, v429);
      v430 = sqlite3_errcode(v475);
      *(v427 + 24) = &type metadata for Int32;
      *(v427 + 32) = &protocol witness table for Int32;
      *v427 = v430;
      sub_10003C9C0(v425);
      swift_setDeallocating();
      sub_10000BE18(v426, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_27;
    }

    goto LABEL_138;
  }

  if (sqlite3_step(ppStmt) == 101)
  {
    defaultLogger()();
    v431 = Logger.logObject.getter();
    v432 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v431, v432))
    {
      v433 = swift_slowAlloc();
      *v433 = 0;
      _os_log_impl(&_mh_execute_header, v431, v432, "coredivd: Stored new pregenerated assessment", v433, 2u);
    }

    (*(v471 + 8))(v453, v470);
    return sqlite3_finalize(ppStmt);
  }

LABEL_116:
  result = sqlite3_errmsg(v475);
  if (result)
  {
    v434 = String.init(cString:)();
    v436 = v435;
    defaultLogger()();

    v437 = Logger.logObject.getter();
    v438 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v437, v438))
    {
      v439 = swift_slowAlloc();
      v440 = swift_slowAlloc();
      v476 = v440;
      *v439 = 136446210;
      *(v439 + 4) = sub_100141FE4(v434, v436, &v476);
      _os_log_impl(&_mh_execute_header, v437, v438, "coreidvd: failure inserting pregenerated assessment to sqlite: %{public}s", v439, 0xCu);
      sub_10000BB78(v440);
    }

    (*(v471 + 8))(v454, v470);
    v476 = 0;
    v477 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v441._countAndFlagsBits = 0xD00000000000003BLL;
    v441._object = 0x80000001007206D0;
    String.append(_:)(v441);
    v442._countAndFlagsBits = v434;
    v442._object = v436;
    String.append(_:)(v442);

    (*(v473 + 104))(v474, enum case for DIPError.Code.sqliteError(_:), v472);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v443 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v444 = *(*v443 + 72);
    v445 = (*(*v443 + 80) + 32) & ~*(*v443 + 80);
    v446 = swift_allocObject();
    *(v446 + 16) = xmmword_1006BF520;
    v447 = v446 + v445;
    v448 = v447 + v443[14];
    v449 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v450 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v450 - 8) + 104))(v447, v449, v450);
    v451 = sqlite3_errcode(v475);
    *(v448 + 24) = &type metadata for Int32;
    *(v448 + 32) = &protocol witness table for Int32;
    *v448 = v451;
    sub_10003C9C0(v446);
    swift_setDeallocating();
    sub_10000BE18(v447, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_27;
  }

LABEL_139:
  __break(1u);
  return result;
}

const char *sub_100572B70(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v150 = a4;
  v145 = a2;
  v146 = a3;
  v129 = type metadata accessor for Logger();
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  v6 = __chkstk_darwin(v129);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v122 - v10;
  v12 = __chkstk_darwin(v9);
  v125 = &v122 - v13;
  __chkstk_darwin(v12);
  v124 = &v122 - v14;
  v15 = type metadata accessor for DIPPregeneratedAssessment(0);
  v133 = *(v15 - 1);
  v16 = *(v133 + 64);
  __chkstk_darwin(v15);
  v18 = (&v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for String.Encoding();
  v144 = *(v131 - 8);
  v19 = *(v144 + 64);
  __chkstk_darwin(v131);
  v130 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Date();
  v21 = *(v149 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v149);
  v151 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DIPError.Code();
  v24 = *(v147 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v147);
  v148 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v27 = *(a1 + 40);
  if (!v27)
  {
    sub_1005507F8();
    v27 = *(a1 + 40);
    if (!v27)
    {
      (*(v24 + 104))(v148, enum case for DIPError.Code.databaseInaccessible(_:), v147);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_15:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v28 = String.utf8CString.getter();
  v29 = sqlite3_prepare_v3(v27, (v28 + 32), -1, 0, &ppStmt, 0);

  if (!v29)
  {
    v49 = ppStmt;
    if (qword_100832CA0 != -1)
    {
      swift_once();
    }

    v50 = qword_1008823D0;
    v51 = String.utf8CString.getter();
    v52 = sqlite3_bind_text(v49, 1, (v51 + 32), -1, v50);

    if (v52)
    {
      result = sqlite3_errmsg(v27);
      if (!result)
      {
        goto LABEL_63;
      }

      v53 = String.init(cString:)();
      v55 = v54;
      defaultLogger()();

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v152[0] = v59;
        *v58 = 136446210;
        v60 = sub_100141FE4(v53, v55, v152);

        *(v58 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v56, v57, "coreidvd: failure binding workflowID: %{public}s", v58, 0xCu);
        sub_10000BB78(v59);
      }

      else
      {
      }

      (*(v128 + 8))(v11, v129);
      (*(v24 + 104))(v148, enum case for DIPError.Code.internalError(_:), v147);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return sqlite3_finalize(ppStmt);
    }

    if (sqlite3_step(ppStmt) == 100)
    {
      v123 = (v144 + 8);
      v126 = (v21 + 16);
      v127 = (v21 + 8);
      do
      {
        if (!sqlite3_column_text(ppStmt, 0))
        {
          goto LABEL_58;
        }

        v61 = String.init(cString:)();
        v63 = v62;
        sqlite3_column_double(ppStmt, 1);
        Date.init(timeIntervalSinceReferenceDate:)();
        if (!sqlite3_column_text(ppStmt, 2))
        {
          goto LABEL_59;
        }

        v64 = String.init(cString:)();
        v66 = v65;
        if (sqlite3_column_text(ppStmt, 3))
        {
          v140 = String.init(cString:)();
          v68 = v67;
        }

        else
        {
          v140 = 0;
          v68 = 0;
        }

        if (!sqlite3_column_text(ppStmt, 4))
        {
          goto LABEL_56;
        }

        v139 = String.init(cString:)();
        v148 = v69;
        if (!sqlite3_column_text(ppStmt, 5))
        {
          goto LABEL_57;
        }

        v138 = String.init(cString:)();
        v147 = v70;
        if (!sqlite3_column_text(ppStmt, 6))
        {
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
LABEL_61:
          __break(1u);
        }

        v137 = v64;
        v146 = v68;
        v71 = String.init(cString:)();
        v145 = v72;
        if (!sqlite3_column_text(ppStmt, 7))
        {
          goto LABEL_60;
        }

        v73 = String.init(cString:)();
        v144 = v74;
        if (!sqlite3_column_text(ppStmt, 8))
        {
          goto LABEL_61;
        }

        v142 = v66;
        v143 = v63;
        v136 = String.init(cString:)();
        v141 = v75;
        v135 = sqlite3_column_int(ppStmt, 9);
        if (sqlite3_column_text(ppStmt, 10) && (String.init(cString:)(), v76 = v130, static String.Encoding.utf8.getter(), v134 = String.data(using:allowLossyConversion:)(), v78 = v77, , (*v123)(v76, v131), v78 >> 60 != 15))
        {
          v79 = type metadata accessor for JSONDecoder();
          v80 = *(v79 + 48);
          v81 = *(v79 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_1005760D8();
          v82 = v134;
          v83 = v132;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v132 = v83;
          if (v83)
          {
            (*v127)(v151, v149);
            sub_10000BD94(v82, v78);

            return sqlite3_finalize(ppStmt);
          }

          sub_10000BD94(v82, v78);

          v134 = v152[0];
        }

        else
        {
          v134 = 0;
        }

        if (sqlite3_column_text(ppStmt, 11))
        {
          v84 = String.init(cString:)();
          v86 = v85;
        }

        else
        {
          v84 = 0;
          v86 = 0;
        }

        if (sqlite3_column_text(ppStmt, 12))
        {
          v87 = String.init(cString:)();
          v89 = v88;
        }

        else
        {
          v87 = 0;
          v89 = 0;
        }

        (*v126)(v18 + v15[5], v151, v149);
        v90 = v135;
        v91 = v143;
        *v18 = v61;
        v18[1] = v91;
        v92 = (v18 + v15[6]);
        v93 = v142;
        *v92 = v137;
        v92[1] = v93;
        v94 = (v18 + v15[7]);
        v95 = v146;
        *v94 = v140;
        v94[1] = v95;
        v96 = (v18 + v15[8]);
        v97 = v148;
        *v96 = v139;
        v96[1] = v97;
        v98 = (v18 + v15[9]);
        v99 = v147;
        *v98 = v138;
        v98[1] = v99;
        v100 = (v18 + v15[10]);
        v101 = v144;
        v102 = v145;
        *v100 = v71;
        v100[1] = v102;
        v103 = (v18 + v15[11]);
        *v103 = v73;
        v103[1] = v101;
        v104 = (v18 + v15[12]);
        v105 = v141;
        *v104 = v136;
        v104[1] = v105;
        *(v18 + v15[13]) = v90;
        *(v18 + v15[14]) = v134;
        v106 = (v18 + v15[15]);
        *v106 = v84;
        v106[1] = v86;
        v107 = (v18 + v15[16]);
        *v107 = v87;
        v107[1] = v89;
        v108 = v150;
        v109 = *v150;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v108 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v109 = sub_1003C6774(0, v109[2] + 1, 1, v109);
          *v150 = v109;
        }

        v112 = v109[2];
        v111 = v109[3];
        if (v112 >= v111 >> 1)
        {
          v114 = sub_1003C6774(v111 > 1, v112 + 1, 1, v109);
          *v150 = v114;
        }

        (*v127)(v151, v149);
        v113 = *v150;
        *(v113 + 16) = v112 + 1;
        sub_100576224(v18, v113 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v112, type metadata accessor for DIPPregeneratedAssessment);
      }

      while (sqlite3_step(ppStmt) == 100);
    }

    if (*(*v150 + 16))
    {
      v115 = v125;
      defaultLogger()();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = "found pre-generated assessments";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v116, v117, v119, v118, 2u);
      }
    }

    else
    {
      v115 = v124;
      defaultLogger()();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = "no pre-generated assessment was found";
        goto LABEL_51;
      }
    }

    v120 = v129;
    v121 = v128;

    (*(v121 + 8))(v115, v120);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v27);
  if (result)
  {
    v31 = String.init(cString:)();
    v33 = v32;
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v152[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_100141FE4(v31, v33, v152);
      _os_log_impl(&_mh_execute_header, v34, v35, "coreidvd: failed to prepare select statement: %{public}s", v36, 0xCu);
      sub_10000BB78(v37);
    }

    (*(v128 + 8))(v8, v129);
    v152[0] = 0;
    v152[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v38._countAndFlagsBits = 0xD000000000000043;
    v38._object = 0x8000000100720120;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v31;
    v39._object = v33;
    String.append(_:)(v39);

    v151 = v152[0];
    (*(v24 + 104))(v148, enum case for DIPError.Code.sqliteError(_:), v147);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v40 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v41 = *(*v40 + 72);
    v42 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1006BF520;
    v44 = v43 + v42;
    v45 = v44 + v40[14];
    v46 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v47 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v47 - 8) + 104))(v44, v46, v47);
    v48 = sqlite3_errcode(v27);
    *(v45 + 24) = &type metadata for Int32;
    *(v45 + 32) = &protocol witness table for Int32;
    *v45 = v48;
    sub_10003C9C0(v43);
    swift_setDeallocating();
    sub_10000BE18(v44, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_15;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}