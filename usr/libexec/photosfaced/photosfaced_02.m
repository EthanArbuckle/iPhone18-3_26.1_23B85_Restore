uint64_t sub_100035068()
{
  v1 = v0[34];

  v2 = v0[12];
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v3 = v0[16];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
  sub_1000356EC(v0[13], v0[14]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100035174()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[42];
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_1000355BC;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v7 = v2[38];
    v8 = v2[39];
    v9 = sub_1000352F0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000352F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[45] + 1;
  if (v6 == v5[44])
  {
    v7 = v5[42];
    v8 = v5[43];
    v9 = v5[31];
    v10 = v5[28];
    v11 = v5[29];
    v12 = v5[16];

    dispatch thunk of BroadcastSequence.yield(_:)();
    v8(v9, v10);
    v13 = v5[37];
    v14 = v5[33];
    v15 = static CommunicationActor.shared.getter();
    v5[40] = v15;
    v16 = v5[10];
    v17 = v5[11];
    sub_10000C410((v5 + 7), v16);
    v18 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v19 = swift_task_alloc();
    v5[41] = v19;
    *v19 = v5;
    v19[1] = sub_1000347AC;
    v20 = v5[32];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v20, v15, v13, v5 + 12, v16, v17);
  }

  else
  {
    v5[45] = v6;
    v21 = v5[42];
    if (v6 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v5[31];
      v23 = v5[21];
      v24 = v5[18];
      v25 = v5[19];
      v26 = v5[15];
      v27 = v5[13];
      v28 = *(v21 + 8 * v6 + 32);
      sub_10000560C(&qword_10012A430, &qword_1001093D0);
      v29 = *(v24 + 72);
      v30 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v31 = swift_allocObject();
      v5[46] = v31;
      *(v31 + 16) = xmmword_1001089C0;
      StoredPhoto.localIdentifier.getter();
      sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID);
      dispatch thunk of PhotosFaceID.id.getter();
      v32 = type metadata accessor for AlbumDatabase();
      v33 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
      v34 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
      v35 = swift_task_alloc();
      v5[47] = v35;
      *v35 = v5;
      v35[1] = sub_100035174;
      a2 = v5[19];
      a1 = v31;
      a3 = v28;
      a4 = v32;
      a5 = v33;
    }

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1000355BC()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];

  v1(v3, v4);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v6 = v0[48];
  v7 = v0[16];
  swift_errorRetain();
  dispatch thunk of BroadcastSequence.finish(throwing:)();

  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[30];
  v11 = v0[27];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[19];
  v14 = v0[20];
  sub_1000356EC(v0[13], v0[14]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000356EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  v5 = sub_100057AFC(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 112);
    *(a1 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100058768();
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(*(v10 + 56) + 8 * v7);

    sub_10004183C(v7, v10);
    *(a1 + 112) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1000357D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035910, v8, v7);
}

uint64_t sub_100035910()
{
  v1 = v0[12];
  v15 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v9, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v2, v7);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v10[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v10);

  generateElements<A>(isolation:_:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100035AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DailyID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035C08, v8, v7);
}

uint64_t sub_100035C08()
{
  v1 = v0[12];
  v15 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v9, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v2, v7);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v10[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v10);

  generateElements<A>(isolation:_:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100035DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for ShuffleID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100035F00, v8, v7);
}

uint64_t sub_100035F00()
{
  v1 = v0[12];
  v15 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v9, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v2, v7);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v10[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v10);

  generateElements<A>(isolation:_:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000360C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for AlbumID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CommunicationActor();
  v4[12] = static CommunicationActor.shared.getter();
  v4[13] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000361F8, v8, v7);
}

