uint64_t sub_100328588()
{
  v1 = *(v0 + 144);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 160) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032863C, 0, 0);
}

uint64_t sub_10032863C()
{
  if (!v0[20])
  {
    v29 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for DatabaseError.notConnected(_:), v29);
    swift_willThrow();
    goto LABEL_11;
  }

  v39 = v0[20];
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(v2, v5, v6);
  v7 = (v2 + *(v1 + 20));
  *v7 = v4;
  v7[1] = v3;
  sub_100005F6C(v4, v3);
  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v38 = type metadata accessor for Table();
  sub_10000A6F0(v38, qword_1005E00C0);
  (*(v8 + 104))(v9, enum case for OnConflict.replace(_:), v10);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v11 = *(type metadata accessor for Setter() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v37 = *(v11 + 72);
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8308 != -1)
  {
    swift_once();
  }

  v13 = v0[17];
  v14 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v14, qword_1005E0600);
  v0[2] = URL.absoluteString.getter();
  v0[3] = v15;
  <- infix<A>(_:_:)();

  if (qword_1005A8310 != -1)
  {
    swift_once();
  }

  v16 = v0[19];
  v17 = v0[15];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  v21 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v21, qword_1005E0618);
  v22 = *v7;
  v23 = v7[1];
  v0[4] = *v7;
  v0[5] = v23;
  sub_100005F6C(v22, v23);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  QueryType.insert(or:_:)();

  (*(v18 + 8))(v19, v20);
  Connection.run(_:)();
  v24 = v16;
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[13];
  if (v24)
  {

    (*(v26 + 8))(v27, v28);
    sub_10033C3F8(v25, type metadata accessor for ShareInvitationRecord);
LABEL_11:
    v31 = v0[17];
    v32 = v0[15];
    v33 = v0[12];

    v34 = v0[1];
    goto LABEL_13;
  }

  v35 = v0[12];

  (*(v26 + 8))(v27, v28);
  sub_10033C3F8(v25, type metadata accessor for ShareInvitationRecord);

  v34 = v0[1];
LABEL_13:

  return v34();
}

uint64_t sub_100328B18(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for Delete();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100328C9C, 0, 0);
}

uint64_t sub_100328C9C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100328CC0, v1, 0);
}

uint64_t sub_100328CC0()
{
  v1 = *(v0 + 120);
  sub_10000A0A4();
  *(v0 + 128) = 0;
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100328D94, v2, 0);
}

uint64_t sub_100328D94()
{
  v1 = *(v0 + 120);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 136) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100328E48, 0, 0);
}

uint64_t sub_100328E48()
{
  if (!v0[17])
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[9], qword_1005E00C0);
  if (qword_1005A8308 != -1)
  {
    swift_once();
  }

  v22 = v0[16];
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v21 = v0[6];
  v7 = v0[4];
  v8 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v8, qword_1005E0600);
  v0[2] = URL.absoluteString.getter();
  v0[3] = v9;
  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v6 + 8))(v5, v21);
  QueryType.delete()();
  (*(v2 + 8))(v3, v4);
  Connection.run(_:)();
  v10 = v0[13];
  if (v22)
  {
    (*(v10 + 8))(v0[14], v0[12]);

LABEL_9:
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[8];

    v16 = v0[1];
    goto LABEL_11;
  }

  v17 = v0[11];
  v18 = v0[8];
  v19 = v0[14];
  (*(v10 + 8))();

  v16 = v0[1];
LABEL_11:

  return v16();
}

uint64_t sub_100329164(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for Fence.TriggerPosition();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for FenceTriggerRecord();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v11 = type metadata accessor for Row();
  v3[26] = v11;
  v12 = *(v11 - 8);
  v3[27] = v12;
  v13 = *(v12 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v16 = *(v15 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v17 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[38] = v17;
  v18 = *(v17 - 8);
  v3[39] = v18;
  v19 = *(v18 + 64) + 15;
  v3[40] = swift_task_alloc();
  v20 = type metadata accessor for Table();
  v3[41] = v20;
  v21 = *(v20 - 8);
  v3[42] = v21;
  v22 = *(v21 + 64) + 15;
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003294BC, 0, 0);
}

uint64_t sub_1003294BC()
{
  v1 = *(*(v0 + 104) + 112);
  *(v0 + 352) = v1;
  return _swift_task_switch(sub_1003294E0, v1, 0);
}

uint64_t sub_1003294E0()
{
  v1 = *(v0 + 352);
  sub_10000A0A4();
  *(v0 + 360) = 0;
  v2 = *(v0 + 352);

  return _swift_task_switch(sub_100329684, v2, 0);
}

uint64_t sub_100329684()
{
  v1 = *(v0 + 352);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 368) = Database.readConnection.getter();

  return _swift_task_switch(sub_100329738, 0, 0);
}

uint64_t sub_100329738()
{
  if (v0[46])
  {
    if (qword_1005A8160 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[41], qword_1005E00F0);
    if (qword_1005A8458 != -1)
    {
      swift_once();
    }

    v156 = v0[45];
    v1 = v0[42];
    v3 = v0[40];
    v2 = v0[41];
    v4 = v0[39];
    v143 = v0[43];
    v148 = v0[38];
    v5 = v0[37];
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[12];
    v123 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v123, qword_1005E09F0);
    Fence.ID.uuid.getter();
    == infix<A>(_:_:)();
    v9 = *(v6 + 8);
    v9(v5, v7);
    QueryType.where(_:)();
    (*(v4 + 8))(v3, v148);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v10 = sub_10000331C(v0 + 2);
    (*(v1 + 16))(v10, v143, v2);
    Connection.prepare(_:)();
    if (!v156)
    {
      v122 = v9;
      sub_100004984(v0 + 2);
      v25 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
      sub_1002396C0(0, v25 & ~(v25 >> 63), 0);
      v26 = _swiftEmptyArrayStorage;
      result = dispatch thunk of _AnySequenceBox._makeIterator()();
      if (v25 < 0)
      {
        __break(1u);
      }

      else
      {
        v27 = v123;
        if (!v25)
        {
LABEL_24:
          v58 = v0[26];
          v59 = v0[27];
          v60 = v0[25];
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v120 = *(v59 + 48);
          if (v120(v60, 1, v58) != 1)
          {
            v67 = v0[27];
            v68 = *(v67 + 32);
            v67 += 32;
            v113 = (v67 - 16);
            v115 = v68;
            v154 = (v0[15] + 32);
            v111 = (v0[32] + 16);
            v108 = v0[20];
            v109 = v0[21];
            v118 = (v67 - 24);
            do
            {
              v69 = v0[36];
              v70 = v0[30];
              v71 = v0[29];
              v72 = v0[26];
              v115(v70, v0[25], v72);
              (*v113)(v71, v70, v72);
              Row.subscript.getter();
              if (qword_1005A8460 != -1)
              {
                swift_once();
              }

              v159 = v26;
              v73 = v0[35];
              v74 = v0[31];
              v75 = v0[29];
              sub_10000A6F0(v27, qword_1005E0A08);
              Row.subscript.getter();
              if (qword_1005A8468 != -1)
              {
                swift_once();
              }

              v76 = v0[29];
              v77 = v0[18];
              v78 = v0[14];
              v79 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
              sub_10000A6F0(v79, qword_1005E0A20);
              Row.subscript.getter();
              v80 = v0[9];
              v81 = v0[10];
              v82 = type metadata accessor for PropertyListDecoder();
              v83 = *(v82 + 48);
              v84 = *(v82 + 52);
              swift_allocObject();
              sub_100005F6C(v80, v81);
              PropertyListDecoder.init()();
              sub_10000A49C(&qword_1005B1D70, &type metadata accessor for Fence.TriggerPosition);
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              v86 = v0[36];
              v85 = v0[37];
              v129 = v0[35];
              v87 = v0[31];
              v146 = v0[29];
              v151 = v0[30];
              v141 = v0[26];
              v125 = v0[23];
              v89 = v0[18];
              v88 = v0[19];
              v90 = v0[14];

              sub_1000049D0(v80, v81);
              v135 = *v154;
              (*v154)(v88, v89, v90);
              v91 = *v111;
              (*v111)(v85, v86, v87);
              Fence.ID.init(id:)();
              v91(v85, v129, v87);
              v92 = v125 + *(v108 + 20);
              Fence.TriggerID.init(id:)();
              sub_1000049D0(v80, v81);
              v93 = *v118;
              (*v118)(v146, v141);
              v122(v129, v87);
              v122(v86, v87);
              v135(v125 + *(v108 + 24), v88, v90);
              v93(v151, v141);
              v26 = v159;
              v95 = v159[2];
              v94 = v159[3];
              if (v95 >= v94 >> 1)
              {
                sub_1002396C0(v94 > 1, v95 + 1, 1);
                v26 = v159;
              }

              v97 = v0[25];
              v96 = v0[26];
              v98 = v0[23];
              v26[2] = v95 + 1;
              sub_10033C458(v98, v26 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v95, type metadata accessor for FenceTriggerRecord);
              dispatch thunk of _AnyIteratorBoxBase.next()();
              v27 = v123;
            }

            while (v120(v97, 1, v96) != 1);
          }

          v61 = v0[25];

          sub_100002CE0(v61, &qword_1005AF468, &qword_1004D06C0);
          v63 = v0[42];
          v62 = v0[43];
          v64 = v0[41];
          if (v26[2])
          {
            v65 = *(v0[21] + 80);
            sub_10033C390(v26 + ((v65 + 32) & ~v65), v0[11], type metadata accessor for FenceTriggerRecord);

            (*(v63 + 8))(v62, v64);
            v66 = 0;
          }

          else
          {
            (*(v63 + 8))(v0[43], v0[41]);

            v66 = 1;
          }

          v99 = v0[43];
          v100 = v0[40];
          v102 = v0[36];
          v101 = v0[37];
          v104 = v0[34];
          v103 = v0[35];
          v105 = v0[33];
          v107 = v0[29];
          v106 = v0[30];
          v130 = v0[28];
          v133 = v0[25];
          v136 = v0[24];
          v138 = v0[23];
          v142 = v0[22];
          v147 = v0[19];
          v152 = v0[18];
          v155 = v0[17];
          v160 = v0[16];
          (*(v0[21] + 56))(v0[11], v66, 1, v0[20]);

          v23 = v0[1];
          goto LABEL_10;
        }

        v28 = v0[27];
        v119 = (v28 + 16);
        v121 = (v28 + 48);
        v114 = (v0[32] + 16);
        v116 = (v0[15] + 32);
        v110 = v0[20];
        v112 = v0[21];
        v117 = (v28 + 8);
        while (1)
        {
          v29 = v0[26];
          v30 = v0[24];
          dispatch thunk of _AnyIteratorBoxBase.next()();
          result = (*v121)(v30, 1, v29);
          if (result == 1)
          {
            break;
          }

          v31 = v0[34];
          v32 = v0[31];
          (*v119)(v0[28], v0[24], v0[26]);
          Row.subscript.getter();
          if (qword_1005A8460 != -1)
          {
            swift_once();
          }

          v158 = v26;
          v33 = v0[33];
          v34 = v0[31];
          v35 = v0[28];
          sub_10000A6F0(v27, qword_1005E0A08);
          Row.subscript.getter();
          if (qword_1005A8468 != -1)
          {
            swift_once();
          }

          v36 = v0[28];
          v37 = v0[16];
          v38 = v0[14];
          v39 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
          sub_10000A6F0(v39, qword_1005E0A20);
          Row.subscript.getter();
          v40 = v0[7];
          v41 = v0[8];
          v42 = type metadata accessor for PropertyListDecoder();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();
          sub_100005F6C(v40, v41);
          PropertyListDecoder.init()();
          sub_10000A49C(&qword_1005B1D70, &type metadata accessor for Fence.TriggerPosition);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          v153 = v25;
          v45 = v0[37];
          v46 = v0[34];
          v128 = v0[33];
          v47 = v0[31];
          v140 = v0[26];
          v145 = v0[28];
          v150 = v0[24];
          v124 = v0[22];
          v49 = v0[16];
          v48 = v0[17];
          v50 = v40;
          v126 = v40;
          v51 = v0[14];

          sub_1000049D0(v50, v41);
          v132 = *v116;
          (*v116)(v48, v49, v51);
          v52 = *v114;
          (*v114)(v45, v46, v47);
          Fence.ID.init(id:)();
          v52(v45, v128, v47);
          v53 = v124 + *(v110 + 20);
          Fence.TriggerID.init(id:)();
          sub_1000049D0(v126, v41);
          v54 = *v117;
          (*v117)(v145, v140);
          v122(v128, v47);
          v122(v46, v47);
          v132(v124 + *(v110 + 24), v48, v51);
          v54(v150, v140);
          v26 = v158;
          v56 = v158[2];
          v55 = v158[3];
          if (v56 >= v55 >> 1)
          {
            sub_1002396C0(v55 > 1, v56 + 1, 1);
            v26 = v158;
          }

          v57 = v0[22];
          v26[2] = v56 + 1;
          sub_10033C458(v57, v26 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v56, type metadata accessor for FenceTriggerRecord);
          v25 = v153 - 1;
          v27 = v123;
          if (v153 == 1)
          {
            goto LABEL_24;
          }
        }
      }

      __break(1u);
      return result;
    }

    (*(v0[42] + 8))(v0[43], v0[41]);

    sub_100004984(v0 + 2);
  }

  else
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
  }

  v13 = v0[43];
  v14 = v0[40];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[34];
  v18 = v0[35];
  v19 = v0[33];
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[28];
  v127 = v0[25];
  v131 = v0[24];
  v134 = v0[23];
  v137 = v0[22];
  v139 = v0[19];
  v144 = v0[18];
  v149 = v0[17];
  v157 = v0[16];

  v23 = v0[1];
LABEL_10:

  return v23();
}

uint64_t sub_10032A70C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for FenceTriggerRecord();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = type metadata accessor for OnConflict();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v14 = type metadata accessor for Insert();
  v2[18] = v14;
  v15 = *(v14 - 8);
  v2[19] = v15;
  v16 = *(v15 + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10032A91C, 0, 0);
}

uint64_t sub_10032A91C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 168) = v1;
  return _swift_task_switch(sub_10032A940, v1, 0);
}

uint64_t sub_10032A940()
{
  v1 = *(v0 + 168);
  sub_10000A0A4();
  *(v0 + 176) = 0;
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_10032AA4C, v2, 0);
}

uint64_t sub_10032AA4C()
{
  v1 = *(v0 + 168);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 184) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032AB00, 0, 0);
}

uint64_t sub_10032AB00()
{
  v81 = v0;
  if (!v0[23])
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    goto LABEL_16;
  }

  v1 = v0[22];
  v2 = v0[4];
  v77 = v0[6];
  v3 = *(v77 + 24);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Fence.TriggerPosition();
  sub_10000A49C(&qword_1005B1D68, &type metadata accessor for Fence.TriggerPosition);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;

  if (v1)
  {

LABEL_16:
    v37 = v0[20];
    v38 = v0[17];
    v39 = v0[14];
    v40 = v0[11];
    v42 = v0[7];
    v41 = v0[8];

    v43 = v0[1];
    goto LABEL_17;
  }

  v78 = v7;
  if (qword_1005A8160 != -1)
  {
    swift_once();
  }

  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v74 = type metadata accessor for Table();
  sub_10000A6F0(v74, qword_1005E00F0);
  (*(v12 + 104))(v13, enum case for OnConflict.replace(_:), v14);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v15 = *(type metadata accessor for Setter() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C0BB0;
  v79 = v9;
  if (qword_1005A8458 != -1)
  {
    swift_once();
  }

  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[12];
  v21 = v0[4];
  v22 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v22, qword_1005E09F0);
  Fence.ID.uuid.getter();
  <- infix<A>(_:_:)();
  v23 = *(v18 + 8);
  v23(v19, v20);
  if (qword_1005A8460 != -1)
  {
    swift_once();
  }

  v24 = v0[14];
  v25 = v0[12];
  v26 = v0[6];
  v27 = v0[4];
  sub_10000A6F0(v22, qword_1005E0A08);
  v28 = v27 + *(v26 + 20);
  Fence.TriggerID.uuid.getter();
  <- infix<A>(_:_:)();
  v23(v24, v25);
  if (qword_1005A8468 != -1)
  {
    swift_once();
  }

  v29 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v29, qword_1005E0A20);
  v0[2] = v78;
  v0[3] = v79;
  <- infix<A>(_:_:)();
  if (qword_1005A8470 != -1)
  {
    swift_once();
  }

  v30 = v0[20];
  v32 = v0[16];
  v31 = v0[17];
  v73 = v0[15];
  v33 = v0[10];
  v34 = v0[11];
  v35 = v0[9];
  v36 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v36, qword_1005E0A38);
  sub_1002787C8(v34);
  <- infix<A>(_:_:)();
  (*(v33 + 8))(v34, v35);
  QueryType.insert(or:_:)();

  (*(v32 + 8))(v31, v73);
  Connection.run(_:)();
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v45 = v0[7];
  v46 = v0[8];
  v47 = v0[4];
  v48 = type metadata accessor for Logger();
  sub_10000A6F0(v48, qword_1005E0AC8);
  sub_10033C390(v47, v46, type metadata accessor for FenceTriggerRecord);
  sub_10033C390(v47, v45, type metadata accessor for FenceTriggerRecord);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v53 = v0[19];
  v52 = v0[20];
  v54 = v0[18];
  v56 = v0[7];
  v55 = v0[8];
  if (v51)
  {
    v76 = v0[20];
    v57 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v57 = 136446722;
    *(v57 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E66C0, v80);
    *(v57 + 12) = 2082;
    type metadata accessor for Fence.ID();
    sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v54;
    v60 = v59;
    sub_10033C3F8(v55, type metadata accessor for FenceTriggerRecord);
    v61 = sub_10000D01C(v58, v60, v80);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2082;
    v62 = *(v77 + 24);
    sub_10000A49C(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    sub_10033C3F8(v56, type metadata accessor for FenceTriggerRecord);
    v66 = sub_10000D01C(v63, v65, v80);

    *(v57 + 24) = v66;
    _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s: inserted fenceTrigger for fence id %{public}s, position: %{public}s", v57, 0x20u);
    swift_arrayDestroy();

    sub_1000049D0(v78, v79);

    (*(v53 + 8))(v76, v75);
  }

  else
  {

    sub_1000049D0(v78, v79);

    sub_10033C3F8(v56, type metadata accessor for FenceTriggerRecord);
    sub_10033C3F8(v55, type metadata accessor for FenceTriggerRecord);
    (*(v53 + 8))(v52, v54);
  }

  v67 = v0[20];
  v68 = v0[17];
  v69 = v0[14];
  v70 = v0[11];
  v72 = v0[7];
  v71 = v0[8];

  v43 = v0[1];
LABEL_17:

  return v43();
}

uint64_t sub_10032B474(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Fence.ID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for Delete();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10032B6BC, 0, 0);
}

uint64_t sub_10032B6BC()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 160) = v1;
  return _swift_task_switch(sub_10032B6E0, v1, 0);
}

uint64_t sub_10032B6E0()
{
  v1 = *(v0 + 160);
  sub_10000A0A4();
  *(v0 + 168) = 0;
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_10032B7F0, v2, 0);
}

uint64_t sub_10032B7F0()
{
  v1 = *(v0 + 160);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 176) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032B8A4, 0, 0);
}

uint64_t sub_10032B8A4()
{
  v76 = v0;
  if (!v0[22])
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8160 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[14], qword_1005E00F0);
  if (qword_1005A8458 != -1)
  {
    swift_once();
  }

  v73 = v0[21];
  v1 = v0[16];
  v67 = v0[19];
  v70 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v66 = v0[11];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[2];
  v9 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v9, qword_1005E09F0);
  Fence.ID.uuid.getter();
  == infix<A>(_:_:)();
  (*(v6 + 8))(v5, v7);
  QueryType.where(_:)();
  (*(v4 + 8))(v3, v66);
  QueryType.delete()();
  (*(v70 + 8))(v1, v2);
  v10 = Connection.run(_:)();
  if (v73)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_9:
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[10];
    v18 = v0[6];
    v17 = v0[7];

    v19 = v0[1];
    v20 = 0;
    goto LABEL_22;
  }

  v74 = v10;
  if (v10 < 1)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v41 = v0[5];
    v40 = v0[6];
    v42 = v0[4];
    v43 = v0[2];
    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005E0AC8);
    (*(v41 + 16))(v40, v43, v42);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v49 = v0[18];
    v48 = v0[19];
    v50 = v0[17];
    v52 = v0[5];
    v51 = v0[6];
    v53 = v0[4];
    if (v47)
    {
      v54 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v54 = 136446466;
      *(v54 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E65A0, v75);
      *(v54 + 12) = 2082;
      sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v69 = v50;
      v72 = v48;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v52 + 8))(v51, v53);
      v58 = sub_10000D01C(v55, v57, v75);

      *(v54 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s: no fenceTrigger deleted for fence id %{public}s", v54, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v72, v69);
    }

    else
    {

      (*(v52 + 8))(v51, v53);
      (*(v49 + 8))(v48, v50);
    }
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];
    v24 = v0[2];
    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005E0AC8);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[17];
    v32 = v0[7];
    v33 = v0[4];
    v34 = v0[5];
    if (v28)
    {
      v35 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v35 = 136446466;
      *(v35 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E65A0, v75);
      *(v35 + 12) = 2082;
      sub_10000A49C(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v68 = v31;
      v71 = v29;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v34 + 8))(v32, v33);
      v39 = sub_10000D01C(v36, v38, v75);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: deleted fenceTrigger for fence id %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v30 + 8))(v71, v68);
    }

    else
    {

      (*(v34 + 8))(v32, v33);
      (*(v30 + 8))(v29, v31);
    }
  }

  v59 = v0[19];
  v60 = v0[16];
  v61 = v0[13];
  v62 = v0[10];
  v64 = v0[6];
  v63 = v0[7];

  v19 = v0[1];
  v20 = v74 > 0;
