uint64_t sub_1003BAD04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 872);
  v6 = *v2;
  *(*v2 + 880) = a1;

  if (v1)
  {
    *(v4 + 984) = v1;

    return _swift_task_switch(sub_1003BB73C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 888) = v7;
    *v7 = v6;
    v7[1] = sub_1003BAF64;

    return sub_100119784(v4 + 16);
  }
}

uint64_t sub_1003BAE8C()
{
  v1 = v0[103];
  v2 = v0[94];
  v3 = v0[91];

  sub_100007BAC(v0 + 17);
  v4 = v0[106];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[77];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BAF64()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 888);
  v5 = *v1;
  v6 = *(*v1 + 32);
  *(v3 + 113) = *(v3 + 1);
  v3[112] = v0;
  *(v3 + 115) = v6;
  v3[117] = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  *(v3 + 59) = *(v3 + 9);

  if (v0)
  {
    v9 = sub_1003BB6CC;
    v10 = 0;
  }

  else
  {
    v11 = v3[110];
    v12 = v3[108];

    v9 = sub_1003BB104;
    v10 = v12;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1003BB104()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v0[75] = _swiftEmptyArrayStorage;
  v6 = sub_10039BA14(v5);

  sub_100008950(v6, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v7 = sub_10039BC18(v4);

  sub_100008950(v7, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v8 = sub_10039BE1C(v3);

  sub_100008950(v8, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v9 = sub_10039C020(v2);

  sub_100008950(v9, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v10 = sub_10039C224(v1);

  sub_100008950(v10, sub_100A5C340, &qword_101698D58, &unk_1013908E0);
  v0[120] = v0[75];
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  v11 = Array.chunked(into:)();
  v0[121] = v11;
  v12 = *(v11 + 16);
  v0[122] = v12;
  if (!v12)
  {

    v29 = async function pointer to daemon.getter[1];
    v30 = swift_task_alloc();
    v0[124] = v30;
    *v30 = v0;
    v30[1] = sub_1003BB80C;

    return daemon.getter();
  }

  v13 = v0[112];
  v0[134] = 0;
  if (!*(v11 + 16))
  {
    goto LABEL_32;
  }

  v14 = *(v11 + 32);
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = &_swiftEmptyDictionarySingleton;
  *(inited + 24) = &_swiftEmptyDictionarySingleton;
  v16 = (inited + 24);
  v17 = *(v14 + 16);

  if (!v17)
  {
LABEL_13:

    swift_beginAccess();
    v36 = *(inited + 16);
    if (*(v36 + 16))
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v37 = *v16;
    if ((*v16 & 0xC000000000000001) != 0)
    {
      if (v37 < 0)
      {
        v38 = *v16;
      }

      v39 = *v16;

      v40 = __CocoaDictionary.count.getter();

      if (v40)
      {
LABEL_18:
        v41 = v0[83];
        UUID.init()();
        swift_beginAccess();
        v42 = *v16;
        if ((v42 & 0xC000000000000001) != 0)
        {

          v43 = __CocoaDictionary.count.getter();
          if (v43)
          {
LABEL_20:
            v44 = sub_1003A8AC8(v43, 0);
            v45 = sub_1003A95D8((v0 + 57), v44 + 4, v43, v42);
            v46 = v0[57];
            v47 = v0[58];
            v48 = v0[59];
            v49 = v0[60];
            v50 = v0[61];
            sub_1000128F8();
            if (v45 != v43)
            {
LABEL_33:
              __break(1u);
              return daemon.getter();
            }

            goto LABEL_24;
          }
        }

        else
        {
          v43 = *(v42 + 16);

          if (v43)
          {
            goto LABEL_20;
          }
        }

        swift_bridgeObjectRelease_n();
        v44 = _swiftEmptyArrayStorage;
LABEL_24:
        v51 = v0[77];
        (*(v0[82] + 32))(v51, v0[83], v0[81]);
        v52 = type metadata accessor for CloudKitChangeSet(0);
        *(v51 + *(v52 + 20)) = v44;
        *(v51 + *(v52 + 24)) = v36;
        (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
LABEL_25:
        v28 = *(v0[108] + 112);
        v0[135] = v28;
        v27 = sub_1003BC878;
        goto LABEL_26;
      }
    }

    else if (*(v37 + 16))
    {
      goto LABEL_18;
    }

    v53 = v0[77];

    v54 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    goto LABEL_25;
  }

  sub_10001F280(v14 + 32, (v0 + 52));
  v18 = v0[55];
  v19 = v0[56];
  v20 = sub_1000035D0(v0 + 52, v18);
  sub_100EC4898(v20, v18, v19);
  if (!v13)
  {
    sub_100007BAC(v0 + 52);
    if (v17 != 1)
    {
      v31 = v14 + 72;
      v32 = 1;
      while (v32 < *(v14 + 16))
      {
        sub_10001F280(v31, (v0 + 52));
        v33 = v0[55];
        v34 = v0[56];
        v35 = sub_1000035D0(v0 + 52, v33);
        sub_100EC4898(v35, v33, v34);
        ++v32;
        sub_100007BAC(v0 + 52);
        v31 += 40;
        if (v17 == v32)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  v21 = v0[121];
  v22 = v0[120];
  v23 = v0[119];
  v24 = v0[118];

  swift_setDeallocating();
  v25 = *(inited + 16);

  v26 = *(inited + 24);

  sub_100007BAC(v0 + 52);

  v0[133] = v13;
  v27 = sub_1003BC7A8;
  v28 = 0;
LABEL_26:

  return _swift_task_switch(v27, v28, 0);
}

uint64_t sub_1003BB6CC()
{
  v1 = v0[110];

  v0[123] = v0[112];

  return _swift_task_switch(sub_1003BB73C, 0, 0);
}

uint64_t sub_1003BB73C()
{
  v1 = v0[108];
  v2 = v0[94];
  v3 = v0[91];

  v4 = v0[123];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[77];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BB80C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 992);
  v5 = *v1;
  v3[125] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[126] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019420(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_1003BB9C0;
  v10 = v3[90];
  v11 = v3[89];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BB9C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1008);
  v6 = *v2;
  v4[127] = a1;

  v7 = v4[125];
  if (v1)
  {
    v8 = v4[108];

    return _swift_task_switch(sub_1003BBCC0, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[128] = v9;
    *v9 = v6;
    v9[1] = sub_1003BBB78;

    return sub_1010D55E4();
  }
}

uint64_t sub_1003BBB78()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v11 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v4 = v2[120];
    v5 = v2[119];
    v6 = v2[118];
    v7 = v2[108];

    v8 = sub_1003BC4F0;
    v9 = v7;
  }

  else
  {
    v9 = v2[108];
    v8 = sub_1003BC0D4;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1003BBCC0()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[82];
    v4 = v0[78];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v46 = v3;
    v48 = *(v4 + 72);
    v6 = (v3 + 32);
    do
    {
      v50 = v2;
      v7 = v0[84];
      v8 = v0[81];
      v9 = v0[80];
      v10 = v0[79];
      sub_1000D2A70(v5, v9, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v9, v10, &qword_101697700, &unk_10139FB90);
      v11 = *v6;
      (*v6)(v7, v10, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[84];
      v15 = v0[81];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v11(_swiftEmptyArrayStorage + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v13, v14, v15);
      v5 += v48;
      v2 = v50 - 1;
    }

    while (v50 != 1);
  }

  v16 = v0[119];

  v17 = v0[118];
  v18 = sub_10000954C(_swiftEmptyArrayStorage);

  v19 = *(v17 + 16);
  if (v19)
  {
    v45 = v18;
    v20 = v0[118];
    v21 = v0[82];
    v22 = v0[78];
    sub_101123D4C(0, v19, 0);
    v23 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v47 = v21;
    v49 = *(v22 + 72);
    v24 = (v21 + 32);
    do
    {
      v51 = v19;
      v25 = v0[85];
      v26 = v0[81];
      v27 = v0[80];
      v28 = v0[79];
      sub_1000D2A70(v23, v27, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v27, v28, &qword_101697700, &unk_10139FB90);
      v29 = *v24;
      (*v24)(v25, v28, v26);
      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        sub_101123D4C(v30 > 1, v31 + 1, 1);
      }

      v32 = v0[85];
      v33 = v0[81];
      _swiftEmptyArrayStorage[2] = v31 + 1;
      v29(_swiftEmptyArrayStorage + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, v32, v33);
      v23 += v49;
      --v19;
    }

    while (v51 != 1);
    v34 = v0[120];
    v35 = v0[118];

    v18 = v45;
  }

  else
  {
    v36 = v0[120];
    v37 = v0[118];
  }

  v38 = sub_1003ADDE8(_swiftEmptyArrayStorage, v18);
  v0[130] = v38;

  v0[76] = v38;
  v39 = async function pointer to Sequence.asyncForEach(_:)[1];
  v40 = swift_task_alloc();
  v0[131] = v40;
  v41 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v42 = sub_1003BD16C();
  *v40 = v0;
  v40[1] = sub_1003BC560;
  v43 = v0[108];

  return Sequence.asyncForEach(_:)(&unk_10139FBA0, v43, v41, v42);
}

uint64_t sub_1003BC0D4()
{
  v1 = v0[127];

  v2 = v0[119];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[82];
    v5 = v0[78];
    sub_101123D4C(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v47 = v4;
    v49 = *(v5 + 72);
    v7 = (v4 + 32);
    do
    {
      v51 = v3;
      v8 = v0[84];
      v9 = v0[81];
      v10 = v0[80];
      v11 = v0[79];
      sub_1000D2A70(v6, v10, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v10, v11, &qword_101697700, &unk_10139FB90);
      v12 = *v7;
      (*v7)(v8, v11, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_101123D4C(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[84];
      v16 = v0[81];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v12(_swiftEmptyArrayStorage + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v14, v15, v16);
      v6 += v49;
      v3 = v51 - 1;
    }

    while (v51 != 1);
  }

  v17 = v0[119];

  v18 = v0[118];
  v19 = sub_10000954C(_swiftEmptyArrayStorage);

  v20 = *(v18 + 16);
  if (v20)
  {
    v46 = v19;
    v21 = v0[118];
    v22 = v0[82];
    v23 = v0[78];
    sub_101123D4C(0, v20, 0);
    v24 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v48 = v22;
    v50 = *(v23 + 72);
    v25 = (v22 + 32);
    do
    {
      v52 = v20;
      v26 = v0[85];
      v27 = v0[81];
      v28 = v0[80];
      v29 = v0[79];
      sub_1000D2A70(v24, v28, &qword_101697700, &unk_10139FB90);
      sub_1000D2AD8(v28, v29, &qword_101697700, &unk_10139FB90);
      v30 = *v25;
      (*v25)(v26, v29, v27);
      v32 = _swiftEmptyArrayStorage[2];
      v31 = _swiftEmptyArrayStorage[3];
      if (v32 >= v31 >> 1)
      {
        sub_101123D4C(v31 > 1, v32 + 1, 1);
      }

      v33 = v0[85];
      v34 = v0[81];
      _swiftEmptyArrayStorage[2] = v32 + 1;
      v30(_swiftEmptyArrayStorage + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32, v33, v34);
      v24 += v50;
      --v20;
    }

    while (v52 != 1);
    v35 = v0[120];
    v36 = v0[118];

    v19 = v46;
  }

  else
  {
    v37 = v0[120];
    v38 = v0[118];
  }

  v39 = sub_1003ADDE8(_swiftEmptyArrayStorage, v19);
  v0[130] = v39;

  v0[76] = v39;
  v40 = async function pointer to Sequence.asyncForEach(_:)[1];
  v41 = swift_task_alloc();
  v0[131] = v41;
  v42 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v43 = sub_1003BD16C();
  *v41 = v0;
  v41[1] = sub_1003BC560;
  v44 = v0[108];

  return Sequence.asyncForEach(_:)(&unk_10139FBA0, v44, v42, v43);
}

uint64_t sub_1003BC4F0()
{
  v1 = v0[127];

  v0[133] = v0[129];

  return _swift_task_switch(sub_1003BC7A8, 0, 0);
}

uint64_t sub_1003BC560()
{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v8 = *v1;
  *(*v1 + 1056) = v0;

  v4 = *(v2 + 1040);
  if (v0)
  {
    v5 = *(v2 + 864);

    v6 = sub_1003BC784;
  }

  else
  {
    v5 = *(v2 + 864);

    v6 = sub_1003BC68C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BC6A8()
{
  v1 = v0[108];
  v2 = v0[94];
  v3 = v0[91];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[77];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003BC7A8()
{
  v1 = v0[108];
  v2 = v0[94];
  v3 = v0[91];

  v4 = v0[133];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[77];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BC8A0()
{
  v1 = v0[136];
  v2 = v0[77];
  v3 = swift_task_alloc();
  v0[137] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[138] = v5;
  *v5 = v0;
  v5[1] = sub_1003BC998;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_1003BC998()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v4 = *v1;
  v2[139] = v0;

  v5 = v2[137];
  if (v0)
  {
    v6 = v2[121];
    v7 = v2[119];
    v8 = v2[118];

    v9 = sub_1003BCFCC;
  }

  else
  {

    v9 = sub_1003BCAF8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003BCB14()
{
  v1 = v0[122];
  v2 = v0[134] + 1;
  sub_10000B3A8(v0[77], &qword_1016975C8, &qword_10138C1F0);
  if (v2 == v1)
  {
    v3 = v0[121];

    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    v0[124] = v5;
    *v5 = v0;
    v5[1] = sub_1003BB80C;

    return daemon.getter();
  }

  v6 = v0[139];
  v7 = v0[134] + 1;
  v0[134] = v7;
  v8 = v0[121];
  if (v7 >= *(v8 + 16))
  {
    goto LABEL_32;
  }

  v9 = *(v8 + 8 * v7 + 32);
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = &_swiftEmptyDictionarySingleton;
  *(inited + 24) = &_swiftEmptyDictionarySingleton;
  v11 = (inited + 24);
  v12 = *(v9 + 16);

  if (!v12)
  {
LABEL_13:

    swift_beginAccess();
    v29 = *(inited + 16);
    if (*(v29 + 16))
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v30 = *v11;
    if ((*v11 & 0xC000000000000001) != 0)
    {
      if (v30 < 0)
      {
        v31 = *v11;
      }

      v32 = *v11;

      v33 = __CocoaDictionary.count.getter();

      if (v33)
      {
LABEL_18:
        v34 = v0[83];
        UUID.init()();
        swift_beginAccess();
        v35 = *v11;
        if ((v35 & 0xC000000000000001) != 0)
        {

          v36 = __CocoaDictionary.count.getter();
          if (v36)
          {
LABEL_20:
            v37 = sub_1003A8AC8(v36, 0);
            v38 = sub_1003A95D8((v0 + 57), v37 + 4, v36, v35);
            v39 = v0[57];
            v40 = v0[58];
            v41 = v0[59];
            v42 = v0[60];
            v43 = v0[61];
            sub_1000128F8();
            if (v38 != v36)
            {
LABEL_33:
              __break(1u);
              return daemon.getter();
            }

            goto LABEL_24;
          }
        }

        else
        {
          v36 = *(v35 + 16);

          if (v36)
          {
            goto LABEL_20;
          }
        }

        swift_bridgeObjectRelease_n();
        v37 = _swiftEmptyArrayStorage;
LABEL_24:
        v44 = v0[77];
        (*(v0[82] + 32))(v44, v0[83], v0[81]);
        v45 = type metadata accessor for CloudKitChangeSet(0);
        *(v44 + *(v45 + 20)) = v37;
        *(v44 + *(v45 + 24)) = v29;
        (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
LABEL_25:
        v23 = *(v0[108] + 112);
        v0[135] = v23;
        v22 = sub_1003BC878;
        goto LABEL_26;
      }
    }

    else if (*(v30 + 16))
    {
      goto LABEL_18;
    }

    v46 = v0[77];

    v47 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    goto LABEL_25;
  }

  sub_10001F280(v9 + 32, (v0 + 52));
  v13 = v0[55];
  v14 = v0[56];
  v15 = sub_1000035D0(v0 + 52, v13);
  sub_100EC4898(v15, v13, v14);
  if (!v6)
  {
    sub_100007BAC(v0 + 52);
    if (v12 != 1)
    {
      v24 = v9 + 72;
      v25 = 1;
      while (v25 < *(v9 + 16))
      {
        sub_10001F280(v24, (v0 + 52));
        v26 = v0[55];
        v27 = v0[56];
        v28 = sub_1000035D0(v0 + 52, v26);
        sub_100EC4898(v28, v26, v27);
        ++v25;
        sub_100007BAC(v0 + 52);
        v24 += 40;
        if (v12 == v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[118];

  swift_setDeallocating();
  v20 = *(inited + 16);

  v21 = *(inited + 24);

  sub_100007BAC(v0 + 52);

  v0[133] = v6;
  v22 = sub_1003BC7A8;
  v23 = 0;
LABEL_26:

  return _swift_task_switch(v22, v23, 0);
}

uint64_t sub_1003BCFE8()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 864);

  return _swift_task_switch(sub_1003BD054, v2, 0);
}

uint64_t sub_1003BD054()
{
  sub_10000B3A8(v0[77], &qword_1016975C8, &qword_10138C1F0);
  v0[133] = v0[139];

  return _swift_task_switch(sub_1003BC7A8, 0, 0);
}

uint64_t sub_1003BD0D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_101289A94(a1, v1);
}

unint64_t sub_1003BD16C()
{
  result = qword_1016AF940;
  if (!qword_1016AF940)
  {
    sub_1000BC580(&qword_1016AF8E0, &qword_101393130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF940);
  }

  return result;
}

uint64_t sub_1003BD1D0()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_1003BD260;

  return daemon.getter();
}

uint64_t sub_1003BD260(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v12 = *v1;
  v3[44] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[45] = v6;
  v7 = type metadata accessor for Daemon();
  v3[46] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[47] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003BD440;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003BD440(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v8 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = sub_1003BD938;
  }

  else
  {
    v6 = v3[44];

    v5 = sub_1003BD55C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BD55C()
{
  v1 = v0[48];
  v0[50] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[51] = v2;

  swift_defaultActor_initialize();
  v0[52] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_1003BD650;

  return daemon.getter();
}

uint64_t sub_1003BD650(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v5 = *v1;
  v3[54] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[55] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[56] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003BD808;
  v10 = v3[47];
  v11 = v3[46];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BD808(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = sub_1003BDD2C;
  }

  else
  {
    v8 = *(v4 + 432);

    *(v4 + 464) = a1;
    v7 = sub_1003BD99C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003BD938()
{
  v1 = v0[44];

  v2 = v0[49];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003BD99C()
{
  v1 = v0[58];
  v0[11] = v0[56];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_1003BDA44;

  return daemon.getter();
}

uint64_t sub_1003BDA44(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v5 = *v1;
  v3[60] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[61] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[62] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003BDBFC;
  v10 = v3[47];
  v11 = v3[46];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BDBFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = sub_1003BE2D0;
  }

  else
  {
    v8 = *(v4 + 480);

    *(v4 + 512) = a1;
    v7 = sub_1003BDDA8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003BDD2C()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[48];

  v4 = v0[57];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BDDA8()
{
  v1 = *(v0 + 496);
  v27 = v1;
  v28 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v29 = *(v0 + 384);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v30 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v30;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v28;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v31;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v32;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 520) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v26 = swift_task_alloc();
  (v7)(v26, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v26;
  v22 = *v15;
  v23 = *v20;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 224) = v21;
  *(v0 + 288) = v27;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v22;
  *(v0 + 328) = v31;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v23;

  swift_defaultActor_initialize();
  *(v9 + 112) = v29;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  v24 = swift_task_alloc();
  *(v0 + 528) = v24;
  *v24 = v0;
  v24[1] = sub_1003BE1BC;

  return sub_10127C728();
}

uint64_t sub_1003BE1BC()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_1003BE3D0;
  }

  else
  {
    v3 = sub_1003BE354;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003BE2D0()
{
  v1 = v0[60];
  v2 = v0[51];
  v3 = v0[48];

  sub_100007BAC(v0 + 8);
  v4 = v0[63];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BE354()
{
  v1 = v0[65];
  v2 = v0[51];
  v3 = v0[48];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003BE3D0()
{
  v1 = v0[65];
  v2 = v0[51];
  v3 = v0[48];

  v4 = v0[67];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BE44C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A72CC(v3, v4, v5);
}

unint64_t sub_1003BE54C()
{
  result = qword_10169EF10;
  if (!qword_10169EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EF10);
  }

  return result;
}

uint64_t sub_1003BE5A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_1003BE5C0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(type metadata accessor for MemberPeerTrust() - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v4 = *(type metadata accessor for MemberSharingCircle() - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v2[20] = v6;
  *v6 = v2;
  v6[1] = sub_1003BE714;

  return daemon.getter();
}

uint64_t sub_1003BE714(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  v3[21] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[22] = v6;
  v7 = type metadata accessor for Daemon();
  v3[23] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[24] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003BE8F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003BE8F4(uint64_t a1)
{
  v3 = *(*v2 + 176);
  v4 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003BED50, 0, 0);
  }

  else
  {
    v5 = v4[21];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[27] = v7;
    *v7 = v4;
    v7[1] = sub_1003BEA68;

    return daemon.getter();
  }
}

uint64_t sub_1003BEA68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;
  v3[28] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[29] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[30] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003BEC20;
  v10 = v3[24];
  v11 = v3[23];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BEC20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_1003BF1D0;
  }

  else
  {
    v8 = *(v4 + 224);

    *(v4 + 256) = a1;
    v7 = sub_1003BEDC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003BED50()
{
  v1 = v0[21];

  v2 = v0[26];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BEDC8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10164F068;
  *(v0 + 16) = v1;
  type metadata accessor for ShareRequestUseCase();
  v4 = swift_allocObject();
  *(v0 + 264) = v4;
  v5 = sub_10015049C(v0 + 16, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v2);
  *(v0 + 56) = *v8;
  *(v0 + 80) = v2;
  *(v0 + 88) = &off_10164F068;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  sub_10000A748((v0 + 56), v4 + 120);
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 104);
  sub_10002FDC4(*(v0 + 96), v9, type metadata accessor for MemberSharingCircle);
  sub_10002FDC4(v15, v11, type metadata accessor for MemberPeerTrust);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v10 + *(v14 + 80) + v16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v0 + 272) = v18;
  *(v18 + 16) = v4;
  sub_1003CBBBC(v9, v18 + v16, type metadata accessor for MemberSharingCircle);
  sub_1003CBBBC(v11, v18 + v17, type metadata accessor for MemberPeerTrust);
  v19 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v22 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v20 = swift_task_alloc();
  *(v0 + 280) = v20;
  *v20 = v0;
  v20[1] = sub_1003BF0A0;

  return v22(&unk_10139FF80, v18);
}

uint64_t sub_1003BF0A0()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1003BF2D0;
  }

  else
  {
    v4 = sub_1003BF254;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003BF1D0()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[31];
  v4 = v0[19];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003BF254()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003BF2D0()
{
  v1 = v0[33];

  v2 = v0[36];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BF348(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1003BF3E0;

  return daemon.getter();
}

uint64_t sub_1003BF3E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003BF5BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003BF5BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v8 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1003BF928;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1003BF6D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BF6D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;

  *(v0 + 80) = sub_1003AB3B8(v3, v1, v2, type metadata accessor for ShareKeysUploadUseCase);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1003BF814;
  v6 = *(v0 + 104);
  v7 = *(v0 + 16);

  return sub_1007256F8(v7, v6);
}

uint64_t sub_1003BF814()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1003BFA04;
  }

  else
  {
    v3 = sub_1003BF98C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003BF928()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003BF98C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003BFA04()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003BFA7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_1003BFB10;

  return daemon.getter();
}

uint64_t sub_1003BFB10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003BFCEC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003BFCEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1003CC304;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_1003BFE08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003BFE08()
{
  v1 = v0[12];
  v2 = v0[8];
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  v0[14] = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  sub_10001F280(v2, (v0 + 2));
  v5 = v0[5];
  v6 = sub_10015049C((v0 + 2), v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  v10 = *v9;

  v0[15] = sub_1003AB3B8(v11, v1, v10, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 2);

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1003BFFDC;
  v13 = v0[7];

  return sub_1007C6E34(v13);
}

uint64_t sub_1003BFFDC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1003CC310;
  }

  else
  {
    v3 = sub_1003CC2C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003C00F0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_1003C0184;

  return daemon.getter();
}

uint64_t sub_1003C0184(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C0360;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C0360(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1003C0764;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_1003C047C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C047C()
{
  v1 = v0[12];
  v2 = v0[8];
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  v0[14] = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  sub_10001F280(v2, (v0 + 2));
  v5 = v0[5];
  v6 = sub_10015049C((v0 + 2), v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  v10 = *v9;

  v0[15] = sub_1003AB3B8(v11, v1, v10, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 2);

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1003C0650;
  v13 = v0[7];

  return sub_1007CFB78(v13);
}

uint64_t sub_1003C0650()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1003C0840;
  }

  else
  {
    v3 = sub_1003C07C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003C0764()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C07C8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C0840()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003C08B8(uint64_t a1)
{
  v1[6] = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_1003C09F4;

  return sub_100111F58();
}

uint64_t sub_1003C09F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_1003C0B50, 0, 0);
  }
}

uint64_t sub_1003C0B50()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000D2A70(v0[6], v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[7], &qword_1016980D0, &unk_10138F3B0);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1003C0E78;
    v5 = v0[12];

    return sub_1001124D0();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1003C0CD0;
    v8 = v0[12];
    v9 = v0[10];

    return sub_10011407C(v9);
  }
}

uint64_t sub_1003C0CD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 104);
  v6 = *v1;

  return _swift_task_switch(sub_1003C0DD0, 0, 0);
}

uint64_t sub_1003C0DD0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v5 = v0[3];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_1003C0E78(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 32) = v1;
  *(v3 + 40) = a1;
  v4 = *(v2 + 112);
  v6 = *v1;

  return _swift_task_switch(sub_1003C0F78, 0, 0);
}

uint64_t sub_1003C0F78()
{
  v1 = v0[12];

  v2 = v0[5];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1003C0FF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1003C108C;

  return daemon.getter();
}

uint64_t sub_1003C108C(uint64_t a1)
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
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C1268;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C1268(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1003C1628;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1003C1398;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C1398()
{
  v1 = v0[7];
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  v0[8] = v2;
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v6 = v3;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1003C150C;

  return (v9)(v0 + 12, &unk_10139FF68, v4, &type metadata for Bool);
}

uint64_t sub_1003C150C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1003C16F8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1003C1690;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C1628()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1003C1690()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1003C16F8()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1003C1768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1003C1800;

  return daemon.getter();
}

uint64_t sub_1003C1800(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C19DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C19DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1003C1DAC;
  }

  else
  {
    v8 = *(v4 + 48);

    *(v4 + 72) = a1;
    v7 = sub_1003C1B0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C1B0C()
{
  v1 = *(v0 + 72);
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  *(v0 + 80) = v2;
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  v9 = *(v0 + 16);
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  v5 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = v9;

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1003C1C90;

  return v10(&unk_10139FF50, v4);
}

uint64_t sub_1003C1C90()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1003C1E74;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003C1E10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C1DAC()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C1E10()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003C1E74()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C1EE0(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for UUID();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 + 64);
  *(v2 + 48) = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *v6 = v2;
  v6[1] = sub_1003C1FDC;

  return daemon.getter();
}

uint64_t sub_1003C1FDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C21B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C21B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1003C2488;
  }

  else
  {
    v8 = *(v4 + 64);

    *(v4 + 88) = a1;
    v7 = sub_1003C22E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C22E8()
{
  v1 = *(v0 + 88);
  type metadata accessor for ImportedShareUseCase();
  swift_allocObject();
  v2 = sub_1001E87D4(v1);
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 96);
  (*(v6 + 16))(v3, *(v0 + 16), v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = v8 + v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v8, v3, v5);
  *(v10 + v9) = v7;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003C2488()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1003C24F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003C25C4, 0, 0);
}

uint64_t sub_1003C25C4()
{
  sub_10001F280(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1003C2664;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C2664(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C2A74;
  }

  else
  {
    v5 = sub_1003C2790;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C2790()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  (*(v5 + 16))(v2, v0[7], v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[18] = v10;
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v8, v2, v4);
  v11 = (v10 + v9);
  *v11 = v6;
  v11[1] = v7;
  v12 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1003C2944;

  return v15(&unk_10139FF30, v10);
}

uint64_t sub_1003C2944()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1003C2B48;
  }

  else
  {
    v4 = sub_1003C2AD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C2A74()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C2AD8()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C2B48()
{
  v1 = v0[16];

  v2 = v0[20];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C2BB4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C2C7C, 0, 0);
}

uint64_t sub_1003C2C7C()
{
  sub_10001F280(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1003C2D1C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C2D1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C3100;
  }

  else
  {
    v5 = sub_1003C2E48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C2E48()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1003C2FD0;

  return v10(&unk_10139FF18, v6);
}

uint64_t sub_1003C2FD0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1003C31D4;
  }

  else
  {
    v4 = sub_1003C3164;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C3100()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C3164()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C31D4()
{
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C3260()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1003C3304;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C3304(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C3688;
  }

  else
  {
    v5 = sub_1003C3430;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C3430()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[7];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v7 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1003C356C;

  return v7(&unk_10139FEC0, v3);
}

uint64_t sub_1003C356C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1003C3704;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003C36A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C36A0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003C3704()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C3774(uint64_t a1)
{
  v1[10] = a1;
  v2 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v1[11] = v2;
  v1[12] = *(v2 + 64);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003C3838, 0, 0);
}

uint64_t sub_1003C3838()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C38DC;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C38DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[14];
  v8 = *v2;
  v4[15] = v1;

  sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v6 = sub_1003C3B6C;
  }

  else
  {
    v6 = sub_1003C3A10;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003C3A10()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[13];
  v3 = v0[11];
  sub_10002FDC4(v0[10], v2, type metadata accessor for OwnerSharingCircle);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_1003CBBBC(v2, v5 + v4, type metadata accessor for OwnerSharingCircle);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003C3B6C()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1003C3BD0(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C3CA4, 0, 0);
}

uint64_t sub_1003C3CA4()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1003C3D48;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C3D48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C4128;
  }

  else
  {
    v5 = sub_1003C3E74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C3E74()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  (*(v3 + 16))(v2, v0[7], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v10 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1003C400C;

  return (v10)(v0 + 19, &unk_10139FEA8, v6, &type metadata for Bool);
}

uint64_t sub_1003C400C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1003C447C;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1003C4404;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C4128()
{
  v26 = v0;
  v1 = v0[15];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v23 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not verify delegation meta-data for %{private,mask.hash}s, %{public}@", v13, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[11];
  v19 = v0[12];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_1003C4404()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 152);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_1003C447C()
{
  v28 = v0;
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[18];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A560);
  (*(v6 + 16))(v4, v7, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not verify delegation meta-data for %{private,mask.hash}s, %{public}@", v15, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[11];
  v21 = v0[12];

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_1003C476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v4[11] = v5;
  v4[12] = *(v5 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003C4834, 0, 0);
}

uint64_t sub_1003C4834()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C48D8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C48D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v8 = *v2;

  if (v1)
  {

    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);
    v6 = sub_1003C4BC8;
  }

  else
  {
    *(v4 + 120) = a1;
    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);
    v6 = sub_1003C4A30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003C4A30()
{
  v1 = v0[15];
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  sub_10002FDC4(v0[7], v2, type metadata accessor for OwnerSharingCircle);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_1003CBBBC(v2, v10 + v8, type metadata accessor for OwnerSharingCircle);
  v11 = (v10 + v9);
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;

  sub_1003CB5AC(v7, v6, v4);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003C4BC8()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  sub_10002FDC4(v0[7], v1, type metadata accessor for OwnerSharingCircle);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_1003CBBBC(v1, v9 + v7, type metadata accessor for OwnerSharingCircle);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  sub_1003CB5AC(v6, v5, v3);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003C4D3C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C4E04, 0, 0);
}

uint64_t sub_1003C4E04()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1003C4EA8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C4EA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C528C;
  }

  else
  {
    v5 = sub_1003C4FD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C4FD4()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1003C515C;

  return v10(&unk_10139FE78, v6);
}

uint64_t sub_1003C515C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1003C5360;
  }

  else
  {
    v4 = sub_1003C52F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C528C()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C52F0()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C5360()
{
  v1 = v0[13];

  v2 = v0[17];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C53CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1003C5464;

  return daemon.getter();
}

uint64_t sub_1003C5464(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C5640;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C5640(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v8 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1003CC2E8;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1003C575C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C575C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;

  *(v0 + 80) = sub_1003AB3B8(v3, v1, v2, type metadata accessor for ShareKeysUploadUseCase);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1003C5898;
  v6 = *(v0 + 104);
  v7 = *(v0 + 16);

  return sub_100725B0C(v7, v6);
}

uint64_t sub_1003C5898()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1003CC2AC;
  }

  else
  {
    v3 = sub_1003CC2C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003C59C8()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003C5A6C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C5A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003CC2FC;
  }

  else
  {
    v5 = sub_1003C5B98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C5B98()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1003C5C98;
  v4 = *(v0 + 64);

  return v6(&unk_10139FEE0, v4);
}

uint64_t sub_1003C5C98()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1003C5DB4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1003CC324;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C5DB4()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C5E1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 768) = a3;
  *(v3 + 472) = a1;
  *(v3 + 480) = a2;
  v4 = type metadata accessor for UUID();
  *(v3 + 488) = v4;
  v5 = *(v4 - 8);
  *(v3 + 496) = v5;
  *(v3 + 504) = *(v5 + 64);
  *(v3 + 512) = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v3 + 520) = v7;
  *v7 = v3;
  v7[1] = sub_1003C5F18;

  return daemon.getter();
}

uint64_t sub_1003C5F18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 520);
  v12 = *v1;
  v3[66] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[67] = v6;
  v7 = type metadata accessor for Daemon();
  v3[68] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[69] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C60F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C60F8(uint64_t a1)
{
  v3 = *(*v2 + 536);
  v4 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C6548, 0, 0);
  }

  else
  {
    v5 = v4[66];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[72] = v7;
    *v7 = v4;
    v7[1] = sub_1003C6270;

    return daemon.getter();
  }
}

uint64_t sub_1003C6270(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v5 = *v1;
  v3[73] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[74] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[75] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003C6428;
  v10 = v3[69];
  v11 = v3[68];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C6428(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v8 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
    v5 = sub_1003C69D8;
  }

  else
  {
    v6 = v3[73];

    v5 = sub_1003C65B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C6548()
{
  v1 = v0[66];

  v2 = v0[71];
  v3 = v0[64];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C65B4()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[70];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[78] = v4;
  v5 = swift_allocObject();
  v0[79] = v5;

  swift_defaultActor_initialize();
  v0[80] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v3;
  v0[17] = v2;
  v0[18] = &off_10164F7C0;
  v0[14] = v1;
  v0[22] = v4;
  v0[23] = &off_10164E4F0;
  v0[19] = v5;
  v7 = async function pointer to daemon.getter[1];

  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_1003C66F0;

  return daemon.getter();
}

uint64_t sub_1003C66F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 648);
  v5 = *v1;
  v3[82] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[83] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[84] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003C68A8;
  v10 = v3[69];
  v11 = v3[68];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C68A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *v2;
  *(*v2 + 680) = v1;

  if (v1)
  {
    v7 = sub_1003C6E18;
  }

  else
  {
    v8 = *(v4 + 656);

    *(v4 + 688) = a1;
    v7 = sub_1003C6A50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C69D8()
{
  v1 = v0[73];
  v2 = v0[70];

  v3 = v0[77];
  v4 = v0[64];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003C6A50()
{
  v1 = v0[86];
  v2 = v0[80];
  v0[27] = v0[84];
  v0[28] = &off_10164F068;
  v0[24] = v1;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v0[5] = v2;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v3;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[87] = v5;
  *v5 = v0;
  v5[1] = sub_1003C6B34;

  return daemon.getter();
}

uint64_t sub_1003C6B34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 696);
  v5 = *v1;
  v3[88] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[89] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService);
  *v7 = v5;
  v7[1] = sub_1003C6CE8;
  v10 = v3[69];
  v11 = v3[68];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C6CE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 712);
  v6 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v7 = sub_1003C7714;
  }

  else
  {
    v8 = *(v4 + 704);

    *(v4 + 728) = a1;
    v7 = sub_1003C6EC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C6E18()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[70];

  sub_100007BAC(v0 + 19);
  sub_100007BAC(v0 + 14);
  v5 = v0[85];
  v6 = v0[64];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003C6EC0()
{
  v1 = v0;
  v60 = *(v0 + 728);
  v2 = *(v0 + 672);
  v52 = *(v0 + 640);
  v3 = *(v0 + 624);
  v51 = v3;
  v49 = v2;
  v50 = *(v0 + 600);
  v58 = *(v0 + 560);
  v4 = *(v0 + 136);
  sub_10015049C(v0 + 112, v4);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v57 = swift_task_alloc();
  (*(v5 + 16))();
  v7 = *(v0 + 176);
  sub_10015049C(v1 + 152, *(v1 + 176));
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v56 = swift_task_alloc();
  (*(v8 + 16))();
  v10 = *(v0 + 216);
  sub_10015049C(v1 + 192, *(v1 + 216));
  v11 = *(v10 - 8);
  v12 = *(v11 + 64) + 15;
  v55 = swift_task_alloc();
  (*(v11 + 16))();
  v13 = *(v0 + 40);
  sub_10015049C(v1 + 16, *(v1 + 40));
  v14 = *(v13 - 8);
  v15 = *(v14 + 64) + 15;
  v54 = swift_task_alloc();
  (*(v14 + 16))();
  v16 = *v57;
  v17 = *v56;
  v18 = *v55;
  *(v0 + 64) = *v54;
  *(v0 + 256) = v50;
  *(v0 + 264) = &off_10164F7C0;
  *(v0 + 232) = v16;
  *(v0 + 296) = v3;
  *(v0 + 304) = &off_10164E4F0;
  *(v0 + 272) = v17;
  *(v0 + 312) = v18;
  *(v0 + 336) = v2;
  *(v0 + 344) = &off_10164F068;
  *(v0 + 88) = v52;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  type metadata accessor for SelfBeaconingShareUseCase();
  v19 = swift_allocObject();
  *(v0 + 736) = v19;
  v20 = sub_10015049C(v0 + 232, v50);
  v21 = *(v50 - 8);
  v22 = *(v21 + 64) + 15;
  v53 = swift_task_alloc();
  (*(v21 + 16))(v53, v20, v50);
  v23 = *(v0 + 296);
  v24 = sub_10015049C(v1 + 272, *(v1 + 296));
  v25 = *(v23 - 8);
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  (*(v25 + 16))(v27, v24, v23);
  v28 = *(v0 + 336);
  v29 = sub_10015049C(v1 + 312, *(v1 + 336));
  v30 = *(v28 - 8);
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  (*(v30 + 16))(v32, v29, v28);
  v33 = *v53;
  v34 = *v27;
  v35 = *v32;
  *(v0 + 376) = v50;
  *(v0 + 384) = &off_10164F7C0;
  *(v0 + 352) = v33;
  *(v0 + 416) = v51;
  *(v0 + 424) = &off_10164E4F0;
  *(v0 + 392) = v34;
  *(v0 + 456) = v49;
  *(v0 + 464) = &off_10164F068;
  *(v0 + 432) = v35;

  swift_defaultActor_initialize();
  sub_1000BB3F0((v0 + 64), (v19 + 112));
  sub_10000A748((v0 + 392), v19 + 248);
  *(v19 + 160) = v58;
  sub_10000A748((v0 + 352), v19 + 168);
  sub_10000A748((v0 + 432), v19 + 208);
  *(v19 + 288) = v60;
  sub_100007BAC((v0 + 312));

  sub_100007BAC((v0 + 272));

  sub_100007BAC((v0 + 232));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 192));

  sub_100007BAC((v0 + 152));

  sub_100007BAC((v0 + 112));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 504);
  v36 = *(v0 + 512);
  v38 = *(v1 + 488);
  v39 = *(v1 + 496);
  v40 = *(v1 + 768);
  v41 = *(v1 + 480);
  (*(v39 + 16))(*(v1 + 512), *(v1 + 472), v38);
  v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v43 = (v37 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v1 + 744) = v44;
  *(v44 + 16) = v19;
  (*(v39 + 32))(v44 + v42, v36, v38);
  v45 = v44 + v43;
  *v45 = v41;
  *(v45 + 8) = v40;
  v46 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v59 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v47 = swift_task_alloc();
  *(v1 + 752) = v47;
  *v47 = v1;
  v47[1] = sub_1003C75E4;

  return v59(&unk_10139FD78, v44);
}

