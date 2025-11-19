uint64_t sub_10010F500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecretValue();
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v8 = *(v7 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleSecret();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v13 = type metadata accessor for OwnerSharingCircle();
  v4[32] = v13;
  v14 = *(v13 - 8);
  v4[33] = v14;
  v15 = *(v14 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v4[40] = v16;
  v17 = *(v16 - 8);
  v4[41] = v17;
  v18 = *(v17 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10010F7D8, v3, 0);
}

uint64_t sub_10010F7D8()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v4 = v0[33];
    v17 = v0[32];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[45];
      v8 = v0[39];
      v7 = v0[40];
      sub_100111D2C(v5, v8, type metadata accessor for OwnerSharingCircle);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_100111D94(v8, type metadata accessor for OwnerSharingCircle);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[45];
      v12 = v0[40];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[19];
  v0[46] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 112);
  v0[47] = v14;

  return _swift_task_switch(sub_10010F9B0, v14, 0);
}

uint64_t sub_10010F9B0()
{
  v1 = *(v0 + 376);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_10010FA9C;
  v5 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_10010FA9C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return _swift_task_switch(sub_10010FBB4, v2, 0);
}

uint64_t sub_10010FBB4()
{
  v1 = v0[19];
  v0[49] = v0[15];
  return _swift_task_switch(sub_10010FBD8, v1, 0);
}

uint64_t sub_10010FBD8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = v6[49];
  v45 = *(v8 + 16);
  if (v45)
  {
    v9 = 0;
    v10 = v6[46];
    v44 = v6[33];
    v40 = v6[32];
    v47 = v10 + 56;
    v38 = v6[41];
    v39 = _swiftEmptyArrayStorage;
    v41 = v6[49];
    v48 = v10;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v12 = *(v44 + 72);
      sub_100111D2C(v7[49] + v11 + v12 * v9, v7[38], type metadata accessor for OwnerSharingCircle);
      if (*(v10 + 16))
      {
        v42 = v12;
        v43 = v11;
        v46 = v9;
        v13 = v7[40];
        v14 = v7;
        v15 = v7[38];
        v16 = *(v40 + 20);
        v17 = *(v48 + 40);
        sub_100111C38(&qword_1016967B0, &type metadata accessor for UUID);
        v10 = v48;
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v48 + 32);
        v20 = v18 & ~v19;
        if ((*(v47 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          v22 = *(v38 + 72);
          v23 = *(v38 + 16);
          while (1)
          {
            v24 = v14[44];
            v25 = v14[40];
            v23(v24, *(v10 + 48) + v20 * v22, v25);
            sub_100111C38(&qword_1016984A0, &type metadata accessor for UUID);
            v26 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v38 + 8))(v24, v25);
            if (v26)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            v10 = v48;
            if (((*(v47 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v7 = v14;
          sub_100111DF4(v14[38], v14[37], type metadata accessor for OwnerSharingCircle);
          v27 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_101123FE4(0, v39[2] + 1, 1);
            v27 = v39;
          }

          v8 = v41;
          v10 = v48;
          v29 = v27[2];
          v28 = v27[3];
          if (v29 >= v28 >> 1)
          {
            sub_101123FE4(v28 > 1, v29 + 1, 1);
            v27 = v39;
          }

          v30 = v14[37];
          v27[2] = v29 + 1;
          v39 = v27;
          a1 = sub_100111DF4(v30, v27 + v43 + v29 * v42, type metadata accessor for OwnerSharingCircle);
        }

        else
        {
LABEL_11:
          v7 = v14;
          a1 = sub_100111D94(v14[38], type metadata accessor for OwnerSharingCircle);
          v8 = v41;
        }

        v9 = v46;
      }

      else
      {
        a1 = sub_100111D94(v7[38], type metadata accessor for OwnerSharingCircle);
      }

      if (++v9 == v45)
      {
        v31 = v7[49];
        v32 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_20:
    v7[50] = v32;
    v33 = v7[46];

    v34 = async function pointer to Array<A>.asyncFlatMap<A>(_:)[1];
    v35 = swift_task_alloc();
    v7[51] = v35;
    v36 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
    a6 = sub_100014084(&qword_101697600, &qword_1016975F8, &qword_10138C230);
    *v35 = v7;
    v35[1] = sub_100110034;
    a4 = v7[32];
    a2 = v7[19];
    a1 = &unk_10138C258;
    a3 = v32;
    a5 = v36;
  }

  return Array<A>.asyncFlatMap<A>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100110034(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v5 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[19];

    return _swift_task_switch(sub_10011016C, v7, 0);
  }
}

uint64_t sub_10011016C()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v180 = v0[36];
    v5 = v0[32];
    v4 = v0[33];
    sub_101123FE4(0, v2, 0);
    v177 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v1 + v177;
    v171 = (v3 + 16);
    v174 = *(v4 + 72);
    do
    {
      v8 = v0[39];
      v7 = v0[40];
      v9 = v0[36];
      sub_100111D2C(v6, v8, type metadata accessor for OwnerSharingCircle);
      v10 = *v171;
      (*v171)(&v9[v5[5]], v8 + v5[5], v7);
      v10(&v9[v5[6]], v8 + v5[6], v7);
      LOBYTE(v10) = *(v8 + v5[7]);
      v11 = *(v8 + v5[8]);
      v12 = *(v8 + v5[9]);

      sub_100111D94(v8, type metadata accessor for OwnerSharingCircle);
      *v9 = 0;
      *(v180 + 8) = 0xC000000000000000;
      v9[v5[7]] = v10;
      *&v9[v5[8]] = v11;
      v9[v5[9]] = v12;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_101123FE4(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[36];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      sub_100111DF4(v15, _swiftEmptyArrayStorage + v177 + v14 * v174, type metadata accessor for OwnerSharingCircle);
      v6 += v174;
      --v2;
    }

    while (v2);
  }

  v16 = v0[18];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v0[41];
    v167 = v0[28];
    v19 = v0[25];
    v20 = v0[26];
    v160 = v0[24];
    v21 = v0[22];
    sub_101124114(0, v17, 0);
    v165 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = v16 + v165;
    v178 = (v18 + 16);
    v23 = _swiftEmptyArrayStorage;
    v161 = (v21 + 56);
    v163 = *(v20 + 72);
    v169 = (v18 + 8);
    v24 = v0[53];
    do
    {
      v175 = v17;
      v181 = v23;
      v26 = v0[42];
      v25 = v0[43];
      v27 = v0[40];
      v28 = v0[27];
      v29 = v0[20];
      v172 = v22;
      sub_100111D2C(v22, v28, type metadata accessor for SharingCircleSecret);
      v30 = *v178;
      (*v178)(v25, v28 + v19[5], v27);
      v30(v26, v28 + v19[6], v27);
      v31 = v19[7];
      v32 = (v28 + v19[8]);
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v28 + v31);
      v36 = *(v28 + v31 + 8);
      sub_100017D5C(*v32, v34);

      sub_101316078(v33, v34, v35, v36, v29);
      v37 = v24;
      v38 = v0[24];
      v40 = v0[20];
      v39 = v0[21];
      if (v37)
      {

        (*v161)(v40, 1, 1, v39);
        v41 = *v32;
        v42 = v32[1];
        *v38 = *v32;
        *(v160 + 8) = v42;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v41, v42);
      }

      else
      {
        (*v161)(v0[20], 0, 1, v0[21]);
        sub_100111DF4(v40, v38, type metadata accessor for SharingCircleSecretValue);
      }

      v44 = v0[42];
      v43 = v0[43];
      v45 = v0[40];
      v46 = v0[28];
      v48 = v0[23];
      v47 = v0[24];
      v49 = v0[21];
      *v46 = 0;
      *(v167 + 8) = 0xC000000000000000;
      v30(v46 + v19[5], v43, v45);
      v30(v46 + v19[6], v44, v45);
      v50 = sub_101315BA4();
      v51 = (v46 + v19[8]);
      *v51 = v50;
      v51[1] = v52;
      sub_100111D2C(v47, v48, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v0[42];
      v54 = v0[43];
      v56 = v0[40];
      v57 = v0[27];
      v58 = v0[23];
      v59 = v0[24];
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
            sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
            v63 = *v169;
            (*v169)(v55, v56);
            v63(v54, v56);
            sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
            v61 = 0xD000000000000012;
            v62 = 0x80000001013475D0;
          }

          else
          {
            sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
            sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
            v66 = *v169;
            (*v169)(v55, v56);
            v66(v54, v56);
            sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
            v61 = 0xD000000000000011;
            v62 = 0x80000001013475F0;
          }
        }

        else
        {
          sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
          sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
          v65 = *v169;
          (*v169)(v55, v56);
          v65(v54, v56);
          sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
          v62 = 0xE700000000000000;
          v61 = 0x6E776F6E6B6E75;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v158 = v0[23];
          sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
          v64 = *v169;
          (*v169)(v55, v56);
          v64(v54, v56);
          sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
          sub_100111D94(v158, type metadata accessor for SharingCircleSecretValue);
          v61 = 0xD000000000000013;
          v62 = 0x8000000101347630;
        }

        else
        {
          sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
          sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
          v68 = *v169;
          (*v169)(v55, v56);
          v68(v54, v56);
          sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
          v61 = 0xD000000000000014;
          v62 = 0x8000000101347650;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
        sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
        v60 = *v169;
        (*v169)(v55, v56);
        v60(v54, v56);
        sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
        v61 = 0xD000000000000014;
        v62 = 0x8000000101347610;
      }

      else
      {
        v159 = v0[23];
        sub_100111D94(v59, type metadata accessor for SharingCircleSecretValue);
        v67 = *v169;
        (*v169)(v55, v56);
        v67(v54, v56);
        sub_100111D94(v57, type metadata accessor for SharingCircleSecret);
        sub_100111D94(v159, type metadata accessor for SharingCircleSecretValue);
        v62 = 0xE90000000000006ELL;
        v61 = 0x656B6F546E696F6ALL;
      }

      v69 = (v0[28] + v19[7]);
      *v69 = v61;
      v69[1] = v62;
      v23 = v181;
      v71 = v181[2];
      v70 = v181[3];
      if (v71 >= v70 >> 1)
      {
        sub_101124114(v70 > 1, v71 + 1, 1);
        v23 = v181;
      }

      v72 = v0[28];
      v23[2] = v71 + 1;
      sub_100111DF4(v72, v23 + v165 + v71 * v163, type metadata accessor for SharingCircleSecret);
      v24 = 0;
      v22 = v172 + v163;
      v17 = v175 - 1;
    }

    while (v175 != 1);
    v73 = 0;
  }

  else
  {
    v73 = v0[53];
    v23 = _swiftEmptyArrayStorage;
  }

  v74 = v0[50];
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v76 = (inited + 24);
  v77 = *(v74 + 16);

  v182 = v23;
  if (!v77)
  {
    goto LABEL_37;
  }

  v78 = v0[33];
  v79 = v0[35];
  v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v81 = *(v78 + 72);
  sub_100111D2C(v0[50] + v80, v79, type metadata accessor for OwnerSharingCircle);
  sub_100D45194(v79);
  if (!v73)
  {
    v89 = sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
    if (v77 != 1)
    {
      v92 = v81 + v80;
      v93 = 1;
      while (v93 < *(v74 + 16))
      {
        v94 = v0[35];
        sub_100111D2C(v0[50] + v92, v94, type metadata accessor for OwnerSharingCircle);
        sub_100D45194(v94);
        ++v93;
        v89 = sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
        v92 += v81;
        if (v77 == v93)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_36:
    v73 = 0;
    v23 = v182;
LABEL_37:
    v95 = v0[52];
    v96 = v0[50];

    v97 = *(v95 + 16);
    if (v97)
    {
      v98 = v0[26];
      v99 = v0[30];
      v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v101 = *(v98 + 72);
      sub_100111D2C(v0[52] + v100, v99, type metadata accessor for SharingCircleSecret);
      sub_100D44DD8(v99);
      if (v73)
      {
        v102 = v0[52];
        v103 = v0[30];

        swift_setDeallocating();
        v104 = *(inited + 16);

        v105 = *(inited + 24);

        v87 = type metadata accessor for SharingCircleSecret;
        v88 = v103;
        goto LABEL_56;
      }

      v89 = sub_100111D94(v0[30], type metadata accessor for SharingCircleSecret);
      if (v97 != 1)
      {
        v106 = v101 + v100;
        v107 = 1;
        while (v107 < *(v95 + 16))
        {
          v108 = v0[30];
          sub_100111D2C(v0[52] + v106, v108, type metadata accessor for SharingCircleSecret);
          sub_100D44DD8(v108);
          ++v107;
          v89 = sub_100111D94(v0[30], type metadata accessor for SharingCircleSecret);
          v106 += v101;
          if (v97 == v107)
          {
            goto LABEL_44;
          }
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_44:
      v73 = 0;
      v23 = v182;
    }

    v109 = v0[52];

    v110 = v23[2];
    if (v110)
    {
      v111 = v0[26];
      v112 = v0[29];
      v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v114 = *(v111 + 72);
      sub_100111D2C(v23 + v113, v112, type metadata accessor for SharingCircleSecret);
      sub_100D4346C(v112);
      if (v73)
      {
        v115 = v0[29];

        swift_setDeallocating();
        v116 = *(inited + 16);

        v117 = *(inited + 24);

        v87 = type metadata accessor for SharingCircleSecret;
        v88 = v115;
        goto LABEL_56;
      }

      v89 = sub_100111D94(v0[29], type metadata accessor for SharingCircleSecret);
      if (v110 != 1)
      {
        v118 = v23 + v114 + v113;
        v119 = 1;
        while (v119 < v23[2])
        {
          v120 = v0[29];
          sub_100111D2C(v118, v120, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v120);
          ++v119;
          v89 = sub_100111D94(v0[29], type metadata accessor for SharingCircleSecret);
          v118 += v114;
          if (v110 == v119)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_77;
      }

LABEL_52:
      v73 = 0;
    }

    v121 = _swiftEmptyArrayStorage[2];
    if (!v121)
    {
      goto LABEL_63;
    }

    v122 = v0[33];
    v123 = v0[34];
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v125 = *(v122 + 72);
    sub_100111D2C(_swiftEmptyArrayStorage + v124, v123, type metadata accessor for OwnerSharingCircle);
    sub_100D43440(v123);
    if (v73)
    {
      v126 = v0[34];

      swift_setDeallocating();
      v127 = *(inited + 16);

      v128 = *(inited + 24);

      v87 = type metadata accessor for OwnerSharingCircle;
      v88 = v126;
      goto LABEL_56;
    }

    sub_100111D94(v0[34], type metadata accessor for OwnerSharingCircle);
    v89 = _swiftEmptyArrayStorage;
    if (v121 == 1)
    {
LABEL_63:

      swift_beginAccess();
      v143 = *(inited + 16);
      if (*(v143 + 16))
      {
        goto LABEL_70;
      }

      swift_beginAccess();
      v144 = *v76;
      if ((*v76 & 0xC000000000000001) != 0)
      {
        if (v144 < 0)
        {
          v145 = *v76;
        }

        v146 = *v76;

        v147 = __CocoaDictionary.count.getter();
      }

      else
      {
        v147 = *(v144 + 16);
      }

      if (v147)
      {
LABEL_70:
        v148 = v0[44];
        v149 = v0[40];
        v150 = v0[41];
        v151 = v0[31];
        UUID.init()();
        swift_beginAccess();
        v152 = *(inited + 24);

        v154 = sub_1003A8B54(v153);
        swift_bridgeObjectRelease_n();
        (*(v150 + 32))(v151, v148, v149);
        v155 = type metadata accessor for CloudKitChangeSet(0);
        *(v151 + *(v155 + 20)) = v154;
        *(v151 + *(v155 + 24)) = v143;
        (*(*(v155 - 8) + 56))(v151, 0, 1, v155);
      }

      else
      {
        v156 = v0[31];

        v157 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v157 - 8) + 56))(v156, 1, 1, v157);
      }

      v90 = v0[47];
      v89 = sub_100111324;
      v91 = 0;

      return _swift_task_switch(v89, v90, v91);
    }

    v140 = _swiftEmptyArrayStorage + v125 + v124;
    v141 = 1;
    while (v141 < _swiftEmptyArrayStorage[2])
    {
      v142 = v0[34];
      sub_100111D2C(v140, v142, type metadata accessor for OwnerSharingCircle);
      sub_100D43440(v142);
      ++v141;
      sub_100111D94(v0[34], type metadata accessor for OwnerSharingCircle);
      v140 += v125;
      v89 = _swiftEmptyArrayStorage;
      if (v121 == v141)
      {
        goto LABEL_63;
      }
    }

LABEL_78:
    __break(1u);
    return _swift_task_switch(v89, v90, v91);
  }

  v82 = v0[52];
  v83 = v0[50];
  v84 = v0[35];

  swift_setDeallocating();
  v85 = *(inited + 16);

  v86 = *(inited + 24);

  v87 = type metadata accessor for OwnerSharingCircle;
  v88 = v84;
LABEL_56:
  sub_100111D94(v88, v87);
  v130 = v0[44];
  v129 = v0[45];
  v132 = v0[42];
  v131 = v0[43];
  v133 = v0[38];
  v134 = v0[39];
  v136 = v0[36];
  v135 = v0[37];
  v137 = v0[35];
  v162 = v0[34];
  v164 = v0[31];
  v166 = v0[30];
  v168 = v0[29];
  v170 = v0[28];
  v173 = v0[27];
  v176 = v0[24];
  v179 = v0[23];
  v183 = v0[20];

  v138 = v0[1];

  return v138();
}

uint64_t sub_10011134C()
{
  v1 = v0[54];
  v2 = v0[31];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100111444;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100111444()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_1001116DC;
  }

  else
  {
    v5 = *(v2 + 440);

    v4 = sub_100111560;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10011157C()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[30];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  sub_10000B3A8(v0[31], &qword_1016975C8, &qword_10138C1F0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001116DC()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100111748, v2, 0);
}

uint64_t sub_100111748()
{
  sub_10000B3A8(v0[31], &qword_1016975C8, &qword_10138C1F0);
  v21 = v0[57];
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[34];
  v9 = v0[35];
  v13 = v0[31];
  v14 = v0[30];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[20];

  v11 = v0[1];

  return v11();
}

unint64_t sub_1001118C8()
{
  result = qword_1016975D0;
  if (!qword_1016975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975D0);
  }

  return result;
}

uint64_t sub_10011196C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_100111A48()
{
  result = qword_1016975F0;
  if (!qword_1016975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975F0);
  }

  return result;
}

uint64_t sub_100111B38(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_10010D2A8(a1, a2, v2);
}

unint64_t sub_100111BE4()
{
  result = qword_101698E30;
  if (!qword_101698E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E30);
  }

  return result;
}

uint64_t sub_100111C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100111C80(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10010EA4C(a1, a2, v2);
}

uint64_t sub_100111D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100111DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111E68@<X0>(size_t *a1@<X8>)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100E70638(v4, a1);
}

unint64_t sub_100111EF0()
{
  result = qword_101697618;
  if (!qword_101697618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697618);
  }

  return result;
}

uint64_t sub_100111F58()
{
  *(v1 + 16) = v0;
  swift_defaultActor_initialize();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100111FF4;

  return daemon.getter();
}

