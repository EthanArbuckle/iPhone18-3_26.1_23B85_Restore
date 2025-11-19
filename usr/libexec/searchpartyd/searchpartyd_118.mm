uint64_t sub_100C5C920()
{
  v12 = v0;
  v11 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, 1, 0);
  v1 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  if (v3 >= v2 >> 1)
  {
    sub_101123BB8((v2 > 1), v3 + 1, 1);
    v1 = v11;
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = 0xD000000000000016;
  v4[5] = 0x800000010134C550;
  v5 = sub_101129930(v1);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1003A85D4(*(v5 + 16), 0);
    v8 = sub_1003AAC38(&v11, v7 + 4, v6, v5);
    sub_1000128F8();
    if (v8 == v6)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_7:
  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_100C5CA6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudKitCoordinator.Deletion();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for CloudKitStateChange();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C5CB94, v1, 0);
}

uint64_t sub_100C5CB94()
{
  v43 = v0;
  v1 = v0;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BEC0);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 136315138;
    sub_10003118C(&qword_1016B9568, &type metadata accessor for CloudKitStateChange);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v42);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ingest:stateChange %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v1[2];
  v20 = CloudKitStateChange.deleted.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v1[5];
    v42 = _swiftEmptyArrayStorage;
    sub_101125704(0, v21, 0);
    v23 = v42;
    v24 = *(v22 + 16);
    v22 += 16;
    v40 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v41 = v24;
    v25 = v20 + v40;
    v39 = *(v22 + 56);
    v38 = (v22 - 8);
    v26 = (v22 + 16);
    do
    {
      v27 = v1[6];
      v28 = v1[4];
      v41(v27, v25, v28);
      CloudKitCoordinator.Deletion.recordType.getter();
      CloudKitCoordinator.Deletion.recordID.getter();
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      (*v38)(v27, v28);
      v42 = v23;
      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        sub_101125704(v29 > 1, v30 + 1, 1);
        v23 = v42;
      }

      v31 = v1[7];
      v32 = v1[4];
      v23[2] = v30 + 1;
      (*v26)(v23 + v40 + v30 * v39, v31, v32);
      v25 += v39;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v1[11] = v23;
  v33 = v1[2];
  v34 = CloudKitStateChange.modified.getter();
  v1[12] = v34;
  v35 = swift_task_alloc();
  v1[13] = v35;
  *v35 = v1;
  v35[1] = sub_100C5CF80;
  v36 = v1[3];

  return sub_100C5D1D4(v23, v34);
}

uint64_t sub_100C5CF80()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100C5D140;
  }

  else
  {
    v6 = sub_100C5D0AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C5D0AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C5D140()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_100C5D1D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C5D2C0, v2, 0);
}

uint64_t sub_100C5D2C0()
{
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C5D2E4, v1, 0);
}

uint64_t sub_100C5D2E4()
{
  v1 = v0[9];
  v2 = v0[4];
  type metadata accessor for CloudStorageDatabase();
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  v0[10] = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C5D3A4, v2, 0);
}

uint64_t sub_100C5D3A4()
{
  v1 = v0[10];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = v0[4];
    v13 = v0[3];
    v14 = v0[5];
    v6 = v0[2];
    v7 = sub_101129930(&off_10160D078);
    sub_1002FFC04(&unk_10160D098);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v7;
    v8[5] = v1;
    v8[6] = v13;
    v8[7] = v14;
    (*(v3 + 104))(v2, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

void sub_100C5D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v187 = a6;
  v190 = a5;
  v207 = a4;
  v217 = a2;
  v188 = type metadata accessor for Insert();
  v182 = *(v188 - 8);
  v10 = *(v182 + 64);
  __chkstk_darwin(v188);
  v12 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v186 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v199 = &v181 - v18;
  __chkstk_darwin(v17);
  v210 = &v181 - v19;
  v203 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v20 = *(v203 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v203);
  v202 = &v181 - v22;
  v204 = type metadata accessor for Delete();
  v233 = *(v204 - 8);
  v23 = *(v233 + 64);
  __chkstk_darwin(v204);
  v225 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v215 = &v181 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v197 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v32;
  __chkstk_darwin(v31);
  v224 = &v181 - v33;
  v240 = type metadata accessor for Table();
  v34 = *(v240 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v240);
  v189 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v196 = &v181 - v39;
  v40 = __chkstk_darwin(v38);
  v201 = &v181 - v41;
  v42 = __chkstk_darwin(v40);
  v214 = &v181 - v43;
  __chkstk_darwin(v42);
  v232 = &v181 - v44;
  v227 = type metadata accessor for CloudKitCoordinator.Deletion();
  v45 = *(*(v227 - 1) + 8);
  v46 = __chkstk_darwin(v227);
  v184 = &v181 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v200 = &v181 - v49;
  __chkstk_darwin(v48);
  v53 = *(a1 + 16);
  v208 = a3;
  v222 = v12;
  v221 = v53;
  v183 = v34;
  if (!v53)
  {
LABEL_48:
    v138 = v190;
    if (v190 >> 62)
    {
      goto LABEL_94;
    }

    v139 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
    v140 = v196;
    if (!v139)
    {
      return;
    }

    v141 = 0;
    v233 = v138 & 0xC000000000000001;
    v234 = 0x800000010136FDB0;
    v226 = v138 & 0xFFFFFFFFFFFFFF8;
    v225 = (v138 + 32);
    v224 = (a3 + 56);
    v229 = (v183 + 32);
    v230 = (v183 + 16);
    v227 = (v182 + 8);
    v231 = (v183 + 8);
    *&v52 = 136315138;
    v223 = v52;
    v232 = v139;
    while (1)
    {
      if (v233)
      {
        v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v141 >= *(v226 + 16))
        {
          goto LABEL_93;
        }

        v146 = *&v225[8 * v141];
      }

      v147 = v146;
      if (__OFADD__(v141++, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v139 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_50;
      }

      if (CKRecord.recordType.getter() == 0xD00000000000001CLL && v234 == v149)
      {
        break;
      }

      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v138)
      {
        goto LABEL_63;
      }

      v228 = v7;
      v163 = CKRecord.recordType.getter();
      v165 = v164;
      if (*(a3 + 16))
      {
        v166 = v163;
        v167 = *(a3 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v168 = Hasher._finalize()();
        v169 = a3;
        v170 = -1 << *(a3 + 32);
        v138 = v168 & ~v170;
        v171 = v224;
        if ((*&v224[(v138 >> 3) & 0xFFFFFFFFFFFFFF8] >> v138))
        {
          v172 = ~v170;
          while (1)
          {
            v173 = (*(v169 + 48) + 16 * v138);
            v174 = *v173 == v166 && v173[1] == v165;
            if (v174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v138 = (v138 + 1) & v172;
            if (((*&v171[(v138 >> 3) & 0xFFFFFFFFFFFFFF8] >> v138) & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_86;
        }
      }

      else
      {
        v169 = a3;
      }

LABEL_81:

      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v175 = type metadata accessor for Logger();
      sub_1000076D4(v175, qword_10177BEC0);
      v176 = v147;
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v177, v178))
      {

LABEL_86:
        v7 = v228;
        a3 = v169;
        v12 = v222;
        goto LABEL_53;
      }

      v138 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v239 = v142;
      *v138 = v223;
      v143 = CKRecord.recordType.getter();
      v145 = sub_1000136BC(v143, v144, &v239);

      *(v138 + 4) = v145;
      v12 = v222;
      _os_log_impl(&_mh_execute_header, v177, v178, "Unable to find table for %s", v138, 0xCu);
      sub_100007BAC(v142);
      a3 = v208;

      v7 = v228;
LABEL_53:
      if (v141 == v232)
      {
        return;
      }
    }

LABEL_63:
    v150 = v7;
    if (qword_101694888 != -1)
    {
      swift_once();
    }

    v151 = v240;
    v152 = sub_1000076D4(v240, qword_10177B110);
    v153 = v189;
    (*v230)(v189, v152, v151);
    (*v229)(v140, v153, v151);
    v155 = CKRecord.recordType.getter();
    v156 = v154;
    if ((v155 != 0xD00000000000001CLL || v234 != v154) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100C61C80();
      swift_allocError();
      *v180 = v155;
      v180[1] = v156;
      swift_willThrow();

      (*v231)(v140, v240);
      return;
    }

    sub_100C5F2A4(v140, v147, v12);
    if (v150)
    {
      (*v231)(v140, v240);

      return;
    }

    Connection.run(_:)();
    v7 = 0;
    v157 = type metadata accessor for TaskPriority();
    v158 = v186;
    (*(*(v157 - 8) + 56))(v186, 1, 1, v157);
    v159 = sub_10003118C(&qword_1016B9540, type metadata accessor for CloudStorageStore);
    v160 = swift_allocObject();
    v161 = v217;
    v160[2] = v217;
    v160[3] = v159;
    v160[4] = v147;
    v160[5] = v161;
    v160[6] = v187;
    swift_retain_n();
    v138 = v147;
    v162 = v158;
    v140 = v196;
    sub_100A838D4(0, 0, v162, &unk_1013E3070, v160);

    (*v227)(v12, v188);
    (*v231)(v140, v240);
    goto LABEL_53;
  }

  v234 = &v181 - v50;
  v54 = 0;
  v56 = *(v51 + 16);
  v55 = v51 + 16;
  v230 = v56;
  v219 = a1 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
  v231 = 0x800000010136FDB0;
  v226 = a3 + 56;
  v220 = (v55 - 8);
  v213 = (v34 + 16);
  v212 = (v34 + 32);
  v211 = (v29 + 48);
  v209 = (v29 + 32);
  v192 = (v20 + 8);
  *&v223 = v34 + 8;
  v191 = v29 + 16;
  v194 = (v233 + 8);
  v193 = v29;
  v195 = (v29 + 8);
  v218 = *(v55 + 56);
  *&v52 = 136315138;
  v185 = v52;
  v216 = v28;
  v229 = v55;
  while (1)
  {
    v233 = v54;
    v58 = v234;
    v230();
    if (CloudKitCoordinator.Deletion.recordType.getter() == 0xD00000000000001CLL && v231 == v59)
    {
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v60 & 1) == 0)
      {
        v102 = CloudKitCoordinator.Deletion.recordType.getter();
        v104 = v103;
        if (*(a3 + 16) && (v105 = v102, v106 = *(a3 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v107 = Hasher._finalize()(), v108 = -1 << *(a3 + 32), v109 = v107 & ~v108, ((*(v226 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) != 0))
        {
          v110 = ~v108;
          while (1)
          {
            v111 = (*(a3 + 48) + 16 * v109);
            v112 = *v111 == v105 && v111[1] == v104;
            if (v112 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v109 = (v109 + 1) & v110;
            if (((*(v226 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          (*v220)(v58, v227);
        }

        else
        {
LABEL_34:
          v113 = a3;

          if (qword_101694DE0 != -1)
          {
            swift_once();
          }

          v114 = type metadata accessor for Logger();
          sub_1000076D4(v114, qword_10177BEC0);
          v115 = v184;
          v116 = v58;
          v117 = v227;
          (v230)(v184, v116, v227);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v118, v119))
          {

            v137 = *v220;
            (*v220)(v115, v117);
            v137(v234, v117);
            v12 = v222;
            v28 = v216;
            a3 = v113;
            goto LABEL_4;
          }

          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v239 = v121;
          *v120 = v185;
          v122 = CloudKitCoordinator.Deletion.recordType.getter();
          v123 = v115;
          v125 = v124;
          v228 = v7;
          v126 = *v220;
          (*v220)(v123, v227);
          v127 = sub_1000136BC(v122, v125, &v239);
          a3 = v208;

          *(v120 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v118, v119, "Unable to find table for %s", v120, 0xCu);
          sub_100007BAC(v121);

          v128 = v227;

          v126(v234, v128);
          v7 = v228;
          v12 = v222;
        }

        v28 = v216;
        goto LABEL_4;
      }
    }

    if (qword_101694888 != -1)
    {
      swift_once();
    }

    v61 = v240;
    v62 = sub_1000076D4(v240, qword_10177B110);
    v63 = v214;
    (*v213)(v214, v62, v61);
    (*v212)(v232, v63, v61);
    v64 = CloudKitCoordinator.Deletion.recordID.getter();
    v65 = [v64 recordName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v215;
    UUID.init(uuidString:)();

    if ((*v211)(v66, 1, v28) == 1)
    {
      v67 = a3;
      sub_10000B3A8(v66, &qword_1016980D0, &unk_10138F3B0);
      v68 = v227;
      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000076D4(v69, qword_10177BEC0);
      v70 = v200;
      (v230)(v200, v234, v68);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v239 = v206;
        *v73 = v185;
        v74 = CloudKitCoordinator.Deletion.recordID.getter();
        v75 = [v74 recordName];

        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v70;
        v79 = v78;

        v228 = v7;
        v80 = *v220;
        (*v220)(v77, v68);
        v81 = v80;
        v82 = sub_1000136BC(v76, v79, &v239);
        a3 = v208;

        *(v73 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v71, v72, "Record name is not a UUID: %s", v73, 0xCu);
        sub_100007BAC(v206);

        v28 = v216;

        (*v223)(v232, v240);
        v81(v234, v68);
        v7 = v228;
      }

      else
      {

        v57 = *v220;
        (*v220)(v70, v68);
        (*v223)(v232, v240);
        v57(v234, v68);
        a3 = v67;
      }

      v12 = v222;
      goto LABEL_4;
    }

    v206 = *v209;
    (v206)(v224, v66, v28);
    v83 = v193;
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v84 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v84, qword_10177B140);
    v85 = v202;
    == infix<A>(_:_:)();
    v86 = v201;
    v87 = v240;
    QueryType.filter(_:)();
    (*v192)(v85, v203);
    QueryType.delete()();
    v88 = *v223;
    (*v223)(v86, v87);
    v90 = CloudKitCoordinator.Deletion.recordType.getter();
    v91 = v89;
    if ((v90 != 0xD00000000000001CLL || v231 != v89) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    Connection.run(_:)();
    if (v7)
    {
      goto LABEL_89;
    }

    v205 = v88;
    v228 = 0;
    v92 = type metadata accessor for TaskPriority();
    v93 = *(v92 - 8);
    v94 = v210;
    (*(v93 + 56))(v210, 1, 1, v92);
    v95 = v197;
    (*(v83 + 16))(v197, v224, v28);
    v96 = sub_10003118C(&qword_1016B9540, type metadata accessor for CloudStorageStore);
    v97 = (*(v83 + 80) + 40) & ~*(v83 + 80);
    v98 = swift_allocObject();
    v99 = v217;
    v98[2] = v217;
    v98[3] = v96;
    v98[4] = v99;
    (v206)(v98 + v97, v95, v28);
    v100 = v199;
    sub_1000D2A70(v94, v199, &qword_101698C00, &qword_10138B570);
    v101 = (*(v93 + 48))(v100, 1, v92);
    swift_retain_n();

    if (v101 == 1)
    {
      sub_10000B3A8(v100, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v93 + 8))(v100, v92);
    }

    v129 = v208;
    v131 = v98[2];
    v130 = v98[3];
    swift_unknownObjectRetain();

    v7 = v228;
    v132 = v234;
    if (v131)
    {
      swift_getObjectType();
      v133 = dispatch thunk of Actor.unownedExecutor.getter();
      v135 = v134;
      swift_unknownObjectRelease();
    }

    else
    {
      v133 = 0;
      v135 = 0;
    }

    v12 = v222;
    sub_10000B3A8(v210, &qword_101698C00, &qword_10138B570);
    v136 = swift_allocObject();
    *(v136 + 16) = &unk_1013E3080;
    *(v136 + 24) = v98;
    if (v135 | v133)
    {
      v235 = 0;
      v236 = 0;
      v237 = v133;
      v238 = v135;
    }

    a3 = v129;
    swift_task_create();

    (*v194)(v225, v204);
    v28 = v216;
    (*v195)(v224, v216);
    v205(v232, v240);
    (*v220)(v132, v227);
LABEL_4:
    v54 = v233 + 1;
    if (v233 + 1 == v221)
    {
      goto LABEL_48;
    }
  }

  sub_100C61C80();
  swift_allocError();
  *v179 = v90;
  v179[1] = v91;
  swift_willThrow();
LABEL_89:
  (*v194)(v225, v204);
  (*v195)(v224, v28);
  v88(v232, v240);
  (*v220)(v58, v227);
}

uint64_t sub_100C5EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for CloudStorageStore.State(0);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_100C5F084, a4, 0);
}

uint64_t sub_100C5F084()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(v2, v3, v4);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100C5F178;
  v6 = v0[5];
  v7 = v0[2];

  return sub_100C5C268(v6);
}

uint64_t sub_100C5F178()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  sub_100C62C80(v2, type metadata accessor for CloudStorageStore.State);

  v3 = *(v5 + 8);

  return v3();
}

void sub_100C5F2A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OnConflict();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalFindableAccessoryRecord();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015927C(a2, v15);
  if (!v3)
  {
    v60 = a3;
    v61 = a1;
    v16 = type metadata accessor for PropertyListEncoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v19 = v12[13];
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10003118C(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v64 = 0;
    v58 = v21;
    v59 = v20;

    v22 = &v15[v12[8]];
    v23 = v11;
    v25 = *v22;
    v24 = v22[1];
    if (v24 >> 60 == 15)
    {
      v26 = 0;
    }

    else
    {
      v26 = *v22;
    }

    v27 = 0xF000000000000000;
    if (v24 >> 60 != 15)
    {
      v27 = v24;
    }

    v50 = v27;
    v51 = v26;
    v28 = *(v8 + 104);
    v53 = v23;
    v57 = v7;
    v28();
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v29 = *(type metadata accessor for Setter() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1013E2E80;
    v52 = v32;
    v54 = v24;
    v55 = v25;
    sub_10002E98C(v25, v24);
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v56 = v8;
    v33 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v33, qword_10177B140);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_1016948A0 != -1)
    {
      swift_once();
    }

    v34 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v34, qword_10177B158);
    v35 = &v15[v12[5]];
    v36 = v35[1];
    v62 = *v35;
    v63 = v36;

    <- infix<A>(_:_:)();

    if (qword_1016948A8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v34, qword_10177B170);
    v37 = &v15[v12[6]];
    v38 = v37[1];
    v62 = *v37;
    v63 = v38;

    <- infix<A>(_:_:)();

    if (qword_1016948B0 != -1)
    {
      swift_once();
    }

    v39 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v39, qword_10177B188);
    v40 = &v15[v12[7]];
    v41 = v40[1];
    v62 = *v40;
    v63 = v41;
    sub_100017D5C(v62, v41);
    <- infix<A>(_:_:)();
    sub_100016590(v62, v63);
    if (qword_1016948B8 != -1)
    {
      swift_once();
    }

    v42 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v42, qword_10177B1A0);
    v62 = v51;
    v63 = v50;
    <- infix<A>(_:_:)();
    if (qword_1016948C0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v33, qword_10177B1B8);
    v43 = &v15[v12[9]];
    <- infix<A>(_:_:)();
    if (qword_1016948D0 != -1)
    {
      swift_once();
    }

    v44 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v44, qword_10177B1E8);
    v62 = *&v15[v12[10]];
    <- infix<A>(_:_:)();
    if (qword_1016948C8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v44, qword_10177B1D0);
    v62 = *&v15[v12[11]];
    <- infix<A>(_:_:)();
    if (qword_1016948D8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v44, qword_10177B200);
    v62 = *&v15[v12[12]];
    <- infix<A>(_:_:)();
    if (qword_1016948E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v39, qword_10177B218);
    v62 = v59;
    v63 = v58;
    <- infix<A>(_:_:)();
    if (qword_1016948E8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v39, qword_10177B230);
    v45 = &v15[v12[14]];
    v62 = P256PrivateKey.data.getter();
    v63 = v46;
    <- infix<A>(_:_:)();
    sub_100016590(v62, v63);
    if (qword_1016948F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v39, qword_10177B248);
    v47 = &v15[v12[15]];
    v62 = SymmetricKey256.data.getter();
    v63 = v48;
    <- infix<A>(_:_:)();
    sub_100016590(v62, v63);
    type metadata accessor for Table();
    v49 = v53;
    QueryType.insert(or:_:)();

    sub_100006654(v55, v54);
    sub_100016590(v59, v58);
    (*(v56 + 8))(v49, v57);
    sub_100C62C80(v15, type metadata accessor for LocalFindableAccessoryRecord);
  }
}