uint64_t sub_1003C75E4()
{
  v2 = *(*v1 + 752);
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = sub_1003C7868;
  }

  else
  {
    v4 = sub_1003C77CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C7714()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[70];

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);
  sub_100007BAC(v0 + 14);
  v5 = v0[90];
  v6 = v0[64];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003C77CC()
{
  v1 = v0[92];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[70];
  v5 = v0[64];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003C7868()
{
  v1 = v0[92];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[70];

  v5 = v0[95];
  v6 = v0[64];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003C7900(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(type metadata accessor for MemberSharingCircle() - 8);
  v1[13] = v2;
  v1[14] = *(v2 + 64);
  v1[15] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_1003C79F4;

  return daemon.getter();
}

uint64_t sub_1003C79F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  v3[17] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[18] = v6;
  v7 = type metadata accessor for Daemon();
  v3[19] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[20] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C7BD4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C7BD4(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C8030, 0, 0);
  }

  else
  {
    v5 = v4[17];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[23] = v7;
    *v7 = v4;
    v7[1] = sub_1003C7D48;

    return daemon.getter();
  }
}

uint64_t sub_1003C7D48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;
  v3[24] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[25] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[26] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003C7F00;
  v10 = v3[20];
  v11 = v3[19];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C7F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_1003C8444;
  }

  else
  {
    v8 = *(v4 + 192);

    *(v4 + 224) = a1;
    v7 = sub_1003C809C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C8030()
{
  v1 = v0[17];

  v2 = v0[22];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C809C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 168);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_10164F068;
  *(v0 + 16) = v1;
  type metadata accessor for ShareRequestUseCase();
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  v5 = sub_10015049C(v0 + 16, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v2);
  *(v0 + 56) = *v8;
  *(v0 + 80) = v2;
  *(v0 + 88) = &off_10164F068;
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  sub_10000A748((v0 + 56), v4 + 120);
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  sub_10002FDC4(*(v0 + 96), v9, type metadata accessor for MemberSharingCircle);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v0 + 240) = v12;
  *(v12 + 16) = v4;
  sub_1003CBBBC(v9, v12 + v11, type metadata accessor for MemberSharingCircle);
  v13 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v16 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v14[1] = sub_1003C8314;

  return v16(&unk_10139FCD8, v12);
}