uint64_t sub_100111FF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019300(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019300(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1001121D0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001121D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v8 = sub_10011244C;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = sub_10011231C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10011231C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *(v2 + 112) = v1;
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  *(v2 + 120) = v3;

  return _swift_task_switch(sub_1001123E4, v2, 0);
}

uint64_t sub_1001123E4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[2];

  return v2(v3);
}

uint64_t sub_10011244C()
{
  v1 = v0[2];
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1001124D0()
{
  v1[6] = v0;
  v2 = type metadata accessor for MemberSharingCircle();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100112654, v0, 0);
}

uint64_t sub_100112654()
{
  v1 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[17] = v2;
  return _swift_task_switch(sub_100112684, v2, 0);
}

uint64_t sub_100112684()
{
  v1 = *(v0 + 136);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100112770;
  v5 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_100112770()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100112888, v2, 0);
}

uint64_t sub_100112888()
{
  v1 = v0[6];
  v0[19] = v0[3];
  return _swift_task_switch(sub_1001128AC, v1, 0);
}

uint64_t sub_1001128AC()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(*(v0 + 112) + 20);
    *(v0 + 288) = v6;
    v7 = *(v3 + 80);
    *(v0 + 292) = v7;
    *(v0 + 168) = *(v3 + 72);
    *(v0 + 176) = 0;
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    sub_10012B2B8(v1 + ((v7 + 32) & ~v7), v4, type metadata accessor for OwnerSharingCircle);
    (*(v9 + 16))(v5, v4 + v6, v8);
    sub_10012B448(v4, type metadata accessor for OwnerSharingCircle);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_100112A3C;
    v11 = *(v0 + 104);
    v12 = *(v0 + 48);

    return sub_1001145F8(v11);
  }

  else
  {

    v14 = *(v0 + 136);
    *(v0 + 32) = _swiftEmptyArrayStorage;

    return _swift_task_switch(sub_10011325C, v14, 0);
  }
}

uint64_t sub_100112A3C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100112B54, v3, 0);
}

uint64_t sub_100112B54()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
    v7 = [v6 ownedCircles];

    if (v7)
    {
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100398124(v8);
    }

    v9 = *(v0 + 176) + 1;
    if (v9 == *(v0 + 160))
    {
      v10 = *(v0 + 152);

      v11 = *(v0 + 136);
      *(v0 + 32) = _swiftEmptyArrayStorage;

      return _swift_task_switch(sub_10011325C, v11, 0);
    }

    else
    {
      *(v0 + 176) = v9;
      v15 = *(v0 + 288);
      v16 = *(v0 + 128);
      v17 = *(v0 + 104);
      v18 = *(v0 + 80);
      v19 = *(v0 + 88);
      sub_10012B2B8(*(v0 + 152) + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 168) * v9, v16, type metadata accessor for OwnerSharingCircle);
      (*(v19 + 16))(v17, v16 + v15, v18);
      sub_10012B448(v16, type metadata accessor for OwnerSharingCircle);
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_100112A3C;
      v21 = *(v0 + 104);
      v22 = *(v0 + 48);

      return sub_1001145F8(v21);
    }
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 200) = v12;
    *v12 = v0;
    v12[1] = sub_100112E68;
    v13 = *(v0 + 104);
    v14 = *(v0 + 48);

    return sub_100115970(v13);
  }
}

uint64_t sub_100112E68(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_100112F80, v3, 0);
}

uint64_t sub_100112F80()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];
  }

  else
  {
    v6 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  v7 = [v6 ownedCircles];

  if (v7)
  {
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100398124(v8);
  }

  v9 = *(v0 + 176) + 1;
  if (v9 == *(v0 + 160))
  {
    v10 = *(v0 + 152);

    v11 = *(v0 + 136);
    *(v0 + 32) = _swiftEmptyArrayStorage;

    return _swift_task_switch(sub_10011325C, v11, 0);
  }

  else
  {
    *(v0 + 176) = v9;
    v12 = *(v0 + 288);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    sub_10012B2B8(*(v0 + 152) + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 168) * v9, v13, type metadata accessor for OwnerSharingCircle);
    (*(v16 + 16))(v14, v13 + v12, v15);
    sub_10012B448(v13, type metadata accessor for OwnerSharingCircle);
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = sub_100112A3C;
    v18 = *(v0 + 104);
    v19 = *(v0 + 48);

    return sub_1001145F8(v18);
  }
}

uint64_t sub_10011325C()
{
  v1 = *(v0 + 136);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100113348;
  v5 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_100113348()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100113460, v2, 0);
}

uint64_t sub_100113460()
{
  v1 = v0[6];
  v0[28] = v0[5];
  return _swift_task_switch(sub_100113480, v1, 0);
}

uint64_t sub_100113480()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 56) + 20);
    *(v0 + 296) = v4;
    v5 = *(v3 + 80);
    *(v0 + 300) = v5;
    *(v0 + 240) = *(v3 + 72);
    *(v0 + 248) = 0;
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    sub_10012B2B8(v1 + ((v5 + 32) & ~v5), v8, type metadata accessor for MemberSharingCircle);
    (*(v7 + 16))(v6, v8 + v4, v9);
    sub_10012B448(v8, type metadata accessor for MemberSharingCircle);
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1001136D4;
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);

    return sub_1001145F8(v11);
  }

  else
  {

    v14 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 72);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    v20 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v20 initWithOwnedCircles:isa memberCircles:v22];

    v24 = *(v0 + 8);

    return v24(v23);
  }
}

uint64_t sub_1001136D4(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1001137EC, v3, 0);
}

uint64_t sub_1001137EC()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v7 = [v6 memberCircles];

    if (v7)
    {
      sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039813C(v8);
    }

    v9 = *(v0 + 248) + 1;
    if (v9 == *(v0 + 232))
    {
      v10 = *(v0 + 224);

      v11 = *(v0 + 128);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 72);
      v15 = *(v0 + 16);
      v16 = *(v0 + 32);
      v17 = objc_allocWithZone(SPItemSharingDataIntegrity);
      v18 = Array._bridgeToObjectiveC()().super.isa;

      sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
      v19 = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v17 initWithOwnedCircles:v18 memberCircles:v19];

      v21 = *(v0 + 8);

      return v21(v20);
    }

    else
    {
      *(v0 + 248) = v9;
      v26 = *(v0 + 296);
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v30 = *(v0 + 72);
      v29 = *(v0 + 80);
      sub_10012B2B8(*(v0 + 224) + ((*(v0 + 300) + 32) & ~*(v0 + 300)) + *(v0 + 240) * v9, v30, type metadata accessor for MemberSharingCircle);
      (*(v28 + 16))(v27, v30 + v26, v29);
      sub_10012B448(v30, type metadata accessor for MemberSharingCircle);
      v31 = swift_task_alloc();
      *(v0 + 256) = v31;
      *v31 = v0;
      v31[1] = sub_1001136D4;
      v32 = *(v0 + 96);
      v33 = *(v0 + 48);

      return sub_1001145F8(v32);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_100113BCC;
    v24 = *(v0 + 96);
    v25 = *(v0 + 48);

    return sub_100115970(v24);
  }
}

uint64_t sub_100113BCC(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100113CE4, v3, 0);
}

uint64_t sub_100113CE4()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];
  }

  else
  {
    v6 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v7 = [v6 memberCircles];

  if (v7)
  {
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10039813C(v8);
  }

  v9 = *(v0 + 248) + 1;
  if (v9 == *(v0 + 232))
  {
    v10 = *(v0 + 224);

    v11 = *(v0 + 128);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 72);
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v18 = Array._bridgeToObjectiveC()().super.isa;

    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v19 = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v17 initWithOwnedCircles:v18 memberCircles:v19];

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    *(v0 + 248) = v9;
    v23 = *(v0 + 296);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    sub_10012B2B8(*(v0 + 224) + ((*(v0 + 300) + 32) & ~*(v0 + 300)) + *(v0 + 240) * v9, v27, type metadata accessor for MemberSharingCircle);
    (*(v25 + 16))(v24, v27 + v23, v26);
    sub_10012B448(v27, type metadata accessor for MemberSharingCircle);
    v28 = swift_task_alloc();
    *(v0 + 256) = v28;
    *v28 = v0;
    v28[1] = sub_1001136D4;
    v29 = *(v0 + 96);
    v30 = *(v0 + 48);

    return sub_1001145F8(v29);
  }
}

uint64_t sub_10011407C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100114114;

  return sub_1001145F8(a1);
}

uint64_t sub_100114114(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10011422C, v3, 0);
}

uint64_t sub_10011422C()
{
  v1 = v0[5];
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1001143AC;
    v10 = v0[2];
    v11 = v0[3];

    return sub_100115970(v10);
  }
}

uint64_t sub_1001143AC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1001144C4, v3, 0);
}

uint64_t sub_1001144C4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];

    v7 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1001145F8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100114758, v1, 0);
}

uint64_t sub_100114758()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_10011477C, v1, 0);
}

uint64_t sub_10011477C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 32), v3);
  v5 = *(v4 + 80);
  *(v0 + 272) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v3);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1001148E4;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_10012B238, v7, v11);
}

uint64_t sub_1001148E4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100114A10, v3, 0);
}

uint64_t sub_100114EE8(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10011501C, v4, 0);
}

uint64_t sub_10011501C()
{
  v1 = *(v0[20] + 16);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1001150C0;
  v3 = v0[14];
  v4 = v0[5];

  return sub_100122960(v3, v1);
}

uint64_t sub_1001150C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 276);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 200) = a1;

  v7 = swift_task_alloc();
  *(v3 + 208) = v7;
  *v7 = v10;
  v7[1] = sub_100115234;
  v8 = *(v2 + 40);

  return sub_10011F1E0(v6 + v5);
}

uint64_t sub_100115234(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 276);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 216) = a1;

  v7 = swift_task_alloc();
  *(v3 + 224) = v7;
  *v7 = v10;
  v7[1] = sub_1001153A8;
  v8 = *(v2 + 40);

  return sub_100120400(v6 + v5);
}

uint64_t sub_1001153A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 224);
  v9 = *v1;
  *(v3 + 232) = a1;

  v5 = swift_task_alloc();
  *(v3 + 240) = v5;
  *v5 = v9;
  v5[1] = sub_10011550C;
  v6 = *(v2 + 112);
  v7 = *(v2 + 40);

  return sub_100123994(v6);
}

uint64_t sub_10011550C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 276);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 248) = a1;

  v7 = swift_task_alloc();
  *(v3 + 256) = v7;
  *v7 = v10;
  v7[1] = sub_100115680;
  v8 = *(v2 + 40);

  return sub_100121034(v6 + v5);
}

uint64_t sub_100115680(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100115798, v3, 0);
}

uint64_t sub_100115798()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[23];
  v18 = v0[18];
  v19 = v0[19];
  v20 = v0[14];
  v7 = objc_allocWithZone(SPOwnedCircleDataIntegrity);
  sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v7 initWithCircleRecord:v18 beaconRecord:v19 peerTrusts:isa sharedSecrets:v5 keySyncRecord:v4 observations:v9 itemSharingKey:v10 estimatedLocations:v11];

  sub_10012B448(v20, type metadata accessor for OwnerSharingCircle);
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[9];

  v16 = v0[1];

  return v16(v12);
}

uint64_t sub_100115970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v2[8] = *(v6 + 64);
  v2[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100115B0C, v1, 0);
}

uint64_t sub_100115B0C()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100115B30, v1, 0);
}

uint64_t sub_100115B30()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v5 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v4);
  v8 = *(v5 + 80);
  *(v0 + 360) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 144) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 152) = v11;
  *(v0 + 160) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v4);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_100115CB0;
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_10012B080, v10, v15);
}

uint64_t sub_100115CB0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100115DDC, v3, 0);
}

uint64_t sub_1001160AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 192) = a1;

  v7 = swift_task_alloc();
  *(v3 + 200) = v7;
  *v7 = v10;
  v7[1] = sub_100116220;
  v8 = *(v2 + 24);

  return sub_100125C38(v6 + v5);
}

uint64_t sub_100116220(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 208) = a1;

  v7 = swift_task_alloc();
  *(v3 + 216) = v7;
  *v7 = v10;
  v7[1] = sub_100116394;
  v8 = *(v2 + 24);

  return sub_1001262B0(v6 + v5);
}

uint64_t sub_100116394(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1001164AC, v3, 0);
}

uint64_t sub_1001164AC()
{
  v10 = v0;
  v1 = *(*(v0 + 112) + *(*(v0 + 96) + 36));
  *(v0 + 232) = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 360);
    v4 = sub_1003A85FC(*(v1 + 16), 0);
    v5 = sub_1003CC2CC(&v9, v4 + ((v3 + 32) & ~v3), v2, v1);

    sub_1000128F8();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 240) = v4;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1001165F4;
  v7 = *(v0 + 24);

  return sub_100126B44(v4);
}

uint64_t sub_1001165F4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100116728, v4, 0);
}

uint64_t sub_100116728()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = (*(v0 + 360) + 24) & ~*(v0 + 360);
  (*(v0 + 128))(v5, *(v0 + 112) + *(v0 + 364), v6);
  v8 = swift_allocObject();
  *(v0 + 264) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_100116878;
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_10012B098, v8, v12);
}

uint64_t sub_100116878()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1001169A4, v3, 0);
}

uint64_t sub_1001169A4()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    v3 = 2;
  }

  else
  {
    v3 = *(v1 + *(v2 + 64));
    sub_10012B448(v1, type metadata accessor for SharedBeaconRecord);
  }

  *(v0 + 368) = v3;
  v4 = *(v0 + 112);
  v5 = *(*(v0 + 96) + 28);
  v6 = *(*(v0 + 232) + 16);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_100116AFC;
  v8 = *(v0 + 24);

  return sub_100127B90(v4 + v5, v6, v3);
}

uint64_t sub_100116AFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 288) = a1;

  v7 = swift_task_alloc();
  *(v3 + 296) = v7;
  *v7 = v10;
  v7[1] = sub_100116C70;
  v8 = *(v2 + 24);

  return sub_10011F1E0(v6 + v5);
}

uint64_t sub_100116C70(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 304) = a1;

  v7 = swift_task_alloc();
  *(v3 + 312) = v7;
  *v7 = v10;
  v7[1] = sub_100116DE4;
  v8 = *(v2 + 24);

  return sub_100120400(v6 + v5);
}

uint64_t sub_100116DE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v11 = *v1;
  *(v3 + 320) = a1;

  v7 = swift_task_alloc();
  *(v3 + 328) = v7;
  *v7 = v11;
  v7[1] = sub_100116F5C;
  v8 = *(v2 + 24);
  v9 = *(v3 + 368);

  return sub_100128998(v6 + v5, v9);
}

uint64_t sub_100116F5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 364);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(v3 + 336) = a1;

  v7 = swift_task_alloc();
  *(v3 + 344) = v7;
  *v7 = v10;
  v7[1] = sub_1001170D0;
  v8 = *(v2 + 24);

  return sub_100121034(v6 + v5);
}

uint64_t sub_1001170D0(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_1001171E8, v3, 0);
}

uint64_t sub_1001171E8()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[32];
  v6 = v0[28];
  v20 = v0[26];
  v21 = v0[36];
  v19 = v0[24];
  v22 = v0[14];
  v23 = v0[22];
  v7 = objc_allocWithZone(SPMemberCircleDataIntegrity);
  sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v7 initWithCircleRecord:v23 sharedBeaconRecord:v19 sharedBeaconNameRecord:v20 sharedBeaconOwnerName:v6 peerTrusts:isa sharedSecrets:v21 keySyncRecord:v4 observations:v9 itemSharingKey:v10 estimatedLocations:v11];

  sub_10012B448(v22, type metadata accessor for MemberSharingCircle);
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[9];
  v15 = v0[5];

  v16 = v0[1];

  return v16(v18);
}

uint64_t sub_1001173F8()
{
  v1[127] = v0;
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[128] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[129] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016976F8, &unk_10138C3B0);
  v1[130] = v4;
  v5 = *(v4 - 8);
  v1[131] = v5;
  v6 = *(v5 + 64) + 15;
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  v1[134] = v7;
  v8 = *(v7 - 8);
  v1[135] = v8;
  v9 = *(v8 + 64) + 15;
  v1[136] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101697708, &qword_10138C3C0);
  v1[137] = v10;
  v11 = *(v10 - 8);
  v1[138] = v11;
  v12 = *(v11 + 64) + 15;
  v1[139] = swift_task_alloc();
  v13 = type metadata accessor for BeaconNamingRecord();
  v1[140] = v13;
  v14 = *(v13 - 8);
  v1[141] = v14;
  v15 = *(v14 + 64) + 15;
  v1[142] = swift_task_alloc();
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v1[143] = v16;
  v17 = *(v16 - 8);
  v1[144] = v17;
  v18 = *(v17 + 64) + 15;
  v1[145] = swift_task_alloc();
  v19 = type metadata accessor for SharingCircleSecret();
  v1[146] = v19;
  v20 = *(v19 - 8);
  v1[147] = v20;
  v21 = *(v20 + 64) + 15;
  v1[148] = swift_task_alloc();
  v22 = type metadata accessor for MemberPeerTrust();
  v1[149] = v22;
  v23 = *(v22 - 8);
  v1[150] = v23;
  v24 = *(v23 + 64) + 15;
  v1[151] = swift_task_alloc();
  v25 = type metadata accessor for OwnerPeerTrust();
  v1[152] = v25;
  v26 = *(v25 - 8);
  v1[153] = v26;
  v27 = *(v26 + 64) + 15;
  v1[154] = swift_task_alloc();
  v1[126] = _swiftEmptyArrayStorage;
  v28 = swift_task_alloc();
  v1[155] = v28;
  *v28 = v1;
  v28[1] = sub_1001177E8;

  return sub_100119784((v1 + 92));
}