uint64_t sub_100C5FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v7 = type metadata accessor for CloudStorageStore.State(0);
  v5[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v10 = type metadata accessor for LocalFindableAccessoryRecord();
  v5[27] = v10;
  v11 = *(v10 - 8);
  v5[28] = v11;
  v12 = *(v11 + 64) + 15;
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100C5FD0C, a5, 0);
}

uint64_t sub_100C5FD0C()
{
  sub_10015927C(*(v0 + 176), *(v0 + 232));
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100C5FE20;
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100C5FE20()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_100C604BC;
  }

  else
  {
    v6 = sub_100C5FF4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C5FF4C()
{
  v23 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = (*(*(v0 + 224) + 48))(v2, 1, v1);
  v4 = *(v0 + 232);
  if (v3 == 1)
  {
    sub_100C62C80(*(v0 + 232), type metadata accessor for LocalFindableAccessoryRecord);
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_10003118C(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord);
    v5 = sub_1000280DC((v0 + 56));
    sub_100C63080(v2, v5, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100C62C80(v4, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  sub_1000D2A70(v0 + 16, v0 + 136, &qword_1016B9558, &qword_1013E30B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    sub_100031694((v0 + 136), v0 + 96);
    sub_10001F280(v0 + 96, v8);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 256) = v9;
    *v9 = v0;
    v9[1] = sub_100C602E4;
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);

    return sub_100C5C268(v10);
  }

  else
  {
    sub_10000B3A8(v0 + 136, &qword_1016B9558, &qword_1013E30B0);
    if (qword_101694DE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BEC0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101369890, &v22);
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to convert %s to CloudBacked!", v16, 0xCu);
      sub_100007BAC(v17);
    }

    sub_10000B3A8(v0 + 16, &qword_1016B9558, &qword_1013E30B0);
    v18 = *(v0 + 232);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100C602E4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v5 = *v0;

  sub_100C62C80(v2, type metadata accessor for CloudStorageStore.State);

  return _swift_task_switch(sub_100C60424, v3, 0);
}

uint64_t sub_100C60424()
{
  sub_100007BAC(v0 + 12);
  sub_10000B3A8((v0 + 2), &qword_1016B9558, &qword_1013E30B0);
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C604BC()
{
  sub_100C62C80(v0[29], type metadata accessor for LocalFindableAccessoryRecord);
  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C60578()
{
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BEC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging DB", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 112);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_100C6069C, v6, 0);
}

uint64_t sub_100C6069C()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudStorageDatabase();
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.purge()();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100C60760(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = CKRecord.recordType.getter();
  v7 = sub_10111E5C0(v5, v6);

  if (v7)
  {
    if (qword_101694DE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BEC0);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = CKRecord.recordType.getter();
      v16 = sub_1000136BC(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected recordType: %{public}s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = type metadata accessor for LocalFindableAccessoryRecord();
    *(a2 + 32) = sub_10003118C(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord);
    v17 = sub_1000280DC(a2);
    sub_10015927C(a1, v17);
    if (v2)
    {
      sub_100101758(a2);
    }
  }
}

uint64_t sub_100C60968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BBA4C;

  return sub_100C5C904();
}

uint64_t sub_100C609F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C5CA6C(a1);
}

uint64_t sub_100C60A88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C6234C(a1, a2);
}

uint64_t sub_100C60B40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C5D1D4(a1, a2);
}

uint64_t sub_100C60C04()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100C60C28, v1, 0);
}

uint64_t sub_100C60C28()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudStorageDatabase();
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C60CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C60558();
}

uint64_t sub_100C60D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SymmetricKey256();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256PrivateKey();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PeripheralConnectionMaterial(0);
  v10 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177B140);
  v14 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016948C0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177B1B8);
  v15 = type metadata accessor for LocalFindableAccessoryRecord();
  v65 = v15[9];
  v70 = v14;
  Row.subscript.getter();
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v63 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v63, qword_10177B188);
  Row.subscript.getter();
  v16 = v68;
  v17 = v69;
  v66 = v68;
  v67 = v69;
  sub_1000E0A3C();
  v64 = DataProtocol.isNull.getter();
  if (v64)
  {
    sub_100016590(v16, v17);
    sub_100C61C80();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();
    v19 = type metadata accessor for Row();
    (*(*(v19 - 8) + 8))(a1, v19);
LABEL_31:
    v45 = v70;
    v46 = *(*(v70 - 8) + 8);
    v46(a2, v70);
    if ((v64 & 1) == 0)
    {
      v47 = *(a2 + v15[5] + 8);

      v48 = *(a2 + v15[6] + 8);

      sub_100016590(*(a2 + v15[7]), *(a2 + v15[7] + 8));
      sub_100006654(*(a2 + v15[8]), *(a2 + v15[8] + 8));
    }

    return (v46)(a2 + v65, v45);
  }

  v20 = Data.trimmed.getter();
  v22 = v21;
  sub_100016590(v16, v17);
  v23 = (a2 + v15[7]);
  *v23 = v20;
  v23[1] = v22;
  if (qword_1016948B8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v24, qword_10177B1A0);
  Row.subscript.getter();
  v25 = v69;
  if (v69 >> 60 == 15)
  {
    v26 = 0;
    v27 = 0xF000000000000000;
  }

  else
  {
    v28 = v68;
    if (DataProtocol.isNull.getter())
    {
      v26 = 0;
      v27 = 0xF000000000000000;
    }

    else
    {
      v26 = Data.trimmed.getter();
      v27 = v29;
    }

    sub_100006654(v28, v25);
  }

  v30 = (a2 + v15[8]);
  *v30 = v26;
  v30[1] = v27;
  if (qword_1016948A0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v31, qword_10177B158);
  Row.subscript.getter();
  v32 = v69;
  v33 = (a2 + v15[5]);
  *v33 = v68;
  v33[1] = v32;
  if (qword_1016948A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v31, qword_10177B170);
  Row.subscript.getter();
  v34 = v69;
  v35 = (a2 + v15[6]);
  *v35 = v68;
  v35[1] = v34;
  if (qword_1016948D0 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v36, qword_10177B1E8);
  Row.subscript.getter();
  *(a2 + v15[10]) = v68;
  v37 = v63;
  if (qword_1016948C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v36, qword_10177B1D0);
  Row.subscript.getter();
  *(a2 + v15[11]) = v68;
  if (qword_1016948D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v36, qword_10177B200);
  Row.subscript.getter();
  *(a2 + v15[12]) = v68;
  v38 = type metadata accessor for PropertyListDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016948E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177B218);
  Row.subscript.getter();
  v41 = v68;
  v42 = v69;
  sub_10003118C(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial);
  v43 = v60;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v43)
  {
    v44 = type metadata accessor for Row();
    (*(*(v44 - 8) + 8))(a1, v44);
    sub_100016590(v41, v42);

    goto LABEL_31;
  }

  sub_100016590(v41, v42);
  sub_100C63080(v12, a2 + v15[13], type metadata accessor for PeripheralConnectionMaterial);
  if (qword_1016948E8 != -1)
  {
    swift_once();
  }

  v50 = v63;
  sub_1000076D4(v63, qword_10177B230);
  Row.subscript.getter();
  v51 = v58;
  P256PrivateKey.init(data:)();
  (*(v61 + 32))(a2 + v15[14], v51, v62);
  if (qword_1016948F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v50, qword_10177B248);
  Row.subscript.getter();
  v52 = v57;
  SymmetricKey256.init(data:)();
  v53 = type metadata accessor for Row();
  (*(*(v53 - 8) + 8))(a1, v53);
  return (*(v55 + 32))(a2 + v15[15], v52, v56);
}

uint64_t sub_100C618A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  v5 = v32[8];
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for CloudStorageStore.State(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v31 - v16);
  v18 = sub_1000BC4D4(&qword_1016B9550, &unk_1013E30A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_100C62CE0(a1, &v31 - v21);
  sub_100C62CE0(a2, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100C62CE0(v22, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100031694(v17, v34);
      sub_100031694(&v22[v23], v33);
      sub_1000035D0(v34, v34[3]);
      dispatch thunk of CloudBacked.id.getter();
      sub_1000035D0(v33, v33[3]);
      dispatch thunk of CloudBacked.id.getter();
      v27 = static UUID.== infix(_:_:)();
      v29 = v32[1];
      v29(v8, v4);
      v29(v10, v4);
      sub_100007BAC(v33);
      sub_100007BAC(v34);
      goto LABEL_12;
    }

    sub_100007BAC(v17);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100C62CE0(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v32;
      v26 = v32[4];
      v26(v10, v15, v4);
      v26(v8, &v22[v23], v4);
      v27 = static UUID.== infix(_:_:)();
      v28 = v25[1];
      v28(v8, v4);
      v28(v10, v4);
LABEL_12:
      sub_100C62C80(v22, type metadata accessor for CloudStorageStore.State);
      return v27 & 1;
    }

    (v32[1])(v15, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_10000B3A8(v22, &qword_1016B9550, &unk_1013E30A0);
    v27 = 0;
    return v27 & 1;
  }

  sub_100C62C80(v22, type metadata accessor for CloudStorageStore.State);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_100C61C80()
{
  result = qword_1016B9530;
  if (!qword_1016B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9530);
  }

  return result;
}

uint64_t sub_100C61CD4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x3000000000000000) == 0)
  {
    return sub_100017D5C(a1, a2);
  }

  return a1;
}

uint64_t sub_100C61CE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x3000000000000000) == 0)
  {
    return sub_100016590(a1, a2);
  }

  return a1;
}

uint64_t sub_100C61CF4(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = type metadata accessor for LocalFindablePreferences();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v46 - v8;
  v9 = type metadata accessor for Row();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v46 - v15;
  v17 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v46 - v19;
  v21 = v57;
  result = Connection.prepare(_:)();
  if (!v21)
  {
    v57 = v16;
    v46[2] = 0;

    v56 = dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v54 = v10[6];
    v55 = v10 + 6;
    if (v54(v20, 1, v9) == 1)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v24 = v20;
      v26 = v10[4];
      v25 = v10 + 4;
      v49 = (v25 - 2);
      v50 = v26;
      v48 = (v25 - 3);
      v23 = _swiftEmptyArrayStorage;
      v52 = v7;
      v53 = v25;
      v47 = v3;
      v51 = v24;
      do
      {
        v27 = v57;
        v50(v57, v24, v9);
        (*v49)(v14, v27, v9);
        if (qword_101694898 != -1)
        {
          swift_once();
        }

        v28 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v28, qword_10177B140);
        type metadata accessor for UUID();
        Row.subscript.getter();
        if (qword_1016948F8 != -1)
        {
          swift_once();
        }

        v29 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
        sub_1000076D4(v29, qword_10177B260);
        Row.subscript.getter();
        if (v58 == 2)
        {
          v30 = 2;
        }

        else
        {
          v30 = v58 == 1;
        }

        v7[*(v2 + 20)] = v30;
        if (qword_101694900 != -1)
        {
          swift_once();
        }

        v31 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
        sub_1000076D4(v31, qword_10177B278);
        Row.subscript.getter();
        v32 = v59;
        if (v59 >> 60 == 15)
        {
          v33 = *v48;
          (*v48)(v14, v9);
          v34 = 0;
          v35 = 0xF000000000000000;
        }

        else
        {
          v36 = v2;
          v37 = v58;
          sub_1000E0A3C();
          if (DataProtocol.isNull.getter())
          {
            v33 = *v48;
            (*v48)(v14, v9);
            sub_100006654(v37, v32);
            v34 = 0;
            v35 = 0xF000000000000000;
          }

          else
          {
            v34 = Data.trimmed.getter();
            v35 = v38;
            sub_100006654(v37, v32);
            v33 = *v48;
            (*v48)(v14, v9);
          }

          v2 = v36;
          v3 = v47;
        }

        v39 = v52;
        v40 = &v52[*(v2 + 24)];
        *v40 = v34;
        v40[1] = v35;
        v7 = v39;
        sub_100C63080(v39, v60, type metadata accessor for LocalFindablePreferences);
        v33(v57, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100A5DF1C(0, v23[2] + 1, 1, v23);
        }

        v42 = v23[2];
        v41 = v23[3];
        v43 = v60;
        if (v42 >= v41 >> 1)
        {
          v45 = v60;
          v23 = sub_100A5DF1C(v41 > 1, v42 + 1, 1, v23);
          v43 = v45;
        }

        v23[2] = v42 + 1;
        sub_100C63080(v43, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42, type metadata accessor for LocalFindablePreferences);
        v44 = v51;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v24 = v44;
      }

      while (v54(v44, 1, v9) != 1);
    }

    sub_1000BC4D4(&qword_1016B9570, &qword_1013E3118);
    result = swift_allocObject();
    *(result + 16) = v23;
  }

  return result;
}