uint64_t sub_1003C8314()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_1003C852C;
  }

  else
  {
    v4 = sub_1003C84BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C8444()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[27];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003C84BC()
{
  v1 = v0[29];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C852C()
{
  v1 = v0[29];

  v2 = v0[32];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C8598(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 352) = v3;
  *v3 = v1;
  v3[1] = sub_1003C862C;

  return daemon.getter();
}

uint64_t sub_1003C862C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v12 = *v1;
  v3[45] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[46] = v6;
  v7 = type metadata accessor for Daemon();
  v3[47] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[48] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003C880C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C880C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = sub_1003CC300;
  }

  else
  {
    v6 = v3[45];

    v5 = sub_1003C8928;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C8928()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_1003C8A1C;

  return daemon.getter();
}

uint64_t sub_1003C8A1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *v1;
  v3[55] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[56] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[57] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003C8BD4;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C8BD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = sub_1003CC2DC;
  }

  else
  {
    v8 = *(v4 + 440);

    *(v4 + 472) = a1;
    v7 = sub_1003C8D04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C8D04()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_1003C8DAC;

  return daemon.getter();
}

uint64_t sub_1003C8DAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 480);
  v5 = *v1;
  v3[61] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[62] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[63] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003C8F64;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003C8F64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v7 = sub_1003CC320;
  }

  else
  {
    v8 = *(v4 + 488);

    *(v4 + 520) = a1;
    v7 = sub_1003C9094;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003C9094()
{
  v1 = *(v0 + 504);
  v29 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);
  v30 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v31 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v31;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v29;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v32;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v33;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 528) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v28 = swift_task_alloc();
  (v7)(v28, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v15;
  v22 = *v20;
  *(v0 + 224) = *v28;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v21;
  *(v0 + 328) = v32;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v22;

  swift_defaultActor_initialize();
  *(v9 + 112) = v30;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 344);
  v24 = swift_allocObject();
  *(v0 + 536) = v24;
  *(v24 + 16) = v9;
  *(v24 + 24) = v23;
  v25 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v34 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v26 = swift_task_alloc();
  *(v0 + 544) = v26;
  *v26 = v0;
  v26[1] = sub_1003B7468;

  return v34(&unk_10139FC70, v24);
}

uint64_t sub_1003C9540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A799C(v2, v3);
}

uint64_t sub_1003C95D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 160) = a2;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 + 64);
  *(v4 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1003C96A8, 0, 0);
}

uint64_t sub_1003C96A8()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1003C974C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003C974C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003C9B6C;
  }

  else
  {
    v5 = sub_1003C9878;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C9878()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v15 = *(v0 + 160);
  (*(v5 + 16))(v2, *(v0 + 56), v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 136) = v10;
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v8, v2, v4);
  v11 = v10 + v9;
  *v11 = v15;
  *(v11 + 8) = v7;
  *(v11 + 16) = v6;
  v12 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v16 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1003C9A3C;

  return v16(&unk_10139FCA0, v10);
}

uint64_t sub_1003C9A3C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1003C9C40;
  }

  else
  {
    v4 = sub_1003C9BD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C9B6C()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C9BD0()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C9C40()
{
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C9CAC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *v5;
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003A5A30(v4, v0 + v3, v8, v6, v7);
}

uint64_t sub_1003C9DCC()
{
  v2 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v6;
  v9 = *(v0 + v6 + *(v5 + 64));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1003A7414(v7, v0 + v3, v8, v9);
}

uint64_t sub_1003C9F30()
{
  v2 = *(type metadata accessor for MemberSharingCircle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7AE4(v4, v0 + v3);
}

uint64_t sub_1003CA008()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A0AC0(v4, v0 + v3, v6, v7);
}

uint64_t sub_1003CA124()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A1C54(v3, v4, v5);
}

uint64_t sub_1003CA280()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_100E6F7C4(v2);
}

uint64_t sub_1003CA2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v6 = type metadata accessor for Date();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[9] = v9;
  v10 = *(v9 - 8);
  v3[10] = v10;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[14] = v12;
  *v12 = v3;
  v12[1] = sub_1003CA484;

  return sub_101296F78(a1, a3);
}

uint64_t sub_1003CA484(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1003CA584, 0, 0);
}