uint64_t sub_1001177E8()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1240);
  v5 = *v1;
  v6 = *(*v1 + 752);
  *(v3 + 1256) = *(v3 + 736);
  *(v3 + 1272) = v6;
  v7 = *(v3 + 784);
  *(v3 + 1288) = *(v3 + 768);
  *(v3 + 1248) = v0;
  *(v3 + 1304) = v7;
  *(v3 + 1320) = *(v2 + 800);

  v8 = *(v3 + 1016);
  if (v0)
  {
    v9 = sub_100119694;
  }

  else
  {
    v9 = sub_100117948;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100117948()
{
  v1 = *(v0 + 1256);
  *(v0 + 88) = v1;
  v261 = (v0 + 1008);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v0 + 1272);
  *(v0 + 96) = *(v0 + 1264);
  *(v0 + 104) = v8;
  *(v0 + 112) = v7;
  *(v0 + 120) = v6;
  *(v0 + 128) = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v3;
  *(v0 + 152) = v2;
  v288 = v0 + 88;
  sub_1000D2A70(v0 + 88, v0 + 160, &qword_101697730, &qword_10138C3E8);

  v9 = *(v1 + 16);

  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    *(v0 + 1000) = *(v0 + 1216);
    sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
    String.init<A>(describing:)();
    v11 = *(v1 + 16);
    if (v11)
    {
      v12 = *(v0 + 1256);
      v13 = *(v0 + 1224);
      v277 = *(v0 + 1216);
      sub_101123BB8(0, v11, 0);
      v14 = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v15 = *(v13 + 72);
      do
      {
        v16 = *(v0 + 1232);
        sub_10012B2B8(v14, v16, type metadata accessor for OwnerPeerTrust);
        v17 = v16 + *(v277 + 20);
        v18 = UUID.uuidString.getter();
        v20 = v19;
        sub_10012B448(v16, type metadata accessor for OwnerPeerTrust);
        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_101123BB8((v21 > 1), v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v22 + 1;
        v23 = &_swiftEmptyArrayStorage[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
        v14 += v15;
        --v11;
      }

      while (v11);
    }

    v24 = objc_allocWithZone(SPOrphanedRecords);
    v25 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 initWithRecordType:v25 records:isa];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v251 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = *v261;
  }

  v278 = v10;
  v27 = *(v0 + 1320);
  v28 = *(v0 + 1312);
  v29 = *(v0 + 1304);
  v30 = *(v0 + 1296);
  v31 = *(v0 + 1288);
  v32 = *(v0 + 1280);
  v33 = *(v0 + 1272);
  v34 = *(v0 + 1264);
  v266 = *(v0 + 1256);
  v35 = v0 + 88;
  sub_1000D2A70(v0 + 88, v0 + 232, &qword_101697730, &qword_10138C3E8);

  v36 = *(v34 + 16);

  if (v36)
  {
    *(v0 + 928) = *(v0 + 1192);
    sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
    String.init<A>(describing:)();
    v37 = *(v34 + 16);
    if (v37)
    {
      v38 = *(v0 + 1264);
      v39 = *(v0 + 1200);
      v279 = *(v0 + 1192);
      sub_101123BB8(0, v37, 0);
      v40 = v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v41 = *(v39 + 72);
      do
      {
        v42 = *(v0 + 1208);
        sub_10012B2B8(v40, v42, type metadata accessor for MemberPeerTrust);
        v43 = v42 + *(v279 + 20);
        v44 = UUID.uuidString.getter();
        v46 = v45;
        sub_10012B448(v42, type metadata accessor for MemberPeerTrust);
        v48 = _swiftEmptyArrayStorage[2];
        v47 = _swiftEmptyArrayStorage[3];
        if (v48 >= v47 >> 1)
        {
          sub_101123BB8((v47 > 1), v48 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v48 + 1;
        v49 = &_swiftEmptyArrayStorage[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v40 += v41;
        --v37;
      }

      while (v37);
    }

    v50 = objc_allocWithZone(SPOrphanedRecords);
    v51 = String._bridgeToObjectiveC()();

    v52 = Array._bridgeToObjectiveC()().super.isa;

    [v50 initWithRecordType:v51 records:v52];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v252 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
    v35 = v0 + 88;
  }

  v53 = *(v0 + 1320);
  v54 = *(v0 + 1312);
  v55 = *(v0 + 1304);
  v56 = *(v0 + 1296);
  v57 = *(v0 + 1288);
  v58 = *(v0 + 1280);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  v267 = *(v0 + 1256);
  sub_1000D2A70(v35, v35 + 216, &qword_101697730, &qword_10138C3E8);

  v61 = *(v59 + 16);

  if (v61)
  {
    *(v0 + 976) = *(v0 + 1168);
    sub_1000BC4D4(&qword_101697748, &unk_10138C400);
    String.init<A>(describing:)();
    v62 = *(v59 + 16);
    if (v62)
    {
      v63 = *(v0 + 1272);
      v64 = *(v0 + 1176);
      v65 = *(v0 + 1168);
      sub_101123BB8(0, v62, 0);
      v66 = v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v280 = *(v64 + 72);
      do
      {
        v67 = *(v0 + 1184);
        sub_10012B2B8(v66, v67, type metadata accessor for SharingCircleSecret);
        v68 = *(v65 + 24);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v290 = dispatch thunk of CustomStringConvertible.description.getter();
        v295 = v69;
        v70._countAndFlagsBits = 0x29656C6372696328;
        v70._object = 0xEA0000000000203ALL;
        String.append(_:)(v70);
        v71 = v67 + *(v65 + 20);
        v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v72);

        sub_10012B448(v67, type metadata accessor for SharingCircleSecret);
        v74 = _swiftEmptyArrayStorage[2];
        v73 = _swiftEmptyArrayStorage[3];
        if (v74 >= v73 >> 1)
        {
          sub_101123BB8((v73 > 1), v74 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v74 + 1;
        v75 = &_swiftEmptyArrayStorage[2 * v74];
        v75[4] = v290;
        v75[5] = v295;
        v66 += v280;
        --v62;
      }

      while (v62);
    }

    v76 = objc_allocWithZone(SPOrphanedRecords);
    v77 = String._bridgeToObjectiveC()();

    v78 = Array._bridgeToObjectiveC()().super.isa;

    [v76 initWithRecordType:v77 records:v78];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v253 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
    v35 = v0 + 88;
  }

  v79 = *(v0 + 1320);
  v80 = *(v0 + 1312);
  v81 = *(v0 + 1304);
  v82 = *(v0 + 1296);
  v83 = *(v0 + 1288);
  v84 = *(v0 + 1280);
  v85 = *(v0 + 1272);
  v86 = *(v0 + 1264);
  v268 = *(v0 + 1256);
  sub_1000D2A70(v35, v35 + 288, &qword_101697730, &qword_10138C3E8);

  v87 = *(v84 + 16);

  if (v87)
  {
    *(v0 + 968) = *(v0 + 1144);
    sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
    String.init<A>(describing:)();
    v88 = *(v84 + 16);
    if (v88)
    {
      v89 = *(v0 + 1280);
      v90 = *(v0 + 1152);
      v281 = *(v0 + 1144);
      sub_101123BB8(0, v88, 0);
      v91 = v89 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v92 = *(v90 + 72);
      do
      {
        v93 = *(v0 + 1160);
        sub_10012B2B8(v91, v93, type metadata accessor for SharedBeaconRecord);
        v94 = v93 + *(v281 + 20);
        v95 = UUID.uuidString.getter();
        v97 = v96;
        sub_10012B448(v93, type metadata accessor for SharedBeaconRecord);
        v99 = _swiftEmptyArrayStorage[2];
        v98 = _swiftEmptyArrayStorage[3];
        if (v99 >= v98 >> 1)
        {
          sub_101123BB8((v98 > 1), v99 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v99 + 1;
        v100 = &_swiftEmptyArrayStorage[2 * v99];
        v100[4] = v95;
        v100[5] = v97;
        v91 += v92;
        --v88;
      }

      while (v88);
    }

    v101 = objc_allocWithZone(SPOrphanedRecords);
    v102 = String._bridgeToObjectiveC()();

    v103 = Array._bridgeToObjectiveC()().super.isa;

    [v101 initWithRecordType:v102 records:v103];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v254 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
    v35 = v0 + 88;
  }

  v104 = *(v0 + 1320);
  v105 = *(v0 + 1312);
  v106 = *(v0 + 1304);
  v107 = *(v0 + 1296);
  v108 = *(v0 + 1288);
  v109 = *(v0 + 1280);
  v110 = *(v0 + 1272);
  v111 = *(v0 + 1264);
  v269 = *(v0 + 1256);
  sub_1000D2A70(v35, v35 + 360, &qword_101697730, &qword_10138C3E8);

  v112 = *(v108 + 16);

  if (v112)
  {
    *(v0 + 936) = *(v0 + 1120);
    sub_1000BC4D4(&qword_101697758, &qword_10138C410);
    String.init<A>(describing:)();
    v113 = *(v108 + 16);
    if (v113)
    {
      v114 = *(v0 + 1288);
      v115 = *(v0 + 1128);
      v116 = *(v0 + 1120);
      sub_101123BB8(0, v113, 0);
      v117 = v114 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v282 = *(v115 + 72);
      do
      {
        v118 = *(v0 + 1136);
        sub_10012B2B8(v117, v118, type metadata accessor for BeaconNamingRecord);
        v119 = *(v116 + 24);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v291 = dispatch thunk of CustomStringConvertible.description.getter();
        v296 = v120;
        v121._countAndFlagsBits = 0x296E6F6361656228;
        v121._object = 0xEA0000000000203ALL;
        String.append(_:)(v121);
        v122 = v118 + *(v116 + 20);
        v123._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v123);

        sub_10012B448(v118, type metadata accessor for BeaconNamingRecord);
        v125 = _swiftEmptyArrayStorage[2];
        v124 = _swiftEmptyArrayStorage[3];
        if (v125 >= v124 >> 1)
        {
          sub_101123BB8((v124 > 1), v125 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v125 + 1;
        v126 = &_swiftEmptyArrayStorage[2 * v125];
        v126[4] = v291;
        v126[5] = v296;
        v117 += v282;
        --v113;
      }

      while (v113);
    }

    v127 = objc_allocWithZone(SPOrphanedRecords);
    v128 = String._bridgeToObjectiveC()();

    v129 = Array._bridgeToObjectiveC()().super.isa;

    [v127 initWithRecordType:v128 records:v129];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v255 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
    v35 = v0 + 88;
  }

  v130 = *(v0 + 1320);
  v131 = *(v0 + 1312);
  v132 = *(v0 + 1304);
  v133 = *(v0 + 1296);
  v134 = *(v0 + 1288);
  v135 = *(v0 + 1280);
  v136 = *(v0 + 1272);
  v137 = *(v0 + 1264);
  v270 = *(v0 + 1256);
  sub_1000D2A70(v35, v35 + 432, &qword_101697730, &qword_10138C3E8);

  v138 = *(v133 + 16);

  v139 = v35;
  if (v138)
  {
    *(v35 + 856) = &type metadata for KeyDropBeaconAttributes;
    sub_1000BC4D4(&qword_101697760, &qword_10138C418);
    String.init<A>(describing:)();
    v140 = *(v133 + 16);
    if (v140)
    {
      v141 = v35 + 504;
      v142 = *(v0 + 1296);
      v143 = *(v0 + 1104);
      v283 = *(v0 + 1096);
      sub_101123BB8(0, v140, 0);
      v144 = v142 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v271 = *(v143 + 72);
      do
      {
        v145 = *(v0 + 1112);
        sub_1000D2A70(v144, v145, &qword_101697708, &qword_10138C3C0);
        *(v0 + 896) = 0;
        *(v0 + 904) = 0xE000000000000000;
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v146._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v146);

        v147._countAndFlagsBits = 0x296E6F6361656228;
        v147._object = 0xEA0000000000203ALL;
        String.append(_:)(v147);
        v148 = v145 + *(v283 + 48);
        v301 = *(v148 + 48);
        v149 = *(v148 + 64);
        v150 = *v148;
        v300 = *(v148 + 16);
        *(v141 + 32) = *(v148 + 32);
        *(v141 + 48) = v301;
        *(v141 + 64) = v149;
        *v141 = v150;
        *(v141 + 16) = v300;
        _print_unlocked<A, B>(_:_:)();
        v151 = *(v0 + 896);
        v152 = *(v0 + 904);
        sub_10000B3A8(v145, &qword_101697708, &qword_10138C3C0);
        v154 = _swiftEmptyArrayStorage[2];
        v153 = _swiftEmptyArrayStorage[3];
        if (v154 >= v153 >> 1)
        {
          sub_101123BB8((v153 > 1), v154 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v154 + 1;
        v155 = &_swiftEmptyArrayStorage[2 * v154];
        v155[4] = v151;
        v155[5] = v152;
        v144 += v271;
        --v140;
        v139 = v0 + 88;
      }

      while (v140);
    }

    v156 = objc_allocWithZone(SPOrphanedRecords);
    v157 = String._bridgeToObjectiveC()();

    v158 = Array._bridgeToObjectiveC()().super.isa;

    [v156 initWithRecordType:v157 records:v158];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v256 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
  }

  v260 = v139 - 72;
  v159 = *(v0 + 1320);
  v160 = *(v0 + 1312);
  v161 = *(v0 + 1304);
  v162 = *(v0 + 1296);
  v163 = *(v0 + 1288);
  v164 = v139;
  v165 = *(v0 + 1280);
  v166 = *(v0 + 1272);
  v167 = *(v0 + 1264);
  v168 = *(v0 + 1256);
  sub_1000D2A70(v164, v164 + 576, &qword_101697730, &qword_10138C3E8);

  v169 = *(v160 + 16);
  v262 = v160;

  if (v169)
  {
    v170 = *(v160 + 16);
    if (v170)
    {
      v171 = *(v0 + 1312);
      v172 = *(v0 + 1080);
      v284 = *(v0 + 1072);
      sub_101123BB8(0, v170, 0);
      v173 = v171 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
      v272 = *(v172 + 72);
      do
      {
        v174 = *(v0 + 1088);
        sub_1000D2A70(v173, v174, &qword_101697700, &unk_10139FB90);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v292 = dispatch thunk of CustomStringConvertible.description.getter();
        v297 = v175;
        v176._countAndFlagsBits = 0x296E6F6361656228;
        v176._object = 0xEA0000000000203ALL;
        String.append(_:)(v176);
        *(v0 + 952) = *(v174 + *(v284 + 48));
        *(v0 + 880) = 0;
        *(v0 + 888) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v177._countAndFlagsBits = 3026478;
        v177._object = 0xE300000000000000;
        String.append(_:)(v177);
        _print_unlocked<A, B>(_:_:)();
        String.append(_:)(*(v0 + 880));

        sub_10000B3A8(v174, &qword_101697700, &unk_10139FB90);
        v179 = _swiftEmptyArrayStorage[2];
        v178 = _swiftEmptyArrayStorage[3];
        if (v179 >= v178 >> 1)
        {
          sub_101123BB8((v178 > 1), v179 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v179 + 1;
        v180 = &_swiftEmptyArrayStorage[2 * v179];
        v180[4] = v292;
        v180[5] = v297;
        v173 += v272;
        --v170;
      }

      while (v170);
    }

    v181 = objc_allocWithZone(SPOrphanedRecords);
    v182 = String._bridgeToObjectiveC()();
    v183 = Array._bridgeToObjectiveC()().super.isa;

    [v181 initWithRecordType:v182 records:v183];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v257 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
  }

  v184 = *(v0 + 1320);
  v185 = *(v0 + 1312);
  v186 = *(v0 + 1304);
  v187 = *(v0 + 1296);
  v188 = *(v0 + 1288);
  v189 = *(v0 + 1280);
  v190 = *(v0 + 1272);
  v191 = *(v0 + 1264);
  v192 = *(v0 + 1256);
  sub_1000D2A70(v0 + 88, v0 + 808, &qword_101697730, &qword_10138C3E8);

  v193 = *(v184 + 16);

  if (v193)
  {
    v194 = *(v262 + 16);
    if (v194)
    {
      v195 = *(v0 + 1312);
      v196 = *(v0 + 1080);
      v285 = *(v0 + 1072);
      sub_101123BB8(0, v194, 0);
      v197 = v195 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v273 = *(v196 + 72);
      do
      {
        v198 = *(v0 + 1088);
        sub_1000D2A70(v197, v198, &qword_101697700, &unk_10139FB90);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v293 = dispatch thunk of CustomStringConvertible.description.getter();
        v298 = v199;
        v200._countAndFlagsBits = 0x296E6F6361656228;
        v200._object = 0xEA0000000000203ALL;
        String.append(_:)(v200);
        *(v0 + 984) = *(v198 + *(v285 + 48));
        *(v0 + 912) = 0;
        *(v0 + 920) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v201._countAndFlagsBits = 3026478;
        v201._object = 0xE300000000000000;
        String.append(_:)(v201);
        _print_unlocked<A, B>(_:_:)();
        String.append(_:)(*(v0 + 912));

        sub_10000B3A8(v198, &qword_101697700, &unk_10139FB90);
        v203 = _swiftEmptyArrayStorage[2];
        v202 = _swiftEmptyArrayStorage[3];
        if (v203 >= v202 >> 1)
        {
          sub_101123BB8((v202 > 1), v203 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v203 + 1;
        v204 = &_swiftEmptyArrayStorage[2 * v203];
        v204[4] = v293;
        v204[5] = v298;
        v197 += v273;
        --v194;
      }

      while (v194);
    }

    v205 = objc_allocWithZone(SPOrphanedRecords);
    v206 = String._bridgeToObjectiveC()();
    v207 = Array._bridgeToObjectiveC()().super.isa;

    [v205 initWithRecordType:v206 records:v207];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v258 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v278 = *v261;
  }

  v208 = *(v0 + 1320);
  v209 = *(v0 + 1312);
  v210 = *(v0 + 1304);
  v211 = *(v0 + 1296);
  v212 = *(v0 + 1288);
  v213 = *(v0 + 1280);
  v214 = *(v0 + 1272);
  v215 = *(v0 + 1264);
  v274 = *(v0 + 1256);
  sub_1000D2A70(v288, v260, &qword_101697730, &qword_10138C3E8);

  v216 = *(v210 + 16);

  if (v216)
  {
    v217 = *(v210 + 16);
    if (v217)
    {
      v218 = *(v0 + 1304);
      v219 = *(v0 + 1048);
      v275 = *(v0 + 1040);
      sub_101123BB8(0, v217, 0);
      v220 = v218 + ((*(v219 + 80) + 32) & ~*(v219 + 80));
      v263 = *(v219 + 72);
      v265 = v0;
      do
      {
        v221 = *(v0 + 1064);
        v222 = *(v0 + 1056);
        v223 = *(v0 + 1032);
        v286 = *(v0 + 1024);
        sub_1000D2A70(v220, v221, &qword_1016976F8, &unk_10138C3B0);
        v224 = type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID);
        v294 = dispatch thunk of CustomStringConvertible.description.getter();
        v299 = v225;
        v226._countAndFlagsBits = 0x6449657261687328;
        v226._object = 0xEB00000000203A29;
        String.append(_:)(v226);
        sub_1000D2A70(v221, v222, &qword_1016976F8, &unk_10138C3B0);
        v227 = v222 + *(v275 + 48);
        v228 = type metadata accessor for DelegatedBeaconMetadata(0);
        sub_1000D2A70(v227 + *(v228 + 24), v223, &unk_101696900, &unk_10138B1E0);
        sub_10012B448(v227, type metadata accessor for DelegatedBeaconMetadata);
        v229 = String.init<A>(describing:)();
        v231 = v230;
        (*(*(v224 - 8) + 8))(v222, v224);
        v232._countAndFlagsBits = v229;
        v232._object = v231;
        String.append(_:)(v232);

        sub_10000B3A8(v221, &qword_1016976F8, &unk_10138C3B0);
        v234 = _swiftEmptyArrayStorage[2];
        v233 = _swiftEmptyArrayStorage[3];
        if (v234 >= v233 >> 1)
        {
          sub_101123BB8((v233 > 1), v234 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v234 + 1;
        v235 = &_swiftEmptyArrayStorage[2 * v234];
        v235[4] = v294;
        v235[5] = v299;
        v0 = v265;
        v220 += v263;
        --v217;
      }

      while (v217);
    }

    sub_10000B3A8(v288, &qword_101697730, &qword_10138C3E8);
    v237 = objc_allocWithZone(SPOrphanedRecords);
    v238 = String._bridgeToObjectiveC()();
    v239 = Array._bridgeToObjectiveC()().super.isa;

    [v237 initWithRecordType:v238 records:v239];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v259 = *((*v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v236 = *v261;
  }

  else
  {
    sub_10000B3A8(v288, &qword_101697730, &qword_10138C3E8);
    v236 = v278;
  }

  v240 = *(v0 + 1232);
  v241 = *(v0 + 1208);
  v242 = *(v0 + 1184);
  v243 = *(v0 + 1160);
  v244 = *(v0 + 1136);
  v245 = *(v0 + 1112);
  v264 = *(v0 + 1088);
  v276 = *(v0 + 1064);
  v287 = *(v0 + 1056);
  v289 = *(v0 + 1032);
  sub_10039BA00(v236);

  v246 = objc_allocWithZone(SPOrphanedRecordsResult);
  v247 = Array._bridgeToObjectiveC()().super.isa;

  v248 = [v246 initWithRecordsInfo:v247];

  v249 = *(v0 + 8);

  return v249(v248);
}

uint64_t sub_100119694()
{
  v1 = v0[154];
  v2 = v0[151];
  v3 = v0[148];
  v4 = v0[145];
  v5 = v0[142];
  v6 = v0[139];
  v7 = v0[136];
  v8 = v0[133];
  v9 = v0[132];
  v10 = v0[129];

  v11 = v0[1];
  v12 = v0[156];

  return v11();
}

uint64_t sub_100119784(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1000BC4D4(&qword_1016976F8, &unk_10138C3B0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(type metadata accessor for DelegatedBeaconMetadata(0) - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = *(sub_1000BC4D4(&qword_101697700, &unk_10139FB90) - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = *(sub_1000BC4D4(&qword_101697708, &qword_10138C3C0) - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v12 = type metadata accessor for BeaconNamingRecord();
  v2[25] = v12;
  v13 = *(v12 - 8);
  v2[26] = v13;
  v14 = *(v13 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v2[29] = v15;
  v16 = *(v15 - 8);
  v2[30] = v16;
  v17 = *(v16 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v18 = type metadata accessor for SharingCircleSecret();
  v2[33] = v18;
  v19 = *(v18 - 8);
  v2[34] = v19;
  v20 = *(v19 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v21 = type metadata accessor for MemberPeerTrust();
  v2[37] = v21;
  v22 = *(v21 - 8);
  v2[38] = v22;
  v23 = *(v22 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v24 = type metadata accessor for UUID();
  v2[41] = v24;
  v25 = *(v24 - 8);
  v2[42] = v25;
  v26 = *(v25 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v27 = type metadata accessor for OwnerPeerTrust();
  v2[46] = v27;
  v28 = *(v27 - 8);
  v2[47] = v28;
  v29 = *(v28 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v30 = swift_task_alloc();
  v2[50] = v30;
  *v30 = v2;
  v30[1] = sub_100119C48;

  return sub_10011DC3C();
}

uint64_t sub_100119C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 400);
  v6 = *(*v3 + 88);
  v8 = *v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = a3;

  return _swift_task_switch(sub_100119D64, v6, 0);
}

uint64_t sub_100119D64()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 432) = v1;
  return _swift_task_switch(sub_100119D88, v1, 0);
}

uint64_t sub_100119D88()
{
  v1 = *(v0 + 432);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_100119E74;
  v5 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v5, v4);
}

uint64_t sub_100119E74()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_100119F8C, v2, 0);
}

uint64_t sub_100119F8C()
{
  v1 = v0[11];
  v0[56] = v0[2];
  return _swift_task_switch(sub_100119FB0, v1, 0);
}

uint64_t sub_100119FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[56];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v27 = v3[46];
    v28 = v3[47];
    v36 = v3[53];
    v35 = v36 + 56;
    v6 = _swiftEmptyArrayStorage;
    v26 = v3[42];
    v29 = v3[56];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_10012B2B8(v3[56] + v32 + v31 * v5, v3[49], type metadata accessor for OwnerPeerTrust);
      if (!*(v36 + 16))
      {
        goto LABEL_11;
      }

      v7 = v3[49];
      v8 = v3[41];
      v9 = *(v27 + 20);
      v10 = *(v36 + 40);
      sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v36 + 32);
      v13 = v11 & ~v12;
      if ((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        v15 = *(v26 + 72);
        v16 = *(v26 + 16);
        while (1)
        {
          v17 = v3[45];
          v18 = v3[41];
          v16(v17, *(v36 + 48) + v13 * v15, v18);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v26 + 8))(v17, v18);
          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[49], type metadata accessor for OwnerPeerTrust);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[49], v3[48], type metadata accessor for OwnerPeerTrust);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011242A4(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v21 = v6[2];
        v20 = v6[3];
        if (v21 >= v20 >> 1)
        {
          sub_1011242A4(v20 > 1, v21 + 1, 1);
          v6 = v33;
        }

        v22 = v3[48];
        v6[2] = v21 + 1;
        sub_10012B250(v22, v6 + v32 + v21 * v31, type metadata accessor for OwnerPeerTrust);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v23 = v3[56];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[57] = v6;
    v24 = v3[54];

    v4 = sub_10011A330;
    a2 = v24;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011A330()
{
  v1 = *(v0 + 432);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  v4 = sub_1000BC4D4(&qword_101697718, &unk_1013EBDF0);
  *v3 = v0;
  v3[1] = sub_10011A41C;
  v5 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100129E34, v5, v4);
}

uint64_t sub_10011A41C()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011A534, v2, 0);
}

uint64_t sub_10011A534()
{
  v1 = v0[11];
  v0[59] = v0[3];
  return _swift_task_switch(sub_10011A558, v1, 0);
}

uint64_t sub_10011A558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[59];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v28 = v3[38];
    v27 = v3[37];
    v36 = v3[53];
    v35 = v36 + 56;
    v6 = _swiftEmptyArrayStorage;
    v26 = v3[42];
    v29 = v3[59];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_10012B2B8(v3[59] + v32 + v31 * v5, v3[40], type metadata accessor for MemberPeerTrust);
      if (!*(v36 + 16))
      {
        goto LABEL_11;
      }

      v7 = v3[40];
      v8 = v3[41];
      v9 = *(v27 + 20);
      v10 = *(v36 + 40);
      sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v36 + 32);
      v13 = v11 & ~v12;
      if ((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        v15 = *(v26 + 72);
        v16 = *(v26 + 16);
        while (1)
        {
          v17 = v3[45];
          v18 = v3[41];
          v16(v17, *(v36 + 48) + v13 * v15, v18);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v26 + 8))(v17, v18);
          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[40], type metadata accessor for MemberPeerTrust);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[40], v3[39], type metadata accessor for MemberPeerTrust);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124260(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v21 = v6[2];
        v20 = v6[3];
        if (v21 >= v20 >> 1)
        {
          sub_101124260(v20 > 1, v21 + 1, 1);
          v6 = v33;
        }

        v22 = v3[39];
        v6[2] = v21 + 1;
        sub_10012B250(v22, v6 + v32 + v21 * v31, type metadata accessor for MemberPeerTrust);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v23 = v3[59];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[60] = v6;
    v24 = v3[54];

    v4 = sub_10011A8DC;
    a2 = v24;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011A8DC()
{
  v1 = *(v0 + 432);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 488) = v3;
  v4 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v3 = v0;
  v3[1] = sub_10011A9C8;
  v5 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100129E3C, v5, v4);
}

uint64_t sub_10011A9C8()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011AAE0, v2, 0);
}

uint64_t sub_10011AAE0()
{
  v1 = v0[11];
  v0[62] = v0[4];
  return _swift_task_switch(sub_10011AB04, v1, 0);
}

uint64_t sub_10011AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[62];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v28 = v3[34];
    v27 = v3[33];
    v36 = v3[52];
    v35 = v36 + 56;
    v6 = _swiftEmptyArrayStorage;
    v26 = v3[42];
    v29 = v3[62];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_10012B2B8(v3[62] + v32 + v31 * v5, v3[36], type metadata accessor for SharingCircleSecret);
      if (!*(v36 + 16))
      {
        goto LABEL_11;
      }

      v7 = v3[41];
      v8 = v3[36];
      v9 = *(v27 + 24);
      v10 = *(v36 + 40);
      sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v36 + 32);
      v13 = v11 & ~v12;
      if ((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        v15 = *(v26 + 72);
        v16 = *(v26 + 16);
        while (1)
        {
          v17 = v3[45];
          v18 = v3[41];
          v16(v17, *(v36 + 48) + v13 * v15, v18);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v26 + 8))(v17, v18);
          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[36], type metadata accessor for SharingCircleSecret);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[36], v3[35], type metadata accessor for SharingCircleSecret);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124114(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v21 = v6[2];
        v20 = v6[3];
        if (v21 >= v20 >> 1)
        {
          sub_101124114(v20 > 1, v21 + 1, 1);
          v6 = v33;
        }

        v22 = v3[35];
        v6[2] = v21 + 1;
        sub_10012B250(v22, v6 + v32 + v21 * v31, type metadata accessor for SharingCircleSecret);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v23 = v3[62];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[63] = v6;
    v24 = v3[54];

    v4 = sub_10011AE8C;
    a2 = v24;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011AE8C()
{
  v1 = *(v0 + 432);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_10011AF78;
  v5 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_10011AF78()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011B090, v2, 0);
}

uint64_t sub_10011B090()
{
  v1 = v0[11];
  v0[65] = v0[5];
  return _swift_task_switch(sub_10011B0B4, v1, 0);
}

uint64_t sub_10011B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[65];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v28 = v3[30];
    v27 = v3[29];
    v36 = v3[51];
    v35 = v36 + 56;
    v6 = _swiftEmptyArrayStorage;
    v26 = v3[42];
    v29 = v3[65];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_10012B2B8(v3[65] + v32 + v31 * v5, v3[32], type metadata accessor for SharedBeaconRecord);
      if (!*(v36 + 16))
      {
        goto LABEL_11;
      }

      v7 = v3[41];
      v8 = v3[32];
      v9 = *(v27 + 20);
      v10 = *(v36 + 40);
      sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v36 + 32);
      v13 = v11 & ~v12;
      if ((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        v15 = *(v26 + 72);
        v16 = *(v26 + 16);
        while (1)
        {
          v17 = v3[45];
          v18 = v3[41];
          v16(v17, *(v36 + 48) + v13 * v15, v18);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v26 + 8))(v17, v18);
          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[32], type metadata accessor for SharedBeaconRecord);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[32], v3[31], type metadata accessor for SharedBeaconRecord);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v21 = v6[2];
        v20 = v6[3];
        if (v21 >= v20 >> 1)
        {
          sub_10112421C(v20 > 1, v21 + 1, 1);
          v6 = v33;
        }

        v22 = v3[31];
        v6[2] = v21 + 1;
        sub_10012B250(v22, v6 + v32 + v21 * v31, type metadata accessor for SharedBeaconRecord);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v23 = v3[65];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[66] = v6;
    v24 = v3[54];

    v4 = sub_10011B43C;
    a2 = v24;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011B43C()
{
  v1 = *(v0 + 432);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 536) = v3;
  v4 = sub_1000BC4D4(&qword_101697728, &qword_10138C3E0);
  *v3 = v0;
  v3[1] = sub_10011B528;
  v5 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100129E4C, v5, v4);
}

uint64_t sub_10011B528()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011B640, v2, 0);
}

uint64_t sub_10011B640()
{
  v1 = v0[11];
  v0[68] = v0[6];
  return _swift_task_switch(sub_10011B664, v1, 0);
}

uint64_t sub_10011B664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[68];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v28 = v3[26];
    v27 = v3[25];
    v36 = v3[51];
    v35 = v36 + 56;
    v6 = _swiftEmptyArrayStorage;
    v26 = v3[42];
    v29 = v3[68];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_10012B2B8(v3[68] + v32 + v31 * v5, v3[28], type metadata accessor for BeaconNamingRecord);
      if (!*(v36 + 16))
      {
        goto LABEL_11;
      }

      v7 = v3[41];
      v8 = v3[28];
      v9 = *(v27 + 24);
      v10 = *(v36 + 40);
      sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = -1 << *(v36 + 32);
      v13 = v11 & ~v12;
      if ((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        v15 = *(v26 + 72);
        v16 = *(v26 + 16);
        while (1)
        {
          v17 = v3[45];
          v18 = v3[41];
          v16(v17, *(v36 + 48) + v13 * v15, v18);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v26 + 8))(v17, v18);
          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v35 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[28], type metadata accessor for BeaconNamingRecord);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[28], v3[27], type metadata accessor for BeaconNamingRecord);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011241D8(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v21 = v6[2];
        v20 = v6[3];
        if (v21 >= v20 >> 1)
        {
          sub_1011241D8(v20 > 1, v21 + 1, 1);
          v6 = v33;
        }

        v22 = v3[27];
        v6[2] = v21 + 1;
        sub_10012B250(v22, v6 + v32 + v21 * v31, type metadata accessor for BeaconNamingRecord);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v23 = v3[68];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[69] = v6;
    v24 = v3[54];

    v4 = sub_10011B9EC;
    a2 = v24;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011B9EC()
{
  v1 = v0[54];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[70] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[71] = v4;
  *v3 = v0;
  v3[1] = sub_10011BAD0;
  v5 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_10011BAD0()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011BBE8, v2, 0);
}