uint64_t sub_100C6234C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000BC4D4(&qword_1016B9560, &unk_1013E30C0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for CloudKitCoordinator.Deletion();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C62458, v2, 0);
}

uint64_t sub_100C62458()
{
  v1 = v0[2];
  v2 = CloudKitChangeSet.recordIDsToDelete.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[9];
    v45 = v0[5];
    sub_101125704(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v11 = *(v2 + 36);
    v46 = v4;
    v44 = v0;
    v39 = v2 + 72;
    v40 = v3;
    v41 = v11;
    v42 = v2 + 64;
    v43 = v2;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v2 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v11 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v47 = v10;
      v15 = *(v45 + 48);
      v48 = v0[10];
      v49 = v5;
      v17 = v0[6];
      v16 = v0[7];
      v18 = *(v2 + 56);
      v19 = *(*(v2 + 48) + 8 * v9);
      v20 = type metadata accessor for CloudKitChangeSet.TombstoneInfo();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v16 + v15, v18 + *(v21 + 72) * v9, v20);
      *v17 = v19;
      (*(v21 + 32))(&v17[*(v45 + 48)], v16 + v15, v20);
      v22 = v19;
      CloudKitChangeSet.TombstoneInfo.recordType.getter();
      v23 = v22;
      v5 = v49;
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      sub_10000B3A8(v17, &qword_1016B9560, &unk_1013E30C0);
      v25 = v49[2];
      v24 = v49[3];
      if (v25 >= v24 >> 1)
      {
        sub_101125704(v24 > 1, v25 + 1, 1);
        v5 = v49;
      }

      v0 = v44;
      v26 = v44[10];
      v27 = v44[8];
      v5[2] = v25 + 1;
      result = (*(v46 + 32))(v5 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25, v26, v27);
      v2 = v43;
      v12 = 1 << *(v43 + 32);
      if (v9 >= v12)
      {
        goto LABEL_28;
      }

      v6 = v42;
      v28 = *(v42 + 8 * v14);
      if ((v28 & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      v11 = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_30;
      }

      v29 = v28 & (-2 << (v9 & 0x3F));
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v14 << 6;
        v13 = v40;
        v31 = (v39 + 8 * v14);
        v32 = v14 + 1;
        while (v32 < (v12 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            result = sub_1000BB408(v9, v41, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v9, v41, 0);
      }

LABEL_4:
      v10 = v47 + 1;
      v9 = v12;
      if (v47 + 1 == v13)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_22:
    v0[11] = v5;
    v35 = sub_100C57874(v0[3]);
    v0[12] = v35;
    v36 = v35;
    v37 = swift_task_alloc();
    v0[13] = v37;
    *v37 = v0;
    v37[1] = sub_100C628E0;
    v38 = v0[4];

    return sub_100C5D1D4(v5, v36);
  }

  return result;
}

uint64_t sub_100C628E0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100C62A0C;
  }

  else
  {
    v6 = sub_100C630F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C62A0C()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C62AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100C5FBE0(a1, v4, v5, v6, v7);
}

uint64_t sub_100C62B88(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C5EFEC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C62C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C62CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C62D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C62DA8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100C5B5F8(a1, v4, v5);
}

uint64_t sub_100C62E1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100C5BBF4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100C62F88(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100C5B7D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C63080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C630FC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v37 = v15;
  v20 = *(v15 + 16);
  v35 = a1;
  v33 = v20;
  v20(&v31 - v18, a1, v14);
  if (*(v1 + 57) == 1)
  {
    v31 = v14;
    v32 = v1;
    static SystemInfo.lockState.getter();
    (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = *(v7 + 8);
    v21(v11, v6);
    v21(v13, v6);
    if (v39 == v38)
    {
      v22 = v37;
      v23 = v19;
      v24 = v31;
      (*(v37 + 8))(v23, v31);
      v25 = type metadata accessor for TaskPriority();
      v26 = v36;
      (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
      v27 = v34;
      v33(v34, v35, v24);
      v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      (*(v22 + 32))(v29 + v28, v27, v24);
      *(v29 + ((v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;

      sub_1008CE048(0, 0, v26, &unk_1013E3348, v29);

      return sub_10000B3A8(v26, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v32, v19, sub_100C640C8);
      return (*(v37 + 8))(v19, v31);
    }
  }

  else
  {
    sub_100C640C8();
    return (*(v37 + 8))(v19, v14);
  }
}

uint64_t sub_100C63640(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v37 = v15;
  v20 = *(v15 + 16);
  v35 = a1;
  v33 = v20;
  v20(&v31 - v18, a1, v14);
  if (*(v1 + 53) == 1)
  {
    v31 = v14;
    v32 = v1;
    static SystemInfo.lockState.getter();
    (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = *(v7 + 8);
    v21(v11, v6);
    v21(v13, v6);
    if (v39 == v38)
    {
      v22 = v37;
      v23 = v19;
      v24 = v31;
      (*(v37 + 8))(v23, v31);
      v25 = type metadata accessor for TaskPriority();
      v26 = v36;
      (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
      v27 = v34;
      v33(v34, v35, v24);
      v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      (*(v22 + 32))(v29 + v28, v27, v24);
      *(v29 + ((v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;

      sub_1008CE048(0, 0, v26, &unk_1013E3328, v29);

      return sub_10000B3A8(v26, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v32, v19, sub_100C64BD0);
      return (*(v37 + 8))(v19, v31);
    }
  }

  else
  {
    sub_100C64BD0();
    return (*(v37 + 8))(v19, v14);
  }
}

uint64_t sub_100C63B84(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - v5;
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v37 = v15;
  v20 = *(v15 + 16);
  v35 = a1;
  v33 = v20;
  v20(&v31 - v18, a1, v14);
  if (*(v1 + 49) == 1)
  {
    v31 = v14;
    v32 = v1;
    static SystemInfo.lockState.getter();
    (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = *(v7 + 8);
    v21(v11, v6);
    v21(v13, v6);
    if (v39 == v38)
    {
      v22 = v37;
      v23 = v19;
      v24 = v31;
      (*(v37 + 8))(v23, v31);
      v25 = type metadata accessor for TaskPriority();
      v26 = v36;
      (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
      v27 = v34;
      v33(v34, v35, v24);
      v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      (*(v22 + 32))(v29 + v28, v27, v24);
      *(v29 + ((v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;

      sub_1008CE048(0, 0, v26, &unk_1013E3308, v29);

      return sub_10000B3A8(v26, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      sub_100C672C0(v32, v19, sub_100C656D8);
      return (*(v37 + 8))(v19, v31);
    }
  }

  else
  {
    sub_100C656D8();
    return (*(v37 + 8))(v19, v14);
  }
}

uint64_t sub_100C640C8()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  if (*(v0 + 57) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v11 = *(v4 + 8);
    v11(v8, v3);
    v11(v10, v3);
    if (v65 == v67)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 4;
LABEL_6:
      *v12 = v13;
      *(v12 + 4) = 1;
      return swift_willThrow();
    }
  }

  v14 = sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase);
  v15 = *(v14 + 16);
  v16 = type metadata accessor for ObservationDatabase();
  if (v15(v16, v14))
  {

    sub_10020223C();
    swift_allocError();
    v13 = 3;
    goto LABEL_6;
  }

  result = (*(v14 + 112))(v16, v14);
  if (!v1)
  {
    v18 = v15(v16, v14);
    if (!v18)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 2;
      goto LABEL_6;
    }

    v19 = *(v18 + 24);

    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x8000000101363F90;
    Connection.execute(_:)(v20);
    if (!v21)
    {
      sub_100C66AC8();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v22 = Connection.userVersion.getter();
      v23 = v22;
      if (v22 <= 20)
      {
        if (v22 == 20)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          v60 = 0x8000000101363FB0;
          *&v41 = 136446722;
          v58 = v41;
          v42 = v23;
          v59 = v23;
          do
          {
            if (v42 < v23)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v64) = v42 + 1;
            v43 = sub_1000076D4(v62, qword_10177B590);

            v61 = v43;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v63 = v42;
              v48 = v47;
              v65 = v47;
              *v46 = v58;
              v49 = sub_100C661E0();
              v51 = v50;

              v52 = sub_1000136BC(v49, v51, &v65);

              *(v46 + 4) = v52;
              *(v46 + 12) = 1024;
              LODWORD(v52) = v64;
              *(v46 + 14) = v63;
              *(v46 + 18) = 1024;
              *(v46 + 20) = v52;
              _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s migrating schema %d -> %d", v46, 0x18u);
              sub_100007BAC(v48);
              v42 = v63;

              v23 = v59;

              v53 = v52;
            }

            else
            {

              v53 = v64;
            }

            v54 = v53;
            sub_1011BBFD4(v42, v53, v19);
            v65 = 0;
            v66 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v65 = 0xD000000000000016;
            v66 = v60;
            LODWORD(v67) = v54;
            v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v55);

            Connection.run(_:_:)();

            v42 = v54;
          }

          while (v54 != 20);
          sub_100C7014C(type metadata accessor for ObservationDatabase, sub_1011BBDC8);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = v62;
        }

        sub_1000076D4(v32, qword_10177B590);
        swift_retain_n();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v65 = v36;
          *v35 = 136446466;
          v37 = sub_100C661E0();
          v39 = sub_1000136BC(v37, v38, &v65);

          *(v35 + 4) = v39;
          *(v35 + 12) = 1024;

          *(v35 + 14) = 20;

          _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s is available. [schema version %d]", v35, 0x12u);
          sub_100007BAC(v36);
        }

        else
        {
        }

        v56 = *(v2 + 24);
        os_unfair_lock_lock((v56 + 20));
        *(v56 + 16) = 1;
        os_unfair_lock_unlock((v56 + 20));
        v57 = *(v2 + 32);
        LOBYTE(v65) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177B590);
        swift_retain_n();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v65 = v28;
          *v27 = 136446722;
          v29 = sub_100C661E0();
          v31 = sub_1000136BC(v29, v30, &v65);

          *(v27 + 4) = v31;
          *(v27 + 12) = 1024;
          *(v27 + 14) = v23;
          *(v27 + 18) = 1024;

          *(v27 + 20) = 20;

          _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Schema too new! (%d) -- expected <= %d", v27, 0x18u);
          sub_100007BAC(v28);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v40 = v23;
        *(v40 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C64BD0()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  if (*(v0 + 53) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v11 = *(v4 + 8);
    v11(v8, v3);
    v11(v10, v3);
    if (v65 == v67)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 4;
LABEL_6:
      *v12 = v13;
      *(v12 + 4) = 1;
      return swift_willThrow();
    }
  }

  v14 = sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase);
  v15 = *(v14 + 16);
  v16 = type metadata accessor for ItemSharingKeyDatabase();
  if (v15(v16, v14))
  {

    sub_10020223C();
    swift_allocError();
    v13 = 3;
    goto LABEL_6;
  }

  result = (*(v14 + 112))(v16, v14);
  if (!v1)
  {
    v18 = v15(v16, v14);
    if (!v18)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 2;
      goto LABEL_6;
    }

    v19 = *(v18 + 24);

    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x8000000101363F90;
    Connection.execute(_:)(v20);
    if (!v21)
    {
      sub_100C66D70();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v22 = Connection.userVersion.getter();
      v23 = v22;
      if (v22 <= 13)
      {
        if (v22 == 13)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          v60 = 0x8000000101363FB0;
          *&v41 = 136446722;
          v58 = v41;
          v42 = v23;
          v59 = v23;
          do
          {
            if (v42 < v23)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v64) = v42 + 1;
            v43 = sub_1000076D4(v62, qword_10177B590);

            v61 = v43;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v63 = v42;
              v48 = v47;
              v65 = v47;
              *v46 = v58;
              v49 = sub_100C664D8();
              v51 = v50;

              v52 = sub_1000136BC(v49, v51, &v65);

              *(v46 + 4) = v52;
              *(v46 + 12) = 1024;
              LODWORD(v52) = v64;
              *(v46 + 14) = v63;
              *(v46 + 18) = 1024;
              *(v46 + 20) = v52;
              _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s migrating schema %d -> %d", v46, 0x18u);
              sub_100007BAC(v48);
              v42 = v63;

              v23 = v59;

              v53 = v52;
            }

            else
            {

              v53 = v64;
            }

            v54 = v53;
            sub_10031D230(v42, v53, v19);
            v65 = 0;
            v66 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v65 = 0xD000000000000016;
            v66 = v60;
            LODWORD(v67) = v54;
            v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v55);

            Connection.run(_:_:)();

            v42 = v54;
          }

          while (v54 != 13);
          sub_100C7014C(type metadata accessor for ItemSharingKeyDatabase, sub_10031CF3C);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = v62;
        }

        sub_1000076D4(v32, qword_10177B590);
        swift_retain_n();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v65 = v36;
          *v35 = 136446466;
          v37 = sub_100C664D8();
          v39 = sub_1000136BC(v37, v38, &v65);

          *(v35 + 4) = v39;
          *(v35 + 12) = 1024;

          *(v35 + 14) = 13;

          _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s is available. [schema version %d]", v35, 0x12u);
          sub_100007BAC(v36);
        }

        else
        {
        }

        v56 = *(v2 + 32);
        os_unfair_lock_lock((v56 + 20));
        *(v56 + 16) = 1;
        os_unfair_lock_unlock((v56 + 20));
        v57 = *(v2 + 40);
        LOBYTE(v65) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177B590);
        swift_retain_n();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v65 = v28;
          *v27 = 136446722;
          v29 = sub_100C664D8();
          v31 = sub_1000136BC(v29, v30, &v65);

          *(v27 + 4) = v31;
          *(v27 + 12) = 1024;
          *(v27 + 14) = v23;
          *(v27 + 18) = 1024;

          *(v27 + 20) = 13;

          _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Schema too new! (%d) -- expected <= %d", v27, 0x18u);
          sub_100007BAC(v28);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v40 = v23;
        *(v40 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C656D8()
{
  v2 = v0;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  if (*(v0 + 49) == 1)
  {
    static SystemInfo.lockState.getter();
    (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
    sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v11 = *(v4 + 8);
    v11(v8, v3);
    v11(v10, v3);
    if (v65 == v67)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 4;
LABEL_6:
      *v12 = v13;
      *(v12 + 4) = 1;
      return swift_willThrow();
    }
  }

  v14 = sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase);
  v15 = *(v14 + 16);
  v16 = type metadata accessor for StandaloneBeaconDatabase();
  if (v15(v16, v14))
  {

    sub_10020223C();
    swift_allocError();
    v13 = 3;
    goto LABEL_6;
  }

  result = (*(v14 + 112))(v16, v14);
  if (!v1)
  {
    v18 = v15(v16, v14);
    if (!v18)
    {
      sub_10020223C();
      swift_allocError();
      v13 = 2;
      goto LABEL_6;
    }

    v19 = *(v18 + 24);

    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x8000000101363F90;
    Connection.execute(_:)(v20);
    if (!v21)
    {
      sub_100C67018();
      Connection.handle.getter();
      _sqlite3_maintain_load_factor();
      v22 = Connection.userVersion.getter();
      v23 = v22;
      if (v22 <= 1)
      {
        if (v22 == 1)
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
        }

        else
        {
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          v60 = 0x8000000101363FB0;
          *&v41 = 136446722;
          v58 = v41;
          v42 = v23;
          v59 = v23;
          do
          {
            if (v42 < v23)
            {
              __break(1u);
              goto LABEL_39;
            }

            LODWORD(v64) = v42 + 1;
            v43 = sub_1000076D4(v62, qword_10177B590);

            v61 = v43;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v63 = v42;
              v48 = v47;
              v65 = v47;
              *v46 = v58;
              v49 = sub_100C667D0();
              v51 = v50;

              v52 = sub_1000136BC(v49, v51, &v65);

              *(v46 + 4) = v52;
              *(v46 + 12) = 1024;
              LODWORD(v52) = v64;
              *(v46 + 14) = v63;
              *(v46 + 18) = 1024;
              *(v46 + 20) = v52;
              _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s migrating schema %d -> %d", v46, 0x18u);
              sub_100007BAC(v48);
              v42 = v63;

              v23 = v59;

              v53 = v52;
            }

            else
            {

              v53 = v64;
            }

            v54 = v53;
            sub_10084E854(v42, v53, v19);
            v65 = 0;
            v66 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v65 = 0xD000000000000016;
            v66 = v60;
            LODWORD(v67) = v54;
            v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v55);

            Connection.run(_:_:)();

            v42 = v54;
          }

          while (v54 != 1);
          sub_100C7014C(type metadata accessor for StandaloneBeaconDatabase, sub_10084E560);
          if (qword_101694A38 != -1)
          {
            swift_once();
          }

          v32 = v62;
        }

        sub_1000076D4(v32, qword_10177B590);
        swift_retain_n();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v65 = v36;
          *v35 = 136446466;
          v37 = sub_100C667D0();
          v39 = sub_1000136BC(v37, v38, &v65);

          *(v35 + 4) = v39;
          *(v35 + 12) = 1024;

          *(v35 + 14) = 1;

          _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s is available. [schema version %d]", v35, 0x12u);
          sub_100007BAC(v36);
        }

        else
        {
        }

        v56 = *(v2 + 16);
        os_unfair_lock_lock((v56 + 20));
        *(v56 + 16) = 1;
        os_unfair_lock_unlock((v56 + 20));
        v57 = *(v2 + 24);
        LOBYTE(v65) = 1;
        AsyncStreamProvider.yield(value:transaction:)();
      }

      else
      {
        if (qword_101694A38 != -1)
        {
LABEL_39:
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177B590);
        swift_retain_n();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v65 = v28;
          *v27 = 136446722;
          v29 = sub_100C667D0();
          v31 = sub_1000136BC(v29, v30, &v65);

          *(v27 + 4) = v31;
          *(v27 + 12) = 1024;
          *(v27 + 14) = v23;
          *(v27 + 18) = 1024;

          *(v27 + 20) = 1;

          _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Schema too new! (%d) -- expected <= %d", v27, 0x18u);
          sub_100007BAC(v28);
        }

        else
        {
        }

        sub_10020223C();
        swift_allocError();
        *v40 = v23;
        *(v40 + 4) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_100C661E0()
{
  v0 = *(sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase) + 16);
  type metadata accessor for ObservationDatabase();
  v1 = v0();
  if (v1)
  {
    v2 = v1;
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase);
    v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x206574694C515320;
    v6._object = 0xE900000000000076;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 0x302E31352E33;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = *(v2 + 16);
    v10._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 62;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase);
    v12._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206574694C515320;
    v15._object = 0xE900000000000076;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x302E31352E33;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17._object = 0x8000000101363FD0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
  }

  return 60;
}

uint64_t sub_100C664D8()
{
  v0 = *(sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase) + 16);
  type metadata accessor for ItemSharingKeyDatabase();
  v1 = v0();
  if (v1)
  {
    v2 = v1;
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase);
    v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x206574694C515320;
    v6._object = 0xE900000000000076;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 0x302E31352E33;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = *(v2 + 16);
    v10._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 62;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase);
    v12._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206574694C515320;
    v15._object = 0xE900000000000076;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x302E31352E33;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17._object = 0x8000000101363FD0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
  }

  return 60;
}