uint64_t sub_1003CA584()
{
  v30 = v0;
  if (*(v0 + 200) == 1)
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 24);
    v5 = type metadata accessor for Logger();
    *(v0 + 120) = sub_1000076D4(v5, qword_10177AE28);
    v6 = *(v3 + 16);
    *(v0 + 128) = v6;
    *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136315138;
      sub_100019420(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = *(v12 + 8);
      v17(v10, v11);
      v18 = sub_1000136BC(v14, v16, &v29);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Notify owner about %s being reunited with sharee.", v13, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      v17 = *(v12 + 8);
      v17(v10, v11);
    }

    *(v0 + 144) = v17;
    v25 = swift_task_alloc();
    *(v0 + 152) = v25;
    *v25 = v0;
    v25[1] = sub_1003CA87C;
    v26 = *(v0 + 24);
    v27 = *(v0 + 32);

    return sub_1005BE314(v26);
  }

  else
  {
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1003CA87C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1003CB12C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = sub_1003CA998;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003CA998()
{
  v1 = *(v0 + 40);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1003CAA78;
  v5 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1003CAA78()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1003CAB90, v2, 0);
}

uint64_t sub_1003CABB4()
{
  v1 = v0[22];
  v2 = v0[12];
  static Date.trustedNow.getter(v0[8]);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1003CAC7C;
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[3];

  return sub_10068A7D8(v8, v6, v7);
}

uint64_t sub_1003CAC7C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  v7[24] = v0;

  v3(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1003CAE7C, 0, 0);
  }

  else
  {
    v8 = v7[22];
    (*(v7[7] + 8))(v7[8], v7[6]);

    v10 = v7[12];
    v9 = v7[13];
    v11 = v7[11];
    v12 = v7[8];

    v13 = v7[1];

    return v13();
  }
}

uint64_t sub_1003CAE7C()
{
  v31 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 192);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 24), *(v0 + 72));
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 144);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  if (v10)
  {
    v28 = v8;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v15 = 136315394;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v11(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v27 = v20;
    _os_log_impl(&_mh_execute_header, v28, v9, "Failed to notify owner about %s being reunited with sharee %{public}@.", v15, 0x16u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {

    v11(v12, v14);
  }

  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  v24 = *(v0 + 64);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003CB12C()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 24), *(v0 + 72));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  if (v6)
  {
    v24 = v4;
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 136315394;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v7(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v23 = v16;
    _os_log_impl(&_mh_execute_header, v24, v5, "Failed to notify owner about %s being reunited with sharee %{public}@.", v11, 0x16u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {

    v7(v8, v10);
  }

  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 88);
  v20 = *(v0 + 64);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1003CB3B4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A2FA0(v4, v0 + v3);
}

uint64_t sub_1003CB48C()
{
  v2 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1003A2B94(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_1003CB5AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
  }

  return result;
}

uint64_t sub_1003CB5C0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1003A29F4(a1, v6, v1 + v5);
}

uint64_t sub_1003CB6A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A2958(v2, v3);
}

uint64_t sub_1003CB73C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1003A31B4();
}

uint64_t sub_1003CB7CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7B80(v2, v0 + 24, v3);
}

uint64_t sub_1003CB874()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A25A0(v4, v0 + v3);
}

uint64_t sub_1003CB94C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A1D00(v4, v0 + v3, v6, v7);
}

uint64_t sub_1003CBA64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1003A13AC(v2, v3, v5, v4);
}

uint64_t sub_1003CBB10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1003A1198(a1, v5, v4);
}

uint64_t sub_1003CBBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003CBC24()
{
  v2 = *(type metadata accessor for MemberSharingCircle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MemberPeerTrust() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A7A38(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003CBD58()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7378(v4, v0 + v3);
}

uint64_t sub_1003CBE30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7900(v2, v3);
}

uint64_t sub_1003CBEC8()
{
  v2 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A77B8(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003CBFFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A7864(v2, v3);
}

uint64_t sub_1003CC094()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7230(v4, v0 + v3);
}

uint64_t sub_1003CC16C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A28BC(v4, v0 + v3);
}

unint64_t sub_1003CC258()
{
  result = qword_10169F060;
  if (!qword_10169F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F060);
  }

  return result;
}

uint64_t sub_1003CC384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1003CC404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1003CC4A0()
{
  strcpy(v3, "ServiceUUID(");
  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return v3[0];
}

unint64_t sub_1003CC510()
{
  _StringGuts.grow(_:)(22);

  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000013;
}

Swift::Int sub_1003CC5A0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CC628()
{
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1003CC6AC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003CC8E4(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CC730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = a1[1];
  UUID.init(uuidString:)();
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v11 + 32))(a2, v7, v10);
  }

  return result;
}

uint64_t sub_1003CC8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CCA70()
{
  v1 = [v0 fetchLimit];
  if (v1)
  {
    v2 = v1;
    [v1 integerValue];
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v3 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C2C(v5);
  }

  return 0;
}

id sub_1003CCB60(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = type metadata accessor for UUID();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v41 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v46 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v11 = *(v10 + 8);
  v12 = *(v11 + 24);
  v13 = v12(a1, v11);
  v49 = xmmword_10138C660;
  v47 = v13 >> 6;
  v48[3] = &type metadata for UnsafeRawBufferPointer;
  v48[4] = &protocol witness table for UnsafeRawBufferPointer;
  v48[0] = &v47;
  v48[1] = v48;
  v14 = sub_1000035D0(v48, &type metadata for UnsafeRawBufferPointer);
  v16 = *v14;
  v15 = v14[1];
  Data._Representation.append(contentsOf:)();
  sub_100007BAC(v48);
  v17 = (*(v11 + 8))(a1, v11);
  v38 = v18;
  v39 = v17;
  v35 = (*(v10 + 16))(a1, v10);
  v32 = v19;
  v33 = *(&v49 + 1);
  v34 = v49;
  v37 = v12(a1, v11);
  v36 = (*(v11 + 40))(a1, v11);
  (*(v11 + 48))(a1, v11);
  v20 = v41;
  (*(*(v40 + 16) + 8))(a1);
  v21 = objc_allocWithZone(SPBeaconAdvertisement);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = v32;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  v26 = Data._bridgeToObjectiveC()().super.isa;
  v27 = Date._bridgeToObjectiveC()().super.isa;
  v28 = UUID._bridgeToObjectiveC()().super.isa;
  v29 = [v21 initWithAddress:isa publicKey:v24 deviceType:v25 batteryState:v26 rawStatus:v37 rssi:v36 scanDate:v27 recordIdentifier:v28];

  sub_100016590(v35, v23);
  sub_100016590(v39, v38);
  (*(v44 + 8))(v20, v45);
  (*(v42 + 8))(v46, v43);
  sub_100016590(v49, *(&v49 + 1));
  return v29;
}