uint64_t sub_10011BBE8()
{
  v1 = v0[11];
  v0[72] = v0[7];
  return _swift_task_switch(sub_10011BC0C, v1, 0);
}

uint64_t sub_10011BC0C()
{
  v1 = *(v0 + 352);
  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_10011BC7C, 0, 0);
}

uint64_t sub_10011BC7C()
{
  v1 = *(v0[72] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_10011BD24;
  v3 = v0[44];

  return sub_10068818C(v3);
}

uint64_t sub_10011BD24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 584);
  v22 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v5 = v3[69];
    v6 = v3[66];
    v7 = v3[63];
    v8 = v3[60];
    v9 = v3[57];
    v11 = v3[52];
    v10 = v3[53];
    v12 = v3[51];

    v13 = sub_10011C250;
    v14 = 0;
  }

  else
  {
    v15 = v3[72];
    v16 = v3[44];
    v17 = v3[41];
    v18 = v3[42];
    v19 = v3[11];
    v20 = *(v18 + 8);
    v3[76] = v20;
    v3[77] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v17);

    v13 = sub_10011BEEC;
    v14 = v19;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_10011BEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[74];
  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v36 = v3[51];
    v27 = v3[42];
    v28 = v3[22];
    v35 = v36 + 56;
    v29 = v3[74];
    while (v5 < *(v4 + 2))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v6;
      v34 = v5;
      v31 = *(v28 + 72);
      sub_1000D2A70(v3[74] + v32 + v31 * v5, v3[24], &qword_101697708, &qword_10138C3C0);
      if (*(v36 + 16) && (v7 = v3[41], v8 = v3[24], v9 = *(v36 + 40), sub_100019300(&qword_1016967B0, &type metadata accessor for UUID), v10 = dispatch thunk of Hashable._rawHashValue(seed:)(), v11 = -1 << *(v36 + 32), v12 = v10 & ~v11, ((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        v14 = *(v27 + 72);
        v15 = *(v27 + 16);
        while (1)
        {
          v16 = v3[77];
          v17 = v3[76];
          v18 = v3[45];
          v19 = v3[41];
          v20 = v3[24];
          v15(v18, *(v36 + 48) + v12 * v14, v19);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
          v17(v18, v19);
          if (v20)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10000B3A8(v3[24], &qword_101697708, &qword_10138C3C0);
        v6 = v33;
      }

      else
      {
LABEL_11:
        sub_1000D2AD8(v3[24], v3[23], &qword_101697708, &qword_10138C3C0);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124198(0, v33[2] + 1, 1);
          v6 = v33;
        }

        v22 = v6[2];
        v21 = v6[3];
        if (v22 >= v21 >> 1)
        {
          sub_101124198(v21 > 1, v22 + 1, 1);
          v6 = v33;
        }

        v23 = v3[23];
        v6[2] = v22 + 1;
        sub_1000D2AD8(v23, v6 + v32 + v22 * v31, &qword_101697708, &qword_10138C3C0);
      }

      v5 = v34 + 1;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        v24 = v3[74];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[78] = v6;
    v25 = v3[54];

    v4 = sub_10011C448;
    a2 = v25;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011C250()
{
  v1 = v0[72];
  v2 = v0[11];
  (*(v0[42] + 8))(v0[44], v0[41]);

  return _swift_task_switch(sub_10011C2D8, v2, 0);
}

uint64_t sub_10011C2D8()
{
  v24 = v0[75];
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[32];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[21];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10011C448()
{
  v1 = v0[54];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[79] = v3;
  *v3 = v0;
  v3[1] = sub_10011C520;
  v4 = v0[71];
  v5 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10011C520()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011C638, v2, 0);
}

uint64_t sub_10011C65C()
{
  v1 = v0[43];
  v2 = *(v0[80] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_10011C714;
  v5 = v0[43];

  return sub_10068321C(v5);
}

uint64_t sub_10011C714(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 648);
  v6 = *(*v3 + 616);
  v7 = *(*v3 + 608);
  v8 = *(*v3 + 344);
  v9 = *(*v3 + 328);
  v24 = *v3;
  v4[82] = a1;
  v4[83] = a2;
  v4[84] = v2;

  v7(v8, v9);
  if (v2)
  {
    v10 = v4[78];
    v11 = v4[69];
    v12 = v4[66];
    v13 = v4[63];
    v14 = v4[60];
    v15 = v4[57];
    v17 = v4[52];
    v16 = v4[53];
    v18 = v4[51];

    v19 = sub_10011CF78;
    v20 = 0;
  }

  else
  {
    v21 = v4[80];
    v22 = v4[11];

    v19 = sub_10011C920;
    v20 = v22;
  }

  return _swift_task_switch(v19, v20, 0);
}

uint64_t sub_10011C920()
{
  v1 = v0[82];
  v2 = *(v1 + 16);

  v55 = v2;
  if (v2)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v67 = v0[51];
    v49 = v0[42];
    v51 = v0[17];
    v65 = v67 + 56;
    v53 = v1;
    while (v6 < *(v1 + 16))
    {
      v59 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v61 = v7;
      v63 = v6;
      v57 = *(v51 + 72);
      sub_1000D2A70(v0[82] + v59 + v57 * v6, v0[21], &qword_101697700, &unk_10139FB90);
      if (*(v67 + 16) && (v8 = v0[41], v9 = v0[21], v10 = *(v67 + 40), sub_100019300(&qword_1016967B0, &type metadata accessor for UUID), v11 = dispatch thunk of Hashable._rawHashValue(seed:)(), v12 = -1 << *(v67 + 32), v13 = v11 & ~v12, ((*(v65 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        v15 = *(v49 + 72);
        v16 = *(v49 + 16);
        while (1)
        {
          v17 = v0[77];
          v18 = v0[76];
          v19 = v0[45];
          v20 = v0[41];
          v21 = v0[21];
          v16(v19, *(v67 + 48) + v13 * v15, v20);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
          v18(v19, v20);
          if (v21)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v65 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v3 = sub_10000B3A8(v0[21], &qword_101697700, &unk_10139FB90);
        v1 = v53;
        v7 = v61;
      }

      else
      {
LABEL_11:
        sub_1000D2AD8(v0[21], v0[20], &qword_101697700, &unk_10139FB90);
        v7 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124158(0, v61[2] + 1, 1);
          v7 = v61;
        }

        v23 = v7[2];
        v22 = v7[3];
        v1 = v53;
        if (v23 >= v22 >> 1)
        {
          sub_101124158(v22 > 1, v23 + 1, 1);
          v7 = v61;
        }

        v24 = v0[20];
        v7[2] = v23 + 1;
        v3 = sub_1000D2AD8(v24, v7 + v59 + v23 * v57, &qword_101697700, &unk_10139FB90);
      }

      v6 = v63 + 1;
      if (v63 + 1 == v55)
      {
        v25 = v0[82];
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[85] = v7;
  v26 = v0[83];
  v3 = swift_bridgeObjectRelease_n();
  v54 = *(v26 + 16);
  v56 = v26;
  if (v54)
  {
    v27 = 0;
    v28 = _swiftEmptyArrayStorage;
    v68 = v0[51];
    v50 = v0[42];
    v52 = v0[17];
    v66 = v68 + 56;
    while (v27 < *(v56 + 16))
    {
      v60 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v62 = v28;
      v64 = v27;
      v58 = *(v52 + 72);
      sub_1000D2A70(v0[83] + v60 + v58 * v27, v0[19], &qword_101697700, &unk_10139FB90);
      if (*(v68 + 16) && (v29 = v0[41], v30 = v0[19], v31 = *(v68 + 40), sub_100019300(&qword_1016967B0, &type metadata accessor for UUID), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(v68 + 32), v34 = v32 & ~v33, ((*(v66 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        v36 = *(v50 + 72);
        v37 = *(v50 + 16);
        while (1)
        {
          v38 = v0[77];
          v39 = v0[76];
          v40 = v0[45];
          v41 = v0[41];
          v42 = v0[19];
          v37(v40, *(v68 + 48) + v34 * v36, v41);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
          LOBYTE(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
          v39(v40, v41);
          if (v42)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v66 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v3 = sub_10000B3A8(v0[19], &qword_101697700, &unk_10139FB90);
        v28 = v62;
      }

      else
      {
LABEL_28:
        sub_1000D2AD8(v0[19], v0[18], &qword_101697700, &unk_10139FB90);
        v28 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124158(0, v62[2] + 1, 1);
          v28 = v62;
        }

        v44 = v28[2];
        v43 = v28[3];
        if (v44 >= v43 >> 1)
        {
          sub_101124158(v43 > 1, v44 + 1, 1);
          v28 = v62;
        }

        v45 = v0[18];
        v28[2] = v44 + 1;
        v3 = sub_1000D2AD8(v45, v28 + v60 + v44 * v58, &qword_101697700, &unk_10139FB90);
      }

      v27 = v64 + 1;
      if (v64 + 1 == v54)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_34:
  v0[86] = v28;
  v46 = v0[83];
  v47 = v0[54];

  v3 = sub_10011D0F0;
  v4 = v47;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10011CF78()
{
  v1 = v0[80];

  v25 = v0[84];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[43];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[32];
  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10011D0F0()
{
  v1 = v0[54];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_10011D1C8;
  v4 = v0[71];
  v5 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10011D1C8()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10011D2E0, v2, 0);
}

uint64_t sub_10011D304()
{
  v1 = *(*(v0 + 704) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  *(v0 + 712) = v2;
  *v2 = v0;
  v2[1] = sub_10011D3A4;

  return sub_10068FD6C();
}

uint64_t sub_10011D3A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v21 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  if (v1)
  {
    v5 = v3[86];
    v6 = v3[85];
    v7 = v3[78];
    v8 = v3[69];
    v9 = v3[66];
    v10 = v3[63];
    v11 = v3[60];
    v12 = v3[57];
    v13 = v3[52];
    v20 = v3[53];
    v14 = v3[51];

    v15 = sub_10011DAC4;
    v16 = 0;
  }

  else
  {
    v17 = v3[88];
    v18 = v3[11];

    v15 = sub_10011D570;
    v16 = v18;
  }

  return _swift_task_switch(v15, v16, 0);
}

void sub_10011D570()
{
  v1 = *(v0 + 720);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 416);
    v66 = *(v0 + 120);
    v64 = v1 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v70 = v4 + 56;
    v5 = _swiftEmptyArrayStorage;
    v60 = *(v0 + 96);
    v62 = *(v0 + 104);
    v52 = *(v0 + 336);
    v6 = (v52 + 16);
    v72 = v4;
    v54 = *(v1 + 16);
    v56 = *(v0 + 720);
    while (v3 < *(v1 + 16))
    {
      sub_10012B2B8(v64 + *(v66 + 72) * v3, *(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
      if (*(v4 + 16))
      {
        v68 = v3;
        v7 = *(v0 + 328);
        v8 = *(v0 + 128);
        v9 = *(v4 + 40);
        sub_100019300(&qword_1016967B0, &type metadata accessor for UUID);
        v6 = (v52 + 16);
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v11 = -1 << *(v4 + 32);
        v12 = v10 & ~v11;
        v13 = *(v52 + 16);
        if ((*(v70 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v58 = v5;
          v14 = ~v11;
          v15 = *(v52 + 72);
          do
          {
            v16 = *(v0 + 616);
            v17 = *(v0 + 608);
            v18 = *(v0 + 360);
            v19 = *(v0 + 328);
            v20 = *(v0 + 128);
            v13(v18, *(v72 + 48) + v12 * v15, v19);
            sub_100019300(&qword_1016984A0, &type metadata accessor for UUID);
            LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
            v17(v18, v19);
            if (v20)
            {
              sub_10012B448(*(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
              v1 = v56;
              v5 = v58;
              v2 = v54;
              v3 = v68;
              v6 = (v52 + 16);
              goto LABEL_4;
            }

            v12 = (v12 + 1) & v14;
          }

          while (((*(v70 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
          v1 = v56;
          v5 = v58;
          v2 = v54;
          v3 = v68;
          v6 = (v52 + 16);
        }

        else
        {
          v3 = v68;
        }
      }

      else
      {
        v13 = *v6;
      }

      v21 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = *(v60 + 48);
      v13(v22, v21, *(v0 + 328));
      sub_10012B2B8(v21, v22 + v23, type metadata accessor for DelegatedBeaconMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5C02C(0, v5[2] + 1, 1, v5);
      }

      v25 = v5[2];
      v24 = v5[3];
      if (v25 >= v24 >> 1)
      {
        v5 = sub_100A5C02C(v24 > 1, v25 + 1, 1, v5);
      }

      v26 = *(v0 + 112);
      sub_10012B448(*(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
      v5[2] = v25 + 1;
      sub_1000D2AD8(v26, v5 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v25, &qword_1016976F8, &unk_10138C3B0);
LABEL_4:
      ++v3;
      v4 = v72;
      if (v3 == v2)
      {
        v27 = *(v0 + 720);
        v28 = *(v0 + 408);

        v29 = v5;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 720);

    v29 = _swiftEmptyArrayStorage;
LABEL_21:

    v73 = *(v0 + 552);
    v74 = *(v0 + 624);
    v69 = *(v0 + 504);
    v71 = *(v0 + 528);
    v65 = *(v0 + 456);
    v67 = *(v0 + 480);
    v32 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 384);
    v34 = *(v0 + 392);
    v36 = *(v0 + 352);
    v37 = *(v0 + 360);
    v38 = *(v0 + 344);
    v39 = *(v0 + 320);
    v42 = *(v0 + 312);
    v43 = *(v0 + 288);
    v44 = *(v0 + 280);
    v45 = *(v0 + 256);
    v46 = *(v0 + 248);
    v47 = *(v0 + 224);
    v48 = *(v0 + 216);
    v49 = *(v0 + 192);
    v50 = *(v0 + 184);
    v51 = *(v0 + 168);
    v53 = *(v0 + 160);
    v55 = *(v0 + 152);
    v57 = *(v0 + 144);
    v59 = *(v0 + 128);
    v61 = *(v0 + 112);
    v63 = *(v0 + 680);
    v40 = *(v0 + 80);

    *v40 = v65;
    *(v40 + 8) = v67;
    *(v40 + 16) = v69;
    *(v40 + 24) = v71;
    *(v40 + 32) = v73;
    *(v40 + 40) = v74;
    *(v40 + 48) = v29;
    *(v40 + 56) = v63;
    v41 = *(v0 + 8);

    v41();
  }
}

uint64_t sub_10011DAC4()
{
  v1 = v0[88];

  v25 = v0[91];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[43];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[32];
  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10011DC3C()
{
  v1[8] = v0;
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharingCircle();
  v1[24] = v14;
  v15 = *(v14 - 8);
  v1[25] = v15;
  v16 = *(v15 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_10011DE90, v0, 0);
}

uint64_t sub_10011DE90()
{
  v1 = v0[8];
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v2 = *(v1 + 112);
  v0[27] = v2;
  return _swift_task_switch(sub_10011DEC0, v2, 0);
}

uint64_t sub_10011DEC0()
{
  v1 = *(v0 + 216);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_10011DFAC;
  v5 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_10011DFAC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10011E0C4, v2, 0);
}

uint64_t sub_10011E0C4()
{
  v1 = v0[8];
  v0[29] = v0[4];
  return _swift_task_switch(sub_10011E0E8, v1, 0);
}

uint64_t sub_10011E0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = v3;
  v4 = v3[29];
  v31 = *(v4 + 16);
  if (v31)
  {
    v5 = 0;
    v38 = v3[24];
    v6 = v3[19];
    v30 = v3[25];
    v29 = v4 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v7 = (v6 + 16);
    v32 = v6;
    v8 = (v6 + 8);
    v9 = &_swiftEmptySetSingleton;
    v34 = (v6 + 8);
    v35 = v3[29];
    v41 = (v6 + 16);
    while (v5 < *(v4 + 16))
    {
      v36 = v9;
      v10 = v3[26];
      v39 = v10;
      v12 = v3[22];
      v11 = v3[23];
      v13 = v3[18];
      sub_10012B2B8(v29 + *(v30 + 72) * v5, v10, type metadata accessor for OwnerSharingCircle);
      v14 = *v7;
      (*v7)(v12, v10 + v38[5], v13);
      sub_100DE8BCC(v11, v12);
      v15 = *v8;
      (*v8)(v11, v13);
      v14(v12, v10 + v38[6], v13);
      v16 = v14;
      sub_100DE8BCC(v11, v12);
      v15(v11, v13);
      v17 = v15;
      v18 = *(v39 + v38[8]);
      v19 = *(v18 + 16);
      v37 = v5;
      if (v19)
      {
        v20 = sub_1003A85FC(v19, 0);
        v21 = sub_1003CC2CC(&v42, v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v19, v18);

        a1 = sub_1000128F8();
        if (v21 != v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = _swiftEmptyArrayStorage;
      }

      v4 = v35;
      v9 = v36;
      v42 = v36;
      v22 = v20[2];
      v7 = v41;
      if (v22)
      {
        v23 = v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v40 = *(v32 + 72);
        do
        {
          v24 = v33[23];
          v25 = v33[21];
          v26 = v33[18];
          v16(v25, v23, v26);
          sub_100DE8BCC(v24, v25);
          v7 = v41;
          v17(v24, v26);
          v23 += v40;
          --v22;
        }

        while (v22);

        v9 = v42;
        v4 = v35;
      }

      else
      {
      }

      v5 = v37 + 1;
      v3 = v33;
      a1 = sub_10012B448(v33[26], type metadata accessor for OwnerSharingCircle);
      v8 = v34;
      if (v37 + 1 == v31)
      {
        v27 = v33[29];

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v9 = &_swiftEmptySetSingleton;
LABEL_16:
    v3[30] = v9;
    a2 = v3[27];
    a1 = sub_10011E458;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10011E458()
{
  v1 = *(v0 + 216);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_10011E544;
  v5 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_10011E544()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10011E65C, v2, 0);
}

uint64_t sub_10011E65C()
{
  v1 = v0[8];
  v0[32] = v0[5];
  return _swift_task_switch(sub_10011E680, v1, 0);
}

uint64_t sub_10011E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = v3;
  v4 = v3[32];
  v31 = *(v4 + 16);
  if (v31)
  {
    v5 = 0;
    v6 = v3[19];
    v38 = v3[15];
    v30 = v3[16];
    v29 = v4 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v7 = (v6 + 16);
    v8 = (v6 + 8);
    v9 = v3[30];
    v34 = (v6 + 8);
    v35 = v3[32];
    v40 = (v6 + 16);
    while (v5 < *(v4 + 16))
    {
      v36 = v9;
      v11 = v3[22];
      v10 = v3[23];
      v13 = v3[17];
      v12 = v3[18];
      sub_10012B2B8(v29 + *(v30 + 72) * v5, v13, type metadata accessor for MemberSharingCircle);
      v14 = *v7;
      (*v7)(v11, v13 + v38[7], v12);
      sub_100DE8BCC(v10, v11);
      v15 = *v8;
      (*v8)(v10, v12);
      v14(v11, v13 + v38[6], v12);
      v16 = v14;
      sub_100DE8BCC(v10, v11);
      v15(v10, v12);
      v17 = v15;
      v18 = *(v13 + v38[9]);
      v19 = *(v18 + 16);
      v37 = v5;
      if (v19)
      {
        v20 = sub_1003A85FC(v19, 0);
        v21 = sub_1003CC2CC(&v41, v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v19, v18);

        a1 = sub_1000128F8();
        if (v21 != v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = _swiftEmptyArrayStorage;
      }

      v4 = v35;
      v9 = v36;
      v41 = v36;
      v22 = v20[2];
      v7 = v40;
      if (v22)
      {
        v23 = v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v39 = *(v32 + 72);
        do
        {
          v24 = v33[23];
          v25 = v33[20];
          v26 = v33[18];
          v16(v25, v23, v26);
          sub_100DE8BCC(v24, v25);
          v7 = v40;
          v17(v24, v26);
          v23 += v39;
          --v22;
        }

        while (v22);

        v9 = v41;
        v4 = v35;
      }

      else
      {
      }

      v5 = v37 + 1;
      v3 = v33;
      a1 = sub_10012B448(v33[17], type metadata accessor for MemberSharingCircle);
      v8 = v34;
      if (v37 + 1 == v31)
      {
        v27 = v33[32];

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v9 = v3[30];
LABEL_16:
    v3[33] = v9;
    a2 = v3[27];
    a1 = sub_10011E9E8;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10011E9E8()
{
  v1 = *(v0 + 216);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_10011EAD4;
  v5 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_10011EAD4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10011EBEC, v2, 0);
}

uint64_t sub_10011EBEC()
{
  v1 = v0[8];
  v0[35] = v0[6];
  return _swift_task_switch(sub_10011EC10, v1, 0);
}

uint64_t sub_10011EC10()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[19];
    v4 = v0[13];
    v17 = v0[14];
    v16 = *(v0[12] + 20);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = (v3 + 16);
    v8 = (v3 + 8);
    do
    {
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[18];
      v12 = v0[14];
      sub_10012B2B8(v5, v12, type metadata accessor for OwnedBeaconRecord);
      (*v7)(v10, v17 + v16, v11);
      sub_10012B448(v12, type metadata accessor for OwnedBeaconRecord);
      sub_100DE8BCC(v9, v10);
      (*v8)(v9, v11);
      v5 += v6;
      --v2;
    }

    while (v2);
    v13 = v0[35];
  }

  v14 = v0[27];

  return _swift_task_switch(sub_10011ED74, v14, 0);
}

uint64_t sub_10011ED74()
{
  v1 = *(v0 + 216);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_10011EE60;
  v5 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v5, v4);
}

uint64_t sub_10011EE60()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10011EF78, v2, 0);
}

uint64_t sub_10011EF78()
{
  v1 = v0[8];
  v0[37] = v0[7];
  return _swift_task_switch(sub_10011EF98, v1, 0);
}

uint64_t sub_10011EF98()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[19];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v28 = *(v4 + 72);
    v7 = (v3 + 16);
    v8 = (v3 + 8);
    do
    {
      v13 = v0[11];
      sub_10012B2B8(v6, v13, type metadata accessor for SharedBeaconRecord);
      v12 = v0[11];
      if (*(v13 + v5[11]) == -1 || *(v12 + v5[12]) == -1)
      {
        v10 = v0[22];
        v9 = v0[23];
        v11 = v0[18];
        (*v7)(v10, v12 + v5[5], v11);
        sub_100DE8BCC(v9, v10);
        (*v8)(v9, v11);
        v12 = v0[11];
      }

      sub_10012B448(v12, type metadata accessor for SharedBeaconRecord);
      v6 += v28;
      --v2;
    }

    while (v2);
    v14 = v0[37];
  }

  v15 = v0[26];
  v16 = v0[22];
  v17 = v0[23];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[11];
  v24 = v0[2];
  v23 = v0[3];

  v25 = v0[1];
  v26 = v0[33];

  return v25(v23, v24, v26);
}

uint64_t sub_10011F17C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10011F1E0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for KeySyncMetadataDisplay();
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for KeySyncMetadata();
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v7 = *(v6 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[22] = v8;
  v9 = *(v8 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v2[26] = v12;
  *v12 = v2;
  v12[1] = sub_10011F380;

  return daemon.getter();
}

uint64_t sub_10011F380(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  *(v3 + 216) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019300(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019300(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10011F55C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10011F55C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  v4[29] = a1;

  v7 = v4[27];
  if (v1)
  {
    v8 = v4[14];

    return _swift_task_switch(sub_100120204, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[30] = v9;
    *v9 = v6;
    v9[1] = sub_10011F724;
    v10 = v4[13];

    return sub_1010CC3BC(v10, &off_1016079B8);
  }
}

uint64_t sub_10011F724(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *v2;
  *(*v2 + 248) = a1;

  v6 = *(v3 + 112);
  if (v1)
  {

    v7 = sub_1001202FC;
  }

  else
  {
    v7 = sub_10011F864;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10011F864()
{
  v1 = v0;
  v2 = v0[31];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[23];
    v6 = v1[17];
    v5 = v1[18];
    v88 = v1[15];
    sub_101123BB8(0, v3, 0);
    v90 = (v4 + 16);
    v7 = _swiftEmptyArrayStorage;
    v87 = *(v5 + 72);
    v86 = (v4 + 32);
    v83 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v84 = v2;
    v8 = v83;
    v103 = v1;
    v89 = v6;
    do
    {
      v100 = v7;
      v101 = v3;
      v9 = v1[24];
      v10 = v1[22];
      v12 = v1[19];
      v11 = v1[20];
      v97 = v8;
      sub_10012B2B8(v8, v11, type metadata accessor for KeySyncMetadata);
      sub_10012B2B8(v11, v12, type metadata accessor for KeySyncMetadata);
      v85 = *v90;
      (*v90)(v9, v12, v10);
      v13 = *(v12 + v6[5]);
      v14 = 0x736142746E69682ELL;
      if (v13 != 7)
      {
        v14 = 0x67696C4179656B2ELL;
      }

      v15 = 0xED0000746E656D6ELL;
      if (v13 == 7)
      {
        v15 = 0xEA00000000006465;
      }

      if (v13 == 6)
      {
        v14 = 0x636553646C69772ELL;
        v15 = 0xEE00797261646E6FLL;
      }

      v16 = 0xD000000000000018;
      if (v13 != 4)
      {
        v16 = 0x697250646C69772ELL;
      }

      v17 = 0x800000010134B910;
      if (v13 != 4)
      {
        v17 = 0xEC0000007972616DLL;
      }

      if (*(v12 + v6[5]) <= 5u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD00000000000001CLL;
      if (v13 == 2)
      {
        v18 = 0x6553686374616C2ELL;
      }

      v19 = 0x800000010134B930;
      if (v13 == 2)
      {
        v19 = 0xEF64657461726170;
      }

      v20 = 0xEA00000000007265;
      v21 = 0x6E776F6E6B6E752ELL;
      if (*(v12 + v6[5]))
      {
        v21 = 0x6E774F7261656E2ELL;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (*(v12 + v6[5]) <= 1u)
      {
        v18 = v21;
        v19 = v20;
      }

      if (*(v12 + v6[5]) <= 3u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v14;
      }

      v96 = v22;
      if (*(v12 + v6[5]) <= 3u)
      {
        v23 = v19;
      }

      else
      {
        v23 = v15;
      }

      v95 = v23;
      v91 = v1[22];
      v92 = v1[24];
      v98 = v1[20];
      v24 = v103[19];
      v25 = v103[16];
      v26 = (v24 + v6[6]);
      v27 = v26[4];
      sub_1000035D0(v26, v26[3]);
      v28 = *(v27 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v29 = v103[10];
      v93 = v29;
      v30 = v26[3];
      v31 = v26[4];
      sub_1000035D0(v26, v30);
      v32 = sub_10002BD40(v30, v31);
      if (v32)
      {
        v33 = 0x61646E6F6365732ELL;
      }

      else
      {
        v33 = 0x7972616D6972702ELL;
      }

      if (v32)
      {
        v34 = 0xEA00000000007972;
      }

      else
      {
        v34 = 0xE800000000000000;
      }

      v35 = v6[7];
      v36 = v88[8];
      v94 = type metadata accessor for Date();
      (*(*(v94 - 8) + 16))(v25 + v36, v24 + v35, v94);
      (*v86)(v25, v92, v91);
      v37 = (v25 + v88[5]);
      *v37 = v96;
      v37[1] = v95;
      *(v25 + v88[6]) = v29;
      v38 = (v25 + v88[7]);
      *v38 = v33;
      v38[1] = v34;
      v39 = v24;
      v1 = v103;
      sub_10012B448(v39, type metadata accessor for KeySyncMetadata);
      _StringGuts.grow(_:)(21);
      sub_100019300(&qword_101696930, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;

      v43._countAndFlagsBits = 8250;
      v43._object = 0xE200000000000000;
      String.append(_:)(v43);
      v44._countAndFlagsBits = v96;
      v44._object = v95;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 773860640;
      v45._object = 0xE400000000000000;
      String.append(_:)(v45);
      v46._countAndFlagsBits = v33;
      v46._object = v34;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 40;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v103[11] = v93;
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 539828265;
      v49._object = 0xE400000000000000;
      String.append(_:)(v49);
      sub_100019300(&qword_1016969A0, &type metadata accessor for Date);
      v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v50);

      sub_10012B448(v25, type metadata accessor for KeySyncMetadataDisplay);
      sub_10012B448(v98, type metadata accessor for KeySyncMetadata);
      v7 = v100;
      v52 = v100[2];
      v51 = v100[3];
      if (v52 >= v51 >> 1)
      {
        sub_101123BB8((v51 > 1), v52 + 1, 1);
        v7 = v100;
      }

      v7[2] = v52 + 1;
      v53 = &v7[2 * v52];
      v53[4] = v40;
      v53[5] = v42;
      v8 = v97 + v87;
      v3 = v101 - 1;
      v6 = v89;
    }

    while (v101 != 1);
    v103[12] = v7;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = v55;

    v103[2] = v54;
    v103[3] = v56;
    if (!*(v84 + 16))
    {
      __break(1u);
      return result;
    }

    v99 = v103[31];
    v102 = v103[29];
    v58 = v103[25];
    v60 = v103[22];
    v59 = v103[23];
    v61 = v103[21];
    v85(v58, v83, v60);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v62;
    v63 = *(v59 + 8);
    v63(v58, v60);
    v64._countAndFlagsBits = 8250;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v103[4] = v104;
    v103[5] = v105;
    v103[6] = 0;
    v103[7] = 0xE000000000000000;
    v82 = sub_1000DF96C();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    _StringGuts.grow(_:)(27);

    sub_10012B2B8(v83, v61, type metadata accessor for KeySyncMetadata);

    v85(v58, v61, v60);
    v65 = v61;
    v1 = v103;
    sub_10012B448(v65, type metadata accessor for KeySyncMetadata);
    v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v66);

    v63(v58, v60);
    v67._countAndFlagsBits = 151587386;
    v67._object = 0xE400000000000000;
    String.append(_:)(v67);
    v103[8] = 0xD000000000000015;
    v103[9] = 0x800000010134B8F0;
    sub_10012B19C();
    String.insert<A>(contentsOf:at:)();

    v68 = objc_allocWithZone(SPDataIntegrityCheck);
    v69 = String._bridgeToObjectiveC()();

    v70 = [v68 initWithValue:v69 severity:{0, &type metadata for String, v82, v82, v82}];
  }

  else
  {
    v71 = v0[31];

    v72 = v0[29];
    v73 = objc_allocWithZone(SPDataIntegrityCheck);
    v74 = String._bridgeToObjectiveC()();
    v70 = [v73 initWithValue:v74 severity:2];
  }

  v76 = v1[24];
  v75 = v1[25];
  v78 = v1[20];
  v77 = v1[21];
  v79 = v1[19];
  v80 = v1[16];

  v81 = v1[1];

  return v81(v70);
}

uint64_t sub_100120204()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithValue:v2 severity:1];

  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[16];

  v10 = v0[1];

  return v10(v3);
}

uint64_t sub_1001202FC()
{
  v1 = v0[29];
  v2 = objc_allocWithZone(SPDataIntegrityCheck);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithValue:v3 severity:2];

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[16];

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_100120400(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for BeaconObservation();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v2[12] = *(v7 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100120524, v1, 0);
}

uint64_t sub_100120524()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[5];
  v0[2] = _swiftEmptyArrayStorage;
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[14] = v7;
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = async function pointer to unsafeBlocking<A>(_:)[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_1000BC4D4(&qword_101697788, &qword_10138C498);
  *v9 = v0;
  v9[1] = sub_100120674;

  return unsafeBlocking<A>(_:)(v0 + 3, sub_10012B0C8, v7, v10);
}

uint64_t sub_100120674()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1001207A0, v3, 0);
}

uint64_t sub_100120B0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = a1;
  v48 = a2;
  v2 = type metadata accessor for BeaconObservation();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  v4 = __chkstk_darwin(v2);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  if (qword_101694920 != -1)
  {
LABEL_42:
    swift_once();
  }

  v8 = 0;
  v9 = 0;
  v53 = qword_10177B2E8;
  v10 = _swiftEmptyDictionarySingleton;
  v52 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  while (1)
  {
    v54 = v8;
    v55 = v10;
    v14 = *(&off_101607A10 + v8 + 32);
    v15 = objc_autoreleasePoolPush();
    v16 = *(v53 + v52);
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    OS_dispatch_queue.sync<A>(execute:)();
    v17 = v59;
    if (!v59[2])
    {
      goto LABEL_10;
    }

    v18 = sub_1000210EC(v51);
    if (v19)
    {
      v20 = *(v17[7] + 8 * v18);

      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = sub_100034824(*(v20 + 16), 0);
        v23 = sub_1000364B4(&v59, v22 + 4, v21, v20);
        sub_1000128F8();
        if (v23 != v21)
        {
          goto LABEL_41;
        }
      }

      else
      {

        v22 = _swiftEmptyArrayStorage;
      }

      v49 = 0;
      v50 = v15;
      v25 = sub_100034838(v22);

      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = 0;
        v24 = _swiftEmptyArrayStorage;
        v28 = v14;
        while (v27 < *(v25 + 16))
        {
          v29 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v30 = *(v57 + 72);
          sub_10012B2B8(v25 + v29 + v30 * v27, v7, type metadata accessor for BeaconObservation);
          if (qword_10138C500[v7[*(v58 + 24)]] == qword_10138C500[v14])
          {
            sub_10012B250(v7, v56, type metadata accessor for BeaconObservation);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124308(0, v24[2] + 1, 1);
              v24 = v59;
            }

            v33 = v24[2];
            v32 = v24[3];
            if (v33 >= v32 >> 1)
            {
              sub_101124308(v32 > 1, v33 + 1, 1);
              v24 = v59;
            }

            v24[2] = v33 + 1;
            sub_10012B250(v56, v24 + v29 + v33 * v30, type metadata accessor for BeaconObservation);
            v14 = v28;
          }

          else
          {
            sub_10012B448(v7, type metadata accessor for BeaconObservation);
          }

          if (v26 == ++v27)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v24 = _swiftEmptyArrayStorage;
LABEL_24:

      v9 = v49;
      v15 = v50;
    }

    else
    {
LABEL_10:

      v24 = _swiftEmptyArrayStorage;
    }

    objc_autoreleasePoolPop(v15);
    v59 = v24;

    sub_100129D84(&v59);
    if (v9)
    {
      break;
    }

    v34 = v14;

    v35 = v59;
    v36 = v55;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v36;
    v39 = sub_100772048(v14);
    v40 = v36[2];
    v41 = (v38 & 1) == 0;
    result = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_39;
    }

    v42 = v38;
    if (v36[3] >= result)
    {
      if (v37)
      {
        v10 = v59;
        if (v38)
        {
          goto LABEL_3;
        }
      }

      else
      {
        result = sub_101006330();
        v10 = v59;
        if (v42)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100FE8918(result, v37);
      result = sub_100772048(v34);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_44;
      }

      v39 = result;
      v10 = v59;
      if (v42)
      {
LABEL_3:
        v11 = v10[7];
        v12 = *(v11 + 8 * v39);
        *(v11 + 8 * v39) = v35;

        goto LABEL_4;
      }
    }

    v10[(v39 >> 6) + 8] |= 1 << v39;
    *(v10[6] + v39) = v34;
    *(v10[7] + 8 * v39) = v35;
    v44 = v10[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_40;
    }

    v10[2] = v46;
LABEL_4:
    v8 = v54 + 1;
    if (v54 == 43)
    {
      *v48 = v10;
      return result;
    }
  }

  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100121034(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for BeaconEstimatedLocation();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v2[11] = *(v7 + 64);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100121158, v1, 0);
}

uint64_t sub_100121158()
{
  v1 = v0[5];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[13] = v2;
  return _swift_task_switch(sub_100121188, v2, 0);
}

uint64_t sub_100121188()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v8 = v0;
  v8[1] = sub_100121300;

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10012B0B0, v6, v9);
}

uint64_t sub_100121300()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_10012142C, v3, 0);
}

uint64_t sub_10012142C()
{
  v1 = v0[5];
  v0[16] = v0[3];
  return _swift_task_switch(sub_100121450, v1, 0);
}

uint64_t sub_100121450()
{
  v27 = v0;
  v25 = v0[16];

  sub_1004D5278(&v25);
  v1 = v0[16];

  v2 = v25[2];
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v23 = *(v5 + 40);
    v24 = *(v5 + 20);
    v6 = v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[8];
      sub_10012B2B8(v6, v8, type metadata accessor for BeaconEstimatedLocation);
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v25 = 0xD000000000000019;
      v26 = 0x800000010134B850;
      sub_100019300(&qword_101696930, &type metadata accessor for UUID);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 32;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      type metadata accessor for Date();
      sub_100019300(&qword_1016969A0, &type metadata accessor for Date);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10012B448(v8, type metadata accessor for BeaconEstimatedLocation);
      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v15 = objc_allocWithZone(SPDataIntegrityCheck);
      v16 = String._bridgeToObjectiveC()();

      [v15 initWithValue:v16 severity:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 += v7;
      --v2;
    }

    while (v2);
    v18 = v0[2];
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v0[12];
  v20 = v0[8];

  v21 = v0[1];

  return v21(v18);
}

uint64_t sub_100121798(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for PeerCommunicationIdentifier();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v2[18] = *(v11 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100121934, v1, 0);
}

uint64_t sub_100121934()
{
  *(v0 + 48) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 64) + 112);
    *(v0 + 176) = v3;
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 248) = v7;
    *(v0 + 184) = *(v5 + 56);
    *(v0 + 192) = v6;
    v8 = *(v0 + 160);
    *(v0 + 200) = 0;
    *(v0 + 208) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100121A7C, v3, 0);
  }

  else
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100121A7C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = (*(v0 + 248) + 24) & ~*(v0 + 248);
  (*(v0 + 192))(v3, *(v0 + 160), v6);
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_100121BD4;
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_10012B3A8, v8, v12);
}

uint64_t sub_100121BD4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_100121D00, v3, 0);
}

uint64_t sub_100121D00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 160);
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    *(v0 + 16) = 0xD000000000000010;
    *(v0 + 24) = 0x800000010134B990;
    v4._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v4);

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = objc_allocWithZone(SPDataIntegrityCheck);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithValue:v8 severity:2];

    v10 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v9 messagingDestination:0];
    v11 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    v16 = *(v0 + 200) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v15 + 8))(v12, v14);
    if (v16 == v13)
    {
      v17 = *(v0 + 48);
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = *(v0 + 120);
      v21 = *(v0 + 96);
      v22 = *(v0 + 80);

      v23 = *(v0 + 8);

      return v23(v17);
    }

    else
    {
      v28 = *(v0 + 192);
      v29 = *(v0 + 200) + 1;
      v30 = *(v0 + 176);
      v31 = *(v0 + 160);
      v32 = *(v0 + 128);
      v33 = *(v0 + 56) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 184) * v29;
      v34 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 200) = v29;
      *(v0 + 208) = v34;
      v28(v31, v33, v32);

      return _swift_task_switch(sub_100121A7C, v30, 0);
    }
  }

  else
  {
    v25 = *(v0 + 120);
    sub_10012B250(v2, v25, type metadata accessor for OwnerPeerTrust);
    v26 = *(v1 + 28);
    *(v0 + 252) = v26;
    v27 = swift_task_alloc();
    *(v0 + 232) = v27;
    *v27 = v0;
    v27[1] = sub_100122070;

    return sub_100E8BEF8(v25 + v26);
  }
}

uint64_t sub_100122070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 232);
  v7 = *v4;
  *(*v4 + 240) = a3;

  v8 = *(v5 + 64);
  if (v3)
  {

    v9 = sub_1001225B0;
  }

  else
  {
    v9 = sub_1001221A8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001221A8()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 252);
    v2 = *(v0 + 120);

    sub_100988F40(v3);
    v4 = objc_allocWithZone(SPDataIntegrityCheck);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithValue:v5 severity:0];
  }

  else
  {
    *(v0 + 32) = 0xD00000000000001DLL;
    v7 = *(v0 + 252);
    v8 = *(v0 + 120);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    *(v0 + 40) = 0x800000010134B9B0;
    v11._countAndFlagsBits = (sub_100988F40)();
    String.append(_:)(v11);

    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = objc_allocWithZone(SPDataIntegrityCheck);
    v15 = String._bridgeToObjectiveC()();

    v6 = [v14 initWithValue:v15 severity:2];

    swift_storeEnumTagMultiPayload();
    LOBYTE(v15) = sub_10098BFC0(v8 + v7, v9);
    v16 = sub_10012B448(v9, type metadata accessor for PeerCommunicationIdentifier);
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }

    v17 = *(v0 + 120) + *(v0 + 252);
    sub_100988F40(v16);
    v18 = objc_allocWithZone(SPDataIntegrityCheck);
    v5 = String._bridgeToObjectiveC()();

    v19 = [v18 initWithValue:v5 severity:0];

    v6 = v19;
  }