uint64_t sub_100C667D0()
{
  v0 = *(sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase) + 16);
  type metadata accessor for StandaloneBeaconDatabase();
  v1 = v0();
  if (v1)
  {
    v2 = v1;
    _StringGuts.grow(_:)(22);

    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase);
    v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x206574694C515320;
    v6._object = 0xE900000000000076;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 0x302E31352E33;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = *(v2 + 16);
    v10._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 62;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase);
    v12._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206574694C515320;
    v15._object = 0xE900000000000076;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x302E31352E33;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17._object = 0x8000000101363FD0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
  }

  return 60;
}

uint64_t sub_100C66AC8()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  if (*(v0 + 57) != 1)
  {
    goto LABEL_4;
  }

  static SystemInfo.lockState.getter();
  (*(v2 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1);
  sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  if (v19[1] == v19[0])
  {
    v10 = 4;
  }

  else
  {
LABEL_4:
    v11 = sub_100C70C10(&qword_101699D28, 255, type metadata accessor for ObservationDatabase);
    v12 = *(v11 + 16);
    v13 = type metadata accessor for ObservationDatabase();
    v14 = v12(v13, v11);
    if (v14)
    {
      v15 = *(v14 + 24);

      v16._object = 0x8000000101364020;
      v16._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v16);
    }

    v10 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v18 = v10;
  *(v18 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C66D70()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  if (*(v0 + 53) != 1)
  {
    goto LABEL_4;
  }

  static SystemInfo.lockState.getter();
  (*(v2 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1);
  sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  if (v19[1] == v19[0])
  {
    v10 = 4;
  }

  else
  {
LABEL_4:
    v11 = sub_100C70C10(&qword_101699E80, 255, type metadata accessor for ItemSharingKeyDatabase);
    v12 = *(v11 + 16);
    v13 = type metadata accessor for ItemSharingKeyDatabase();
    v14 = v12(v13, v11);
    if (v14)
    {
      v15 = *(v14 + 24);

      v16._object = 0x8000000101364020;
      v16._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v16);
    }

    v10 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v18 = v10;
  *(v18 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C67018()
{
  v1 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  if (*(v0 + 49) != 1)
  {
    goto LABEL_4;
  }

  static SystemInfo.lockState.getter();
  (*(v2 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v1);
  sub_100C70C10(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  if (v19[1] == v19[0])
  {
    v10 = 4;
  }

  else
  {
LABEL_4:
    v11 = sub_100C70C10(&qword_101699E78, 255, type metadata accessor for StandaloneBeaconDatabase);
    v12 = *(v11 + 16);
    v13 = type metadata accessor for StandaloneBeaconDatabase();
    v14 = v12(v13, v11);
    if (v14)
    {
      v15 = *(v14 + 24);

      v16._object = 0x8000000101364020;
      v16._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v16);
    }

    v10 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v18 = v10;
  *(v18 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100C67430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_100C67528;

  return daemon.getter();
}

uint64_t sub_100C67528(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_100C6770C;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_100C6770C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100C67A44;
  }

  else
  {

    v7 = sub_100C6785C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C6785C()
{
  v17 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for ObservationDatabase();
    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase);
    v8 = CustomStringConvertible.typeDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v15 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100C67B5C;
  v13 = v0[12];

  return v15();
}

uint64_t sub_100C67A44()
{
  if (qword_101694A38 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[5], qword_10177B590);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get FirstUnlockService", v3, 2u);
  }

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C67B5C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100C67C58, 0, 0);
}

uint64_t sub_100C67C58()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  type metadata accessor for Transaction();
  (*(v5 + 16))(v2, v7, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v5 + 32))(v9 + v8, v2, v4);

  static Transaction.asyncTask(name:block:)();

  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C67DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_100C67E98;

  return daemon.getter();
}

uint64_t sub_100C67E98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_100C6807C;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_100C6807C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100C70DA0;
  }

  else
  {

    v7 = sub_100C681CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C681CC()
{
  v17 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for ItemSharingKeyDatabase();
    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase);
    v8 = CustomStringConvertible.typeDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v15 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100C683B4;
  v13 = v0[12];

  return v15();
}

uint64_t sub_100C683B4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100C684B0, 0, 0);
}

uint64_t sub_100C684B0()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  type metadata accessor for Transaction();
  (*(v5 + 16))(v2, v7, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v5 + 32))(v9 + v8, v2, v4);

  static Transaction.asyncTask(name:block:)();

  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C685F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_100C686F0;

  return daemon.getter();
}

uint64_t sub_100C686F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100C70C10(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_100C688D4;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_100C688D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100C70DA0;
  }

  else
  {

    v7 = sub_100C68A24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C68A24()
{
  v17 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for StandaloneBeaconDatabase();
    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase);
    v8 = CustomStringConvertible.typeDescription.getter();
    v10 = sub_1000136BC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
  v15 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100C68C0C;
  v13 = v0[12];

  return v15();
}

uint64_t sub_100C68C0C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100C68D08, 0, 0);
}

uint64_t sub_100C68D08()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  type metadata accessor for Transaction();
  (*(v5 + 16))(v2, v7, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v5 + 32))(v9 + v8, v2, v4);

  static Transaction.asyncTask(name:block:)();

  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C68E50(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C68E70, 0, 0);
}

uint64_t sub_100C68E70()
{
  v15 = v0;
  v1 = v0[3];
  sub_100C640C8();
  v2 = v0[4];
  v3 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    type metadata accessor for ObservationDatabase();
    sub_100C70C10(&qword_1016B97C8, 255, type metadata accessor for ObservationDatabase);
    v9 = CustomStringConvertible.typeDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "SQLite database for %s opened successfully after device unlock.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C69108(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C69128, 0, 0);
}

uint64_t sub_100C69128()
{
  v15 = v0;
  v1 = v0[3];
  sub_100C64BD0();
  v2 = v0[4];
  v3 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    type metadata accessor for ItemSharingKeyDatabase();
    sub_100C70C10(&qword_10169DD88, 255, type metadata accessor for ItemSharingKeyDatabase);
    v9 = CustomStringConvertible.typeDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "SQLite database for %s opened successfully after device unlock.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C693C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100C693E0, 0, 0);
}

uint64_t sub_100C693E0()
{
  v15 = v0;
  v1 = v0[3];
  sub_100C656D8();
  v2 = v0[4];
  v3 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    type metadata accessor for StandaloneBeaconDatabase();
    sub_100C70C10(&qword_1016AB590, 255, type metadata accessor for StandaloneBeaconDatabase);
    v9 = CustomStringConvertible.typeDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "SQLite database for %s opened successfully after device unlock.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C69678()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BED8);
  v1 = sub_1000076D4(v0, qword_10177BED8);
  if (qword_101694DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BEF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C69740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for StandaloneBeaconService.BeaconStreamChange();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_100C69804;

  return sub_100C6B34C();
}

uint64_t sub_100C69804()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 16);

    return _swift_task_switch(sub_100C69954, v8, 0);
  }
}

uint64_t sub_100C69954()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  sub_100C70AD8(v0[3], v2, type metadata accessor for StandaloneBeacon);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Transaction();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  static Transaction.named<A>(_:with:)();

  sub_100C70B40(v2, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C69A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for StandaloneBeaconService.BeaconStreamChange();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_100C69B3C;

  return sub_100C6B34C();
}

uint64_t sub_100C69B3C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 16);

    return _swift_task_switch(sub_100C69C8C, v8, 0);
  }
}

uint64_t sub_100C69C8C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(v2, v4, v6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Transaction();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  static Transaction.named<A>(_:with:)();

  sub_100C70B40(v2, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C69DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StandaloneBeaconService.BeaconStreamChange();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016B97B8, &qword_1013E32E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v29 - v13;
  v15 = sub_1000BC4D4(&qword_1016B97C0, &qword_1013E32F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = v29 - v18;
  result = *(a2 + 152);
  v21 = *(result + 16);
  if (v21)
  {
    v29[2] = v3;
    v30 = v10;
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v24 = result + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v31 = *(v22 + 56);
    v32 = v23;
    v33 = v22;
    v25 = v11;
    v26 = (v22 - 8);
    v27 = a3;
    v28 = (v25 + 8);
    v29[1] = result;

    do
    {
      v32(v19, v24, v15);
      sub_100C70AD8(v27, v9, type metadata accessor for StandaloneBeaconService.BeaconStreamChange);
      AsyncStream.Continuation.yield(_:)();
      (*v26)(v19, v15);
      (*v28)(v14, v30);
      v24 += v31;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_100C6A04C()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return _swift_task_switch(sub_100C6A094, v0, 0);
}

uint64_t sub_100C6A094()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to daemon.getter[1];

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100C6A150;

  return daemon.getter();
}

uint64_t sub_100C6A150(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  v3[8] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[9] = v6;
  v7 = type metadata accessor for Daemon();
  v3[10] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100C70C10(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100C6A338;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C6A338(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v7 = v4[8];

    v8 = v4[4];
    v9 = sub_100C6AB10;
  }

  else
  {
    v9 = sub_100C6A47C;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C6A47C()
{
  v1 = v0[11];
  v2 = v0[12];
  v0[13] = sub_100045EDC();
  v3 = v0[10];
  v4 = v0[8];
  if (v2)
  {

    sub_100C70C10(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100C6AA9C;
  }

  else
  {
    sub_100C70C10(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100C6A5AC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100C6A5AC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];

  return _swift_task_switch(sub_100C6A624, v3, 0);
}

uint64_t sub_100C6A624()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[14] = v3;
  v3[2] = v1;
  v3[3] = sub_100C70C08;
  v3[4] = v2;
  v4 = async function pointer to unsafeBlocking<A>(_:)[1];

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100C6A730;

  return unsafeBlocking<A>(_:)(v5, sub_100C70C58, v3, &type metadata for () + 8);
}

uint64_t sub_100C6A730()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100C6A85C, v3, 0);
}

uint64_t sub_100C6A85C()
{
  v1 = v0[13];
  v2 = v0[6];
  v12 = v1;
  v13 = v0[5];
  v3 = v0[4];
  v0[2] = sub_100A96C40();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100C70C08;
  *(v4 + 24) = v2;

  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  v5 = Publisher<>.sink(receiveValue:)();

  v6 = *(v3 + 136);
  *(v3 + 136) = v5;

  v0[3] = *(v12 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100C70C08;
  *(v7 + 24) = v2;

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30);
  v8 = Publisher<>.sink(receiveValue:)();

  v9 = *(v3 + 144);
  *(v3 + 144) = v8;

  sub_100C6AC30(v3, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C6AA9C()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[4];

  return _swift_task_switch(sub_100C6AB10, v3, 0);
}

uint64_t sub_100C6AB10()
{
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BED8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStore!", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100C6AC30(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100C6ACD0(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100C6AD64;

  return sub_100C6B34C();
}

uint64_t sub_100C6AD64()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C6AFC4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_100C6AED0;
    v5 = v3[6];

    return sub_100C6E15C();
  }
}

uint64_t sub_100C6AED0()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100C6AFC4()
{
  v19 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BED8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to publish beacons to key store: %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100C6AED0;
  v16 = v0[6];

  return sub_100C6E15C();
}

uint64_t sub_100C6B1BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001F280(a1, v22);
  sub_1000BC4D4(a4, a5);
  if (swift_dynamicCast())
  {
    v17 = type metadata accessor for OwnedBeaconRecord;
    v18 = v16;
  }

  else
  {
    sub_10001F280(a1, v22);
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    v17 = type metadata accessor for SharedBeaconRecord;
    v18 = v12;
  }

  v20 = sub_100C70B40(v18, v17);
  return a2(v20);
}

uint64_t sub_100C6B34C()
{
  v1[14] = v0;
  v1[15] = *v0;
  v2 = type metadata accessor for UUID();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = type metadata accessor for KeyGenerationBeaconInfo();
  v1[22] = v7;
  v8 = *(v7 - 8);
  v1[23] = v8;
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100C6B4F4, v0, 0);
}

uint64_t sub_100C6B4F4()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = 0x7365547265646E75;
  *(v0 + 64) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 440))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 72) = _swiftEmptyArrayStorage;
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_100C6B680;

    return daemon.getter();
  }
}