uint64_t sub_1003CCF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1003CCFD0@<X0>(void *a1@<X8>)
{
  v3 = [v1 location];
  if (v3)
  {
    v4 = v3;
    [v3 latitude];
    v6 = v5;
    [v4 longitude];
    v8 = v7;
    [v4 horizontalAccuracy];
    v10 = v9;
    v11 = [v4 timestamp];
    v12 = type metadata accessor for CachedHistoricalLocation(0);
    v13 = a1 + *(v12 + 28);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v10;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for CachedHistoricalLocation(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003CD15C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 advertisement];
  v6 = [v5 *a3];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

id sub_1003CD1D4()
{
  v1 = [*v0 advertisement];
  v2 = [v1 status];

  return v2;
}

id sub_1003CD224()
{
  v1 = [*v0 advertisement];
  v2 = [v1 rssi];

  return v2;
}

void sub_1003CD274()
{
  v1 = [*v0 advertisement];
  v2 = [v1 scanDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t type metadata accessor for SPCachedAdvertisement()
{
  result = qword_10169F220;
  if (!qword_10169F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD368()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003CD400@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for PairingLockCheckEndPoint() + 20);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v7);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockCheckEndPoint()
{
  result = qword_10169F2C0;
  if (!qword_10169F2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD5D0()
{
  result = sub_1003CD5F0();
  qword_10169F2F8 = result;
  return result;
}

uint64_t sub_1003CD5F0()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v2];

    v3 = [objc_allocWithZone(GEOLatLng) initWithLatitude:31.8502665 longitude:125.094901];
    [v1 addVertex:v3];

    v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:36.7747537 longitude:133.334647];
    [v1 addVertex:v4];

    v5 = [objc_allocWithZone(GEOLatLng) initWithLatitude:39.1903306 longitude:130.434257];
    [v1 addVertex:v5];

    v6 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v6];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003CD7F8()
{
  v1 = [*v0 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1003CD878()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_101607C88;
    do
    {
      v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex:v4];

      v3 += 2;
      --v2;
    }

    while (v2);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1003CD99C(uint64_t a1)
{
  *(a1 + 8) = sub_1003CD9CC();
  result = sub_1003928F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003CD9CC()
{
  result = qword_10169F308;
  if (!qword_10169F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F308);
  }

  return result;
}

uint64_t sub_1003CDA20(uint64_t a1)
{
  v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v3 = *(*(v51 - 8) + 64);
  v4 = __chkstk_darwin(v51);
  v50 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v49 = (&v43 - v7);
  v8 = __chkstk_darwin(v6);
  v48 = (&v43 - v9);
  __chkstk_darwin(v8);
  v47 = (&v43 - v10);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v43 = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v11, 0);
  v12 = v58;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = result;
  v17 = 0;
  v57 = *(a1 + 36);
  v44 = a1 + 72;
  v45 = v11;
  v46 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v53 = 1 << v16;
    v54 = v16 >> 6;
    v52 = v17;
    v19 = v51;
    v20 = *(v51 + 48);
    v21 = *(a1 + 56);
    v55 = *(*(a1 + 48) + 16 * v16);
    v22 = v47;
    *v47 = v55;
    v23 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_100032504(v21 + *(*(v23 - 8) + 72) * v16, v22 + v20, type metadata accessor for OwnedBeaconGroup.PairingState);
    v24 = *v22;
    v56 = v12;
    v25 = v48;
    *v48 = v24;
    sub_10040A014(v22 + v20, v25 + *(v19 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v26 = v49;
    sub_1000D2A70(v25, v49, &qword_1016A4190, &unk_1013A3550);
    v27 = *(v19 + 48);
    v28 = v50;
    *v50 = *v26;
    sub_10040A014(v26 + v27, v28 + v27, type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = a1;
    v31 = *v28;
    v30 = v28[1];
    sub_100017D5C(v55, *(&v55 + 1));
    sub_100017D5C(v31, v30);
    sub_10000B3A8(v28, &qword_1016A4190, &unk_1013A3550);
    v32 = v25;
    v12 = v56;
    result = sub_10000B3A8(v32, &qword_1016A4190, &unk_1013A3550);
    v58 = v12;
    v34 = v12[2];
    v33 = v12[3];
    if (v34 >= v33 >> 1)
    {
      result = sub_101123CB8((v33 > 1), v34 + 1, 1);
      v12 = v58;
    }

    v12[2] = v34 + 1;
    v35 = &v12[2 * v34];
    v35[4] = v31;
    v35[5] = v30;
    v18 = 1 << *(v29 + 32);
    if (v16 >= v18)
    {
      goto LABEL_24;
    }

    a1 = v29;
    v13 = v46;
    v36 = *(v46 + 8 * v54);
    if ((v36 & v53) == 0)
    {
      goto LABEL_25;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v37 = v36 & (-2 << (v16 & 0x3F));
    if (v37)
    {
      v18 = __clz(__rbit64(v37)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = v54 << 6;
      v39 = v54 + 1;
      v40 = (v44 + 8 * v54);
      while (v39 < (v18 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1000BB408(v16, v57, 0);
          v18 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v16, v57, 0);
    }

LABEL_4:
    v17 = v52 + 1;
    v16 = v18;
    if (v52 + 1 == v45)
    {
      return v12;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003CDE4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACC8);
  sub_1000076D4(v0, qword_10177ACC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003CDEC4()
{
  result = Data.init(stringLiteral:)();
  qword_10177ACE0 = result;
  *algn_10177ACE8 = v1;
  return result;
}

uint64_t sub_1003CDF00(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v19 - v7;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v19[1] = *v2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000023;
  *(v9 + 80) = 0x8000000101353A20;
  os_log(_:dso:log:_:_:)();

  v14 = v2[35];
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = sub_10040820C;
  v17[6] = v15;

  sub_10025EDD4(0, 0, v8, &unk_1013A0968, v17);
}

void sub_1003CE19C(char a1, void (*a2)(void **, uint64_t))
{
  if (a1)
  {
    v7 = sub_100A3F8D4();
    a2(v7, v3 & 1);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    *(inited + 48) = 0xD00000000000002FLL;
    *(inited + 56) = 0x8000000101353A90;
    v6 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    sub_1006953B0(v6);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a2(v8, 1);
  }
}

uint64_t sub_1003CE3B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  v37 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 64) = v20;
  *(v16 + 72) = 0xD000000000000026;
  *(v16 + 80) = 0x8000000101353970;
  v21 = v39;
  v22 = [v39 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v24;
  (*(v12 + 8))(v15, v11);
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v20;
  *(v16 + 112) = v23;
  *(v16 + 120) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = v4[18];
  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = v21;
  v28 = v40;
  v27[4] = v37;
  v27[5] = v28;
  aBlock[4] = sub_100408164;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B330;
  v29 = _Block_copy(aBlock);

  v30 = v21;

  v31 = v38;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v32 = v43;
  v33 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v44 + 8))(v32, v33);
  (*(v41 + 8))(v31, v42);
}

uint64_t sub_1003CE8E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v59 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v63 = *(v64 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v64);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v58 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v58);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  v23 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  v25 = *(a1 + v24);
  if (*(v25 + 16))
  {
    v26 = *(a1 + v24);

    v27 = sub_1000210EC(v22);
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v27);
      v54 = v11;
      v30 = *(v16 + 8);

      v30(v22, v15);

      v31 = v29;
      v57 = v29;
      v32 = sub_100FC752C();
      v55 = v33;
      v34 = [*(v31 + 16) identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1007AA0B4(v20);
      v30(v20, v15);
      swift_endAccess();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v35 = v54;
      v36 = v58;
      (*(v54 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v58);
      v56 = static OS_dispatch_queue.global(qos:)();
      (*(v35 + 8))(v14, v36);
      v37 = swift_allocObject();
      v38 = v60;
      *(v37 + 16) = v59;
      *(v37 + 24) = v38;
      *(v37 + 32) = v32;
      v39 = v55 & 1;
      *(v37 + 40) = v55 & 1;
      v72 = sub_10040817C;
      v73 = v37;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_100006684;
      v71 = &unk_10161B3D0;
      v40 = _Block_copy(&aBlock);

      sub_1004081B0(v32, v39);
      v41 = v61;
      static DispatchQoS.unspecified.getter();
      v67 = _swiftEmptyArrayStorage;
      sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v42 = v62;
      v43 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v56;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      sub_100408170(v32, v39);
      goto LABEL_8;
    }
  }

  (*(v16 + 8))(v22, v15);
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v46;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x80000001013539E0;
  v47 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v48 = v58;
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v58);
  v49 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v48);
  v50 = swift_allocObject();
  v51 = v60;
  v50[2] = v59;
  v50[3] = v51;
  v50[4] = v47;
  v72 = sub_10040BAA4;
  v73 = v50;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_100006684;
  v71 = &unk_10161B380;
  v52 = _Block_copy(&aBlock);

  v41 = v61;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v42 = v62;
  v43 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v52);

LABEL_8:
  (*(v65 + 8))(v42, v43);
  (*(v63 + 8))(v41, v64);
}

uint64_t sub_1003CF218(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v42 = a3;
  v38 = *v3;
  v39 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 64) = v20;
  *(v16 + 72) = 0xD000000000000022;
  *(v16 + 80) = 0x8000000101353300;
  v21 = v41;
  v22 = [v41 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v24;
  (*(v12 + 8))(v15, v11);
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v20;
  *(v16 + 112) = v23;
  *(v16 + 120) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = v4[18];
  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = v21;
  v28 = v38;
  v29 = v42;
  v27[4] = v39;
  v27[5] = v29;
  v27[6] = v28;
  aBlock[4] = sub_100407E48;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B240;
  v30 = _Block_copy(aBlock);

  v31 = v21;

  v32 = v40;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v33 = v45;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v32, v44);
}

uint64_t sub_1003CF778(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v171 = a5;
  v175 = a3;
  v176 = a4;
  v7 = type metadata accessor for HashAlgorithm();
  v173 = *(v7 - 8);
  v8 = *(v173 + 64);
  __chkstk_darwin(v7);
  v172 = (v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v158 - v16;
  v177 = a2;
  v18 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  v174 = a1;
  v20 = *(a1 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  v21 = sub_1000210EC(v17);
  if ((v22 & 1) == 0)
  {

LABEL_11:
    v45 = *(v11 + 8);
    v45(v17, v10);
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v47;
    *(inited + 48) = 0xD000000000000048;
    *(inited + 56) = 0x8000000101353390;
    v48 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v180 = 6;
    sub_1006953B0(v48);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = v192;
    v175(v192, 1);

    v50 = [v177 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v15);
    v45(v15, v10);
    swift_endAccess();
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  v24 = *(v11 + 8);

  v24(v17, v10);

  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C3B0;
  os_signpost(_:dso:log:name:signpostID:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  v26 = swift_allocObject();
  v27 = v177;
  *(v26 + 16) = v23;
  *(v26 + 24) = v27;

  v28 = v27;
  static Transaction.asyncTask(name:block:)();

  v29 = [v28 collaborativeKeyC1];
  if (!v29)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_101385D80;
    *(v51 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v51 + 40) = v52;
    *(v51 + 48) = 0xD000000000000041;
    *(v51 + 56) = 0x8000000101353400;
    v53 = sub_100907E70(v51);
    swift_setDeallocating();
    sub_10000B3A8(v51 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v180 = 6;
    sub_1006953B0(v53);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v192;
    sub_100FC7E50(v192, 1, v175, v176);
LABEL_49:
  }

  v30 = v29;
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v28 attestation];
  if (!v34)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_101385D80;
    *(v55 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v55 + 40) = v56;
    *(v55 + 48) = 0xD000000000000042;
    *(v55 + 56) = 0x8000000101353480;
    v57 = sub_100907E70(v55);
    swift_setDeallocating();
    sub_10000B3A8(v55 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v180 = 6;
    sub_1006953B0(v57);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v192;
    sub_100FC7E50(v192, 1, v175, v176);
    sub_100016590(v31, v33);
    goto LABEL_49;
  }

  v164 = v25;
  v35 = v34;
  v177 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = [v28 nonce];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v41;
  v43 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v43)
    {
      sub_100016590(v39, v41);
      v44 = BYTE6(v41);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v43 != 2)
  {
    sub_100016590(v39, v41);
    v44 = 0;
    goto LABEL_23;
  }

  v59 = *(v39 + 16);
  v58 = *(v39 + 24);
  sub_100016590(v39, v42);
  v44 = v58 - v59;
  if (__OFSUB__(v58, v59))
  {
    __break(1u);
LABEL_20:
    result = sub_100016590(v39, v42);
    LODWORD(v44) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v44 = v44;
  }

LABEL_23:
  v167 = v7;
  v168 = v33;
  v61 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v61 < 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_31;
  }

  v62 = v31;
  v63 = sub_100503ED4(0, v61, v177, v37);
  v65 = v64;
  v66 = [v28 nonce];
  v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v165 = v63;
  v166 = v65;
  LOBYTE(v66) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v63, v65, v67, v69);
  sub_100016590(v67, v69);
  if (v66)
  {
    My = type metadata accessor for Feature.FindMy();
    *(&v193 + 1) = My;
    *&v194 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v71 = sub_1000280DC(&v192);
    (*(*(My - 8) + 104))(v71, enum case for Feature.FindMy.alphaWasp(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v192);
    v33 = v62;
    if (My)
    {
      v72 = [objc_opt_self() sharedInstance];
      v169 = [v72 isInternalBuild];
    }

    else
    {
      v169 = 0;
    }
  }

  else
  {
    v169 = 0;
    v33 = v62;
  }

  v31 = v168;
  *(v23 + 65) = v169;
  if (qword_1016946D0 != -1)
  {
    goto LABEL_56;
  }

LABEL_31:
  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177ACC8);
  v74 = v177;
  sub_100017D5C(v177, v37);
  v75 = Logger.logObject.getter();
  v76 = v37;
  v77 = static os_log_type_t.debug.getter();
  v78 = os_log_type_enabled(v75, v77);
  v170 = v76;
  if (!v78)
  {
    sub_100016590(v74, v76);

LABEL_44:
    v90 = v28;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    v93 = os_log_type_enabled(v91, v92);
    v162 = v90;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v160 = v94;
      v161 = swift_slowAlloc();
      *&v192 = v161;
      *v94 = 136315138;
      v95 = [v90 nonce];
      v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v159) = v92;
      v97 = v33;
      v99 = v98;

      v100 = v31;
      v101 = Data.hexString.getter();
      v102 = v23;
      v104 = v103;
      v105 = v99;
      v33 = v97;
      sub_100016590(v96, v105);
      v106 = sub_1000136BC(v101, v104, &v192);
      v23 = v102;
      v31 = v100;

      v107 = v160;
      *(v160 + 1) = v106;
      _os_log_impl(&_mh_execute_header, v91, v159, "Session nonce: %s", v107, 0xCu);
      sub_100007BAC(v161);
    }

    v108 = v167;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 67109120;
      *(v111 + 4) = v169;
      _os_log_impl(&_mh_execute_header, v109, v110, "isAlphaWasp ? %{BOOL}d", v111, 8u);
    }

    v112 = sub_100A7491C(v33, v31);
    v167 = v113;
    v115 = v114;
    v117 = v172;
    v116 = v173;
    v118 = v112;
    (*(v173 + 104))(v172, enum case for HashAlgorithm.sha256(_:), v108);
    v159 = v118;
    v160 = v115;
    v119 = Data.hash(algorithm:)();
    v121 = v120;
    (*(v116 + 8))(v117, v108);
    v122 = v162;
    v161 = v119;
    sub_1003FE810(v162, v33, v31, v119, v121, v179);
    v188 = v179[8];
    v189 = v179[9];
    v190 = v179[10];
    v191 = v179[11];
    v184 = v179[4];
    v185 = v179[5];
    v186 = v179[6];
    v187 = v179[7];
    v180 = v179[0];
    v181 = v179[1];
    v182 = v179[2];
    v183 = v179[3];
    v123 = sub_1000424A8(&v180);
    if (v123 == 1)
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_101385D80;
      *(v124 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v124 + 40) = v125;
      *(v124 + 48) = 0xD000000000000048;
      *(v124 + 56) = 0x80000001013535A0;
      v126 = sub_100907E70(v124);
      swift_setDeallocating();
      sub_10000B3A8(v124 + 32, &qword_101696D88, &unk_10138B760);
      swift_deallocClassInstance();
      type metadata accessor for SPPairingSessionError(0);
      v178[0] = 6;
      sub_1006953B0(v126);

      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v127 = v192;
      sub_100FC7E50(v192, 1, v175, v176);
      sub_100016590(v177, v170);

      sub_100016590(v161, v121);
      sub_100016590(v159, v160);
      sub_100016590(v165, v166);
      sub_100016590(v33, v31);
    }

    else
    {
      v200 = v188;
      v201 = v189;
      v202 = v190;
      v203 = v191;
      v196 = v184;
      v197 = v185;
      v198 = v186;
      v199 = v187;
      v192 = v180;
      v193 = v181;
      v194 = v182;
      v195 = v183;
      v128 = *(v23 + 24);
      *(v23 + 24) = v167;

      v129 = *(v174 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingValidator);
      sub_1008895B4(&v192);
      v173 = v130;
      v131 = v122;
      v132 = dispatch_group_create();
      v133 = swift_allocObject();
      v164 = v121;
      v134 = v133;
      type metadata accessor for SPPairingSessionError(0);
      v178[24] = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v134 + 16) = v178[0];
      v172 = (v134 + 16);
      *(v134 + 24) = 1;
      dispatch_group_enter(v132);
      v135 = swift_allocObject();
      v163 = v33;
      *(v135 + 16) = v132;
      *(v135 + 24) = v23;
      *(v135 + 32) = v169;
      *(v135 + 40) = v134;
      *(v135 + 48) = v131;
      v136 = v174;
      v137 = v171;
      *(v135 + 56) = v174;
      *(v135 + 64) = v137;

      v138 = v131;
      v139 = v132;

      Future.addFailure(block:)();

      v140 = swift_allocObject();
      *(v140 + 16) = v139;
      *(v140 + 24) = v134;
      *(v140 + 32) = v136;
      *(v140 + 40) = v138;
      v141 = v201;
      *(v140 + 176) = v200;
      *(v140 + 192) = v141;
      v142 = v203;
      *(v140 + 208) = v202;
      *(v140 + 224) = v142;
      v143 = v197;
      *(v140 + 112) = v196;
      *(v140 + 128) = v143;
      v144 = v199;
      *(v140 + 144) = v198;
      *(v140 + 160) = v144;
      v145 = v193;
      *(v140 + 48) = v192;
      *(v140 + 64) = v145;
      v146 = v195;
      *(v140 + 80) = v194;
      *(v140 + 96) = v146;
      v147 = v160;
      v148 = v161;
      v149 = v164;
      *(v140 + 240) = v161;
      *(v140 + 248) = v149;
      *(v140 + 256) = v169;
      v158[1] = v23;
      v150 = v159;
      *(v140 + 264) = v23;
      *(v140 + 272) = v150;
      v151 = v171;
      *(v140 + 280) = v147;
      *(v140 + 288) = v151;

      v152 = v138;
      v153 = v139;

      sub_1000D2A70(v179, v178, &qword_10169F440, &unk_1013A0950);
      v154 = v149;
      sub_100017D5C(v148, v149);
      sub_100017D5C(v150, v147);
      Future.addSuccess(block:)();

      OS_dispatch_group.wait()();
      v155 = v172;
      swift_beginAccess();
      v156 = *v155;
      LODWORD(v132) = *(v134 + 24);
      v157 = v156;
      sub_100FC7E50(v156, v132, v175, v176);

      sub_10000B3A8(v179, &qword_10169F440, &unk_1013A0950);
      sub_100016590(v161, v154);

      sub_100016590(v150, v147);
      sub_100016590(v165, v166);
      sub_100016590(v177, v170);
      sub_100016590(v163, v168);
    }
  }

  v79 = swift_slowAlloc();
  result = swift_slowAlloc();
  *&v192 = result;
  *v79 = 134218242;
  v80 = v76 >> 62;
  v163 = v33;
  if ((v76 >> 62) > 1)
  {
    if (v80 != 2)
    {
      v81 = result;
      v82 = 0;
      goto LABEL_42;
    }

    v83 = v177;
    v85 = *(v177 + 2);
    v84 = *(v177 + 3);
    v86 = __OFSUB__(v84, v85);
    v82 = v84 - v85;
    if (!v86)
    {
      v81 = result;
LABEL_43:
      *(v79 + 4) = v82;
      sub_100016590(v83, v170);
      *(v79 + 12) = 2080;
      v87 = Data.hexString.getter();
      v89 = sub_1000136BC(v87, v88, &v192);

      *(v79 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v75, v77, "S1 count %ld - %s", v79, 0x16u);
      sub_100007BAC(v81);

      v31 = v168;
      v33 = v163;
      goto LABEL_44;
    }

    goto LABEL_58;
  }

  if (!v80)
  {
    v81 = result;
    v82 = BYTE6(v170);
LABEL_42:
    v83 = v177;
    goto LABEL_43;
  }

  v83 = v177;
  LODWORD(v82) = HIDWORD(v177) - v177;
  if (!__OFSUB__(HIDWORD(v177), v177))
  {
    v81 = result;
    v82 = v82;
    goto LABEL_43;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1003D0CEC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DispatchTime();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003D0DAC, 0, 0);
}

uint64_t sub_1003D0DAC()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 80) = v1;
  return _swift_task_switch(sub_1003D0DDC, v1, 0);
}

uint64_t sub_1003D0DDC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  static DispatchTime.now()();
  v5 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v5, v2, v3);
  swift_endAccess();
  v0[11] = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003D0EEC, 0, 0);
}

uint64_t sub_1003D0EEC()
{
  v1 = [*(v0 + 48) serialNumber];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 96) = v6;
    v7 = [v2 systemVersion];
    if (v7)
    {
      v8 = *(v0 + 80);
      *(v0 + 104) = v4;
      v9 = v7;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(v0 + 112) = v10;
      *(v0 + 120) = v12;

      return _swift_task_switch(sub_1003D100C, v8, 0);
    }
  }

  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003D100C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = v3;
  v7[8] = v4;

  static Transaction.asyncTask(name:block:)();

  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

void sub_1003D10F4(uint64_t a1, NSObject *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v40 = a7;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v44 = a2;
  v8 = type metadata accessor for UUID();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  v36 = xmmword_101385D80;
  *(v11 + 16) = xmmword_101385D80;
  v46 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v41)
  {
    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177ACC8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "AlphaWasp: bypassing pairing lock check failure for hardcoded pairing", v19, 2u);
    }

    v20 = v42;
    swift_beginAccess();
    v21 = *(v20 + 16);
    v22 = v43;
    *(v20 + 16) = v43;
    *(v20 + 24) = 0;

    v23 = v22;
  }

  else
  {
    v46 = a1;
    swift_errorRetain();
    type metadata accessor for SPPairingSessionError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = v36;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v25;
      v26 = swift_allocObject();
      *(v26 + 16) = v36;
      v46 = a1;
      swift_errorRetain();
      v27 = String.init<A>(describing:)();
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = v15;
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      *(inited + 48) = String.init(format:_:)();
      *(inited + 56) = v29;
      v30 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      v46 = 3;
      sub_1006953B0(v30);

      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    v31 = v45;
    v32 = v42;
    swift_beginAccess();
    v33 = *(v32 + 16);
    *(v32 + 16) = v31;
    *(v32 + 24) = 1;

    v34 = [v43 identifier];
    v35 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v35);
    (*(v38 + 8))(v35, v39);
    swift_endAccess();
  }

  dispatch_group_leave(v44);
}