LABEL_22:

  return v19(v20);
}

uint64_t sub_10032C09C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for Row();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[26] = v8;
  v9 = *(v8 - 8);
  v3[27] = v9;
  v10 = *(v9 + 64) + 15;
  v3[28] = swift_task_alloc();
  v11 = type metadata accessor for Table();
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v13 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_10032C274, 0, 0);
}

uint64_t sub_10032C274()
{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 256) = v1;
  return _swift_task_switch(sub_10032C298, v1, 0);
}

uint64_t sub_10032C298()
{
  v1 = *(v0 + 256);
  sub_10000A0A4();
  *(v0 + 264) = 0;
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10032C3A0, v2, 0);
}

uint64_t sub_10032C3A0()
{
  v1 = *(v0 + 256);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 272) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032C454, 0, 0);
}

uint64_t sub_10032C454()
{
  if (!*(v0 + 272))
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 232), qword_1005E0108);
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v80 = *(v0 + 264);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E0A50);
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  == infix<A>(_:_:)();
  QueryType.where(_:)();
  (*(v6 + 8))(v4, v5);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v10 = sub_10000331C((v0 + 16));
  (*(v2 + 16))(v10, v1, v3);
  Connection.prepare(_:)();
  if (v80)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    sub_100004984((v0 + 16));
LABEL_9:
    v13 = *(v0 + 248);
    v14 = *(v0 + 224);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);

    v19 = *(v0 + 8);

    return v19();
  }

  sub_100004984((v0 + 16));
  v21 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239704(0, v21 & ~(v21 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v21 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v21)
  {
    v22 = *(v0 + 184);
    v75 = (v22 + 16);
    v77 = (v22 + 48);
    v23 = (v22 + 8);
    do
    {
      v24 = *(v0 + 176);
      v25 = *(v0 + 160);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v77)(v25, 1, v24);
      if (result == 1)
      {
        goto LABEL_36;
      }

      (*v75)(*(v0 + 192), *(v0 + 160), *(v0 + 176));
      Row.subscript.getter();
      v78 = *(v0 + 80);
      v81 = *(v0 + 72);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 192);
      v27 = *(v0 + 176);
      v28 = *(v0 + 160);
      v29 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v29, qword_1005E0A68);
      Row.subscript.getter();
      v30 = *v23;
      (*v23)(v26, v27);
      v32 = *(v0 + 88);
      v31 = *(v0 + 96);
      v30(v28, v27);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_100239704((v33 > 1), v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[4 * v34];
      v35[4] = v81;
      v35[5] = v78;
      v35[6] = v32;
      v35[7] = v31;
    }

    while (--v21);
  }

  v37 = *(v0 + 176);
  v36 = *(v0 + 184);
  v38 = *(v0 + 168);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v79 = *(v36 + 48);
  if (v79(v38, 1, v37) != 1)
  {
    v47 = *(v0 + 184);
    v48 = *(v47 + 32);
    v47 += 32;
    v74 = (v47 - 16);
    v76 = v48;
    v49 = (v47 - 24);
    do
    {
      v51 = *(v0 + 192);
      v50 = *(v0 + 200);
      v52 = *(v0 + 176);
      v76(v50, *(v0 + 168), v52);
      (*v74)(v51, v50, v52);
      Row.subscript.getter();
      v54 = *(v0 + 104);
      v53 = *(v0 + 112);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 192);
      v56 = *(v0 + 200);
      v57 = *(v0 + 176);
      v58 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v58, qword_1005E0A68);
      Row.subscript.getter();
      v59 = *v49;
      (*v49)(v55, v57);
      v59(v56, v57);
      v60 = *(v0 + 120);
      v62 = _swiftEmptyArrayStorage[2];
      v61 = _swiftEmptyArrayStorage[3];
      if (v62 >= v61 >> 1)
      {
        v73 = *(v0 + 120);
        sub_100239704((v61 > 1), v62 + 1, 1);
        v60 = v73;
      }

      v64 = *(v0 + 168);
      v63 = *(v0 + 176);
      _swiftEmptyArrayStorage[2] = v62 + 1;
      v65 = &_swiftEmptyArrayStorage[4 * v62];
      v65[4] = v54;
      v65[5] = v53;
      *(v65 + 3) = v60;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v79(v64, 1, v63) != 1);
  }

  v39 = *(v0 + 168);

  sub_100002CE0(v39, &qword_1005AF468, &qword_1004D06C0);
  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  v42 = *(v0 + 232);
  if (_swiftEmptyArrayStorage[2])
  {
    v44 = _swiftEmptyArrayStorage[4];
    v43 = _swiftEmptyArrayStorage[5];
    v45 = _swiftEmptyArrayStorage[6];
    v46 = _swiftEmptyArrayStorage[7];

    sub_100005F6C(v45, v46);

    (*(v41 + 8))(v40, v42);
  }

  else
  {
    (*(v41 + 8))(*(v0 + 248), *(v0 + 232));

    v44 = 0;
    v43 = 0;
    v45 = 0;
    v46 = 0;
  }

  v66 = *(v0 + 248);
  v67 = *(v0 + 224);
  v69 = *(v0 + 192);
  v68 = *(v0 + 200);
  v71 = *(v0 + 160);
  v70 = *(v0 + 168);

  v72 = *(v0 + 8);

  return v72(v44, v43, v45, v46);
}

uint64_t sub_10032CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for OnConflict();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for Insert();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032CD78, 0, 0);
}

uint64_t sub_10032CD78()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10032CD9C, v1, 0);
}

uint64_t sub_10032CD9C()
{
  v1 = *(v0 + 136);
  sub_10000A0A4();
  *(v0 + 144) = 0;
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_10032CE64, v2, 0);
}

uint64_t sub_10032CE64()
{
  v1 = *(v0 + 136);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 152) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032CF18, 0, 0);
}

uint64_t sub_10032CF18()
{
  if (!v0[19])
  {
    v17 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for DatabaseError.notConnected(_:), v17);
    swift_willThrow();
    goto LABEL_11;
  }

  v28 = v0[19];
  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v27 = type metadata accessor for Table();
  sub_10000A6F0(v27, qword_1005E0108);
  (*(v1 + 104))(v2, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v4 = *(type metadata accessor for Setter() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v26 = *(v4 + 72);
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v8, qword_1005E0A50);
  v0[2] = v6;
  v0[3] = v7;

  <- infix<A>(_:_:)();

  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v25 = v0[18];
  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[9];
  v15 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v15, qword_1005E0A68);
  v0[4] = v13;
  v0[5] = v14;
  sub_100005F6C(v13, v14);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  QueryType.insert(or:_:)();

  (*(v10 + 8))(v11, v12);
  Connection.run(_:)();
  v16 = v0[15];
  if (v25)
  {
    (*(v16 + 8))(v0[16], v0[14]);

LABEL_11:
    v19 = v0[16];
    v20 = v0[13];

    v21 = v0[1];
    goto LABEL_13;
  }

  v22 = v0[13];
  v23 = v0[16];
  (*(v16 + 8))();

  v21 = v0[1];
LABEL_13:

  return v21();
}

uint64_t sub_10032D348(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for Delete();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10032D4D0, 0, 0);
}

uint64_t sub_10032D4D0()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_10032D4F4, v1, 0);
}

uint64_t sub_10032D4F4()
{
  v1 = *(v0 + 128);
  sub_10000A0A4();
  *(v0 + 136) = 0;
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_10032D5CC, v2, 0);
}

uint64_t sub_10032D5CC()
{
  v1 = *(v0 + 128);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 144) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032D680, 0, 0);
}

uint64_t sub_10032D680()
{
  v34 = v0;
  if (!v0[18])
  {
    v21 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for DatabaseError.notConnected(_:), v21);
    swift_willThrow();
    goto LABEL_13;
  }

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0AC8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v33);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting value for key: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  if (qword_1005A8168 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[10], qword_1005E0108);
  if (qword_1005A8478 != -1)
  {
    swift_once();
  }

  v32 = v0[17];
  v9 = v0[15];
  v10 = v0[11];
  v11 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[4];
  v17 = v0[5];
  v18 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v18, qword_1005E0A50);
  v0[2] = v16;
  v0[3] = v17;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v15 + 8))(v13, v14);
  QueryType.delete()();
  (*(v10 + 8))(v11, v12);
  v19 = Connection.run(_:)();
  v20 = v0[14];
  if (v32)
  {
    (*(v20 + 8))(v0[15], v0[13]);

LABEL_13:
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[9];

    v26 = v0[1];
    v27 = 0;
    goto LABEL_15;
  }

  v28 = v0[12];
  v29 = v0[9];
  v30 = v0[15];
  (*(v20 + 8))();

  v26 = v0[1];
  v27 = v19 > 0;
LABEL_15:

  return v26(v27);
}

uint64_t sub_10032DAAC(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for Row();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10032DBBC, 0, 0);
}

uint64_t sub_10032DBBC()
{
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_10032DBE0, v1, 0);
}

uint64_t sub_10032DBE0()
{
  v1 = *(v0 + 184);
  sub_10000A0A4();
  *(v0 + 192) = 0;
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10032DCC4, v2, 0);
}

uint64_t sub_10032DCC4()
{
  v1 = *(v0 + 184);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 200) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032DD78, 0, 0);
}

uint64_t sub_10032DD78()
{
  if (!*(v0 + 200))
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_5;
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = type metadata accessor for Table();
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v4 = sub_10000331C((v0 + 16));
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984((v0 + 16));
LABEL_5:
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);

    v11 = *(v0 + 8);

    return v11();
  }

  sub_100004984((v0 + 16));
  v13 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239724(0, v13 & ~(v13 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v13 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = *(v0 + 160);
    v61 = (v14 + 16);
    v63 = (v14 + 48);
    v15 = (v14 + 8);
    do
    {
      v16 = *(v0 + 152);
      v17 = *(v0 + 136);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v63)(v17, 1, v16);
      if (result == 1)
      {
        goto LABEL_33;
      }

      (*v61)(*(v0 + 168), *(v0 + 136), *(v0 + 152));
      if (qword_1005A8488 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 168);
      v19 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
      sub_10000A6F0(v19, qword_1005E0A80);
      sub_100300D10();
      Row.subscript.getter();
      v64 = *(v0 + 64);
      v66 = *(v0 + 56);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 168);
      v21 = *(v0 + 152);
      v22 = *(v0 + 136);
      v23 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v23, qword_1005E0A68);
      Row.subscript.getter();
      v24 = *v15;
      (*v15)(v20, v21);
      v26 = *(v0 + 72);
      v25 = *(v0 + 80);
      v24(v22, v21);
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100239724((v27 > 1), v28 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[4 * v28];
      v29[4] = v66;
      v29[5] = v64;
      v29[6] = v26;
      v29[7] = v25;
    }

    while (--v13);
  }

  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v32 = *(v0 + 144);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v65 = *(v30 + 48);
  if (v65(v32, 1, v31) != 1)
  {
    v38 = *(v0 + 160);
    v39 = *(v38 + 32);
    v38 += 32;
    v60 = (v38 - 16);
    v62 = v39;
    v40 = (v38 - 24);
    do
    {
      v42 = *(v0 + 168);
      v41 = *(v0 + 176);
      v43 = *(v0 + 152);
      v62(v41, *(v0 + 144), v43);
      (*v60)(v42, v41, v43);
      if (qword_1005A8488 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 168);
      v45 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
      sub_10000A6F0(v45, qword_1005E0A80);
      sub_100300D10();
      Row.subscript.getter();
      v47 = *(v0 + 88);
      v46 = *(v0 + 96);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 168);
      v49 = *(v0 + 176);
      v50 = *(v0 + 152);
      v51 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v51, qword_1005E0A68);
      Row.subscript.getter();
      v52 = *v40;
      (*v40)(v48, v50);
      v52(v49, v50);
      v53 = *(v0 + 104);
      v55 = _swiftEmptyArrayStorage[2];
      v54 = _swiftEmptyArrayStorage[3];
      if (v55 >= v54 >> 1)
      {
        v59 = *(v0 + 104);
        sub_100239724((v54 > 1), v55 + 1, 1);
        v53 = v59;
      }

      v57 = *(v0 + 144);
      v56 = *(v0 + 152);
      _swiftEmptyArrayStorage[2] = v55 + 1;
      v58 = &_swiftEmptyArrayStorage[4 * v55];
      v58[4] = v47;
      v58[5] = v46;
      *(v58 + 3) = v53;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v65(v57, 1, v56) != 1);
  }

  v33 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 136);
  v35 = *(v0 + 144);

  sub_100002CE0(v35, &qword_1005AF468, &qword_1004D06C0);

  v37 = *(v0 + 8);

  return v37(_swiftEmptyArrayStorage);
}

uint64_t sub_10032E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for Row();
  v4[23] = v6;
  v7 = *(v6 - 8);
  v4[24] = v7;
  v8 = *(v7 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[27] = v9;
  v10 = *(v9 - 8);
  v4[28] = v10;
  v11 = *(v10 + 64) + 15;
  v4[29] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10032E628, 0, 0);
}

uint64_t sub_10032E628()
{
  v1 = *(*(v0 + 160) + 112);
  *(v0 + 264) = v1;
  return _swift_task_switch(sub_10032E64C, v1, 0);
}

uint64_t sub_10032E64C()
{
  v1 = *(v0 + 264);
  sub_10000A0A4();
  *(v0 + 272) = 0;
  v2 = *(v0 + 264);

  return _swift_task_switch(sub_10032E754, v2, 0);
}

uint64_t sub_10032E754()
{
  v1 = *(v0 + 264);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 280) = Database.readConnection.getter();

  return _swift_task_switch(sub_10032E808, 0, 0);
}

uint64_t sub_10032E808()
{
  if (!*(v0 + 280))
  {
    v11 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for DatabaseError.notConnected(_:), v11);
    swift_willThrow();
    goto LABEL_7;
  }

  v74 = *(v0 + 280);
  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v79 = *(v0 + 216);
  v82 = *(v0 + 272);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v9, qword_1005E0A80);
  *(v0 + 56) = v8;
  *(v0 + 64) = v7;
  sub_100300D10();
  == infix<A>(_:_:)();
  QueryType.where(_:)();
  (*(v5 + 8))(v4, v79);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v10 = sub_10000331C((v0 + 16));
  (*(v2 + 16))(v10, v1, v3);
  Connection.prepare(_:)();
  if (v82)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    sub_100004984((v0 + 16));
LABEL_7:
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);

    v19 = *(v0 + 8);

    return v19();
  }

  sub_100004984((v0 + 16));
  v21 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_100239724(0, v21 & ~(v21 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v21 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v21)
  {
    v22 = *(v0 + 192);
    v76 = (v22 + 16);
    v78 = (v22 + 48);
    v23 = (v22 + 8);
    do
    {
      v24 = *(v0 + 184);
      v25 = *(v0 + 168);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v78)(v25, 1, v24);
      if (result == 1)
      {
        goto LABEL_34;
      }

      (*v76)(*(v0 + 200), *(v0 + 168), *(v0 + 184));
      Row.subscript.getter();
      v80 = *(v0 + 80);
      v83 = *(v0 + 72);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 200);
      v27 = *(v0 + 184);
      v28 = *(v0 + 168);
      v29 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v29, qword_1005E0A68);
      Row.subscript.getter();
      v30 = *v23;
      (*v23)(v26, v27);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);
      v30(v28, v27);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_100239724((v33 > 1), v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[4 * v34];
      v35[4] = v83;
      v35[5] = v80;
      v35[6] = v31;
      v35[7] = v32;
    }

    while (--v21);
  }

  v36 = *(v0 + 184);
  v37 = *(v0 + 192);
  v38 = *(v0 + 176);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v81 = *(v37 + 48);
  if (v81(v38, 1, v36) != 1)
  {
    v47 = *(v0 + 192);
    v48 = *(v47 + 32);
    v47 += 32;
    v75 = (v47 - 16);
    v77 = v48;
    v49 = (v47 - 24);
    do
    {
      v51 = *(v0 + 200);
      v50 = *(v0 + 208);
      v52 = *(v0 + 184);
      v77(v50, *(v0 + 176), v52);
      (*v75)(v51, v50, v52);
      Row.subscript.getter();
      v54 = *(v0 + 104);
      v53 = *(v0 + 112);
      if (qword_1005A8480 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 200);
      v56 = *(v0 + 208);
      v57 = *(v0 + 184);
      v58 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v58, qword_1005E0A68);
      Row.subscript.getter();
      v59 = *v49;
      (*v49)(v55, v57);
      v59(v56, v57);
      v60 = *(v0 + 120);
      v62 = _swiftEmptyArrayStorage[2];
      v61 = _swiftEmptyArrayStorage[3];
      if (v62 >= v61 >> 1)
      {
        v73 = *(v0 + 120);
        sub_100239724((v61 > 1), v62 + 1, 1);
        v60 = v73;
      }

      v63 = *(v0 + 176);
      v64 = *(v0 + 184);
      _swiftEmptyArrayStorage[2] = v62 + 1;
      v65 = &_swiftEmptyArrayStorage[4 * v62];
      v65[4] = v54;
      v65[5] = v53;
      *(v65 + 3) = v60;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v81(v63, 1, v64) != 1);
  }

  v39 = *(v0 + 176);

  sub_100002CE0(v39, &qword_1005AF468, &qword_1004D06C0);
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v42 = *(v0 + 240);
  if (_swiftEmptyArrayStorage[2])
  {
    v44 = _swiftEmptyArrayStorage[4];
    v43 = _swiftEmptyArrayStorage[5];
    v45 = _swiftEmptyArrayStorage[6];
    v46 = _swiftEmptyArrayStorage[7];

    sub_100005F6C(v45, v46);

    (*(v41 + 8))(v40, v42);
  }

  else
  {
    (*(v41 + 8))(*(v0 + 256), *(v0 + 240));

    v44 = 0;
    v43 = 0;
    v45 = 0;
    v46 = 0;
  }

  v66 = *(v0 + 256);
  v67 = *(v0 + 232);
  v69 = *(v0 + 200);
  v68 = *(v0 + 208);
  v71 = *(v0 + 168);
  v70 = *(v0 + 176);

  v72 = *(v0 + 8);

  return v72(v44, v43, v45, v46);
}

uint64_t sub_10032EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for OnConflict();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for Insert();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_10032F0E4, 0, 0);
}

uint64_t sub_10032F0E4()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_10032F108, v1, 0);
}

uint64_t sub_10032F108()
{
  v1 = *(v0 + 144);
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_10032F1D0, v2, 0);
}

uint64_t sub_10032F1D0()
{
  v1 = *(v0 + 144);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 160) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032F284, 0, 0);
}

uint64_t sub_10032F284()
{
  if (!v0[20])
  {
    v14 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for DatabaseError.notConnected(_:), v14);
    swift_willThrow();
    goto LABEL_9;
  }

  v25 = v0[20];
  (*(v0[13] + 104))(v0[14], enum case for OnConflict.replace(_:), v0[12]);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v1 = *(type metadata accessor for Setter() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v24 = *(v1 + 72);
  *(swift_allocObject() + 16) = xmmword_1004C2310;
  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v5, qword_1005E0A80);
  v0[2] = v3;
  v0[3] = v4;
  sub_100300D10();

  <- infix<A>(_:_:)();

  if (qword_1005A8480 != -1)
  {
    swift_once();
  }

  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v22 = v0[12];
  v23 = v0[19];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v12, qword_1005E0A68);
  v0[4] = v11;
  v0[5] = v10;
  sub_100005F6C(v11, v10);
  <- infix<A>(_:_:)();
  sub_1000049D0(v0[4], v0[5]);
  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v7 + 8))(v8, v22);
  Connection.run(_:)();
  v13 = v0[16];
  if (v23)
  {
    (*(v13 + 8))(v0[17], v0[15]);

LABEL_9:
    v16 = v0[17];
    v17 = v0[14];

    v18 = v0[1];
    goto LABEL_11;
  }

  v19 = v0[14];
  v20 = v0[17];
  (*(v13 + 8))();

  v18 = v0[1];