uint64_t sub_1000361F8()
{
  v1 = v0[12];
  v15 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v9, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v2, v7);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v10[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v10);

  generateElements<A>(isolation:_:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000363B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[18] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v15 = type metadata accessor for ShuffleID();
  v5[31] = v15;
  v16 = *(v15 - 8);
  v5[32] = v16;
  v17 = *(v16 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[36] = v18;
  v19 = *(v18 - 8);
  v5[37] = v19;
  v20 = *(v19 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v5[41] = v21;
  v22 = *(v21 - 8);
  v5[42] = v22;
  v23 = *(v22 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003670C, 0, 0);
}

uint64_t sub_10003670C()
{
  v1 = v0[48];
  v2 = v0[31];
  v4 = v0[15];
  v3 = v0[16];
  v0[49] = sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for GalleryDatabase();
  v0[50] = v5;
  v6 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_100036854;
  v9 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_100036854(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v7 = v3[48];
  v8 = v3[42];
  v9 = v3[41];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v1)
  {
    v11(v7, v9);
    v13 = sub_100043E6C;
  }

  else
  {
    v4[54] = v11;
    v4[55] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_1000369DC;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1000369DC()
{
  v83 = v0;
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[16];
  static Log.default.getter();
  v7 = *(v5 + 16);
  v0[56] = v7;
  v0[57] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[31];
  v11 = v0[32];
  if (v10)
  {
    v68 = v9;
    log = v8;
    v79 = v0[52];
    v80 = v0[42];
    v13 = v0[34];
    v14 = v0[35];
    v73 = v0[28];
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v15 = 136315394;
    v7(v13, v14, v12);
    v16 = *(v11 + 8);
    v16(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v69 = v16;
    v16(v13, v12);
    v20 = sub_100102F80(v17, v19, &v81);

    *(v15 + 4) = v20;
    buf = v15;
    *(v15 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v22 = result;
    v23 = 0;
    v24 = *(v79 + 64);
    v25 = 1 << *(v79 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v74 = result + 64;
    v71 = v28;
    v72 = result;
    if ((v26 & v24) != 0)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_12:
        v32 = v29 | (v23 << 6);
        v33 = *(v79 + 48);
        v34 = *(v33 + 8 * v32);
        v35 = *(*(v79 + 56) + 8 * v32);
        v36 = *(v35 + 16);
        if (v36)
        {
          v75 = *(v33 + 8 * v32);
          v76 = v32;
          v77 = v27;
          v78 = v23;
          v82 = &_swiftEmptyArrayStorage;

          sub_10005C508(0, v36, 0);
          v37 = v82;
          v38 = v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
          v39 = *(v73 + 72);
          v40 = *(v73 + 16);
          do
          {
            v41 = v0[47];
            v42 = v0[30];
            v43 = v0[27];
            v40(v42, v38, v43);
            StoredPhoto.localIdentifier.getter();
            (*(v73 + 8))(v42, v43);
            v82 = v37;
            v45 = v37[2];
            v44 = v37[3];
            if (v45 >= v44 >> 1)
            {
              sub_10005C508(v44 > 1, v45 + 1, 1);
              v37 = v82;
            }

            v46 = v0[47];
            v47 = v0[41];
            v37[2] = v45 + 1;
            (*(v80 + 32))(v37 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v45, v46, v47);
            v38 += v39;
            --v36;
          }

          while (v36);

          v28 = v71;
          v22 = v72;
          v27 = v77;
          v23 = v78;
          v34 = v75;
          v32 = v76;
        }

        else
        {
          v37 = &_swiftEmptyArrayStorage;
        }

        *(v74 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        *(v22[6] + 8 * v32) = v34;
        *(v22[7] + 8 * v32) = v37;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v22[2] = v50;
        if (!v27)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= v28)
        {
          v56 = v0[40];
          v58 = v0[36];
          v57 = v0[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v59 = Dictionary.description.getter();
          v61 = v60;

          v62 = sub_100102F80(v59, v61, &v81);

          *(buf + 14) = v62;
          _os_log_impl(&_mh_execute_header, log, v68, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v55 = *(v57 + 8);
          v55(v56, v58);
          v54 = v69;
          goto LABEL_24;
        }

        v31 = *(v79 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v27 = (v31 - 1) & v31;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v51 = v0[40];
    v52 = v0[36];
    v53 = v0[37];
    v54 = *(v11 + 8);
    v54(v0[35], v0[31]);

    v55 = *(v53 + 8);
    v55(v51, v52);
LABEL_24:
    v0[58] = v55;
    v0[59] = v54;
    v63 = *(v0[15] + 32);
    v64 = swift_task_alloc();
    v0[60] = v64;
    *v64 = v0;
    v64[1] = sub_100036FD4;
    v66 = v0[16];
    v65 = v0[17];

    return sub_100011914(v66, v65);
  }

  return result;
}

uint64_t sub_100036FD4(uint64_t a1)
{
  v3 = *(*v2 + 480);
  v4 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  if (v1)
  {
    v5 = v4[52];

    v7 = v4[47];
    v6 = v4[48];
    v9 = v4[45];
    v8 = v4[46];
    v11 = v4[43];
    v10 = v4[44];
    v13 = v4[39];
    v12 = v4[40];
    v17 = v4[38];
    v18 = v4[35];
    v19 = v4[34];
    v20 = v4[33];
    v21 = v4[30];
    v22 = v4[29];
    v23 = v4[26];
    v24 = v4[25];
    v25 = v4[24];
    v26 = v4[23];
    v14 = v4[19];
    v27 = v4[20];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_100037220, 0, 0);
  }
}

uint64_t sub_100037220()
{
  v159 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v144 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[61];

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v142 = v3;
  while (v7)
  {
LABEL_10:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v16 = *(*(v151 + 56) + v15);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_78;
    }

    v20 = *(*(v151 + 56) + v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 > v13[3] >> 1)
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v142;
    v7 &= v7 - 1;
    if (*(v16 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v17)
      {
        goto LABEL_83;
      }

      v22 = v0[41];
      v23 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v24 = *(v144 + 72);
      swift_arrayInitWithCopy();

      if (v17)
      {
        v25 = v13[2];
        v26 = __OFADD__(v25, v17);
        v27 = v25 + v17;
        if (v26)
        {
          goto LABEL_85;
        }

        v13[2] = v27;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v29 = v0[61];
  v28 = v0[62];
  v30 = v0[42];
  v146 = v0[22];
  v156 = v0[21];

  v31 = sub_10006C038(v13);

  v0[63] = sub_100013078(v31);

  v32 = -1;
  v33 = -1 << *(v151 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v151 + 64);
  v35 = (63 - v33) >> 6;
  v154 = (v30 + 16);
  v137 = v29;

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v136 = v35;
  while (1)
  {
    v0[64] = v37;
    if (!v34)
    {
      break;
    }

LABEL_31:
    v148 = v34;
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v34)));
    v40 = *(*(v151 + 56) + v39);
    v41 = *(v40 + 16);
    if (v41)
    {
      v140 = v37;
      v42 = *(*(v137 + 48) + v39);
      v158 = &_swiftEmptyArrayStorage;

      sub_10005C654(0, v41, 0);
      v43 = &_swiftEmptyArrayStorage;
      v44 = v40 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v45 = *(v144 + 72);
      v46 = *v154;
      do
      {
        v47 = v0[26];
        v46(v47 + *(v156 + 48), v44, v0[41]);
        *v47 = v42;
        v158 = v43;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_10005C654(v48 > 1, v49 + 1, 1);
          v43 = v158;
        }

        v50 = v0[26];
        v43[2] = v49 + 1;
        sub_100042590(v50, v43 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v49);
        v44 += v45;
        --v41;
      }

      while (v41);

      v37 = v140;
      v3 = v142;
      v35 = v136;
    }

    else
    {
      v43 = &_swiftEmptyArrayStorage;
    }

    v51 = v43[2];
    v52 = v37[2];
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v53 > v37[3] >> 1)
    {
      if (v52 <= v53)
      {
        v54 = v52 + v51;
      }

      else
      {
        v54 = v52;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v54, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
    }

    v34 = (v148 - 1) & v148;
    if (v43[2])
    {
      if ((v37[3] >> 1) - v37[2] < v51)
      {
        goto LABEL_84;
      }

      v55 = v0[21];
      v56 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v57 = *(v146 + 72);
      swift_arrayInitWithCopy();

      if (v51)
      {
        v58 = v37[2];
        v26 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v26)
        {
          goto LABEL_86;
        }

        v37[2] = v59;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      v60 = v0[61];
      v61 = v0[42];

      v63 = sub_100042600(v62);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v64 = isUniquelyReferenced_nonNull_native;
      v65 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v131 = v63 + 64;
      v66 = 1 << *(v63 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = (v66 + 63) >> 6;
      v69 = (v61 + 32);
      v70 = v67 & *(v63 + 64);
      v152 = v69;
      v134 = v63;
      v135 = isUniquelyReferenced_nonNull_native + 64;
      v132 = v68;
      v133 = isUniquelyReferenced_nonNull_native;
      if (!v70)
      {
LABEL_54:
        v72 = v65;
        while (1)
        {
          v65 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_77;
          }

          if (v65 >= v68)
          {
            v97 = v0[56];
            v96 = v0[57];
            v98 = v0[39];
            v99 = v0[33];
            v100 = v0[31];
            v101 = v0[16];

            static Log.default.getter();
            v97(v99, v101, v100);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.debug.getter();
            v104 = os_log_type_enabled(v102, v103);
            v106 = v0[58];
            v105 = v0[59];
            if (v104)
            {
              v107 = v0[57];
              v145 = v0[56];
              v157 = v0[39];
              v153 = v0[37];
              v155 = v0[36];
              v147 = v103;
              v109 = v0[33];
              v108 = v0[34];
              v111 = v0[31];
              v110 = v0[32];
              v150 = v0[58];
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v112 = 136315138;
              v145(v108, v109, v111);
              v105(v109, v111);
              sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v105(v108, v111);
              v117 = sub_100102F80(v114, v116, &v158);

              *(v112 + 4) = v117;
              _os_log_impl(&_mh_execute_header, v102, v147, "Clearing photos for id: %s", v112, 0xCu);
              sub_10000C304(v113);

              v150(v157, v155);
            }

            else
            {
              v118 = v0[39];
              v119 = v0[36];
              v120 = v0[37];
              v121 = v0[32] + 8;
              v105(v0[33], v0[31]);

              v106(v118, v119);
            }

            v122 = v0[49];
            v123 = v0[44];
            v124 = v0[31];
            v126 = v0[15];
            v125 = v0[16];
            dispatch thunk of PhotosFaceID.id.getter();
            v127 = sub_1000438BC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
            v128 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)[1];
            v129 = swift_task_alloc();
            v0[66] = v129;
            *v129 = v0;
            v129[1] = sub_100037CA0;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v127;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v73 = *(v131 + 8 * v65);
          ++v72;
          if (v73)
          {
            v71 = __clz(__rbit64(v73));
            v70 = (v73 - 1) & v73;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v71 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_59:
        v74 = v71 | (v65 << 6);
        v76 = v0[45];
        v75 = v0[46];
        v77 = v0[41];
        v141 = *(v144 + 72) * v74;
        (*v154)(v75, *(v63 + 48) + v141, v77);
        v143 = v74;
        v78 = *(*(v63 + 56) + 8 * v74);
        v149 = *v152;
        (*v152)(v76, v75, v77);
        v79 = *(v78 + 16);
        if (v79)
        {
          v138 = v70;
          v139 = v65;
          v158 = &_swiftEmptyArrayStorage;

          sub_10005C5B0(0, v79, 0);
          v80 = v78;
          v81 = &_swiftEmptyArrayStorage;
          v82 = v80 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v83 = *(v146 + 72);
          do
          {
            v84 = v0[41];
            v85 = v0[24];
            v86 = v0[25];
            v87 = v0[23];
            sub_100042A80(v82, v86);
            sub_100042A80(v86, v85);
            v88 = *v85;
            v89 = *(v156 + 48);
            *v87 = *v85;
            v149(v87 + v89, v85 + v89, v84);
            sub_10000C460(v87, &qword_10012A448, &unk_100109550);
            sub_10000C460(v86, &qword_10012A448, &unk_100109550);
            v158 = v81;
            v91 = v81[2];
            v90 = v81[3];
            if (v91 >= v90 >> 1)
            {
              sub_10005C5B0((v90 > 1), v91 + 1, 1);
              v81 = v158;
            }

            v81[2] = v91 + 1;
            v81[v91 + 4] = v88;
            v82 += v83;
            --v79;
          }

          while (v79);

          v64 = v133;
          v63 = v134;
          v70 = v138;
          v65 = v139;
          v68 = v132;
        }

        else
        {
          v81 = &_swiftEmptyArrayStorage;
        }

        v92 = v0[45];
        v93 = v0[41];
        *(v135 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
        isUniquelyReferenced_nonNull_native = (v149)(v64[6] + v141, v92, v93);
        *(v64[7] + 8 * v143) = v81;
        v94 = v64[2];
        v26 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v26)
        {
          goto LABEL_82;
        }

        v64[2] = v95;
        if (!v70)
        {
          goto LABEL_54;
        }
      }
    }

    v34 = *(v3 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_100037CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v13 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    v6 = *(v2 + 504);
    v5 = *(v2 + 512);
    v7 = *(v2 + 488);
    v8 = *(v2 + 440);
    v9 = *(v2 + 416);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));

    v10 = sub_100043E70;
  }

  else
  {
    v11 = *(v2 + 440);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
    v10 = sub_100037E1C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100037E1C()
{
  v30 = v0;
  v1 = v0[63];
  v2 = v0[38];
  static Log.default.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[63];
    v27 = v0[58];
    v6 = v0[41];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_100102F80(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Processing photos: %s", v10, 0xCu);
    sub_10000C304(v11);

    v27(v7, v9);
  }

  else
  {
    v15 = v0[58];
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];

    v15(v16, v18);
  }

  v19 = v0[15];
  v20 = v19[8];
  v21 = v19[9];
  sub_10000C3CC(v19 + 5, v20);
  v22 = *(v21 + 16);
  v28 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[68] = v24;
  *v24 = v0;
  v24[1] = sub_1000380B8;
  v25 = v0[63];

  return (v28)(v0 + 2, v25, 0, 0, v20, v21);
}

uint64_t sub_1000380B8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v11 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_100043EA4;
  }

  else
  {
    v9 = sub_100038210;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100038210()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[10];
  v7 = v0[11];
  sub_10000C410((v0 + 7), v6);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[70] = v9;
  *v9 = v0;
  v9[1] = sub_1000383CC;
  v10 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0, v0 + 12, v6, v7);
}

uint64_t sub_1000383CC()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_100043EA8;
  }

  else
  {
    v9 = sub_100038520;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100038520()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[65];
    v6 = v0[63];
    v5 = v0[64];
    v7 = v0[61];
    v8 = v0[52];
    v10 = v0[47];
    v9 = v0[48];
    v12 = v0[45];
    v11 = v0[46];
    v32 = v0[44];
    v33 = v0[43];
    v34 = v0[40];
    v35 = v0[39];
    v36 = v0[38];
    v37 = v0[35];
    v38 = v0[34];
    v39 = v0[33];
    v40 = v0[30];
    v41 = v0[29];
    v42 = v0[26];
    v43 = v0[25];
    v44 = v0[24];
    v45 = v0[23];
    v47 = v0[19];

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v13 = v0[1];

    return v13();
  }

  v15 = v0[65];
  v16 = v0[43];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v0[65];
  result = sub_100057AFC(v0[43]);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = v0[54];
  v19 = v0[55];
  v21 = v0[43];
  v22 = v0[41];
  v23 = v0[28];
  v46 = v0[27];
  v48 = v0[29];
  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[13];
  v27 = *(*(v0[65] + 56) + 8 * result);

  v20(v21, v22);
  *v24 = v27;
  (*(v23 + 16))(&v24[*(v25 + 48)], v48, v46);
  v49 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  v0[71] = v29;
  *v29 = v0;
  v29[1] = sub_100038888;
  v30 = v0[19];
  v31 = v0[14];

  return v49(v30);
}

uint64_t sub_100038888()
{
  v2 = *v1;
  v3 = (*v1)[71];
  v11 = *v1;
  (*v1)[72] = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);

    v9 = sub_100043EA0;
  }

  else
  {
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);
    v9 = sub_100038A14;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100038A14()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_1000383CC;
  v5 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_100038AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for StoredPhoto();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v14 = type metadata accessor for DailyID();
  v4[30] = v14;
  v15 = *(v14 - 8);
  v4[31] = v15;
  v16 = *(v15 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v4[35] = v17;
  v18 = *(v17 - 8);
  v4[36] = v18;
  v19 = *(v18 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[40] = v20;
  v21 = *(v20 - 8);
  v4[41] = v21;
  v22 = *(v21 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_100038E44, 0, 0);
}

uint64_t sub_100038E44()
{
  v1 = v0[47];
  v2 = v0[30];
  v4 = v0[15];
  v3 = v0[16];
  v0[48] = sub_1000438BC(&qword_10012A178, &type metadata accessor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for DailyDatabase();
  v0[49] = v5;
  v6 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_100038F8C;
  v9 = v0[47];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_100038F8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  v7 = v3[47];
  v8 = v3[41];
  v9 = v3[40];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v1)
  {
    v11(v7, v9);
    v13 = sub_100039724;
  }

  else
  {
    v4[53] = v11;
    v4[54] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_100039114;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100039114()
{
  v81 = v0;
  v1 = v0[51];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[16];
  static Log.default.getter();
  v7 = *(v5 + 16);
  v0[55] = v7;
  v0[56] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[30];
  v11 = v0[31];
  if (v10)
  {
    v66 = v9;
    log = v8;
    v77 = v0[51];
    v78 = v0[41];
    v13 = v0[33];
    v14 = v0[34];
    v71 = v0[27];
    v15 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v15 = 136315394;
    v7(v13, v14, v12);
    v16 = *(v11 + 8);
    v16(v14, v12);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v67 = v16;
    v16(v13, v12);
    v20 = sub_100102F80(v17, v19, &v79);

    *(v15 + 4) = v20;
    buf = v15;
    *(v15 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v22 = result;
    v23 = 0;
    v24 = *(v77 + 64);
    v25 = 1 << *(v77 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v72 = result + 64;
    v69 = v28;
    v70 = result;
    if ((v26 & v24) != 0)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_12:
        v32 = v29 | (v23 << 6);
        v33 = *(v77 + 48);
        v34 = *(v33 + 8 * v32);
        v35 = *(*(v77 + 56) + 8 * v32);
        v36 = *(v35 + 16);
        if (v36)
        {
          v73 = *(v33 + 8 * v32);
          v74 = v32;
          v75 = v27;
          v76 = v23;
          v80 = &_swiftEmptyArrayStorage;

          sub_10005C508(0, v36, 0);
          v37 = v80;
          v38 = v35 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
          v39 = *(v71 + 72);
          v40 = *(v71 + 16);
          do
          {
            v41 = v0[46];
            v42 = v0[29];
            v43 = v0[26];
            v40(v42, v38, v43);
            StoredPhoto.localIdentifier.getter();
            (*(v71 + 8))(v42, v43);
            v80 = v37;
            v45 = v37[2];
            v44 = v37[3];
            if (v45 >= v44 >> 1)
            {
              sub_10005C508(v44 > 1, v45 + 1, 1);
              v37 = v80;
            }

            v46 = v0[46];
            v47 = v0[40];
            v37[2] = v45 + 1;
            (*(v78 + 32))(v37 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45, v46, v47);
            v38 += v39;
            --v36;
          }

          while (v36);

          v28 = v69;
          v22 = v70;
          v27 = v75;
          v23 = v76;
          v34 = v73;
          v32 = v74;
        }

        else
        {
          v37 = &_swiftEmptyArrayStorage;
        }

        *(v72 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        *(v22[6] + 8 * v32) = v34;
        *(v22[7] + 8 * v32) = v37;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v22[2] = v50;
        if (!v27)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= v28)
        {
          v56 = v0[39];
          v58 = v0[35];
          v57 = v0[36];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v59 = Dictionary.description.getter();
          v61 = v60;

          v62 = sub_100102F80(v59, v61, &v79);

          *(buf + 14) = v62;
          _os_log_impl(&_mh_execute_header, log, v66, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v55 = *(v57 + 8);
          v55(v56, v58);
          v54 = v67;
          goto LABEL_24;
        }

        v31 = *(v77 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v27 = (v31 - 1) & v31;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v51 = v0[39];
    v53 = v0[35];
    v52 = v0[36];
    v54 = *(v11 + 8);
    v54(v0[34], v0[30]);

    v55 = *(v52 + 8);
    v55(v51, v53);
LABEL_24:
    v0[57] = v55;
    v0[58] = v54;
    v0[59] = *(v0[15] + 32);
    v63 = swift_task_alloc();
    v0[60] = v63;
    *v63 = v0;
    v63[1] = sub_100039884;
    v64 = v0[16];

    return (sub_1000105AC)(v64);
  }

  return result;
}

uint64_t sub_100039724()
{
  v23 = v0[52];
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100039884(uint64_t a1)
{
  v3 = *(*v2 + 480);
  v4 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  if (v1)
  {
    v5 = v4[51];

    v7 = v4[46];
    v6 = v4[47];
    v9 = v4[44];
    v8 = v4[45];
    v11 = v4[42];
    v10 = v4[43];
    v13 = v4[38];
    v12 = v4[39];
    v17 = v4[37];
    v18 = v4[34];
    v19 = v4[33];
    v20 = v4[32];
    v21 = v4[29];
    v22 = v4[28];
    v23 = v4[25];
    v24 = v4[24];
    v25 = v4[23];
    v26 = v4[22];
    v14 = v4[18];
    v27 = v4[19];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_100039AD0, 0, 0);
  }
}

uint64_t sub_100039AD0()
{
  v159 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v144 = v0[41];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[61];

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v142 = v3;
  while (v7)
  {
LABEL_10:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v16 = *(*(v151 + 56) + v15);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_78;
    }

    v20 = *(*(v151 + 56) + v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 > v13[3] >> 1)
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v142;
    v7 &= v7 - 1;
    if (*(v16 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v17)
      {
        goto LABEL_83;
      }

      v22 = v0[40];
      v23 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v24 = *(v144 + 72);
      swift_arrayInitWithCopy();

      if (v17)
      {
        v25 = v13[2];
        v26 = __OFADD__(v25, v17);
        v27 = v25 + v17;
        if (v26)
        {
          goto LABEL_85;
        }

        v13[2] = v27;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v29 = v0[61];
  v28 = v0[62];
  v30 = v0[41];
  v146 = v0[21];
  v156 = v0[20];

  v31 = sub_10006C038(v13);

  v0[63] = sub_100013078(v31);

  v32 = -1;
  v33 = -1 << *(v151 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v151 + 64);
  v35 = (63 - v33) >> 6;
  v154 = (v30 + 16);
  v137 = v29;

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v136 = v35;
  while (1)
  {
    v0[64] = v37;
    if (!v34)
    {
      break;
    }

LABEL_31:
    v148 = v34;
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v34)));
    v40 = *(*(v151 + 56) + v39);
    v41 = *(v40 + 16);
    if (v41)
    {
      v140 = v37;
      v42 = *(*(v137 + 48) + v39);
      v158 = &_swiftEmptyArrayStorage;

      sub_10005C654(0, v41, 0);
      v43 = &_swiftEmptyArrayStorage;
      v44 = v40 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v45 = *(v144 + 72);
      v46 = *v154;
      do
      {
        v47 = v0[25];
        v46(v47 + *(v156 + 48), v44, v0[40]);
        *v47 = v42;
        v158 = v43;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_10005C654(v48 > 1, v49 + 1, 1);
          v43 = v158;
        }

        v50 = v0[25];
        v43[2] = v49 + 1;
        sub_100042590(v50, v43 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v49);
        v44 += v45;
        --v41;
      }

      while (v41);

      v37 = v140;
      v3 = v142;
      v35 = v136;
    }

    else
    {
      v43 = &_swiftEmptyArrayStorage;
    }

    v51 = v43[2];
    v52 = v37[2];
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v53 > v37[3] >> 1)
    {
      if (v52 <= v53)
      {
        v54 = v52 + v51;
      }

      else
      {
        v54 = v52;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v54, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
    }

    v34 = (v148 - 1) & v148;
    if (v43[2])
    {
      if ((v37[3] >> 1) - v37[2] < v51)
      {
        goto LABEL_84;
      }

      v55 = v0[20];
      v56 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v57 = *(v146 + 72);
      swift_arrayInitWithCopy();

      if (v51)
      {
        v58 = v37[2];
        v26 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v26)
        {
          goto LABEL_86;
        }

        v37[2] = v59;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      v60 = v0[61];
      v61 = v0[41];

      v63 = sub_100042600(v62);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v64 = isUniquelyReferenced_nonNull_native;
      v65 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v131 = v63 + 64;
      v66 = 1 << *(v63 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = (v66 + 63) >> 6;
      v69 = (v61 + 32);
      v70 = v67 & *(v63 + 64);
      v152 = v69;
      v134 = v63;
      v135 = isUniquelyReferenced_nonNull_native + 64;
      v132 = v68;
      v133 = isUniquelyReferenced_nonNull_native;
      if (!v70)
      {
LABEL_54:
        v72 = v65;
        while (1)
        {
          v65 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_77;
          }

          if (v65 >= v68)
          {
            v97 = v0[55];
            v96 = v0[56];
            v98 = v0[38];
            v99 = v0[32];
            v100 = v0[30];
            v101 = v0[16];

            static Log.default.getter();
            v97(v99, v101, v100);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.debug.getter();
            v104 = os_log_type_enabled(v102, v103);
            v106 = v0[57];
            v105 = v0[58];
            if (v104)
            {
              v107 = v0[56];
              v145 = v0[55];
              v157 = v0[38];
              v153 = v0[36];
              v155 = v0[35];
              v147 = v103;
              v109 = v0[32];
              v108 = v0[33];
              v111 = v0[30];
              v110 = v0[31];
              v150 = v0[57];
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v112 = 136315138;
              v145(v108, v109, v111);
              v105(v109, v111);
              sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v105(v108, v111);
              v117 = sub_100102F80(v114, v116, &v158);

              *(v112 + 4) = v117;
              _os_log_impl(&_mh_execute_header, v102, v147, "Clearing photos for id: %s", v112, 0xCu);
              sub_10000C304(v113);

              v150(v157, v155);
            }

            else
            {
              v118 = v0[38];
              v119 = v0[35];
              v120 = v0[36];
              v121 = v0[31] + 8;
              v105(v0[32], v0[30]);

              v106(v118, v119);
            }

            v122 = v0[48];
            v123 = v0[43];
            v124 = v0[30];
            v126 = v0[15];
            v125 = v0[16];
            dispatch thunk of PhotosFaceID.id.getter();
            v127 = sub_1000438BC(&qword_10012A470, &type metadata accessor for DailyDatabase);
            v128 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)[1];
            v129 = swift_task_alloc();
            v0[66] = v129;
            *v129 = v0;
            v129[1] = sub_10003A550;
            v10 = v0[49];
            isUniquelyReferenced_nonNull_native = v0[43];
            v11 = v127;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v73 = *(v131 + 8 * v65);
          ++v72;
          if (v73)
          {
            v71 = __clz(__rbit64(v73));
            v70 = (v73 - 1) & v73;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v71 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_59:
        v74 = v71 | (v65 << 6);
        v76 = v0[44];
        v75 = v0[45];
        v77 = v0[40];
        v141 = *(v144 + 72) * v74;
        (*v154)(v75, *(v63 + 48) + v141, v77);
        v143 = v74;
        v78 = *(*(v63 + 56) + 8 * v74);
        v149 = *v152;
        (*v152)(v76, v75, v77);
        v79 = *(v78 + 16);
        if (v79)
        {
          v138 = v70;
          v139 = v65;
          v158 = &_swiftEmptyArrayStorage;

          sub_10005C5B0(0, v79, 0);
          v80 = v78;
          v81 = &_swiftEmptyArrayStorage;
          v82 = v80 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v83 = *(v146 + 72);
          do
          {
            v84 = v0[40];
            v85 = v0[23];
            v86 = v0[24];
            v87 = v0[22];
            sub_100042A80(v82, v86);
            sub_100042A80(v86, v85);
            v88 = *v85;
            v89 = *(v156 + 48);
            *v87 = *v85;
            v149(v87 + v89, v85 + v89, v84);
            sub_10000C460(v87, &qword_10012A448, &unk_100109550);
            sub_10000C460(v86, &qword_10012A448, &unk_100109550);
            v158 = v81;
            v91 = v81[2];
            v90 = v81[3];
            if (v91 >= v90 >> 1)
            {
              sub_10005C5B0((v90 > 1), v91 + 1, 1);
              v81 = v158;
            }

            v81[2] = v91 + 1;
            v81[v91 + 4] = v88;
            v82 += v83;
            --v79;
          }

          while (v79);

          v64 = v133;
          v63 = v134;
          v70 = v138;
          v65 = v139;
          v68 = v132;
        }

        else
        {
          v81 = &_swiftEmptyArrayStorage;
        }

        v92 = v0[44];
        v93 = v0[40];
        *(v135 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
        isUniquelyReferenced_nonNull_native = (v149)(v64[6] + v141, v92, v93);
        *(v64[7] + 8 * v143) = v81;
        v94 = v64[2];
        v26 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v26)
        {
          goto LABEL_82;
        }

        v64[2] = v95;
        if (!v70)
        {
          goto LABEL_54;
        }
      }
    }

    v34 = *(v3 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003A550()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v13 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    v6 = *(v2 + 504);
    v5 = *(v2 + 512);
    v7 = *(v2 + 488);
    v8 = *(v2 + 432);
    v9 = *(v2 + 408);
    (*(v2 + 424))(*(v2 + 344), *(v2 + 320));

    v10 = sub_10003A98C;
  }

  else
  {
    v11 = *(v2 + 432);
    (*(v2 + 424))(*(v2 + 344), *(v2 + 320));
    v10 = sub_10003A6CC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10003A6CC()
{
  v31 = v0;
  v1 = v0[63];
  v2 = v0[37];
  static Log.default.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[63];
    v29 = v0[57];
    v6 = v0[40];
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_100102F80(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Processing photos: %s", v10, 0xCu);
    sub_10000C304(v11);

    v29(v7, v9);
  }

  else
  {
    v15 = v0[57];
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[35];

    v15(v16, v18);
  }

  v19 = v0[59];
  v20 = v0[15];
  v21 = v20[8];
  v22 = v20[9];
  sub_10000C3CC(v20 + 5, v21);
  v23 = *(v22 + 16);

  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[68] = v25;
  *v25 = v0;
  v25[1] = sub_10003AAEC;
  v26 = v0[63];

  return (v28)(v0 + 2, v26, sub_100042D9C, v19, v21, v22);
}

uint64_t sub_10003A98C()
{
  v23 = v0[67];
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003AAEC()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v13 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[59];
    v9 = v2[51];

    v10 = sub_10003AE14;
  }

  else
  {
    v11 = v2[59];

    v10 = sub_10003AC58;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10003AC58()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[10];
  v7 = v0[11];
  sub_10000C410((v0 + 7), v6);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[70] = v9;
  *v9 = v0;
  v9[1] = sub_10003AF74;
  v10 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0, v0 + 12, v6, v7);
}

uint64_t sub_10003AE14()
{
  v23 = v0[69];
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003AF74()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[51];

    v9 = sub_10003B430;
  }

  else
  {
    v9 = sub_10003B0C8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003B0C8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[65];
    v6 = v0[63];
    v5 = v0[64];
    v7 = v0[61];
    v8 = v0[51];
    v10 = v0[46];
    v9 = v0[47];
    v12 = v0[44];
    v11 = v0[45];
    v32 = v0[43];
    v33 = v0[42];
    v34 = v0[39];
    v35 = v0[38];
    v36 = v0[37];
    v37 = v0[34];
    v38 = v0[33];
    v39 = v0[32];
    v40 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[24];
    v44 = v0[23];
    v45 = v0[22];
    v47 = v0[18];

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v13 = v0[1];

    return v13();
  }

  v15 = v0[65];
  v16 = v0[42];
  (*(v2 + 32))(v0[28], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v0[65];
  result = sub_100057AFC(v0[42]);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = v0[53];
  v19 = v0[54];
  v21 = v0[42];
  v22 = v0[40];
  v23 = v0[27];
  v46 = v0[26];
  v48 = v0[28];
  v25 = v0[17];
  v24 = v0[18];
  v26 = v0[13];
  v27 = *(*(v0[65] + 56) + 8 * result);

  v20(v21, v22);
  *v24 = v27;
  (*(v23 + 16))(&v24[*(v25 + 48)], v48, v46);
  v49 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  v0[71] = v29;
  *v29 = v0;
  v29[1] = sub_10003B5A0;
  v30 = v0[18];
  v31 = v0[14];

  return v49(v30);
}

uint64_t sub_10003B430()
{
  v23 = v0[12];
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003B5A0()
{
  v2 = *v1;
  v3 = (*v1)[71];
  v11 = *v1;
  (*v1)[72] = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[51];
    sub_10000C460(v2[18], &qword_10012A428, &unk_1001091B0);

    v9 = sub_10003B80C;
  }

  else
  {
    sub_10000C460(v2[18], &qword_10012A428, &unk_1001091B0);
    v9 = sub_10003B72C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003B72C()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_10003AF74;
  v5 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_10003B80C()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v23 = v0[72];
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[18] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v15 = type metadata accessor for ShuffleID();
  v5[31] = v15;
  v16 = *(v15 - 8);
  v5[32] = v16;
  v17 = *(v16 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[36] = v18;
  v19 = *(v18 - 8);
  v5[37] = v19;
  v20 = *(v19 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v5[41] = v21;
  v22 = *(v21 - 8);
  v5[42] = v22;
  v23 = *(v22 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003BCE8, 0, 0);
}

uint64_t sub_10003BCE8()
{
  v1 = v0[48];
  v2 = v0[31];
  v4 = v0[15];
  v3 = v0[16];
  v0[49] = sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for ShuffleDatabase();
  v0[50] = v5;
  v6 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_10003BE30;
  v9 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_10003BE30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v7 = v3[48];
  v8 = v3[42];
  v9 = v3[41];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v1)
  {
    v11(v7, v9);
    v13 = sub_100043E6C;
  }

  else
  {
    v4[54] = v11;
    v4[55] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_10003BFB8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_10003BFB8()
{
  v83 = v0;
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[16];
  static Log.default.getter();
  v7 = *(v5 + 16);
  v0[56] = v7;
  v0[57] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[31];
  v11 = v0[32];
  if (v10)
  {
    v68 = v9;
    log = v8;
    v79 = v0[52];
    v80 = v0[42];
    v13 = v0[34];
    v14 = v0[35];
    v73 = v0[28];
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v15 = 136315394;
    v7(v13, v14, v12);
    v16 = *(v11 + 8);
    v16(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v69 = v16;
    v16(v13, v12);
    v20 = sub_100102F80(v17, v19, &v81);

    *(v15 + 4) = v20;
    buf = v15;
    *(v15 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v22 = result;
    v23 = 0;
    v24 = *(v79 + 64);
    v25 = 1 << *(v79 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v74 = result + 64;
    v71 = v28;
    v72 = result;
    if ((v26 & v24) != 0)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_12:
        v32 = v29 | (v23 << 6);
        v33 = *(v79 + 48);
        v34 = *(v33 + 8 * v32);
        v35 = *(*(v79 + 56) + 8 * v32);
        v36 = *(v35 + 16);
        if (v36)
        {
          v75 = *(v33 + 8 * v32);
          v76 = v32;
          v77 = v27;
          v78 = v23;
          v82 = &_swiftEmptyArrayStorage;

          sub_10005C508(0, v36, 0);
          v37 = v82;
          v38 = v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
          v39 = *(v73 + 72);
          v40 = *(v73 + 16);
          do
          {
            v41 = v0[47];
            v42 = v0[30];
            v43 = v0[27];
            v40(v42, v38, v43);
            StoredPhoto.localIdentifier.getter();
            (*(v73 + 8))(v42, v43);
            v82 = v37;
            v45 = v37[2];
            v44 = v37[3];
            if (v45 >= v44 >> 1)
            {
              sub_10005C508(v44 > 1, v45 + 1, 1);
              v37 = v82;
            }

            v46 = v0[47];
            v47 = v0[41];
            v37[2] = v45 + 1;
            (*(v80 + 32))(v37 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v45, v46, v47);
            v38 += v39;
            --v36;
          }

          while (v36);

          v28 = v71;
          v22 = v72;
          v27 = v77;
          v23 = v78;
          v34 = v75;
          v32 = v76;
        }

        else
        {
          v37 = &_swiftEmptyArrayStorage;
        }

        *(v74 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        *(v22[6] + 8 * v32) = v34;
        *(v22[7] + 8 * v32) = v37;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v22[2] = v50;
        if (!v27)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= v28)
        {
          v56 = v0[40];
          v58 = v0[36];
          v57 = v0[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v59 = Dictionary.description.getter();
          v61 = v60;

          v62 = sub_100102F80(v59, v61, &v81);

          *(buf + 14) = v62;
          _os_log_impl(&_mh_execute_header, log, v68, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v55 = *(v57 + 8);
          v55(v56, v58);
          v54 = v69;
          goto LABEL_24;
        }

        v31 = *(v79 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v27 = (v31 - 1) & v31;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v51 = v0[40];
    v53 = v0[36];
    v52 = v0[37];
    v54 = *(v11 + 8);
    v54(v0[35], v0[31]);

    v55 = *(v52 + 8);
    v55(v51, v53);
LABEL_24:
    v0[58] = v55;
    v0[59] = v54;
    v63 = *(v0[15] + 32);
    v64 = swift_task_alloc();
    v0[60] = v64;
    *v64 = v0;
    v64[1] = sub_10003C5B0;
    v66 = v0[16];
    v65 = v0[17];

    return sub_100011914(v66, v65);
  }

  return result;
}

uint64_t sub_10003C5B0(uint64_t a1)
{
  v3 = *(*v2 + 480);
  v4 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  if (v1)
  {
    v5 = v4[52];

    v7 = v4[47];
    v6 = v4[48];
    v9 = v4[45];
    v8 = v4[46];
    v11 = v4[43];
    v10 = v4[44];
    v13 = v4[39];
    v12 = v4[40];
    v17 = v4[38];
    v18 = v4[35];
    v19 = v4[34];
    v20 = v4[33];
    v21 = v4[30];
    v22 = v4[29];
    v23 = v4[26];
    v24 = v4[25];
    v25 = v4[24];
    v26 = v4[23];
    v14 = v4[19];
    v27 = v4[20];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_10003C7FC, 0, 0);
  }
}

uint64_t sub_10003C7FC()
{
  v159 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v144 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[61];

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v142 = v3;
  while (v7)
  {
LABEL_10:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v16 = *(*(v151 + 56) + v15);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_78;
    }

    v20 = *(*(v151 + 56) + v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 > v13[3] >> 1)
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v142;
    v7 &= v7 - 1;
    if (*(v16 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v17)
      {
        goto LABEL_83;
      }

      v22 = v0[41];
      v23 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v24 = *(v144 + 72);
      swift_arrayInitWithCopy();

      if (v17)
      {
        v25 = v13[2];
        v26 = __OFADD__(v25, v17);
        v27 = v25 + v17;
        if (v26)
        {
          goto LABEL_85;
        }

        v13[2] = v27;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v29 = v0[61];
  v28 = v0[62];
  v30 = v0[42];
  v146 = v0[22];
  v156 = v0[21];

  v31 = sub_10006C038(v13);

  v0[63] = sub_100013078(v31);

  v32 = -1;
  v33 = -1 << *(v151 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v151 + 64);
  v35 = (63 - v33) >> 6;
  v154 = (v30 + 16);
  v137 = v29;

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v136 = v35;
  while (1)
  {
    v0[64] = v37;
    if (!v34)
    {
      break;
    }

LABEL_31:
    v148 = v34;
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v34)));
    v40 = *(*(v151 + 56) + v39);
    v41 = *(v40 + 16);
    if (v41)
    {
      v140 = v37;
      v42 = *(*(v137 + 48) + v39);
      v158 = &_swiftEmptyArrayStorage;

      sub_10005C654(0, v41, 0);
      v43 = &_swiftEmptyArrayStorage;
      v44 = v40 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v45 = *(v144 + 72);
      v46 = *v154;
      do
      {
        v47 = v0[26];
        v46(v47 + *(v156 + 48), v44, v0[41]);
        *v47 = v42;
        v158 = v43;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_10005C654(v48 > 1, v49 + 1, 1);
          v43 = v158;
        }

        v50 = v0[26];
        v43[2] = v49 + 1;
        sub_100042590(v50, v43 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v49);
        v44 += v45;
        --v41;
      }

      while (v41);

      v37 = v140;
      v3 = v142;
      v35 = v136;
    }

    else
    {
      v43 = &_swiftEmptyArrayStorage;
    }

    v51 = v43[2];
    v52 = v37[2];
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v53 > v37[3] >> 1)
    {
      if (v52 <= v53)
      {
        v54 = v52 + v51;
      }

      else
      {
        v54 = v52;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v54, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
    }

    v34 = (v148 - 1) & v148;
    if (v43[2])
    {
      if ((v37[3] >> 1) - v37[2] < v51)
      {
        goto LABEL_84;
      }

      v55 = v0[21];
      v56 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v57 = *(v146 + 72);
      swift_arrayInitWithCopy();

      if (v51)
      {
        v58 = v37[2];
        v26 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v26)
        {
          goto LABEL_86;
        }

        v37[2] = v59;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      v60 = v0[61];
      v61 = v0[42];

      v63 = sub_100042600(v62);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v64 = isUniquelyReferenced_nonNull_native;
      v65 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v131 = v63 + 64;
      v66 = 1 << *(v63 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = (v66 + 63) >> 6;
      v69 = (v61 + 32);
      v70 = v67 & *(v63 + 64);
      v152 = v69;
      v134 = v63;
      v135 = isUniquelyReferenced_nonNull_native + 64;
      v132 = v68;
      v133 = isUniquelyReferenced_nonNull_native;
      if (!v70)
      {
LABEL_54:
        v72 = v65;
        while (1)
        {
          v65 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_77;
          }

          if (v65 >= v68)
          {
            v97 = v0[56];
            v96 = v0[57];
            v98 = v0[39];
            v99 = v0[33];
            v100 = v0[31];
            v101 = v0[16];

            static Log.default.getter();
            v97(v99, v101, v100);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.debug.getter();
            v104 = os_log_type_enabled(v102, v103);
            v106 = v0[58];
            v105 = v0[59];
            if (v104)
            {
              v107 = v0[57];
              v145 = v0[56];
              v157 = v0[39];
              v153 = v0[37];
              v155 = v0[36];
              v147 = v103;
              v109 = v0[33];
              v108 = v0[34];
              v111 = v0[31];
              v110 = v0[32];
              v150 = v0[58];
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v112 = 136315138;
              v145(v108, v109, v111);
              v105(v109, v111);
              sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v105(v108, v111);
              v117 = sub_100102F80(v114, v116, &v158);

              *(v112 + 4) = v117;
              _os_log_impl(&_mh_execute_header, v102, v147, "Clearing photos for id: %s", v112, 0xCu);
              sub_10000C304(v113);

              v150(v157, v155);
            }

            else
            {
              v118 = v0[39];
              v119 = v0[36];
              v120 = v0[37];
              v121 = v0[32] + 8;
              v105(v0[33], v0[31]);

              v106(v118, v119);
            }

            v122 = v0[49];
            v123 = v0[44];
            v124 = v0[31];
            v126 = v0[15];
            v125 = v0[16];
            dispatch thunk of PhotosFaceID.id.getter();
            v127 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
            v128 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)[1];
            v129 = swift_task_alloc();
            v0[66] = v129;
            *v129 = v0;
            v129[1] = sub_10003D27C;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v127;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v73 = *(v131 + 8 * v65);
          ++v72;
          if (v73)
          {
            v71 = __clz(__rbit64(v73));
            v70 = (v73 - 1) & v73;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v71 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_59:
        v74 = v71 | (v65 << 6);
        v76 = v0[45];
        v75 = v0[46];
        v77 = v0[41];
        v141 = *(v144 + 72) * v74;
        (*v154)(v75, *(v63 + 48) + v141, v77);
        v143 = v74;
        v78 = *(*(v63 + 56) + 8 * v74);
        v149 = *v152;
        (*v152)(v76, v75, v77);
        v79 = *(v78 + 16);
        if (v79)
        {
          v138 = v70;
          v139 = v65;
          v158 = &_swiftEmptyArrayStorage;

          sub_10005C5B0(0, v79, 0);
          v80 = v78;
          v81 = &_swiftEmptyArrayStorage;
          v82 = v80 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v83 = *(v146 + 72);
          do
          {
            v84 = v0[41];
            v85 = v0[24];
            v86 = v0[25];
            v87 = v0[23];
            sub_100042A80(v82, v86);
            sub_100042A80(v86, v85);
            v88 = *v85;
            v89 = *(v156 + 48);
            *v87 = *v85;
            v149(v87 + v89, v85 + v89, v84);
            sub_10000C460(v87, &qword_10012A448, &unk_100109550);
            sub_10000C460(v86, &qword_10012A448, &unk_100109550);
            v158 = v81;
            v91 = v81[2];
            v90 = v81[3];
            if (v91 >= v90 >> 1)
            {
              sub_10005C5B0((v90 > 1), v91 + 1, 1);
              v81 = v158;
            }

            v81[2] = v91 + 1;
            v81[v91 + 4] = v88;
            v82 += v83;
            --v79;
          }

          while (v79);

          v64 = v133;
          v63 = v134;
          v70 = v138;
          v65 = v139;
          v68 = v132;
        }

        else
        {
          v81 = &_swiftEmptyArrayStorage;
        }

        v92 = v0[45];
        v93 = v0[41];
        *(v135 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
        isUniquelyReferenced_nonNull_native = (v149)(v64[6] + v141, v92, v93);
        *(v64[7] + 8 * v143) = v81;
        v94 = v64[2];
        v26 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v26)
        {
          goto LABEL_82;
        }

        v64[2] = v95;
        if (!v70)
        {
          goto LABEL_54;
        }
      }
    }

    v34 = *(v3 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003D27C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v13 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    v6 = *(v2 + 504);
    v5 = *(v2 + 512);
    v7 = *(v2 + 488);
    v8 = *(v2 + 440);
    v9 = *(v2 + 416);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));

    v10 = sub_100043E70;
  }

  else
  {
    v11 = *(v2 + 440);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
    v10 = sub_10003D3F8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10003D3F8()
{
  v30 = v0;
  v1 = v0[63];
  v2 = v0[38];
  static Log.default.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[63];
    v27 = v0[58];
    v6 = v0[41];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_100102F80(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Processing photos: %s", v10, 0xCu);
    sub_10000C304(v11);

    v27(v7, v9);
  }

  else
  {
    v15 = v0[58];
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];

    v15(v16, v18);
  }

  v19 = v0[15];
  v20 = v19[8];
  v21 = v19[9];
  sub_10000C3CC(v19 + 5, v20);
  v22 = *(v21 + 16);
  v28 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[68] = v24;
  *v24 = v0;
  v24[1] = sub_10003D694;
  v25 = v0[63];

  return (v28)(v0 + 2, v25, 0, 0, v20, v21);
}

uint64_t sub_10003D694()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v11 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_100043EA4;
  }

  else
  {
    v9 = sub_10003D7EC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003D7EC()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[10];
  v7 = v0[11];
  sub_10000C410((v0 + 7), v6);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[70] = v9;
  *v9 = v0;
  v9[1] = sub_10003D9A8;
  v10 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0, v0 + 12, v6, v7);
}

uint64_t sub_10003D9A8()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_100043EA8;
  }

  else
  {
    v9 = sub_10003DAFC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003DAFC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[65];
    v6 = v0[63];
    v5 = v0[64];
    v7 = v0[61];
    v8 = v0[52];
    v10 = v0[47];
    v9 = v0[48];
    v12 = v0[45];
    v11 = v0[46];
    v32 = v0[44];
    v33 = v0[43];
    v34 = v0[40];
    v35 = v0[39];
    v36 = v0[38];
    v37 = v0[35];
    v38 = v0[34];
    v39 = v0[33];
    v40 = v0[30];
    v41 = v0[29];
    v42 = v0[26];
    v43 = v0[25];
    v44 = v0[24];
    v45 = v0[23];
    v47 = v0[19];

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v13 = v0[1];

    return v13();
  }

  v15 = v0[65];
  v16 = v0[43];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v0[65];
  result = sub_100057AFC(v0[43]);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = v0[54];
  v19 = v0[55];
  v21 = v0[43];
  v22 = v0[41];
  v23 = v0[28];
  v46 = v0[27];
  v48 = v0[29];
  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[13];
  v27 = *(*(v0[65] + 56) + 8 * result);

  v20(v21, v22);
  *v24 = v27;
  (*(v23 + 16))(&v24[*(v25 + 48)], v48, v46);
  v49 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  v0[71] = v29;
  *v29 = v0;
  v29[1] = sub_10003DE64;
  v30 = v0[19];
  v31 = v0[14];

  return v49(v30);
}

uint64_t sub_10003DE64()
{
  v2 = *v1;
  v3 = (*v1)[71];
  v11 = *v1;
  (*v1)[72] = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);

    v9 = sub_100043EA0;
  }

  else
  {
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);
    v9 = sub_10003DFF0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10003DFF0()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_10003D9A8;
  v5 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_10003E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[18] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v15 = type metadata accessor for AlbumID();
  v5[31] = v15;
  v16 = *(v15 - 8);
  v5[32] = v16;
  v17 = *(v16 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[36] = v18;
  v19 = *(v18 - 8);
  v5[37] = v19;
  v20 = *(v19 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v5[41] = v21;
  v22 = *(v21 - 8);
  v5[42] = v22;
  v23 = *(v22 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003E424, 0, 0);
}

uint64_t sub_10003E424()
{
  v1 = v0[48];
  v2 = v0[31];
  v4 = v0[15];
  v3 = v0[16];
  v0[49] = sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for AlbumDatabase();
  v0[50] = v5;
  v6 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_10003E56C;
  v9 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_10003E56C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v7 = v3[48];
  v8 = v3[42];
  v9 = v3[41];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v1)
  {
    v11(v7, v9);
    v13 = sub_10003ECEC;
  }

  else
  {
    v4[54] = v11;
    v4[55] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_10003E6F4;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_10003E6F4()
{
  v83 = v0;
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[16];
  static Log.default.getter();
  v7 = *(v5 + 16);
  v0[56] = v7;
  v0[57] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[31];
  v11 = v0[32];
  if (v10)
  {
    v68 = v9;
    log = v8;
    v79 = v0[52];
    v80 = v0[42];
    v13 = v0[34];
    v14 = v0[35];
    v73 = v0[28];
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v15 = 136315394;
    v7(v13, v14, v12);
    v16 = *(v11 + 8);
    v16(v14, v12);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v69 = v16;
    v16(v13, v12);
    v20 = sub_100102F80(v17, v19, &v81);

    *(v15 + 4) = v20;
    buf = v15;
    *(v15 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v22 = result;
    v23 = 0;
    v24 = *(v79 + 64);
    v25 = 1 << *(v79 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v74 = result + 64;
    v71 = v28;
    v72 = result;
    if ((v26 & v24) != 0)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_12:
        v32 = v29 | (v23 << 6);
        v33 = *(v79 + 48);
        v34 = *(v33 + 8 * v32);
        v35 = *(*(v79 + 56) + 8 * v32);
        v36 = *(v35 + 16);
        if (v36)
        {
          v75 = *(v33 + 8 * v32);
          v76 = v32;
          v77 = v27;
          v78 = v23;
          v82 = &_swiftEmptyArrayStorage;

          sub_10005C508(0, v36, 0);
          v37 = v82;
          v38 = v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
          v39 = *(v73 + 72);
          v40 = *(v73 + 16);
          do
          {
            v41 = v0[47];
            v42 = v0[30];
            v43 = v0[27];
            v40(v42, v38, v43);
            StoredPhoto.localIdentifier.getter();
            (*(v73 + 8))(v42, v43);
            v82 = v37;
            v45 = v37[2];
            v44 = v37[3];
            if (v45 >= v44 >> 1)
            {
              sub_10005C508(v44 > 1, v45 + 1, 1);
              v37 = v82;
            }

            v46 = v0[47];
            v47 = v0[41];
            v37[2] = v45 + 1;
            (*(v80 + 32))(v37 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v45, v46, v47);
            v38 += v39;
            --v36;
          }

          while (v36);

          v28 = v71;
          v22 = v72;
          v27 = v77;
          v23 = v78;
          v34 = v75;
          v32 = v76;
        }

        else
        {
          v37 = &_swiftEmptyArrayStorage;
        }

        *(v74 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        *(v22[6] + 8 * v32) = v34;
        *(v22[7] + 8 * v32) = v37;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v22[2] = v50;
        if (!v27)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= v28)
        {
          v56 = v0[40];
          v58 = v0[36];
          v57 = v0[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v59 = Dictionary.description.getter();
          v61 = v60;

          v62 = sub_100102F80(v59, v61, &v81);

          *(buf + 14) = v62;
          _os_log_impl(&_mh_execute_header, log, v68, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v55 = *(v57 + 8);
          v55(v56, v58);
          v54 = v69;
          goto LABEL_24;
        }

        v31 = *(v79 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v27 = (v31 - 1) & v31;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v51 = v0[40];
    v53 = v0[36];
    v52 = v0[37];
    v54 = *(v11 + 8);
    v54(v0[35], v0[31]);

    v55 = *(v52 + 8);
    v55(v51, v53);
LABEL_24:
    v0[58] = v55;
    v0[59] = v54;
    v63 = *(v0[15] + 32);
    v64 = swift_task_alloc();
    v0[60] = v64;
    *v64 = v0;
    v64[1] = sub_10003EE4C;
    v66 = v0[16];
    v65 = v0[17];

    return sub_10000CCAC(v66, v65);
  }

  return result;
}

uint64_t sub_10003ECEC()
{
  v23 = v0[53];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003EE4C(uint64_t a1)
{
  v3 = *(*v2 + 480);
  v4 = *v2;
  v4[61] = a1;
  v4[62] = v1;

  if (v1)
  {
    v5 = v4[52];

    v7 = v4[47];
    v6 = v4[48];
    v9 = v4[45];
    v8 = v4[46];
    v11 = v4[43];
    v10 = v4[44];
    v13 = v4[39];
    v12 = v4[40];
    v17 = v4[38];
    v18 = v4[35];
    v19 = v4[34];
    v20 = v4[33];
    v21 = v4[30];
    v22 = v4[29];
    v23 = v4[26];
    v24 = v4[25];
    v25 = v4[24];
    v26 = v4[23];
    v14 = v4[19];
    v27 = v4[20];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_10003F098, 0, 0);
  }
}

uint64_t sub_10003F098()
{
  v159 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v144 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[61];

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v142 = v3;
  while (v7)
  {
LABEL_10:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v16 = *(*(v151 + 56) + v15);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_78;
    }

    v20 = *(*(v151 + 56) + v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 > v13[3] >> 1)
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v142;
    v7 &= v7 - 1;
    if (*(v16 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v17)
      {
        goto LABEL_83;
      }

      v22 = v0[41];
      v23 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v24 = *(v144 + 72);
      swift_arrayInitWithCopy();

      if (v17)
      {
        v25 = v13[2];
        v26 = __OFADD__(v25, v17);
        v27 = v25 + v17;
        if (v26)
        {
          goto LABEL_85;
        }

        v13[2] = v27;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v29 = v0[61];
  v28 = v0[62];
  v30 = v0[42];
  v146 = v0[22];
  v156 = v0[21];

  v31 = sub_10006C038(v13);

  v0[63] = sub_100013078(v31);

  v32 = -1;
  v33 = -1 << *(v151 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v151 + 64);
  v35 = (63 - v33) >> 6;
  v154 = (v30 + 16);
  v137 = v29;

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v136 = v35;
  while (1)
  {
    v0[64] = v37;
    if (!v34)
    {
      break;
    }

LABEL_31:
    v148 = v34;
    v39 = (v36 << 9) | (8 * __clz(__rbit64(v34)));
    v40 = *(*(v151 + 56) + v39);
    v41 = *(v40 + 16);
    if (v41)
    {
      v140 = v37;
      v42 = *(*(v137 + 48) + v39);
      v158 = &_swiftEmptyArrayStorage;

      sub_10005C654(0, v41, 0);
      v43 = &_swiftEmptyArrayStorage;
      v44 = v40 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v45 = *(v144 + 72);
      v46 = *v154;
      do
      {
        v47 = v0[26];
        v46(v47 + *(v156 + 48), v44, v0[41]);
        *v47 = v42;
        v158 = v43;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_10005C654(v48 > 1, v49 + 1, 1);
          v43 = v158;
        }

        v50 = v0[26];
        v43[2] = v49 + 1;
        sub_100042590(v50, v43 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v49);
        v44 += v45;
        --v41;
      }

      while (v41);

      v37 = v140;
      v3 = v142;
      v35 = v136;
    }

    else
    {
      v43 = &_swiftEmptyArrayStorage;
    }

    v51 = v43[2];
    v52 = v37[2];
    v53 = v52 + v51;
    if (__OFADD__(v52, v51))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v53 > v37[3] >> 1)
    {
      if (v52 <= v53)
      {
        v54 = v52 + v51;
      }

      else
      {
        v54 = v52;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v54, 1, v37);
      v37 = isUniquelyReferenced_nonNull_native;
    }

    v34 = (v148 - 1) & v148;
    if (v43[2])
    {
      if ((v37[3] >> 1) - v37[2] < v51)
      {
        goto LABEL_84;
      }

      v55 = v0[21];
      v56 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v57 = *(v146 + 72);
      swift_arrayInitWithCopy();

      if (v51)
      {
        v58 = v37[2];
        v26 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v26)
        {
          goto LABEL_86;
        }

        v37[2] = v59;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      v60 = v0[61];
      v61 = v0[42];

      v63 = sub_100042600(v62);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v64 = isUniquelyReferenced_nonNull_native;
      v65 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v131 = v63 + 64;
      v66 = 1 << *(v63 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = (v66 + 63) >> 6;
      v69 = (v61 + 32);
      v70 = v67 & *(v63 + 64);
      v152 = v69;
      v134 = v63;
      v135 = isUniquelyReferenced_nonNull_native + 64;
      v132 = v68;
      v133 = isUniquelyReferenced_nonNull_native;
      if (!v70)
      {
LABEL_54:
        v72 = v65;
        while (1)
        {
          v65 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_77;
          }

          if (v65 >= v68)
          {
            v97 = v0[56];
            v96 = v0[57];
            v98 = v0[39];
            v99 = v0[33];
            v100 = v0[31];
            v101 = v0[16];

            static Log.default.getter();
            v97(v99, v101, v100);
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.debug.getter();
            v104 = os_log_type_enabled(v102, v103);
            v106 = v0[58];
            v105 = v0[59];
            if (v104)
            {
              v107 = v0[57];
              v145 = v0[56];
              v157 = v0[39];
              v153 = v0[37];
              v155 = v0[36];
              v147 = v103;
              v109 = v0[33];
              v108 = v0[34];
              v111 = v0[31];
              v110 = v0[32];
              v150 = v0[58];
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v112 = 136315138;
              v145(v108, v109, v111);
              v105(v109, v111);
              sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v105(v108, v111);
              v117 = sub_100102F80(v114, v116, &v158);

              *(v112 + 4) = v117;
              _os_log_impl(&_mh_execute_header, v102, v147, "Clearing photos for id: %s", v112, 0xCu);
              sub_10000C304(v113);

              v150(v157, v155);
            }

            else
            {
              v118 = v0[39];
              v119 = v0[36];
              v120 = v0[37];
              v121 = v0[32] + 8;
              v105(v0[33], v0[31]);

              v106(v118, v119);
            }

            v122 = v0[49];
            v123 = v0[44];
            v124 = v0[31];
            v126 = v0[15];
            v125 = v0[16];
            dispatch thunk of PhotosFaceID.id.getter();
            v127 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
            v128 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)[1];
            v129 = swift_task_alloc();
            v0[66] = v129;
            *v129 = v0;
            v129[1] = sub_10003FB18;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v127;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v73 = *(v131 + 8 * v65);
          ++v72;
          if (v73)
          {
            v71 = __clz(__rbit64(v73));
            v70 = (v73 - 1) & v73;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v71 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_59:
        v74 = v71 | (v65 << 6);
        v76 = v0[45];
        v75 = v0[46];
        v77 = v0[41];
        v141 = *(v144 + 72) * v74;
        (*v154)(v75, *(v63 + 48) + v141, v77);
        v143 = v74;
        v78 = *(*(v63 + 56) + 8 * v74);
        v149 = *v152;
        (*v152)(v76, v75, v77);
        v79 = *(v78 + 16);
        if (v79)
        {
          v138 = v70;
          v139 = v65;
          v158 = &_swiftEmptyArrayStorage;

          sub_10005C5B0(0, v79, 0);
          v80 = v78;
          v81 = &_swiftEmptyArrayStorage;
          v82 = v80 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v83 = *(v146 + 72);
          do
          {
            v84 = v0[41];
            v85 = v0[24];
            v86 = v0[25];
            v87 = v0[23];
            sub_100042A80(v82, v86);
            sub_100042A80(v86, v85);
            v88 = *v85;
            v89 = *(v156 + 48);
            *v87 = *v85;
            v149(v87 + v89, v85 + v89, v84);
            sub_10000C460(v87, &qword_10012A448, &unk_100109550);
            sub_10000C460(v86, &qword_10012A448, &unk_100109550);
            v158 = v81;
            v91 = v81[2];
            v90 = v81[3];
            if (v91 >= v90 >> 1)
            {
              sub_10005C5B0((v90 > 1), v91 + 1, 1);
              v81 = v158;
            }

            v81[2] = v91 + 1;
            v81[v91 + 4] = v88;
            v82 += v83;
            --v79;
          }

          while (v79);

          v64 = v133;
          v63 = v134;
          v70 = v138;
          v65 = v139;
          v68 = v132;
        }

        else
        {
          v81 = &_swiftEmptyArrayStorage;
        }

        v92 = v0[45];
        v93 = v0[41];
        *(v135 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
        isUniquelyReferenced_nonNull_native = (v149)(v64[6] + v141, v92, v93);
        *(v64[7] + 8 * v143) = v81;
        v94 = v64[2];
        v26 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v26)
        {
          goto LABEL_82;
        }

        v64[2] = v95;
        if (!v70)
        {
          goto LABEL_54;
        }
      }
    }

    v34 = *(v3 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003FB18()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v13 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);
    v6 = *(v2 + 504);
    v5 = *(v2 + 512);
    v7 = *(v2 + 488);
    v8 = *(v2 + 440);
    v9 = *(v2 + 416);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));

    v10 = sub_10003FF30;
  }

  else
  {
    v11 = *(v2 + 440);
    (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
    v10 = sub_10003FC94;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10003FC94()
{
  v30 = v0;
  v1 = v0[63];
  v2 = v0[38];
  static Log.default.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[63];
    v27 = v0[58];
    v6 = v0[41];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_100102F80(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Processing photos: %s", v10, 0xCu);
    sub_10000C304(v11);

    v27(v7, v9);
  }

  else
  {
    v15 = v0[58];
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];

    v15(v16, v18);
  }

  v19 = v0[15];
  v20 = v19[8];
  v21 = v19[9];
  sub_10000C3CC(v19 + 5, v20);
  v22 = *(v21 + 16);
  v28 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[68] = v24;
  *v24 = v0;
  v24[1] = sub_100040090;
  v25 = v0[63];

  return (v28)(v0 + 2, v25, 0, 0, v20, v21);
}

uint64_t sub_10003FF30()
{
  v23 = v0[67];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100040090()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v11 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_1000403A4;
  }

  else
  {
    v9 = sub_1000401E8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000401E8()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[10];
  v7 = v0[11];
  sub_10000C410((v0 + 7), v6);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[70] = v9;
  *v9 = v0;
  v9[1] = sub_100040504;
  v10 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0, v0 + 12, v6, v7);
}

uint64_t sub_1000403A4()
{
  v23 = v0[69];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100040504()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v11 = *v1;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];

    v9 = sub_1000409C0;
  }

  else
  {
    v9 = sub_100040658;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100040658()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[65];
    v6 = v0[63];
    v5 = v0[64];
    v7 = v0[61];
    v8 = v0[52];
    v10 = v0[47];
    v9 = v0[48];
    v12 = v0[45];
    v11 = v0[46];
    v32 = v0[44];
    v33 = v0[43];
    v34 = v0[40];
    v35 = v0[39];
    v36 = v0[38];
    v37 = v0[35];
    v38 = v0[34];
    v39 = v0[33];
    v40 = v0[30];
    v41 = v0[29];
    v42 = v0[26];
    v43 = v0[25];
    v44 = v0[24];
    v45 = v0[23];
    v47 = v0[19];

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v13 = v0[1];

    return v13();
  }

  v15 = v0[65];
  v16 = v0[43];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v0[65];
  result = sub_100057AFC(v0[43]);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = v0[54];
  v19 = v0[55];
  v21 = v0[43];
  v22 = v0[41];
  v23 = v0[28];
  v46 = v0[27];
  v48 = v0[29];
  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[13];
  v27 = *(*(v0[65] + 56) + 8 * result);

  v20(v21, v22);
  *v24 = v27;
  (*(v23 + 16))(&v24[*(v25 + 48)], v48, v46);
  v49 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  v0[71] = v29;
  *v29 = v0;
  v29[1] = sub_100040B30;
  v30 = v0[19];
  v31 = v0[14];

  return v49(v30);
}

uint64_t sub_1000409C0()
{
  v23 = v0[12];
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100040B30()
{
  v2 = *v1;
  v3 = (*v1)[71];
  v11 = *v1;
  (*v1)[72] = v0;

  if (v0)
  {
    v4 = v2[65];
    v6 = v2[63];
    v5 = v2[64];
    v7 = v2[61];
    v8 = v2[52];
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);

    v9 = sub_100040D9C;
  }

  else
  {
    sub_10000C460(v2[19], &qword_10012A428, &unk_1001091B0);
    v9 = sub_100040CBC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100040CBC()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_100040504;
  v5 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_100040D9C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);
  v23 = v0[72];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100040F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100040F44, 0, 0);
}

uint64_t sub_100040F44()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 32) = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100041008, v2, v1);
}

uint64_t sub_100041008()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1000062EC(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100041094()
{
  v1 = v0[2];
  v2 = *v1;
  v0[3] = *v1;
  if (v1[1])
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1000411E8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0x65706F7250746567, 0xED00002928797472, sub_100042098, v3, &type metadata for Bool);
  }

  else
  {
    v6 = v0[1];

    return v6(v2 & 1);
  }
}

uint64_t sub_1000411E8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  sub_1000420A0(v3, 1);

  return _swift_task_switch(sub_100041320, 0, 0);
}

uint64_t sub_100041338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000560C(&qword_10012A3E0, &unk_1001090F0);
  v6 = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001089C0;
  (*(v7 + 16))(v10 + v9, a1, v6);

  sub_100084678(v10);
  result = sub_1000420A0(*a3, *(a3 + 8));
  *a3 = a2;
  *(a3 + 8) = 1;
  return result;
}

uint64_t sub_100041470()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000414A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041540;

  return sub_1000FC84C(v2);
}

uint64_t sub_100041540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_100041654()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E28;

  return sub_1000139DC();
}

uint64_t sub_1000416E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E28;

  return sub_100014288();
}

uint64_t sub_100041774(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100057AFC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100058768();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_10004183C(v6, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_10004183C(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000438BC(&qword_10012A1F8, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

size_t sub_100041B5C()
{
  v24 = type metadata accessor for ShuffleID();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v24);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedPhotoLibrary];
  v5 = [objc_allocWithZone(PFCShuffleGenerator) initWithPhotoLibrary:v4 targetShuffleSize:static TestProperties.targetGalleryShuffleSize.getter()];

  v6 = [v5 shuffles];
  sub_100042AFC();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = &_swiftEmptyArrayStorage;
LABEL_14:
    v19 = sub_10006BE9C(v11);

    return v19;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v25 = &_swiftEmptyArrayStorage;
  result = sub_10005C56C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v25;
    v12 = v7;
    v23 = v7 & 0xC000000000000001;
    v21 = v5;
    v22 = v0 + 32;
    v13 = v7;
    do
    {
      if (v23)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v12 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 people];
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      [v15 pets];
      [v15 nature];
      [v15 cityscape];
      ShuffleID.init(people:pets:nature:cityscape:)();

      v25 = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_10005C56C(v17 > 1, v18 + 1, 1);
        v11 = v25;
      }

      ++v10;
      v11[2] = v18 + 1;
      (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v24);
      v12 = v13;
    }

    while (v8 != v10);

    v5 = v21;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100041E80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100041ED4()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100041FA0(uint64_t a1)
{
  v4 = *(type metadata accessor for Message() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CC84;

  return sub_100040F24(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000420A0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000420AC(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_1000357D8(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000421C8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ShuffleID() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000CC84;

  return sub_1000301E4(a1, v9, v10, v11, v1 + v5, v13, v14, v1 + v8);
}

uint64_t sub_100042380(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100024CA4(a1, a2, v8, v2 + v7);
}

uint64_t sub_100042470(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000363B8(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_100042590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A448, &unk_100109550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042600(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v59 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v6 = *(*(v56 - 8) + 64);
  v7 = __chkstk_darwin(v56);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = (&v45 - v10);
  v11 = __chkstk_darwin(v9);
  v55 = &v45 - v12;
  __chkstk_darwin(v11);
  v58 = &v45 - v14;
  v15 = &_swiftEmptyDictionarySingleton;
  v60 = &_swiftEmptyDictionarySingleton;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return v15;
  }

  v48 = *(v13 + 80);
  v49 = v3;
  v17 = *(v13 + 72);
  v18 = a1 + ((v48 + 32) & ~v48);
  v57 = (v3 + 32);
  v51 = (v48 + 32) & ~v48;
  v52 = (v3 + 16);
  v47 = (v3 + 8);
  v46 = xmmword_1001089C0;
  v50 = v2;
  while (1)
  {
    v19 = v58;
    sub_100042A80(v18, v58);
    v20 = v55;
    sub_100042A80(v19, v55);
    v21 = *(v56 + 48);
    v22 = v54;
    *v54 = *v20;
    v23 = *v57;
    (*v57)(v22 + v21, &v20[v21], v2);
    v24 = v22 + v21;
    v25 = v59;
    (*v52)(v59, v24, v2);
    sub_10000C460(v22, &qword_10012A448, &unk_100109550);
    v27 = sub_100057AFC(v25);
    v28 = v15[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v15[3] < v30)
    {
      sub_10005A140(v30, 1);
      v15 = v60;
      v32 = sub_100057AFC(v59);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    if (v31)
    {
      (*v47)(v59, v2);
      v34 = v15[7];
      sub_100042590(v58, v53);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_1000FFFA4(0, v35[2] + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = sub_1000FFFA4(v37 > 1, v38 + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v35[2] = v38 + 1;
      sub_100042590(v53, v35 + v51 + v38 * v17);
      v2 = v50;
    }

    else
    {
      sub_10000560C(&qword_10012A458, &qword_10010AAA0);
      v39 = v51;
      v40 = swift_allocObject();
      *(v40 + 16) = v46;
      sub_100042590(v58, v40 + v39);
      v15[(v27 >> 6) + 8] |= 1 << v27;
      v23(v15[6] + *(v49 + 72) * v27, v59, v2);
      *(v15[7] + 8 * v27) = v40;
      v41 = v15[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v15[2] = v43;
    }

    v18 += v17;
    if (!--v16)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100042A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A448, &unk_100109550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042AF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_100042AFC()
{
  result = qword_10012A460;
  if (!qword_10012A460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012A460);
  }

  return result;
}

uint64_t sub_100042B60(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_100035AD0(a1, v6, v1 + v5, v7);
}

uint64_t sub_100042C7C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_100038AF4(a1, a2, v8, v2 + v7);
}

uint64_t sub_100042DD0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for DailyID() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000CC84;

  return sub_100031970(a1, v9, v10, v11, v1 + v5, v13, v14, v1 + v8);
}

uint64_t sub_100042F88(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_10002725C(a1, a2, v8, v2 + v7);
}

uint64_t sub_100043090(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_100035DC8(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000431AC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_10003B994(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_1000432E4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ShuffleID() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000CC84;

  return sub_100032CDC(a1, v9, v10, v11, v1 + v5, v13, v14, v1 + v8);
}

uint64_t sub_1000434A0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100029180(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000435A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_1000360C0(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000436C4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10004379C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_10003E0D0(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_1000438BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004391C(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 16);
  swift_unknownObjectRelease();
  v15 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v3);
  v16 = *(v1 + v7 + 8);

  (*(v9 + 8))(v1 + v11, v8);
  v17 = *(v1 + v13);

  return _swift_deallocObject(v1, v13 + 8, v12 | 7);
}

uint64_t sub_100043AA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for AlbumID() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 1);
  v15 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000045BC;

  return sub_100034048(a1, v9, v10, v11, v1 + v5, v13, v14, v1 + v8);
}

uint64_t sub_100043C60()
{
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v2 = *(FaceRequest - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, FaceRequest);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043D24(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000045BC;

  return sub_10002B0A4(a1, a2, v8, v2 + v7);
}

id sub_100043EAC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(AXMVoiceOverVisionEngine) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100043F18()
{
  *(v1 + 16) = v0;
  type metadata accessor for CommunicationActor();
  *(v1 + 24) = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100043FE0, v3, v2);
}

uint64_t sub_100043FE0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 32);

  sub_10000560C(&qword_10012A608, &unk_100109A20);
  sub_10000CC24(&qword_10012A610, &qword_10012A608, &unk_100109A20);
  PhotosXPCServer.registerGeneratePhoto<A>(callback:)();

  v4 = *(*(v2 + 24) + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_100109498;
  *(v5 + 24) = v2;
  swift_retain_n();
  sub_10004FA14(1, &unk_1001094A8, v5, &unk_100126708, sub_10005E85C);

  PhotosXPCServer.registerGenerateMask(callback:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100044190(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100044258;

  return sub_1000444AC(a1, a2);
}

uint64_t sub_100044258()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_100044448;
  }

  else
  {
    v8 = sub_1000443E4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000443E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100044448()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1000444AC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v3[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for CommunicationActor();
  v3[15] = static CommunicationActor.shared.getter();
  v3[16] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v7;
  v3[18] = v6;

  return _swift_task_switch(sub_1000445E4, v7, v6);
}

uint64_t sub_1000445E4()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  Photo = GeneratePhotoRequest.photoIdentifiers.getter();
  v0[19] = Photo;
  v0[7] = v3;
  v0[20] = static CommunicationActor.shared.getter();
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_100044740;

  return (sub_10004F5C0)(v0 + 2, Photo, 0, 0, v2, &off_1001265F0);
}

uint64_t sub_100044740()
{
  v2 = v0;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 112);
  v12 = *v1;
  *(*v1 + 176) = v2;

  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = sub_100044A54;
  }

  else
  {
    v10 = sub_1000448D0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000448D0()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_100044934, v2, v3);
}

uint64_t sub_100044934()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];

  v5 = v0[6];
  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  type metadata accessor for GeneratePhotoResponse();
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  AsyncMapSequence.init(_:transform:)();
  sub_10000C304(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100044A54()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_100044AB8, v2, v3);
}

uint64_t sub_100044AB8()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_100044B28(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  v3[12] = type metadata accessor for CommunicationActor();
  v3[13] = static CommunicationActor.shared.getter();
  v3[14] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100044C24, v5, v4);
}

uint64_t sub_100044C24()
{
  v1 = v0[11];
  v2 = v0[12];
  v0[7] = v0[10];
  v0[17] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_100044D64;
  v4 = v0[9];

  return (sub_10004F5C0)(v0 + 2, v4, 0, 0, v1, &off_1001265F0);
}

uint64_t sub_100044D64()
{
  v2 = v0;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 96);
  v11 = *v1;
  *(*v1 + 152) = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v9 = sub_100044FD4;
  }

  else
  {
    v9 = sub_100044ED0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100044ED0()
{
  v1 = v0[17];

  v2 = v0[15];
  v3 = v0[16];

  return _swift_task_switch(sub_100044F34, v2, v3);
}

uint64_t sub_100044F34()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[6];
  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  sub_10000C304(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100044FD4()
{
  v1 = v0[17];

  v2 = v0[15];
  v3 = v0[16];

  return _swift_task_switch(sub_100045038, v2, v3);
}

uint64_t sub_100045038()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_10004509C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100045134;

  return sub_100045244(a1);
}

uint64_t sub_100045134(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_100045244(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for StoredPhoto();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v2[20] = v15;
  v16 = *(v15 - 8);
  v2[21] = v16;
  v17 = *(v16 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[25] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v19;
  v2[27] = v18;

  return _swift_task_switch(sub_100045508, v19, v18);
}

uint64_t sub_100045508()
{
  v34 = v0;
  v1 = v0[24];
  v2 = v0[4];
  v0[28] = *(v0[5] + 16);
  sub_10005F9A8(v1);
  v3 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[4];
  static Log.photos.getter();
  (*(v5 + 16))(v4, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  if (v10)
  {
    v32 = v0[16];
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_100102F80(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v30, "Processing mask photo: %s", v17, 0xCu);
    sub_10000C304(v18);

    v23 = *(v12 + 8);
    v23(v31, v32);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v23 = *(v12 + 8);
    v23(v11, v13);
  }

  v0[29] = v23;
  v24 = sub_10005D8D8(&off_100125E80);
  v0[30] = v24;
  sub_10000C460(&unk_100125EA0, &qword_10012A618, &qword_1001094C8);
  v25 = swift_task_alloc();
  v0[31] = v25;
  *v25 = v0;
  v25[1] = sub_100045870;
  v26 = v0[24];
  v27 = v0[4];
  v28 = v0[5];

  return sub_10004656C(v27, v26, v24);
}

uint64_t sub_100045870(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  v7 = v3[30];

  v8 = v3[27];
  v9 = v3[26];
  if (v1)
  {
    v10 = sub_100046204;
  }

  else
  {
    v10 = sub_1000459CC;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000459CC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[12];
  (*(v0[21] + 16))(v0[23], v0[24], v0[20]);
  v4 = v2;
  StoredPhoto.init(pfcStoredPhoto:baseURL:)();
  if (v1)
  {
    v5 = v0[32];
    v6 = v0[25];
    (*(v0[21] + 8))(v0[24], v0[20]);

    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[15];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[34] = v18;
    *v18 = v0;
    v18[1] = sub_100045B84;
    v19 = v0[28];
    v20 = v0[11];
    v21 = v0[12];

    return sub_10005FB64(v20, v21);
  }
}

uint64_t sub_100045B84()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v12 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_100046300;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v9 = v2[9];
    v10 = *(v8 + 8);
    v2[36] = v10;
    v2[37] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_100045CBC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100045CBC()
{
  v76 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);

  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000100107270;
  (*(v6 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_10005DDF8();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v5, v7);
  v8 = Data.init(contentsOf:options:)();
  if (v1)
  {
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);

    v18 = *(v14 + 8);
    v18(v13, v15);
    v11(v16, v17);
    v18(v12, v15);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 176);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 120);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 64);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v19 = v8;
    v20 = v9;
    v21 = *(v0 + 176);
    v22 = [objc_opt_self() defaultManager];
    sub_100103938(v21, 1);
    v34 = *(v0 + 144);

    static Log.photos.getter();
    sub_100041E80(v19, v20);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    sub_10000C868(v19, v20);
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 288);
    v38 = *(v0 + 296);
    v40 = *(v0 + 232);
    v41 = *(v0 + 192);
    v42 = *(v0 + 168);
    v72 = *(v0 + 176);
    v73 = *(v0 + 160);
    v43 = *(v0 + 144);
    v68 = v43;
    v69 = *(v0 + 256);
    v66 = *(v0 + 136);
    v67 = *(v0 + 128);
    v44 = *(v0 + 72);
    v70 = v44;
    v71 = *(v0 + 96);
    if (v37)
    {
      v45 = swift_slowAlloc();
      v65 = v39;
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136315138;
      sub_100041E80(v19, v20);
      v63 = v40;
      v64 = v41;
      v47 = Data.description.getter();
      v49 = v48;
      sub_10000C868(v19, v20);
      v50 = sub_100102F80(v47, v49, &v75);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v35, v36, "Returning mask: %s", v45, 0xCu);
      sub_10000C304(v46);

      v63(v68, v67);
      v51 = *(v42 + 8);
      v52 = v73;
      v51(v72, v73);
      v65(v71, v70);
      v53 = v64;
    }

    else
    {

      v40(v68, v67);
      v51 = *(v42 + 8);
      v52 = v73;
      v51(v72, v73);
      v39(v71, v70);
      v53 = v41;
    }

    v51(v53, v52);
    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v56 = *(v0 + 176);
    v58 = *(v0 + 144);
    v57 = *(v0 + 152);
    v59 = *(v0 + 120);
    v61 = *(v0 + 88);
    v60 = *(v0 + 96);
    v74 = *(v0 + 64);

    v62 = *(v0 + 8);

    return v62(v19, v20);
  }
}

uint64_t sub_100046204()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[21];

  (*(v4 + 8))(v2, v3);
  v5 = v0[33];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[15];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100046300()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[35];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[15];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100046424(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100046444, 0, 0);
}

uint64_t sub_100046444()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000560C(&qword_10012A600, &qword_100109468);
  v3 = type metadata accessor for StoredPhoto();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001089C0;
  (*(v4 + 16))(v7 + v6, v2, v3);
  GeneratePhotoResponse.init(results:)();
  v8 = v0[1];

  return v8();
}

uint64_t sub_10004656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for UUID();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for URL.DirectoryHint();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v17 = *(*(sub_10000560C(&qword_10012A568, &unk_1001093E0) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[40] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v18;
  v4[42] = v19;

  return _swift_task_switch(sub_10004688C, v18, v19);
}

uint64_t sub_10004688C()
{
  v51 = v0;
  v1 = v0[13];
  v2 = objc_opt_self();
  sub_10000560C(&qword_10012A090, &qword_100108E48);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001089C0;
  *(v3 + 32) = UUID.uuidString.getter();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v2 fetchAssetsWithUUIDs:isa options:0];

  if (!v6)
  {
    __break(1u);
  }

  v7 = [v6 firstObject];
  v0[43] = v7;

  if (v7)
  {

    return _swift_task_switch(sub_100046CE0, 0, 0);
  }

  else
  {
    v8 = v0[40];
    v9 = v0[23];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    v13 = v0[13];

    static Log.default.getter();
    (*(v11 + 16))(v10, v13, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[23];
    v19 = v0[20];
    v18 = v0[21];
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    if (v16)
    {
      v48 = v0[20];
      v23 = swift_slowAlloc();
      v44 = v15;
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v17;
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_100102F80(v25, v27, &v50);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v14, v44, "PhotoProcessor cannot fetch asset for %s", v23, 0xCu);
      sub_10000C304(v24);

      (*(v18 + 8))(v46, v48);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v19);
    }

    sub_10005DD30();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    v31 = v0[38];
    v30 = v0[39];
    v33 = v0[36];
    v32 = v0[37];
    v35 = v0[34];
    v34 = v0[35];
    v37 = v0[32];
    v36 = v0[33];
    v38 = v0[31];
    v39 = v0[28];
    v42 = v0[25];
    v43 = v0[24];
    v45 = v0[23];
    v47 = v0[22];
    v49 = v0[19];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_100046CE0()
{
  v2 = objc_opt_self();
  v3 = VCPMediaAnalysisService_AllowOnDemandOption;
  *(v0 + 352) = v2;
  *(v0 + 360) = v3;
  *(v0 + 480) = 0;
  *(v0 + 368) = 0;
  v4 = *(v0 + 120);
  v5 = [v2 sharedAnalysisService];
  *(v0 + 80) = v4;
  *(v0 + 376) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 80);
  *(v0 + 88) = v11;
  v12 = v0 + 88;
  v13 = sub_100057C14(v6, v8);
  v15 = *(v11 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v14;
  if (*(v11 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = v13;
    sub_1000589E8();
    v13 = v24;
    if (v1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = *v12;
    *(*v12 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v25 = (v23[6] + 16 * v13);
    *v25 = v6;
    v25[1] = v8;
    *(v23[7] + v13) = 1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v17)
    {
      __break(1u);
    }

    v23[2] = v27;
    goto LABEL_14;
  }

  sub_10005A51C(v18, isUniquelyReferenced_nonNull_native);
  v19 = *v12;
  v13 = sub_100057C14(v6, v8);
  if ((v1 & 1) != (v20 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  if ((v1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = v13;

  v23 = *v12;
  *(*(*v12 + 56) + v22) = 1;
LABEL_14:
  v28 = *(v0 + 344);
  *(v0 + 80) = v23;
  v29 = swift_task_alloc();
  *(v0 + 384) = v29;
  v29[2] = v5;
  v29[3] = v28;
  v29[4] = v0 + 80;
  v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v31 = swift_task_alloc();
  *(v0 + 392) = v31;
  v32 = sub_10000560C(&qword_10012A578, &unk_1001093F0);
  *v31 = v0;
  v31[1] = sub_100046FE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000042, 0x8000000100107170, sub_10005DD84, v29, v32);
}

uint64_t sub_100046FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_1000481A0;
  }

  else
  {
    v5 = *(v2 + 384);

    v4 = sub_100047138;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100047138()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 80);

  v3 = *(v0 + 328);
  v4 = *(v0 + 336);

  return _swift_task_switch(sub_1000471D8, v3, v4);
}

uint64_t sub_1000471D8()
{
  v201 = v0;
  v1 = v0;
  v2 = *(v0 + 400);
  v3 = *(v0 + 16);
  *(v0 + 408) = v3;
  v193 = *(v0 + 24);
  *(v0 + 416) = v193;
  *(v0 + 432) = *(v0 + 40);
  sub_10000D828(0, &qword_10012A580, NSKeyedUnarchiver_ptr);
  sub_10000D828(0, &qword_10012A588, PFCStoredPhoto_ptr);
  v4 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  *(v0 + 440) = v4;
  *(v0 + 448) = v2;
  if (v2)
  {

LABEL_3:
    v5 = *(v0 + 320);
    v6 = *(v0 + 192);

    static Log.default.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "MAD watchFaceData cannot be unarchived", v9, 2u);
    }

    v10 = *(v0 + 344);
    v11 = v1[24];
    v12 = v1[20];
    v13 = v1[21];

    (*(v13 + 8))(v11, v12);
    sub_10005DD30();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    sub_10000C868(v3, v193);

    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v28 = [*(v0 + 344) mainFileURL];
  if (v28)
  {
    v29 = *(v0 + 304);
    v30 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v0 + 304);
  v33 = *(v0 + 312);
  v34 = *(v0 + 296);
  v36 = *(v0 + 232);
  v35 = *(v0 + 240);
  (*(v1[30] + 56))(v1[38], v31, 1, v1[29]);
  sub_10005DD90(v32, v33, &qword_10012A568, &unk_1001093E0);
  sub_10005F690(v33, v34, &qword_10012A568, &unk_1001093E0);
  if ((*(v35 + 48))(v34, 1, v36) == 1)
  {
    v38 = 0;
  }

  else
  {
    v39 = v1[37];
    v40 = v1[29];
    v41 = v1[30];
    URL._bridgeToObjectiveC()(v37);
    v38 = v42;
    (*(v41 + 8))(v39, v40);
  }

  v43 = UIAccessibilityMetadataDescriptionForImage();

  if (v43)
  {
    v44 = v1[40];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = [objc_opt_self() sharedInstance];
    v47 = [v46 gizmoApplicationAccessibilityEnabled];

    if (v47)
    {
      v48 = swift_task_alloc();
      v1[57] = v48;
      *v48 = v1;
      v48[1] = sub_100048670;
      v49 = v1[16];
      v50 = v1[39];

      return sub_10004E214(v50);
    }

    v51 = v1[40];

    v45 = 0;
  }

  v52 = v1[54];
  v53 = v1[53];
  v54 = v1[36];
  [v1[55] setAccessibilityDescription:v45];

  v55 = [objc_opt_self() defaultManager];
  URL.init(fileURLWithPath:)();
  v56 = String._bridgeToObjectiveC()();

  v1[12] = 0;
  v167 = v55;
  v57 = [v55 contentsOfDirectoryAtPath:v56 error:v1 + 12];

  v58 = v1[12];
  if (!v57)
  {
    v79 = v1[36];
    v80 = v1[33];
    v82 = v1[29];
    v81 = v1[30];
    v83 = v1[25];
    v84 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static Log.default.getter();
    (*(v81 + 16))(v80, v79, v82);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v1[33];
    v89 = v1[29];
    v90 = v1[30];
    v91 = v1[25];
    v92 = v1[20];
    v93 = v1[21];
    v196 = v1;
    if (v87)
    {
      v94 = swift_slowAlloc();
      v186 = v91;
      v95 = swift_slowAlloc();
      v200[0] = v95;
      *v94 = 136315138;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL);
      logb = v92;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v86;
      v98 = v97;
      v190 = *(v90 + 8);
      v190(v88, v89);
      v99 = sub_100102F80(v96, v98, v200);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v85, v176, "MAD cannot list content of %s", v94, 0xCu);
      sub_10000C304(v95);

      (*(v93 + 8))(v186, logb);
    }

    else
    {

      v190 = *(v90 + 8);
      v190(v88, v89);
      (*(v93 + 8))(v91, v92);
    }

    v141 = v196[55];
    v143 = v196[51];
    v142 = v196[52];
    v144 = v196[43];
    v145 = v196[39];
    v146 = v196[36];
    v147 = v196[29];
    sub_10005DD30();
    swift_allocError();
    *v148 = 4;
    swift_willThrow();

    sub_10000C868(v143, v142);
    v190(v146, v147);
    v1 = v196;
LABEL_49:
    sub_10000C460(v145, &qword_10012A568, &unk_1001093E0);
LABEL_6:
    v16 = v1[38];
    v15 = v1[39];
    v18 = v1[36];
    v17 = v1[37];
    v20 = v1[34];
    v19 = v1[35];
    v22 = v1[32];
    v21 = v1[33];
    v23 = v1;
    v24 = v1[31];
    v25 = v1[28];
    v174 = v23[25];
    loga = v23[24];
    v184 = v23[23];
    v188 = v23[22];
    v194 = v23[19];

    v26 = v23[1];

    return v26();
  }

  v59 = v1[15];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v58;

  if (*(v59 + 16) && (v62 = v1[15], v63 = sub_100057C14(0xD000000000000014, 0x8000000100106D90), (v64 & 1) != 0) && (*(*(v1[15] + 56) + v63) & 1) != 0)
  {
    v65 = 1;
  }

  else
  {
    v65 = 2;
  }

  v164 = v65;
  v160 = *(v60 + 16);
  if (v160)
  {
    v66 = 0;
    v67 = v1[27];
    v158 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v156 = (v67 + 8);
    v157 = (v67 + 104);
    v68 = v1[56];
    v69 = (v60 + 40);
    v162 = (v1[30] + 8);
    v159 = v60;
    while (1)
    {
      if (v66 >= *(v60 + 16))
      {
        __break(1u);
      }

      v168 = v66;
      v70 = v1[35];
      v185 = v1[34];
      v71 = v1[28];
      v72 = v1[26];
      v189 = v1[14];
      v73 = *v69;
      v175 = *(v69 - 1);
      v1[6] = v175;
      v1[7] = v73;
      v171 = *v157;
      v195 = v68;
      (*v157)(v71, v158, v72);
      sub_10005DDF8();

      URL.appending<A>(path:directoryHint:)();
      v74 = *v156;
      (*v156)(v71, v72);
      v1[8] = v175;
      v1[9] = v73;
      v171(v71, v158, v72);
      URL.appending<A>(path:directoryHint:)();
      v74(v71, v72);

      sub_100103A60(v70, v185, v164);
      if (v195)
      {
        break;
      }

      v75 = v1[35];
      v76 = v1[29];
      v66 = v168 + 1;
      v77 = *v162;
      (*v162)(v1[34], v76);
      v77(v75, v76);
      v68 = 0;
      v78 = 0;
      v69 += 2;
      v60 = v159;
      if (v160 == v168 + 1)
      {
        goto LABEL_38;
      }
    }

    v114 = v1[35];
    logd = v1[36];
    v115 = v1[34];
    v116 = v1[32];
    v198 = v1[31];
    v118 = v1[29];
    v117 = v1[30];
    v119 = v1[22];
    v178 = v1[14];

    v120 = *v162;
    (*v162)(v115, v118);
    v192 = v120;
    v120(v114, v118);
    static Log.default.getter();
    v121 = *(v117 + 16);
    v121(v116, logd, v118);
    v121(v198, v178, v118);
    swift_errorRetain();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    log = v122;
    v124 = os_log_type_enabled(v122, v123);
    v126 = v1[31];
    v125 = v1[32];
    v127 = v1[29];
    v128 = v1[21];
    v129 = v1[22];
    v199 = v1;
    v130 = v1[20];
    if (v124)
    {
      v131 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v200[0] = swift_slowAlloc();
      *v131 = 136315650;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL);
      v161 = v123;
      v173 = v130;
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v192(v125, v127);
      v135 = sub_100102F80(v132, v134, v200);

      *(v131 + 4) = v135;
      *(v131 + 12) = 2080;
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      v192(v126, v127);
      v139 = sub_100102F80(v136, v138, v200);

      *(v131 + 14) = v139;
      *(v131 + 22) = 2112;
      swift_errorRetain();
      v140 = _swift_stdlib_bridgeErrorToNSError();
      *(v131 + 24) = v140;
      *v166 = v140;
      _os_log_impl(&_mh_execute_header, log, v161, "MAD: cannot copy results from %s to %s, error == %@", v131, 0x20u);
      sub_10000C460(v166, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();

      (*(v128 + 8))(v129, v173);
    }

    else
    {

      v192(v126, v127);
      v192(v125, v127);
      (*(v128 + 8))(v129, v130);
    }

    v1 = v199;
    v149 = v199[55];
    v151 = v199[51];
    v150 = v199[52];
    v152 = v199[43];
    v145 = v199[39];
    v153 = v199[36];
    v154 = v199[29];
    sub_10005DD30();
    swift_allocError();
    *v155 = 5;
    swift_willThrow();

    sub_10000C868(v151, v150);

    v192(v153, v154);
    goto LABEL_49;
  }

  v78 = v1[56];
LABEL_38:
  v100 = v1[36];

  sub_100103938(v100, 1);
  if (v78)
  {
  }

  v102 = v1[51];
  v101 = v1[52];
  v103 = v1[43];
  v105 = v1[38];
  v104 = v1[39];
  v106 = v1[36];
  v107 = v1[37];
  v108 = v1;
  v109 = v1[35];
  v163 = v108[34];
  v165 = v108[33];
  v169 = v108[32];
  v170 = v108[31];
  v110 = v108[29];
  v111 = v108[30];
  v172 = v108[28];
  v177 = v108[25];
  logc = v108[24];
  v187 = v108[23];
  v191 = v108[22];
  v197 = v108[19];

  sub_10000C868(v102, v101);
  (*(v111 + 8))(v106, v110);
  sub_10000C460(v104, &qword_10012A568, &unk_1001093E0);

  v112 = v108[1];
  v113 = v108[55];

  return v112(v113);
}

uint64_t sub_1000481A0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 480);
  v3 = *(v0 + 368);

  v4 = *(v0 + 80);

  v5 = *(v0 + 400);
  if (v2)
  {
    swift_willThrow();
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);

    return _swift_task_switch(sub_100048510, v6, v7);
  }

  *(v0 + 480) = 1;
  *(v0 + 368) = v5;
  v8 = *(v0 + 360);
  v9 = *(v0 + 120);
  v10 = [*(v0 + 352) sharedAnalysisService];
  *(v0 + 376) = v10;
  *(v0 + 80) = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + 80);
  *(v0 + 88) = v16;
  v17 = sub_100057C14(v11, v13);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v9) = v18;
  if (*(v16 + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_15:
    v27 = v17;
    sub_1000589E8();
    v17 = v27;
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_16:
    v26 = *(v0 + 88);
    v26[(v17 >> 6) + 8] |= 1 << v17;
    v28 = (v26[6] + 16 * v17);
    *v28 = v11;
    v28[1] = v13;
    *(v26[7] + v17) = 1;
    v29 = v26[2];
    v21 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v21)
    {
      __break(1u);
    }

    v26[2] = v30;
    goto LABEL_18;
  }

  sub_10005A51C(v22, isUniquelyReferenced_nonNull_native);
  v23 = *(v0 + 88);
  v17 = sub_100057C14(v11, v13);
  if ((v9 & 1) != (v24 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_12:
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v25 = v17;

  v26 = *(v0 + 88);
  *(v26[7] + v25) = 1;
LABEL_18:
  v31 = *(v0 + 344);
  *(v0 + 80) = v26;
  v32 = swift_task_alloc();
  *(v0 + 384) = v32;
  v32[2] = v10;
  v32[3] = v31;
  v32[4] = v0 + 80;
  v33 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v34 = swift_task_alloc();
  *(v0 + 392) = v34;
  v35 = sub_10000560C(&qword_10012A578, &unk_1001093F0);
  *v34 = v0;
  v34[1] = sub_100046FE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000042, 0x8000000100107170, sub_10005DD84, v32, v35);
}

uint64_t sub_100048510()
{
  v1 = v0[43];
  v2 = v0[40];

  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  v12 = v0[28];
  v15 = v0[50];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[19];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100048670(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 456);
  v9 = *v2;
  *(v4 + 464) = a1;
  *(v4 + 472) = a2;

  v6 = *(v3 + 336);
  v7 = *(v3 + 328);

  return _swift_task_switch(sub_1000487CC, v7, v6);
}

uint64_t sub_1000487CC()
{
  v170 = v0;
  v1 = v0;
  v2 = *(v0 + 320);

  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = String._bridgeToObjectiveC()();

  v6 = *(v0 + 432);
  v7 = *(v0 + 424);
  v8 = *(v0 + 288);
  [*(v0 + 440) setAccessibilityDescription:v5];

  v9 = [objc_opt_self() defaultManager];
  URL.init(fileURLWithPath:)();
  v10 = String._bridgeToObjectiveC()();

  *(v0 + 96) = 0;
  v135 = v9;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:v0 + 96];

  v12 = *(v0 + 96);
  v168 = v0;
  if (!v11)
  {
    v34 = *(v0 + 288);
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);
    v37 = *(v0 + 240);
    v38 = *(v0 + 200);
    v39 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static Log.default.getter();
    (*(v37 + 16))(v35, v34, v36);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 264);
    v44 = *(v0 + 232);
    v45 = *(v0 + 240);
    v46 = *(v0 + 200);
    v49 = v0 + 160;
    v47 = *(v0 + 160);
    v48 = *(v49 + 8);
    if (v42)
    {
      v50 = swift_slowAlloc();
      v160 = v47;
      v51 = swift_slowAlloc();
      v169[0] = v51;
      *v50 = 136315138;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL);
      logb = v46;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v148 = v41;
      v54 = v53;
      v164 = *(v45 + 8);
      v164(v43, v44);
      v55 = sub_100102F80(v52, v54, v169);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v40, v148, "MAD cannot list content of %s", v50, 0xCu);
      sub_10000C304(v51);

      (*(v48 + 8))(logb, v160);
    }

    else
    {

      v164 = *(v45 + 8);
      v164(v43, v44);
      (*(v48 + 8))(v46, v47);
    }

    v94 = v168;
    v100 = v168[55];
    v102 = v168[51];
    v101 = v168[52];
    v103 = v168[43];
    v104 = v168[39];
    v105 = v168[36];
    v106 = v168[29];
    sub_10005DD30();
    swift_allocError();
    *v107 = 4;
    swift_willThrow();

    sub_10000C868(v102, v101);
    v164(v105, v106);
LABEL_27:
    sub_10000C460(v104, &qword_10012A568, &unk_1001093E0);
    v116 = v94[38];
    v115 = v94[39];
    v118 = v94[36];
    v117 = v94[37];
    v120 = v94[34];
    v119 = v94[35];
    v121 = v94[33];
    v122 = v168[32];
    v123 = v168[31];
    v124 = v168[28];
    v147 = v168[25];
    v152 = v168[24];
    loge = v168[23];
    v162 = v168[22];
    v167 = v168[19];

    v125 = v168[1];

    return v125();
  }

  v13 = *(v0 + 120);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (*(v13 + 16) && (v16 = *(v0 + 120), v17 = sub_100057C14(0xD000000000000014, 0x8000000100106D90), (v18 & 1) != 0) && (*(*(*(v0 + 120) + 56) + v17) & 1) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v131 = v19;
  v130 = *(v14 + 16);
  if (v130)
  {
    v20 = 0;
    v21 = *(v0 + 216);
    v128 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v126 = (v21 + 8);
    v127 = (v21 + 104);
    v22 = *(v0 + 448);
    v23 = (v14 + 40);
    v133 = (*(v0 + 240) + 8);
    v129 = v14;
    while (1)
    {
      if (v20 >= *(v14 + 16))
      {
        __break(1u);
      }

      v139 = v20;
      v24 = v1[35];
      loga = v1[34];
      v25 = v1[28];
      v26 = v1[26];
      v159 = v1[14];
      v27 = *(v23 - 1);
      v28 = *v23;
      v1[6] = v27;
      v1[7] = v28;
      v143 = *v127;
      v163 = v22;
      v136 = v23;
      (*v127)(v25, v128, v26);
      sub_10005DDF8();

      URL.appending<A>(path:directoryHint:)();
      v29 = *v126;
      (*v126)(v25, v26);
      v1[8] = v27;
      v1[9] = v28;
      v143(v25, v128, v26);
      URL.appending<A>(path:directoryHint:)();
      v29(v25, v26);

      sub_100103A60(v24, loga, v131);
      if (v163)
      {
        break;
      }

      v30 = v1[35];
      v31 = v1[29];
      v20 = v139 + 1;
      v32 = *v133;
      (*v133)(v1[34], v31);
      v32(v30, v31);
      v22 = 0;
      v33 = 0;
      v23 = v136 + 2;
      v14 = v129;
      if (v130 == v139 + 1)
      {
        goto LABEL_16;
      }
    }

    v71 = v1;
    v72 = v1[35];
    v73 = v1[34];
    v74 = v1[32];
    v150 = v1[36];
    logd = v1[31];
    v76 = v1[29];
    v75 = v1[30];
    v77 = v1[22];
    v145 = v71[14];

    v78 = *v133;
    (*v133)(v73, v76);
    v166 = v78;
    v78(v72, v76);
    static Log.default.getter();
    v79 = *(v75 + 16);
    v79(v74, v150, v76);
    v79(logd, v145, v76);
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    log = v80;
    v82 = os_log_type_enabled(v80, v81);
    v84 = v71[31];
    v83 = v71[32];
    v85 = v71[29];
    v86 = v71[21];
    v87 = v71[22];
    v88 = v71[20];
    if (v82)
    {
      v151 = v71[20];
      v89 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v89 = 136315650;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL);
      v146 = v86;
      v141 = v87;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v81;
      v92 = v91;
      v166(v83, v85);
      v93 = sub_100102F80(v90, v92, v169);
      v94 = v168;

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v166(v84, v85);
      v98 = sub_100102F80(v95, v97, v169);

      *(v89 + 14) = v98;
      *(v89 + 22) = 2112;
      swift_errorRetain();
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 24) = v99;
      *v138 = v99;
      _os_log_impl(&_mh_execute_header, log, v132, "MAD: cannot copy results from %s to %s, error == %@", v89, 0x20u);
      sub_10000C460(v138, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();

      (*(v146 + 8))(v141, v151);
    }

    else
    {
      v94 = v71;

      v166(v84, v85);
      v166(v83, v85);
      (*(v86 + 8))(v87, v88);
    }

    v108 = v94[55];
    v110 = v94[51];
    v109 = v94[52];
    v111 = v94[43];
    v104 = v94[39];
    v112 = v94[36];
    v113 = v94[29];
    sub_10005DD30();
    swift_allocError();
    *v114 = 5;
    swift_willThrow();

    sub_10000C868(v110, v109);

    v166(v112, v113);
    goto LABEL_27;
  }

  v33 = *(v0 + 448);
LABEL_16:
  v56 = v1[36];

  sub_100103938(v56, 1);
  if (v33)
  {
  }

  v58 = v1[51];
  v57 = v1[52];
  v59 = v1[43];
  v61 = v1[38];
  v60 = v1[39];
  v62 = v1[37];
  v63 = v168[36];
  v64 = v168[35];
  v65 = v168[34];
  v134 = v168[33];
  v137 = v168[32];
  v140 = v168[31];
  v66 = v168[30];
  v67 = v168[29];
  v142 = v168[28];
  v144 = v168[25];
  v149 = v168[24];
  logc = v168[23];
  v161 = v168[22];
  v165 = v168[19];

  sub_10000C868(v58, v57);
  (*(v66 + 8))(v63, v67);
  sub_10000C460(v60, &qword_10012A568, &unk_1001093E0);

  v68 = v168[1];
  v69 = v168[55];

  return v68(v69);
}

uint64_t sub_1000494C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_10000560C(&qword_10012A550, &qword_1001093B0);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(sub_10000560C(&qword_10012A558, &unk_1001093B8) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v11 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v6[15] = v12;
  v13 = *(v12 - 8);
  v6[16] = v13;
  v14 = *(v13 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v6[22] = v15;
  v16 = *(v15 - 8);
  v6[23] = v16;
  v17 = *(v16 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v6[28] = v18;
  v19 = *(v18 - 8);
  v6[29] = v19;
  v20 = *(v19 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_100049784, 0, 0);
}

uint64_t sub_100049784()
{
  v0[32] = *(v0[5] + 16);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100049824;
  v2 = v0[6];

  return sub_100060270(v2);
}

uint64_t sub_100049824(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 264);
  v5 = *v3;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = v2;

  if (v2)
  {
    v7 = v5[30];
    v6 = v5[31];
    v9 = v5[26];
    v8 = v5[27];
    v11 = v5[24];
    v10 = v5[25];
    v13 = v5[20];
    v12 = v5[21];
    v17 = v5[19];
    v18 = v5[18];
    v19 = v5[17];
    v20 = v5[14];
    v14 = v5[11];
    v21 = v5[13];
    v22 = v5[12];

    v15 = v5[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_100049A2C, 0, 0);
  }
}

uint64_t sub_100049A2C()
{
  v164 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  static Log.photos.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v162 = v145;
    *v7 = 134218242;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2080;
    v8 = *(v6 + 16);
    if (v8)
    {
      v136 = v7;
      v138 = v4;
      v141 = v3;
      v9 = *(v0 + 272);
      v10 = *(v0 + 184);
      v11 = *(v0 + 128);
      v163 = &_swiftEmptyArrayStorage;
      sub_10005C508(0, v8, 0);
      v12 = &_swiftEmptyArrayStorage;
      v14 = *(v11 + 16);
      v13 = v11 + 16;
      v15 = v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v149 = *(v13 + 56);
      v153 = v14;
      do
      {
        v16 = *(v0 + 216);
        v17 = *(v0 + 168);
        v18 = *(v0 + 120);
        v153(v17, v15, v18);
        StoredPhoto.localIdentifier.getter();
        (*(v13 - 8))(v17, v18);
        v163 = v12;
        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_10005C508(v19 > 1, v20 + 1, 1);
          v12 = v163;
        }

        v21 = *(v0 + 216);
        v22 = *(v0 + 176);
        v12[2] = v20 + 1;
        (*(v10 + 32))(v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, v21, v22);
        v15 += v149;
        --v8;
      }

      while (v8);
      v3 = v141;
      v4 = v138;
      v7 = v136;
    }

    v28 = *(v0 + 248);
    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *(v0 + 176);
    v32 = Array.description.getter();
    v34 = v33;

    v35 = sub_100102F80(v32, v34, &v162);

    *(v7 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v3, v4, "Had %ld cached photos: %s", v7, 0x16u);
    sub_10000C304(v145);

    v27 = *(v29 + 8);
    v27(v28, v30);
  }

  else
  {
    v23 = *(v0 + 248);
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 272);

    v27 = *(v25 + 8);
    v27(v23, v24);
  }

  *(v0 + 296) = v27;
  result = *(v0 + 272);
  v37 = *(result + 16);
  *(v0 + 304) = v37;
  if (!v37)
  {
    v58 = *(v0 + 24);

    *(v0 + 320) = v58;
    v59 = *(v0 + 280);
    v60 = *(v0 + 184);
    v61 = *(v0 + 72);
    v62 = *(v59 + 16);
    *(v0 + 328) = v62;
    if (v62)
    {
      v63 = *(v0 + 176);
      v64 = *(v60 + 16);
      v66 = *(v0 + 88);
      v65 = *(v0 + 96);
      v67 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v68 = *(v61 + 48);
      *v66 = 0;
      v64(&v66[v68], v59 + v67, v63);
      sub_10005DD90(v66, v65, &qword_10012A550, &qword_1001093B0);
      v69 = 0;
      v61 = *(v0 + 72);
      v70 = 1;
    }

    else
    {
      v70 = 0;
      v69 = 1;
    }

    *(v0 + 368) = v70;
    v89 = *(v0 + 96);
    v88 = *(v0 + 104);
    v90 = *(v0 + 80);
    (*(v90 + 56))(v89, v69, 1, v61);
    sub_10005DD90(v89, v88, &qword_10012A558, &unk_1001093B8);
    v91 = (*(v90 + 48))(v88, 1, v61);
    v92 = *(v0 + 280);
    if (v91 == 1)
    {
      v94 = *(v0 + 240);
      v93 = *(v0 + 248);
      v96 = *(v0 + 208);
      v95 = *(v0 + 216);
      v98 = *(v0 + 192);
      v97 = *(v0 + 200);
      v99 = *(v0 + 160);
      v100 = *(v0 + 168);
      v137 = *(v0 + 152);
      v140 = *(v0 + 144);
      v143 = *(v0 + 136);
      v147 = *(v0 + 112);
      v151 = *(v0 + 104);
      v155 = *(v0 + 96);
      v159 = *(v0 + 88);

      v57 = *(v0 + 8);
      goto LABEL_29;
    }

    v101 = *(v0 + 240);
    v103 = *(v0 + 192);
    v102 = *(v0 + 200);
    v104 = *(v0 + 176);
    v105 = *(v0 + 184);
    v106 = *(v0 + 104);
    v107 = *v106;
    (*(v105 + 32))(v102, &v106[*(*(v0 + 72) + 48)], v104);
    static Log.photos.getter();
    (*(v105 + 16))(v103, v102, v104);

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      result = swift_slowAlloc();
      v160 = result;
      *(v0 + 16) = result;
      *v110 = 134218498;
      v111 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v112 = *(v0 + 280);
      v152 = *(v0 + 240);
      v156 = *(v0 + 296);
      v114 = *(v0 + 184);
      v113 = *(v0 + 192);
      v115 = v0;
      v116 = *(v0 + 176);
      v144 = *(v0 + 232) + 8;
      v148 = *(v0 + 224);
      *(v110 + 4) = v111;
      *(v110 + 12) = 2048;
      *(v110 + 14) = *(v112 + 16);

      *(v110 + 22) = 2080;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID);
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      v120 = *(v114 + 8);
      v120(v113, v116);
      v121 = sub_100102F80(v117, v119, v115 + 2);

      *(v110 + 24) = v121;
      _os_log_impl(&_mh_execute_header, v108, v109, "Processing uncached photo (%ld/%ld): %s", v110, 0x20u);
      sub_10000C304(v160);

      v156(v152, v148);
    }

    else
    {
      v161 = *(v0 + 296);
      v122 = *(v0 + 280);
      v124 = *(v0 + 232);
      v123 = *(v0 + 240);
      v125 = *(v0 + 224);
      v127 = *(v0 + 184);
      v126 = *(v0 + 192);
      v128 = v0;
      v129 = *(v0 + 176);

      v120 = *(v127 + 8);
      v120(v126, v129);
      v115 = v128;
      v161(v123, v125);
    }

    v115[47] = v120;
    v130 = swift_task_alloc();
    v115[48] = v130;
    *v130 = v115;
    v130[1] = sub_10004B1F4;
    v131 = v115[25];
    v132 = v115[17];
    v133 = v115[7];
    v134 = v115[8];
    v135 = v115[5];

    return sub_10004BF9C(v132, v131, v133, v134);
  }

  v38 = *(v0 + 128);
  v39 = *(v0 + 56);
  v40 = *(v38 + 80);
  *(v0 + 416) = v40;
  v41 = *(v0 + 288);
  *(v0 + 312) = 0;
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v42 = *(v38 + 16);
  v42(*(v0 + 160), result + ((v40 + 32) & ~v40), *(v0 + 120));
  v43 = *(v0 + 160);
  if (v39)
  {
    v44 = *(v0 + 112);
    v45 = *(v0 + 64);
    (*(v0 + 56))(*(v0 + 160));
    if (v41)
    {
      v46 = *(v0 + 272);
      v47 = *(v0 + 280);
      (*(*(v0 + 128) + 8))(*(v0 + 160), *(v0 + 120));

      v49 = *(v0 + 240);
      v48 = *(v0 + 248);
      v51 = *(v0 + 208);
      v50 = *(v0 + 216);
      v53 = *(v0 + 192);
      v52 = *(v0 + 200);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = *(v0 + 152);
      v139 = *(v0 + 144);
      v142 = *(v0 + 136);
      v146 = *(v0 + 112);
      v150 = *(v0 + 104);
      v154 = *(v0 + 96);
      v157 = *(v0 + 88);

      v57 = *(v0 + 8);
LABEL_29:

      return v57();
    }

    v73 = *(v0 + 152);
    v74 = *(v0 + 120);
    v75 = *(v0 + 128);
    v76 = *(v0 + 112);
    (*(v75 + 56))(v76, 0, 1, v74);
    (*(v75 + 32))(v73, v76, v74);
  }

  else
  {
    v71 = *(v0 + 152);
    v72 = *(v0 + 120);
    (*(*(v0 + 128) + 56))(*(v0 + 112), 1, 1, v72);
    v42(v71, v43, v72);
  }

  v77 = *(v0 + 152);
  v78 = *(v0 + 160);
  v79 = *(v0 + 120);
  sub_10005F648(&qword_10012A560, &type metadata accessor for StoredPhoto);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v42(*(v0 + 144), *(v0 + 152), *(v0 + 120));
    v158 = (*(v0 + 24) + **(v0 + 24));
    v80 = *(*(v0 + 24) + 4);
    v81 = swift_task_alloc();
    *(v0 + 352) = v81;
    *v81 = v0;
    v81[1] = sub_10004A788;
    v82 = *(v0 + 144);
    v83 = *(v0 + 32);

    return v158(v82);
  }

  else
  {
    v84 = swift_task_alloc();
    *(v0 + 336) = v84;
    *v84 = v0;
    v84[1] = sub_10004A5A0;
    v85 = *(v0 + 256);
    v86 = *(v0 + 144);
    v87 = *(v0 + 152);

    return sub_10005FB64(v86, v87);
  }
}

uint64_t sub_10004A5A0()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[35];

    return _swift_task_switch(sub_10004BA3C, 0, 0);
  }

  else
  {
    v11 = (v3[3] + *v3[3]);
    v6 = *(v3[3] + 4);
    v7 = swift_task_alloc();
    v3[44] = v7;
    *v7 = v3;
    v7[1] = sub_10004A788;
    v8 = v3[4];
    v9 = v3[18];

    return v11(v9);
  }
}