LABEL_6:
  v20 = *(v0 + 160);
  v21 = *(v0 + 120);
  UUID.uuidString.getter();
  v22 = objc_allocWithZone(SPDataIntegrityCheck);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithValue:v23 severity:0];

  v25 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v24 messagingDestination:v6];
  sub_10012B448(v21, type metadata accessor for OwnerPeerTrust);
  v26 = v25;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v47 = *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  v29 = *(v0 + 128);
  v30 = *(v0 + 136);
  v31 = *(v0 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v30 + 8))(v27, v29);
  if (v31 == v28)
  {
    v32 = *(v0 + 48);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 120);
    v36 = *(v0 + 96);
    v37 = *(v0 + 80);

    v38 = *(v0 + 8);

    return v38(v32);
  }

  else
  {
    v40 = *(v0 + 192);
    v41 = *(v0 + 200) + 1;
    v42 = *(v0 + 176);
    v43 = *(v0 + 160);
    v44 = *(v0 + 128);
    v45 = *(v0 + 56) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 184) * v41;
    v46 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 200) = v41;
    *(v0 + 208) = v46;
    v40(v43, v45, v44);

    return _swift_task_switch(sub_100121A7C, v42, 0);
  }
}

uint64_t sub_1001225B0(uint64_t a1)
{
  *(v1 + 32) = 0xD00000000000001DLL;
  v2 = *(v1 + 252);
  v3 = *(v1 + 120);
  v5 = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v1 + 40) = 0x800000010134B9B0;
  v6._countAndFlagsBits = sub_100988F40(a1);
  String.append(_:)(v6);

  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = objc_allocWithZone(SPDataIntegrityCheck);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithValue:v10 severity:2];

  swift_storeEnumTagMultiPayload();
  LOBYTE(v10) = sub_10098BFC0(v3 + v2, v4);
  v12 = sub_10012B448(v4, type metadata accessor for PeerCommunicationIdentifier);
  if (v10)
  {
    v13 = *(v1 + 120) + *(v1 + 252);
    sub_100988F40(v12);
    v14 = objc_allocWithZone(SPDataIntegrityCheck);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 initWithValue:v15 severity:0];

    v11 = v16;
  }

  v17 = *(v1 + 160);
  v18 = *(v1 + 120);
  UUID.uuidString.getter();
  v19 = objc_allocWithZone(SPDataIntegrityCheck);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithValue:v20 severity:0];

  v22 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v21 messagingDestination:v11];
  sub_10012B448(v18, type metadata accessor for OwnerPeerTrust);
  v23 = v22;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44 = *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v24 = *(v1 + 160);
  v25 = *(v1 + 168);
  v26 = *(v1 + 128);
  v27 = *(v1 + 136);
  v28 = *(v1 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v27 + 8))(v24, v26);
  if (v28 == v25)
  {
    v29 = *(v1 + 48);
    v31 = *(v1 + 152);
    v30 = *(v1 + 160);
    v32 = *(v1 + 120);
    v33 = *(v1 + 96);
    v34 = *(v1 + 80);

    v35 = *(v1 + 8);

    return v35(v29);
  }

  else
  {
    v37 = *(v1 + 192);
    v38 = *(v1 + 200) + 1;
    v39 = *(v1 + 176);
    v40 = *(v1 + 160);
    v41 = *(v1 + 128);
    v42 = *(v1 + 56) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 184) * v38;
    v43 = (*(v1 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 200) = v38;
    *(v1 + 208) = v43;
    v37(v40, v42, v41);

    return _swift_task_switch(sub_100121A7C, v39, 0);
  }
}