LABEL_11:

  return v18();
}

uint64_t sub_10032F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = type metadata accessor for Delete();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032F7F8, 0, 0);
}

uint64_t sub_10032F7F8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10032F81C, v1, 0);
}

uint64_t sub_10032F81C()
{
  v1 = *(v0 + 136);
  sub_10000A0A4();
  *(v0 + 144) = 0;
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_10032F8F4, v2, 0);
}

uint64_t sub_10032F8F4()
{
  v1 = *(v0 + 136);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 152) = Database.writeConnection.getter();

  return _swift_task_switch(sub_10032F9A8, 0, 0);
}

uint64_t sub_10032F9A8()
{
  v35 = v0;
  if (!v0[19])
  {
    v20 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for DatabaseError.notConnected(_:), v20);
    swift_willThrow();
    goto LABEL_11;
  }

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0AC8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v34);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting record for: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  if (qword_1005A8488 != -1)
  {
    swift_once();
  }

  v32 = v0[16];
  v33 = v0[18];
  v9 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v31 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  v17 = sub_10004B564(&qword_1005B1A68, &qword_1004D5878);
  sub_10000A6F0(v17, qword_1005E0A80);
  v0[2] = v16;
  v0[3] = v15;
  sub_100300D10();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v13 + 8))(v12, v31);
  QueryType.delete()();
  (*(v9 + 8))(v10, v11);
  v18 = Connection.run(_:)();
  v19 = v0[15];
  if (v33)
  {
    (*(v19 + 8))(v0[16], v0[14]);

LABEL_11:
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[10];

    v25 = v0[1];
    v26 = 0;
    goto LABEL_13;
  }

  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[16];
  (*(v19 + 8))();

  v25 = v0[1];
  v26 = v18 > 0;
LABEL_13:

  return v25(v26);
}

uint64_t sub_10032FDA0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AC8);
  v1 = sub_10000A6F0(v0, qword_1005E0AC8);
  if (qword_1005A84A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10032FE68()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10032FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for SharedSecretKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8198 != -1)
  {
    swift_once();
  }

  v13 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v13, qword_1005E01B0);
  Row.subscript.getter();
  sub_10000A49C(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
  KeyRepresenting.init(rawValue:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100002CE0(v7, &qword_1005AEB98, &unk_1004D07C0);
    v14 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    [v14 initWithDomain:v15 code:0 userInfo:0];

    swift_willThrow();
    v16 = type metadata accessor for Row();
    return (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {
    v25 = *(v9 + 32);
    v25(v12, v7, v8);
    if (qword_1005A8180 != -1)
    {
      swift_once();
    }

    v18 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v18, qword_1005E0168);
    type metadata accessor for UUID();
    Row.subscript.getter();
    if (qword_1005A81A0 != -1)
    {
      swift_once();
    }

    v19 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
    sub_10000A6F0(v19, qword_1005E01C8);
    v20 = type metadata accessor for OwnerSharedSecretsRecord();
    v21 = v20[7];
    type metadata accessor for Date();
    Row.subscript.getter();
    if (qword_1005A8190 != -1)
    {
      swift_once();
    }

    v22 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    sub_10000A6F0(v22, qword_1005E0198);
    sub_1001B921C();
    Row.subscript.getter();
    v23 = type metadata accessor for Row();
    (*(*(v23 - 8) + 8))(a1, v23);
    *(a2 + v20[5]) = v24 == 1;
    return (v25)(a2 + v20[6], v12, v8);
  }
}

uint64_t sub_100330374(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = a2;
  v4 = type metadata accessor for OnConflict();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100330434, v2, 0);
}

uint64_t sub_100330434()
{
  if (qword_1005A8130 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v26 = type metadata accessor for Table();
  sub_10000A6F0(v26, qword_1005E0060);
  (*(v1 + 104))(v2, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v4 = *(type metadata accessor for Setter() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C0BC0;
  if (qword_1005A8180 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 48);
  v8 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v8, qword_1005E0168);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_1005A8188 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v9, qword_1005E0180);
  *(v0 + 32) = 1;
  <- infix<A>(_:_:)();
  if (qword_1005A81A0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 48);
  v11 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  sub_10000A6F0(v11, qword_1005E01C8);
  v12 = type metadata accessor for OwnerSharedSecretsRecord();
  v13 = v12[7];
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1005A8190 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 48);
  v15 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v15, qword_1005E0198);
  *(v0 + 80) = *(v14 + v12[5]);
  sub_1001B921C();
  <- infix<A>(_:_:)();
  if (qword_1005A8198 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  v21 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v21, qword_1005E01B0);
  v22 = v18 + v12[6];
  *(v0 + 16) = SharedSecretKey.data.getter();
  *(v0 + 24) = v23;
  <- infix<A>(_:_:)();
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  QueryType.insert(or:_:)();

  (*(v16 + 8))(v17, v19);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003308CC()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1003308F0, v1, 0);
}

uint64_t sub_1003308F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = type metadata accessor for LocalStorageDatabase();
  v0[5] = sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  v0[6] = Database.readConnection.getter();

  return _swift_task_switch(sub_1003309B4, v1, 0);
}

uint64_t sub_1003309B4()
{
  if (v0[6])
  {
    v1 = v0[3];

    return _swift_task_switch(sub_100330AF8, v1, 0);
  }

  else
  {
    v2 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for DatabaseError.notConnected(_:), v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100330AF8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v0[7] = Database.columnNames(connection:tableName:)();
  v0[8] = 0;
  v5 = v0[2];

  return _swift_task_switch(sub_100330B9C, v5, 0);
}

uint64_t sub_100330B9C()
{
  v1 = sub_10023F00C(v0[7]);

  v2 = sub_10021B304(0xD000000000000018, 0x80000001004E4820, v1);

  if (v2)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0AC8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[6];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "LocalStorage.db is good", v8, 2u);
    }

    else
    {
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0AC8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "LocalStorage.db is missing handleSiblingIdentifiers -- needs to be reset", v12, 2u);
    }

    v13 = v0[3];

    return _swift_task_switch(sub_100330E00, v13, 0);
  }
}

uint64_t sub_100330E00()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  Database.reset()();
  v0[9] = v5;
  v6 = v0[2];
  if (v5)
  {
    v7 = sub_100253EE0;
  }

  else
  {
    v7 = sub_100016108;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100330E90()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100330EF4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for OnConflict();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100330FB4, 0, 0);
}