uint64_t sub_100C6B680(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  v3[26] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[27] = v6;
  v7 = type metadata accessor for Daemon();
  v3[28] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[29] = v9;
  v10 = sub_100C70C10(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100C6B874;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C6B874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v7 = *(v3 + 208);
  v8 = *(v3 + 112);

  if (v1)
  {
    v9 = sub_100C6D25C;
  }

  else
  {
    v9 = sub_100C6B9C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C6B9C4()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = v1;
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Flushing beacon cache on beacon added/removed.", v4, 2u);
  }

  v5 = *(v0 + 240);

  return _swift_task_switch(sub_100C6BAE8, v5, 0);
}

uint64_t sub_100C6BAE8()
{
  v1 = *(v0 + 240);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_100C6BBC0;
  v4 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v4, &type metadata for () + 8);
}

uint64_t sub_100C6BBC0()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100C6BCD8, v2, 0);
}

uint64_t sub_100C6BCD8()
{
  v1 = v0[30];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[34] = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[35] = v4;
  *v3 = v0;
  v3[1] = sub_100C6BDC8;
  v5 = v0[30];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100C6BDC8()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100C6BEE0, v2, 0);
}

uint64_t sub_100C6BEE0()
{
  v1 = v0[14];
  v0[36] = v0[10];
  return _swift_task_switch(sub_100C6BF04, v1, 0);
}

uint64_t sub_100C6BF04()
{
  v1 = v0[15];
  v0[11] = v0[36];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[38] = v4;
  v5 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0);
  *v4 = v0;
  v4[1] = sub_100C6C018;
  v6 = v0[35];
  v7 = v0[22];

  return Sequence.asyncMap<A>(_:)(&unk_1013E3370, v2, v6, v7, v5);
}

uint64_t sub_100C6C018(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v5 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[36];
    v8 = v3[37];
    v9 = v3[14];

    return _swift_task_switch(sub_100C6C164, v9, 0);
  }
}

uint64_t sub_100C6C164()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[14];

  sub_10039B578(v4);
  sub_100F855A4(*(v3 + 128));
  if (v2)
  {
    v5 = v0[39];
    v6 = v0[30];
    v7 = v0[9];

    v8 = v0[24];
    v9 = v0[21];
    v11 = v0[18];
    v10 = v0[19];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[22];
    v15 = v0[15];
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    *(v17 + 16) = sub_100C70A6C;
    *(v17 + 24) = v16;
    v0[41] = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    v0[42] = 0;

    sub_10039B578(v18);
    My = type metadata accessor for Feature.FindMy();
    v0[5] = My;
    v0[6] = sub_100C70C10(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
    v20 = sub_1000280DC(v0 + 2);
    (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v0 + 2);
    if (My)
    {
      v21 = v0[30];

      return _swift_task_switch(sub_100C6C48C, v21, 0);
    }

    else
    {
      v22 = async function pointer to daemon.getter[1];
      v23 = swift_task_alloc();
      v0[45] = v23;
      *v23 = v0;
      v23[1] = sub_100C6CA00;

      return daemon.getter();
    }
  }
}

uint64_t sub_100C6C48C()
{
  v1 = *(v0 + 240);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100C6C578;
  v5 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_100C6C578()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100C6C690, v2, 0);
}

uint64_t sub_100C6C690()
{
  v1 = v0[14];
  v0[44] = v0[13];
  return _swift_task_switch(sub_100C6C6B0, v1, 0);
}

uint64_t sub_100C6C6B0()
{
  v3 = v0[44];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[23];
    v6 = v0[20];
    v30 = _swiftEmptyArrayStorage;
    sub_10003301C(0, v4, 0);
    v7 = *(v3 + 16);
    if (!v7)
    {
      goto LABEL_20;
    }

    v27 = v5;
    v8 = _swiftEmptyArrayStorage;
    v2 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = v0[42];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[15];
    v13 = *(v6 + 72);
    sub_100C70AD8(v3 + v2, v11, type metadata accessor for SharedBeaconRecord);
    sub_100C6DDEC(v11, v10);
    if (v9)
    {
      sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
    }

    v29 = v13;
    sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
    v1 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    v5 = v1 + 1;
    if (v1 >= v7 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v16 = v0[24];
      v8[2] = v5;
      v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v17 = *(v27 + 72);
      sub_100C70BA0(v16, v8 + v28 + v17 * v1, type metadata accessor for KeyGenerationBeaconInfo);
      if (v4 == 1)
      {
        break;
      }

      v1 = v3 + v29 + v2;
      v2 = 1;
      while (1)
      {
        v7 = *(v3 + 16);
        if (v2 >= v7)
        {
          break;
        }

        v21 = v0[24];
        v22 = v0[21];
        v23 = v0[15];
        sub_100C70AD8(v1, v22, type metadata accessor for SharedBeaconRecord);
        sub_100C6DDEC(v22, v21);
        sub_100C70B40(v0[21], type metadata accessor for SharedBeaconRecord);
        v30 = v8;
        v25 = v8[2];
        v24 = v8[3];
        v5 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_10003301C(v24 > 1, v25 + 1, 1);
        }

        ++v2;
        v26 = v0[24];
        v8[2] = v5;
        sub_100C70BA0(v26, v8 + v28 + v17 * v25, type metadata accessor for KeyGenerationBeaconInfo);
        v1 += v29;
        if (v4 == v2)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_10003301C(v7 > 1, v5, 1);
      v8 = v30;
    }

LABEL_10:
    v18 = v0[44];
  }

  else
  {
    v15 = v0[44];

    v8 = _swiftEmptyArrayStorage;
  }

  sub_10039B578(v8);
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[45] = v20;
  *v20 = v0;
  v20[1] = sub_100C6CA00;

  return daemon.getter();
}

uint64_t sub_100C6CA00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 360);
  v5 = *v1;
  v3[46] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[47] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100C70C10(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100C6CBB8;
  v10 = v3[29];
  v11 = v3[28];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100C6CBB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v15 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[46];
    v6 = v3[41];
    v7 = v3[39];
    v8 = v3[14];
    v9 = v3[9];

    v10 = sub_100C6D2E8;
    v11 = v8;
  }

  else
  {
    v12 = v3[46];
    v13 = v3[14];

    v10 = sub_100C6CD20;
    v11 = v13;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100C6CD20()
{
  v1 = v0[19];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = v0[9];
  v0[50] = v3;
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_100C6CDD4;
  v5 = v0[48];
  v6 = v0[19];

  return sub_100990D88(v6, v3);
}

uint64_t sub_100C6CDD4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  v2[52] = v0;

  v5 = v2[50];
  if (v0)
  {
    v6 = v2[41];
    v7 = v2[39];
    v8 = v2[19];
    v9 = v2[16];
    v10 = v2[17];
    v11 = v2[14];
    (*(v10 + 8))(v8, v9);

    v12 = sub_100C6D37C;
    v13 = v11;
  }

  else
  {
    v14 = v2[19];
    v15 = v2[16];
    v16 = v2[17];
    v17 = v2[14];
    v18 = *(v16 + 8);
    v2[53] = v18;
    v2[54] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v14, v15);

    v12 = sub_100C6CF7C;
    v13 = v17;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100C6CF7C()
{
  v31 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[39];
  sub_1000076D4(v0[32], qword_10177BED8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v28 = v0[53];
    v29 = v0[54];
    v5 = v0[41];
    v6 = v0[39];
    v7 = v0[18];
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 134218755;
    v11 = *(v6 + 16);

    *(v9 + 4) = v11;

    *(v9 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v9 + 14) = v12;

    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v13 = getuid();
    sub_1000294F0(v13);
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v28(v7, v8);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v9 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Added %ld owned and %ld standalone beacon to key store for user: %{private,mask.hash}s.", v9, 0x2Au);
    sub_100007BAC(v10);
  }

  else
  {
    v18 = v0[41];
    v19 = v0[39];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v20 = v0[48];
  v21 = v0[30];
  static DarwinNotification.post(name:)();

  v22 = v0[24];
  v23 = v0[21];
  v25 = v0[18];
  v24 = v0[19];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100C6D25C()
{
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C6D2E8()
{
  v1 = v0[30];

  v2 = v0[49];
  v3 = v0[24];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C6D37C()
{
  v1 = v0[48];
  v2 = v0[30];

  v3 = v0[52];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C6D41C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord();
  v2[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C6D53C, 0, 0);
}

uint64_t sub_100C6D53C()
{
  v20 = v0;
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BED8);
  sub_100C70AD8(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100C70B40(v7, type metadata accessor for OwnedBeaconRecord);
    v15 = sub_1000136BC(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Adding owned beacon to key store: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100C70B40(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_100C6D7D4;
  v17 = v0[3];

  return sub_100D5F8B4();
}

uint64_t sub_100C6D7D4(char a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100C6D8D4, 0, 0);
}

uint64_t sub_100C6D8D4()
{
  v18 = *(v0 + 96);
  v1 = *(v0 + 72);
  v19 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = getuid();
  sub_1000294F0(v9);
  v10 = *(v1 + 20);
  v11 = *(v3 + 20);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v2 + v11, v6 + v10, v12);
  (*(v5 + 16))(v4, v6 + *(v1 + 32), v7);
  if (v18)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  sub_100C70BA0(v2, v8, type metadata accessor for BeaconIdentifier);
  v14 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(v5 + 32))(v8 + v14[5], v4, v7);
  v15 = (v8 + v14[6]);
  *v15 = xmmword_10138BBF0;
  v15[1] = 0u;
  v15[2] = 0u;
  *(v8 + v14[7]) = v13;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100C6DA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = type metadata accessor for StandaloneBeacon();
  v5 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BED8);
  sub_100C70AD8(a1, v7, type metadata accessor for StandaloneBeacon);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100C70B40(v7, type metadata accessor for StandaloneBeacon);
    v17 = sub_1000136BC(v14, v16, &v35);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Adding standalone beacon to key store: %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    sub_100C70B40(v7, type metadata accessor for StandaloneBeacon);
  }

  v18 = getuid();
  sub_1000294F0(v18);
  v19 = *(type metadata accessor for BeaconIdentifier() + 20);
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 16))(a2 + v19, a1, v20);
  v21 = v34;
  v22 = *(v34 + 32);
  v23 = type metadata accessor for KeyGenerationBeaconInfo();
  v24 = v23[5];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 16))(a2 + v24, a1 + v22, v25);
  v26 = (a1 + *(v21 + 40));
  v27 = v26[2];
  v28 = v26[3];
  v29 = v26[4];
  v30 = v26[5];
  v31 = a2 + v23[6];
  *v31 = v27;
  *(v31 + 8) = v28;
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  *(v31 + 32) = xmmword_10138BBF0;
  *(a2 + v23[7]) = 1;
  sub_100017D5C(v27, v28);
  return sub_100017D5C(v29, v30);
}

double sub_100C6DDEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BED8);
  sub_100C70AD8(a1, v7, type metadata accessor for SharedBeaconRecord);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = v4[5];
    type metadata accessor for UUID();
    sub_100C70C10(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100C70B40(v7, type metadata accessor for SharedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v33);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Adding shared beacon to key store: %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    sub_100C70B40(v7, type metadata accessor for SharedBeaconRecord);
  }

  if (*(a1 + v4[16]) == 5)
  {
    v19 = 3;
  }

  else
  {
    v20 = *(a1 + v4[11]);
    v21 = *(a1 + v4[12]);
    if (v20 == 76 && (v22 = v21 == 8233, v21 = 8233, !v22) || sub_100E0EA64(v20, v21))
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }
  }

  v23 = getuid();
  v24 = v32;
  sub_1000294F0(v23);
  v25 = v4[5];
  v26 = *(type metadata accessor for BeaconIdentifier() + 20);
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(v24 + v26, a1 + v25, v27);
  v28 = type metadata accessor for KeyGenerationBeaconInfo();
  sub_100A8AD0C(v24 + v28[5]);
  v29 = (v24 + v28[6]);
  result = 0.0;
  *v29 = xmmword_10138BBF0;
  v29[1] = 0u;
  v29[2] = 0u;
  *(v24 + v28[7]) = v19;
  return result;
}

uint64_t sub_100C6E15C()
{
  v1[8] = v0;
  v2 = type metadata accessor for KeySyncMetadata();
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v1[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for KeyAlignmentRecord();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v1[18] = *(v10 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v1[22] = v12;
  *v12 = v1;
  v12[1] = sub_100C6E334;

  return daemon.getter();
}

uint64_t sub_100C6E334(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  v3[23] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[24] = v6;
  v7 = type metadata accessor for Daemon();
  v3[25] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100C70C10(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[26] = v9;
  v10 = sub_100C70C10(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100C6E528;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C6E528(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 216) = a1;

  v7 = v3[23];
  if (v1)
  {

    v9 = v4[20];
    v8 = v4[21];
    v10 = v4[19];
    v11 = v4[15];
    v12 = v4[12];
    v13 = v4[10];

    v14 = *(v6 + 8);

    return v14();
  }

  else
  {

    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    v4[28] = v17;
    *v17 = v6;
    v17[1] = sub_100C6E718;

    return daemon.getter();
  }
}

uint64_t sub_100C6E718(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;
  v3[29] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[30] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100C70C10(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100C6E8D0;
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100C6E8D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[31] = a1;

  v7 = v4[29];
  if (v1)
  {
    a1 = v4[8];

    v8 = sub_100C6F78C;
  }

  else
  {

    v8 = sub_100C6EA28;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100C6EA28()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_100C6EB14;
  v5 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_100C6EB14()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100C6EC2C, v2, 0);
}

uint64_t sub_100C6EC2C()
{
  v1 = v0[8];
  v0[33] = v0[7];
  return _swift_task_switch(sub_100C6EC4C, v1, 0);
}

uint64_t sub_100C6EC4C()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    sub_101123D4C(0, v2, 0);
    v4 = v1 + 32;
    do
    {
      v5 = *(v0 + 168);
      sub_10001F280(v4, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v6);
      (*(*(*(v7 + 8) + 8) + 32))(v6);
      sub_100007BAC((v0 + 16));
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_101123D4C(v8 > 1, v9 + 1, 1);
      }

      v10 = *(v0 + 168);
      v11 = *(v0 + 128);
      _swiftEmptyArrayStorage[2] = v9 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v10, v11);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v12 = *(v0 + 264);

  *(v0 + 272) = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage[2];
  *(v0 + 280) = v13;
  if (v13)
  {
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    v16 = *(v15 + 16);
    v15 += 16;
    v17 = *(v15 + 64);
    *(v0 + 344) = v17;
    *(v0 + 288) = *(v15 + 56);
    *(v0 + 296) = v16;
    v18 = *(v0 + 248);
    v19 = *(v0 + 160);
    *(v0 + 304) = 0;
    *(v0 + 312) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v19, _swiftEmptyArrayStorage + ((v17 + 32) & ~v17), v14);

    return _swift_task_switch(sub_100C6EEE0, v18, 0);
  }

  else
  {

    v20 = *(v0 + 248);
    v21 = *(v0 + 216);

    v23 = *(v0 + 160);
    v22 = *(v0 + 168);
    v24 = *(v0 + 152);
    v25 = *(v0 + 120);
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100C6EEE0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = (*(v0 + 344) + 24) & ~*(v0 + 344);
  (*(v0 + 296))(v3, *(v0 + 160), v6);
  v8 = swift_allocObject();
  *(v0 + 320) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 328) = v10;
  *v10 = v0;
  v10[1] = sub_100C6F038;
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100C70948, v8, v12);
}

uint64_t sub_100C6F038()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_100C6F164, v3, 0);
}