uint64_t sub_100122960(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecretValue();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = type metadata accessor for SharingCircleSecret();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v3[21] = *(v12 + 64);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_100122B40, v2, 0);
}

uint64_t sub_100122B40()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  *(v0 + 184) = v2;
  v3 = type metadata accessor for OwnerSharingCircle();
  *(v0 + 192) = v3;
  *(v0 + 224) = *(v3 + 20);

  return _swift_task_switch(sub_100122BCC, v2, 0);
}

uint64_t sub_100122BCC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  (*(v3 + 16))(v1, *(v0 + 48) + *(v0 + 224), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 200) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_100122D4C;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B4, v6, v9);
}

uint64_t sub_100122D4C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_100122E78, v3, 0);
}

uint64_t sub_100122E78()
{
  v1 = v0[8];
  v0[27] = v0[3];
  return _swift_task_switch(sub_100122E9C, v1, 0);
}

uint64_t sub_100123994(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100123AF8, v1, 0);
}

uint64_t sub_100123AF8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 48) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 120);
  v4 = type metadata accessor for OwnerSharingCircle();
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = sub_100B04978(off_10160F510[*(v2 + v4[7])]);
  v10 = *(v8 + 16);
  v10(v5 + *(v6 + 20), v2 + v4[5], v7);
  v11 = v4[6];
  *(v0 + 328) = v11;
  v10(v5 + *(v6 + 24), v2 + v11, v7);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 152);
  v15 = sub_1000076D4(v14, qword_10177A900);
  v10(v12 + v13[7], v15, v14);
  v16 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  *(v12 + v13[8]) = v9;
  *(v12 + v13[9]) = 0;
  *(v12 + v13[10]) = 1;
  *(v12 + v13[11]) = v16;
  static Date.trustedNow.getter(v12 + v13[12]);
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_100123CE8;
  v18 = *(v0 + 200);

  return sub_100CB753C(v18, 0);
}