uint64_t sub_100330FB4()
{
  if (qword_1005A8140 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for Table();
  sub_10000A6F0(v4, qword_1005E0090);
  (*(v2 + 104))(v1, enum case for OnConflict.replace(_:), v3);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v5 = *(type metadata accessor for Setter() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C0BE0;
  if (qword_1005A82A8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 72);
  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v9, qword_1005E04E0);
  *(v0 + 16) = Device.identifier.getter();
  *(v0 + 24) = v10;
  <- infix<A>(_:_:)();

  if (qword_1005A82B0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 72);
  sub_10000A6F0(v9, qword_1005E04F8);
  *(v0 + 32) = Device.deviceName.getter();
  *(v0 + 40) = v12;
  <- infix<A>(_:_:)();

  if (qword_1005A82B8 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 72);
  sub_10000A6F0(v9, qword_1005E0510);
  *(v0 + 48) = Device.idsDeviceId.getter();
  *(v0 + 56) = v14;
  <- infix<A>(_:_:)();

  if (qword_1005A82C0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 72);
  v16 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v16, qword_1005E0528);
  *(v0 + 104) = Device.isActive.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82C8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 72);
  sub_10000A6F0(v16, qword_1005E0540);
  *(v0 + 105) = Device.isThisDevice.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82D0 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 72);
  sub_10000A6F0(v16, qword_1005E0558);
  *(v0 + 106) = Device.isCompanion.getter() & 1;
  <- infix<A>(_:_:)();
  if (qword_1005A82D8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  sub_10000A6F0(v16, qword_1005E0570);
  *(v0 + 107) = Device.isAutoMeCapable.getter() & 1;
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v19 + 8))(v20, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10033150C(uint64_t a1, uint64_t a2)
{
  v2[1005] = a2;
  v2[1004] = a1;
  v3 = type metadata accessor for OnConflict();
  v2[1006] = v3;
  v4 = *(v3 - 8);
  v2[1007] = v4;
  v5 = *(v4 + 64) + 15;
  v2[1008] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[1009] = v6;
  *v6 = v2;
  v6[1] = sub_100331604;

  return sub_100325664((v2 + 2));
}

uint64_t sub_100331604()
{
  v2 = *(*v1 + 8072);
  v5 = *v1;
  *(*v1 + 8080) = v0;

  if (v0)
  {
    v3 = sub_100332C58;
  }

  else
  {
    v3 = sub_100331718;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100331718()
{
  v222 = v0;
  v1 = (v0 + 3856);
  v2 = (v0 + 5744);
  v3 = (v0 + 7792);
  v4 = *(v0 + 8040);
  *(v0 + 5888) = v4[16];
  v5 = v4[19];
  v6 = v4[20];
  v7 = v4[18];
  *(v0 + 5904) = v4[17];
  *(v0 + 5952) = v6;
  *(v0 + 5936) = v5;
  *(v0 + 5920) = v7;
  v8 = v4[23];
  v9 = v4[24];
  v10 = v4[22];
  *(v0 + 5968) = v4[21];
  *(v0 + 6016) = v9;
  *(v0 + 6000) = v8;
  *(v0 + 5984) = v10;
  v11 = v4[21];
  v12 = v4[22];
  v13 = v4[23];
  *(v0 + 6160) = v4[24];
  *(v0 + 6144) = v13;
  *(v0 + 6128) = v12;
  *(v0 + 6112) = v11;
  v14 = v4[17];
  v15 = v4[18];
  v16 = v4[19];
  *(v0 + 6096) = v4[20];
  *(v0 + 6080) = v16;
  *(v0 + 6064) = v15;
  *(v0 + 6048) = v14;
  *(v0 + 6032) = v4[16];
  if (sub_10005A3B0(v0 + 6032) == 1)
  {
    memcpy((v0 + 1456), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 1456) == 1)
    {
      sub_10017E0C8(v0 + 5744);
    }

    else
    {
      v21 = *(v0 + 1792);
      v22 = *(v0 + 1824);
      *(v0 + 5840) = *(v0 + 1808);
      *(v0 + 5856) = v22;
      *(v0 + 5872) = *(v0 + 1840);
      v23 = *(v0 + 1728);
      v24 = *(v0 + 1760);
      *(v0 + 5776) = *(v0 + 1744);
      *(v0 + 5792) = v24;
      *(v0 + 5808) = *(v0 + 1776);
      *(v0 + 5824) = v21;
      *v2 = *(v0 + 1712);
      *(v0 + 5760) = v23;
    }
  }

  else
  {
    v17 = *(v0 + 6000);
    *(v0 + 5840) = *(v0 + 5984);
    *(v0 + 5856) = v17;
    *(v0 + 5872) = *(v0 + 6016);
    v18 = *(v0 + 5936);
    *(v0 + 5776) = *(v0 + 5920);
    *(v0 + 5792) = v18;
    v19 = *(v0 + 5968);
    *(v0 + 5808) = *(v0 + 5952);
    *(v0 + 5824) = v19;
    v20 = *(v0 + 5904);
    *v2 = *(v0 + 5888);
    *(v0 + 5760) = v20;
  }

  v25 = (v0 + 7712);
  v26 = (v0 + 4016);
  v27 = *(v0 + 8040);
  v28 = v27[7];
  *v1 = v27[6];
  *(v0 + 3872) = v28;
  v29 = v27[11];
  v31 = v27[8];
  v30 = v27[9];
  *(v0 + 3920) = v27[10];
  *(v0 + 3936) = v29;
  *(v0 + 3888) = v31;
  *(v0 + 3904) = v30;
  v32 = v27[15];
  v34 = v27[12];
  v33 = v27[13];
  *(v0 + 3984) = v27[14];
  *(v0 + 4000) = v32;
  *(v0 + 3952) = v34;
  *(v0 + 3968) = v33;
  v35 = v27[7];
  *(v0 + 3696) = v27[6];
  *(v0 + 3712) = v35;
  v36 = v27[11];
  v38 = v27[8];
  v37 = v27[9];
  *(v0 + 3760) = v27[10];
  *(v0 + 3776) = v36;
  *(v0 + 3728) = v38;
  *(v0 + 3744) = v37;
  v39 = v27[15];
  v41 = v27[12];
  v40 = v27[13];
  *(v0 + 3824) = v27[14];
  *(v0 + 3840) = v39;
  *(v0 + 3792) = v41;
  *(v0 + 3808) = v40;
  if (sub_10002D650(v0 + 3696) == 1)
  {
    memcpy((v0 + 1936), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 1936) == 1)
    {
      v42 = (v0 + 4176);
      sub_10003170C((v0 + 4176));
    }

    else
    {
      v42 = (v0 + 3536);
      v49 = *(v0 + 2144);
      *(v0 + 3632) = *(v0 + 2128);
      *(v0 + 3648) = v49;
      v50 = *(v0 + 2176);
      *(v0 + 3664) = *(v0 + 2160);
      *(v0 + 3680) = v50;
      v51 = *(v0 + 2080);
      *(v0 + 3568) = *(v0 + 2064);
      *(v0 + 3584) = v51;
      v52 = *(v0 + 2112);
      *(v0 + 3600) = *(v0 + 2096);
      *(v0 + 3616) = v52;
      v53 = *(v0 + 2048);
      *(v0 + 3536) = *(v0 + 2032);
      *(v0 + 3552) = v53;
      sub_100005F04(v0 + 3536, v0 + 2896, &qword_1005A9328, &unk_1004C7F20);
    }

    v54 = v42[7];
    *(v0 + 4112) = v42[6];
    *(v0 + 4128) = v54;
    v55 = v42[9];
    *(v0 + 4144) = v42[8];
    *(v0 + 4160) = v55;
    v56 = v42[3];
    *(v0 + 4048) = v42[2];
    *(v0 + 4064) = v56;
    v57 = v42[5];
    *(v0 + 4080) = v42[4];
    *(v0 + 4096) = v57;
    v47 = *v42;
    v48 = v42[1];
  }

  else
  {
    v43 = *(v0 + 3968);
    *(v0 + 4112) = *(v0 + 3952);
    *(v0 + 4128) = v43;
    v44 = *(v0 + 4000);
    *(v0 + 4144) = *(v0 + 3984);
    *(v0 + 4160) = v44;
    v45 = *(v0 + 3904);
    *(v0 + 4048) = *(v0 + 3888);
    *(v0 + 4064) = v45;
    v46 = *(v0 + 3936);
    *(v0 + 4080) = *(v0 + 3920);
    *(v0 + 4096) = v46;
    v47 = *v1;
    v48 = *(v0 + 3872);
  }

  *v26 = v47;
  *(v0 + 4032) = v48;
  v216 = (v0 + 6608);
  v58 = (v0 + 6896);
  v59 = *(v0 + 8040);
  v60 = v59[26];
  v61 = v59[27];
  v62 = v59[29];
  *(v0 + 7840) = v59[28];
  *(v0 + 7856) = v62;
  *(v0 + 7824) = v61;
  *v3 = v59[25];
  *(v0 + 7808) = v60;
  if (*(v0 + 7832))
  {
    sub_100005F04(v0 + 3856, v0 + 3216, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v0 + 7792, v0 + 7392, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v63 = *(v0 + 7840);
    *(v0 + 7744) = *(v0 + 7824);
    *(v0 + 7760) = v63;
    *(v0 + 7776) = *(v0 + 7856);
    v65 = *v3;
    v64 = *(v0 + 7808);
  }

  else
  {
    memcpy((v0 + 2416), (v0 + 16), 0x1E0uLL);
    if (sub_100033B90(v0 + 2416) == 1)
    {
      sub_100005F04(v0 + 3856, v0 + 4656, &qword_1005A9328, &unk_1004C7F20);
      *v25 = 0u;
      *(v0 + 7728) = 0u;
      *(v0 + 7744) = 0u;
      *(v0 + 7760) = 0u;
      *(v0 + 7776) = 0u;
      goto LABEL_18;
    }

    v66 = *(v0 + 2832);
    v67 = *(v0 + 2864);
    *(v0 + 7904) = *(v0 + 2848);
    *(v0 + 7920) = v67;
    *(v0 + 7936) = *(v0 + 2880);
    *(v0 + 7872) = *(v0 + 2816);
    *(v0 + 7888) = v66;
    sub_100005F04(v0 + 3856, v0 + 4336, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v0 + 7872, v0 + 7232, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v68 = *(v0 + 7920);
    *(v0 + 7744) = *(v0 + 7904);
    *(v0 + 7760) = v68;
    *(v0 + 7776) = *(v0 + 7936);
    v65 = *(v0 + 7872);
    v64 = *(v0 + 7888);
  }

  *v25 = v65;
  *(v0 + 7728) = v64;
LABEL_18:
  v218 = (v0 + 5744);
  v220 = (v0 + 7712);
  if (static SystemInfo.isInternalBuild.getter())
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v69 = *(v0 + 8040);
    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005E0AC8);
    sub_1001B5440(v69, v0 + 496);
    sub_100005F04(v25, v0 + 7312, &qword_1005AD7A8, &qword_1004CA280);
    v71 = (v0 + 7712);
    sub_100005F04(v0 + 4016, v0 + 3376, &qword_1005A9328, &unk_1004C7F20);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    sub_1001B5478(v69);
    sub_100002CE0(v25, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 8040);
      v75 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v221[0] = v211;
      *v75 = 141559811;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      v76 = v74[1];
      *(v0 + 6800) = *v74;
      *(v0 + 6816) = v76;
      v77 = v74[5];
      v79 = v74[2];
      v78 = v74[3];
      *(v0 + 6864) = v74[4];
      *(v0 + 6880) = v77;
      *(v0 + 6832) = v79;
      *(v0 + 6848) = v78;
      v80 = sub_100032B70(v211);
      v82 = sub_10000D01C(v80, v81, v221);

      *(v75 + 14) = v82;
      *(v75 + 22) = 2160;
      *(v75 + 24) = 1752392040;
      *(v75 + 32) = 2081;
      v83 = *(v0 + 7760);
      *(v0 + 7504) = *(v0 + 7744);
      *(v0 + 7520) = v83;
      *(v0 + 7536) = *(v0 + 7776);
      v84 = *(v0 + 7728);
      *(v0 + 7472) = *v71;
      *(v0 + 7488) = v84;
      sub_100005F04(v71, v0 + 7552, &qword_1005AD7A8, &qword_1004CA280);
      sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
      v85 = String.init<A>(describing:)();
      v87 = sub_10000D01C(v85, v86, v221);

      *(v75 + 34) = v87;
      *(v75 + 42) = 2160;
      *(v75 + 44) = 1752392040;
      *(v75 + 52) = 2081;
      v88 = *(v0 + 4128);
      *(v0 + 5072) = *(v0 + 4112);
      *(v0 + 5088) = v88;
      v89 = *(v0 + 4160);
      *(v0 + 5104) = *(v0 + 4144);
      *(v0 + 5120) = v89;
      v90 = *(v0 + 4064);
      *(v0 + 5008) = *(v0 + 4048);
      *(v0 + 5024) = v90;
      v91 = *(v0 + 4096);
      *(v0 + 5040) = *(v0 + 4080);
      *(v0 + 5056) = v91;
      v92 = *(v0 + 4032);
      *(v0 + 4976) = *v26;
      *(v0 + 4992) = v92;
      sub_100005F04(v0 + 4016, v0 + 4496, &qword_1005A9328, &unk_1004C7F20);
      sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
      v93 = String.init<A>(describing:)();
      v95 = sub_10000D01C(v93, v94, v221);

      *(v75 + 54) = v95;
      *(v75 + 62) = 2160;
      *(v75 + 64) = 1752392040;
      *(v75 + 72) = 2081;
      v96 = (v0 + 5744);
      v97 = *(v0 + 5856);
      *(v0 + 5696) = *(v0 + 5840);
      *(v0 + 5712) = v97;
      *(v0 + 5728) = *(v0 + 5872);
      v98 = *(v0 + 5792);
      *(v0 + 5632) = *(v0 + 5776);
      *(v0 + 5648) = v98;
      v99 = *(v0 + 5824);
      *(v0 + 5664) = *(v0 + 5808);
      *(v0 + 5680) = v99;
      v100 = *(v0 + 5760);
      *(v0 + 5600) = *v218;
      *(v0 + 5616) = v100;
      sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
      v101 = String.init<A>(describing:)();
      v103 = sub_10000D01C(v101, v102, v221);

      *(v75 + 74) = v103;
      _os_log_impl(&_mh_execute_header, v72, v73, "LocalStorageService write new serverSettings\nmyInfo: %{private,mask.hash}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s", v75, 0x52u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = (v0 + 5744);
    }

    v58 = (v0 + 6896);
  }

  else
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v104 = *(v0 + 8040);
    v105 = type metadata accessor for Logger();
    sub_10000A6F0(v105, qword_1005E0AC8);
    sub_1001B5440(v104, v0 + 976);
    sub_100005F04(v25, v0 + 7632, &qword_1005AD7A8, &qword_1004CA280);
    v106 = (v0 + 7712);
    sub_100005F04(v0 + 4016, v0 + 5136, &qword_1005A9328, &unk_1004C7F20);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    sub_1001B5478(v104);
    sub_100002CE0(v25, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    if (os_log_type_enabled(v107, v108))
    {
      v109 = *(v0 + 8040);
      v110 = swift_slowAlloc();
      v221[0] = swift_slowAlloc();
      *v110 = 136447747;
      v111 = v109[1];
      *(v0 + 6704) = *v109;
      *(v0 + 6720) = v111;
      v112 = v109[5];
      v114 = v109[2];
      v113 = v109[3];
      *(v0 + 6768) = v109[4];
      *(v0 + 6784) = v112;
      *(v0 + 6736) = v114;
      *(v0 + 6752) = v113;
      v115 = sub_100171264();
      v117 = sub_10000D01C(v115, v116, v221);

      *(v110 + 4) = v117;
      *(v110 + 12) = 2160;
      *(v110 + 14) = 1752392040;
      *(v110 + 22) = 2081;
      v118 = *(v0 + 7760);
      *(v0 + 7184) = *(v0 + 7744);
      *(v0 + 7200) = v118;
      *(v0 + 7216) = *(v0 + 7776);
      v119 = *(v0 + 7728);
      *(v0 + 7152) = *v106;
      *(v0 + 7168) = v119;
      sub_100005F04(v106, v0 + 7072, &qword_1005AD7A8, &qword_1004CA280);
      sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
      v120 = String.init<A>(describing:)();
      v122 = sub_10000D01C(v120, v121, v221);

      *(v110 + 24) = v122;
      *(v110 + 32) = 2160;
      *(v110 + 34) = 1752392040;
      *(v110 + 42) = 2081;
      v123 = *(v0 + 4128);
      *(v0 + 3152) = *(v0 + 4112);
      *(v0 + 3168) = v123;
      v124 = *(v0 + 4160);
      *(v0 + 3184) = *(v0 + 4144);
      *(v0 + 3200) = v124;
      v125 = *(v0 + 4064);
      *(v0 + 3088) = *(v0 + 4048);
      *(v0 + 3104) = v125;
      v126 = *(v0 + 4096);
      *(v0 + 3120) = *(v0 + 4080);
      *(v0 + 3136) = v126;
      v127 = *(v0 + 4032);
      *(v0 + 3056) = *v26;
      *(v0 + 3072) = v127;
      sub_100005F04(v0 + 4016, v0 + 5296, &qword_1005A9328, &unk_1004C7F20);
      sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
      v128 = String.init<A>(describing:)();
      v130 = sub_10000D01C(v128, v129, v221);

      *(v110 + 44) = v130;
      *(v110 + 52) = 2160;
      *(v110 + 54) = 1752392040;
      *(v110 + 62) = 2081;
      v96 = (v0 + 5744);
      v131 = *(v0 + 5856);
      *(v0 + 6272) = *(v0 + 5840);
      *(v0 + 6288) = v131;
      *(v0 + 6304) = *(v0 + 5872);
      v132 = *(v0 + 5792);
      *(v0 + 6208) = *(v0 + 5776);
      *(v0 + 6224) = v132;
      v133 = *(v0 + 5824);
      *(v0 + 6240) = *(v0 + 5808);
      *(v0 + 6256) = v133;
      v134 = *(v0 + 5760);
      *(v0 + 6176) = *v218;
      *(v0 + 6192) = v134;
      sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
      v135 = String.init<A>(describing:)();
      v137 = sub_10000D01C(v135, v136, v221);

      *(v110 + 64) = v137;
      _os_log_impl(&_mh_execute_header, v107, v108, "LocalStorageService write new serverSettings\nmyInfo: %{public}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s", v110, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = (v0 + 5744);
    }
  }

  v138 = *(v0 + 8080);
  v139 = *(v0 + 8040);
  v140 = type metadata accessor for PropertyListEncoder();
  v141 = *(v140 + 48);
  v142 = *(v140 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v143 = v139[1];
  *v216 = *v139;
  *(v0 + 6624) = v143;
  v144 = v139[2];
  v145 = v139[3];
  v146 = v139[5];
  *(v0 + 6672) = v139[4];
  *(v0 + 6688) = v146;
  *(v0 + 6640) = v144;
  *(v0 + 6656) = v145;
  v147 = v139[1];
  *v58 = *v139;
  v58[1] = v147;
  v148 = v139[5];
  v150 = v139[2];
  v149 = v139[3];
  v58[4] = v139[4];
  v58[5] = v148;
  v58[2] = v150;
  v58[3] = v149;
  sub_100032B38(v216, v0 + 6320);
  sub_1001B54A8();
  v151 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v138)
  {
    v153 = v58[3];
    *(v0 + 6448) = v58[2];
    *(v0 + 6464) = v153;
    v154 = v58[5];
    *(v0 + 6480) = v58[4];
    *(v0 + 6496) = v154;
    v155 = v58[1];
    *(v0 + 6416) = *v58;
    *(v0 + 6432) = v155;
    sub_100032B08(v0 + 6416);

    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v220, &qword_1005AD7A8, &qword_1004CA280);
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    sub_10000A6F0(v156, qword_1005E0AC8);
    swift_errorRetain();
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v221[0] = swift_slowAlloc();
      *v159 = 136446466;
      *(v159 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7BC0, v221);
      *(v159 + 12) = 2082;
      *(v0 + 8024) = v138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v160 = String.init<A>(describing:)();
      v162 = sub_10000D01C(v160, v161, v221);

      *(v159 + 14) = v162;
      _os_log_impl(&_mh_execute_header, v157, v158, "%{public}s error: %{public}s", v159, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v173 = *(v0 + 8032);
    v174 = type metadata accessor for Insert();
    (*(*(v174 - 8) + 56))(v173, 1, 1, v174);
  }

  else
  {
    v215 = v152;
    v217 = v151;
    v163 = v58[3];
    *(v0 + 6544) = v58[2];
    *(v0 + 6560) = v163;
    v164 = v58[5];
    *(v0 + 6576) = v58[4];
    *(v0 + 6592) = v164;
    v165 = v58[1];
    *(v0 + 6512) = *v58;
    *(v0 + 6528) = v165;
    sub_100032B08(v0 + 6512);

    v166 = *(v140 + 48);
    v167 = *(v140 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v168 = v96[7];
    *(v0 + 5552) = v96[6];
    *(v0 + 5568) = v168;
    *(v0 + 5584) = v96[8];
    v169 = v96[3];
    *(v0 + 5488) = v96[2];
    *(v0 + 5504) = v169;
    v170 = v96[5];
    *(v0 + 5520) = v96[4];
    *(v0 + 5536) = v170;
    v171 = v96[1];
    *(v0 + 5456) = *v96;
    *(v0 + 5472) = v171;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10033BD84();
    v172 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v214 = v175;
    v219 = v172;

    v176 = *(v140 + 48);
    v177 = *(v140 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v178 = *(v0 + 4128);
    *(v0 + 4912) = *(v0 + 4112);
    *(v0 + 4928) = v178;
    v179 = *(v0 + 4160);
    *(v0 + 4944) = *(v0 + 4144);
    *(v0 + 4960) = v179;
    v180 = *(v0 + 4064);
    *(v0 + 4848) = *(v0 + 4048);
    *(v0 + 4864) = v180;
    v181 = *(v0 + 4096);
    *(v0 + 4880) = *(v0 + 4080);
    *(v0 + 4896) = v181;
    v182 = *(v0 + 4032);
    *(v0 + 4816) = *v26;
    *(v0 + 4832) = v182;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    sub_10033BE08();
    v183 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    log = v184;
    v185 = v183;

    sub_100002CE0(v0 + 4016, &qword_1005A9328, &unk_1004C7F20);
    v186 = *(v140 + 48);
    v187 = *(v140 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v188 = *(v0 + 7760);
    *(v0 + 7024) = *(v0 + 7744);
    *(v0 + 7040) = v188;
    *(v0 + 7056) = *(v0 + 7776);
    v189 = *(v0 + 7728);
    *(v0 + 6992) = *v220;
    *(v0 + 7008) = v189;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    sub_10033BE8C();
    v190 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v210 = v191;
    v212 = v190;

    sub_100002CE0(v220, &qword_1005AD7A8, &qword_1004CA280);
    if (qword_1005A8148 != -1)
    {
      swift_once();
    }

    v192 = *(v0 + 8064);
    v193 = *(v0 + 8056);
    v194 = *(v0 + 8048);
    v195 = type metadata accessor for Table();
    sub_10000A6F0(v195, qword_1005E00A8);
    (*(v193 + 104))(v192, enum case for OnConflict.replace(_:), v194);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    v196 = *(type metadata accessor for Setter() - 8);
    v197 = *(v196 + 72);
    v198 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C0BC0;
    if (qword_1005A82E0 != -1)
    {
      swift_once();
    }

    v199 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
    sub_10000A6F0(v199, qword_1005E0588);
    *(v0 + 8016) = 0;
    <- infix<A>(_:_:)();
    if (qword_1005A82E8 != -1)
    {
      swift_once();
    }

    v200 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    sub_10000A6F0(v200, qword_1005E05A0);
    *(v0 + 8000) = v217;
    *(v0 + 8008) = v215;
    <- infix<A>(_:_:)();
    if (qword_1005A82F8 != -1)
    {
      swift_once();
    }

    v201 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
    sub_10000A6F0(v201, qword_1005E05D0);
    *(v0 + 7952) = v219;
    *(v0 + 7960) = v214;
    <- infix<A>(_:_:)();
    if (qword_1005A82F0 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v201, qword_1005E05B8);
    *(v0 + 7984) = v185;
    *(v0 + 7992) = log;
    <- infix<A>(_:_:)();
    if (qword_1005A8300 != -1)
    {
      swift_once();
    }

    v202 = *(v0 + 8064);
    v203 = *(v0 + 8056);
    v209 = *(v0 + 8048);
    v204 = *(v0 + 8032);
    sub_10000A6F0(v201, qword_1005E05E8);
    *(v0 + 7968) = v212;
    *(v0 + 7976) = v210;
    <- infix<A>(_:_:)();
    QueryType.insert(or:_:)();

    sub_10001A794(v212, v210);
    sub_10001A794(v185, log);
    sub_10001A794(v219, v214);
    sub_1000049D0(v217, v215);
    (*(v203 + 8))(v202, v209);
    v205 = type metadata accessor for Insert();
    (*(*(v205 - 8) + 56))(v204, 0, 1, v205);
  }

  v206 = *(v0 + 8064);

  v207 = *(v0 + 8);

  return v207();
}

uint64_t sub_100332C58()
{
  v15 = v0;
  v1 = v0[1010];
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0AC8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7BC0, &v14);
    *(v5 + 12) = 2082;
    v0[1003] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1004];
  v10 = type metadata accessor for Insert();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = v0[1008];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100332EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for Insert();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Delete();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Table();
  sub_10000A6F0(v14, qword_1005E00D8);
  QueryType.delete()();
  Connection.run(_:)();
  if (v3)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v20 = v10;
  v21 = v9;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (a2 + 32);
    v18 = (v22 + 8);
    do
    {
      memcpy(v25, v17, 0x241uLL);
      sub_10005D0C0(v25, &v24);
      sub_100333184(v25);
      sub_10005D11C(v25);
      Connection.run(_:)();
      (*v18)(v8, v23);
      v17 += 584;
      --v16;
    }

    while (v16);
  }

  return (*(v20 + 8))(v13, v21);
}

uint64_t sub_100333184(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v190 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v183 = &v157 - v11;
  v12 = __chkstk_darwin(v10);
  v182 = &v157 - v13;
  v14 = __chkstk_darwin(v12);
  v181 = &v157 - v15;
  v16 = __chkstk_darwin(v14);
  v180 = &v157 - v17;
  v18 = __chkstk_darwin(v16);
  v179 = &v157 - v19;
  v20 = __chkstk_darwin(v18);
  v178 = &v157 - v21;
  v22 = __chkstk_darwin(v20);
  v177 = &v157 - v23;
  v24 = __chkstk_darwin(v22);
  v176 = &v157 - v25;
  v26 = __chkstk_darwin(v24);
  v175 = &v157 - v27;
  v28 = __chkstk_darwin(v26);
  v173 = &v157 - v29;
  v30 = __chkstk_darwin(v28);
  v174 = &v157 - v31;
  v32 = __chkstk_darwin(v30);
  v172 = &v157 - v33;
  __chkstk_darwin(v32);
  v171 = &v157 - v34;
  v35 = type metadata accessor for OnConflict();
  v188 = *(v35 - 8);
  v189 = v35;
  v36 = *(v188 + 64);
  __chkstk_darwin(v35);
  v186 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Table();
  v185 = *(v187 - 8);
  v38 = *(v185 + 64);
  __chkstk_darwin(v187);
  v184 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PropertyListEncoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = PropertyListEncoder.init()();
  if (*(v2 + 80))
  {
    *&v193 = *(v2 + 80);
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    v44 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {
    }

    v47 = v45;
    v191 = v44;
    v48 = *(v2 + 104);
    if (!v48)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v191 = 0;
    v47 = 0xF000000000000000;
    v48 = *(v2 + 104);
    if (!v48)
    {
LABEL_8:
      v49 = 0;
      v50 = 0xF000000000000000;
      goto LABEL_9;
    }
  }

  *&v193 = v48;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001CCC4(&qword_1005A9EA8);
  v49 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v51 = v191;
    v52 = v47;
    return sub_10001A794(v51, v52);
  }

LABEL_9:
  *&v168 = v49;
  *(&v168 + 1) = v50;
  if (*(v2 + 464))
  {
    *&v193 = *(v2 + 464);
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    v53 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {

      sub_10001A794(v191, v47);
      v52 = *(&v168 + 1);
      v51 = v168;
      return sub_10001A794(v51, v52);
    }

    *&v167 = v53;
    *(&v167 + 1) = v54;
  }

  else
  {
    *&v167 = 0;
    *(&v167 + 1) = 0xF000000000000000;
  }

  v55 = *(v2 + 304);
  v56 = *(v2 + 336);
  v221 = *(v2 + 320);
  v222 = v56;
  v57 = *(v2 + 240);
  v58 = *(v2 + 272);
  v217 = *(v2 + 256);
  v218 = v58;
  v59 = *(v2 + 272);
  v60 = *(v2 + 304);
  v219 = *(v2 + 288);
  v220 = v60;
  v61 = *(v2 + 176);
  v62 = *(v2 + 208);
  v213 = *(v2 + 192);
  v214 = v62;
  v63 = *(v2 + 208);
  v64 = *(v2 + 240);
  v215 = *(v2 + 224);
  v216 = v64;
  v65 = *(v2 + 144);
  v209 = *(v2 + 128);
  v210 = v65;
  v66 = *(v2 + 176);
  v68 = *(v2 + 128);
  v67 = *(v2 + 144);
  v211 = *(v2 + 160);
  v212 = v66;
  v69 = *(v2 + 336);
  v353 = v221;
  v354 = v69;
  v349 = v217;
  v350 = v59;
  v352 = v55;
  v351 = v219;
  v345 = v213;
  v346 = v63;
  v348 = v57;
  v347 = v215;
  v343[0] = v68;
  v343[1] = v67;
  v223 = *(v2 + 352);
  v355 = *(v2 + 352);
  v344 = v61;
  v343[2] = v211;
  if (sub_10004AFD4(v343) == 1 || !v344)
  {
    v70 = 0;
    v71 = 0xF000000000000000;
  }

  else
  {
    *&v193 = v344;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    v70 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v1)
    {

      sub_10001A794(v191, v47);
      sub_10001A794(v168, *(&v168 + 1));
      v52 = *(&v167 + 1);
      v51 = v167;
      return sub_10001A794(v51, v52);
    }
  }

  if (!*(v2 + 368))
  {
    v90 = v71;
    v91 = v70;
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005E0AC8);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v193 = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_10000D01C(0x6628747265736E69, 0xEE00293A65636E65, &v193);
      _os_log_impl(&_mh_execute_header, v93, v94, "%{public}s: encounted fence with no ID.", v95, 0xCu);
      sub_100004984(v96);
    }

    sub_10033BD30();
    swift_allocError();
    *v97 = 0;
    *(v97 + 8) = 0;
    *(v97 + 16) = 2;
    swift_willThrow();
    sub_10001A794(v91, v90);
    sub_10001A794(v167, *(&v167 + 1));
    sub_10001A794(v168, *(&v168 + 1));
    sub_10001A794(v191, v47);
  }

  *(&v157 + 1) = *(v2 + 368);
  v163 = v71;
  v164 = v70;
  v160 = v4;
  *&v157 = *(v2 + 360);
  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v165 = v47;
  v170 = v6;
  v161 = v43;
  v72 = v187;
  v73 = sub_10000A6F0(v187, qword_1005E00D8);
  (*(v185 + 16))(v184, v73, v72);
  (*(v188 + 104))(v186, enum case for OnConflict.replace(_:), v189);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v74 = *(type metadata accessor for Setter() - 8);
  v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v356 = *(v74 + 72);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1004D5F30;
  v159 = v76;
  v77 = v76 + v75;
  if (qword_1005A8318 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0630);
  v208 = *v2;
  v193 = *v2;
  sub_100005F04(&v208, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v208, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8320 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0648);
  v207 = *(v2 + 16);
  v193 = *(v2 + 16);
  sub_100005F04(&v207, v192, &qword_1005A96A8, &qword_1004C3320);
  v78 = v356;
  <- infix<A>(_:_:)();
  sub_100002CE0(&v207, &qword_1005A96A8, &qword_1004C3320);
  v169 = v77;
  if (qword_1005A8328 != -1)
  {
    swift_once();
  }

  v158 = v1;
  sub_10000A6F0(v5, qword_1005E0660);
  v206 = *(v2 + 32);
  v193 = *(v2 + 32);
  sub_100005F04(&v206, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v206, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8330 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0678);
  v205 = *(v2 + 48);
  v193 = *(v2 + 48);
  sub_100005F04(&v205, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v205, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8338 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0690);
  v204 = *(v2 + 64);
  v193 = *(v2 + 64);
  sub_100005F04(&v204, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v204, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8340 != -1)
  {
    swift_once();
  }

  v166 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v166, qword_1005E06A8);
  *&v193 = v191;
  *(&v193 + 1) = v165;
  v79 = v169;
  <- infix<A>(_:_:)();
  if (qword_1005A8348 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06C0);
  v203 = *(v2 + 88);
  v193 = *(v2 + 88);
  sub_100005F04(&v203, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v203, &qword_1005A96A8, &qword_1004C3320);
  v162 = v79 - v78;
  if (qword_1005A8350 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v166, qword_1005E06D8);
  v193 = v168;
  <- infix<A>(_:_:)();
  if (qword_1005A8358 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E06F0);
  v202 = *(v2 + 112);
  v193 = *(v2 + 112);
  sub_100005F04(&v202, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v202, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v80 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v80, qword_1005E0708);
  v193 = v157;
  <- infix<A>(_:_:)();
  if (qword_1005A8368 != -1)
  {
    swift_once();
  }

  *(&v157 + 1) = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(*(&v157 + 1), qword_1005E0720);
  LOBYTE(v193) = *(v2 + 376);
  <- infix<A>(_:_:)();
  if (qword_1005A8370 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0738);
  v201 = *(v2 + 384);
  v193 = *(v2 + 384);
  sub_100005F04(&v201, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v201, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8378 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0750);
  v200 = *(v2 + 400);
  v193 = *(v2 + 400);
  sub_100005F04(&v200, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v200, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8380 != -1)
  {
    swift_once();
  }

  v81 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v81, qword_1005E0768);
  *&v193 = *(v2 + 416);
  BYTE8(v193) = *(v2 + 424);
  <- infix<A>(_:_:)();
  if (qword_1005A8388 != -1)
  {
    swift_once();
  }

  *&v157 = v81;
  sub_10000A6F0(v81, qword_1005E0780);
  *&v193 = *(v2 + 448);
  BYTE8(v193) = *(v2 + 456);
  <- infix<A>(_:_:)();
  if (qword_1005A8390 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0798);
  v199 = *(v2 + 432);
  v193 = *(v2 + 432);
  sub_100005F04(&v199, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v199, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A8398 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(&v157 + 1), qword_1005E07B0);
  LOBYTE(v193) = *(v2 + 457);
  <- infix<A>(_:_:)();
  if (qword_1005A83A0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v166, qword_1005E07C8);
  v193 = v167;
  <- infix<A>(_:_:)();
  if (qword_1005A83A8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E07E0);
  v198 = *(v2 + 472);
  v193 = *(v2 + 472);
  sub_100005F04(&v198, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v198, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v157, qword_1005E07F8);
  *&v193 = *(v2 + 488);
  BYTE8(v193) = *(v2 + 496);
  <- infix<A>(_:_:)();
  if (qword_1005A83B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0810);
  v197 = *(v2 + 504);
  v193 = *(v2 + 504);
  sub_100005F04(&v197, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v197, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0828);
  v196 = *(v2 + 520);
  v193 = *(v2 + 520);
  sub_100005F04(&v196, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v196, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0840);
  v195 = *(v2 + 536);
  v193 = *(v2 + 536);
  sub_100005F04(&v195, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v195, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v5, qword_1005E0858);
  v193 = *(v2 + 552);
  v194 = v193;
  sub_100005F04(&v194, v192, &qword_1005A96A8, &qword_1004C3320);
  <- infix<A>(_:_:)();
  sub_100002CE0(&v194, &qword_1005A96A8, &qword_1004C3320);
  if (qword_1005A83D8 != -1)
  {
    swift_once();
  }

  v82 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10000A6F0(v82, qword_1005E0870);
  *&v193 = *(v2 + 568);
  BYTE8(v193) = *(v2 + 576);
  <- infix<A>(_:_:)();
  v84 = v171;
  v83 = v172;
  v85 = v170;
  if (qword_1005A83E0 != -1)
  {
    swift_once();
  }

  v86 = sub_10000A6F0(v5, qword_1005E0888);
  v87 = *(v85 + 16);
  v87(v84, v86, v5);
  v341[12] = v221;
  v341[13] = v222;
  v342 = v223;
  v341[8] = v217;
  v341[9] = v218;
  v341[11] = v220;
  v341[10] = v219;
  v341[4] = v213;
  v341[5] = v214;
  v341[7] = v216;
  v341[6] = v215;
  v341[0] = v209;
  v341[1] = v210;
  v341[3] = v212;
  v341[2] = v211;
  if (sub_10004AFD4(v341) == 1)
  {
    v88 = 0;
    v89 = 0;
  }

  else
  {
    v89 = *(&v341[0] + 1);
    v88 = *&v341[0];
  }

  *&v193 = v88;
  *(&v193 + 1) = v89;
  <- infix<A>(_:_:)();

  v99 = *(v85 + 8);
  v98 = v85 + 8;
  v171 = v99;
  (v99)(v84, v5);
  if (qword_1005A83E8 != -1)
  {
    swift_once();
  }

  v100 = sub_10000A6F0(v5, qword_1005E08A0);
  v87(v83, v100, v5);
  v338 = v221;
  v339 = v222;
  v340 = v223;
  v334 = v217;
  v335 = v218;
  v337 = v220;
  v336 = v219;
  v330 = v213;
  v331 = v214;
  v333 = v216;
  v332 = v215;
  v326 = v209;
  v327 = v210;
  v329 = v212;
  v328 = v211;
  v101 = sub_10004AFD4(&v326);
  v102 = v173;
  if (v101 == 1)
  {
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v104 = *(&v327 + 1);
    v103 = v327;
  }

  *&v193 = v103;
  *(&v193 + 1) = v104;
  <- infix<A>(_:_:)();

  (v171)(v83, v5);
  if (qword_1005A83F0 != -1)
  {
    swift_once();
  }

  v105 = sub_10000A6F0(v5, qword_1005E08B8);
  v87(v174, v105, v5);
  v323 = v221;
  v324 = v222;
  v325 = v223;
  v319 = v217;
  v320 = v218;
  v322 = v220;
  v321 = v219;
  v315 = v213;
  v316 = v214;
  v318 = v216;
  v317 = v215;
  v312[0] = v209;
  v312[1] = v210;
  v314 = v212;
  v313 = v211;
  v106 = sub_10004AFD4(v312);
  v170 = v98;
  if (v106 == 1)
  {
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v108 = *(&v313 + 1);
    v107 = v313;
  }

  *&v193 = v107;
  *(&v193 + 1) = v108;
  v109 = v174;
  <- infix<A>(_:_:)();

  (v171)(v109, v5);
  if (qword_1005A83F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v166, qword_1005E08D0);
  *&v193 = v164;
  *(&v193 + 1) = v163;
  <- infix<A>(_:_:)();
  if (qword_1005A8400 != -1)
  {
    swift_once();
  }

  v110 = sub_10000A6F0(v5, qword_1005E08E8);
  v87(v102, v110, v5);
  v309 = v221;
  v310 = v222;
  v311 = v223;
  v305 = v217;
  v306 = v218;
  v308 = v220;
  v307 = v219;
  v301 = v213;
  v302 = v214;
  v304 = v216;
  v303 = v215;
  v299[0] = v209;
  v299[1] = v210;
  v300 = v212;
  v299[2] = v211;
  if (sub_10004AFD4(v299) == 1)
  {
    v111 = 0;
    v112 = 0;
  }

  else
  {
    v111 = *(&v300 + 1);
    v112 = v301;
  }

  *&v193 = v111;
  *(&v193 + 1) = v112;
  <- infix<A>(_:_:)();

  (v171)(v102, v5);
  if (qword_1005A8408 != -1)
  {
    swift_once();
  }

  v113 = sub_10000A6F0(v5, qword_1005E0900);
  v87(v175, v113, v5);
  v296 = v221;
  v297 = v222;
  v298 = v223;
  v292 = v217;
  v293 = v218;
  v295 = v220;
  v294 = v219;
  v288 = v213;
  v289 = v214;
  v291 = v216;
  v290 = v215;
  v287[0] = v209;
  v287[1] = v210;
  v287[3] = v212;
  v287[2] = v211;
  if (sub_10004AFD4(v287) == 1)
  {
    v114 = 0;
    v115 = 0;
  }

  else
  {
    v114 = *(&v288 + 1);
    v115 = v289;
  }

  *&v193 = v114;
  *(&v193 + 1) = v115;
  v116 = v175;
  <- infix<A>(_:_:)();

  (v171)(v116, v5);
  if (qword_1005A8410 != -1)
  {
    swift_once();
  }

  v117 = sub_10000A6F0(v5, qword_1005E0918);
  v87(v176, v117, v5);
  v284 = v221;
  v285 = v222;
  v286 = v223;
  v280 = v217;
  v281 = v218;
  v283 = v220;
  v282 = v219;
  v276[4] = v213;
  v277 = v214;
  v279 = v216;
  v278 = v215;
  v276[0] = v209;
  v276[1] = v210;
  v276[3] = v212;
  v276[2] = v211;
  if (sub_10004AFD4(v276) == 1)
  {
    v118 = 0;
    v119 = 0;
  }

  else
  {
    v118 = *(&v277 + 1);
    v119 = v278;
  }

  *&v193 = v118;
  *(&v193 + 1) = v119;
  v120 = v176;
  <- infix<A>(_:_:)();

  (v171)(v120, v5);
  if (qword_1005A8418 != -1)
  {
    swift_once();
  }

  v121 = sub_10000A6F0(v5, qword_1005E0930);
  v87(v177, v121, v5);
  v273 = v221;
  v274 = v222;
  v275 = v223;
  v269 = v217;
  v270 = v218;
  v272 = v220;
  v271 = v219;
  v266[4] = v213;
  v266[5] = v214;
  v268 = v216;
  v267 = v215;
  v266[0] = v209;
  v266[1] = v210;
  v266[3] = v212;
  v266[2] = v211;
  if (sub_10004AFD4(v266) == 1)
  {
    v122 = 0;
    v123 = 0;
  }

  else
  {
    v122 = *(&v267 + 1);
    v123 = v268;
  }

  *&v193 = v122;
  *(&v193 + 1) = v123;
  v124 = v177;
  <- infix<A>(_:_:)();

  (v171)(v124, v5);
  if (qword_1005A8420 != -1)
  {
    swift_once();
  }

  v125 = sub_10000A6F0(v5, qword_1005E0948);
  v87(v178, v125, v5);
  v263 = v221;
  v264 = v222;
  v265 = v223;
  v259 = v217;
  v260 = v218;
  v262 = v220;
  v261 = v219;
  v257[4] = v213;
  v257[5] = v214;
  v258 = v216;
  v257[6] = v215;
  v257[0] = v209;
  v257[1] = v210;
  v257[3] = v212;
  v257[2] = v211;
  if (sub_10004AFD4(v257) == 1)
  {
    v126 = v171;
    v127 = 0;
    v128 = 0;
  }

  else
  {
    v126 = v171;
    v127 = *(&v258 + 1);
    v128 = v259;
  }

  *&v193 = v127;
  *(&v193 + 1) = v128;
  v129 = v178;
  <- infix<A>(_:_:)();

  v126(v129, v5);
  if (qword_1005A8428 != -1)
  {
    swift_once();
  }

  v130 = sub_10000A6F0(v5, qword_1005E0960);
  v87(v179, v130, v5);
  v254 = v221;
  v255 = v222;
  v256 = v223;
  v250 = v217;
  v251 = v218;
  v253 = v220;
  v252 = v219;
  v249[4] = v213;
  v249[5] = v214;
  v249[7] = v216;
  v249[6] = v215;
  v249[0] = v209;
  v249[1] = v210;
  v249[3] = v212;
  v249[2] = v211;
  if (sub_10004AFD4(v249) == 1)
  {
    v131 = 0;
    v132 = 0;
  }

  else
  {
    v131 = *(&v250 + 1);
    v132 = v251;
  }

  *&v193 = v131;
  *(&v193 + 1) = v132;
  v133 = v179;
  <- infix<A>(_:_:)();

  v126(v133, v5);
  if (qword_1005A8430 != -1)
  {
    swift_once();
  }

  v134 = sub_10000A6F0(v5, qword_1005E0978);
  v87(v180, v134, v5);
  v246 = v221;
  v247 = v222;
  v248 = v223;
  v242[8] = v217;
  v243 = v218;
  v245 = v220;
  v244 = v219;
  v242[4] = v213;
  v242[5] = v214;
  v242[7] = v216;
  v242[6] = v215;
  v242[0] = v209;
  v242[1] = v210;
  v242[3] = v212;
  v242[2] = v211;
  if (sub_10004AFD4(v242) == 1)
  {
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v135 = *(&v243 + 1);
    v136 = v244;
  }

  *&v193 = v135;
  *(&v193 + 1) = v136;
  v137 = v180;
  <- infix<A>(_:_:)();

  v126(v137, v5);
  if (qword_1005A8438 != -1)
  {
    swift_once();
  }

  v138 = sub_10000A6F0(v5, qword_1005E0990);
  v87(v181, v138, v5);
  v239 = v221;
  v240 = v222;
  v241 = v223;
  v236[8] = v217;
  v236[9] = v218;
  v238 = v220;
  v237 = v219;
  v236[4] = v213;
  v236[5] = v214;
  v236[7] = v216;
  v236[6] = v215;
  v236[0] = v209;
  v236[1] = v210;
  v236[3] = v212;
  v236[2] = v211;
  if (sub_10004AFD4(v236) == 1)
  {
    v139 = 0;
    v140 = 0;
  }

  else
  {
    v139 = *(&v237 + 1);
    v140 = v238;
  }

  *&v193 = v139;
  *(&v193 + 1) = v140;
  v141 = v181;
  <- infix<A>(_:_:)();

  v126(v141, v5);
  if (qword_1005A8440 != -1)
  {
    swift_once();
  }

  v142 = sub_10000A6F0(v5, qword_1005E09A8);
  v87(v182, v142, v5);
  v233 = v221;
  v234 = v222;
  v235 = v223;
  v231[8] = v217;
  v231[9] = v218;
  v232 = v220;
  v231[10] = v219;
  v231[4] = v213;
  v231[5] = v214;
  v231[7] = v216;
  v231[6] = v215;
  v231[0] = v209;
  v231[1] = v210;
  v231[3] = v212;
  v231[2] = v211;
  if (sub_10004AFD4(v231) == 1)
  {
    v143 = 0;
    v144 = 0;
  }

  else
  {
    v143 = *(&v232 + 1);
    v144 = v233;
  }

  *&v193 = v143;
  *(&v193 + 1) = v144;
  v145 = v182;
  <- infix<A>(_:_:)();

  v126(v145, v5);
  if (qword_1005A8448 != -1)
  {
    swift_once();
  }

  v146 = sub_10000A6F0(v5, qword_1005E09C0);
  v87(v183, v146, v5);
  v228 = v221;
  v229 = v222;
  v230 = v223;
  v227[8] = v217;
  v227[9] = v218;
  v227[11] = v220;
  v227[10] = v219;
  v227[4] = v213;
  v227[5] = v214;
  v227[7] = v216;
  v227[6] = v215;
  v227[0] = v209;
  v227[1] = v210;
  v227[3] = v212;
  v227[2] = v211;
  if (sub_10004AFD4(v227) == 1)
  {
    v147 = 0;
    v148 = 0;
  }

  else
  {
    v147 = *(&v228 + 1);
    v148 = v229;
  }

  *&v193 = v147;
  *(&v193 + 1) = v148;
  v149 = v183;
  <- infix<A>(_:_:)();

  v126(v149, v5);
  if (qword_1005A8450 != -1)
  {
    swift_once();
  }

  v150 = sub_10000A6F0(v5, qword_1005E09D8);
  v87(v190, v150, v5);
  v224[12] = v221;
  v225 = v222;
  v226 = v223;
  v224[8] = v217;
  v224[9] = v218;
  v224[10] = v219;
  v224[11] = v220;
  v224[4] = v213;
  v224[5] = v214;
  v224[6] = v215;
  v224[7] = v216;
  v224[0] = v209;
  v224[1] = v210;
  v224[2] = v211;
  v224[3] = v212;
  if (sub_10004AFD4(v224) == 1)
  {
    v151 = 0;
    v152 = 0;
  }

  else
  {
    v151 = *(&v225 + 1);
    v152 = v226;
  }

  *&v193 = v151;
  *(&v193 + 1) = v152;
  v153 = v190;
  <- infix<A>(_:_:)();

  v126(v153, v5);
  v155 = v186;
  v154 = v187;
  v156 = v184;
  QueryType.insert(or:_:)();

  sub_10001A794(v191, v165);
  sub_10001A794(v168, *(&v168 + 1));
  sub_10001A794(v167, *(&v167 + 1));

  sub_10001A794(v164, v163);
  (*(v188 + 8))(v155, v189);
  return (*(v185 + 8))(v156, v154);
}