uint64_t sub_100C6F164()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    sub_10000B3A8(v2, &qword_10169F328, &unk_1013CB040);
    v3 = *(v0 + 304) + 1;
    if (v3 == *(v0 + 280))
    {
      v4 = *(v0 + 272);

      v5 = *(v0 + 248);
      v6 = *(v0 + 216);

      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 152);
      v10 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = *(v0 + 80);

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      v30 = *(v0 + 296);
      v31 = *(v0 + 248);
      v32 = *(v0 + 160);
      v33 = *(v0 + 128);
      v34 = *(v0 + 272) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 288) * v3;
      v35 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 304) = v3;
      *(v0 + 312) = v35;
      v30(v32, v34, v33);

      return _swift_task_switch(sub_100C6EEE0, v31, 0);
    }
  }

  else
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 296);
    v17 = *(v0 + 160);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    sub_100C70BA0(v2, v19, type metadata accessor for KeyAlignmentRecord);
    v16(v20, v17, v18);
    v22 = *(v19 + *(v1 + 28));
    v23 = (v20 + v21[6]);
    v23[3] = &type metadata for PrimaryIndex;
    v23[4] = sub_10002A2B8();
    *v23 = v22;
    v24 = *(v1 + 32);
    v25 = v21[7];
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 16))(v20 + v25, v19 + v24, v26);
    *(v20 + v21[5]) = 8;
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    v27[1] = sub_100C6F470;
    v28 = *(v0 + 216);
    v29 = *(v0 + 80);

    return sub_1010CDAC4(v29);
  }
}

uint64_t sub_100C6F470()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 64);
  if (v0)
  {

    sub_100C70B40(v5, type metadata accessor for KeySyncMetadata);
    v7 = sub_100C70DBC;
  }

  else
  {
    sub_100C70B40(v5, type metadata accessor for KeySyncMetadata);
    v7 = sub_100C6F5F4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C6F5F4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_100C70B40(*(v0 + 120), type metadata accessor for KeyAlignmentRecord);
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 304) + 1;
  if (v4 == *(v0 + 280))
  {
    v5 = *(v0 + 272);

    v6 = *(v0 + 248);
    v7 = *(v0 + 216);

    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 296);
    v17 = *(v0 + 248);
    v18 = *(v0 + 160);
    v19 = *(v0 + 128);
    v20 = *(v0 + 272) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 288) * v4;
    v21 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 304) = v4;
    *(v0 + 312) = v21;
    v16(v18, v20, v19);

    return _swift_task_switch(sub_100C6EEE0, v17, 0);
  }
}

uint64_t sub_100C6F78C()
{
  if (qword_101694DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BED8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v6, 2u);
  }

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100C6F8F4()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for StandaloneBeaconService.BeaconStreamChange()
{
  result = qword_1016B9778;
  if (!qword_1016B9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C6F9BC()
{
  result = type metadata accessor for StandaloneBeacon();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100C6FA30(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100C6FAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StandaloneBeaconService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100C6FB9C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100C6FC8C()
{
  if (qword_1016949F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  v3 = sub_1000076D4(v2, qword_10177B500);
  sub_100C63B84(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100C6FD34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_100C6A04C();
}

uint64_t sub_100C6FDC0()
{
  v1 = *v0;
  type metadata accessor for StandaloneBeaconService();
  sub_100C70C10(&qword_10169F450, v2, type metadata accessor for StandaloneBeaconService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100C6FEB8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEF0);
  sub_1000076D4(v0, qword_10177BEF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C6FF54(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C685F8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C70074()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C693C0(v4, v0 + v3);
}

uint64_t sub_100C7014C(void (*a1)(void), void (*a2)(char *, char *, char *))
{
  v4 = type metadata accessor for URLResourceValues();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = [objc_opt_self() defaultManager];
  a1(0);
  a2(v18, v16, v13);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v19 fileExistsAtPath:v20];

  if (a1)
  {
    v21 = v31;
    URL.setResourceValues(_:)();
    if (v21)
    {
      goto LABEL_9;
    }

    v31 = 0;
  }

  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v19 fileExistsAtPath:v22];

  if (v23)
  {
    v24 = v31;
    URL.setResourceValues(_:)();
    if (v24)
    {
      goto LABEL_9;
    }

    v31 = 0;
  }

  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v19 fileExistsAtPath:v25];

  if (v26)
  {
    URL.setResourceValues(_:)();
  }

LABEL_9:

  (*(v29 + 8))(v7, v30);
  v27 = *(v9 + 8);
  v27(v13, v8);
  v27(v16, v8);
  return (v27)(v18, v8);
}

uint64_t sub_100C7048C(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C67DA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C705AC()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C69108(v4, v0 + v3);
}

uint64_t sub_100C70684(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C67430(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100C707A4()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100C68E50(v4, v0 + v3);
}

uint64_t sub_100C7087C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100C70948@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100E7401C(v4, a1);
}

uint64_t sub_100C709BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100C6D41C(a1, a2);
}

uint64_t sub_100C70A8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = v2();
  if (v1)
  {
    return swift_allocError();
  }

  return result;
}

uint64_t sub_100C70AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C70B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C70BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C70C10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100C70C58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_100B20114(v1, v2, v3);
}

uint64_t sub_100C70D08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100C6ACD0(v2);
}

void *sub_100C70DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101123BB8(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_10125403C(*(*(a1 + 48) + v5));
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_101123BB8((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1000BB408(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t sub_100C70FE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000035D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100C710B4(uint64_t a1)
{
  v3 = type metadata accessor for P256.Signing.PublicKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
  v14 = v13[1];
  v20 = *v13;
  v21 = v14;
  sub_100017D5C(v20, v14);
  result = P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  if (!v1)
  {
    P256.Signing.PrivateKey.publicKey.getter();
    (*(v9 + 8))(v12, v8);
    v16 = P256.Signing.PublicKey.compactRepresentation.getter();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    if (v18 >> 60 == 15)
    {
      sub_1001BAEE0();
      swift_allocError();
      *v19 = 18;
      return swift_willThrow();
    }

    else
    {
      v20 = v16;
      v21 = v18;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      return sub_100006654(v16, v18);
    }
  }

  return result;
}

Swift::Int sub_100C712F8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v24[0] = v8 + 32;
  v24[1] = v9;
  result = _minimumMergeRunLength(_:)(v9);
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v14 = -1;
      v15 = 1;
      v16 = v8 + 32;
      do
      {
        v17 = *(v8 + 32 + 24 * v15);
        v18 = v14;
        v19 = v16;
        do
        {
          if (v17 >= *v19)
          {
            break;
          }

          v20 = *(v19 + 32);
          *(v19 + 24) = *v19;
          *(v19 + 40) = *(v19 + 16);
          *v19 = v17;
          *(v19 + 8) = v20;
          v19 -= 24;
        }

        while (!__CFADD__(v18++, 1));
        ++v15;
        v16 += 24;
        --v14;
      }

      while (v15 != v9);
    }
  }

  else
  {
    v11 = result;
    v12 = v9 >> 1;
    if (v9 >= 2)
    {
      sub_1000BC4D4(a3, a4);
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v13[2] = v12;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v22[0] = v13 + 4;
    v22[1] = v12;
    sub_100D099E8(v22, v23, v24, v11);
    v13[2] = 0;
  }

  *a1 = v8;
  return result;
}

Swift::Int sub_100C71470(void **a1)
{
  v2 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B31FE4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100D08BF0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100C71518(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B31FF8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100D0BEE0(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100C71650()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF08);
  sub_1000076D4(v0, qword_10177BF08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C716D0@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_7:
    v9 = sub_100268E34(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_1000148E8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C71778()
{
  v1 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2 = *(v0 + *(v1 + 32));
  if (*(v2 + 16) < 4uLL)
  {
    sub_100C70DC0(v2);
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80);
    v6 = BidirectionalCollection<>.joined(separator:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v3 = 91;
    v5 = 0xE100000000000000;
  }

  else
  {
    v19 = *(v2 + 16);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v4;
  }

  _StringGuts.grow(_:)(45);
  v11._object = 0x800000010136FF10;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  type metadata accessor for UUID();
  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3A7365707974202CLL;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v3;
  v14._object = v5;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x69726F697270202CLL;
  v15._object = 0xEC000000203A7974;
  String.append(_:)(v15);
  v18 = *(v0 + *(v1 + 40));
  _print_unlocked<A, B>(_:_:)();
  v16._countAndFlagsBits = 93;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_100C71A10()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 40)) == 1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v2 = qword_10177B348;
    v0[5] = qword_10177B348;
    v3 = async function pointer to unsafeBlocking<A>(_:)[1];

    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_100C71BD8;
    v5 = v0 + 3;
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v2 = qword_10177B348;
    v0[7] = qword_10177B348;
    v6 = async function pointer to unsafeBlocking<A>(_:)[1];

    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_100C71D74;
    v5 = v0 + 2;
  }

  return unsafeBlocking<A>(_:)(v5, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_100C71BD8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100C71CF0, 0, 0);
}

uint64_t sub_100C71CF0()
{
  v1 = sub_101074B1C(*(v0 + 24));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C71D74()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100C71E8C, 0, 0);
}

uint64_t sub_100C71E8C()
{
  v1 = sub_101074B00(*(v0 + 16));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C71F10()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100C71F9C;

  return sub_100C719F0();
}

uint64_t sub_100C71F9C(double a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100C7209C, 0, 0);
}

uint64_t sub_100C7209C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073C10(*(v0 + 16));

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!is_mul_ok(v2, 0x3CuLL))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v0 + 32) / (60 * v2);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100C72204()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 24) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100C72304;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100C72304()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100C7241C, 0, 0);
}

uint64_t sub_100C7241C()
{
  v1 = sub_101074B38(*(v0 + 16));

  v3 = *(v0 + 8);

  v2.n128_f64[0] = v1 * 86400.0;
  return v3(v2);
}

uint64_t sub_100C724A0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C72560, 0, 0);
}

uint64_t sub_100C72560()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  (*(v2 + 16))(v1, v4 + *(v5 + 48), v3);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v0[8] = qword_10177B348;
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_100C72698;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_1000DFF78, v6, &type metadata for Configuration);
}

uint64_t sub_100C72698()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100C727B0, 0, 0);
}

uint64_t sub_100C727B0()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_101074B54(v0[2]);

  DateInterval.init(start:duration:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C72874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100C72908(uint64_t a1)
{
  v2 = sub_100D14770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C72944(uint64_t a1)
{
  v2 = sub_100D14770();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C72980@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B9EB8, &qword_1013E3CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D14770();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_100C72AFC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B9EA8, &qword_1013E3CC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D14770();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100C72C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for KeyDropJoinToken(0);
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v73 - v8;
  v82 = type metadata accessor for HashAlgorithm();
  v10 = *(v82 - 8);
  v11 = v10[8];
  __chkstk_darwin(v82);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for SharingCircleSecretValue();
  v95 = *(v88 - 8);
  v13 = *(v95 + 64);
  __chkstk_darwin(v88);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v73 - v18;
  v20 = type metadata accessor for SymmetricKey256();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v89 = v19;
  v84 = v21 + 56;
  v85 = v20;
  v83 = v22;
  (v22)(v19, 1, 1);
  if (qword_101694778 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177AE28);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v87 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v24, v25, "Initializing DelegatedKeychain with %ld secretValues.", v27, 0xCu);
      v9 = v87;
    }

    else
    {
    }

    v28 = v95;
    v91 = *(a1 + 16);
    if (!v91)
    {
      break;
    }

    v93 = 0;
    v29 = 0;
    v97 = a1 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v77 = enum case for HashAlgorithm.sha256(_:);
    v76 = (v10 + 13);
    v75 = (v10 + 1);
    v96 = _swiftEmptyArrayStorage;
    v79 = a1;
    v80 = (v21 + 32);
    v92 = 0xF000000000000000;
    v21 = v88;
    v10 = v91;
    v78 = v7;
    while (v29 < *(a1 + 16))
    {
      sub_100D11DC8(v97 + *(v28 + 72) * v29, v15, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_100D12974(v15, v9, type metadata accessor for KeyDropJoinToken);
          sub_100D11DC8(v9, v7, type metadata accessor for KeyDropJoinToken);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_100A5B698(0, v96[2] + 1, 1, v96);
          }

          v32 = v96[2];
          v31 = v96[3];
          if (v32 >= v31 >> 1)
          {
            v96 = sub_100A5B698(v31 > 1, v32 + 1, 1, v96);
          }

          sub_100018D00(v9, type metadata accessor for KeyDropJoinToken);
          v33 = v96;
          v96[2] = v32 + 1;
          sub_100D12974(v7, v33 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v32, type metadata accessor for KeyDropJoinToken);
          v28 = v95;
          goto LABEL_8;
        }

LABEL_7:
        sub_100018D00(v15, type metadata accessor for SharingCircleSecretValue);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v39 = v89;
        sub_10000B3A8(v89, &qword_101698360, &qword_1013E35F0);
        v40 = v85;
        (*v80)(v39, v15, v85);
        v41 = v40;
        v10 = v91;
        v83(v39, 0, 1, v41);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_7;
      }

      v34 = *v15;
      v7 = v15[1];
      sub_100017D5C(*v15, v7);
      sub_10002EA98(57, v34, v7, &v98);
      a1 = v98;
      v35 = v99;
      v36 = v99 >> 62;
      if ((v99 >> 62) > 1)
      {
        v37 = v94;
        if (v36 != 2)
        {
          goto LABEL_58;
        }

        v43 = *(v98 + 16);
        v42 = *(v98 + 24);
        v44 = __OFSUB__(v42, v43);
        v38 = v42 - v43;
        if (v44)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v37 = v94;
        if (v36)
        {
          LODWORD(v38) = HIDWORD(v98) - v98;
          if (__OFSUB__(HIDWORD(v98), v98))
          {
            goto LABEL_46;
          }

          v38 = v38;
        }

        else
        {
          v38 = BYTE6(v99);
        }
      }

      if (v38 != 57)
      {
        goto LABEL_58;
      }

      v45 = sub_100A7A194(v98, v99);
      if (v37)
      {
        v94 = v37;
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v21 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_101385D80;
        v98 = v94;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v10 = String.init<A>(describing:)();
        v67 = v66;
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = sub_100008C00();
        *(v65 + 32) = v10;
        *(v65 + 40) = v67;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v68 = swift_allocError();
        *v69 = 0;
        swift_willThrow();

        goto LABEL_62;
      }

      v9 = v45;
      v46 = sub_100A7829C(v45, 0);
      v94 = 0;
      v10 = v46;
      v21 = v47;
      CCECCryptorRelease();
      v48 = v21 >> 62;
      v90 = v7;
      if ((v21 >> 62) > 1)
      {
        if (v48 != 2)
        {
          goto LABEL_64;
        }

        v51 = v10[2];
        v50 = v10[3];
        v44 = __OFSUB__(v50, v51);
        v49 = v50 - v51;
        if (v44)
        {
          goto LABEL_47;
        }
      }

      else if (v48)
      {
        LODWORD(v49) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_48;
        }

        v49 = v49;
      }

      else
      {
        v49 = BYTE6(v21);
      }

      if (v49 != 28)
      {
        if (v48 == 1)
        {
          LODWORD(v48) = HIDWORD(v10) - v10;
          if (!__OFSUB__(HIDWORD(v10), v10))
          {
            v72 = v48;
            goto LABEL_65;
          }

          __break(1u);
        }

        if (v48 == 2)
        {
          v64 = v10[2];
          v63 = v10[3];
          v72 = v63 - v64;
          if (__OFSUB__(v63, v64))
          {
            __break(1u);
LABEL_58:
            sub_100016590(a1, v35);
            goto LABEL_63;
          }
        }

        else
        {
          v72 = BYTE6(v21);
        }

        while (1)
        {
LABEL_65:
          sub_100018350();
          v68 = swift_allocError();
          *v71 = 28;
          *(v71 + 8) = v72;
          *(v71 + 16) = 0;
          swift_willThrow();
          sub_100016590(v10, v21);
LABEL_62:
          v98 = 0;
          v99 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v70._countAndFlagsBits = 0xD000000000000021;
          v70._object = 0x800000010134CB30;
          String.append(_:)(v70);
          v100 = v68;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
LABEL_63:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_64:
          v72 = 0;
        }
      }

      v52 = v34;
      sub_100016590(a1, v35);
      v53 = v81;
      v54 = v82;
      (*v76)(v81, v77, v82);
      v55 = Data.hash(algorithm:)();
      v57 = v56;
      sub_100006654(v93, v92);
      sub_100016590(v10, v21);
      sub_100016590(v52, v90);
      (*v75)(v53, v54);
      v92 = v57;
      v93 = v55;
      a1 = v79;
      v7 = v78;
      v9 = v87;
      v21 = v88;
      v28 = v95;
      v10 = v91;