uint64_t sub_100123CE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *v2;
  *(*v2 + 216) = a1;

  v6 = *(v3 + 120);
  if (v1)
  {

    v7 = sub_1001242B8;
  }

  else
  {
    v7 = sub_100123E28;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100123E28()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_100123E4C, v1, 0);
}

uint64_t sub_100123E4C()
{
  v1 = v0[28];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[30] = v4;
  *v3 = v0;
  v3[1] = sub_100123F30;
  v5 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100123F30()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_100124048, v2, 0);
}

uint64_t sub_10012406C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 184);
  v3 = *(v0 + 112);
  v4 = *(*(v0 + 248) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_10012413C;
  v7 = *(v0 + 184);

  return sub_100685140(v7, v3 + v1, 0);
}

uint64_t sub_10012413C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v13 = *v1;

  if (v0)
  {
    v4 = v2[23];
    v5 = v2[19];
    v6 = v2[20];

    v7 = *(v6 + 8);
    v2[33] = v7;
    v7(v4, v5);
    v8 = sub_10012437C;
    v9 = 0;
  }

  else
  {
    v10 = v2[31];
    v11 = *(v2[20] + 8);
    v11(v2[23], v2[19]);

    v2[34] = v11;
    v9 = v2[28];
    v8 = sub_1001243EC;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1001242B8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  sub_10012B448(v0[25], type metadata accessor for SharingCircleKeyManager.Instruction);

  v5 = v0[1];

  return v5(_swiftEmptyArrayStorage);
}

uint64_t sub_10012437C()
{
  v1 = v0[31];

  v0[34] = v0[33];
  v2 = v0[28];

  return _swift_task_switch(sub_1001243EC, v2, 0);
}

uint64_t sub_1001243EC()
{
  v1 = v0[28];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1001244C4;
  v4 = v0[30];
  v5 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001244C4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_1001245DC, v2, 0);
}

uint64_t sub_100124600()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 176);
  v3 = *(v0 + 112);
  v4 = *(*(v0 + 288) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  v6[1] = sub_1001246D0;
  v7 = *(v0 + 176);

  return sub_100685140(v7, v3 + v1, 1);
}

uint64_t sub_1001246D0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v14 = *v1;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[22];
    v8 = v2 + 19;
    v6 = v2[19];
    v7 = v8[1];

    v4(v5, v6);
    v9 = sub_10012484C;
    v10 = 0;
  }

  else
  {
    v11 = v2[36];
    v12 = v2[20] + 8;
    (v2[34])(v2[22], v2[19]);

    v10 = v2[28];
    v9 = sub_1001248B4;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10012484C()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 224);

  return _swift_task_switch(sub_1001248B4, v2, 0);
}

uint64_t sub_1001248B4()
{
  v1 = v0[28];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_10012498C;
  v4 = v0[30];
  v5 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10012498C()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_100124AA4, v2, 0);
}

uint64_t sub_100124AC8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v4 = *(*(v0 + 312) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_100124B94;
  v7 = *(v0 + 168);

  return sub_100687010(v7, v3 + v1);
}

uint64_t sub_100124B94()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v17 = *v1;

  if (v0)
  {
    v4 = v2[34];
    v6 = v2[20];
    v5 = v2[21];
    v7 = v2[19];

    v4(v5, v7);
    v8 = sub_1001254AC;
    v9 = 0;
  }

  else
  {
    v10 = v2[39];
    v11 = v2[34];
    v13 = v2[20];
    v12 = v2[21];
    v14 = v2[19];
    v15 = v2[15];
    v11(v12, v14);

    v8 = sub_100124D14;
    v9 = v15;
  }

  return _swift_task_switch(v8, v9, 0);
}

void sub_100124D14()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v98 = *(v0 + 128);
    v99 = *(v0 + 136);
    v97 = v1 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v14 = *(v0 + 144);
      sub_10012B2B8(v97 + *(v99 + 72) * v3, v14, type metadata accessor for KeyDropInterface.KeyPackage);
      v15 = *(v14 + *(v98 + 24));
      v16 = *(v15 + 16);
      if (v16)
      {
        sub_101123BF8(0, v16, 0);
        v17 = _swiftEmptyArrayStorage;
        v18 = (v15 + 32);
        v19 = _swiftEmptyArrayStorage[2];
        do
        {
          v21 = *v18;
          v18 += 9;
          v20 = v21;
          v100 = v17;
          v22 = v17[3];
          v23 = v19 + 1;
          if (v19 >= v22 >> 1)
          {
            sub_101123BF8((v22 > 1), v19 + 1, 1);
            v17 = v100;
          }

          v17[2] = v23;
          v17[v19++ + 4] = v20;
          --v16;
        }

        while (v16);
      }

      else
      {
        v23 = _swiftEmptyArrayStorage[2];
        if (!v23)
        {
          v48 = *(v0 + 144);
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          v49._countAndFlagsBits = 0x636572726F636E49;
          v49._object = 0xEF65756C61762074;
          String.append(_:)(v49);
          v50._countAndFlagsBits = 8250;
          v50._object = 0xE200000000000000;
          String.append(_:)(v50);
          *(v0 + 333) = *v48;
          _print_unlocked<A, B>(_:_:)();
          v51._countAndFlagsBits = 8250;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
          v52 = _swiftEmptyArrayStorage[2];
          if (v52)
          {
            v53 = _swiftEmptyArrayStorage[4];
            v54 = v52 - 1;
            if (v52 != 1)
            {
              if (v52 >= 5)
              {
                v55 = v54 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v56 = &_swiftEmptyArrayStorage[7];
                v57 = vdupq_n_s64(v53);
                v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
                v59 = v57;
                do
                {
                  v57 = vbslq_s8(vcgtq_u64(v57, v56[-1]), v56[-1], v57);
                  v59 = vbslq_s8(vcgtq_u64(v59, *v56), *v56, v59);
                  v56 += 2;
                  v58 -= 4;
                }

                while (v58);
                v60 = vbslq_s8(vcgtq_u64(v59, v57), v57, v59);
                v61 = vextq_s8(v60, v60, 8uLL).u64[0];
                v53 = vbsl_s8(vcgtd_u64(v61, v60.u64[0]), *v60.i8, v61);
                if (v54 != (v54 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v55 = 1;
LABEL_44:
                v62 = v52 - v55;
                v63 = &_swiftEmptyArrayStorage[v55 + 4];
                do
                {
                  v65 = *v63++;
                  v64 = v65;
                  if (v65 < v53)
                  {
                    v53 = v64;
                  }

                  --v62;
                }

                while (v62);
              }
            }
          }

          else
          {
            v53 = 0;
          }

          *(v0 + 96) = v53;
          v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v66);

          v67._countAndFlagsBits = 3026478;
          v67._object = 0xE300000000000000;
          String.append(_:)(v67);
          v68 = _swiftEmptyArrayStorage[2];
          if (v68)
          {
            v69 = _swiftEmptyArrayStorage[4];
            v70 = v68 - 1;
            if (v68 != 1)
            {
              if (v68 >= 5)
              {
                v71 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v72 = &_swiftEmptyArrayStorage[7];
                v73 = vdupq_n_s64(v69);
                v74 = v70 & 0xFFFFFFFFFFFFFFFCLL;
                v75 = v73;
                do
                {
                  v73 = vbslq_s8(vcgtq_u64(v73, v72[-1]), v73, v72[-1]);
                  v75 = vbslq_s8(vcgtq_u64(v75, *v72), v75, *v72);
                  v72 += 2;
                  v74 -= 4;
                }

                while (v74);
                v76 = vbslq_s8(vcgtq_u64(v73, v75), v73, v75);
                v77 = vextq_s8(v76, v76, 8uLL).u64[0];
                v69 = vbsl_s8(vcgtd_u64(v76.u64[0], v77), *v76.i8, v77);
                if (v70 != (v70 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v71 = 1;
LABEL_56:
                v78 = v68 - v71;
                v79 = &_swiftEmptyArrayStorage[v71 + 4];
                do
                {
                  v81 = *v79++;
                  v80 = v81;
                  if (v69 <= v81)
                  {
                    v69 = v80;
                  }

                  --v78;
                }

                while (v78);
              }
            }
          }

          else
          {
            v69 = 0;
          }

          *(v0 + 104) = v69;
          v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v82);

          v83 = *(v0 + 32);
          v84 = *(v0 + 40);
          v85 = objc_allocWithZone(SPDataIntegrityCheck);
          v86 = String._bridgeToObjectiveC()();

          [v85 initWithValue:v86 severity:1];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v88 = *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_6;
        }

        v17 = _swiftEmptyArrayStorage;
      }

      v24 = v17[4];
      v25 = v23 - 1;
      if (v23 == 1)
      {
        v4 = v17[4];
        goto LABEL_4;
      }

      if (v23 < 5)
      {
        break;
      }

      v27 = vdupq_n_s64(v24);
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v28 = (v17 + 7);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_u64(v27, v28[-1]), v28[-1], v27);
        v30 = vbslq_s8(vcgtq_u64(v30, *v28), *v28, v30);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_u64(v30, v27), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v4 = vbsl_s8(vcgtd_u64(v32, v31.u64[0]), *v31.i8, v32);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }

LABEL_26:
      if (v23 <= 4)
      {
        v37 = 1;
LABEL_31:
        v44 = v23 - v37;
        v45 = &v17[v37 + 4];
        do
        {
          v47 = *v45++;
          v46 = v47;
          if (v24 <= v47)
          {
            v24 = v46;
          }

          --v44;
        }

        while (v44);
        goto LABEL_4;
      }

      v37 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v38 = vdupq_n_s64(v24);
      v39 = (v17 + 7);
      v40 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v38;
      do
      {
        v38 = vbslq_s8(vcgtq_u64(v38, v39[-1]), v38, v39[-1]);
        v41 = vbslq_s8(vcgtq_u64(v41, *v39), v41, *v39);
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      v42 = vbslq_s8(vcgtq_u64(v38, v41), v38, v41);
      v43 = vextq_s8(v42, v42, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_u64(v42.u64[0], v43), *v42.i8, v43);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_31;
      }

LABEL_4:
      v5 = *(v0 + 144);

      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 332) = *v5;
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      *(v0 + 80) = v4;
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 3026478;
      v8._object = 0xE300000000000000;
      String.append(_:)(v8);
      *(v0 + 88) = v24;
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = *(v0 + 16);
      v11 = *(v0 + 24);
      v12 = objc_allocWithZone(SPDataIntegrityCheck);
      v13 = String._bridgeToObjectiveC()();

      [v12 initWithValue:v13 severity:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v87 = *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_6:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
      sub_10012B448(*(v0 + 144), type metadata accessor for KeyDropInterface.KeyPackage);
      if (v3 == v2)
      {
        v89 = *(v0 + 216);
        v90 = *(v0 + 48);

        goto LABEL_65;
      }
    }

    v4 = v17[4];
    v26 = 1;
LABEL_22:
    v33 = v23 - v26;
    v34 = &v17[v26 + 4];
    do
    {
      v36 = *v34++;
      v35 = v36;
      if (*&v36 < *&v4)
      {
        v4 = v35;
      }

      --v33;
    }

    while (v33);
    goto LABEL_26;
  }

  v91 = *(v0 + 216);

  v90 = _swiftEmptyArrayStorage;
LABEL_65:
  v93 = *(v0 + 176);
  v92 = *(v0 + 184);
  v94 = *(v0 + 168);
  v95 = *(v0 + 144);
  sub_10012B448(*(v0 + 200), type metadata accessor for SharingCircleKeyManager.Instruction);

  v96 = *(v0 + 8);

  v96(v90);
}

uint64_t sub_1001254AC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10012B4A8, v2, 0);
}

uint64_t sub_100125518(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100125678, v1, 0);
}

uint64_t sub_100125678()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_10012569C, v1, 0);
}

uint64_t sub_10012569C()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1001257FC;
  v10 = v0[8];
  v9 = v0[9];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B0, v6, v10);
}

uint64_t sub_1001257FC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100125928, v3, 0);
}

uint64_t sub_100125928()
{
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[4];
    v4 = v0[2];
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    _StringGuts.grow(_:)(25);

    sub_100019300(&qword_101696930, &type metadata accessor for UUID);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = objc_allocWithZone(SPDataIntegrityCheck);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 initWithValue:v7 severity:{2, 0xD000000000000023, 0x800000010134BA70}];
  }

  else
  {
    v9 = v0[12];
    v10 = v0[4];
    v11 = v0[2];
    sub_10012B250(v2, v9, type metadata accessor for SharedBeaconRecord);
    _StringGuts.grow(_:)(25);

    v12._countAndFlagsBits = sub_1008BA9C0(*(v9 + *(v1 + 64)));
    String.append(_:)(v12);

    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = objc_allocWithZone(SPDataIntegrityCheck);
    v16 = String._bridgeToObjectiveC()();

    v8 = [v15 initWithValue:v16 severity:{0, 0xD000000000000014, 0x800000010134BAA0}];

    sub_10012B448(v9, type metadata accessor for SharedBeaconRecord);
  }

  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[7];

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_100125C38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for BeaconNamingRecord();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100125D98, v1, 0);
}

uint64_t sub_100125D98()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100125DBC, v1, 0);
}

uint64_t sub_100125DBC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100125F1C;
  v10 = v0[8];
  v9 = v0[9];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10012B220, v6, v10);
}

uint64_t sub_100125F1C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100126048, v3, 0);
}

uint64_t sub_100126048()
{
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);
    v3 = objc_allocWithZone(SPDataIntegrityCheck);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithValue:v4 severity:0];
  }

  else
  {
    v6 = v0[12];
    v7 = v0[4];
    sub_10012B250(v2, v6, type metadata accessor for BeaconNamingRecord);
    _StringGuts.grow(_:)(25);

    String.append(_:)(*(v6 + *(v1 + 32)));
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = *(v1 + 20);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = objc_allocWithZone(SPDataIntegrityCheck);
    v12 = String._bridgeToObjectiveC()();

    v5 = [v11 initWithValue:v12 severity:0];

    sub_10012B448(v6, type metadata accessor for BeaconNamingRecord);
  }

  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[7];

  v16 = v0[1];

  return v16(v5);
}

uint64_t sub_1001262B0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100126370, v1, 0);
}

uint64_t sub_100126370()
{
  v1 = *(*(v0 + 104) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_100126394, v1, 0);
}

uint64_t sub_100126394()
{
  v1 = *(v0 + 136);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100126474;
  v5 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100126474()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10012658C, v2, 0);
}

uint64_t sub_10012658C()
{
  v1 = v0[13];
  v0[19] = v0[11];
  return _swift_task_switch(sub_1001265B0, v1, 0);
}

uint64_t sub_1001265B0()
{
  v1 = *(v0 + 128);
  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_100126620, 0, 0);
}

uint64_t sub_100126620()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1001266D0;
  v3 = v0[16];
  v4 = v0[12];

  return sub_100687A6C((v0 + 2), v4, v3);
}

uint64_t sub_1001266D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v12 = *v1;

  if (v0)
  {

    v4 = sub_100126A00;
    v5 = 0;
  }

  else
  {
    v6 = v2[19];
    v8 = v2[15];
    v7 = v2[16];
    v10 = v2 + 13;
    v9 = v2[13];
    (*(v8 + 8))(v7, v10[1]);

    v4 = sub_100126814;
    v5 = v9;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100126814()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[12];
    v4 = v0[2];
    _StringGuts.grow(_:)(24);

    v15 = 0xD000000000000013;
    v16 = 0x800000010134BA00;

    v5._countAndFlagsBits = v4;
    v5._object = v1;
    String.append(_:)(v5);
    sub_10000B3A8((v0 + 2), &unk_1016AF910, &unk_10138C4C0);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = objc_allocWithZone(SPDataIntegrityCheck);
    v9 = String._bridgeToObjectiveC()();

    v10 = 0;
  }

  else
  {
    v8 = objc_allocWithZone(SPDataIntegrityCheck);
    v9 = String._bridgeToObjectiveC()();
    v10 = 2;
  }

  v11 = v0[16];
  v12 = [v8 initWithValue:v9 severity:{v10, v15, v16}];

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100126A00()
{
  v1 = v0[19];
  v2 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_100126A84, v2, 0);
}

uint64_t sub_100126A84()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  v3 = *(v0 + 128);
  v4 = [v1 initWithValue:v2 severity:2];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100126B44(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[13] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for MemberPeerTrust();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v2[20] = *(v9 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100126CB0, v1, 0);
}

uint64_t sub_100126CB0()
{
  *(v0 + 80) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    *(v0 + 192) = v3;
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 264) = v7;
    *(v0 + 200) = *(v5 + 56);
    *(v0 + 208) = v6;
    v8 = *(v0 + 176);
    *(v0 + 216) = 0;
    *(v0 + 224) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100126DEC, v3, 0);
  }

  else
  {
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);

    v13 = *(v0 + 8);

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100126DEC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 208))(v3, *(v0 + 176), v6);
  v8 = swift_allocObject();
  *(v0 + 232) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_100126F44;
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_10012B208, v8, v12);
}

uint64_t sub_100126F44()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_100127070, v3, 0);
}