uint64_t sub_100335BAC(uint64_t a1)
{
  v2 = sub_10033C4F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100335BE8(uint64_t a1)
{
  v2 = sub_10033C4F0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100335C24()
{
  if (!*(v0 + 16))
  {
    return 3;
  }

  if (*(v0 + 16) == 1)
  {
    return 0;
  }

  if (*v0 == 0)
  {
    return 2;
  }

  return 1;
}

uint64_t sub_100335C5C(uint64_t a1, uint64_t a2)
{
  v3[56] = a1;
  v3[57] = a2;
  v4 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  v3[58] = v4;
  v5 = *(v4 - 8);
  v3[59] = v5;
  v6 = *(v5 + 64) + 15;
  v3[60] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  v3[61] = v7;
  v8 = *(v7 - 8);
  v3[62] = v8;
  v9 = *(v8 + 64) + 15;
  v3[63] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  v3[64] = v10;
  v11 = *(v10 - 8);
  v3[65] = v11;
  v12 = *(v11 + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005AE998, &unk_1004D6030) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v14 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  v3[76] = v14;
  v15 = *(v14 - 8);
  v3[77] = v15;
  v16 = *(v15 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v17 = type metadata accessor for OnConflict();
  v3[80] = v17;
  v18 = *(v17 - 8);
  v3[81] = v18;
  v19 = *(v18 + 64) + 15;
  v3[82] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v21 = type metadata accessor for Table();
  v3[96] = v21;
  v22 = *(v21 - 8);
  v3[97] = v22;
  v23 = *(v22 + 64) + 15;
  v3[98] = swift_task_alloc();

  return _swift_task_switch(sub_100336084, v2, 0);
}

uint64_t sub_100336084()
{
  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 456);
  v5 = sub_10000A6F0(v3, qword_1005E0078);
  (*(v2 + 16))(v1, v5, v3);
  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v288 = type metadata accessor for FriendRecord(0);
  *(v0 + 400) = *(v4 + v288[12]);

  sub_10004B564(&qword_1005A9E20, &qword_1004C3350);
  sub_10033C09C();
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v275 = v10;
  v276 = v9;

  v11 = *(v0 + 760);
  v12 = *(v0 + 456);
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v284 = v12;
  v286 = v288[36];
  sub_100005F04(v12 + v286, v11, &qword_1005B3360, &unk_1004C6AA0);
  v15 = type metadata accessor for Handle();
  v16 = *(v15 - 8);
  v289 = *(v16 + 48);
  v17 = v289(v11, 1, v15);
  v18 = *(v0 + 760);
  if (v17 == 1)
  {
    sub_100002CE0(*(v0 + 760), &qword_1005B3360, &unk_1004C6AA0);
    v19 = 0;
  }

  else
  {
    v19 = Handle.pushIdentifiers.getter();
    (*(v16 + 8))(v18, v15);
  }

  *(v0 + 440) = v19;
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v273 = v21;
  v274 = v20;

  v22 = *(v0 + 752);

  v23 = *(v6 + 48);
  v24 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100005F04(v284 + v286, v22, &qword_1005B3360, &unk_1004C6AA0);
  v25 = v289(v22, 1, v15);
  v26 = *(v0 + 752);
  if (v25 == 1)
  {
    sub_100002CE0(*(v0 + 752), &qword_1005B3360, &unk_1004C6AA0);
    v27 = 0;
  }

  else
  {
    v27 = Handle.expiresByGroupId.getter();
    (*(v16 + 8))(v26, v15);
  }

  *(v0 + 424) = v27;
  sub_10004B564(&qword_1005B1DC8, &unk_1004D6040);
  sub_10033C144();
  v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v271 = v29;
  v272 = v28;

  v30 = *(v0 + 456);

  v31 = *(v6 + 48);
  v32 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 416) = *(v30 + v288[34]);

  sub_10004B564(&qword_1005AEB40, &qword_1004CF770);
  sub_10033C1C8();
  v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v270 = v34;
  v267 = v33;
  v35 = *(v0 + 656);
  v36 = *(v0 + 648);
  v37 = *(v0 + 640);

  (*(v36 + 104))(v35, enum case for OnConflict.replace(_:), v37);
  sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
  v38 = *(type metadata accessor for Setter() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = xmmword_1004D5F40;
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 456);
  v42 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v42, qword_1005E01E0);
  v43 = *v41;
  v44 = v41[1];
  *(v0 + 80) = String.lowercased()();
  <- infix<A>(_:_:)();

  if (qword_1005A81B0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E01F8);
  v46 = *(v45 + 16);
  v47 = *(v45 + 24);
  *(v0 + 96) = v46;
  *(v0 + 104) = v47;

  <- infix<A>(_:_:)();

  if (qword_1005A81B8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 632);
  v49 = *(v0 + 616);
  v50 = *(v0 + 608);
  v51 = *(v0 + 600);
  v52 = *(v0 + 456);
  v53 = sub_10000A6F0(v50, qword_1005E0210);
  v259 = *(v49 + 16);
  v259(v48, v53, v50);
  sub_100005F04(v52 + v288[6], v51, &qword_1005AE998, &unk_1004D6030);
  v54 = type metadata accessor for IDSStatus();
  v55 = *(v54 - 8);
  v254 = *(v55 + 48);
  v56 = v254(v51, 1, v54);
  v57 = *(v0 + 600);
  v257 = v54;
  v264 = v55;
  if (v56 == 1)
  {
    sub_100002CE0(v57, &qword_1005AE998, &unk_1004D6030);
    v58 = 0;
  }

  else
  {
    v58 = IDSStatus.rawValue.getter();
    (*(v55 + 8))(v57, v54);
  }

  v59 = v56 == 1;
  v60 = *(v0 + 632);
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  *(v0 + 352) = v58;
  *(v0 + 360) = v59;
  <- infix<A>(_:_:)();
  v262 = *(v61 + 8);
  v262(v60, v62);
  if (qword_1005A81C0 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0228);
  v64 = (v63 + v288[7]);
  v65 = v64[1];
  *(v0 + 112) = *v64;
  *(v0 + 120) = v65;

  <- infix<A>(_:_:)();

  if (qword_1005A81C8 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 456);
  v67 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10000A6F0(v67, qword_1005E0240);
  *(v0 + 408) = *(v66 + v288[8]);
  <- infix<A>(_:_:)();
  if (qword_1005A81D0 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0258);
  v69 = (v68 + v288[9]);
  v70 = v69[1];
  *(v0 + 144) = *v69;
  *(v0 + 152) = v70;

  <- infix<A>(_:_:)();

  if (qword_1005A81D8 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0270);
  v72 = (v71 + v288[10]);
  v73 = v72[1];
  *(v0 + 160) = *v72;
  *(v0 + 168) = v73;

  <- infix<A>(_:_:)();

  if (qword_1005A81E0 != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 464), qword_1005E0288);
  *(v0 + 362) = *(v74 + v288[11]);
  <- infix<A>(_:_:)();
  if (qword_1005A81E8 != -1)
  {
    swift_once();
  }

  v268 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v268, qword_1005E02A0);
  *(v0 + 192) = v276;
  *(v0 + 200) = v275;
  <- infix<A>(_:_:)();
  if (qword_1005A81F0 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E02B8);
  v76 = (v75 + v288[13]);
  v77 = v76[1];
  *(v0 + 208) = *v76;
  *(v0 + 216) = v77;

  <- infix<A>(_:_:)();

  if (qword_1005A81F8 != -1)
  {
    swift_once();
  }

  v78 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E02D0);
  v79 = (v78 + v288[14]);
  v80 = v79[1];
  *(v0 + 224) = *v79;
  *(v0 + 232) = v80;

  <- infix<A>(_:_:)();

  if (qword_1005A8208 != -1)
  {
    swift_once();
  }

  v81 = *(v0 + 456);
  sub_10000A6F0(*(v0 + 512), qword_1005E0300);
  v82 = (v81 + v288[16]);
  v83 = v82[1];
  *(v0 + 240) = *v82;
  *(v0 + 248) = v83;

  <- infix<A>(_:_:)();

  if (qword_1005A8200 != -1)
  {
    swift_once();
  }

  v84 = *(v0 + 456);
  sub_10000A6F0(v42, qword_1005E02E8);
  v85 = (v84 + v288[15]);
  v86 = v85[1];
  *(v0 + 256) = *v85;
  *(v0 + 264) = v86;

  <- infix<A>(_:_:)();

  if (qword_1005A8210 != -1)
  {
    swift_once();
  }

  v87 = *(v0 + 744);
  v88 = *(v0 + 584);
  v89 = *(v0 + 520);
  v90 = *(v0 + 512);
  v91 = sub_10000A6F0(v90, qword_1005E0318);
  v280 = *(v89 + 16);
  v280(v88, v91, v90);
  sub_100005F04(v284 + v286, v87, &qword_1005B3360, &unk_1004C6AA0);
  v92 = v289(v87, 1, v15);
  v93 = *(v0 + 744);
  if (v92 == 1)
  {
    sub_100002CE0(*(v0 + 744), &qword_1005B3360, &unk_1004C6AA0);
    v94 = 0;
    v95 = 0;
  }

  else
  {
    v96 = *(v0 + 744);
    v94 = Handle.identifier.getter();
    v95 = v97;
    (*(v16 + 8))(v93, v15);
  }

  v98 = *(v0 + 584);
  v99 = *(v0 + 520);
  v100 = *(v0 + 512);
  *(v0 + 272) = v94;
  *(v0 + 280) = v95;
  <- infix<A>(_:_:)();

  v278 = *(v99 + 8);
  v278(v98, v100);
  if (qword_1005A8218 != -1)
  {
    swift_once();
  }

  v101 = *(v0 + 736);
  v102 = *(v0 + 576);
  v103 = *(v0 + 512);
  v104 = sub_10000A6F0(v103, qword_1005E0330);
  v280(v102, v104, v103);
  sub_100005F04(v284 + v286, v101, &qword_1005B3360, &unk_1004C6AA0);
  v105 = v289(v101, 1, v15);
  v106 = *(v0 + 736);
  if (v105 == 1)
  {
    sub_100002CE0(*(v0 + 736), &qword_1005B3360, &unk_1004C6AA0);
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v109 = *(v0 + 736);
    v107 = Handle.qualifiedIdentifier.getter();
    v108 = v110;
    (*(v16 + 8))(v106, v15);
  }

  v111 = *(v0 + 576);
  v112 = *(v0 + 512);
  *(v0 + 288) = v107;
  *(v0 + 296) = v108;
  <- infix<A>(_:_:)();

  v278(v111, v112);
  if (qword_1005A8220 != -1)
  {
    swift_once();
  }

  v113 = *(v0 + 728);
  v114 = *(v0 + 624);
  v115 = *(v0 + 608);
  v116 = sub_10000A6F0(v115, qword_1005E0348);
  v259(v114, v116, v115);
  sub_100005F04(v284 + v286, v113, &qword_1005B3360, &unk_1004C6AA0);
  v117 = v289(v113, 1, v15);
  v118 = *(v0 + 728);
  if (v117 == 1)
  {
    v119 = &qword_1005B3360;
    v120 = &unk_1004C6AA0;
    v121 = *(v0 + 728);
LABEL_54:
    sub_100002CE0(v121, v119, v120);
    v125 = 0;
    v126 = 1;
    goto LABEL_56;
  }

  v122 = *(v0 + 592);
  Handle.idsStatus.getter();
  (*(v16 + 8))(v118, v15);
  v123 = v254(v122, 1, v257);
  v124 = *(v0 + 592);
  if (v123 == 1)
  {
    v119 = &qword_1005AE998;
    v120 = &unk_1004D6030;
    v121 = *(v0 + 592);
    goto LABEL_54;
  }

  v127 = *(v0 + 592);
  v125 = IDSStatus.rawValue.getter();
  (*(v264 + 8))(v124, v257);
  v126 = 0;