uint64_t sub_10004A788()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    v5 = *(v2 + 280);

    v6 = sub_10004BB90;
  }

  else
  {
    v6 = sub_10004A8AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004A8AC()
{
  v124 = *(v0 + 304);
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 312) + 1;
  StoredPhoto.localIdentifier.getter();
  sub_10006C370(v1, 0);
  (*(v3 + 8))(v1, v2);
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  result = (v10)(v4, v7);
  if (v9 == v124)
  {
    v12 = *(v0 + 272);

    *(v0 + 320) = *(v0 + 24);
    v13 = *(v0 + 280);
    v14 = *(v0 + 184);
    v15 = *(v0 + 72);
    v16 = *(v13 + 16);
    *(v0 + 328) = v16;
    if (v16)
    {
      v17 = *(v0 + 176);
      v18 = *(v14 + 16);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v22 = *(v15 + 48);
      *v20 = 0;
      v18(&v20[v22], v13 + v21, v17);
      sub_10005DD90(v20, v19, &qword_10012A550, &qword_1001093B0);
      v23 = 0;
      v15 = *(v0 + 72);
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v23 = 1;
    }

    *(v0 + 368) = v24;
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);
    v48 = *(v0 + 80);
    (*(v48 + 56))(v47, v23, 1, v15);
    sub_10005DD90(v47, v46, &qword_10012A558, &unk_1001093B8);
    v49 = (*(v48 + 48))(v46, 1, v15);
    v50 = *(v0 + 280);
    if (v49 == 1)
    {
      v52 = *(v0 + 240);
      v51 = *(v0 + 248);
      v54 = *(v0 + 208);
      v53 = *(v0 + 216);
      v56 = *(v0 + 192);
      v55 = *(v0 + 200);
      v57 = *(v0 + 160);
      v58 = *(v0 + 168);
      v109 = *(v0 + 152);
      v111 = *(v0 + 144);
      v113 = *(v0 + 136);
      v116 = *(v0 + 112);
      v119 = *(v0 + 104);
      v122 = *(v0 + 96);
      v126 = *(v0 + 88);

      v45 = *(v0 + 8);
      goto LABEL_11;
    }

    v59 = *(v0 + 240);
    v61 = *(v0 + 192);
    v60 = *(v0 + 200);
    v62 = *(v0 + 176);
    v63 = *(v0 + 184);
    v64 = *(v0 + 104);
    v65 = *v64;
    (*(v63 + 32))(v60, &v64[*(*(v0 + 72) + 48)], v62);
    static Log.photos.getter();
    (*(v63 + 16))(v61, v60, v62);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v66, v67))
    {
      v80 = *(v0 + 296);
      v81 = *(v0 + 280);
      v83 = *(v0 + 232);
      v82 = *(v0 + 240);
      v84 = *(v0 + 224);
      v86 = *(v0 + 184);
      v85 = *(v0 + 192);
      v87 = *(v0 + 176);

      v76 = *(v86 + 8);
      v76(v85, v87);
      v80(v82, v84);
      goto LABEL_19;
    }

    v68 = swift_slowAlloc();
    result = swift_slowAlloc();
    v127 = result;
    *(v0 + 16) = result;
    *v68 = 134218498;
    if (!__OFADD__(v65, 1))
    {
      v69 = *(v0 + 280);
      v120 = *(v0 + 240);
      v123 = *(v0 + 296);
      v71 = *(v0 + 184);
      v70 = *(v0 + 192);
      v72 = *(v0 + 176);
      v114 = *(v0 + 232) + 8;
      v117 = *(v0 + 224);
      *(v68 + 4) = v65 + 1;
      *(v68 + 12) = 2048;
      *(v68 + 14) = *(v69 + 16);

      *(v68 + 22) = 2080;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = *(v71 + 8);
      v76(v70, v72);
      v77 = sub_100102F80(v73, v75, (v0 + 16));

      *(v68 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Processing uncached photo (%ld/%ld): %s", v68, 0x20u);
      sub_10000C304(v127);

      v123(v120, v117);
LABEL_19:
      *(v0 + 376) = v76;
      v88 = swift_task_alloc();
      *(v0 + 384) = v88;
      *v88 = v0;
      v88[1] = sub_10004B1F4;
      v89 = *(v0 + 200);
      v90 = *(v0 + 136);
      v91 = *(v0 + 56);
      v92 = *(v0 + 64);
      v93 = *(v0 + 40);

      return sub_10004BF9C(v90, v89, v91, v92);
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v25 = *(v0 + 360);
  v26 = *(v0 + 312) + 1;
  *(v0 + 312) = v26;
  v27 = *(v0 + 272);
  if (v26 >= *(v27 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v28 = *(v0 + 128);
  v29 = *(v28 + 16);
  v30 = *(v0 + 56);
  v29(*(v0 + 160), v27 + ((*(v0 + 416) + 32) & ~*(v0 + 416)) + *(v28 + 72) * v26, *(v0 + 120));
  v31 = *(v0 + 160);
  if (v30)
  {
    v32 = *(v0 + 112);
    v33 = *(v0 + 64);
    (*(v0 + 56))(*(v0 + 160));
    if (v25)
    {
      v34 = *(v0 + 272);
      v35 = *(v0 + 280);
      (*(*(v0 + 128) + 8))(*(v0 + 160), *(v0 + 120));

      v37 = *(v0 + 240);
      v36 = *(v0 + 248);
      v39 = *(v0 + 208);
      v38 = *(v0 + 216);
      v41 = *(v0 + 192);
      v40 = *(v0 + 200);
      v43 = *(v0 + 160);
      v42 = *(v0 + 168);
      v44 = *(v0 + 152);
      v110 = *(v0 + 144);
      v112 = *(v0 + 136);
      v115 = *(v0 + 112);
      v118 = *(v0 + 104);
      v121 = *(v0 + 96);
      v125 = *(v0 + 88);

      v45 = *(v0 + 8);
LABEL_11:

      return v45();
    }

    v94 = *(v0 + 152);
    v95 = *(v0 + 120);
    v96 = *(v0 + 128);
    v97 = *(v0 + 112);
    (*(v96 + 56))(v97, 0, 1, v95);
    (*(v96 + 32))(v94, v97, v95);
  }

  else
  {
    v78 = *(v0 + 152);
    v79 = *(v0 + 120);
    (*(*(v0 + 128) + 56))(*(v0 + 112), 1, 1, v79);
    v29(v78, v31, v79);
  }

  v98 = *(v0 + 152);
  v99 = *(v0 + 160);
  v100 = *(v0 + 120);
  sub_10005F648(&qword_10012A560, &type metadata accessor for StoredPhoto);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v29(*(v0 + 144), *(v0 + 152), *(v0 + 120));
    v128 = (*(v0 + 24) + **(v0 + 24));
    v101 = *(*(v0 + 24) + 4);
    v102 = swift_task_alloc();
    *(v0 + 352) = v102;
    *v102 = v0;
    v102[1] = sub_10004A788;
    v103 = *(v0 + 144);
    v104 = *(v0 + 32);

    return v128(v103);
  }

  else
  {
    v105 = swift_task_alloc();
    *(v0 + 336) = v105;
    *v105 = v0;
    v105[1] = sub_10004A5A0;
    v106 = *(v0 + 256);
    v107 = *(v0 + 144);
    v108 = *(v0 + 152);

    return sub_10005FB64(v107, v108);
  }
}

uint64_t sub_10004B1F4()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v4 = v3[35];

    return _swift_task_switch(sub_10004BCFC, 0, 0);
  }

  else
  {
    v10 = (v3[40] + *v3[40]);
    v5 = *(v3[40] + 4);
    v6 = swift_task_alloc();
    v3[50] = v6;
    *v6 = v3;
    v6[1] = sub_10004B3D4;
    v7 = v3[4];
    v8 = v3[17];

    return v10(v8);
  }
}