void sub_1003D1634(__int128 *a1, NSObject *a2, unint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, void *a10, uint64_t a11, void *a12)
{
  v138 = a7;
  v139 = a8;
  v137 = a6;
  v17 = type metadata accessor for LocalizationUtility.Table();
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  __chkstk_darwin(v17);
  v134 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_isa = type metadata accessor for UUID();
  v21 = *(p_isa - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(p_isa);
  v142 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[1];
  v153 = *a1;
  v154 = v24;
  v25 = a1[3];
  v155 = a1[2];
  v156 = v25;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177ACC8);
  sub_100407F70(&v153, &v149);
  v133 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  sub_100407FCC(&v153);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v140 = p_isa;
    v141 = a5;
    v132 = a3;
    v31 = a2;
    v32 = v30;
    v33 = a4;
    v34 = swift_slowAlloc();
    v144[0] = v34;
    *v32 = 136315138;
    v149 = v153;
    v150 = v154;
    v151 = v155;
    v152 = v156;
    sub_100407F70(&v153, v143);
    v35 = String.init<A>(describing:)();
    v37 = v21;
    v38 = sub_1000136BC(v35, v36, v144);

    *(v32 + 4) = v38;
    v21 = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "pairingCheckResponse: %s", v32, 0xCu);
    sub_100007BAC(v34);
    a4 = v33;

    a2 = v31;
    p_isa = v140;
    a5 = v141;
    a3 = v132;
  }

  if (v153 >= 2u)
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v49;
    *(inited + 48) = 0xD000000000000036;
    *(inited + 56) = 0x80000001013537D0;
    v50 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    *&v149 = 18;
    sub_1006953B0(v50);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = v143[0];
    swift_beginAccess();
    v52 = *(a3 + 16);
    *(a3 + 16) = v51;
    *(a3 + 24) = 1;

    v53 = [a5 identifier];
  }

  else
  {
    if (v155 >> 60 != 15 && *(&v156 + 1) && *(*(&v155 + 1) + 16) == 2)
    {
      v127 = *(&v155 + 1);
      v126 = v156;
      v131 = *(&v154 + 1);
      v132 = v155;
      sub_100017D5C(*(&v154 + 1), v155);
      if (qword_1016946D8 != -1)
      {
        swift_once();
      }

      v129 = *algn_10177ACE8;
      v130 = qword_10177ACE0;
      v39 = [a5 nonce];
      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      *(&v150 + 1) = &type metadata for Data;
      *&v151 = &protocol witness table for Data;
      *&v149 = v40;
      *(&v149 + 1) = v42;
      v43 = sub_1000035D0(&v149, &type metadata for Data);
      v44 = *v43;
      v45 = v43[1];
      v46 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v46 != 2)
        {
          memset(v144, 0, 14);
          v47 = v144;
          goto LABEL_46;
        }

        v140 = p_isa;
        v141 = v21;
        p_isa = a3;
        a3 = a5;
        a5 = a2;
        a2 = *(v44 + 16);
        v21 = *(v44 + 24);
        v58 = __DataStorage._bytes.getter();
        if (v58)
        {
          v59 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v59))
          {
            __break(1u);
            goto LABEL_84;
          }

          v58 = &v58[a2 - v59];
        }

        v60 = __OFSUB__(v21, a2);
        a2 = (v21 - a2);
        if (!v60)
        {
          v61 = __DataStorage._length.getter();
          if (v61 >= a2)
          {
            v62 = a2;
          }

          else
          {
            v62 = v61;
          }

          v63 = &v58[v62];
          if (v58)
          {
            v64 = v63;
          }

          else
          {
            v64 = 0;
          }

          sub_100267F80(v58, v64, v143);
          a2 = a5;
          a5 = a3;
          a3 = p_isa;
          p_isa = v140;
          v21 = v141;
LABEL_47:
          LODWORD(v140) = a9;
          v72 = v143[0];
          v73 = v143[1];
          sub_100007BAC(&v149);
          v147 = v72;
          v148 = v73;
          v74 = *(v137 + 80);
          v75 = *(v137 + 88);
          Data.append(_:)();
          Data.append(_:)();
          v76 = sub_100A74FAC(v130, v129, v147, v148, v131, v132, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
          v128 = a2;
          if ((v76 & 1) == 0)
          {
            static os_log_type_t.error.getter();
            if (qword_101695068 != -1)
            {
              swift_once();
            }

            v137 = qword_10177C3B0;
            os_log(_:dso:log:_:_:)();
            if ((v140 & 1) == 0)
            {
              sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
              v116 = swift_initStackObject();
              *(v116 + 16) = xmmword_101385D80;
              *(v116 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v116 + 40) = v117;
              *(v116 + 48) = 0xD00000000000003FLL;
              *(v116 + 56) = 0x8000000101353720;
              v118 = sub_100907E70(v116);
              swift_setDeallocating();
              sub_10000B3A8(v116 + 32, &qword_101696D88, &unk_10138B760);
              type metadata accessor for SPPairingSessionError(0);
              *&v149 = 3;
              sub_1006953B0(v118);

              sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v119 = v143[0];
              swift_beginAccess();
              v120 = *(a3 + 16);
              *(a3 + 16) = v119;
              *(a3 + 24) = 1;

              v121 = [a5 identifier];
              v122 = v142;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              swift_beginAccess();
              sub_1007AA0B4(v122);
              (*(v21 + 8))(v122, p_isa);
              swift_endAccess();

              sub_100006654(v131, v132);
              goto LABEL_75;
            }

            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&_mh_execute_header, v77, v78, "AlphaWasp: bypassing pairing lock check failure for alphaWasp hardcoded pairing", v79, 2u);
            }

            swift_beginAccess();
            v80 = *(a3 + 16);
            *(a3 + 16) = a5;
            *(a3 + 24) = 0;

            v81 = a5;
LABEL_56:
            v82 = v127[2];
            if (v82)
            {
              v125 = a4;
              v141 = a5;
              if (v82 != 1)
              {
                v84 = v127[4];
                v83 = v127[5];
                v85 = v127[6];
                v86 = v127[7];
                v145 = v84;
                v146 = v83;
                sub_100017D5C(v84, v83);
                sub_100017D5C(v84, v83);
                sub_100017D5C(v85, v86);
                Data.append(_:)();
                v87 = a10[4];
                v139 = a10[5];
                a10[4] = v84;
                a10[5] = v83;
                v127 = v84;
                v133 = v83;
                sub_100017D5C(v84, v83);
                sub_100006654(v87, v139);
                v88 = a10[6];
                v89 = a10[7];
                a10[6] = v85;
                a10[7] = v86;
                v124 = a10;
                v138 = v85;
                v139 = v86;
                sub_100017D5C(v85, v86);
                sub_100006654(v88, v89);
                if (v140)
                {
                  if (v154 >> 60 == 15)
                  {
                    v90 = 0;
                  }

                  else
                  {
                    v90 = *(&v153 + 1);
                  }

                  if (v154 >> 60 == 15)
                  {
                    v91 = 0xC000000000000000;
                  }

                  else
                  {
                    v91 = v154;
                  }

                  sub_10002E98C(*(&v153 + 1), v154);
                  goto LABEL_70;
                }

                v91 = v154;
                a2 = v128;
                a5 = v141;
                if (v154 >> 60 != 15)
                {
                  v90 = *(&v153 + 1);
                  sub_100017D5C(*(&v153 + 1), v154);
LABEL_70:
                  v125 = a12;
                  v98 = v134;
                  v99 = v135;
                  v100 = v136;
                  (*(v135 + 104))(v134, enum case for LocalizationUtility.Table.default(_:), v136);
                  static LocalizationUtility.localizedString(key:table:)();
                  (*(v99 + 8))(v98, v100);
                  v140 = v90;
                  v142 = v91;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v102 = Data._bridgeToObjectiveC()().super.isa;
                  v103 = Data._bridgeToObjectiveC()().super.isa;
                  v104 = Data._bridgeToObjectiveC()().super.isa;
                  v105 = String._bridgeToObjectiveC()();
                  v106 = String._bridgeToObjectiveC()();

                  v107 = Data._bridgeToObjectiveC()().super.isa;
                  v134 = v107;
                  v135 = v145;
                  v136 = v146;
                  v108 = Data._bridgeToObjectiveC()().super.isa;
                  v123 = v107;
                  v109 = v141;
                  [v141 updateWithSeed:isa collaborativeKeyC2:v102 serverSignature:v103 serverPublicKey:v104 maskedAppleID:v105 userMessage:v106 baaIntermediateCert:v123 baaLeafCert:v108];

                  a4 = v124;
                  v110 = *(v124 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
                  v111 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
                  swift_beginAccess();
                  if (*(v110 + v111))
                  {
                    [v109 updatePairingLocation:?];
                  }

                  p_isa = &v109->isa;
                  static os_log_type_t.default.getter();
                  a2 = v128;
                  if (qword_101695068 == -1)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_79;
                }

                static os_log_type_t.error.getter();
                if (qword_101695068 == -1)
                {
LABEL_68:
                  os_log(_:dso:log:_:_:)();
                  type metadata accessor for SPPairingSessionError(0);
                  v143[0] = 3;
                  sub_100032898(_swiftEmptyArrayStorage);
                  sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
                  _BridgedStoredNSError.init(_:userInfo:)();
                  v92 = v144[0];
                  swift_beginAccess();
                  v93 = *(a3 + 16);
                  *(a3 + 16) = v92;
                  *(a3 + 24) = 1;

                  v94 = [a5 identifier];
                  v95 = v142;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  swift_beginAccess();
                  sub_1007AA0B4(v95);
                  (*(v21 + 8))(v95, p_isa);
                  swift_endAccess();

                  sub_100006654(v131, v132);
                  sub_100016590(v138, v139);
                  sub_100016590(v127, v133);
                  v96 = v145;
                  v97 = v146;
LABEL_74:
                  sub_100016590(v96, v97);
LABEL_75:
                  sub_100016590(v147, v148);
                  goto LABEL_21;
                }

LABEL_85:
                swift_once();
                goto LABEL_68;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_79:
            swift_once();
LABEL_73:
            os_log(_:dso:log:_:_:)();
            v112 = a4[2];
            a4[2] = p_isa;
            v113 = p_isa;

            swift_beginAccess();
            v114 = *(a3 + 16);
            *(a3 + 16) = v113;
            *(a3 + 24) = 0;

            v115 = v113;
            static os_signpost_type_t.end.getter();
            os_signpost(_:dso:log:name:signpostID:)();
            static os_signpost_type_t.begin.getter();
            os_signpost(_:dso:log:name:signpostID:)();
            sub_100006654(v131, v132);
            sub_100016590(v127, v133);
            sub_100016590(v138, v139);
            sub_100016590(v140, v142);
            v96 = v135;
            v97 = v136;
            goto LABEL_74;
          }

          static os_log_type_t.default.getter();
          if (qword_101695068 == -1)
          {
LABEL_49:
            v137 = qword_10177C3B0;
            os_log(_:dso:log:_:_:)();
            goto LABEL_56;
          }

LABEL_82:
          swift_once();
          goto LABEL_49;
        }
      }

      else
      {
        if (!v46)
        {
          v144[0] = *v43;
          LOWORD(v144[1]) = v45;
          BYTE2(v144[1]) = BYTE2(v45);
          BYTE3(v144[1]) = BYTE3(v45);
          BYTE4(v144[1]) = BYTE4(v45);
          BYTE5(v144[1]) = BYTE5(v45);
          v47 = (v144 + BYTE6(v45));
LABEL_46:
          sub_100267F80(v144, v47, v143);
          goto LABEL_47;
        }

        v125 = a4;
        a4 = v21;
        v140 = p_isa;
        p_isa = a3;
        a3 = a5;
        a5 = a2;
        v21 = v44;
        v65 = v44 >> 32;
        a2 = (v65 - v21);
        if (v65 >= v21)
        {
          v66 = __DataStorage._bytes.getter();
          if (!v66)
          {
LABEL_38:
            v21 = a4;
            v68 = __DataStorage._length.getter();
            if (v68 >= a2)
            {
              v69 = a2;
            }

            else
            {
              v69 = v68;
            }

            v70 = &v66[v69];
            if (v66)
            {
              v71 = v70;
            }

            else
            {
              v71 = 0;
            }

            sub_100267F80(v66, v71, v143);
            a2 = a5;
            a5 = a3;
            a3 = p_isa;
            p_isa = v140;
            a4 = v125;
            goto LABEL_47;
          }

          v67 = __DataStorage._offset.getter();
          if (!__OFSUB__(v21, v67))
          {
            v66 += v21 - v67;
            goto LABEL_38;
          }

LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_82;
    }

    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPPairingSessionError(0);
    *&v149 = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = v143[0];
    swift_beginAccess();
    v55 = *(a3 + 16);
    *(a3 + 16) = v54;
    *(a3 + 24) = 1;

    v53 = [a5 identifier];
  }

  v56 = v53;
  v57 = v142;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1007AA0B4(v57);
  (*(v21 + 8))(v57, p_isa);
  swift_endAccess();

LABEL_21:
  dispatch_group_leave(a2);
}

uint64_t sub_1003D2B68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v31 = a2;
  v32 = a1;
  v30 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  __chkstk_darwin(v13);
  v33 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v33);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 64) = v20;
  *(v16 + 72) = 0xD000000000000024;
  *(v16 + 80) = 0x8000000101352920;
  os_log(_:dso:log:_:_:)();

  v21 = v4[18];
  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  v22[2] = v4;
  v22[3] = v24;
  v25 = v34;
  v22[4] = v23;
  v22[5] = v25;
  v22[6] = v30;
  aBlock[4] = sub_100407A80;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B010;
  v26 = _Block_copy(aBlock);

  v27 = v24;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v28 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v39 + 8))(v8, v28);
  (*(v37 + 8))(v12, v38);
  (*(v35 + 8))(v33, v36);
}