LABEL_56:
  v128 = *(v0 + 624);
  v129 = *(v0 + 608);
  *(v0 + 368) = v125;
  *(v0 + 376) = v126;
  <- infix<A>(_:_:)();
  v262(v128, v129);
  if (qword_1005A8228 != -1)
  {
    swift_once();
  }

  v130 = *(v0 + 720);
  v131 = *(v0 + 568);
  v132 = *(v0 + 512);
  v133 = sub_10000A6F0(v132, qword_1005E0360);
  v280(v131, v133, v132);
  sub_100005F04(v284 + v286, v130, &qword_1005B3360, &unk_1004C6AA0);
  v134 = v289(v130, 1, v15);
  v135 = *(v0 + 720);
  if (v134 == 1)
  {
    sub_100002CE0(*(v0 + 720), &qword_1005B3360, &unk_1004C6AA0);
    v136 = 0;
    v137 = 0;
  }

  else
  {
    v138 = *(v0 + 720);
    v136 = Handle.dsid.getter();
    v137 = v139;
    (*(v16 + 8))(v135, v15);
  }

  v140 = *(v0 + 568);
  v141 = *(v0 + 512);
  *(v0 + 304) = v136;
  *(v0 + 312) = v137;
  <- infix<A>(_:_:)();

  v278(v140, v141);
  if (qword_1005A8238 != -1)
  {
    swift_once();
  }

  v142 = *(v0 + 712);
  v144 = *(v0 + 496);
  v143 = *(v0 + 504);
  v145 = *(v0 + 488);
  v146 = sub_10000A6F0(v145, qword_1005E0390);
  (*(v144 + 16))(v143, v146, v145);
  sub_100005F04(v284 + v286, v142, &qword_1005B3360, &unk_1004C6AA0);
  v147 = v289(v142, 1, v15);
  v148 = *(v0 + 712);
  if (v147 == 1)
  {
    sub_100002CE0(*(v0 + 712), &qword_1005B3360, &unk_1004C6AA0);
    v149 = 0;
  }

  else
  {
    Handle.trackingTimestamp.getter();
    v149 = v150;
    (*(v16 + 8))(v148, v15);
  }

  v151 = v147 == 1;
  v153 = *(v0 + 496);
  v152 = *(v0 + 504);
  v154 = *(v0 + 488);
  *(v0 + 384) = v149;
  *(v0 + 392) = v151;
  <- infix<A>(_:_:)();
  (*(v153 + 8))(v152, v154);
  if (qword_1005A8240 != -1)
  {
    swift_once();
  }

  v155 = *(v0 + 704);
  v156 = *(v0 + 560);
  v157 = *(v0 + 512);
  v158 = sub_10000A6F0(v157, qword_1005E03A8);
  v280(v156, v158, v157);
  sub_100005F04(v284 + v286, v155, &qword_1005B3360, &unk_1004C6AA0);
  v159 = v289(v155, 1, v15);
  v160 = *(v0 + 704);
  if (v159 == 1)
  {
    sub_100002CE0(*(v0 + 704), &qword_1005B3360, &unk_1004C6AA0);
    v161 = 0;
    v162 = 0;
  }

  else
  {
    v163 = *(v0 + 704);
    v161 = Handle.hashedDSID.getter();
    v162 = v164;
    (*(v16 + 8))(v160, v15);
  }

  v165 = *(v0 + 560);
  v166 = *(v0 + 512);
  *(v0 + 320) = v161;
  *(v0 + 328) = v162;
  <- infix<A>(_:_:)();

  v278(v165, v166);
  if (qword_1005A8248 != -1)
  {
    swift_once();
  }

  v167 = *(v0 + 696);
  v168 = *(v0 + 552);
  v169 = *(v0 + 512);
  v170 = sub_10000A6F0(v169, qword_1005E03C0);
  v280(v168, v170, v169);
  sub_100005F04(v284 + v286, v167, &qword_1005B3360, &unk_1004C6AA0);
  v171 = v289(v167, 1, v15);
  v172 = *(v0 + 696);
  if (v171 == 1)
  {
    sub_100002CE0(*(v0 + 696), &qword_1005B3360, &unk_1004C6AA0);
    v173 = 0;
    v174 = 0;
  }

  else
  {
    v175 = *(v0 + 696);
    v173 = Handle.favoriteOrder.getter();
    v174 = v176;
    (*(v16 + 8))(v172, v15);
  }

  v177 = *(v0 + 552);
  v178 = *(v0 + 512);
  *(v0 + 336) = v173;
  *(v0 + 344) = v174;
  <- infix<A>(_:_:)();

  v278(v177, v178);
  if (qword_1005A8230 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v268, qword_1005E0378);
  *(v0 + 16) = v272;
  *(v0 + 24) = v271;
  <- infix<A>(_:_:)();
  if (qword_1005A8250 != -1)
  {
    swift_once();
  }

  v179 = *(v0 + 688);
  v181 = *(v0 + 472);
  v180 = *(v0 + 480);
  v182 = *(v0 + 464);
  v183 = sub_10000A6F0(v182, qword_1005E03D8);
  (*(v181 + 16))(v180, v183, v182);
  sub_100005F04(v284 + v286, v179, &qword_1005B3360, &unk_1004C6AA0);
  v184 = v289(v179, 1, v15);
  v185 = *(v0 + 688);
  if (v184 == 1)
  {
    sub_100002CE0(*(v0 + 688), &qword_1005B3360, &unk_1004C6AA0);
    v186 = 2;
  }

  else
  {
    v187 = *(v0 + 688);
    v186 = Handle.reachable.getter();
    (*(v16 + 8))(v185, v15);
  }

  v189 = *(v0 + 472);
  v188 = *(v0 + 480);
  v190 = *(v0 + 464);
  *(v0 + 361) = v186;
  <- infix<A>(_:_:)();
  (*(v189 + 8))(v188, v190);
  if (qword_1005A8258 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v268, qword_1005E03F0);
  *(v0 + 176) = v274;
  *(v0 + 184) = v273;
  <- infix<A>(_:_:)();
  if (qword_1005A8260 != -1)
  {
    swift_once();
  }

  v191 = *(v0 + 680);
  v192 = *(v0 + 544);
  v193 = *(v0 + 512);
  v194 = sub_10000A6F0(v193, qword_1005E0408);
  v280(v192, v194, v193);
  sub_100005F04(v284 + v286, v191, &qword_1005B3360, &unk_1004C6AA0);
  v195 = v289(v191, 1, v15);
  v196 = *(v0 + 680);
  if (v195 == 1)
  {
    sub_100002CE0(*(v0 + 680), &qword_1005B3360, &unk_1004C6AA0);
    v197 = 0;
    v198 = 0;
  }

  else
  {
    v199 = *(v0 + 680);
    v197 = Handle.prettyName.getter();
    v198 = v200;
    (*(v16 + 8))(v196, v15);
  }

  v201 = *(v0 + 544);
  v202 = *(v0 + 512);
  *(v0 + 128) = v197;
  *(v0 + 136) = v198;
  <- infix<A>(_:_:)();

  v278(v201, v202);
  if (qword_1005A8268 != -1)
  {
    swift_once();
  }

  v203 = *(v0 + 672);
  v204 = *(v0 + 536);
  v205 = *(v0 + 512);
  v206 = sub_10000A6F0(v205, qword_1005E0420);
  v280(v204, v206, v205);
  sub_100005F04(v284 + v286, v203, &qword_1005B3360, &unk_1004C6AA0);
  v207 = v289(v203, 1, v15);
  v208 = *(v0 + 672);
  if (v207 == 1)
  {
    sub_100002CE0(*(v0 + 672), &qword_1005B3360, &unk_1004C6AA0);
    v209 = 0;
    v210 = 0;
  }

  else
  {
    v211 = *(v0 + 672);
    v209 = Handle.contactIdentifier.getter();
    v210 = v212;
    (*(v16 + 8))(v208, v15);
  }

  v213 = *(v0 + 536);
  v214 = *(v0 + 512);
  *(v0 + 64) = v209;
  *(v0 + 72) = v210;
  <- infix<A>(_:_:)();

  v278(v213, v214);
  if (qword_1005A8270 != -1)
  {
    swift_once();
  }

  v215 = *(v0 + 664);
  v216 = *(v0 + 528);
  v217 = *(v0 + 512);
  v218 = sub_10000A6F0(v217, qword_1005E0438);
  v280(v216, v218, v217);
  sub_100005F04(v284 + v286, v215, &qword_1005B3360, &unk_1004C6AA0);
  v219 = v289(v215, 1, v15);
  v220 = *(v0 + 664);
  if (v219 == 1)
  {
    sub_100002CE0(*(v0 + 664), &qword_1005B3360, &unk_1004C6AA0);
    v221 = 0;
    v222 = 0;
  }

  else
  {
    v223 = *(v0 + 664);
    v221 = Handle.serverID.getter();
    v222 = v224;
    (*(v16 + 8))(v220, v15);
  }

  v225 = *(v0 + 528);
  v226 = *(v0 + 512);
  *(v0 + 48) = v221;
  *(v0 + 56) = v222;
  <- infix<A>(_:_:)();

  v278(v225, v226);
  if (qword_1005A8280 != -1)
  {
    swift_once();
  }

  v227 = *(v0 + 456);
  v228 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v228, qword_1005E0468);
  *(v0 + 363) = *(v227 + v288[31]);
  <- infix<A>(_:_:)();
  if (qword_1005A8288 != -1)
  {
    swift_once();
  }

  v229 = *(v0 + 456);
  sub_10000A6F0(v228, qword_1005E0480);
  *(v0 + 364) = *(v229 + v288[32]);
  <- infix<A>(_:_:)();
  if (qword_1005A8290 != -1)
  {
    swift_once();
  }

  v230 = *(v0 + 456);
  v291 = v228;
  sub_10000A6F0(v228, qword_1005E0498);
  *(v0 + 365) = *(v230 + v288[33]);
  <- infix<A>(_:_:)();
  if (qword_1005A82A0 != -1)
  {
    swift_once();
  }

  v231 = *(v0 + 456);
  v232 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  sub_10000A6F0(v232, qword_1005E04C8);
  *(v0 + 432) = *(v231 + v288[35]);
  sub_10001D2D8();
  <- infix<A>(_:_:)();
  if (qword_1005A8298 != -1)
  {
    swift_once();
  }

  v233 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v233, qword_1005E04B0);
  *(v0 + 32) = v267;
  *(v0 + 40) = v270;
  <- infix<A>(_:_:)();
  if (qword_1005A8278 != -1)
  {
    swift_once();
  }

  v234 = *(v0 + 784);
  v235 = *(v0 + 776);
  v236 = *(v0 + 768);
  v244 = *(v0 + 760);
  v245 = *(v0 + 752);
  v246 = *(v0 + 744);
  v247 = *(v0 + 736);
  v248 = *(v0 + 728);
  v249 = *(v0 + 720);
  v250 = *(v0 + 712);
  v251 = *(v0 + 704);
  v252 = *(v0 + 696);
  v253 = *(v0 + 688);
  v255 = *(v0 + 680);
  v256 = *(v0 + 672);
  v237 = *(v0 + 656);
  v238 = *(v0 + 648);
  v243 = *(v0 + 640);
  v258 = *(v0 + 664);
  v260 = *(v0 + 632);
  v261 = *(v0 + 624);
  v263 = *(v0 + 600);
  v265 = *(v0 + 592);
  v266 = *(v0 + 584);
  v269 = *(v0 + 576);
  v277 = *(v0 + 568);
  v279 = *(v0 + 560);
  v282 = *(v0 + 552);
  v285 = *(v0 + 544);
  v281 = *(v0 + 536);
  v283 = *(v0 + 528);
  v287 = *(v0 + 504);
  v290 = *(v0 + 480);
  v239 = *(v0 + 448);
  v240 = *(v0 + 456);
  sub_10000A6F0(v291, qword_1005E0450);
  *(v0 + 366) = *(v240 + v288[30]);
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  sub_1000049D0(v267, v270);
  sub_10001A794(v272, v271);
  sub_10001A794(v274, v273);
  sub_10001A794(v276, v275);
  (*(v238 + 8))(v237, v243);
  (*(v235 + 8))(v234, v236);

  v241 = *(v0 + 8);

  return v241();
}