uint64_t sub_10004B3D4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 280);

    v5 = sub_10004BE3C;
  }

  else
  {
    v5 = sub_10004B4F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004B4F0()
{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23] + 8;
  (*(v0[16] + 8))(v0[17], v0[15]);
  result = v1(v2, v3);
  v6 = v0[46];
  if (v6 == v0[41])
  {
    v7 = 1;
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v0[35];
  if (v6 >= *(v8 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v6 + 1;
  v14 = *(v10 + 16);
  v15 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6;
  v16 = *(v0[9] + 48);
  *v11 = v6;
  v14(v11 + v16, v15, v9);
  sub_10005DD90(v11, v12, &qword_10012A550, &qword_1001093B0);
  v7 = 0;
  v6 = v13;
LABEL_6:
  v0[46] = v6;
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[9];
  v20 = v0[10];
  (*(v20 + 56))(v17, v7, 1, v19);
  sub_10005DD90(v17, v18, &qword_10012A558, &unk_1001093B8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = v0[35];
  if (v21 == 1)
  {
    v24 = v0[30];
    v23 = v0[31];
    v26 = v0[26];
    v25 = v0[27];
    v28 = v0[24];
    v27 = v0[25];
    v29 = v0[20];
    v30 = v0[21];
    v65 = v0[19];
    v66 = v0[18];
    v67 = v0[17];
    v69 = v0[14];
    v71 = v0[13];
    v73 = v0[12];
    v75 = v0[11];

    v31 = v0[1];

    return v31();
  }

  v32 = v0[30];
  v34 = v0[24];
  v33 = v0[25];
  v35 = v0[22];
  v36 = v0[23];
  v37 = v0[13];
  v38 = *v37;
  (*(v36 + 32))(v33, &v37[*(v0[9] + 48)], v35);
  static Log.photos.getter();
  (*(v36 + 16))(v34, v33, v35);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v39, v40))
  {
    v51 = v0[37];
    v52 = v0[35];
    v54 = v0[29];
    v53 = v0[30];
    v55 = v0[28];
    v57 = v0[23];
    v56 = v0[24];
    v58 = v0[22];

    v49 = *(v57 + 8);
    v49(v56, v58);
    v51(v53, v55);
    goto LABEL_14;
  }

  v41 = swift_slowAlloc();
  result = swift_slowAlloc();
  v0[2] = result;
  *v41 = 134218498;
  if (__OFADD__(v38, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v68 = result;
  v42 = v0[35];
  v74 = v0[30];
  v76 = v0[37];
  v44 = v0[23];
  v43 = v0[24];
  v45 = v0[22];
  v70 = v0[29] + 8;
  v72 = v0[28];
  *(v41 + 4) = v38 + 1;
  *(v41 + 12) = 2048;
  *(v41 + 14) = *(v42 + 16);

  *(v41 + 22) = 2080;
  sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID);
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  v49 = *(v44 + 8);
  v49(v43, v45);
  v50 = sub_100102F80(v46, v48, v0 + 2);

  *(v41 + 24) = v50;
  _os_log_impl(&_mh_execute_header, v39, v40, "Processing uncached photo (%ld/%ld): %s", v41, 0x20u);
  sub_10000C304(v68);

  v76(v74, v72);
LABEL_14:
  v0[47] = v49;
  v59 = swift_task_alloc();
  v0[48] = v59;
  *v59 = v0;
  v59[1] = sub_10004B1F4;
  v60 = v0[25];
  v61 = v0[17];
  v62 = v0[7];
  v63 = v0[8];
  v64 = v0[5];

  return sub_10004BF9C(v61, v60, v62, v63);
}

uint64_t sub_10004BA3C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  v3(v0[19], v2);
  v3(v1, v2);
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[18];
  v13 = v0[19];
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[43];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10004BB90()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  v4 = *(v0[16] + 8);
  v4(v0[18], v3);
  v4(v1, v3);
  v4(v2, v3);
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[45];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10004BCFC()
{
  v1 = *(v0 + 184) + 8;
  (*(v0 + 376))(*(v0 + 200), *(v0 + 176));
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);
  v19 = *(v0 + 392);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10004BE3C()
{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23] + 8;
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v3);
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[51];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10004BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for StoredPhoto();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v5[16] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v14;
  v5[18] = v13;

  return _swift_task_switch(sub_10004C174, v14, v13);
}

uint64_t sub_10004C174()
{
  v1 = v0[15];
  v2 = v0[3];
  v0[19] = *(v0[6] + 16);
  sub_10005F9A8(v1);
  v3 = sub_10005D8D8(&_swiftEmptyArrayStorage);
  v0[20] = v3;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10004C2CC;
  v5 = v0[15];
  v6 = v0[6];
  v7 = v0[3];

  return sub_10004656C(v7, v5, v3);
}

uint64_t sub_10004C2CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v8 = *(v3 + 144);
  v9 = *(v3 + 136);
  if (v1)
  {
    v10 = sub_10004C908;
  }

  else
  {
    v10 = sub_10004C42C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10004C42C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[11];
  (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
  v4 = v2;
  StoredPhoto.init(pfcStoredPhoto:baseURL:)();
  if (v1)
  {
    v5 = v0[22];
    v6 = v0[16];
    (*(v0[13] + 8))(v0[15], v0[12]);

    v8 = v0[14];
    v7 = v0[15];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[7];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[4];
    v15 = v0[11];
    if (v14)
    {
      v16 = v0[7];
      v17 = v0[5];
      v14(v0[11]);
      v22 = v0[9];
      v21 = v0[10];
      v24 = v0[7];
      v23 = v0[8];
      (*(v22 + 56))(v24, 0, 1, v23);
      (*(v22 + 32))(v21, v24, v23);
    }

    else
    {
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      (*(v19 + 56))(v0[7], 1, 1, v20);
      (*(v19 + 16))(v18, v15, v20);
    }

    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_10004C6C0;
    v26 = v0[19];
    v27 = v0[10];
    v28 = v0[2];

    return sub_10005FB64(v28, v27);
  }
}

uint64_t sub_10004C6C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_10004C9C8;
  }

  else
  {
    v7 = sub_10004C7FC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004C7FC()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v14 = v0[7];

  v11 = *(v9 + 8);
  v11(v8, v10);
  v11(v7, v10);
  (*(v5 + 8))(v3, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10004C908()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[13];

  (*(v4 + 8))(v2, v3);
  v5 = v0[23];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004C9C8()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  (*(v5 + 8))(v3, v4);
  v11 = v0[25];
  v13 = v0[14];
  v12 = v0[15];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

void sub_10004CACC(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v23 = a2;
  v7 = sub_10000560C(&qword_10012A5C8, &qword_100109428);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  sub_10000560C(&qword_10012A0B8, &qword_100109430);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100108DE0;
  *(v12 + 32) = a3;
  sub_10000D828(0, &qword_10012A2F8, PHAsset_ptr);
  v13 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = *a4;

  sub_10004CD78(v16);

  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v8 + 16))(v11, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  aBlock[4] = sub_10005E284;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E168;
  aBlock[3] = &unk_1001266A8;
  v20 = _Block_copy(aBlock);
  v21 = v13;

  [v23 requestAnalysisTypes:0x400000000000 forAssets:isa withOptions:v17 progressHandler:0 andCompletionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_10004CD78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000560C(&qword_10012A5E8, &qword_100109450);
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
    v16 = *(*(a1 + 56) + v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10005E1CC(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10005E1CC(v31, v32);
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
    result = sub_10005E1CC(v32, (v2[7] + 32 * v10));
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