uint64_t sub_100127070()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  if ((*(*(v0 + 128) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 176);
    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
    *(v0 + 16) = 0xD000000000000010;
    *(v0 + 24) = 0x800000010134B990;
    v4._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v4);

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = objc_allocWithZone(SPDataIntegrityCheck);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithValue:v8 severity:2];

    v10 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v9 messagingDestination:0];
    v11 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 216) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v15 + 8))(v12, v14);
    if (v16 == v13)
    {
      v17 = *(v0 + 80);
      v19 = *(v0 + 168);
      v18 = *(v0 + 176);
      v20 = *(v0 + 136);
      v21 = *(v0 + 112);

      v22 = *(v0 + 8);

      return v22(v17);
    }

    else
    {
      v27 = *(v0 + 208);
      v28 = *(v0 + 216) + 1;
      v29 = *(v0 + 192);
      v30 = *(v0 + 176);
      v31 = *(v0 + 144);
      v32 = *(v0 + 88) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 200) * v28;
      v33 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 216) = v28;
      *(v0 + 224) = v33;
      v27(v30, v32, v31);

      return _swift_task_switch(sub_100126DEC, v29, 0);
    }
  }

  else
  {
    v24 = *(v0 + 136);
    sub_10012B250(v2, v24, type metadata accessor for MemberPeerTrust);
    v25 = *(v1 + 28);
    *(v0 + 268) = v25;
    v26 = swift_task_alloc();
    *(v0 + 248) = v26;
    *v26 = v0;
    v26[1] = sub_1001273D4;

    return sub_100E8BEF8(v24 + v25);
  }
}

uint64_t sub_1001273D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 248);
  v7 = *v4;
  *(*v4 + 256) = a3;

  v8 = *(v5 + 96);
  if (v3)
  {

    v9 = sub_10012789C;
  }

  else
  {
    v9 = sub_10012750C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10012750C()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 268);
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);

    v4 = (v2 + *(v3 + 32));
    v5 = v4[1];
    *(v0 + 48) = *v4;
    *(v0 + 56) = v5;

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = sub_100988F40(v9);
    v12 = v11;
    *(v0 + 64) = v7;
    v13 = (v0 + 64);
    *(v0 + 72) = v8;
    v14 = (v0 + 72);

    v15._countAndFlagsBits = v10;
    v15._object = v12;
    String.append(_:)(v15);

    v16 = 0;
  }

  else
  {
    *(v0 + 40) = 0x800000010134B9B0;
    v14 = (v0 + 40);
    *(v0 + 32) = 0xD00000000000001DLL;
    v13 = (v0 + 32);
    v17 = *(v0 + 136) + *(v0 + 268);
    v18._countAndFlagsBits = sub_100988F40(0);
    String.append(_:)(v18);
    v16 = 2;
  }

  v19 = *v13;
  v20 = *v14;
  v21 = objc_allocWithZone(SPDataIntegrityCheck);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 initWithValue:v22 severity:v16];
  v24 = *(v0 + 176);
  v25 = *(v0 + 136);

  v26 = v23;
  UUID.uuidString.getter();
  v27 = objc_allocWithZone(SPDataIntegrityCheck);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 initWithValue:v28 severity:0];

  v30 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v29 messagingDestination:v26];
  sub_10012B448(v25, type metadata accessor for MemberPeerTrust);
  v31 = v30;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v51 = *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v32 = *(v0 + 176);
  v33 = *(v0 + 184);
  v34 = *(v0 + 144);
  v35 = *(v0 + 152);
  v36 = *(v0 + 216) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v35 + 8))(v32, v34);
  if (v36 == v33)
  {
    v37 = *(v0 + 80);
    v39 = *(v0 + 168);
    v38 = *(v0 + 176);
    v40 = *(v0 + 136);
    v41 = *(v0 + 112);

    v42 = *(v0 + 8);

    return v42(v37);
  }

  else
  {
    v44 = *(v0 + 208);
    v45 = *(v0 + 216) + 1;
    v46 = *(v0 + 192);
    v47 = *(v0 + 176);
    v48 = *(v0 + 144);
    v49 = *(v0 + 88) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 200) * v45;
    v50 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 216) = v45;
    *(v0 + 224) = v50;
    v44(v47, v49, v48);

    return _swift_task_switch(sub_100126DEC, v46, 0);
  }
}

uint64_t sub_10012789C(uint64_t a1)
{
  *(v1 + 32) = 0xD00000000000001DLL;
  v2 = *(v1 + 268);
  v3 = *(v1 + 136);
  *(v1 + 40) = 0x800000010134B9B0;
  v4._countAndFlagsBits = sub_100988F40(a1);
  String.append(_:)(v4);

  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = objc_allocWithZone(SPDataIntegrityCheck);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithValue:v8 severity:2];
  v10 = *(v1 + 176);
  v11 = *(v1 + 136);

  v12 = v9;
  UUID.uuidString.getter();
  v13 = objc_allocWithZone(SPDataIntegrityCheck);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithValue:v14 severity:0];

  v16 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v15 messagingDestination:v12];
  sub_10012B448(v11, type metadata accessor for MemberPeerTrust);
  v17 = v16;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v18 = *(v1 + 176);
  v19 = *(v1 + 184);
  v20 = *(v1 + 144);
  v21 = *(v1 + 152);
  v22 = *(v1 + 216) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v21 + 8))(v18, v20);
  if (v22 == v19)
  {
    v23 = *(v1 + 80);
    v25 = *(v1 + 168);
    v24 = *(v1 + 176);
    v26 = *(v1 + 136);
    v27 = *(v1 + 112);

    v28 = *(v1 + 8);

    return v28(v23);
  }

  else
  {
    v30 = *(v1 + 208);
    v31 = *(v1 + 216) + 1;
    v32 = *(v1 + 192);
    v33 = *(v1 + 176);
    v34 = *(v1 + 144);
    v35 = *(v1 + 88) + ((*(v1 + 264) + 32) & ~*(v1 + 264)) + *(v1 + 200) * v31;
    v36 = (*(v1 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 216) = v31;
    *(v1 + 224) = v36;
    v30(v33, v35, v34);

    return _swift_task_switch(sub_100126DEC, v32, 0);
  }
}

uint64_t sub_100127B90(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  v5 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecretValue();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleSecret();
  *(v4 + 112) = v9;
  v10 = *(v9 - 8);
  *(v4 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v4 + 136) = v12;
  v13 = *(v12 - 8);
  *(v4 + 144) = v13;
  *(v4 + 152) = *(v13 + 64);
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100127D74, v3, 0);
}

uint64_t sub_100127D74()
{
  v1 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[21] = v2;
  return _swift_task_switch(sub_100127DA4, v2, 0);
}

uint64_t sub_100127DA4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[17];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[22] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[23] = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_100127F1C;

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10012B1F0, v6, v9);
}

uint64_t sub_100127F1C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return _swift_task_switch(sub_100128048, v3, 0);
}

uint64_t sub_100128048()
{
  v1 = v0[6];
  v0[24] = v0[3];
  return _swift_task_switch(sub_10012806C, v1, 0);
}

uint64_t sub_100128998(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 136) = v4;
  v5 = *(v4 - 8);
  *(v3 + 144) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100128A68, v2, 0);
}

uint64_t sub_100128A68()
{
  v1 = *(v0 + 128);
  *(v0 + 64) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  *(v0 + 168) = v2;
  *(v0 + 289) = 0;
  *(v0 + 290) = 0;
  return _swift_task_switch(sub_100128AA8, v2, 0);
}

uint64_t sub_100128AA8()
{
  v1 = v0[21];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[23] = v4;
  *v3 = v0;
  v3[1] = sub_100128B8C;
  v5 = v0[21];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100128B8C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_100128CA4, v2, 0);
}

uint64_t sub_100128CC8()
{
  v1 = *(v0 + 290);
  v2 = *(v0 + 160);
  v3 = *(*(v0 + 192) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_100128D94;
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);

  return sub_100685140(v6, v7, v1);
}

uint64_t sub_100128D94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 200);
  v21 = *v4;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;

  if (v3)
  {
    v8 = *(v6 + 160);
    v9 = *(v6 + 136);
    v10 = *(v6 + 144);

    v11 = *(v10 + 8);
    *(v6 + 232) = v11;
    v11(v8, v9);
    v12 = sub_1001292E4;
    v13 = 0;
  }

  else
  {
    v14 = *(v6 + 192);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    v17 = *(v6 + 144);
    v18 = *(v6 + 128);
    *(v6 + 291) = a3;
    v19 = *(v17 + 8);
    *(v6 + 224) = v19;
    v19(v15, v16);

    v12 = sub_100128F20;
    v13 = v18;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1001292E4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100129350, v2, 0);
}

uint64_t sub_100129568()
{
  v1 = v0[21];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100129640;
  v4 = v0[23];
  v5 = v0[21];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100129640()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_100129758, v2, 0);
}

uint64_t sub_10012977C()
{
  v1 = v0[19];
  v2 = *(v0[32] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_100129838;
  v5 = v0[19];
  v6 = v0[15];

  return sub_100687010(v5, v6);
}

uint64_t sub_100129838(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 264);
  v21 = *v4;
  *(v6 + 272) = a1;
  *(v6 + 280) = a2;

  if (v3)
  {
    v8 = *(v6 + 240);
    v9 = *(v6 + 144);
    v10 = *(v6 + 152);
    v11 = *(v6 + 136);

    v8(v10, v11);
    v12 = sub_100129C00;
    v13 = 0;
  }

  else
  {
    v14 = *(v6 + 256);
    v15 = *(v6 + 240);
    v16 = *(v6 + 152);
    v18 = *(v6 + 128);
    v17 = *(v6 + 136);
    v19 = *(v6 + 144) + 8;
    *(v6 + 292) = a3;
    v15(v16, v17);

    v12 = sub_1001299C0;
    v13 = v18;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1001299C0()
{
  if (*(v0 + 292))
  {
    v1 = objc_allocWithZone(SPDataIntegrityCheck);
    v2 = String._bridgeToObjectiveC()();
    [v1 initWithValue:v2 severity:1];
  }

  else
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    _StringGuts.grow(_:)(22);

    *(v0 + 88) = v3;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 3026478;
    v6._object = 0xE300000000000000;
    String.append(_:)(v6);
    *(v0 + 96) = v4;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = objc_allocWithZone(SPDataIntegrityCheck);
    v9 = String._bridgeToObjectiveC()();

    [v8 initWithValue:v9 severity:0];
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_100129C00()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100129C6C, v2, 0);
}

uint64_t sub_100129C6C()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  [v1 initWithValue:v2 severity:1];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[8];

  v6 = v0[1];

  return v6(v5);
}

Swift::Int sub_100129D84(void **a1)
{
  v2 = *(type metadata accessor for BeaconObservation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32020(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100129E54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100129E54(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconObservation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconObservation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012A1E4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100129F80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100129F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconObservation();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_10012B2B8(v24, v18, type metadata accessor for BeaconObservation);
      sub_10012B2B8(v21, v14, type metadata accessor for BeaconObservation);
      v25 = *(v8 + 20);
      v26 = static Date.< infix(_:_:)();
      sub_10012B448(v14, type metadata accessor for BeaconObservation);
      result = sub_10012B448(v18, type metadata accessor for BeaconObservation);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10012B250(v24, v37, type metadata accessor for BeaconObservation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10012B250(v27, v21, type metadata accessor for BeaconObservation);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012A1E4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for BeaconObservation();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_10012AB48(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_10012B2B8(v114 + v25 * v24, v19, type metadata accessor for BeaconObservation);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_10012B2B8(v27, v120, type metadata accessor for BeaconObservation);
      v30 = *(v9 + 20);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_10012B448(v29, type metadata accessor for BeaconObservation);
      result = sub_10012B448(v19, type metadata accessor for BeaconObservation);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_10012B2B8(v32, v19, type metadata accessor for BeaconObservation);
        v33 = v120;
        sub_10012B2B8(v5, v120, type metadata accessor for BeaconObservation);
        v34 = *(v121 + 20);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_10012B448(v33, type metadata accessor for BeaconObservation);
        result = sub_10012B448(v19, type metadata accessor for BeaconObservation);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10012B250(v42 + v41, v111, type metadata accessor for BeaconObservation);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10012B250(v111, v42 + v36, type metadata accessor for BeaconObservation);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_10012B2B8(v5, v19, type metadata accessor for BeaconObservation);
    v96 = v120;
    sub_10012B2B8(v93, v120, type metadata accessor for BeaconObservation);
    v97 = *(v9 + 20);
    a4 = static Date.< infix(_:_:)();
    sub_10012B448(v96, type metadata accessor for BeaconObservation);
    result = sub_10012B448(v19, type metadata accessor for BeaconObservation);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_10012AB48(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for BeaconObservation;
    v98 = v119;
    sub_10012B250(v5, v119, type metadata accessor for BeaconObservation);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10012B250(v98, v93, type metadata accessor for BeaconObservation);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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
  return result;
}

uint64_t sub_10012AB48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for BeaconObservation();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
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

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_10012B2B8(v33, v47, type metadata accessor for BeaconObservation);
          v35 = v48;
          sub_10012B2B8(v29, v48, type metadata accessor for BeaconObservation);
          v36 = *(v31 + 20);
          v37 = static Date.< infix(_:_:)();
          sub_10012B448(v35, type metadata accessor for BeaconObservation);
          sub_10012B448(v34, type metadata accessor for BeaconObservation);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
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

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_10012B2B8(a2, v47, type metadata accessor for BeaconObservation);
        v22 = v48;
        sub_10012B2B8(a4, v48, type metadata accessor for BeaconObservation);
        v23 = *(v49 + 20);
        v24 = static Date.< infix(_:_:)();
        sub_10012B448(v22, type metadata accessor for BeaconObservation);
        sub_10012B448(v21, type metadata accessor for BeaconObservation);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AAB4(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_10012B0C8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100120B0C(v4, a1);
}

unint64_t sub_10012B138()
{
  result = qword_1016B7CB0;
  if (!qword_1016B7CB0)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7CB0);
  }

  return result;
}

unint64_t sub_10012B19C()
{
  result = qword_101697790;
  if (!qword_101697790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697790);
  }

  return result;
}

uint64_t sub_10012B250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012B2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012B320(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10012B3C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10012B448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012B4BC@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v74 = a4;
  v75 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v81 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v80 = &v65 - v14;
  v15 = type metadata accessor for StableIdentifier();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v79 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  __chkstk_darwin(v18);
  v76 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Endianness();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v65 - v28;
  v30 = a2[12];
  if (v30)
  {
    v31 = a2[14];
    if (v31 >> 60 != 15)
    {
      v73 = a2[11];
      v35 = a3;
      v36 = a2[13];
      v70 = v35;
      sub_1000D2A70(v35, &v65 - v28, &qword_101697268, &qword_101394FE0);
      v37 = type metadata accessor for AccessoryProductInfo();
      v38 = *(v37 - 8);
      v68 = *(v38 + 48);
      v67 = v38 + 48;
      v39 = v68(v29, 1, v37);
      v72 = v9;
      v71 = v36;
      v69 = v37;
      if (v39 == 1)
      {

        sub_10002E98C(v36, v31);
        sub_10012BEBC(v29);
      }

      else
      {
        v40 = v29[*(v37 + 176)];

        sub_10002E98C(v36, v31);
        sub_10012C1C4(v29);
        if (v40 != 2)
        {
          if ((v40 & 1) == 0)
          {
LABEL_23:
            UUID.init()();
            sub_10012BF78(v74, v79);
            (*(v77 + 56))(v80, 1, 1, v78);
            sub_100A82D10(v81);
            v51 = v75[2];
            v87 = v75[3];
            v88[0] = v51;
            v52 = v75[4];
            v53 = v75[1];
            v85 = *v75;
            v86 = v52;
            v84 = v53;
            sub_1000D2A70(v70, v27, &qword_101697268, &qword_101394FE0);
            v54 = v69;
            if (v68(v27, 1, v69) == 1)
            {
              sub_10012BFDC(v88, &v82);
              sub_1000D2A70(&v87, &v82, &qword_1016977A8, &qword_1013D6820);
              sub_1000D2A70(&v86, &v82, &qword_1016977A8, &qword_1013D6820);
              sub_10012C038(&v85, &v82);
              sub_10012C094(&v84, &v82);
              sub_10012BEBC(v27);
              v75 = 0;
              v55 = 0xE000000000000000;
            }

            else
            {
              v56 = &v27[*(v54 + 52)];
              v55 = *(v56 + 1);
              v75 = *v56;
              sub_10012BFDC(v88, &v82);
              sub_1000D2A70(&v87, &v82, &qword_1016977A8, &qword_1013D6820);
              sub_1000D2A70(&v86, &v82, &qword_1016977A8, &qword_1013D6820);
              sub_10012C038(&v85, &v82);
              sub_10012C094(&v84, &v82);

              sub_10012C1C4(v27);
            }

            v57 = v71;
            v58 = sub_100313A28(v71, v31);
            sub_100313B54(v57, v31);
            static Endianness.current.getter();
            sub_10012BF24();
            FixedWidthInteger.init(data:ofEndianness:)();
            sub_100006654(v57, v31);
            if (v83)
            {
              v59 = 0;
            }

            else
            {
              v59 = v82;
            }

            *a5 = xmmword_10138C660;
            v60 = type metadata accessor for OwnedBeaconRecord();
            (*(v77 + 32))(&a5[v60[5]], v76, v78);
            sub_10012C0F0(v79, &a5[v60[6]]);
            sub_10012C154(v80, &a5[v60[7]]);
            (*(v72 + 32))(&a5[v60[8]], v81, v8);
            v61 = v87;
            *&a5[v60[9]] = v88[0];
            *&a5[v60[10]] = v61;
            v62 = v85;
            *&a5[v60[11]] = v86;
            *&a5[v60[12]] = v62;
            *&a5[v60[13]] = v84;
            v63 = &a5[v60[14]];
            *v63 = v75;
            *(v63 + 1) = v55;
            v64 = &a5[v60[15]];
            *v64 = v73;
            *(v64 + 1) = v30;
            *&a5[v60[16]] = v58;
            *&a5[v60[17]] = v59;
            a5[v60[18]] = 3;
            a5[v60[19]] = 0;
            a5[v60[20]] = 0;
            return (*(*(v60 - 1) + 56))(a5, 0, 1, v60);
          }

LABEL_17:
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          sub_1000076D4(v42, qword_10177BA08);

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v66 = v8;
            v47 = v46;
            *&v88[0] = v46;
            *v45 = 136315138;
            v48 = v73;
            *(v45 + 4) = sub_1000136BC(v73, v30, v88);
            _os_log_impl(&_mh_execute_header, v43, v44, "Reversing version string for AirTag: %s", v45, 0xCu);
            sub_100007BAC(v47);
            v8 = v66;
          }

          else
          {

            v48 = v73;
          }

          *&v88[0] = v48;
          *(&v88[0] + 1) = v30;
          *&v87 = 46;
          *(&v87 + 1) = 0xE100000000000000;
          sub_1000DF96C();
          v49 = StringProtocol.components<A>(separatedBy:)();

          *&v88[0] = v49;
          sub_1000BC4D4(&qword_1016977B0, &qword_10138C670);
          sub_10012C220();
          v73 = BidirectionalCollection<>.joined(separator:)();
          v30 = v50;

          goto LABEL_23;
        }
      }

      sub_100313B54(v36, v31);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (BYTE4(v88[0]))
      {
        v41 = 0;
      }

      else
      {
        v41 = SLODWORD(v88[0]);
      }

      if ((sub_100B8A580(v41) & 0xFE) == 2)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v32 = type metadata accessor for OwnedBeaconRecord();
  v33 = *(*(v32 - 8) + 56);

  return v33(a5, 1, 1, v32);
}