uint64_t sub_1003384D0(uint64_t *a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  Friend.handle.getter();
  Handle.identifier.getter();
  (*(v3 + 8))(v6, v2);
  v9 = String.lowercased()();

  if (v7 == v9._countAndFlagsBits && v8 == v9._object)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10033861C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FriendRecord(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100338708()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AE0);
  sub_10000A6F0(v0, qword_1005E0AE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100338788(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = type metadata accessor for FriendInfoOption(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27 = v10;
    v29 = &v27;
    __chkstk_darwin(v7);
    v28 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v11);
    v30 = 0;
    v10 = 0;
    v33 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_10033C390(*(v33 + 48) + *(v31 + 72) * v21, v9, type metadata accessor for FriendInfoOption);
      v22 = v32(v9);
      sub_10033C3F8(v9, type metadata accessor for FriendInfoOption);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v22)
      {
        *&v28[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_10033916C(v28, v27, v30, v33);
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return sub_10033916C(v28, v27, v30, v33);
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_100338F80(v25, v10, a3, v32);

  if (!v3)
  {
    return v26;
  }

  return result;
}

uint64_t sub_100338AC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for FriendInfoOption(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_10033C390(*(v32 + 48) + *(v30 + 72) * v22, v10, type metadata accessor for FriendInfoOption);
    v23 = v31(v10);
    result = sub_10033C3F8(v10, type metadata accessor for FriendInfoOption);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_10033916C(v28, v27, v29, v25);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100338D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v9 = *(*(v42 - 8) + 64);
  result = __chkstk_darwin(v42);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v11 + 16;
  v38 = v11;
  v35 = 0;
  v36 = (v11 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      return (*v36)(v24, v23);
    }

    v29 = v27;
    result = (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        return v33(v34, v32, v35, v31);
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100338F80(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100338AC0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100339010(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1003390B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_100338D18(result, a2, a3, a4, a5, &type metadata accessor for Device, sub_10033948C);

    return v10;
  }

  return result;
}

uint64_t sub_10033916C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FriendInfoOption(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8 - 8);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0560, &qword_1004D6070);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v16 = v33;
  v32 = a4;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_10033C390(v20 + v21 * (v17 | (v14 << 6)), v16, type metadata accessor for FriendInfoOption);
    v22 = *(v11 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for HandleType();
    sub_10000A49C(&qword_1005AE818, &type metadata accessor for HandleType);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      v16 = v33;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v15 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    v16 = v33;
LABEL_26:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_10033C458(v16, *(v11 + 48) + v26 * v21, type metadata accessor for FriendInfoOption);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v13 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10033948C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Device();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10004B564(&qword_1005B0570, &qword_1004D1EC0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003397B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for ClientID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10004B564(&qword_1005B05E8, &qword_1004D6100);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10000A49C(&qword_1005AE9D0, &type metadata accessor for ClientID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_100339AF0(uint64_t a1)
{
  v44 = type metadata accessor for HandleType();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FriendRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = (&v40 - v11);
  __chkstk_darwin(v10);
  v50 = &v40 - v12;
  v13 = type metadata accessor for Friend();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v45 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v54 = 0;
  v23 = *(v14 + 16);
  v21 = v14 + 16;
  v22 = v23;
  v24 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v25 = *(v21 + 56);
  v42 = (v2 + 8);
  v46 = (v21 - 8);
  v47 = v25;
  v26 = _swiftEmptyArrayStorage;
  v48 = v23;
  v49 = v13;
  v53 = &v40 - v18;
  v41 = v6;
  for (i = (v23)(v19, v24, v13); ; i = v48(v19, v24, v13))
  {
    __chkstk_darwin(i);
    *(&v40 - 2) = v19;
    v28 = v54;
    result = sub_10033861C(sub_10033C27C, (&v40 - 4), v26);
    v54 = v28;
    if (v30)
    {
      v31 = v45;
      v22(v45, v19, v13);
      v32 = v52;
      sub_1001A80DC(v31, v52);
      sub_10033C390(v32, v51, type metadata accessor for FriendRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1001FD4B4(0, v26[2] + 1, 1, v26);
      }

      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        v26 = sub_1001FD4B4(v33 > 1, v34 + 1, 1, v26);
      }

      sub_10033C3F8(v52, type metadata accessor for FriendRecord);
      v26[2] = v34 + 1;
      sub_10033C458(v51, v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, type metadata accessor for FriendRecord);
      goto LABEL_4;
    }

    v35 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= v26[2])
    {
      goto LABEL_20;
    }

    v36 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v37 = *(v6 + 72) * result;
    sub_10033C390(v26 + v36 + v37, v50, type metadata accessor for FriendRecord);
    v38 = v43;
    v39 = v53;
    Friend.type.getter();
    sub_1001A952C(v39, v38);
    (*v42)(v38, v44);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100339ADC(v26);
      v26 = result;
    }

    if (v35 >= v26[2])
    {
      goto LABEL_21;
    }

    sub_10033C29C(v50, v26 + v36 + v37);
    v6 = v41;
LABEL_4:
    v19 = v53;
    v13 = v49;
    (*v46)(v53, v49);
    v22 = v48;
    v24 += v47;
    if (!--v20)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100339FCC()
{
  v57 = type metadata accessor for Device();
  v0 = *(v57 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v57);
  v54 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v47 = v44 - v4;
  v5 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v44 - v10;
  v12 = type metadata accessor for Row();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v44 - v18;
  v20 = v64;
  result = Connection.prepare(_:)();
  if (!v20)
  {
    v22 = result;
    v53 = v9;
    v45 = v19;
    v48 = v13;
    v46 = v11;
    v44[2] = 0;

    v23 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v67 = _swiftEmptyArrayStorage;
    sub_1002395B4(0, v23 & ~(v23 >> 63), 0);
    v24 = v67;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v58 = result;
    if (v23 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v55 = v12;
    v56 = v0;
    v44[1] = v22;
    if (v23)
    {
      v51 = (v48 + 16);
      v52 = (v48 + 48);
      v49 = v0 + 32;
      v50 = (v48 + 8);
      v25 = v53;
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v52)(v25, 1, v12);
        if (result == 1)
        {
          goto LABEL_46;
        }

        (*v51)(v17, v25, v12);
        if (qword_1005A82A8 != -1)
        {
          swift_once();
        }

        v26 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
        sub_10000A6F0(v26, qword_1005E04E0);
        Row.subscript.getter();
        v62 = v66;
        v63 = v65;
        if (qword_1005A82B0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v26, qword_1005E04F8);
        Row.subscript.getter();
        v60 = v66;
        v61 = v65;
        if (qword_1005A82B8 != -1)
        {
          swift_once();
        }

        v64 = v24;
        sub_10000A6F0(v26, qword_1005E0510);
        Row.subscript.getter();
        v59 = v65;
        if (qword_1005A82C0 != -1)
        {
          swift_once();
        }

        v27 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
        sub_10000A6F0(v27, qword_1005E0528);
        Row.subscript.getter();
        if (qword_1005A82C8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v27, qword_1005E0540);
        Row.subscript.getter();
        if (qword_1005A82D0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v27, qword_1005E0558);
        Row.subscript.getter();
        if (qword_1005A82D8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v27, qword_1005E0570);
        Row.subscript.getter();
        v28 = v54;
        Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
        v29 = *v50;
        v12 = v55;
        (*v50)(v17, v55);
        v25 = v53;
        v29(v53, v12);
        v24 = v64;
        v67 = v64;
        v31 = v64[2];
        v30 = v64[3];
        if (v31 >= v30 >> 1)
        {
          sub_1002395B4(v30 > 1, v31 + 1, 1);
          v28 = v54;
          v24 = v67;
        }

        v24[2] = v31 + 1;
        v0 = v56;
        (*(v56 + 32))(v24 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v31, v28, v57);
      }

      while (--v23);
    }

    v32 = v46;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v33 = v48;
    v34 = *(v48 + 48);
    v59 = v48 + 48;
    v54 = v34;
    if ((v34)(v32, 1, v12) != 1)
    {
      v36 = *(v33 + 32);
      v35 = v33 + 32;
      v52 = (v35 - 16);
      v53 = v36;
      v50 = (v0 + 32);
      v51 = (v35 - 24);
      v37 = v45;
      v48 = v35;
      do
      {
        v53(v37, v32, v12);
        (*v52)(v17, v37, v12);
        if (qword_1005A82A8 != -1)
        {
          swift_once();
        }

        v38 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
        sub_10000A6F0(v38, qword_1005E04E0);
        Row.subscript.getter();
        v62 = v66;
        v63 = v65;
        if (qword_1005A82B0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v38, qword_1005E04F8);
        Row.subscript.getter();
        v60 = v66;
        v61 = v65;
        if (qword_1005A82B8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v38, qword_1005E0510);
        Row.subscript.getter();
        if (qword_1005A82C0 != -1)
        {
          swift_once();
        }

        v64 = v24;
        v39 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
        sub_10000A6F0(v39, qword_1005E0528);
        Row.subscript.getter();
        if (qword_1005A82C8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v39, qword_1005E0540);
        Row.subscript.getter();
        if (qword_1005A82D0 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v39, qword_1005E0558);
        Row.subscript.getter();
        if (qword_1005A82D8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v39, qword_1005E0570);
        Row.subscript.getter();
        v40 = v47;
        Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
        v41 = *v51;
        v12 = v55;
        (*v51)(v17, v55);
        v37 = v45;
        v41(v45, v12);
        v24 = v64;
        v67 = v64;
        v43 = v64[2];
        v42 = v64[3];
        if (v43 >= v42 >> 1)
        {
          sub_1002395B4(v42 > 1, v43 + 1, 1);
          v24 = v67;
        }

        v24[2] = v43 + 1;
        (*(v56 + 32))(v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v43, v40, v57);
        v32 = v46;
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while ((v54)(v32, 1, v12) != 1);
    }

    sub_100002CE0(v32, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1D60, &qword_1004D5FB0);
    result = swift_allocObject();
    *(result + 16) = v24;
  }

  return result;
}

uint64_t sub_10033AB70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v41 = a1;
  v6 = type metadata accessor for Device();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v38 - v13;
  v44 = a3;
  v45 = 0;
  v15 = 0;
  v16 = *(a3 + 56);
  v40 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v52 = v12 + 16;
  v49 = a4 + 56;
  v42 = v20;
  v43 = v12;
  v53 = (v12 + 8);
LABEL_6:
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_13:
    v24 = v21 | (v15 << 6);
    v25 = *(v44 + 48);
    v26 = *(v43 + 72);
    v47 = v24;
    v50 = *(v43 + 16);
    v51 = v26;
    v50(v14, v25 + v26 * v24, v6);
    v27 = *(a4 + 16);
    v46 = v53 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v27 && (v28 = *(a4 + 40), sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(a4 + 32), v31 = v29 & ~v30, ((*(v49 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
    {
      v32 = a4;
      v33 = ~v30;
      do
      {
        v50(v10, *(v32 + 48) + v31 * v51, v6);
        sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v53;
        (*v53)(v10, v6);
        if (v34)
        {
          result = (v35)(v14, v6);
          a4 = v32;
          v20 = v42;
          v19 = v48;
          goto LABEL_6;
        }

        v31 = (v31 + 1) & v33;
      }

      while (((*(v49 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      a4 = v32;
      v20 = v42;
      result = (v35)(v14, v6);
    }

    else
    {
      result = (*v53)(v14, v6);
    }

    *(v41 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v36 = __OFADD__(v45++, 1);
    v19 = v48;
    if (v36)
    {
      goto LABEL_25;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      v37 = v44;

      return sub_10033948C(v41, v39, v45, v37);
    }

    v23 = *(v40 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10033AF34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v54 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v42 - v11;
  v13 = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = 8 * v15;

  if (v14 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v43 = v15;
    v44 = v3;
    v42[1] = v42;
    __chkstk_darwin(v17);
    v46 = v42 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v16);
    v50 = 0;
    v15 = 0;
    v18 = *(a1 + 56);
    v45 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = v19 < 64 ? ~(-1 << v19) : -1;
    v21 = v20 & v18;
    v3 = (v19 + 63) >> 6;
    v55 = a2 + 56;
    v58 = v7 + 2;
    v59 = (v7 + 1);
    v48 = a1;
    v49 = v7;
    v47 = v3;
LABEL_7:
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
LABEL_14:
      v25 = v22 | (v15 << 6);
      v26 = *(a1 + 48);
      v27 = v7[9];
      v52 = v25;
      v56 = v7[2];
      v57 = v27;
      v56(v12, v26 + v27 * v25, v6);
      v28 = *(a2 + 16);
      v51 = v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v28 && (v29 = *(a2 + 40), sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device), v16 = v12, v30 = dispatch thunk of Hashable._rawHashValue(seed:)(), v31 = -1 << *(a2 + 32), v32 = v30 & ~v31, ((*(v55 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v33 = v12;
        v34 = a2;
        v35 = ~v31;
        do
        {
          v36 = v54;
          v56(v54, *(v34 + 48) + v32 * v57, v6);
          sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device);
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();
          v37 = *v59;
          (*v59)(v36, v6);
          if (v16)
          {
            v12 = v33;
            v37(v33, v6);
            a2 = v34;
            a1 = v48;
            v7 = v49;
            v3 = v47;
            v21 = v53;
            goto LABEL_7;
          }

          v32 = (v32 + 1) & v35;
        }

        while (((*(v55 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
        a2 = v34;
        v12 = v33;
        v3 = v47;
        a1 = v48;
        v37(v12, v6);
      }

      else
      {
        (*v59)(v12, v6);
      }

      *&v46[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
      v7 = v49;
      v38 = __OFADD__(v50++, 1);
      v21 = v53;
      if (v38)
      {
        goto LABEL_27;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v3)
      {
        v39 = sub_10033948C(v46, v43, v50, a1);

        return v39;
      }

      v24 = *(v45 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v53 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();

  v39 = sub_100339010(v41, v15, a1, a2, sub_10033AB70);

  return v39;
}

uint64_t sub_10033B450(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a2;
  v39 = a1;
  v6 = type metadata accessor for Device();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v51 = &v38 - v13;
  v14 = 0;
  v44 = v12;
  v45 = a3;
  v15 = *(a3 + 56);
  v40 = a3 + 56;
  v41 = 0;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v49 = v12 + 16;
  v50 = a4;
  v47 = a4 + 7;
  v20 = (v12 + 8);
  v43 = v19;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v14 << 6);
    v25 = *(v45 + 48);
    v26 = *(v44 + 72);
    v42 = v24;
    v48 = v26;
    v27 = *(v44 + 16);
    v27(v51, v25 + v26 * v24, v6);
    if (v50[2] && (v28 = v50, v29 = v50[5], sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device), v30 = dispatch thunk of Hashable._rawHashValue(seed:)(), v31 = -1 << *(v28 + 32), v32 = v30 & ~v31, ((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v27(v10, v50[6] + v32 * v48, v6);
        sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v20;
        (*v20)(v10, v6);
        if (v34)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = v35(v51, v6);
      *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v36 = __OFADD__(v41++, 1);
      v19 = v43;
      v18 = v46;
      if (v36)
      {
        __break(1u);
LABEL_22:
        v37 = v45;

        return sub_10033948C(v39, v38, v41, v37);
      }
    }

    else
    {
LABEL_5:
      result = (*v20)(v51, v6);
      v19 = v43;
      v18 = v46;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_22;
    }

    v23 = *(v40 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033B7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = __chkstk_darwin(v6);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v39 - v11;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();

      v36 = sub_100339010(v38, v14, a1, a2, sub_10033B450);

      return v36;
    }
  }

  v40 = v14;
  v41 = v3;
  v39 = &v39;
  __chkstk_darwin(v16);
  v42 = &v39 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v15);
  v17 = 0;
  v18 = 0;
  v19 = *(a1 + 56);
  v43 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v51 = a2 + 56;
  v47 = a1;
  v48 = v7;
  v53 = (v7 + 8);
  v54 = v7 + 16;
  v46 = v23;
  while (2)
  {
    v44 = v17;
    while (1)
    {
      if (!v22)
      {
        v25 = v18;
        while (1)
        {
          v18 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v18 >= v23)
          {
            goto LABEL_24;
          }

          v26 = *(v43 + 8 * v18);
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v49 = (v26 - 1) & v26;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v24 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
LABEL_15:
      v27 = v24 | (v18 << 6);
      v28 = *(a1 + 48);
      v29 = *(v48 + 9);
      v45 = v27;
      v52 = v29;
      v30 = *(v48 + 2);
      v30(v55, v28 + v29 * v27, v6);
      if (*(a2 + 16))
      {
        v31 = *(a2 + 40);
        sub_10000A49C(&qword_1005AE9C0, &type metadata accessor for Device);
        v15 = v55;
        v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v33 = -1 << *(a2 + 32);
        v14 = v32 & ~v33;
        if ((*(v51 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          break;
        }
      }

LABEL_7:
      (*v53)(v55, v6);
      v23 = v46;
      a1 = v47;
      v22 = v49;
    }

    v3 = ~v33;
    while (1)
    {
      v34 = a2;
      v7 = v50;
      v30(v50, *(a2 + 48) + v14 * v52, v6);
      sub_10000A49C(&qword_1005AE9C8, &type metadata accessor for Device);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *v53;
      (*v53)(v7, v6);
      if (v15)
      {
        break;
      }

      v14 = (v14 + 1) & v3;
      a2 = v34;
      if (((*(v51 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v35(v55, v6);
    v23 = v46;
    *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
    v17 = v44 + 1;
    a2 = v34;
    a1 = v47;
    v22 = v49;
    if (!__OFADD__(v44, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v36 = sub_10033948C(v42, v40, v44, a1);

  return v36;
}

unint64_t sub_10033BD30()
{
  result = qword_1005B1D78;
  if (!qword_1005B1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D78);
  }

  return result;
}

unint64_t sub_10033BD84()
{
  result = qword_1005B1D88;
  if (!qword_1005B1D88)
  {
    sub_10004B610(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_1001B54FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D88);
  }

  return result;
}

unint64_t sub_10033BE08()
{
  result = qword_1005B1D90;
  if (!qword_1005B1D90)
  {
    sub_10004B610(&qword_1005A9328, &unk_1004C7F20);
    sub_100145258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D90);
  }

  return result;
}

unint64_t sub_10033BE8C()
{
  result = qword_1005B1D98;
  if (!qword_1005B1D98)
  {
    sub_10004B610(&qword_1005AD7A8, &qword_1004CA280);
    sub_1001B5550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1D98);
  }

  return result;
}

unint64_t sub_10033BF10()
{
  result = qword_1005B1DA8;
  if (!qword_1005B1DA8)
  {
    sub_10004B610(&qword_1005AD7A8, &qword_1004CA280);
    sub_10017DB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DA8);
  }

  return result;
}

unint64_t sub_10033BF94()
{
  result = qword_1005B1DB0;
  if (!qword_1005B1DB0)
  {
    sub_10004B610(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10017E074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DB0);
  }

  return result;
}

unint64_t sub_10033C018()
{
  result = qword_1005B1DB8;
  if (!qword_1005B1DB8)
  {
    sub_10004B610(&qword_1005A9328, &unk_1004C7F20);
    sub_1001452AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DB8);
  }

  return result;
}

unint64_t sub_10033C09C()
{
  result = qword_1005B1DC0;
  if (!qword_1005B1DC0)
  {
    sub_10004B610(&qword_1005A9E20, &qword_1004C3350);
    sub_10001CCC4(&qword_1005A9EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DC0);
  }

  return result;
}

unint64_t sub_10033C144()
{
  result = qword_1005B1DD0;
  if (!qword_1005B1DD0)
  {
    sub_10004B610(&qword_1005B1DC8, &unk_1004D6040);
    sub_1001A7A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1DD0);
  }

  return result;
}

unint64_t sub_10033C1C8()
{
  result = qword_1005AEB68;
  if (!qword_1005AEB68)
  {
    sub_10004B610(&qword_1005AEB40, &qword_1004CF770);
    sub_10000A49C(&qword_1005AEB70, type metadata accessor for FriendInfoOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEB68);
  }

  return result;
}

uint64_t sub_10033C29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033C300(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033C390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033C3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033C458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033C4C0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_10033C4F0()
{
  result = qword_1005B1E10;
  if (!qword_1005B1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1E10);
  }

  return result;
}

unint64_t sub_10033C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1005A8318 != -1)
  {
    swift_once();
  }

  v8 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v8, qword_1005E0630);
  Row.subscript.getter();
  v9 = v61;
  if (qword_1005A8320 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0648);
  Row.subscript.getter();
  v58 = v61;
  if (qword_1005A8328 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0660);
  Row.subscript.getter();
  v57 = v61;
  if (qword_1005A8330 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0678);
  Row.subscript.getter();
  v10 = v61;
  if (qword_1005A8338 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0690);
  Row.subscript.getter();
  v11 = v61;
  if (qword_1005A8340 != -1)
  {
    swift_once();
  }

  v74 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v74, qword_1005E06A8);
  Row.subscript.getter();
  if (*(&v61 + 1) >> 60 == 15)
  {
    v59 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v61, *(&v61 + 1));
      v12 = type metadata accessor for Row();
      return (*(*(v12 - 8) + 8))(a1, v12);
    }

    v59 = v61;
  }

  v60 = *(&v61 + 1);
  if (qword_1005A8348 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E06C0);
  Row.subscript.getter();
  v53 = v61;
  if (qword_1005A8350 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v74, qword_1005E06D8);
  Row.subscript.getter();
  if (*(&v61 + 1) >> 60 == 15)
  {
    v54 = *(&v61 + 1);
    v55 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v61, *(&v61 + 1));
      sub_10001A794(v61, *(&v61 + 1));

      v14 = type metadata accessor for Row();
      return (*(*(v14 - 8) + 8))(a1, v14);
    }

    v54 = *(&v61 + 1);
    v55 = v61;
  }

  if (qword_1005A8358 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E06F0);
  Row.subscript.getter();
  v15 = v61;
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v56 = *(&v61 + 1);
  v16 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v16, qword_1005E0708);
  Row.subscript.getter();
  v17 = v61;
  if (qword_1005A8368 != -1)
  {
    swift_once();
  }

  v18 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v18, qword_1005E0720);
  Row.subscript.getter();
  v52 = v61;
  if (qword_1005A8370 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0738);
  Row.subscript.getter();
  v19 = v61;
  if (qword_1005A8378 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0750);
  Row.subscript.getter();
  v20 = v61;
  if (qword_1005A8380 != -1)
  {
    swift_once();
  }

  v21 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v21, qword_1005E0768);
  Row.subscript.getter();
  v51 = v61;
  v49 = BYTE8(v61);
  if (qword_1005A8390 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0798);
  Row.subscript.getter();
  v22 = v61;
  if (qword_1005A8388 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v21, qword_1005E0780);
  Row.subscript.getter();
  v50 = v61;
  v47 = BYTE8(v61);
  if (qword_1005A8398 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E07B0);
  Row.subscript.getter();
  v48 = v61;
  if (qword_1005A83A0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v74, qword_1005E07C8);
  Row.subscript.getter();
  if (*(&v61 + 1) >> 60 == 15)
  {
    v46 = 0;
  }

  else
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v61, *(&v61 + 1));
      sub_10001A794(v61, *(&v61 + 1));
      sub_10001A794(v61, *(&v61 + 1));
      goto LABEL_78;
    }

    v46 = v61;
  }

  if (qword_1005A83A8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E07E0);
  Row.subscript.getter();
  v23 = v61;
  if (qword_1005A83B0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v21, qword_1005E07F8);
  Row.subscript.getter();
  v45 = v61;
  v44 = BYTE8(v61);
  if (qword_1005A83B8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0810);
  Row.subscript.getter();
  v24 = v61;
  if (qword_1005A83C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0828);
  Row.subscript.getter();
  v25 = v61;
  if (qword_1005A83C8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0840);
  Row.subscript.getter();
  v26 = v61;
  if (qword_1005A83D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0858);
  Row.subscript.getter();
  v27 = v61;
  if (qword_1005A83D8 != -1)
  {
    swift_once();
  }

  v28 = sub_10004B564(&qword_1005B1A50, &qword_1004D5860);
  sub_10000A6F0(v28, qword_1005E0870);
  Row.subscript.getter();
  v43 = v61;
  v42 = BYTE8(v61);
  if (qword_1005A83E0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0888);
  Row.subscript.getter();
  if (qword_1005A83E8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E08A0);
  Row.subscript.getter();
  if (qword_1005A83F0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E08B8);
  Row.subscript.getter();
  if (qword_1005A83F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v74, qword_1005E08D0);
  Row.subscript.getter();
  if (*(&v61 + 1) >> 60 != 15)
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10033DE38();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (!v2)
    {
      v41 = v61;
      goto LABEL_80;
    }

    sub_10001A794(v61, *(&v61 + 1));
    sub_10001A794(v61, *(&v61 + 1));
    sub_10001A794(v61, *(&v61 + 1));
    sub_10001A794(v61, *(&v61 + 1));

LABEL_78:

    v29 = type metadata accessor for Row();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }

  v41 = 0;
LABEL_80:
  if (qword_1005A8400 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E08E8);
  Row.subscript.getter();
  if (qword_1005A8408 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0900);
  Row.subscript.getter();
  if (qword_1005A8410 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0918);
  Row.subscript.getter();
  if (qword_1005A8418 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0930);
  Row.subscript.getter();
  if (qword_1005A8420 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0948);
  Row.subscript.getter();
  if (qword_1005A8428 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0960);
  Row.subscript.getter();
  if (qword_1005A8430 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E0978);
  Row.subscript.getter();
  if (qword_1005A8438 != -1)
  {
    swift_once();
  }

  v74 = v2;
  sub_10000A6F0(v8, qword_1005E0990);
  Row.subscript.getter();
  if (qword_1005A8440 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E09A8);
  Row.subscript.getter();
  if (qword_1005A8448 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E09C0);
  Row.subscript.getter();
  if (qword_1005A8450 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v8, qword_1005E09D8);
  Row.subscript.getter();

  sub_10001A794(v61, *(&v61 + 1));
  sub_10001A794(v61, *(&v61 + 1));
  sub_10001A794(v61, *(&v61 + 1));
  sub_10001A794(v61, *(&v61 + 1));
  v30 = type metadata accessor for Row();
  (*(*(v30 - 8) + 8))(a1, v30);
  v62 = v61;
  v63 = v61;
  *v64 = v41;
  *&v64[8] = v61;
  *&v64[24] = v61;
  *&v64[40] = v61;
  *&v64[56] = v61;
  *&v64[72] = v61;
  *&v64[88] = v61;
  *&v64[104] = v61;
  *&v64[120] = v61;
  *&v64[136] = v61;
  *&v64[152] = v61;
  *&v64[168] = v61;
  v31._countAndFlagsBits = &v61;
  result = DarwinNotification.init(name:value:)(v31, v32);
  v72 = v49;
  v70 = v47;
  v67 = v44;
  v65 = v42;
  *a2 = v9;
  *(a2 + 16) = v58;
  *(a2 + 24) = v60;
  *(a2 + 32) = v57;
  *(a2 + 40) = v56;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v59;
  *(a2 + 88) = v53;
  *(a2 + 96) = v54;
  *(a2 + 104) = v55;
  *(a2 + 112) = v15;
  v33 = *&v64[160];
  *(a2 + 320) = *&v64[144];
  *(a2 + 336) = v33;
  v34 = *&v64[176];
  v35 = *&v64[96];
  *(a2 + 256) = *&v64[80];
  *(a2 + 272) = v35;
  v36 = *&v64[128];
  *(a2 + 288) = *&v64[112];
  *(a2 + 304) = v36;
  v37 = *&v64[32];
  *(a2 + 192) = *&v64[16];
  *(a2 + 208) = v37;
  v38 = *&v64[64];
  *(a2 + 224) = *&v64[48];
  *(a2 + 240) = v38;
  v39 = v62;
  *(a2 + 128) = v61;
  *(a2 + 144) = v39;
  v40 = *v64;
  *(a2 + 160) = v63;
  *(a2 + 176) = v40;
  *(a2 + 352) = v34;
  *(a2 + 360) = v17;
  *(a2 + 376) = v52;
  *(a2 + 377) = v73[0];
  *(a2 + 380) = *(v73 + 3);
  *(a2 + 384) = v19;
  *(a2 + 400) = v20;
  *(a2 + 416) = v51;
  *(a2 + 424) = v72;
  *(a2 + 425) = *v71;
  *(a2 + 428) = *&v71[3];
  *(a2 + 432) = v22;
  *(a2 + 448) = v50;
  *(a2 + 456) = v70;
  *(a2 + 457) = v48;
  *(a2 + 458) = v68;
  *(a2 + 462) = v69;
  *(a2 + 464) = v46;
  *(a2 + 472) = v23;
  *(a2 + 488) = v45;
  *(a2 + 496) = v67;
  *(a2 + 497) = *v66;
  *(a2 + 500) = *&v66[3];
  *(a2 + 504) = v24;
  *(a2 + 520) = v25;
  *(a2 + 536) = v26;
  *(a2 + 552) = v27;
  *(a2 + 568) = v43;
  *(a2 + 576) = v65;
  return result;
}

unint64_t sub_10033DE38()
{
  result = qword_1005A9E80;
  if (!qword_1005A9E80)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9E80);
  }

  return result;
}

uint64_t sub_10033DEB4()
{
  v1 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - v3;
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  if (*(v0 + 112))
  {
    v16 = *(v0 + 112);

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();
  }

  swift_beginAccess();
  v17 = *(v0 + 120);

  sub_10044C970(v18, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000CF9E4(v8);
  }

  v31 = *(v10 + 32);
  v31(v15, v8, v9);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  (*(v10 + 16))(v13, v15, v9);
  v22 = sub_1003404B8(&qword_1005B1F28, v21, type metadata accessor for BackgroundLocationsTimeoutManager);
  v23 = *(v10 + 80);
  v30 = v4;
  v24 = (v23 + 32) & ~v23;
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v0;
  *(v26 + 24) = v22;
  v31((v26 + v24), v13, v9);
  *(v26 + v25) = v0;
  swift_retain_n();
  v27 = sub_10020D620(0, 0, v30, &unk_1004D62D0, v26);
  (*(v10 + 8))(v15, v9);
  v28 = *(v0 + 112);
  *(v0 + 112) = v27;
}

uint64_t sub_10033E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10033E30C, a5, 0);
}

uint64_t sub_10033E30C()
{
  v1 = v0[6];
  v2 = v0[2];
  Date.timeIntervalSinceNow.getter();
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10033E3F8;
  v7 = v0[6];

  return sub_100291918(v3, v5, 0, 0, 1);
}

uint64_t sub_10033E3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_10033E654;
  }

  else
  {
    v9 = sub_10033E580;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10033E580()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[6];

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_10033E6B8;
    v5 = v0[3];

    return sub_10033E7D0();
  }
}

uint64_t sub_10033E654()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10033E6B8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10033E7D0()
{
  v1[11] = v0;
  v2 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for ClientID();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B1F18, &qword_1004D62B8) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10033E98C, v0, 0);
}

uint64_t sub_10033E98C()
{
  v14 = v0;
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  v0[24] = sub_10000A6F0(v2, qword_1005E0B10);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E7C60, &v13);
    *(v7 + 12) = 2050;
    swift_beginAccess();
    *(v7 + 14) = *(*(v6 + 120) + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Subscriptions %{public}ld", v7, 0x16u);
    sub_100004984(v8);
  }

  else
  {
    v9 = v0[11];
  }

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_10033EB8C;

  return daemon.getter();
}

uint64_t sub_10033EB8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  *(v3 + 208) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1003404B8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1003404B8(&qword_1005A9308, 255, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_10033ED70;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10033ED70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v10 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[11];
    v6 = sub_10033FE9C;
  }

  else
  {
    v7 = v3[26];
    v8 = v3[11];

    v6 = sub_10033EE98;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033EE98()
{
  v74 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 240) = v2;
  v3 = *(v2 + 32);
  *(v0 + 288) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = *(v0 + 240);
LABEL_14:
      v14 = *(v0 + 176);
      v15 = *(v0 + 136);
      v16 = *(v0 + 144);
      v70 = v15;
      v71 = *(v0 + 168);
      v17 = *(v0 + 128);
      v69 = v17;
      v19 = *(v0 + 104);
      v18 = *(v0 + 112);
      v20 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v21 = v20 | (v8 << 6);
      v22 = *(v9 + 48) + *(v16 + 72) * v21;
      (*(v16 + 16))();
      (*(v18 + 16))(v17, *(v9 + 56) + *(v18 + 72) * v21, v19);
      v23 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      v24 = *(v23 + 48);
      (*(v16 + 32))(v14, v71, v70);
      (*(v18 + 32))(v14 + v24, v69, v19);
      (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
      v12 = v8;
LABEL_15:
      *(v0 + 248) = v6;
      *(v0 + 256) = v12;
      v25 = *(v0 + 184);
      sub_100340448(*(v0 + 176), v25);
      v26 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
      {
        break;
      }

      v27 = *(v0 + 184);
      v28 = *(v0 + 112);
      v29 = *(v0 + 120);
      v30 = *(v0 + 104);
      v31 = *(v26 + 48);
      (*(*(v0 + 144) + 32))(*(v0 + 160), v27, *(v0 + 136));
      (*(v28 + 32))(v29, v27 + v31, v30);
      Date.timeIntervalSinceNow.getter();
      if (v32 < 0.0)
      {
        v51 = *(v0 + 192);
        (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        v54 = os_log_type_enabled(v52, v53);
        v56 = *(v0 + 144);
        v55 = *(v0 + 152);
        v57 = *(v0 + 136);
        if (v54)
        {
          v58 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v73 = v72;
          *v58 = 136446210;
          sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v60;
          v62 = *(v56 + 8);
          v62(v55, v57);
          v63 = sub_10000D01C(v59, v61, &v73);

          *(v58 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v52, v53, "Client have expired: %{public}s", v58, 0xCu);
          sub_100004984(v72);
        }

        else
        {

          v62 = *(v56 + 8);
          v62(v55, v57);
        }

        *(v0 + 264) = v62;
        v64 = swift_task_alloc();
        *(v0 + 272) = v64;
        *v64 = v0;
        v64[1] = sub_10033F504;
        v65 = *(v0 + 224);
        v66 = *(v0 + 160);

        return sub_100384D84(v66);
      }

      v33 = *(v0 + 160);
      v35 = *(v0 + 136);
      v34 = *(v0 + 144);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      result = (*(v34 + 8))(v33, v35);
      v8 = v12;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v38 = *(v0 + 240);
    v39 = *(v0 + 88);

    if (*(*(v39 + 120) + 16))
    {
      v40 = *(v0 + 224);
      v41 = *(v0 + 88);
      sub_10033DEB4();

      v43 = *(v0 + 176);
      v42 = *(v0 + 184);
      v45 = *(v0 + 160);
      v44 = *(v0 + 168);
      v46 = *(v0 + 152);
      v48 = *(v0 + 120);
      v47 = *(v0 + 128);
      v49 = *(v0 + 96);

      v50 = *(v0 + 8);

      return v50();
    }

    else
    {
      v67 = swift_task_alloc();
      *(v0 + 280) = v67;
      *v67 = v0;
      v67[1] = sub_10033FCC0;
      v68 = *(v0 + 224);

      return sub_100349F80();
    }
  }

  else
  {
LABEL_6:
    v10 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v36 = *(v0 + 176);
        v37 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
        (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
        v6 = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 240);
      v6 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v6)
      {
        v8 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10033F504()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10033F614, v2, 0);
}

uint64_t sub_10033F614()
{
  v78 = v0;
  v74 = *(v0 + 264);
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 144) + 8;
  swift_beginAccess();
  sub_1001FF60C(v1, v6);
  sub_1000CF9E4(v6);
  swift_endAccess();
  sub_10033DEB4();
  (*(v4 + 8))(v3, v5);
  result = v74(v1, v2);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  if (v11)
  {
    while (1)
    {
      v12 = *(v0 + 240);
LABEL_11:
      v17 = *(v0 + 176);
      v18 = *(v0 + 136);
      v19 = *(v0 + 144);
      v73 = v18;
      v75 = *(v0 + 168);
      v20 = *(v0 + 128);
      v72 = v20;
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      v23 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v24 = v23 | (v10 << 6);
      v25 = *(v12 + 48) + *(v19 + 72) * v24;
      (*(v19 + 16))();
      (*(v21 + 16))(v20, *(v12 + 56) + *(v21 + 72) * v24, v22);
      v26 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      v27 = *(v26 + 48);
      (*(v19 + 32))(v17, v75, v73);
      (*(v21 + 32))(v17 + v27, v72, v22);
      (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
      v15 = v10;
LABEL_12:
      *(v0 + 248) = v11;
      *(v0 + 256) = v15;
      v28 = *(v0 + 184);
      sub_100340448(*(v0 + 176), v28);
      v29 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
      {
        break;
      }

      v30 = *(v0 + 184);
      v31 = *(v0 + 112);
      v32 = *(v0 + 120);
      v33 = *(v0 + 104);
      v34 = *(v29 + 48);
      (*(*(v0 + 144) + 32))(*(v0 + 160), v30, *(v0 + 136));
      (*(v31 + 32))(v32, v30 + v34, v33);
      Date.timeIntervalSinceNow.getter();
      if (v35 < 0.0)
      {
        v54 = *(v0 + 192);
        (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        v57 = os_log_type_enabled(v55, v56);
        v59 = *(v0 + 144);
        v58 = *(v0 + 152);
        v60 = *(v0 + 136);
        if (v57)
        {
          v61 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v77 = v76;
          *v61 = 136446210;
          sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = v63;
          v65 = *(v59 + 8);
          v65(v58, v60);
          v66 = sub_10000D01C(v62, v64, &v77);

          *(v61 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v55, v56, "Client have expired: %{public}s", v61, 0xCu);
          sub_100004984(v76);
        }

        else
        {

          v65 = *(v59 + 8);
          v65(v58, v60);
        }

        *(v0 + 264) = v65;
        v67 = swift_task_alloc();
        *(v0 + 272) = v67;
        *v67 = v0;
        v67[1] = sub_10033F504;
        v68 = *(v0 + 224);
        v69 = *(v0 + 160);

        return sub_100384D84(v69);
      }

      v36 = *(v0 + 160);
      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      result = (*(v37 + 8))(v36, v38);
      v10 = v15;
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    v41 = *(v0 + 240);
    v42 = *(v0 + 88);

    if (*(*(v42 + 120) + 16))
    {
      v43 = *(v0 + 224);
      v44 = *(v0 + 88);
      sub_10033DEB4();

      v46 = *(v0 + 176);
      v45 = *(v0 + 184);
      v48 = *(v0 + 160);
      v47 = *(v0 + 168);
      v49 = *(v0 + 152);
      v51 = *(v0 + 120);
      v50 = *(v0 + 128);
      v52 = *(v0 + 96);

      v53 = *(v0 + 8);

      return v53();
    }

    else
    {
      v70 = swift_task_alloc();
      *(v0 + 280) = v70;
      *v70 = v0;
      v70[1] = sub_10033FCC0;
      v71 = *(v0 + 224);

      return sub_100349F80();
    }
  }

  else
  {
LABEL_3:
    v13 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v13 <= (v10 + 1))
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v39 = *(v0 + 176);
        v40 = sub_10004B564(&qword_1005B1F20, &qword_1004D62C0);
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
        v11 = 0;
        goto LABEL_12;
      }

      v12 = *(v0 + 240);
      v11 = *(v12 + 8 * v16 + 64);
      ++v10;
      if (v11)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10033FCC0()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10033FDD0, v2, 0);
}

uint64_t sub_10033FDD0()
{
  v1 = v0[28];

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10033FE9C()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];

  v10 = v0[1];
  v11 = v0[29];

  return v10();
}

uint64_t sub_10033FF6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for ClientID();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003400CC, v1, 0);
}