LABEL_8:
      if (v10 == ++v29)
      {
        goto LABEL_43;
      }
    }

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
    swift_once();
  }

  v93 = 0;
  v96 = _swiftEmptyArrayStorage;
  v92 = 0xF000000000000000;
LABEL_43:

  v58 = v74;
  *v74 = v96;
  v59 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  result = sub_1000D2AD8(v89, v58 + *(v59 + 20), &qword_101698360, &qword_1013E35F0);
  v61 = (v58 + *(v59 + 24));
  v62 = v92;
  *v61 = v93;
  v61[1] = v62;
  return result;
}

uint64_t sub_100C73710(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C73814, v1, 0);
}

uint64_t sub_100C73814()
{
  v21 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 28);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Restore member sharing circle keys: share-id: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
  }

  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_100C73AB0;
  v17 = v0[2];
  v18 = v0[3];

  return sub_100CAA29C(v17);
}

uint64_t sub_100C73AB0(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 148) = a1;

  return _swift_task_switch(sub_100C73BC8, v3, 0);
}

uint64_t sub_100C73BC8()
{
  v34 = v0;
  if (*(v0 + 148) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100C74004;
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_100CA8F80(v2, v3, 0);
  }

  else
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 16);
    sub_100D11DC8(v8, *(v0 + 64), type metadata accessor for MemberSharingCircle);
    sub_100D11DC8(v8, v7, type metadata accessor for MemberSharingCircle);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v14 = 136446723;
      v15 = *(v12 + *(v13 + 40));
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v17 = 0xE500000000000000;
          v16 = 0x746E65732ELL;
        }

        else
        {
          if (v15 == 4)
          {
            v16 = 0xD000000000000013;
          }

          else
          {
            v16 = 0x64656C6961662ELL;
          }

          if (v15 == 4)
          {
            v17 = 0x800000010134B830;
          }

          else
          {
            v17 = 0xE700000000000000;
          }
        }
      }

      else if (*(v12 + *(v13 + 40)))
      {
        if (v15 == 1)
        {
          v16 = 0x657470656363612ELL;
        }

        else
        {
          v16 = 0x747365757165722ELL;
        }

        if (v15 == 1)
        {
          v17 = 0xE900000000000064;
        }

        else
        {
          v17 = 0xEA00000000006465;
        }
      }

      else
      {
        v17 = 0xEB00000000646574;
        v16 = 0x70656363616E752ELL;
      }

      v19 = *(v0 + 56);
      v20 = *(v0 + 48);
      sub_100018D00(*(v0 + 64), type metadata accessor for MemberSharingCircle);
      v21 = sub_1000136BC(v16, v17, v33);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v22 = *(v20 + 28);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100018D00(v19, type metadata accessor for MemberSharingCircle);
      v26 = sub_1000136BC(v23, v25, v33);

      *(v14 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v9, v10, "Member circle to restore is not allowed to restore keys, state: %{public}s, Share-id: %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v18 = *(v0 + 56);

      sub_100018D00(v18, type metadata accessor for MemberSharingCircle);
      sub_100018D00(v12, type metadata accessor for MemberSharingCircle);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v27 = 19;
    swift_willThrow();
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);
    v31 = *(v0 + 40);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100C74004()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100C7456C;
  }

  else
  {
    v6 = sub_100C74130;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C74130()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 144) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_100D11DC8(v2, v6 + v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_100C7423C;
  v8 = *(v0 + 24);

  return sub_100C862AC(v6);
}

uint64_t sub_100C7423C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v7 = *v2;
  v8 = (*(*v2 + 144) + 32) & ~*(*v2 + 144);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  swift_setDeallocating();
  sub_100018D00(v6 + v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  v9 = *(v3 + 24);
  if (v1)
  {
    v10 = sub_100C745F8;
  }

  else
  {
    v10 = sub_100C743CC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100C743CC()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    v5 = v0[5];
    v6 = *(v1 + 32);

    sub_100018D00(v5, type metadata accessor for SharingCircleKeyManager.Instruction);

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = v0[5];
    v10 = v0[16];

    sub_1001BAEE0();
    swift_allocError();
    *v11 = 16;
    swift_willThrow();
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[5];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100C7456C()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C745F8()
{
  sub_100018D00(v0[5], type metadata accessor for SharingCircleKeyManager.Instruction);
  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C746A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C747A4, v1, 0);
}

uint64_t sub_100C747A4()
{
  v21 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 28);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Download keys: share-id: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100018D00(v7, type metadata accessor for MemberSharingCircle);
  }

  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_100C74A40;
  v17 = v0[2];
  v18 = v0[3];

  return sub_100CAA29C(v17);
}

uint64_t sub_100C74A40(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 148) = a1;

  return _swift_task_switch(sub_100C74B58, v3, 0);
}

uint64_t sub_100C74B58()
{
  v34 = v0;
  if (*(v0 + 148) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100C74F94;
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_100CA8F80(v2, v3, 1);
  }

  else
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 16);
    sub_100D11DC8(v8, *(v0 + 64), type metadata accessor for MemberSharingCircle);
    sub_100D11DC8(v8, v7, type metadata accessor for MemberSharingCircle);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v14 = 136446723;
      v15 = *(v12 + *(v13 + 40));
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v17 = 0xE500000000000000;
          v16 = 0x746E65732ELL;
        }

        else
        {
          if (v15 == 4)
          {
            v16 = 0xD000000000000013;
          }

          else
          {
            v16 = 0x64656C6961662ELL;
          }

          if (v15 == 4)
          {
            v17 = 0x800000010134B830;
          }

          else
          {
            v17 = 0xE700000000000000;
          }
        }
      }

      else if (*(v12 + *(v13 + 40)))
      {
        if (v15 == 1)
        {
          v16 = 0x657470656363612ELL;
        }

        else
        {
          v16 = 0x747365757165722ELL;
        }

        if (v15 == 1)
        {
          v17 = 0xE900000000000064;
        }

        else
        {
          v17 = 0xEA00000000006465;
        }
      }

      else
      {
        v17 = 0xEB00000000646574;
        v16 = 0x70656363616E752ELL;
      }

      v19 = *(v0 + 56);
      v20 = *(v0 + 48);
      sub_100018D00(*(v0 + 64), type metadata accessor for MemberSharingCircle);
      v21 = sub_1000136BC(v16, v17, v33);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v22 = *(v20 + 28);
      type metadata accessor for UUID();
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100018D00(v19, type metadata accessor for MemberSharingCircle);
      v26 = sub_1000136BC(v23, v25, v33);

      *(v14 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v9, v10, "Member circle to restore is not allowed to download keys, state: %{public}s, Share-id: %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v18 = *(v0 + 56);

      sub_100018D00(v18, type metadata accessor for MemberSharingCircle);
      sub_100018D00(v12, type metadata accessor for MemberSharingCircle);
    }

    sub_1001BAEE0();
    swift_allocError();
    *v27 = 19;
    swift_willThrow();
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);
    v31 = *(v0 + 40);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100C74F94()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100D148F8;
  }

  else
  {
    v6 = sub_100C750C0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C750C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 144) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_100D11DC8(v2, v6 + v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_100C751CC;
  v8 = *(v0 + 24);

  return sub_100C862AC(v6);
}

uint64_t sub_100C751CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v7 = *v2;
  v8 = (*(*v2 + 144) + 32) & ~*(*v2 + 144);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  swift_setDeallocating();
  sub_100018D00(v6 + v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  v9 = *(v3 + 24);
  if (v1)
  {
    v10 = sub_100D148DC;
  }

  else
  {
    v10 = sub_100D14900;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100C7535C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C75420, v2, 0);
}

uint64_t sub_100C75420()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v18 = *(v0 + 24);
  v17 = sub_100B04978(&off_101608470);
  v5 = v1 + v3[7];
  UUID.init()();
  v6 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = v3[5];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v9(v1 + v7, v4, v8);
  v9(v1 + v3[6], v18, v8);
  *(v1 + v3[8]) = v17;
  *(v1 + v3[9]) = 5;
  *(v1 + v3[10]) = 1;
  *(v1 + v3[11]) = v6;
  static Date.trustedNow.getter(v1 + v3[12]);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  *(v0 + 88) = v11;
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 64) = v13;
  *(v13 + 16) = xmmword_101385D80;
  sub_100D11DC8(v1, v13 + v12, type metadata accessor for SharingCircleKeyManager.Instruction);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_100C7561C;
  v15 = *(v0 + 32);

  return sub_100C862AC(v13);
}

uint64_t sub_100C7561C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v2 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 88);
  v7 = *(v2 + 32);
  if (v0)
  {
    swift_setDeallocating();
    sub_100018D00(v5 + ((v6 + 32) & ~v6), type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_deallocClassInstance();
    v8 = sub_100C75878;
  }

  else
  {

    swift_setDeallocating();
    sub_100018D00(v5 + ((v6 + 32) & ~v6), type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_deallocClassInstance();
    v8 = sub_100C757F4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C757F4()
{
  sub_100018D00(*(v0 + 56), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C75878()
{
  sub_100018D00(v0[7], type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_100C758FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C75A04, v1, 0);
}

uint64_t sub_100C75A04()
{
  v1 = v0[2];
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = *(v1 + v2[7]);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v30 = sub_100B04978((&off_10164ED98)[v3]);
  v8 = *(v7 + 16);
  v8(v4, v1 + v2[5], v6);
  v8(v5, v1 + v2[6], v6);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v10 = v0[4];
  v11 = sub_1000076D4(v10, qword_10177A900);
  v8(v9, v11, v10);
  v28 = 0x4000201u >> (8 * v3);
  v29 = 8u >> (v3 & 0xF);
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  v19 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  v20 = *(v17 + 32);
  v20(v12 + v13[5], v14, v18);
  v20(v12 + v13[6], v15, v18);
  v20(v12 + v13[7], v16, v18);
  *(v12 + v13[8]) = v30;
  *(v12 + v13[9]) = v28;
  *(v12 + v13[10]) = 1;
  *(v12 + v13[11]) = v19;
  static Date.trustedNow.getter(v12 + v13[12]);
  if (v29)
  {
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_100C75CF4;
    v22 = v0[10];
    v23 = v0[3];

    return sub_100CAAC60(v22);
  }

  else
  {
    v25 = swift_task_alloc();
    v0[12] = v25;
    *v25 = v0;
    v25[1] = sub_100C75E20;
    v26 = v0[10];
    v27 = v0[3];

    return sub_100CB753C(v26, 0);
  }
}

uint64_t sub_100C75CF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v7 = v4[3];
    v8 = sub_100C75FFC;
  }

  else
  {
    v7 = v4[3];
    v4[13] = a1;
    v8 = sub_100C75F4C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C75E20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v7 = v4[3];
    v8 = sub_100C75FFC;
  }

  else
  {
    v7 = v4[3];
    v4[13] = a1;
    v8 = sub_100C75F4C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C75F4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_100018D00(v0[10], type metadata accessor for SharingCircleKeyManager.Instruction);

  v4 = v0[1];
  v5 = v0[13];

  return v4(v5);
}

uint64_t sub_100C75FFC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_100018D00(v0[10], type metadata accessor for SharingCircleKeyManager.Instruction);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_100C760A8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100C76138, v1, 0);
}

uint64_t sub_100C76138()
{
  v1 = v0[12];
  v2 = type metadata accessor for OwnerSharingCircle();
  v0[15] = v2;
  v3 = *(v2 + 20);
  if (*(v1 + *(v2 + 28)) == 3)
  {
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_100C76274;
    v6 = v0[13];
    v5 = v0[14];

    return sub_100C7B39C(v5, v1 + v3);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_100C7671C;
    v9 = v0[13];

    return sub_100C7BA0C((v0 + 2), v1 + v3);
  }
}

uint64_t sub_100C76274()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1003C2A74;
  }

  else
  {
    v6 = sub_100C763A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C763A0()
{
  v1 = *(v0[12] + *(v0[15] + 32));
  v0[18] = v1;
  v0[11] = v1;
  v2 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[19] = v3;
  v4 = sub_1000BC4D4(&qword_1016B9BF0, &qword_1013E3790);
  v5 = type metadata accessor for OwnerPeerTrust();
  v6 = sub_1000041A4(&qword_1016B9BF8, &qword_1016B9BF0, &qword_1013E3790);
  *v3 = v0;
  v3[1] = sub_100C764E0;
  v7 = v0[13];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E37A0, v7, v4, v5, v6);
}

uint64_t sub_100C764E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[18];
    v8 = v3[13];

    return _swift_task_switch(sub_100C76624, v8, 0);
  }
}

uint64_t sub_100C76624()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 104);
  *(v4 + 32) = v3;
  v5 = sub_1005C6BF0(sub_100D13DB8, v4, v1);
  v6 = *(v0 + 160);
  v7 = *(v0 + 112);

  sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  v8 = *(v0 + 112);

  v10 = *(v0 + 8);
  if (!v2)
  {
    v9 = v5;
  }

  return v10(v9);
}

uint64_t sub_100C7671C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 112);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 104);

    return _swift_task_switch(sub_100C76868, v8, 0);
  }
}

uint64_t sub_100C76868()
{
  v1 = *(v0[12] + *(v0[15] + 32));
  v0[23] = v1;
  v0[10] = v1;
  v2 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[24] = v3;
  v4 = sub_1000BC4D4(&qword_1016B9BF0, &qword_1013E3790);
  v5 = type metadata accessor for OwnerPeerTrust();
  v6 = sub_1000041A4(&qword_1016B9BF8, &qword_1016B9BF0, &qword_1013E3790);
  *v3 = v0;
  v3[1] = sub_100C769A8;
  v7 = v0[13];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3788, v7, v4, v5, v6);
}

uint64_t sub_100C769A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[23];
    v8 = v3[13];

    return _swift_task_switch(sub_100C76AEC, v8, 0);
  }
}

uint64_t sub_100C76AEC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[12];
  v3 = v0[13];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v0 + 2;
  v5[4] = v4;
  v6 = sub_1005C6BF0(sub_100D13CEC, v5, v1);
  v7 = v0[25];
  sub_1001BAF34((v0 + 2));

  v8 = v0[14];

  v10 = v0[1];
  if (!v2)
  {
    v9 = v6;
  }

  return v10(v9);
}

uint64_t sub_100C76BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C76CA4, 0, 0);
}

uint64_t sub_100C76CA4()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C76CC8, v1, 0);
}

uint64_t sub_100C76CC8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100D148FC;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v9);
}

uint64_t sub_100C76E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnerSharingCircle();
  result = sub_100CA1724(a1, a2, (a3 + *(v9 + 20)), a4);
  if (!v4)
  {
    v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
    return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
  }

  return result;
}

uint64_t sub_100C76EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C76FC4, 0, 0);
}

uint64_t sub_100C76FC4()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C76FE8, v1, 0);
}

uint64_t sub_100C76FE8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100B4189C;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v9);
}

uint64_t sub_100C77160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for OwnerSharingCircle();
  result = sub_100CA2188(a1, a2, (a3 + *(v9 + 20)), a4);
  if (!v4)
  {
    v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
    return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
  }

  return result;
}

uint64_t sub_100C77218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 244) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = *(type metadata accessor for KeyDropInterface.KeyPackage(0) - 8);
  *(v6 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v6 + 128) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100C7734C, v5, 0);
}