void sub_1003D3040(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v129 = a5;
  v139 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v136 = *(v8 - 8);
  v137 = v8;
  v9 = *(v136 + 64);
  __chkstk_darwin(v8);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchQoS();
  v133 = *(v135 - 8);
  v11 = *(v133 + 64);
  __chkstk_darwin(v135);
  v132 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v130 = *(v13 - 8);
  v131 = v13;
  v14 = *(v130 + 64);
  __chkstk_darwin(v13);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for StableIdentifier();
  v17 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v128 = (&v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v126 - v25;
  v141 = a2;
  v27 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  *&v140 = a1;
  v29 = *(a1 + v28);
  if (!*(v29 + 16))
  {
    goto LABEL_8;
  }

  v30 = *(a1 + v28);

  v31 = sub_1000210EC(v26);
  if ((v32 & 1) == 0)
  {

LABEL_8:
    v138 = a4;
    v41 = *(v20 + 8);
    v41(v26, v19);
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_101385D80;
    *(v42 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v42 + 40) = v43;
    *(v42 + 48) = 0xD000000000000050;
    *(v42 + 56) = 0x80000001013529B0;
    v44 = sub_100907E70(v42);
    swift_setDeallocating();
    sub_10000B3A8(v42 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    v45 = [v141 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v24);
    v41(v24, v19);
    swift_endAccess();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v47 = v130;
    v46 = v131;
    (*(v130 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v131);
    v48 = static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v16, v46);
    v49 = swift_allocObject();
    v50 = v138;
    v49[2] = v139;
    v49[3] = v50;
    v49[4] = v44;
    *&v208 = sub_100407A98;
    *(&v208 + 1) = v49;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v207 = sub_100006684;
    *(&v207 + 1) = &unk_10161B060;
    v51 = _Block_copy(&aBlock);

    v52 = v132;
    static DispatchQoS.unspecified.getter();
    *&v204[0] = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v53 = v134;
    v54 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v136 + 8))(v53, v54);
    (*(v133 + 8))(v52, v135);
    goto LABEL_11;
  }

  v33 = *(*(v29 + 56) + 8 * v31);
  v34 = *(v20 + 8);

  v34(v26, v19);

  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  v35 = *(v33 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);

  v36 = v141;
  sub_1003D4B8C(v141, v33, &v184);
  v180 = v190;
  v181 = v191;
  v182 = v192;
  v176 = v186;
  v177 = v187;
  v178 = v188;
  v179 = v189;
  v174 = v184;
  v175 = v185;
  v200 = v190;
  v201 = v191;
  v202 = v192;
  v196 = v186;
  v197 = v187;
  v198 = v188;
  v199 = v189;
  v183 = v193;
  v203 = v193;
  v194 = v184;
  v195 = v185;
  if (sub_1000424A8(&v194) == 1)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    *(v37 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v37 + 40) = v38;
    *(v37 + 48) = 0xD000000000000043;
    *(v37 + 56) = 0x8000000101352A60;
    v39 = sub_100907E70(v37);
    swift_setDeallocating();
    sub_10000B3A8(v37 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&v204[0] = 6;
    sub_1006953B0(v39);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = aBlock;
    sub_100FC89F8(aBlock, 1, &v184, v139, a4);

LABEL_11:

    return;
  }

  v138 = a4;
  v204[6] = v200;
  v204[7] = v201;
  v204[8] = v202;
  v204[2] = v196;
  v204[3] = v197;
  v204[4] = v198;
  v204[5] = v199;
  v204[0] = v194;
  v204[1] = v195;
  v170 = v200;
  v171 = v201;
  v172 = v202;
  v166 = v196;
  v167 = v197;
  v168 = v198;
  v169 = v199;
  v205 = v203;
  v173 = v203;
  v164 = v194;
  v165 = v195;
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  v55 = [v36 keyGenerationStatus];
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v36;
  v59 = v58;

  *&aBlock = v56;
  *(&aBlock + 1) = v59;
  sub_1000E0A3C();
  v60 = DataProtocol.intValue.getter();
  sub_100016590(v56, v59);
  if (v60)
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v61 = swift_allocObject();
    v140 = xmmword_101385D80;
    *(v61 + 16) = xmmword_101385D80;
    v62 = [v57 keyGenerationStatus];
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v35;
    v65 = v64;

    v66 = Data.hexString.getter();
    v68 = v67;
    sub_100016590(v63, v65);
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_100008C00();
    *(v61 + 32) = v66;
    *(v61 + 40) = v68;
    os_log(_:dso:log:_:_:)();

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v69 = swift_allocObject();
    *(v69 + 16) = v140;
    *(v69 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v69 + 40) = v70;
    *(v69 + 48) = 0xD000000000000050;
    *(v69 + 56) = 0x8000000101352B00;
    v71 = sub_100907E70(v69);
    swift_setDeallocating();
    sub_10000B3A8(v69 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 3;
    sub_1006953B0(v71);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v72 = *&v142[0];
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v153 = v173;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v149 = v169;
    v144 = v164;
    v145 = v165;
    SharingCircleWildAdvertisementKey.init(key:)(&v144);
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v215 = v153;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    v211 = v149;
    aBlock = v144;
    v207 = v145;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v163 = v183;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v159 = v179;
    v154 = v174;
    v155 = v175;
    sub_100407B48(&v154, v143);
    sub_100FC89F8(v72, 1, &aBlock, v139, v138);

    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);
LABEL_19:

    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);

    return;
  }

  v73 = *(v33 + 24);
  if (!v73)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_101385D80;
    *(v82 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v82 + 40) = v83;
    *(v82 + 48) = 0xD00000000000004ELL;
    *(v82 + 56) = 0x8000000101352BA0;
    v84 = sub_100907E70(v82);
    swift_setDeallocating();
    sub_10000B3A8(v82 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 7;
    sub_1006953B0(v84);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v72 = *&v142[0];
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v153 = v173;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v149 = v169;
    v144 = v164;
    v145 = v165;
    SharingCircleWildAdvertisementKey.init(key:)(&v144);
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v215 = v153;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    v211 = v149;
    aBlock = v144;
    v207 = v145;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v163 = v183;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v159 = v179;
    v154 = v174;
    v155 = v175;
    sub_100407B48(&v154, v143);
    sub_100FC89F8(v72, 1, &aBlock, v139, v138);

    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);
    goto LABEL_19;
  }

  v74 = *(v33 + 24);

  v75 = [v141 collaborativeKeyC3];
  v76 = v138;
  if (!v75)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_101385D80;
    *(v85 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v85 + 40) = v86;
    *(v85 + 48) = 0xD000000000000050;
    *(v85 + 56) = 0x8000000101352C30;
    v87 = sub_100907E70(v85);
    swift_setDeallocating();
    sub_10000B3A8(v85 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 6;
    sub_1006953B0(v87);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v72 = *&v142[0];
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v153 = v173;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v149 = v169;
    v144 = v164;
    v145 = v165;
    SharingCircleWildAdvertisementKey.init(key:)(&v144);
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v215 = v153;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    v211 = v149;
    aBlock = v144;
    v207 = v145;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v163 = v183;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v159 = v179;
    v154 = v174;
    v155 = v175;
    sub_100407B48(&v154, v143);
    sub_100FC89F8(v72, 1, &aBlock, v139, v76);

    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);

    goto LABEL_19;
  }

  v137 = v35;
  v77 = v75;
  v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = CCCKGGetOpeningSize();

  sub_1003F141C(v78, v80, v73, v81, v142);
  v134 = v80;
  v135 = v78;
  v136 = v73;
  v207 = v142[1];
  v208 = v142[2];
  v209 = v142[3];
  v210 = v142[4];
  aBlock = v142[0];
  v88 = *(v140 + 280);
  v89 = v88[23];
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v90 = *(v154 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (v154 != 1)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_101385D80;
    *(v122 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v122 + 40) = v123;
    *(v122 + 48) = 0xD000000000000040;
    *(v122 + 56) = 0x8000000101352D90;
    v124 = sub_100907E70(v122);
    swift_setDeallocating();
    sub_10000B3A8(v122 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&v144 = 10;
    sub_1006953B0(v124);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v125 = v154;
    v139(v154, 1);

    sub_1001DA760(&aBlock);
    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);
    sub_100016590(v135, v134);

    goto LABEL_11;
  }

  v91 = [v141 chipId];
  v93 = v134;
  v92 = v135;
  v94 = v138;
  if (!v91)
  {
LABEL_37:
    sub_1003D5638(v33, v140, &aBlock, v141, v204, v139, v94, v129);

    sub_1001DA760(&aBlock);
    sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);
    sub_100016590(v92, v93);

    goto LABEL_11;
  }

  v95 = v91;
  v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v99 = Data.hexString.getter();
  v101 = v100;
  sub_100016590(v96, v98);
  v102 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v102 = v99 & 0xFFFFFFFFFFFFLL;
  }

  if (!v102 || (v103 = [v141 ecid]) == 0)
  {
LABEL_36:
    v92 = v135;

    goto LABEL_37;
  }

  v104 = v33;
  v105 = v103;
  v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  v109 = Data.hexString.getter();
  v111 = v110;
  sub_100016590(v106, v108);
  v112 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v112 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (!v112 || (v113 = [v141 serialNumber]) == 0)
  {
LABEL_35:

    v33 = v104;
    v94 = v138;
    goto LABEL_36;
  }

  v114 = v113;
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;

  v118 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v118 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v118)
  {

    v93 = v134;
    goto LABEL_35;
  }

  v119 = v128;
  *v128 = v99;
  v119[1] = v101;
  v119[2] = v109;
  v119[3] = v111;
  v119[4] = v115;
  v119[5] = v117;
  swift_storeEnumTagMultiPayload();
  v120 = dispatch_group_create();
  dispatch_group_enter(v120);
  v121 = v120;
  sub_1003FEF4C(v119, v88, v121);

  OS_dispatch_group.wait()();
  sub_1003D5638(v104, v140, &aBlock, v141, v204, v139, v138, v129);
  sub_1001DA760(&aBlock);

  sub_100016590(v135, v134);

  sub_10000B3A8(&v184, &qword_10169F428, &qword_1013A08E8);

  sub_10040A66C(v119, type metadata accessor for StableIdentifier);
}

void sub_1003D4ACC(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_1006953B0(a3);
  sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v5, 1);
}

__n128 sub_1003D4B8C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 144);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_15;
  }

  v7 = v108;
  v14 = [a1 ecid];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [a1 chipId];
    if (v19)
    {
      v20 = v19;
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = [a1 serialNumber];
      if (v24)
      {
        v97 = v21;
        v25 = v16;
        v26 = v24;
        *&v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = [a1 systemVersion];
        if (v29)
        {
          *(&v96 + 1) = v28;
          v30 = v29;
          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = [a1 confirmSignature];
          if (v33)
          {
            v93 = v32;
            v34 = v33;
            *&v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v94 + 1) = v35;

            v36 = v25;
            if (*(a2 + 65) == 1)
            {
              v91 = v18;
              v92 = v25;
              if (qword_1016946D0 != -1)
              {
                swift_once();
              }

              v90 = v23;
              v37 = type metadata accessor for Logger();
              sub_1000076D4(v37, qword_10177ACC8);
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 0;
                _os_log_impl(&_mh_execute_header, v38, v39, "AlphaWasp: bypassing missing server seed and BAA certs if needed", v40, 2u);
              }

              v41 = [a1 serverSeed];
              if (v41)
              {
                v42 = v41;
                v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;
              }

              else
              {
                v89 = 0;
                v44 = 0xC000000000000000;
              }

              sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
              v59 = swift_allocObject();
              *(v59 + 16) = xmmword_10138BBE0;
              v60 = *(a2 + 32);
              v61 = *(a2 + 40);
              if (v61 >> 60 == 15)
              {
                v62 = 0;
              }

              else
              {
                v62 = *(a2 + 32);
              }

              if (v61 >> 60 == 15)
              {
                v63 = 0xC000000000000000;
              }

              else
              {
                v63 = *(a2 + 40);
              }

              *(v59 + 32) = v62;
              *(v59 + 40) = v63;
              v64 = *(a2 + 48);
              v65 = *(a2 + 56);
              if (v65 >> 60 == 15)
              {
                v66 = 0;
              }

              else
              {
                v66 = *(a2 + 48);
              }

              if (v65 >> 60 == 15)
              {
                v67 = 0xC000000000000000;
              }

              else
              {
                v67 = *(a2 + 56);
              }

              *(v59 + 48) = v66;
              *(v59 + 56) = v67;
              sub_10002E98C(v60, v61);
              v68 = v64;
              v69 = v65;
              goto LABEL_50;
            }

            v52 = [a1 serverSeed];
            v53 = v23;
            if (v52)
            {
              v92 = v36;
              v54 = v52;
              v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = v56;

              v57 = *(a2 + 40);
              if (v57 >> 60 == 15)
              {

                static os_log_type_t.error.getter();
                v58 = v92;
                if (qword_101695068 != -1)
                {
                  swift_once();
                  v58 = v92;
                }

                os_log(_:dso:log:_:_:)();
                sub_100016590(v94, *(&v94 + 1));
                sub_100016590(v97, v53);
                sub_100016590(v58, v18);
              }

              else
              {
                v78 = *(a2 + 32);
                v79 = *(a2 + 56);
                if (v79 >> 60 != 15)
                {
                  v89 = v55;
                  v90 = v53;
                  v91 = v18;
                  v83 = *(a2 + 48);
                  v84 = v78;
                  v85 = v57;
                  v86 = v79;
                  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
                  v59 = swift_allocObject();
                  *(v59 + 16) = xmmword_10138BBE0;
                  *(v59 + 32) = v84;
                  *(v59 + 40) = v85;
                  *(v59 + 48) = v83;
                  *(v59 + 56) = v86;
                  sub_10002E98C(v84, v85);
                  v68 = v83;
                  v69 = v86;
LABEL_50:
                  sub_10002E98C(v68, v69);
                  v88 = [a1 productId];
                  v87 = [a1 vendorId];
                  v70 = [a1 nonce];
                  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v73 = v72;

                  v74 = [a1 keyGenerationStatus];
                  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v77 = v76;

                  *&v98 = v92;
                  *(&v98 + 1) = v91;
                  *&v99 = v97;
                  *(&v99 + 1) = v90;
                  v100 = v96;
                  *&v101 = v88;
                  *(&v101 + 1) = v87;
                  *&v102 = v95;
                  *(&v102 + 1) = v93;
                  v103 = v94;
                  *&v104 = v71;
                  *(&v104 + 1) = v73;
                  *&v105 = v89;
                  *(&v105 + 1) = v44;
                  *&v106 = v75;
                  *(&v106 + 1) = v77;
                  v107 = v59;
                  SharingCircleWildAdvertisementKey.init(key:)(&v98);
                  v108[6] = v104;
                  v108[7] = v105;
                  v108[8] = v106;
                  v109 = v107;
                  v108[2] = v100;
                  v108[3] = v101;
                  v108[4] = v102;
                  v108[5] = v103;
                  v108[0] = v98;
                  v108[1] = v99;
                  goto LABEL_30;
                }

                v80 = *(a2 + 32);
                v81 = v57;
                sub_100017D5C(v78, v57);

                static os_log_type_t.error.getter();
                v82 = v92;
                if (qword_101695068 != -1)
                {
                  swift_once();
                  v82 = v92;
                }

                os_log(_:dso:log:_:_:)();
                sub_100016590(v94, *(&v94 + 1));
                sub_100016590(v97, v53);
                sub_100016590(v82, v18);
                sub_100006654(v80, v81);
              }

              v45 = v55;
              v46 = v44;
              goto LABEL_28;
            }

            static os_log_type_t.error.getter();
            if (qword_101695068 != -1)
            {
              swift_once();
            }

            os_log(_:dso:log:_:_:)();
            sub_100016590(v94, *(&v94 + 1));
            sub_100016590(v97, v23);
            v45 = v36;
LABEL_27:
            v46 = v18;
LABEL_28:
            sub_100016590(v45, v46);
            goto LABEL_29;
          }

          static os_log_type_t.error.getter();
          if (qword_101695068 == -1)
          {
LABEL_26:
            os_log(_:dso:log:_:_:)();
            sub_100016590(v97, v23);
            v45 = v25;
            goto LABEL_27;
          }
        }

        else
        {

          static os_log_type_t.error.getter();
          if (qword_101695068 == -1)
          {
            goto LABEL_26;
          }
        }

        swift_once();
        goto LABEL_26;
      }

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_100016590(v21, v23);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }

    v45 = v16;
    goto LABEL_27;
  }

  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    goto LABEL_61;
  }

LABEL_15:
  os_log(_:dso:log:_:_:)();
LABEL_29:
  sub_100407E28(v108);
LABEL_30:
  v47 = v7[7];
  *(a3 + 96) = v7[6];
  *(a3 + 112) = v47;
  *(a3 + 128) = v7[8];
  *(a3 + 144) = v109;
  v48 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v48;
  v49 = v7[5];
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v49;
  result = *v7;
  v51 = v7[1];
  *a3 = *v7;
  *(a3 + 16) = v51;
  return result;
}