uint64_t sub_1003400CC()
{
  v30 = v0;
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B10);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136315138;
    sub_1003404B8(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v8;
    v15 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v14, v17, &v29);
    v6 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v27, "monitorBackgroundSession: %s", v13, 0xCu);
    sub_100004984(v28);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[13];
  v20 = v0[10];
  v22 = v0[8];
  v21 = v0[9];
  v24 = v0[6];
  v23 = v0[7];
  v6(v19, v0[5], v0[11]);
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  (*(v22 + 8))(v21, v23);
  (*(v22 + 56))(v20, 0, 1, v23);
  swift_beginAccess();
  sub_1001464BC(v20, v19);
  swift_endAccess();
  sub_10033DEB4();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003403E4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100340448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B1F18, &qword_1004D62B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003404B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100340500(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_10033E248(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100340620()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B1F30);
  v1 = sub_10000A6F0(v0, qword_1005B1F30);
  if (qword_1005A84B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0AF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003406E8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AF8);
  sub_10000A6F0(v0, qword_1005E0AF8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100340768(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = result & 0xC000000000000001;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

LABEL_10:
    v6 = 0;
    while (2)
    {
      for (i = v6; ; ++i)
      {
        if (v3)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v8 = *(v1 + 8 * i + 32);
        }

        v9 = v8;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if ([v8 imageDataAvailable])
        {

          return v9;
        }

        if (!v5)
        {

          goto LABEL_29;
        }

        if ([v5 isSuggested] && (objc_msgSend(v9, "isSuggested") & 1) == 0)
        {
          break;
        }

        if (v6 == v2)
        {
          return v5;
        }
      }

      if (qword_1005A84B0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000A6F0(v10, qword_1005B1F30);
      v11 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      log = v11;
      if (os_log_type_enabled(v11, v14))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v16 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E7C80, &v16);
        _os_log_impl(&_mh_execute_header, log, v14, "%{public}s Replacing suggested contact with non-suggested contact", v12, 0xCu);
        sub_100004984(v13);
      }

      v5 = v9;
LABEL_29:
      if (v6 != v2)
      {
        continue;
      }

      return v5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  v3 = v1 & 0xC000000000000001;
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3)
  {
LABEL_35:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v5 = v4;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_10;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100340A1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return _swift_task_switch(sub_100340AAC, 0, 0);
}

uint64_t sub_100340AAC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = static Handle.isPhoneNumber(_:)();
  v4 = v0[7];
  v5 = v0[8];
  if (v3)
  {
    v6 = objc_allocWithZone(CNPhoneNumber);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithStringValue:v7];

    v9 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v8 prefixHint:0];
  }

  else
  {
    v10 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v10 predicateForContactsMatchingEmailAddress:v8];
  }

  v11 = v9;
  v0[9] = v11;

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = xmmword_1004D62E0;
  *(v12 + 32) = CNContactImageDataKey;
  *(v12 + 40) = CNContactImageDataAvailableKey;
  type metadata accessor for DaemonActor();
  v13 = v11;
  v14 = CNContactImageDataKey;
  v15 = CNContactImageDataAvailableKey;
  v0[11] = static DaemonActor.shared.getter();
  sub_10034109C();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100340C88, v17, v16);
}

uint64_t sub_100340C88()
{
  v1 = *(v0 + 88);

  v2 = qword_1005B5D40;
  if (qword_1005B5D40)
  {
    v3 = qword_1005B5D40;
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = qword_1005B5D40;
    qword_1005B5D40 = v4;
    v3 = v4;

    v2 = 0;
  }

  *(v0 + 96) = v3;
  v6 = v2;

  return _swift_task_switch(sub_100340D74, 0, 0);
}

uint64_t sub_100340D74()
{
  v29 = v0;
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_10004B564(&unk_1005B3D80, &qword_1004D62F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 40) = 0;
  v5 = [v1 unifiedContactsMatchingPredicate:v3 keysToFetch:isa error:v0 + 40];

  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = *(v0 + 72);
    sub_1003410F4();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;

    v10 = sub_100340768(v8);
  }

  else
  {
    v11 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A84B0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 64);
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005B1F30);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      v27 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v18 = 136380931;
      *(v18 + 4) = sub_10000D01C(v17, v16, &v28);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = Error.localizedDescription.getter();
      v24 = sub_10000D01C(v22, v23, &v28);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not find contact for handle %{private}s, error: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v10 = 0;
  }

  v25 = *(v0 + 8);

  return v25(v10);
}

unint64_t sub_10034109C()
{
  result = qword_1005B1F50;
  if (!qword_1005B1F50)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1F50);
  }

  return result;
}

unint64_t sub_1003410F4()
{
  result = qword_1005B1F60;
  if (!qword_1005B1F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B1F60);
  }

  return result;
}

void *sub_100341140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100239744(0, v1, 0);
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v2 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 24 * v5);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v13 >= v12 >> 1)
    {
      result = sub_100239744((v12 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v2 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 72 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10002F14C(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
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

uint64_t sub_10034137C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;

      sub_10034578C(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100341404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037B9E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100341430()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B10);
  sub_10000A6F0(v0, qword_1005E0B10);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1003414B4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for LocationServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100341510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LocationServiceClient();
  v6 = sub_10001AEBC(&qword_1005B23F8, v5, type metadata accessor for LocationServiceClient);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_100341598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a1;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001D7F30(0, 0, v12, &unk_1004D6770, v15);
}

uint64_t sub_10034178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100341858, 0, 0);
}

uint64_t sub_100341858()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = async function pointer to withTimeout<A>(_:block:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1003419BC;

  return withTimeout<A>(_:block:)(v9, 0x8AC7230489E80000, 0, &unk_1004D6780, v7, &type metadata for () + 8);
}

uint64_t sub_1003419BC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100341B38;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100341AD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100341AD8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100341B38()
{
  v18 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B10);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E7E80, &v17);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Uncaught error in %{public}s: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}