uint64_t sub_100C7734C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  sub_100D13B44();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = *(v0 + 160);
  v7 = *(v0 + 128);
  v35 = *(v0 + 244);
  v8 = *(v0 + 72);
  v37 = *(v0 + 80);

  v36 = *(v0 + 40);
  *(v0 + 168) = v36;
  v34 = sub_10112A6E4(&off_101608B90);
  v9 = type metadata accessor for MemberSharingCircle();
  v10 = v9[7];
  v11 = v7[5];
  v12 = type metadata accessor for UUID();
  *(v0 + 176) = v12;
  v13 = *(*(v12 - 8) + 16);
  v13(v6 + v11, v8 + v10, v12);
  v13(v6 + v7[6], v8 + v9[6], v12);
  v13(v6 + v7[7], v8 + v9[8], v12);
  v14 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  *(v6 + v7[8]) = v34;
  *(v6 + v7[9]) = v35;
  *(v6 + v7[10]) = 1;
  *(v6 + v7[11]) = v14;
  static Date.trustedNow.getter(v6 + v7[12]);
  v15 = (v37 + *(type metadata accessor for MemberPeerTrust() + 36));
  *(v0 + 184) = *v15;
  *(v0 + 192) = v15[1];
  v16 = *(v36 + 16);
  *(v0 + 200) = v16;
  if (v16)
  {
    v17 = *(v0 + 96);
    *(v0 + 240) = *(v17 + 80);
    *(v0 + 208) = *(v17 + 72);
    *(v0 + 216) = 0;
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    *(v0 + 208);
    sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)), v20, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100CA0FC8(v20, v18, v19, v21);
    v22 = swift_task_alloc();
    *(v0 + 224) = v22;
    *v22 = v0;
    v22[1] = sub_100C77B9C;
    v23 = *(v0 + 160);
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);

    return sub_100C8DBA8(v24, v23);
  }

  else
  {

    v27 = *(v0 + 152);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);
    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_100C77B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_100C78328;
  }

  else
  {
    v6 = sub_100C77CC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C77CC8()
{
  v71 = v0;
  v1 = *(v0 + 120);
  sub_100018D00(*(v0 + 112), type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100018D00(v1, type metadata accessor for KeyDropInterface.KeyPackage);
  v2 = *(v0 + 216) + 1;
  if (v2 == *(v0 + 200))
  {
LABEL_2:
    v3 = *(v0 + 168);

    v4 = *(v0 + 152);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 232);
    while (1)
    {
      *(v0 + 216) = v2;
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      v46 = *(v0 + 112);
      v45 = *(v0 + 120);
      sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 208) * v2, v45, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100CA0FC8(v45, v43, v44, v46);
      if (!v12)
      {
        break;
      }

      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 152);
      v48 = *(v0 + 160);
      v50 = *(v0 + 136);
      v49 = *(v0 + 144);
      v51 = *(v0 + 120);
      v52 = *(v0 + 104);
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177BF08);
      sub_100D11DC8(v48, v47, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v48, v49, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v48, v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v51, v52, type metadata accessor for KeyDropInterface.KeyPackage);
      swift_errorRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v13 = *(v0 + 176);
        v68 = v55;
        v15 = *(v0 + 144);
        v14 = *(v0 + 152);
        v16 = *(v0 + 128);
        v69 = *(v0 + 120);
        v66 = *(v0 + 136);
        v67 = *(v0 + 104);
        v17 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v17 = 136447747;
        log = v54;
        v18 = sub_100C71778();
        v20 = v19;
        sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
        v21 = sub_1000136BC(v18, v20, v70);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2160;
        *(v17 + 14) = 1752392040;
        *(v17 + 22) = 2081;
        v22 = *(v16 + 20);
        sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
        v26 = sub_1000136BC(v23, v25, v70);

        *(v17 + 24) = v26;
        *(v17 + 32) = 2160;
        *(v17 + 34) = 1752392040;
        *(v17 + 42) = 2081;
        v27 = v66 + *(v16 + 24);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
        v31 = sub_1000136BC(v28, v30, v70);

        *(v17 + 44) = v31;
        *(v17 + 52) = 2080;
        v32 = sub_10125403C(*v67);
        v34 = v33;
        sub_100018D00(v67, type metadata accessor for KeyDropInterface.KeyPackage);
        v35 = sub_1000136BC(v32, v34, v70);

        *(v17 + 54) = v35;
        *(v17 + 62) = 2082;
        swift_getErrorValue();
        v37 = *(v0 + 16);
        v36 = *(v0 + 24);
        v38 = *(v0 + 32);
        v39 = Error.localizedDescription.getter();
        v41 = sub_1000136BC(v39, v40, v70);

        *(v17 + 64) = v41;
        _os_log_impl(&_mh_execute_header, log, v68, "Failed to save key initial key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\n packageType: %s, error: %{public}s.", v17, 0x48u);
        swift_arrayDestroy();

        v42 = v69;
      }

      else
      {
        v56 = *(v0 + 144);
        v57 = *(v0 + 152);
        v58 = *(v0 + 136);
        v59 = *(v0 + 120);
        v60 = *(v0 + 104);

        sub_100018D00(v60, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v57, type metadata accessor for SharingCircleKeyManager.Instruction);
        v42 = v59;
      }

      sub_100018D00(v42, type metadata accessor for KeyDropInterface.KeyPackage);
      v12 = 0;
      v2 = *(v0 + 216) + 1;
      if (v2 == *(v0 + 200))
      {
        goto LABEL_2;
      }
    }

    v61 = swift_task_alloc();
    *(v0 + 224) = v61;
    *v61 = v0;
    v61[1] = sub_100C77B9C;
    v62 = *(v0 + 160);
    v63 = *(v0 + 112);
    v64 = *(v0 + 88);

    return sub_100C8DBA8(v63, v62);
  }
}

uint64_t sub_100C78328()
{
  v70 = v0;
  sub_100018D00(*(v0 + 112), type metadata accessor for KeyDropInterface.KeyPackage);
  v1 = *(v0 + 232);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BF08);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v7, type metadata accessor for KeyDropInterface.KeyPackage);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 176);
    v67 = v10;
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v68 = *(v0 + 120);
    v65 = *(v0 + 136);
    v66 = *(v0 + 104);
    v15 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v15 = 136447747;
    log = v9;
    v16 = sub_100C71778();
    v18 = v17;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, v69);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v20 = *(v14 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v69);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v25 = v65 + *(v14 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v65, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v69);

    *(v15 + 44) = v29;
    *(v15 + 52) = 2080;
    v30 = sub_10125403C(*v66);
    v32 = v31;
    sub_100018D00(v66, type metadata accessor for KeyDropInterface.KeyPackage);
    v33 = sub_1000136BC(v30, v32, v69);

    *(v15 + 54) = v33;
    *(v15 + 62) = 2082;
    swift_getErrorValue();
    v35 = *(v0 + 16);
    v34 = *(v0 + 24);
    v36 = *(v0 + 32);
    v37 = Error.localizedDescription.getter();
    v39 = sub_1000136BC(v37, v38, v69);

    *(v15 + 64) = v39;
    _os_log_impl(&_mh_execute_header, log, v67, "Failed to save key initial key package %{public}s,\nsharing-id: %{private,mask.hash}s,\n beacon-id: %{private,mask.hash}s,\n packageType: %s, error: %{public}s.", v15, 0x48u);
    swift_arrayDestroy();

    v40 = v68;
  }

  else
  {
    v41 = *(v0 + 144);
    v42 = *(v0 + 152);
    v43 = *(v0 + 136);
    v44 = *(v0 + 120);
    v45 = *(v0 + 104);

    sub_100018D00(v45, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.Instruction);
    v40 = v44;
  }

  sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
  v46 = *(v0 + 216) + 1;
  if (v46 == *(v0 + 200))
  {
    v51 = *(v0 + 168);

    v52 = *(v0 + 152);
    v54 = *(v0 + 136);
    v53 = *(v0 + 144);
    v56 = *(v0 + 112);
    v55 = *(v0 + 120);
    v57 = *(v0 + 104);
    sub_100018D00(*(v0 + 160), type metadata accessor for SharingCircleKeyManager.Instruction);

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    *(v0 + 216) = v46;
    v47 = *(v0 + 184);
    v48 = *(v0 + 192);
    v50 = *(v0 + 112);
    v49 = *(v0 + 120);
    sub_100D11DC8(*(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 208) * v46, v49, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100CA0FC8(v49, v47, v48, v50);
    v60 = swift_task_alloc();
    *(v0 + 224) = v60;
    *v60 = v0;
    v60[1] = sub_100C77B9C;
    v61 = *(v0 + 160);
    v62 = *(v0 + 112);
    v63 = *(v0 + 88);

    return sub_100C8DBA8(v62, v61);
  }
}

uint64_t sub_100C78964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a2;
  v4[12] = v3;
  v4[10] = a1;
  v4[13] = *v3;
  v6 = *(*(sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for KeyDropJoinToken(0);
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[18] = v10;
  *v10 = v4;
  v10[1] = sub_100C78AC4;

  return sub_100C7BA0C((v4 + 2), a3);
}

uint64_t sub_100C78AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_100C78DE4;
  }

  else
  {
    v6 = sub_100C78BF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C78BF0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[6];

  sub_1001BAF34((v0 + 2));
  *(swift_task_alloc() + 16) = v5;
  sub_1012BB600(sub_100D14930, v6, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(v0[14], &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v7 = 13;
    swift_willThrow();
LABEL_5:
    v11 = v0[17];
    v12 = v0[14];

    v13 = v0[1];
    goto LABEL_6;
  }

  v8 = v0[17];
  v9 = v0[10];
  sub_100D12974(v0[14], v8, type metadata accessor for KeyDropJoinToken);
  sub_100C710B4(v8);
  v10 = v0[17];
  if (v1)
  {
    sub_100018D00(v10, type metadata accessor for KeyDropJoinToken);
    goto LABEL_5;
  }

  v15 = v0[14];
  v16 = v0[17];
  sub_100018D00(v10, type metadata accessor for KeyDropJoinToken);

  v13 = v0[1];
LABEL_6:

  return v13();
}

uint64_t sub_100C78DE4()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C78E54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101698360, &qword_1013E35F0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for SymmetricKey256();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for PeerCommunicationIdentifier();
  v3[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for OwnerPeerTrust();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101697798, &unk_10138C4F0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v3[18] = *(v15 + 64);
  v3[19] = swift_task_alloc();
  v16 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v3[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v18 = type metadata accessor for OwnerSharingCircle();
  v3[22] = v18;
  v19 = *(v18 - 8);
  v3[23] = v19;
  v20 = *(v19 + 64) + 15;
  v3[24] = swift_task_alloc();
  v21 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v3[25] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_100C79140, v2, 0);
}

uint64_t sub_100C79140()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  URLComponents.init()();
  v4 = *(v1 + 20);
  *(v0 + 280) = v4;
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_100C791F8;
  v6 = *(v0 + 208);
  v7 = *(v0 + 40);

  return sub_100C7B39C(v6, v3 + v4);
}

uint64_t sub_100C791F8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100C79F8C;
  }

  else
  {
    v6 = sub_100C79324;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C79324()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_100C79348, v1, 0);
}

uint64_t sub_100C79348()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  (*(v4 + 16))(v2, *(v0 + 32) + *(v0 + 280), v3);
  v5 = *(v4 + 80);
  *(v0 + 284) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v3);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_100C794B8;
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D14928, v7, v11);
}

uint64_t sub_100C794B8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100C795E4, v3, 0);
}

uint64_t sub_100C795E4()
{
  v31 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 24);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    sub_1001BAEE0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = type metadata accessor for URLComponents();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_100018D00(v3, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v7 = *(v0 + 208);
    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 192);
  sub_100D12974(v2, v18, type metadata accessor for OwnerSharingCircle);
  v19 = *(v18 + *(v1 + 32));
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = *(v0 + 284);
  v22 = sub_1003A85FC(*(v19 + 16), 0);
  v23 = sub_1003CC2CC(&v30, v22 + ((v21 + 32) & ~v21), v20, v19);

  sub_1000128F8();
  if (v23 != v20)
  {
    __break(1u);
LABEL_8:
    v22 = _swiftEmptyArrayStorage;
  }

  *(v0 + 256) = v22;
  *(v0 + 16) = v22;
  v24 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v25 = swift_task_alloc();
  *(v0 + 264) = v25;
  v26 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v27 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v25 = v0;
  v25[1] = sub_100C7992C;
  v28 = *(v0 + 96);
  v29 = *(v0 + 40);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E3770, v29, v26, v28, v27);
}

uint64_t sub_100C7992C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *v2;
  *(*v2 + 272) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 256);
    v8 = *(v3 + 40);

    return _swift_task_switch(sub_100C79A70, v8, 0);
  }
}

void sub_100C79A70()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[12];
    v4 = v0[13];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[14];
      v8 = v0[10];
      v7 = v0[11];
      sub_100D11DC8(v0[34] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for OwnerPeerTrust);
      v9 = *(v5 + 28);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v6) = sub_10098BFC0(v6 + v9, v7);
      sub_100018D00(v7, type metadata accessor for PeerCommunicationIdentifier);
      if (v6)
      {
        break;
      }

      ++v3;
      sub_100018D00(v0[14], type metadata accessor for OwnerPeerTrust);
      if (v2 == v3)
      {
        v10 = v0[34];
        goto LABEL_7;
      }
    }

    v18 = v0[34];
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[13];
    v25 = v0[7];
    v26 = v0[8];
    v27 = v0[6];

    sub_100D12974(v21, v22, type metadata accessor for OwnerPeerTrust);
    (*(v24 + 56))(v22, 0, 1, v23);
    sub_10000B3A8(v22, &qword_101697798, &unk_10138C4F0);
    sub_1000D2A70(v19 + *(v20 + 20), v27, &qword_101698360, &qword_1013E35F0);
    if ((*(v26 + 48))(v27, 1, v25) == 1)
    {
      sub_10000B3A8(v0[6], &qword_101698360, &qword_1013E35F0);
LABEL_12:
      v11 = v0[26];
      v12 = v0[24];
      v17 = 21;
      v16 = v0[3];
      goto LABEL_13;
    }

    v28 = v0[25];
    v29 = v0[26];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    if (*(v29 + *(v28 + 24) + 8) >> 60 == 15)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      goto LABEL_12;
    }

    v42 = v0[26];
    v43 = v0[24];
    v52 = v0[21];
    v53 = v0[19];
    v54 = v0[15];
    v55 = v0[14];
    v45 = v0[8];
    v44 = v0[9];
    v51 = v0[7];
    v56 = v0[11];
    v57 = v0[6];
    v46 = v0[3];
    v47 = SymmetricKey256.data.getter();
    v49 = v48;
    v50 = Data.base64EncodedString(options:)(0);
    sub_100016590(v47, v49);
    String.append(_:)(v50);

    URLComponents.fragment.setter();
    (*(v45 + 8))(v44, v51);
    sub_100018D00(v43, type metadata accessor for OwnerSharingCircle);
    sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v41 = v0[1];
  }

  else
  {
LABEL_7:
    v11 = v0[26];
    v12 = v0[24];
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[3];

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_10000B3A8(v13, &qword_101697798, &unk_10138C4F0);
    v17 = 14;
LABEL_13:
    sub_1001BAEE0();
    swift_allocError();
    *v30 = v17;
    swift_willThrow();
    sub_100018D00(v12, type metadata accessor for OwnerSharingCircle);
    v31 = type metadata accessor for URLComponents();
    (*(*(v31 - 8) + 8))(v16, v31);
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v32 = v0[26];
    v33 = v0[24];
    v34 = v0[21];
    v35 = v0[19];
    v37 = v0[14];
    v36 = v0[15];
    v38 = v0[11];
    v39 = v0[9];
    v40 = v0[6];

    v41 = v0[1];
  }

  v41();
}

uint64_t sub_100C79F8C()
{
  v1 = v0[3];
  v2 = type metadata accessor for URLComponents();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100C7A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C7A174, 0, 0);
}

uint64_t sub_100C7A174()
{
  v1 = *(*(v0 + 32) + 120);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C7A198, v1, 0);
}

uint64_t sub_100C7A198()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100D148FC;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D1492C, v6, v9);
}

uint64_t sub_100C7A310(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  v5 = type metadata accessor for KeyDropJoinToken(0);
  v3[61] = v5;
  v6 = *(v5 - 8);
  v3[62] = v6;
  v7 = *(v6 + 64) + 15;
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  v3[65] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v10 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v3[67] = v10;
  v11 = *(v10 - 8);
  v3[68] = v11;
  v12 = *(v11 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v3[72] = v14;
  v15 = *(v14 - 8);
  v3[73] = v15;
  v16 = *(v15 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v17 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v3[76] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v19 = *(v8 + 20);
  v20 = swift_task_alloc();
  v3[78] = v20;
  *v20 = v3;
  v20[1] = sub_100C7A598;

  return sub_100C7BA0C((v3 + 46), a1 + v19);
}