uint64_t sub_1003D55D8()
{
  v1 = *(v0 + 16);
  sub_101165DF8();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1003D5638(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v73 = a6;
  v74 = a7;
  v72 = a3;
  v11 = a5[7];
  v103 = a5[6];
  v104 = v11;
  v105 = a5[8];
  v106 = *(a5 + 18);
  v12 = a5[3];
  v99 = a5[2];
  v100 = v12;
  v13 = a5[5];
  v101 = a5[4];
  v102 = v13;
  v14 = a5[1];
  v97 = *a5;
  v98 = v14;
  v67 = type metadata accessor for PairingConfig();
  v15 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v69 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v71 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v25 = a1;
  v68 = a2;
  v26 = *(a2 + 280);
  v27 = v72;
  v72 = a4;
  sub_100A852A4(v27, a4, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPPairingSessionError(0);
    *&v87 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v76;
    v83 = v103;
    v84 = v104;
    v85 = v105;
    v86 = v106;
    v79 = v99;
    v80 = v100;
    v81 = v101;
    v82 = v102;
    v77 = v97;
    v78 = v98;
    SharingCircleWildAdvertisementKey.init(key:)(&v77);
    v93 = v83;
    v94 = v84;
    v95 = v85;
    v96 = v86;
    v89 = v79;
    v90 = v80;
    v91 = v81;
    v92 = v82;
    v87 = v77;
    v88 = v78;
    sub_100FC89F8(v28, 1, &v87, v73, v74);
  }

  else
  {
    v29 = v71;
    sub_10040A014(v20, v71, type metadata accessor for OwnedBeaconRecord);
    v30 = dispatch_group_create();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    dispatch_group_enter(v30);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v32 = v30;

    sub_10025B81C(v29, v26, v25, v32, v31, v70);
    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*(v31 + 16) == 1)
    {
      v66 = v31;
      v64 = v25;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v33 = dispatch_group_create();
      dispatch_group_enter(v33);
      v34 = swift_allocObject();
      type metadata accessor for SPPairingSessionError(0);
      *&v77 = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v34 + 16) = v87;
      v63 = v34 + 16;
      *(v34 + 24) = 1;
      v35 = v72;
      v36 = [v72 name];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v39;
        v62 = v38;
      }

      else
      {
        v61 = 0xE000000000000000;
        v62 = 0;
      }

      v41 = [v35 roleId];
      v42 = [v35 roleEmoji];
      v65 = v32;
      if (v42)
      {
        v43 = v42;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v47 = *(v67 + 28);
      v48 = type metadata accessor for AccessoryProductInfo();
      v49 = v69;
      (*(*(v48 - 8) + 56))(v69 + v47, 1, 1, v48);
      v50 = v61;
      v49->isa = v62;
      v49[1].isa = v50;
      v49[2].isa = v41;
      v49[3].isa = v44;
      v49[4].isa = v46;
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      v53 = v64;
      v52[2] = v33;
      v52[3] = v53;
      v52[4] = v34;
      v52[5] = v51;
      v54 = v72;
      v55 = v70;
      v52[6] = v72;
      v52[7] = v55;

      v56 = v33;

      v57 = v54;
      v58 = v71;
      sub_100B093F8(v71, v49, sub_100407BD0, v52);

      OS_dispatch_group.wait()();
      swift_beginAccess();
      v59 = *(v34 + 16);
      LODWORD(v51) = *(v34 + 24);
      v83 = v103;
      v84 = v104;
      v85 = v105;
      v86 = v106;
      v79 = v99;
      v80 = v100;
      v81 = v101;
      v82 = v102;
      v77 = v97;
      v78 = v98;
      SharingCircleWildAdvertisementKey.init(key:)(&v77);
      v93 = v83;
      v94 = v84;
      v95 = v85;
      v96 = v86;
      v89 = v79;
      v90 = v80;
      v91 = v81;
      v92 = v82;
      v87 = v77;
      v88 = v78;
      v60 = v59;
      sub_100FC89F8(v59, v51, &v87, v73, v74);

      sub_10040A66C(v49, type metadata accessor for PairingConfig);
      sub_10040A66C(v58, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPPairingSessionError(0);
      *&v87 = 19;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v40 = v75;
      v83 = v103;
      v84 = v104;
      v85 = v105;
      v86 = v106;
      v79 = v99;
      v80 = v100;
      v81 = v101;
      v82 = v102;
      v77 = v97;
      v78 = v98;
      SharingCircleWildAdvertisementKey.init(key:)(&v77);
      v93 = v83;
      v94 = v84;
      v95 = v85;
      v96 = v86;
      v89 = v79;
      v90 = v80;
      v91 = v81;
      v92 = v82;
      v87 = v77;
      v88 = v78;
      sub_100FC89F8(v40, 1, &v87, v73, v74);

      sub_10040A66C(v29, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

void sub_1003D5F88(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  swift_beginAccess();
  *(a4 + 16) = a1 == 0;
  dispatch_group_leave(a3);
}

void sub_1003D6068(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v100 = a7;
  v102 = a5;
  v103 = a3;
  v96 = type metadata accessor for BeaconEstimatedLocation();
  v93 = *(v96 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v96);
  v94 = v11;
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v92 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(v14 - 8);
  v97 = v14;
  v98 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  *&v104 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v18;
  __chkstk_darwin(v17);
  v20 = &v92 - v19;
  v21 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v92 - v23);
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v101 = a4;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_1000D2A70(a1, v24, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    v104 = xmmword_101385D80;
    *(v26 + 16) = xmmword_101385D80;
    v106 = v25;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = v104;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v31;
    *(inited + 48) = 0xD000000000000032;
    *(inited + 56) = 0x8000000101353060;
    v32 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v106 = 11;
    sub_1006953B0(v32);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();

    v33 = v105;
    v34 = v102;
    swift_beginAccess();
    v35 = *(v34 + 16);
    *(v34 + 16) = v33;
    *(v34 + 24) = 1;

LABEL_24:
    dispatch_group_leave(v103);
    return;
  }

  sub_10040A014(v24, v20, type metadata accessor for OwnedBeaconRecord);
  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  sub_100032504(v20, v104, type metadata accessor for OwnedBeaconRecord);
  v37 = v97;
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  v41 = v20;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = *(Strong + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);

    sub_100A5187C(v20);
  }

  swift_beginAccess();
  v44 = swift_weakLoadStrong();
  v45 = v101;
  if (!v44)
  {
LABEL_10:
    swift_beginAccess();
    v47 = swift_weakLoadStrong();
    if (v47)
    {
      v48 = *(v47 + 280);
      swift_retain_n();

      v49 = sub_10003EB74(v20, v48);
      v92 = v48;

      type metadata accessor for Transaction();
      v50 = swift_allocObject();
      *(v50 + 16) = v45;
      *(v50 + 24) = v49;

      v51 = v49;
      static Transaction.asyncTask(name:block:)();

      v45 = v101;
    }

    else
    {
      v92 = 0;
    }

    v52 = *(v37 + 20);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v54 = v100;
    [v100 updateBeaconId:isa];

    v55 = *(v45 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
    v56 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v57 = *(v55 + v56);
    if (v57)
    {
      v58 = v57;
      [v54 updatePairingLocation:v58];
      v59 = v96;
      v60 = &v13[*(v96 + 20)];
      UUID.init()();
      v61 = v59[6];
      v62 = type metadata accessor for UUID();
      (*(*(v62 - 8) + 16))(&v13[v61], v41 + v52, v62);
      [v58 coordinate];
      v64 = v63;
      [v58 coordinate];
      v66 = v65;
      [v58 horizontalAccuracy];
      v68 = v67;
      v69 = [v58 timestamp];
      v70 = &v13[v59[10]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v59[12];
      v72 = type metadata accessor for Date();
      (*(*(v72 - 8) + 56))(&v13[v71], 1, 1, v72);
      *v13 = xmmword_10138C660;
      *&v13[v59[7]] = v64;
      *&v13[v59[8]] = v66;
      *&v13[v59[9]] = v68;
      v13[v59[11]] = 1;
      *&v13[v59[13]] = 0;
      swift_beginAccess();
      v73 = swift_weakLoadStrong();
      if (v73)
      {
        v101 = *(v73 + 280);

        v74 = v41;
        v75 = v95;
        sub_100032504(v13, v95, type metadata accessor for BeaconEstimatedLocation);
        v76 = v104;
        sub_100032504(v74, v104, type metadata accessor for OwnedBeaconRecord);
        v77 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v78 = (v94 + *(v98 + 80) + v77) & ~*(v98 + 80);
        v79 = swift_allocObject();
        v80 = v75;
        v41 = v74;
        sub_10040A014(v80, v79 + v77, type metadata accessor for BeaconEstimatedLocation);
        v54 = v100;
        sub_10040A014(v76, v79 + v78, type metadata accessor for OwnedBeaconRecord);
        sub_100A9DA2C(v13, sub_100407D54, v79);
      }

      sub_10040A66C(v13, type metadata accessor for BeaconEstimatedLocation);
    }

    v81 = v102;
    swift_beginAccess();
    v82 = *(v81 + 16);
    *(v81 + 16) = v54;
    *(v81 + 24) = 0;

    swift_beginAccess();
    v83 = swift_weakLoadStrong();
    if (v83)
    {
      v84 = *(v83 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
      v85 = v54;
    }

    else
    {
      v86 = v54;
      v84 = 0;
    }

    swift_beginAccess();
    v87 = swift_weakLoadStrong();
    if (v87)
    {
      v88 = *(v87 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateScheduler);
    }

    else
    {
      v88 = 0;
    }

    type metadata accessor for Transaction();
    v89 = v104;
    sub_100032504(v41, v104, type metadata accessor for OwnedBeaconRecord);
    v90 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v84;
    *(v91 + 24) = v88;
    sub_10040A014(v89, v91 + v90, type metadata accessor for OwnedBeaconRecord);

    static Transaction.asyncTask(name:block:)();

    sub_10040A66C(v41, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_24;
  }

  v46 = *(v44 + 40);

  if (v46)
  {
    sub_1005288AC(v20);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1003D6C40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003D6C60, 0, 0);
}

uint64_t sub_1003D6C60()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1003D6C90, v1, 0);
}

uint64_t sub_1003D6C90()
{
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003D6D60(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v26 - v4);
  sub_1000D2A70(a1, v26 - v4, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10138B360;
    v8 = *(type metadata accessor for BeaconEstimatedLocation() + 40);
    type metadata accessor for Date();
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    *(v7 + 56) = &type metadata for String;
    v12 = sub_100008C00();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    LODWORD(v9) = *(type metadata accessor for OwnedBeaconRecord() + 20);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    v26[1] = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v12;
    *(v7 + 112) = v15;
    *(v7 + 120) = v16;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    v19 = *(type metadata accessor for BeaconEstimatedLocation() + 40);
    type metadata accessor for Date();
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v18 + 64) = v23;
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    LODWORD(v20) = *(type metadata accessor for OwnedBeaconRecord() + 20);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    os_log(_:dso:log:_:_:)();

    return sub_10000B3A8(v5, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_1003D7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003D71BC, 0, 0);
}

uint64_t sub_1003D71BC()
{
  if (*(v0 + 16) && *(v0 + 24))
  {

    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 32);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    *(v0 + 40) = *(type metadata accessor for OwnedBeaconRecord() + 20);
    v3 = UUID.uuidString.getter();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();

    v6 = *(v0 + 16);

    return _swift_task_switch(sub_1003D735C, v6, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1003D735C()
{
  v1 = *(v0 + 16);
  sub_100252E44(*(v0 + 32) + *(v0 + 40));

  return _swift_task_switch(sub_1003D73D0, 0, 0);
}

uint64_t sub_1003D73D0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10023634C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003D7440()
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100407A74;
  *(v2 + 24) = v0;
  v5[4] = sub_1000D2FB0;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10013FE14;
  v5[3] = &unk_10161AFC0;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D75E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 80);
  if (v18)
  {
    v19 = *(v14 + 80);

    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
  }

  else
  {
    v35 = v15;
    v36 = v14;
    v37 = v11;
    v38 = v8;
    v39 = v6;
    v40 = v7;
    v34 = v3;
    v41 = v2;
    v21 = sub_1000BC4D4(&qword_10169F470, &qword_1013A0A40);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v18 = Future.init()();
    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v24 = v36;
    v25 = *(v36 + 80);
    *(v36 + 80) = v18;

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v26 = v35;
    (*(v35 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v26 + 8))(v17, v12);
    v28 = swift_allocObject();
    v28[2] = v24;
    v28[3] = v18;
    v28[4] = v42;
    aBlock[4] = sub_10040A410;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161B970;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[7] = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v31 = v39;
    v32 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v43 + 8))(v31, v32);
    (*(v38 + 8))(v30, v40);
  }

  *v44 = v18;
  return result;
}

uint64_t sub_1003D7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 280);

  sub_100B0F108(v6, a1, a2, a3);
}

uint64_t sub_1003D7BB0()
{
  v0 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  sub_1003D7440();
  v4 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  Future.finish(result:)();
  return sub_10000B3A8(v3, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003D7C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  sub_1000D2A70(v31, v15, &unk_1016B15A0, &qword_1013A0900);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1000D2AD8(v15, v24 + v21, &unk_1016B15A0, &qword_1013A0900);
  v25 = v33;
  *(v24 + v22) = v32;
  *(v24 + v23) = v25;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  aBlock[4] = sub_10040A4C8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161BA38;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v30;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v38 + 8))(v6, v27);
  (*(v36 + 8))(v10, v37);
}

uint64_t sub_1003D8150(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v22 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v21 - v13);
  sub_1000D2A70(a1, &v21 - v13, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v24 = v15;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    sub_1003D7440();
    (*(v7 + 56))(v6, 1, 1, v22);
    Future.finish(result:)();

    return sub_10000B3A8(v6, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    sub_10040A014(v14, v10, type metadata accessor for OwnedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100032504(v10, v6, type metadata accessor for OwnedBeaconRecord);
    (*(v7 + 56))(v6, 0, 1, v22);
    Future.finish(result:)();
    sub_10000B3A8(v6, &unk_1016A9A20, &qword_10138B280);
    sub_100A5187C(v10);
    return sub_10040A66C(v10, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_1003D8548()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v68 = *(v2 - 8);
  v3 = *(v68 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v61 - v8;
  v73 = v10;
  __chkstk_darwin(v7);
  v65 = v61 - v11;
  v69 = type metadata accessor for StableIdentifier();
  v12 = *(*(v69 - 8) + 64);
  v13 = __chkstk_darwin(v69);
  v67 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = (v61 - v15);
  v16 = type metadata accessor for SystemInfo.DeviceLockState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v61 - v22;
  static SystemInfo.lockState.getter();
  (*(v17 + 104))(v21, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v16);
  sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v21, v16);
  v25(v23, v16);
  if (v24)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

    goto LABEL_26;
  }

  v72 = v2;
  v26 = MobileGestalt_get_current_device();
  if (v26)
  {
    v27 = v26;
    v28 = MobileGestalt_copy_uniqueDeviceID_obj();

    v29 = v1;
    v30 = v66;
    if (v28)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {

      static os_log_type_t.error.getter();
      if (qword_101695038 == -1)
      {
        return os_log(_:dso:log:_:_:)();
      }

LABEL_26:
      swift_once();
      return os_log(_:dso:log:_:_:)();
    }

    *v30 = v31;
    v30[1] = v33;
    swift_storeEnumTagMultiPayload();
    v35 = objc_autoreleasePoolPush();
    v36 = *(v1 + 280);
    v37 = sub_100025044();
    __chkstk_darwin(v37);
    v61[-2] = v30;
    v74 = sub_10013D1C8(sub_10040A578, &v61[-4], v38);

    sub_1003F135C(&v74, sub_1003F2680, sub_1003F174C);

    v39 = v74;
    objc_autoreleasePoolPop(v35);
    v40 = v39[2];
    v41 = v65;
    if (v40)
    {
      v42 = *(v68 + 80);
      v43 = sub_100032504(v39 + ((v42 + 32) & ~v42), v65, type metadata accessor for OwnedBeaconRecord);
      if (v40 == 1)
      {
      }

      else
      {
        v62 = (v42 + 32) & ~v42;
        v71 = v42;
        __chkstk_darwin(v43);
        v61[-2] = v41;
        v45 = sub_10013D1C8(sub_10040A5C8, &v61[-4], v39);
        static os_log_type_t.error.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v46 = qword_10177C380;
        v64 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v47 = swift_allocObject();
        v70 = xmmword_101385D80;
        *(v47 + 16) = xmmword_101385D80;
        sub_100032504(v30, v67, type metadata accessor for StableIdentifier);
        v48 = v46;
        v49 = String.init<A>(describing:)();
        v51 = v50;
        *(v47 + 56) = &type metadata for String;
        v63 = sub_100008C00();
        *(v47 + 64) = v63;
        *(v47 + 32) = v49;
        *(v47 + 40) = v51;
        os_log(_:dso:log:_:_:)();

        v52 = *(v45 + 16);
        if (v52)
        {
          v61[1] = v45;
          v53 = v45 + v62;
          v54 = *(v68 + 72);
          v68 = v29;
          v69 = v54;
          v55 = (v71 + 16) & ~v71;
          v67 = v48;
          v56 = v63;
          do
          {
            sub_100032504(v53, v9, type metadata accessor for OwnedBeaconRecord);
            static os_log_type_t.default.getter();
            v57 = swift_allocObject();
            *(v57 + 16) = v70;
            sub_100032504(v9, v6, type metadata accessor for OwnedBeaconRecord);
            v58 = String.init<A>(describing:)();
            *(v57 + 56) = &type metadata for String;
            *(v57 + 64) = v56;
            *(v57 + 32) = v58;
            *(v57 + 40) = v59;
            os_log(_:dso:log:_:_:)();

            sub_100032504(v9, v6, type metadata accessor for OwnedBeaconRecord);
            v60 = swift_allocObject();
            sub_10040A014(v6, v60 + v55, type metadata accessor for OwnedBeaconRecord);
            sub_1003D9064(v9, 1, sub_10040A5FC, v60);

            sub_10040A66C(v9, type metadata accessor for OwnedBeaconRecord);
            v53 += v69;
            --v52;
          }

          while (v52);

          v41 = v65;
          v30 = v66;
        }

        else
        {

          v41 = v65;
        }
      }

      sub_10040A66C(v41, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
    }

    return sub_10040A66C(v30, type metadata accessor for StableIdentifier);
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}