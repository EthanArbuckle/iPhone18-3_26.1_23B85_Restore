uint64_t sub_100128FC8()
{
  sub_100128C40(*v0);
  String.hash(into:)();
}

Swift::Int sub_10012901C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100128C40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10012907C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100129270();
  *a2 = result;
  return result;
}

unint64_t sub_1001290AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100128C40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001290E0()
{
  _StringGuts.grow(_:)(61);
  v0._object = 0x8000000100700480;
  v0._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6E656D656C65202CLL;
  v2._object = 0xED0000203D207374;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001007004A0;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_100129218()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1001290E0();
}

unint64_t sub_100129224(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FAE60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100129270()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

char *sub_1001292C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v2 = sub_10003ADCC(0x746E656D75636F64, 0xEE0073657079742DLL);
  if ((v3 & 1) == 0 || (v4 = *(a1 + 56), v5 = *(v4 + 8 * v2), (v6 = *(v5 + 16)) == 0))
  {
    v9 = _swiftEmptyArrayStorage;
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v7 = *(v4 + 8 * v2);

  v8 = (v5 + 40);
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;

    v12._countAndFlagsBits = v10;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&off_1007FB0E0, v12);

    if (v13 <= 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1003C5778(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_1003C5778((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v9[v15 + 32] = v13;
    }

    v8 += 2;
    --v6;
  }

  while (v6);

  if (*(a1 + 16))
  {
LABEL_16:
    v16 = sub_10003ADCC(0x73746E656D656C65, 0xE800000000000000);
    if (v17)
    {
      v18 = *(a1 + 56);
      v19 = *(v18 + 8 * v16);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v18 + 8 * v16);

        v22 = (v19 + 40);
        v23 = _swiftEmptyArrayStorage;
        do
        {
          v24 = *(v22 - 1);
          v25 = *v22;

          v26 = sub_100129270();
          if (v26 != 20)
          {
            v27 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1003C5764(0, *(v23 + 2) + 1, 1, v23);
            }

            v29 = *(v23 + 2);
            v28 = *(v23 + 3);
            if (v29 >= v28 >> 1)
            {
              v23 = sub_1003C5764((v28 > 1), v29 + 1, 1, v23);
            }

            *(v23 + 2) = v29 + 1;
            v23[v29 + 32] = v27;
          }

          v22 += 2;
          --v20;
        }

        while (v20);
      }
    }
  }

LABEL_26:

  return v9;
}

uint64_t sub_100129568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001295B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100129604()
{
  result = qword_10083B118;
  if (!qword_10083B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B118);
  }

  return result;
}

unint64_t sub_10012965C()
{
  result = qword_10083B120;
  if (!qword_10083B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B120);
  }

  return result;
}

uint64_t sub_1001296B0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Locale.Region();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013KnownDocTypes();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for IdentityDocumentDescriptor();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100129888, 0, 0);
}

uint64_t sub_100129888()
{
  v57 = v0;
  v1 = v0[4];
  v2 = IdentityDocumentCompoundDescriptor.descriptors.getter();
  v3 = sub_10003D21C(_swiftEmptyArrayStorage);
  v11 = v3;
  v55 = v0;
  v52 = *(v2 + 16);
  if (v52)
  {
    v12 = 0;
    v53 = v0[16];
    v49 = (v0[7] + 8);
    v50 = (v0[10] + 8);
    v51 = v2;
    while (v12 < *(v2 + 16))
    {
      v13 = v55[11];
      (*(v53 + 16))(v55[17], v2 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v12, v55[15]);
      sub_100142F4C(v13);
      v14 = v55[17];
      v15 = v55[11];
      v17 = v55[8];
      v16 = v55[9];
      v18 = ISO18013KnownDocTypes.rawValue.getter();
      v20 = v19;
      (*v50)(v15, v16);
      sub_1001436AC(v17);
      v21 = v55[17];
      v22 = v55[15];
      ++v12;
      v23 = v55[8];
      v24 = v55[6];
      v25 = Locale.Region.identifier.getter();
      v27 = v26;
      (*v49)(v23, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v11;
      sub_10016CAB8(v25, v27, v18, v20, isUniquelyReferenced_nonNull_native);

      v3 = (*(v53 + 8))(v21, v22);
      v2 = v51;
      if (v52 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v55[18] = v11;
    v29 = v55[14];

    v31 = sub_1006983EC(v30);
    v55[19] = v31;
    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v55[13];
    v54 = v55[14];
    v36 = v55[12];
    if (v34)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      v39 = Set.description.getter();
      v41 = sub_100141FE4(v39, v40, &v56);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "hasDocumentCredential: documentTypes %s", v37, 0xCu);
      sub_10000BB78(v38);
    }

    (*(v35 + 8))(v54, v36);
    v42 = v55[5];
    v43 = swift_task_alloc();
    v55[20] = v43;
    *(v43 + 16) = v31;
    *(v43 + 24) = v42;
    v44 = sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
    v45 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v46 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v47 = swift_task_alloc();
    v55[21] = v47;
    *v47 = v55;
    v47[1] = sub_100129D58;
    v59 = v45;
    v8 = &unk_1006D9580;
    v3 = (v55 + 2);
    v4 = v44;
    v5 = v45;
    v6 = 0;
    v7 = 0;
    v9 = v43;
    v10 = v44;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100129D58()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  v6 = v2[19];
  if (v0)
  {
    v7 = v2[18];

    v8 = sub_10012A1B4;
  }

  else
  {

    v8 = sub_100129EC8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100129EC8()
{
  v1 = v0[18];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v1;
  v6 = sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);
  v7 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_100129FEC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 27, v6, &type metadata for Bool, 0, 0, &unk_1006D9590, v5, v6);
}

uint64_t sub_100129FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_10012A248;
  }

  else
  {
    v5 = v2[23];
    v6 = v2[24];
    v7 = v2[18];

    v4 = sub_10012A11C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012A11C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 216);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10012A1B4()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10012A248()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[18];

  v4 = v0[26];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10012A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_100007224(&qword_10083B218, &qword_1006D95D0);
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10012A40C, 0, 0);
}

uint64_t sub_10012A40C()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = *(v0 + 104);

  v12 = 0;
  v39 = v8;
  v40 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    v17 = (*(v41 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7)))));
    v18 = v17[1];
    v42 = *v17;
    v43 = *(v0 + 120);
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v22 = v21 + 2;
    v21[3] = 0;
    v21[4] = v16;
    v21[5] = v42;
    v21[6] = v18;
    sub_10000BBC4(v15, v43, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v15) = (*(v20 + 48))(v43, 1, v19);

    v23 = *(v0 + 120);
    if (v15 == 1)
    {
      sub_10000BE18(*(v0 + 120), &unk_100845860, &unk_1006BF9D0);
      if (*v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v23, v19);
      if (*v22)
      {
LABEL_12:
        v24 = v21[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = dispatch thunk of Actor.unownedExecutor.getter();
        v27 = v26;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v25 = 0;
    v27 = 0;
LABEL_15:
    v28 = **(v0 + 96);

    sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
    v29 = v27 | v25;
    if (v27 | v25)
    {
      v29 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v25;
      *(v0 + 40) = v27;
    }

    v13 = *(v0 + 128);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v29;
    *(v0 + 64) = v28;
    swift_task_create();

    v9 = sub_10000BE18(v13, &unk_100845860, &unk_1006BF9D0);
    v8 = v39;
    v3 = v40;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
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

  v30 = *(v0 + 152);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);

  v33 = *v32;
  *(v0 + 72) = _swiftEmptyArrayStorage;
  sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v34 = sub_10012D234(&qword_10083B220, &qword_10083B218, &qword_1006D95D0);
  v35 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v36 = swift_task_alloc();
  *(v0 + 160) = v36;
  *v36 = v0;
  v36[1] = sub_10012A820;
  v37 = *(v0 + 152);
  v10 = *(v0 + 136);
  v9 = v0 + 80;
  v11 = v34;

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
}

uint64_t sub_10012A820()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = v2[9];

    v5 = sub_10012AC54;
  }

  else
  {
    v5 = sub_10012A954;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012A954()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v1 + 64;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 64);
    v6 = (63 - v4) >> 6;

    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (v5)
    {
LABEL_11:
      v13 = v1;
      v14 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v5)))));
      v15 = *(v14 + 16);
      v16 = *(v11 + 2);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(isUniquelyReferenced_nonNull_native, v8, v9);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 > *(v11 + 3) >> 1)
      {
        if (v16 <= v17)
        {
          v18 = v16 + v15;
        }

        else
        {
          v18 = v16;
        }

        isUniquelyReferenced_nonNull_native = sub_1003C5110(isUniquelyReferenced_nonNull_native, v18, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      v5 &= v5 - 1;
      if (*(v14 + 16))
      {
        if ((*(v11 + 3) >> 1) - *(v11 + 2) < v15)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        v1 = v13;
        if (v15)
        {
          v19 = *(v11 + 2);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_33;
          }

          *(v11 + 2) = v21;
        }
      }

      else
      {

        v1 = v13;
        if (v15)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v12);
      ++v10;
      if (v5)
      {
        v10 = v12;
        goto LABEL_11;
      }
    }

    sub_10031C884(v11);

    v22 = sub_10012D234(&qword_10083B220, &qword_10083B218, &qword_1006D95D0);
    v23 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v24 = swift_task_alloc();
    v31[20] = v24;
    *v24 = v31;
    v24[1] = sub_10012A820;
    v25 = v31[19];
    v8 = v31[17];
    isUniquelyReferenced_nonNull_native = v32;
    v9 = v22;

    return dispatch thunk of AsyncIteratorProtocol.next()(isUniquelyReferenced_nonNull_native, v8, v9);
  }

  else
  {
    v26 = v0[16];
    v27 = v0[15];
    v28 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v28 = v0[9];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_10012AC54()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_10012ACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10012ACF0, 0, 0);
}

uint64_t sub_10012ACF0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_10000BA08(v2 + 4, v2[7]);
  v4 = v2[3];
  v5 = *v3;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10012ADB0;
  v7 = v0[4];

  return sub_10050657C(v4, v7, v1, v5);
}

uint64_t sub_10012ADB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10012AEFC, 0, 0);
  }
}

uint64_t sub_10012AF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_100007224(&qword_10083B208, &unk_1006D9598);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_10012B038, 0, 0);
}

uint64_t sub_10012B038()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = v0 + 2;
    v35 = *v0[12];
    v34 = type metadata accessor for TaskPriority();
    v3 = *(v34 - 8);
    v33 = *(v3 + 56);
    v32 = (v3 + 48);
    v30 = (v3 + 8);
    v4 = (v1 + 40);
    v5 = &unk_100845860;
    do
    {
      v36 = v4;
      v37 = v2;
      v9 = v0[20];
      v8 = v0[21];
      v10 = v0[14];
      v11 = v0;
      v12 = v5;
      v13 = *(v4 - 1);
      v14 = *v4;
      v33(v8, 1, 1, v34);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v10;
      v15[5] = v13;
      v15[6] = v14;
      v5 = v12;
      v0 = v11;
      sub_10000BBC4(v8, v9, v5, &unk_1006BF9D0);
      LODWORD(v9) = (*v32)(v9, 1, v34);

      v17 = v11[20];
      if (v9 == 1)
      {
        sub_10000BE18(v11[20], v5, &unk_1006BF9D0);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v30)(v17, v34);
        if (*v16)
        {
LABEL_9:
          v20 = v15[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);

      if (v19 | v18)
      {
        v6 = v31;
        *v31 = 0;
        v31[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      else
      {
        v6 = 0;
      }

      v7 = v11[21];
      v11[6] = 1;
      v11[7] = v6;
      v11[8] = v35;
      swift_task_create();

      sub_10000BE18(v7, v5, &unk_1006BF9D0);
      v4 = v36 + 2;
      --v2;
    }

    while (v37 != 1);
  }

  v22 = v0[19];
  v23 = *v0[12];
  sub_10001F8D4(0, &qword_10083B200, DCCredentialProperties_ptr);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v24 = sub_10012D234(&qword_10083B210, &qword_10083B208, &unk_1006D9598);
  v25 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v26 = swift_task_alloc();
  v0[22] = v26;
  *v26 = v0;
  v26[1] = sub_10012B3E8;
  v27 = v0[19];
  v28 = v0[17];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v28, v24);
}

uint64_t sub_10012B3E8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = sub_10012B640;
  }

  else
  {
    v4 = sub_10012B514;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012B514()
{
  v1 = *(v0 + 72);
  *(v0 + 192) = v1;
  if (v1)
  {
    *(v0 + 80) = v1;
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = sub_10012B6C0;
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);

    return sub_10012BC0C((v0 + 80), v5, v3, v4);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 152);
    **(v0 + 88) = *(v0 + 192) != 0;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10012B640()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10012B6C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = v1;

  v7 = *(v4 + 192);
  if (v1)
  {
    (*(*(v4 + 144) + 8))(*(v4 + 152), *(v4 + 136));

    v8 = sub_10012B970;
  }

  else
  {

    *(v4 + 216) = a1 & 1;
    v8 = sub_10012B824;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10012B824()
{
  if (*(v0 + 216) == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    **(v0 + 88) = *(v0 + 192) != 0;

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = sub_10012D234(&qword_10083B210, &qword_10083B208, &unk_1006D9598);
    v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_10012B3E8;
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 72, v10, v6);
  }
}

uint64_t sub_10012B970()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10012B9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10012BA14, 0, 0);
}

uint64_t sub_10012BA14()
{
  v1 = *sub_10000BA08((v0[3] + 32), *(v0[3] + 56));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10012BAC0;
  v4 = v0[4];
  v3 = v0[5];

  return sub_100507E88(v4, v3, v1);
}

uint64_t sub_10012BAC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10012D28C, 0, 0);
  }
}

uint64_t sub_10012BC0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v6 = type metadata accessor for Logger();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  v4[15] = v9;
  v4[16] = v10;

  return _swift_task_switch(sub_10012BCD8, 0, 0);
}

uint64_t sub_10012C1F4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 120);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    *(v4 + 144) = a1 & 1;

    return _swift_task_switch(sub_10012C350, 0, 0);
  }
}

uint64_t sub_10012C350()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 120);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentCredentialManager hasDocumentCredential: Biometrics are disabled for Apple Pay & Wallet and calling client is a 1st party biometrics disabled special case", v4, 2u);
    }

    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    (*(v6 + 8))(v5, v7);
    goto LABEL_5;
  }

  v9 = [*(v0 + 128) docType];
  if (v9)
  {
    v10 = *(v0 + 96);
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (*(v10 + 16))
    {
      v15 = *(v0 + 96);
      v16 = sub_10003ADCC(v12, v14);
      if ((v17 & 1) != 0 && (*(*(v0 + 80) + 16) & 1) == 0)
      {
        v18 = (*(*(v0 + 96) + 56) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v0 + 128);

        v22 = [v21 region];
        if (!v22)
        {
LABEL_16:
          v29 = *(v0 + 128);
          _StringGuts.grow(_:)(134);
          v30._countAndFlagsBits = 0xD00000000000004ALL;
          v30._object = 0x8000000100700610;
          String.append(_:)(v30);
          v31._countAndFlagsBits = v12;
          v31._object = v14;
          String.append(_:)(v31);

          v32._countAndFlagsBits = 0x6572207361682027;
          v32._object = 0xEE0027206E6F6967;
          String.append(_:)(v32);
          v33 = [v29 region];
          if (v33)
          {
            v34 = v33;
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;
          }

          else
          {
            v37 = 0xE500000000000000;
            v35 = 0x3E6C696E3CLL;
          }

          v43._countAndFlagsBits = v35;
          v43._object = v37;
          String.append(_:)(v43);

          v44._countAndFlagsBits = 0xD000000000000027;
          v44._object = 0x8000000100700660;
          String.append(_:)(v44);
          v45._countAndFlagsBits = v20;
          v45._object = v19;
          String.append(_:)(v45);

          v46._countAndFlagsBits = 39;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v47._countAndFlagsBits = 0;
          v48._countAndFlagsBits = 0x3132616432336230;
          v48._object = 0xE800000000000000;
          v47._object = 0xE000000000000000;
          logMilestone(tag:description:)(v48, v47);

LABEL_5:
          v8 = 0;
          goto LABEL_22;
        }

        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v20 == v24 && v19 == v26)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  v38._countAndFlagsBits = 0x3461313037376433;
  v39._object = 0x80000001007005E0;
  v38._object = 0xE800000000000000;
  v39._countAndFlagsBits = 0xD000000000000026;
  logMilestone(tag:description:)(v38, v39);
  v8 = 1;
LABEL_22:
  v40 = *(v0 + 120);

  v41 = *(v0 + 8);

  return v41(v8);
}

uint64_t sub_10012C700(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_10012C720, 0, 0);
}

uint64_t sub_10012C720()
{
  v1 = [*(v0 + 96) options];
  v2 = [v1 presentmentAuthPolicy];

  if (v2 == 2)
  {
    v3 = *(v0 + 104);
    v4 = v3[12];
    v5 = v3[13];
    sub_10000BA08(v3 + 9, v4);
    v6 = *(v5 + 8);
    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_10012C8BC;

    return v11(v4, v5);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_10012C8BC(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5(0);
  }

  else
  {

    return _swift_task_switch(sub_10012C9F4, 0, 0);
  }
}

uint64_t sub_10012C9F4()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[16];
    type metadata accessor for SecAccessControl(0);
    v3 = [v1 aclData];
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = static SecAccessControlRef.fromData(_:)();
    sub_10000B90C(v4, v6);
    if (v2)
    {

      v8 = v0[1];
      v9 = 0;
      goto LABEL_7;
    }

    type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    inited = swift_initStackObject();
    *(inited + 64) = 4;
    *(inited + 72) = 0;
    v12 = objc_allocWithZone(LAContext);
    v13 = v7;
    v14 = [v12 init];
    *(inited + 40) = sub_10001F8D4(0, &qword_100834448, LAContext_ptr);
    *(inited + 48) = &off_100817910;
    *(inited + 16) = v14;
    *(inited + 56) = v13;
    LOBYTE(v14) = sub_1001425D8();

    swift_setDeallocating();
    sub_10000BB78((inited + 16));

    v15 = *(inited + 72);

    v10 = v14 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v8 = v0[1];
  v9 = v10 & 1;
LABEL_7:

  return v8(v9);
}

uint64_t sub_10012CBA0()
{
  v1 = v0[3];

  sub_10000BB78(v0 + 4);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return swift_deallocClassInstance();
}

BOOL sub_10012CC14(uint64_t a1)
{
  if (!*(a1 + 40) || (*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v1 = *(a1 + 56);
  v2 = *(v1 + 16);
  v3 = (v1 + 40);
  v4 = v2 + 1;
  do
  {
    v5 = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v6 = v3 + 2;
    v7 = *v3;
    v11[0] = *(v3 - 1);
    v11[1] = v7;
    __chkstk_darwin(a1);
    v10[2] = v11;

    v8 = sub_10035C8E4(sub_1000307C0, v10, &off_1007FB190);

    v3 = v6;
  }

  while ((v8 & 1) == 0);
  return v5;
}

uint64_t sub_10012CD14(void *a1, char a2, uint64_t a3)
{
  v3 = a1[2];
  if (*a1 == 1 || v3 == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v20 = &type metadata for IDCredBiometricStore;
    v21 = &off_1008157A0;
    *&v19 = [objc_allocWithZone(DCBiometricStore) init];
    v17 = type metadata accessor for DeviceInformationProvider();
    v18 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v16);
    DeviceInformationProvider.init()();
    type metadata accessor for DigitalPresentmentCredentialManager();
    v7 = swift_allocObject();
    *(v7 + 16) = a2 & 1;
    *(v7 + 24) = a3;
    sub_10000BBC4(v22, &v13, &qword_10083B1F0, &qword_1006D9570);
    v8 = v14;

    if (v8)
    {
      sub_10000BE18(v22, &qword_10083B1F0, &qword_1006D9570);
      sub_10001F358(&v13, v15);
      sub_10001F358(v15, v7 + 32);
    }

    else
    {
      sub_10000BE18(&v13, &qword_10083B1F0, &qword_1006D9570);
      *(v7 + 56) = &type metadata for IDCredCredentialStore;
      *(v7 + 64) = &off_100815A88;
      *(v7 + 32) = a3;

      sub_10000BE18(v22, &qword_10083B1F0, &qword_1006D9570);
    }

    sub_10001F358(&v19, v7 + 72);
    sub_10001F358(&v16, v7 + 112);
    return v7;
  }

  else
  {
    v9 = a1[3];

    v11 = v3(v10);
    sub_10001FE8C(v3);
    return v11;
  }
}

uint64_t sub_10012CEDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100041F04;

  return sub_10012A2F8(a1, a2, v7, v6);
}

uint64_t sub_10012CF90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_10012AF20(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10012D05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10012B9F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012D124()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10012D16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10012ACCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10012D234(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012D294@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for DIPError.Code();
  v107 = *(v5 - 8);
  v108 = v5;
  v6 = *(v107 + 64);
  __chkstk_darwin(v5);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionType();
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v8);
  v102 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = &v101 - v13;
  v14 = type metadata accessor for DocumentRequest();
  v125 = *(v14 - 8);
  v126 = v14;
  v15 = *(v125 + 64);
  v16 = __chkstk_darwin(v14);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v106 = &v101 - v19;
  __chkstk_darwin(v18);
  v119 = &v101 - v20;
  v112 = sub_100007224(&qword_10083B228, &qword_1006D95F8);
  v21 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  *&v123 = &v101 - v22;
  v124 = type metadata accessor for Logger();
  v23 = *(v124 - 1);
  v24 = *(v23 + 64);
  __chkstk_darwin(v124);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v1;
  v27 = *v1;

  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v116 = v27;
  v105 = a1;
  v104 = v8;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v127 = v32;
    *v31 = 136315138;
    type metadata accessor for ISO18013KnownDocTypes();
    sub_100007224(&qword_10083B240, &qword_1006D9668);
    sub_10012FA78(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
    v33 = Dictionary.Keys.description.getter();
    v35 = sub_100141FE4(v33, v34, &v127);

    *(v31 + 4) = v35;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v28, v29, "DigitalPresentmentCredentialRequestBuilder build documentTypes %s", v31, 0xCu);
    sub_10000BB78(v32);

    v27 = v116;
  }

  (*(v23 + 8))(v26, v124);
  v36 = *(v27 + 64);
  v111 = v27 + 64;
  v37 = 1 << *(v27 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v110 = (v37 + 63) >> 6;
  v124 = (v125 + 32);

  v41 = 0;
  v42 = _swiftEmptyArrayStorage;
  v43 = v123;
  while (1)
  {
    v118 = v42;
    if (!v39)
    {
      while (1)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v44 >= v110)
        {
          break;
        }

        v39 = *(v111 + 8 * v44);
        ++v41;
        if (v39)
        {
          v41 = v44;
          goto LABEL_11;
        }
      }

      v73 = *(v118 + 2);
      if (v73)
      {
        result = swift_getKeyPath();
        v74 = 0;
        v75 = v106;
        while (v73 != v74)
        {
          if (v74 >= *(v118 + 2))
          {
            goto LABEL_52;
          }

          v77 = v125;
          v76 = v126;
          (*(v125 + 16))(v75, &v118[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v125 + 72) * v74++], v126);
          swift_getAtKeyPath();
          result = (*(v77 + 8))(v75, v76);
          if (v127 == 1)
          {

            goto LABEL_43;
          }
        }

        v80._countAndFlagsBits = 0xD000000000000044;
        v81._countAndFlagsBits = 0x3936626464613939;
        v80._object = 0x8000000100700770;
        v81._object = 0xE800000000000000;
        logMilestone(tag:description:)(v81, v80);
        sub_100007224(&qword_10083B230, &qword_1006D9658);
        v82 = *(type metadata accessor for CredentialPresentmentRequest.UseCase() - 8);
        v83 = *(v82 + 72);
        v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v85 = swift_allocObject();
        v123 = xmmword_1006BF520;
        *(v85 + 16) = xmmword_1006BF520;
        v86 = *(v118 + 2);
        if (v86)
        {
          v117 = v84;
          v119 = v85;
          v120 = v3;
          v127 = _swiftEmptyArrayStorage;
          v87 = v118;
          sub_100172E50(0, v86, 0);
          v88 = v127;
          v121 = *(v125 + 80);
          v89 = (v121 + 32) & ~v121;
          v90 = v87 + v89;
          v91 = *(v125 + 72);
          v125 = *(v125 + 16);
          do
          {
            v92 = v115;
            v93 = v126;
            (v125)(v115, v90, v126);
            sub_100007224(&qword_10083B238, &qword_1006D9660);
            v94 = swift_allocObject();
            *(v94 + 16) = v123;
            (*v124)(v94 + v89, v92, v93);
            v127 = v88;
            v96 = v88[2];
            v95 = v88[3];
            if (v96 >= v95 >> 1)
            {
              sub_100172E50((v95 > 1), v96 + 1, 1);
              v88 = v127;
            }

            v88[2] = v96 + 1;
            v88[v96 + 4] = v94;
            v90 += v91;
            --v86;
          }

          while (v86);
        }

        CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
        v97 = v122[4];
        v98 = v102;
        *v102 = v122[3];
        v98[1] = v97;
        (*(v103 + 104))(v98, enum case for SessionType.digital(_:), v104);

        CredentialPresentmentRequest.init(useCases:sessionType:)();
      }

      else
      {
LABEL_43:

        v78._countAndFlagsBits = 0x3837316334333736;
        v79._object = 0x80000001007006E0;
        v78._object = 0xE800000000000000;
        v79._countAndFlagsBits = 0xD000000000000045;
        logMilestone(tag:description:)(v78, v79);
        (*(v107 + 104))(v109, enum case for DIPError.Code.digitalPresentmentNoElementsRequested(_:), v108);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10012FA78(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v100 = 58;
        v99[0] = 0x2928646C697562;
        v99[1] = 0xE700000000000000;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

LABEL_11:
    v113 = v41;
    v114 = v39;
    v45 = __clz(__rbit64(v39)) | (v41 << 6);
    v46 = *(v27 + 48);
    v47 = type metadata accessor for ISO18013KnownDocTypes();
    (*(*(v47 - 8) + 16))(v43, v46 + *(*(v47 - 8) + 72) * v45, v47);
    v48 = *(*(v27 + 56) + 8 * v45);
    *(v43 + *(v112 + 48)) = v48;
    v49 = *(v48 + 16);
    if (v49)
    {
      v127 = _swiftEmptyArrayStorage;

      sub_100172E90(0, v49, 0);
      v50 = v127;
      v51 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
      v117 = v51;
      v52 = (v48 + ((*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80)));
      v121 = *(*(v51 - 8) + 72);
      v53 = v3;
      while (1)
      {
        v54 = *v52;
        __chkstk_darwin(v51);
        v100 = v43;
        sub_1000FB094(&_swiftEmptyDictionarySingleton, sub_10012F994, v99, v55);
        if (v53)
        {
          goto LABEL_36;
        }

        ISO18013KnownDocTypes.rawValue.getter();
        if (*(v122 + *(type metadata accessor for DigitalPresentmentCredentialRequestBuilder() + 20)))
        {
          v56 = type metadata accessor for Locale.Region();
          (*(*(v56 - 8) + 56))(v120, 1, 1, v56);
        }

        else
        {
          sub_10000BBC4(v52 + *(v117 + 20), v120, &unk_100849BA0, &qword_1006D95F0);
        }

        sub_100428E60(_swiftEmptyArrayStorage);
        v57 = v119;
        DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
        v127 = v50;
        v59 = v50[2];
        v58 = v50[3];
        if (v59 >= v58 >> 1)
        {
          sub_100172E90(v58 > 1, v59 + 1, 1);
          v50 = v127;
        }

        v50[2] = v59 + 1;
        v51 = (*(v125 + 32))(v50 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v59, v57, v126);
        v52 = (v52 + v121);
        --v49;
        v53 = 0;
        v43 = v123;
        if (!v49)
        {
          v3 = 0;
          goto LABEL_22;
        }
      }
    }

    v50 = _swiftEmptyArrayStorage;
LABEL_22:
    sub_10000BE18(v43, &qword_10083B228, &qword_1006D95F8);
    v60 = v50[2];
    result = v118;
    v61 = *(v118 + 2);
    v62 = v61 + v60;
    v63 = v114;
    if (__OFADD__(v61, v60))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v64 = v118;
    if ((result & 1) == 0 || v62 > *(v118 + 3) >> 1)
    {
      if (v61 <= v62)
      {
        v65 = v61 + v60;
      }

      else
      {
        v65 = v61;
      }

      result = sub_1003C5878(result, v65, 1, v118);
      v64 = result;
    }

    v39 = (v63 - 1) & v63;
    if (v50[2])
    {
      v66 = *(v64 + 2);
      if ((*(v64 + 3) >> 1) - v66 < v60)
      {
        goto LABEL_54;
      }

      v67 = &v64[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v66];
      v68 = v64;
      swift_arrayInitWithCopy();

      v42 = v68;
      v27 = v116;
      v41 = v113;
      if (v60)
      {
        v69 = *(v68 + 2);
        v70 = __OFADD__(v69, v60);
        v71 = v69 + v60;
        if (v70)
        {
          goto LABEL_55;
        }

        *(v68 + 2) = v71;
      }
    }

    else
    {
      v72 = v64;

      v42 = v72;
      v27 = v116;
      v41 = v113;
      if (v60)
      {
        __break(1u);
LABEL_36:

        sub_10000BE18(v43, &qword_10083B228, &qword_1006D95F8);
      }
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_10012E084(void *a1, void (**a2)(char *, char *, uint64_t), uint64_t a3)
{
  v265 = a1;
  v263 = a2;
  v264 = a3;
  v253 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v262 = *(v253 - 8);
  v3 = *(v262 + 64);
  __chkstk_darwin(v253);
  v252 = (&v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100007224(&qword_10083B248, &unk_1006D9670);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v226 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v245 = &v212 - v10;
  v11 = __chkstk_darwin(v9);
  v260 = &v212 - v12;
  __chkstk_darwin(v11);
  v243 = &v212 - v13;
  v267 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v254 = *(v267 - 8);
  v14 = *(v254 + 64);
  v15 = __chkstk_darwin(v267);
  v237 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v244 = &v212 - v18;
  v19 = __chkstk_darwin(v17);
  v247 = &v212 - v20;
  v21 = __chkstk_darwin(v19);
  v231 = &v212 - v22;
  v23 = __chkstk_darwin(v21);
  v230 = &v212 - v24;
  v25 = __chkstk_darwin(v23);
  v251 = &v212 - v26;
  __chkstk_darwin(v25);
  v257 = &v212 - v27;
  v28 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v212 - v31;
  v33 = type metadata accessor for IdentityIntentToStore();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v246 = &v212 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v212 - v39;
  __chkstk_darwin(v38);
  v42 = &v212 - v41;
  v43 = type metadata accessor for IdentityElement();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v212 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v48;
  sub_10000BBC4(v263, v32, &qword_10083A5E8, &qword_1006D8FF0);
  v50 = *(v29 + 56);
  v261 = v44;
  (*(v44 + 32))(v47, v32, v49);
  (*(v34 + 32))(v42, &v32[v50], v33);
  v51 = v266;
  v52 = sub_10012F5F8();
  if (v51)
  {
    (*(v34 + 8))(v42, v33);
    return (*(v261 + 8))(v47, v49);
  }

  else
  {
    v217 = 0;
    v223 = v40;
    v249 = v42;
    v218 = v49;
    v250 = v33;
    v54 = v52(v47);

    v236 = 0;
    v256 = 0;
    v55 = 0;
    v56 = v54 + 64;
    v57 = 1 << *(v54 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v54 + 64);
    v60 = (v57 + 63) >> 6;
    v222 = v254 + 16;
    v263 = (v254 + 32);
    v242 = (v34 + 16);
    v241 = (v34 + 88);
    v240 = enum case for IdentityIntentToStore.mayStoreForDays(_:);
    v225 = enum case for IdentityIntentToStore.willNotStore(_:);
    v220 = enum case for IdentityIntentToStore.mayStore(_:);
    v61 = (v34 + 8);
    v228 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
    v239 = (v262 + 104);
    v229 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
    v224 = (v34 + 96);
    v227 = (v254 + 8);
    v255 = (v254 + 56);
    v238 = (v254 + 48);
    v219 = (v254 + 40);
    v62 = v267;
    v63 = v257;
    v64 = v261;
    if (v59)
    {
LABEL_6:
      while (1)
      {
        v65 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v66 = v65 | (v55 << 6);
        v67 = *(*(v54 + 56) + 8 * v66);
        v68 = *(v67 + 16);
        if (v68)
        {
          break;
        }

        if (!v59)
        {
          goto LABEL_8;
        }
      }

      v215 = v61;
      v212 = v60;
      v213 = v56;
      v214 = v54;
      v70 = (*(v54 + 48) + 16 * v66);
      v71 = v70[1];
      v264 = *v70;
      v235 = v71;

      v72 = 0;
      v73 = (v67 + 40);
      v234 = v47;
      v233 = v67;
      v232 = v68;
      while (v72 < *(v67 + 16))
      {
        v258 = v73;
        v259 = v72;
        v76 = *v73;
        v266 = *(v73 - 1);
        v77 = *v265;
        v78 = *(*v265 + 16);

        if (v78)
        {
          v79 = v235;
          v80 = sub_10003ADCC(v264, v235);
          v82 = v250;
          v81 = v251;
          if (v83)
          {
            v84 = *(*(v77 + 56) + 8 * v80);
          }

          else
          {
            v84 = &_swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          v84 = &_swiftEmptyDictionarySingleton;
          v82 = v250;
          v81 = v251;
          v79 = v235;
        }

        v85 = v84[2];
        v262 = v76;
        if (v85 && (v86 = sub_10003ADCC(v266, v76), (v87 & 1) != 0))
        {
          v88 = v84[7];
          v89 = v254;
          v221 = *(v254 + 72);
          (*(v254 + 16))(v81, v88 + v221 * v86, v62);

          v248 = *(v89 + 32);
          v248(v63, v81, v62);
          v90 = v223;
          (*v242)(v223, v249, v82);
          v91 = (*v241)(v90, v82);
          if (v91 == v240)
          {
            (*v224)(v90, v82);
            v92 = *v90;
            v93 = v252;
            *v252 = v92;
            v94 = v228;
            v95 = v231;
            v96 = v236;
          }

          else
          {
            v94 = v229;
            v93 = v252;
            v95 = v231;
            v96 = v236;
            if (v91 != v225)
            {
              if (v91 == v220)
              {
                *v252 = 0;
                v104 = &v261;
              }

              else
              {
                (*v215)(v223, v82);
                v104 = &v261 + 4;
              }

              v94 = *(v104 - 64);
            }
          }

          (*v239)(v93, v94, v253);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v155 = v230;
          v248(v230, v95, v62);
          v156 = v243;
          CredentialPresentmentElementRequestInfo.merging(_:)();
          v236 = *v227;
          (v236)(v155, v62);
          v216 = *v255;
          v216(v156, 0, 1, v62);
          sub_10001FE8C(v96);
          v157 = v265;
          v158 = *v265;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v268 = *v157;
          v160 = v268;
          v162 = sub_10003ADCC(v264, v79);
          v163 = v160[2];
          v164 = (v161 & 1) == 0;
          v165 = v163 + v164;
          if (__OFADD__(v163, v164))
          {
            goto LABEL_99;
          }

          v166 = v161;
          if (v160[3] >= v165)
          {
            v169 = v262;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100170B38();
              v160 = v268;
            }
          }

          else
          {
            sub_1001684A0(v165, isUniquelyReferenced_nonNull_native);
            v160 = v268;
            v167 = sub_10003ADCC(v264, v79);
            v169 = v262;
            if ((v166 & 1) != (v168 & 1))
            {
              goto LABEL_104;
            }

            v162 = v167;
          }

          v170 = v237;
          *v157 = v160;
          if ((v166 & 1) == 0)
          {
            v171 = sub_10003EBD8(_swiftEmptyArrayStorage);
            v160[(v162 >> 6) + 8] |= 1 << v162;
            v172 = (v160[6] + 16 * v162);
            *v172 = v264;
            v172[1] = v79;
            *(v160[7] + 8 * v162) = v171;
            v173 = v160[2];
            v122 = __OFADD__(v173, 1);
            v174 = v173 + 1;
            if (v122)
            {
              goto LABEL_101;
            }

            v160[2] = v174;
          }

          v175 = v160[7];
          v176 = v243;
          v177 = v267;
          if ((*v238)(v243, 1, v267) == 1)
          {
            sub_10000BE18(v176, &qword_10083B248, &unk_1006D9670);
            v178 = *(v175 + 8 * v162);
            v179 = sub_10003ADCC(v266, v169);
            LOBYTE(v178) = v180;

            if (v178)
            {
              v181 = *(v175 + 8 * v162);
              v182 = swift_isUniquelyReferenced_nonNull_native();
              v183 = *(v175 + 8 * v162);
              v268 = v183;
              *(v175 + 8 * v162) = 0x8000000000000000;
              if (!v182)
              {
                sub_100170B10();
                v183 = v268;
              }

              v184 = *(*(v183 + 48) + 16 * v179 + 8);

              v185 = v226;
              v186 = v267;
              v248(v226, (*(v183 + 56) + v179 * v221), v267);
              sub_100150520(v179, v183);
              v187 = *(v175 + 8 * v162);
              *(v175 + 8 * v162) = v183;
              v62 = v186;

              v63 = v257;
              (v236)(v257, v62);

              v188 = 0;
            }

            else
            {
              v63 = v257;
              v62 = v267;
              (v236)(v257, v267);
              v188 = 1;
              v185 = v226;
            }

            v216(v185, v188, 1, v62);
            sub_10000BE18(v185, &qword_10083B248, &unk_1006D9670);
            v236 = sub_10012FCE0;
          }

          else
          {
            v248(v170, v176, v177);
            v189 = *(v175 + 8 * v162);
            v190 = swift_isUniquelyReferenced_nonNull_native();
            v268 = *(v175 + 8 * v162);
            v191 = v268;
            *(v175 + 8 * v162) = 0x8000000000000000;
            v192 = sub_10003ADCC(v266, v169);
            v194 = v191[2];
            v195 = (v193 & 1) == 0;
            v122 = __OFADD__(v194, v195);
            v196 = v194 + v195;
            if (v122)
            {
              goto LABEL_102;
            }

            v197 = v193;
            if (v191[3] >= v196)
            {
              if ((v190 & 1) == 0)
              {
                v211 = v192;
                sub_100170B10();
                v192 = v211;
              }
            }

            else
            {
              sub_100168478(v196, v190);
              v192 = sub_10003ADCC(v266, v169);
              if ((v197 & 1) != (v198 & 1))
              {
                goto LABEL_104;
              }
            }

            v199 = v237;
            if (v197)
            {
              v200 = v192;

              v201 = v268;
              v202 = v268[7] + v200 * v221;
              v203 = v267;
              (*v219)(v202, v199, v267);
            }

            else
            {
              v201 = v268;
              v268[(v192 >> 6) + 8] |= 1 << v192;
              v204 = (v201[6] + 16 * v192);
              v205 = v267;
              *v204 = v266;
              v204[1] = v169;
              v248((v201[7] + v192 * v221), v199, v205);
              v206 = v201[2];
              v122 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v122)
              {
                goto LABEL_103;
              }

              v201[2] = v207;
              v203 = v267;
            }

            v208 = v236;
            v209 = *(v175 + 8 * v162);
            *(v175 + 8 * v162) = v201;

            v63 = v257;
            (v208)(v257, v203);
            v236 = sub_10012FCE0;
            v62 = v203;
          }
        }

        else
        {

          v97 = v246;
          (*v242)(v246, v249, v82);
          v98 = (*v241)(v97, v82);
          if (v98 == v240)
          {
            (*v224)(v97, v82);
            v99 = v252;
            *v252 = *v97;
            v100 = v228;
            v101 = v247;
            v102 = v265;
          }

          else
          {
            v100 = v229;
            v99 = v252;
            v101 = v247;
            v102 = v265;
            if (v98 != v225)
            {
              if (v98 == v220)
              {
                *v252 = 0;
                v103 = &v261;
              }

              else
              {
                (*v215)(v97, v82);
                v103 = &v261 + 4;
              }

              v100 = *(v103 - 64);
            }
          }

          (*v239)(v99, v100, v253);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v105 = v260;
          v248 = *v263;
          v248(v260, v101, v62);
          v106 = *v255;
          (*v255)(v105, 0, 1, v62);
          sub_10001FE8C(v256);
          v107 = *v102;
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v268 = *v102;
          v109 = v268;
          v111 = sub_10003ADCC(v264, v79);
          v112 = v109[2];
          v113 = (v110 & 1) == 0;
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_96;
          }

          v115 = v110;
          if (v109[3] >= v114)
          {
            if ((v108 & 1) == 0)
            {
              sub_100170B38();
              v109 = v268;
            }
          }

          else
          {
            sub_1001684A0(v114, v108);
            v109 = v268;
            v116 = sub_10003ADCC(v264, v79);
            if ((v115 & 1) != (v117 & 1))
            {
              goto LABEL_104;
            }

            v111 = v116;
          }

          v118 = v245;
          *v102 = v109;
          if ((v115 & 1) == 0)
          {
            v119 = sub_10003EBD8(_swiftEmptyArrayStorage);
            v109[(v111 >> 6) + 8] |= 1 << v111;
            v120 = (v109[6] + 16 * v111);
            *v120 = v264;
            v120[1] = v79;
            *(v109[7] + 8 * v111) = v119;
            v121 = v109[2];
            v122 = __OFADD__(v121, 1);
            v123 = v121 + 1;
            if (v122)
            {
              goto LABEL_97;
            }

            v109[2] = v123;
          }

          v124 = v109[7];
          v125 = v260;
          v126 = v267;
          if ((*v238)(v260, 1, v267) == 1)
          {
            sub_10000BE18(v125, &qword_10083B248, &unk_1006D9670);
            v127 = *(v124 + 8 * v111);
            v128 = sub_10003ADCC(v266, v262);
            LOBYTE(v127) = v129;

            if (v127)
            {
              v130 = *(v124 + 8 * v111);
              v131 = swift_isUniquelyReferenced_nonNull_native();
              v132 = *(v124 + 8 * v111);
              v268 = v132;
              *(v124 + 8 * v111) = 0x8000000000000000;
              if (!v131)
              {
                sub_100170B10();
                v132 = v268;
              }

              v133 = *(*(v132 + 48) + 16 * v128 + 8);

              v75 = v267;
              v248(v118, (*(v132 + 56) + *(v254 + 72) * v128), v267);
              sub_100150520(v128, v132);
              v134 = *(v124 + 8 * v111);
              *(v124 + 8 * v111) = v132;

              v74 = 0;
            }

            else
            {
              v74 = 1;
              v75 = v267;
            }

            v106(v118, v74, 1, v75);
            sub_10000BE18(v118, &qword_10083B248, &unk_1006D9670);
            v256 = sub_10012FCE0;
            v62 = v75;
          }

          else
          {
            v248(v244, v125, v126);
            v135 = *(v124 + 8 * v111);
            v136 = swift_isUniquelyReferenced_nonNull_native();
            v268 = *(v124 + 8 * v111);
            v137 = v268;
            *(v124 + 8 * v111) = 0x8000000000000000;
            v138 = v262;
            v139 = sub_10003ADCC(v266, v262);
            v141 = v137[2];
            v142 = (v140 & 1) == 0;
            v122 = __OFADD__(v141, v142);
            v143 = v141 + v142;
            if (v122)
            {
              goto LABEL_98;
            }

            v144 = v140;
            if (v137[3] >= v143)
            {
              if ((v136 & 1) == 0)
              {
                v210 = v139;
                sub_100170B10();
                v139 = v210;
              }
            }

            else
            {
              sub_100168478(v143, v136);
              v139 = sub_10003ADCC(v266, v138);
              if ((v144 & 1) != (v145 & 1))
              {
                goto LABEL_104;
              }
            }

            v146 = v244;
            if (v144)
            {
              v147 = v139;

              v148 = v268;
              (*(v254 + 40))(v268[7] + *(v254 + 72) * v147, v146, v267);
            }

            else
            {
              v148 = v268;
              v268[(v139 >> 6) + 8] |= 1 << v139;
              v149 = (v148[6] + 16 * v139);
              v150 = v267;
              v151 = v262;
              *v149 = v266;
              v149[1] = v151;
              v248((v148[7] + *(v254 + 72) * v139), v146, v150);
              v152 = v148[2];
              v122 = __OFADD__(v152, 1);
              v153 = v152 + 1;
              if (v122)
              {
                goto LABEL_100;
              }

              v148[2] = v153;
            }

            v154 = *(v124 + 8 * v111);
            *(v124 + 8 * v111) = v148;

            v256 = sub_10012FCE0;
            v62 = v267;
          }

          v63 = v257;
        }

        v64 = v261;
        v47 = v234;
        v67 = v233;
        v72 = v259 + 1;
        v73 = v258 + 2;
        if (v232 == v259 + 1)
        {

          v54 = v214;
          v56 = v213;
          v60 = v212;
          v61 = v215;
          if (!v59)
          {
            goto LABEL_8;
          }

          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v69 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v69 >= v60)
        {
          (*v61)(v249, v250);
          (*(v64 + 8))(v47, v218);

          sub_10001FE8C(v236);
          return sub_10001FE8C(v256);
        }

        v59 = *(v56 + 8 * v69);
        ++v55;
        if (v59)
        {
          v55 = v69;
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_10012F5F8()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ISO18013KnownDocTypes();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  v12 = sub_10012F988;
  if (v11 != enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v12 = sub_10012F98C;
    if (v11 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      v12 = sub_10012F990;
      if (v11 != enum case for ISO18013KnownDocTypes.photoID(_:))
      {
        v15[0] = 0;
        v15[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(27);
        v14._object = 0x80000001006FFEF0;
        v14._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v14);
        _print_unlocked<A, B>(_:_:)();
        v15[3] = v15[0];
        (*(v2 + 104))(v5, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v1);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10012FA78(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v7 + 8))(v10, v6);
      }
    }
  }

  return v12;
}

unint64_t sub_10012F958@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003EBD8(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DigitalPresentmentCredentialRequestBuilder()
{
  result = qword_10083B2A8;
  if (!qword_10083B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012F9FC@<X0>(uint64_t *a1@<X8>)
{
  result = DocumentRequest.namespaces.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10012FA28(uint64_t *a1)
{
  v1 = *a1;

  return DocumentRequest.namespaces.setter();
}

uint64_t sub_10012FA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10012FBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10012FC6C()
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012FCE4()
{
  v1 = type metadata accessor for SHA256();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v22 - v13;
  v15 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  sub_10000BBC4(v0 + *(v15 + 28), v14, &qword_10083B408, &qword_1006E2490);
  v16 = type metadata accessor for CredentialRevocationInfo();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_10000BE18(v14, &qword_10083B408, &qword_1006E2490);
    v17 = *v0;
    v18 = v0[1];
    sub_100134548(&qword_1008336E0, &type metadata accessor for SHA256);
    v22[0] = v6;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v17, v18);
    sub_10037939C(v17, v18);
    sub_10000B90C(v17, v18);
    dispatch thunk of HashFunction.finalize()();
    (*(v2 + 8))(v5, v1);
    sub_100134548(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v19 = v22[0];
    v20 = Digest.data.getter();
    (*(v7 + 8))(v10, v19);
  }

  else
  {
    v20 = *v14;
    sub_10000B8B8(*v14, *(v14 + 1));
    sub_1001346B0(v14, type metadata accessor for CredentialRevocationInfo);
  }

  return v20;
}

uint64_t sub_100130038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v12 - v7;
  v9 = *(a1 + 8);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      if ((v9 & 1) == 0)
      {
        return result;
      }

      sub_1001342B0(*a1, v9);
    }

    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a2;

    result = sub_1001303A0(0, 0, v8, &unk_1006D98A0, v11);
    *a1 = result;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_10013017C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100130210;

  return sub_100130C4C();
}

uint64_t sub_100130210(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100130360, 0, 0);
  }
}

uint64_t sub_1001303A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000BBC4(a3, v24 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100130690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v26 - v12;
  sub_10000BBC4(a3, v26 - v12, &unk_100845860, &unk_1006BF9D0);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000BE18(v13, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = String.utf8CString.getter() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100130984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v28 - v14;
  sub_10000BBC4(a3, v28 - v14, &unk_100845860, &unk_1006BF9D0);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_10000BE18(v15, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;

      sub_100007224(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  sub_100007224(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t sub_100130C4C()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for DIPSignpost();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100130DB8, v0, 0);
}

uint64_t sub_100130DB8()
{
  v22 = v0;
  v1 = v0[12];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v8 = v0[7];
  v7 = v0[8];
  if (v5)
  {
    v9 = v0[2];
    v20 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_10012FCE4();
    v14 = v13;
    v15 = Data.base16EncodedString()();
    sub_10000B90C(v12, v14);
    v16 = sub_100141FE4(v15._countAndFlagsBits, v15._object, &v21);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "DigitalPresentmentCredentialValidator Validating credential: %s", v10, 0xCu);
    sub_10000BB78(v11);

    v17 = *(v7 + 8);
    v17(v6, v20);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  v0[13] = v17;
  sub_10000BA08((v0[2] + 112), *(v0[2] + 136));
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_100130FD8;

  return sub_10010EDB0();
}

uint64_t sub_100130FD8(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1001310F0, v3, 0);
}

uint64_t sub_1001310F0()
{
  v42 = v0;
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 16);
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    if (v5)
    {
      v40 = *(v0 + 104);
      v10 = *(v0 + 16);
      v39 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v41 = v12;
      *v11 = 136315138;
      v13 = sub_10012FCE4();
      v15 = v14;
      v16 = Data.base16EncodedString()();
      sub_10000B90C(v13, v15);
      v17 = sub_100141FE4(v16._countAndFlagsBits, v16._object, &v41);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "DigitalPresentmentCredentialValidator Validating credential %s using KRL", v11, 0xCu);
      sub_10000BB78(v12);

      v40(v7, v39);
    }

    else
    {

      v6(v7, v9);
    }

    v35 = *(v0 + 48);
    v36 = *(v0 + 24);
    static DaemonSignposts.KRL.checkAgainstKRL.getter();
    DIPSignpost.init(_:)();
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = sub_100131498;
    v38 = *(v0 + 16);

    return sub_100132338();
  }

  else
  {
    v18 = *(v0 + 80);
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "DigitalPresentmentCredentialValidator KRL is disabled; bypassing revocation check.", v21, 2u);
    }

    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);

    v22(v23, v24);
    if (qword_100832BB8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Milestone();
    sub_10003170C(v26, qword_100882128);
    Milestone.log()();
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v31 = *(v0 + 48);
    v32 = *(v0 + 24);

    v33 = *(v0 + 8);

    return v33(1);
  }
}

uint64_t sub_100131498(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = sub_1001316F4;
  }

  else
  {
    *(v4 + 137) = a1 & 1;
    v8 = sub_1001315D8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001315D8()
{
  v1 = *(v0 + 137);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock((v5 + 28));
  sub_1001342B0(*(v5 + 16), *(v5 + 24));
  *(v5 + 16) = v1;
  *(v5 + 24) = 64;
  os_unfair_lock_unlock((v5 + 28));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 137);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);

  v13 = *(v0 + 8);

  return v13(v6);
}

uint64_t sub_1001316F4()
{
  v1 = v0[16];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "DigitalPresentmentCredentialValidator Error when trying to validate credential: %@", v9, 0xCu);
    sub_10000BE18(v10, &unk_100833B50, &unk_1006D8FB0);
  }

  v12 = v0[16];
  v13 = v0[13];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  v17 = v0[2];

  v13(v14, v16);
  v18 = *(v17 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  *(swift_task_alloc() + 16) = v12;
  os_unfair_lock_lock(v18 + 7);
  sub_10013465C(&v18[4]);
  v19 = v0[16];
  v21 = v0[11];
  v20 = v0[12];
  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[6];
  v25 = v0[3];
  os_unfair_lock_unlock(v18 + 7);

  swift_willThrow();

  v26 = v0[1];
  v27 = v0[16];

  return v26(0);
}

uint64_t sub_10013197C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = type metadata accessor for Logger();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100131A58, a2, 0);
}

uint64_t sub_100131A58()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  v3 = *(v1 + 24);
  *(v0 + 96) = v3;
  sub_100134528(v2, v3);
  os_unfair_lock_unlock((v1 + 28));
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if (v3)
      {
        v4 = *(v0 + 56);
        defaultLogger()();
        sub_10001F6D4(v2, 1);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.info.getter();
        sub_1001342B0(v2, v3);
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          *v7 = 138412290;
          sub_10001F6D4(v2, 1);
          v9 = _swift_stdlib_bridgeErrorToNSError();
          *(v7 + 4) = v9;
          *v8 = v9;
          _os_log_impl(&_mh_execute_header, v5, v6, "DigitalPresentmentCredentialValidator Failed to validate credential: %@", v7, 0xCu);
          sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);

          sub_1001342B0(v2, v3);
        }

        else
        {
          sub_1001342B0(v2, v3);
        }

        v22 = *(v0 + 16);
        (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
        *v22 = 0;
      }

      else
      {
        **(v0 + 16) = v2 & 1;
      }
    }

    else
    {
      v14 = *(v0 + 64);
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "DigitalPresentmentCredentialValidator validation has not started; returning false", v17, 2u);
      }

      v18 = *(v0 + 64);
      v19 = *(v0 + 32);
      v20 = *(v0 + 40);
      v21 = *(v0 + 16);

      (*(v20 + 8))(v18, v19);
      *v21 = 0;
    }

    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v10 = async function pointer to Task.value.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    v12 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v11 = v0;
    v11[1] = sub_100131DB4;
    v13 = *(v0 + 16);

    return Task.value.getter(v13, v2, &type metadata for Bool, v12, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100131DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100131F64;
  }

  else
  {
    v6 = sub_100131EE0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100131EE0()
{
  sub_1001342B0(*(v0 + 72), *(v0 + 96));
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100131F64()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "DigitalPresentmentCredentialValidator Failed to validate credential: %@", v9, 0xCu);
    sub_10000BE18(v10, &unk_100833B50, &unk_1006D8FB0);

    sub_1001342B0(v8, v7);
  }

  else
  {
    sub_1001342B0(*(v0 + 72), *(v0 + 96));
  }

  v12 = *(v0 + 16);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  *v12 = 0;
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16();
}

void sub_100132134(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock(v1 + 7);
  sub_100132194(&v1[4]);

  os_unfair_lock_unlock(v1 + 7);
}

uint64_t sub_100132194(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8 <= 0x3F)
  {
    v9 = *a1;

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "DigitalPresentmentCredentialValidator canceled validating because task was canceled", v12, 2u);
    }

    sub_1001342B0(v9, v8);

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_100132338()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for CredentialRevocationInfo();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v15 = type metadata accessor for SHA256();
  v1[23] = v15;
  v16 = *(v15 - 8);
  v1[24] = v16;
  v17 = *(v16 + 64) + 15;
  v1[25] = swift_task_alloc();
  v18 = type metadata accessor for SHA256Digest();
  v1[26] = v18;
  v19 = *(v18 - 8);
  v1[27] = v19;
  v20 = *(v19 + 64) + 15;
  v1[28] = swift_task_alloc();
  v21 = *(*(sub_100007224(&qword_10083B408, &qword_1006E2490) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v22 = *(*(sub_100007224(&qword_100833A88, qword_1006BF8E0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001326B4, v0, 0);
}

uint64_t sub_1001326B4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 40);
  *(v0 + 368) = 0;
  v9 = *(v7 + 56);
  *(v0 + 264) = v9;
  *(v0 + 272) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v6);
  v10 = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential;
  *(v0 + 280) = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential;
  v11 = (v8 + v10);
  v53 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  sub_10000BBC4(v11 + *(v53 + 28), v2, &qword_10083B408, &qword_1006E2490);
  sub_10000BBC4(v2, v3, &qword_10083B408, &qword_1006E2490);
  v55 = *(v5 + 48);
  v12 = v55(v3, 1, v4);
  v13 = *(v0 + 240);
  v54 = v11;
  if (v12 == 1)
  {
    v14 = *(v0 + 224);
    v56 = *(v0 + 216);
    v15 = *(v0 + 200);
    v52 = *(v0 + 208);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    sub_10000BE18(v13, &qword_10083B408, &qword_1006E2490);
    v18 = *v11;
    v19 = v11[1];
    sub_100134548(&qword_1008336E0, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v18, v19);
    sub_10037939C(v18, v19);
    sub_10000B90C(v18, v19);
    dispatch thunk of HashFunction.finalize()();
    (*(v16 + 8))(v15, v17);
    sub_100134548(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v20 = Digest.data.getter();
    v22 = v21;
    (*(v56 + 8))(v14, v52);
  }

  else
  {
    v20 = *v13;
    v22 = v13[1];
    sub_10000B8B8(*v13, v22);
    sub_1001346B0(v13, type metadata accessor for CredentialRevocationInfo);
  }

  *(v0 + 288) = v20;
  *(v0 + 296) = v22;
  v57 = v20;
  v23 = *(v0 + 248);
  v24 = *(v0 + 232);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v25, 1, 1, v27);
  sub_10000BBC4(v23, v24, &qword_10083B408, &qword_1006E2490);
  v30 = v55(v24, 1, v26);
  v31 = *(v0 + 232);
  if (v30 == 1)
  {
    sub_10000BE18(*(v0 + 232), &qword_10083B408, &qword_1006E2490);
    v32 = 0;
    v33 = 0xF000000000000000;
    goto LABEL_13;
  }

  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 152);
  sub_10000BE18(v34, &unk_100844540, &unk_1006BFBC0);
  sub_100134590(v31, v35);
  (*(v28 + 16))(v34, v35 + *(v36 + 24), v27);
  v29(v34, 0, 1, v27);
  v33 = *(v35 + 24);
  if (v33 >> 60 != 15)
  {
    v42 = *(v0 + 168);
    v32 = *(v42 + 16);
    sub_10000B8B8(v32, *(v35 + 24));
LABEL_11:
    v47 = v42;
    goto LABEL_12;
  }

  v37 = *(v0 + 144);
  v38 = (v54 + *(v53 + 32));
  v32 = *v38;
  v33 = v38[1];
  sub_1000363B4(*v38, v33);
  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 168);
  v43 = *(v0 + 144);
  v45 = *(v0 + 120);
  v44 = *(v0 + 128);
  if (!v41)
  {

    (*(v44 + 8))(v43, v45);
    goto LABEL_11;
  }

  v46 = swift_slowAlloc();
  *v46 = 0;
  _os_log_impl(&_mh_execute_header, v39, v40, "DigitalPresentmentCredentialValidator revocation list metadata certificate missing; falling back to credential issuer signer certificate", v46, 2u);

  (*(v44 + 8))(v43, v45);
  v47 = v42;
LABEL_12:
  sub_1001346B0(v47, type metadata accessor for CredentialRevocationInfo);
LABEL_13:
  *(v0 + 304) = v32;
  *(v0 + 312) = v33;
  v48 = *sub_10000BA08((*(v0 + 40) + 112), *(*(v0 + 40) + 136));
  v49 = swift_task_alloc();
  *(v0 + 320) = v49;
  *v49 = v0;
  v49[1] = sub_100132C3C;
  v50 = *(v0 + 176);

  return sub_100111BFC(v57, v22, v50, v32, v33, 0);
}

uint64_t sub_100132C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 320);
  v12 = *v5;
  v10[41] = v4;

  v13 = v10[5];
  if (v4)
  {
    v14 = sub_100132F64;
  }

  else
  {
    v10[42] = a4;
    v10[43] = a3;
    v10[44] = a2;
    v10[45] = a1;
    v14 = sub_100132D90;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_100132D90()
{
  v1 = v0[19].i64[0];
  v2 = v0[19].u64[1];
  v3 = v0[15].i64[1];
  v4 = v0[11].i64[0];
  v5 = v0[2].i64[1];
  v22 = v0[22];
  v23 = v0[21];
  sub_10000B90C(v0[18].i64[0], v0[18].u64[1]);
  sub_10000BD94(v1, v2);
  sub_10000BE18(v4, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v3, &qword_10083B408, &qword_1006E2490);
  v6 = (v5 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_krlPerformanceData);
  *v6 = vextq_s8(v22, v22, 8uLL);
  v6[1] = vextq_s8(v23, v23, 8uLL);
  v7 = v0[16].i64[0];
  v9 = v0[14].i64[1];
  v8 = v0[15].i64[0];
  v10 = v0[14].i64[0];
  v11 = v0[12].i64[1];
  v13 = v0[10].i64[1];
  v12 = v0[11].i64[0];
  v14 = v0[9].i64[0];
  v18 = v0[8].i64[1];
  v19 = v0[7].i64[0];
  v20 = v0[6].i64[1];
  v21 = v0[6].i64[0];
  v22.i64[0] = v0[4].i64[1];
  v23.i64[0] = v0[4].i64[0];
  sub_10013378C(v0[23].i8, v0[2].i64[1], v7);
  sub_10000BE18(v7, &qword_100833A88, qword_1006BF8E0);

  v15 = v0->i64[1];
  v16 = v0[20].i64[1] == 0;

  return v15(v16);
}

uint64_t sub_100132F64()
{
  v95 = v0;
  *(v0 + 16) = *(v0 + 328);
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(*(v0 + 88) + 32);
    v7(*(v0 + 104), *(v0 + 112), *(v0 + 80));
    DIPError.code.getter();
    (*(v5 + 104))(v4, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v6);
    sub_100134548(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v5 + 8);
    v8(v4, v6);
    v8(v3, v6);
    if (*(v0 + 24) == *(v0 + 32))
    {
      v9 = *(v0 + 328);
      v10 = *(v0 + 136);
      v11 = *(v0 + 40);

      defaultLogger()();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      v14 = os_log_type_enabled(v12, v13);
      v88 = *(v0 + 304);
      v91 = *(v0 + 312);
      v15 = *(v0 + 288);
      if (v14)
      {
        v16 = *(v0 + 280);
        v69 = *(v0 + 288);
        v83 = *(v0 + 256);
        v77 = *(v0 + 176);
        v80 = *(v0 + 248);
        v71 = *(v0 + 128);
        v73 = *(v0 + 120);
        v75 = *(v0 + 136);
        v17 = *(v0 + 40);
        v67 = *(v0 + 296);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v94 = v19;
        *v18 = 136315138;
        v20 = sub_10012FCE4();
        v22 = v21;
        v23 = Data.base16EncodedString()();
        sub_10000B90C(v20, v22);
        v24 = sub_100141FE4(v23._countAndFlagsBits, v23._object, &v94);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v12, v13, "DigitalPresentmentCredentialValidator Matched %s key with key in revocation list.", v18, 0xCu);
        sub_10000BB78(v19);

        sub_10000B90C(v69, v67);
        sub_10000BD94(v88, v91);

        (*(v71 + 8))(v75, v73);
        sub_10000BE18(v77, &unk_100844540, &unk_1006BFBC0);
        sub_10000BE18(v80, &qword_10083B408, &qword_1006E2490);
        v25 = v83;
      }

      else
      {
        v40 = *(v0 + 248);
        v39 = *(v0 + 256);
        v41 = *(v0 + 176);
        v42 = *(v0 + 128);
        v43 = *(v0 + 136);
        v44 = *(v0 + 120);
        sub_10000B90C(*(v0 + 288), *(v0 + 296));
        sub_10000BD94(v88, v91);

        (*(v42 + 8))(v43, v44);
        sub_10000BE18(v41, &unk_100844540, &unk_1006BFBC0);
        sub_10000BE18(v40, &qword_10083B408, &qword_1006E2490);
        v25 = v39;
      }

      sub_10000BE18(v25, &qword_100833A88, qword_1006BF8E0);
      v46 = *(v0 + 264);
      v45 = *(v0 + 272);
      v47 = *(v0 + 256);
      v48 = *(v0 + 80);
      v7(v47, *(v0 + 104), v48);
      v46(v47, 0, 1, v48);
      *(v0 + 368) = 1;
      v49 = *(v0 + 16);

      v50 = *(v0 + 256);
      v51 = *(v0 + 232);
      v52 = *(v0 + 240);
      v53 = *(v0 + 224);
      v54 = *(v0 + 200);
      v56 = *(v0 + 168);
      v55 = *(v0 + 176);
      v79 = *(v0 + 144);
      v82 = *(v0 + 136);
      v85 = *(v0 + 112);
      v87 = *(v0 + 104);
      v57 = *(v0 + 64);
      v90 = *(v0 + 96);
      v93 = *(v0 + 72);
      sub_10013378C((v0 + 368), *(v0 + 40), v50);
      sub_10000BE18(v50, &qword_100833A88, qword_1006BF8E0);

      v37 = *(v0 + 8);
      v38 = *(v0 + 328) == 0;
      goto LABEL_9;
    }

    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  }

  v26 = *(v0 + 328);
  v63 = *(v0 + 304);
  v64 = *(v0 + 312);
  v61 = *(v0 + 288);
  v62 = *(v0 + 296);
  v59 = *(v0 + 264);
  v60 = *(v0 + 272);
  v27 = *(v0 + 256);
  v68 = *(v0 + 248);
  v70 = *(v0 + 240);
  v72 = *(v0 + 232);
  v74 = *(v0 + 224);
  v65 = *(v0 + 176);
  v76 = *(v0 + 200);
  v78 = *(v0 + 168);
  v81 = *(v0 + 144);
  v84 = *(v0 + 136);
  v86 = *(v0 + 112);
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 56);
  v89 = *(v0 + 104);
  v92 = *(v0 + 64);
  v33 = *(v0 + 48);
  v66 = *(v0 + 40);
  v34 = *(v0 + 16);

  (*(v32 + 104))(v30, enum case for DIPError.Code.krlCouldNotFetch(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10000BE18(v27, &qword_100833A88, qword_1006BF8E0);
  v35 = *(v29 + 16);
  v35(v27, v28, v31);
  v59(v27, 0, 1, v31);
  *(v0 + 368) = 2;
  sub_100134548(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v35(v36, v28, v31);
  swift_willThrow();
  sub_10000B90C(v61, v62);
  sub_10000BD94(v63, v64);

  (*(v29 + 8))(v28, v31);
  sub_10000BE18(v65, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v68, &qword_10083B408, &qword_1006E2490);
  sub_10013378C((v0 + 368), v66, v27);
  sub_10000BE18(v27, &qword_100833A88, qword_1006BF8E0);

  v37 = *(v0 + 8);
  v38 = 0;
LABEL_9:

  return v37(v38);
}

void sub_10013378C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v13 = *(a2 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential + 32);
  v12 = *(a2 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential + 40);
  v14 = type metadata accessor for DIPError();
  if ((*(*(v14 - 8) + 48))(a3, 1, v14))
  {
    v15 = 0xE400000000000000;
    v16 = 1280070990;
  }

  else
  {
    DIPError.code.getter();
    v17 = DIPError.Code.rawValue.getter();
    (*(v7 + 8))(v10, v6);
    aBlock[0] = v17;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v18;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v12;
  *(v20 + 32) = v11;
  *(v20 + 40) = v16;
  *(v20 + 48) = v15;
  aBlock[4] = sub_100134634;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CF08;
  aBlock[3] = &unk_100809AA0;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_1001339D0()
{
  sub_10000BB78((v0 + 112));
  sub_1001346B0(v0 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100133A64()
{
  result = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(319);
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

uint64_t sub_100133B4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100133B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100133BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100133C24(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_100133C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100133D44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100133DF4()
{
  sub_100133F18(319, &qword_100835140);
  if (v0 <= 0x3F)
  {
    sub_100133EC0();
    if (v1 <= 0x3F)
    {
      sub_100133F18(319, &qword_10083AA40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100133EC0()
{
  if (!qword_10083B478)
  {
    type metadata accessor for CredentialRevocationInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083B478);
    }
  }
}

void sub_100133F18(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100133F64()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100133F84, v2, 0);
}

uint64_t sub_100133F84()
{
  v1 = *(v0 + 16);
  sub_100134548(&qword_10083B4B8, type metadata accessor for DigitalPresentmentCredentialValidator);
  v2 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100134098;
  v4 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 32, &unk_1006D98B0);
}

uint64_t sub_100134098()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_1001341CC, v6, 0);
  }
}

uint64_t sub_1001341E4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100134204, v2, 0);
}

void sub_100134230()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock(v1 + 7);
  sub_100134294(&v1[4]);

  os_unfair_lock_unlock(v1 + 7);
}

uint64_t sub_1001342B0(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return sub_10001F6B4(result, a2 & 1);
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

uint64_t sub_1001342D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100134310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10013017C(a1);
}

uint64_t sub_1001343C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_10013197C(a1, v1);
}

uint64_t sub_100134468()
{
  v1 = sub_100134720();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1001344C8()
{
  v1 = sub_10013498C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100134528(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return sub_10001F6D4(result, a2 & 1);
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

uint64_t sub_100134548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100134590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialRevocationInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001345F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100134634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  return sub_10010D2D4();
}

uint64_t sub_100134644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013465C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1001342B0(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 65;
  return swift_errorRetain();
}

uint64_t sub_1001346B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100134720()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SimulatedDigitalPresentmentCredentialValidator returning true", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_100134858()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SimulatedDigitalPresentmentCredentialValidator startValidatingCredential called. This is a no-op", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10013498C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SimulatedDigitalPresentmentCredentialValidator returning nil KRL performance data", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_100134AD0()
{
  v1 = v0[4];
  sub_10000BA08(v0, v0[3]);
  if ((dispatch thunk of DeviceInformationProviding.isSimulator.getter() & 1) == 0)
  {
    v3 = v0[5];
    v4 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonDefaultsKeys.developerTestPresentmentMode.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 stringForKey:v5];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
      if (v9)
      {
        if (v7 == v10 && v9 == v11)
        {

          v2 = 1;
        }

        else
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_11;
      }
    }

    else
    {
      static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
    }

    v2 = 0;
LABEL_11:

    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_100134C18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100134CE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentIdentityElementsWithRegion()
{
  result = qword_10083B530;
  if (!qword_10083B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100134DE4()
{
  sub_100134E68();
  if (v0 <= 0x3F)
  {
    sub_100134F14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100134E68()
{
  if (!qword_10083B540)
  {
    type metadata accessor for IdentityElement();
    type metadata accessor for IdentityIntentToStore();
    sub_100136328(&qword_1008347A8, &type metadata accessor for IdentityElement);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10083B540);
    }
  }
}

void sub_100134F14()
{
  if (!qword_10083B548)
  {
    type metadata accessor for Locale.Region();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083B548);
    }
  }
}

uint64_t sub_100134F6C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083B5B8, &qword_1006D9AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100135CA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13[7] = 0;
  sub_100007224(&qword_10083B590, &qword_1006D9AB0);
  sub_100135EB4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for DigitalPresentmentIdentityElementsWithRegion() + 20);
    v13[6] = 1;
    type metadata accessor for Locale.Region();
    sub_100136328(&qword_10083B5D8, &type metadata accessor for Locale.Region);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100135150()
{
  v1 = type metadata accessor for Locale.Region();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  Hasher.init(_seed:)();
  sub_10015A7A8(v13, *v0);
  v10 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  sub_100135FA0(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100135344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_100007224(&qword_10083B580, &qword_1006D9AA8);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = type metadata accessor for Locale.Region();
  v19 = *(*(v18 - 8) + 56);
  v28 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100135CA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
    return sub_10000BE18(&v16[v28], &unk_100849BA0, &qword_1006D95F0);
  }

  else
  {
    v21 = v26;
    sub_100007224(&qword_10083B590, &qword_1006D9AB0);
    v30 = 0;
    sub_100135CFC();
    v22 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v31;
    *v16 = v31;
    v29 = 1;
    sub_100136328(&qword_10083B5B0, &type metadata accessor for Locale.Region);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v11, v22);
    sub_100135DE8(v7, &v16[v28]);
    sub_1001203C0(v16, v25);
    sub_10000BB78(a1);
    return sub_100135E58(v16);
  }
}

unint64_t sub_100135694()
{
  if (*v0)
  {
    result = 0x6574736575716572;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1001356E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000100700930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEF6E6F6967655264)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001357D0(uint64_t a1)
{
  v2 = sub_100135CA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013580C(uint64_t a1)
{
  v2 = sub_100135CA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10013587C(__int128 *a1, uint64_t a2)
{
  v5 = type metadata accessor for Locale.Region();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v14 - v12;
  sub_10015A7A8(a1, *v2);
  sub_100135FA0(v2 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v9, v5);
  }
}

Swift::Int sub_100135A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v14 - v11;
  Hasher.init(_seed:)();
  sub_10015A7A8(v15, *v2);
  sub_100135FA0(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

unint64_t sub_100135CA8()
{
  result = qword_10083B588;
  if (!qword_10083B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B588);
  }

  return result;
}

unint64_t sub_100135CFC()
{
  result = qword_10083B598;
  if (!qword_10083B598)
  {
    sub_10000B870(&qword_10083B590, &qword_1006D9AB0);
    sub_100136328(&qword_10083B5A0, &type metadata accessor for IdentityElement);
    sub_100136328(&qword_10083B5A8, &type metadata accessor for IdentityIntentToStore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B598);
  }

  return result;
}

uint64_t sub_100135DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135E58(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100135EB4()
{
  result = qword_10083B5C0;
  if (!qword_10083B5C0)
  {
    sub_10000B870(&qword_10083B590, &qword_1006D9AB0);
    sub_100136328(&qword_10083B5C8, &type metadata accessor for IdentityElement);
    sub_100136328(&qword_10083B5D0, &type metadata accessor for IdentityIntentToStore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5C0);
  }

  return result;
}

uint64_t sub_100135FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100136010(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_100007224(&qword_10083B5E0, &qword_1006D9AC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  if ((sub_10014C858(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for DigitalPresentmentIdentityElementsWithRegion() + 20);
  v18 = *(v13 + 48);
  sub_100135FA0(a1 + v17, v16);
  sub_100135FA0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_10000BE18(v16, &unk_100849BA0, &qword_1006D95F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_100135FA0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_10000BE18(v16, &qword_10083B5E0, &qword_1006D9AC0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_100136328(&qword_100834780, &type metadata accessor for Locale.Region);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_10000BE18(v16, &unk_100849BA0, &qword_1006D95F0);
  return (v21 & 1) != 0;
}

uint64_t sub_100136328(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100136384()
{
  result = qword_10083B5E8;
  if (!qword_10083B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5E8);
  }

  return result;
}

unint64_t sub_1001363DC()
{
  result = qword_10083B5F0;
  if (!qword_10083B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5F0);
  }

  return result;
}

unint64_t sub_100136434()
{
  result = qword_10083B5F8;
  if (!qword_10083B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5F8);
  }

  return result;
}

uint64_t sub_10013649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100136570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentEligibleProposalData()
{
  result = qword_10083B658;
  if (!qword_10083B658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100136678()
{
  type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  if (v0 <= 0x3F)
  {
    sub_100136714();
    if (v1 <= 0x3F)
    {
      sub_10013676C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100136714()
{
  if (!qword_10083B668)
  {
    type metadata accessor for Pass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10083B668);
    }
  }
}

unint64_t sub_10013676C()
{
  result = qword_10083B670;
  if (!qword_10083B670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10083B670);
  }

  return result;
}

void *sub_1001367D0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;
  if (a3)
  {
    v4[6] = 0;
  }

  else
  {
    type metadata accessor for IdentityProofingDatabaseProvider();
    v17 = swift_allocObject();
    v18 = type metadata accessor for IdentitySelfHealer();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
    *v20 = 0;
    *(v20 + 1) = 0;
    *&v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v17;
    v34.receiver = v19;
    v34.super_class = v18;
    v21 = objc_msgSendSuper2(&v34, "init");
    v4[6] = v21;
    v22 = v13[6];
    *&v16[v22] = 0x3FD0000000000000;
    v23 = enum case for DIPBackoffStrategy.exponential(_:);
    v24 = type metadata accessor for DIPBackoffStrategy();
    (*(*(v24 - 8) + 104))(&v16[v22], v23, v24);
    *v16 = 0x4024000000000000;
    *(v16 + 1) = 1;
    v16[v13[7]] = 0;
    v16[v13[8]] = 0;
    v16[v13[9]] = 0;
    v25 = &v16[v13[10]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = v21;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v30 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService());
    a3 = sub_1005D7D88(v27, v29, v33, v16);
    *&a3[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = &off_10080DB50;
    swift_unknownObjectWeakAssign();
  }

  v4[5] = a3;
  return v4;
}

uint64_t sub_100136A88()
{
  v1 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 32))
  {
    v5 = *(v0 + 32);

    sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  v8 = sub_10013064C(0, 0, v4, &unk_1006D9CD0, v7);
  v9 = *(v0 + 32);
  *(v0 + 32) = v8;
}

uint64_t sub_100136BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = type metadata accessor for DIPCertUsage();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for DIPOIDVerifier();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v4[18] = v14;
  v15 = *(v14 - 8);
  v4[19] = v15;
  v16 = *(v15 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100136DF0, 0, 0);
}

uint64_t sub_100136DF0()
{
  v49 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  if (v5)
  {
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(*(v9 + 16), *(v9 + 24), v48);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching encryption certificate for %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v8 + 8);
  v12(v6, v7);
  *(v0 + 192) = v12;
  v13 = objc_opt_self();
  *(v0 + 200) = v13;
  v14 = [v13 standardUserDefaults];
  static DaemonInternalDefaultsKeys.merchantInjectedEncCert.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 stringForKey:v15];

  if (v16)
  {
    v17 = *(v0 + 176);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 176);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    if (v23)
    {
      v47 = *(v0 + 176);
      v27 = v18;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(v27, v20, v48);
      _os_log_impl(&_mh_execute_header, v21, v22, "Merchant enc cert injected through user defaults: %s", v28, 0xCu);
      sub_10000BB78(v29);

      v18 = v27;

      v30 = v47;
    }

    else
    {

      v30 = v24;
    }

    v12(v30, v26);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006BF520;
    *(v37 + 32) = v18;
    *(v37 + 40) = v20;
    v38 = decodeCertificateChain(fromBase64DER:)();

    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v42 = *(v0 + 160);
    v41 = *(v0 + 168);
    v43 = *(v0 + 136);
    v44 = *(v0 + 112);
    v45 = *(v0 + 88);
    **(v0 + 56) = v38;

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    v31 = *(v0 + 64);
    v32 = v31[5];
    v33 = v31[2];
    *(v0 + 208) = v33;
    v34 = v31[3];
    *(v0 + 216) = v34;
    v35 = swift_task_alloc();
    *(v0 + 224) = v35;
    *v35 = v0;
    v35[1] = sub_10013735C;

    return sub_1005EF0D0(v33, v34);
  }
}

uint64_t sub_10013735C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_100137EA0;
  }

  else
  {
    v5 = sub_100137470;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100137470()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = decodeCertificateChain(fromBase64DER:)();
  *(v0 + 248) = v3;
  v4 = *(v0 + 232);
  if (!v2)
  {
    v14 = *(v0 + 200);

    v15 = [v14 standardUserDefaults];
    v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipRPEncCertSubjectMatch.getter();
    v17 = NSUserDefaults.internalBool(forKey:)(v16);

    if (v17)
    {
      v19 = *(v0 + 168);
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 192);
      v24 = *(v0 + 168);
      v25 = *(v0 + 144);
      v26 = *(v0 + 152);
      if (v22)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Skipping merchantId - uid match in RP Encryption certificate", v27, 2u);
      }

      v23(v24, v25);
      goto LABEL_11;
    }

    if (v3 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
      if (!v49)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_30;
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return DIPOIDVerifier.verifyChain(_:forUsage:)(v49, v18);
      }

      v50 = *(v3 + 32);
    }

    v51 = v50;
    v52 = SecCertificateRef.uid()();

    if (v52.value._object)
    {
      if (v52.value._countAndFlagsBits == *(v0 + 208) && v52.value._object == *(v0 + 216))
      {

LABEL_11:
        v28 = [*(v0 + 200) standardUserDefaults];
        v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipRPEncCertValidation.getter();
        v30 = NSUserDefaults.internalBool(forKey:)(v29);

        if (v30)
        {
          v31 = *(v0 + 160);
          defaultLogger()();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          v34 = os_log_type_enabled(v32, v33);
          v35 = *(v0 + 192);
          v37 = *(v0 + 152);
          v36 = *(v0 + 160);
          v38 = *(v0 + 144);
          if (v34)
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v32, v33, "Skipping certificate validation of RP Encryption certificate", v39, 2u);
          }

          v35(v36, v38);
          v40._countAndFlagsBits = 0x3833636461346630;
          v41._countAndFlagsBits = 0xD000000000000072;
          v41._object = 0x8000000100700BC0;
          v40._object = 0xE800000000000000;
          logMilestone(tag:description:)(v40, v41);
          v43 = *(v0 + 176);
          v42 = *(v0 + 184);
          v45 = *(v0 + 160);
          v44 = *(v0 + 168);
          v46 = *(v0 + 136);
          v47 = *(v0 + 112);
          v48 = *(v0 + 88);
          **(v0 + 56) = *(v0 + 248);

          v12 = *(v0 + 8);
          goto LABEL_4;
        }

        v53 = *(v0 + 112);
        v55 = *(v0 + 80);
        v54 = *(v0 + 88);
        v56 = *(v0 + 72);
        *(v0 + 40) = type metadata accessor for DateProvider();
        *(v0 + 48) = &protocol witness table for DateProvider;
        sub_100032DBC((v0 + 16));
        DateProvider.init()();
        DIPOIDVerifier.init(dateProvider:)();
        (*(v55 + 104))(v54, enum case for DIPCertUsage.identityMerchantID(_:), v56);
        v57 = async function pointer to DIPOIDVerifier.verifyChain(_:forUsage:)[1];
        v58 = swift_task_alloc();
        *(v0 + 256) = v58;
        *v58 = v0;
        v58[1] = sub_100137B98;
        v59 = *(v0 + 112);
        v18 = *(v0 + 88);
        v49 = v3;

        return DIPOIDVerifier.verifyChain(_:forUsage:)(v49, v18);
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_11;
      }

      v62 = *(v0 + 128);
      v61 = *(v0 + 136);
      v63 = *(v0 + 120);

      (*(v62 + 104))(v61, enum case for DIPError.Code.digitalPresentmentInvalidMerchantIDInCertificate(_:), v63);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_31:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_3;
    }

LABEL_30:
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v66 = *(v0 + 120);

    (*(v65 + 104))(v64, enum case for DIPError.Code.digitalPresentmentMissingUIDInCertificate(_:), v66);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_31;
  }

LABEL_3:
  (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for DIPError.Code.internalError(_:), *(v0 + 120));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);

  v12 = *(v0 + 8);
LABEL_4:

  return v12();
}

uint64_t sub_100137B98(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 80);
  v21 = *v2;
  *(*v2 + 264) = v1;

  v8 = (v7 + 8);
  v9 = (v6 + 8);
  if (v1)
  {
    v10 = v4[31];
    v11 = v4[14];
    v13 = v4[11];
    v12 = v4[12];
    v14 = v4[9];

    (*v8)(v13, v14);
    (*v9)(v11, v12);
    v15 = sub_10013803C;
  }

  else
  {
    v16 = v4[14];
    v18 = v4[11];
    v17 = v4[12];
    v19 = v4[9];

    (*v8)(v18, v19);
    (*v9)(v16, v17);
    v15 = sub_100137D7C;
  }

  return _swift_task_switch(v15, 0, 0);
}

uint64_t sub_100137D7C()
{
  v1._countAndFlagsBits = 0x6361383661633664;
  v2._countAndFlagsBits = 0xD000000000000074;
  v2._object = 0x8000000100700B40;
  v1._object = 0xE800000000000000;
  logMilestone(tag:description:)(v1, v2);
  v3._countAndFlagsBits = 0x3833636461346630;
  v4._object = 0x8000000100700BC0;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0xD000000000000072;
  logMilestone(tag:description:)(v3, v4);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  **(v0 + 56) = *(v0 + 248);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100137EA0()
{
  v1 = v0[30];
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013803C()
{
  v1 = v0[33];
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificateChain(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10013829C()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10013835C, 0, 0);
}

uint64_t sub_10013835C()
{
  v1 = *(v0[3] + 32);
  v0[7] = v1;
  if (v1)
  {
    v2 = async function pointer to Task.value.getter[1];

    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v5 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v3 = v0;
    v3[1] = sub_100138580;

    return Task.value.getter(v0 + 2, v1, v4, v5, &protocol self-conformance witness table for Error);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[6];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100138580()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100138708;
  }

  else
  {
    v3 = sub_100138694;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100138694()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100138708()
{
  v1 = v0[9];
  v2 = v0[7];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100138864()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1001388FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013898C;

  return sub_10013829C();
}

uint64_t sub_10013898C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100138A8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100138ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100136BF8(a1, v4, v5, v6);
}

uint64_t sub_100138B80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100138BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100138C78(uint64_t a1)
{
  v2[81] = v1;
  v2[80] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[82] = v3;
  v4 = *(v3 - 8);
  v2[83] = v4;
  v5 = *(v4 + 64) + 15;
  v2[84] = swift_task_alloc();
  v6 = type metadata accessor for IdentityDocumentDescriptor();
  v2[85] = v6;
  v7 = *(v6 - 8);
  v2[86] = v7;
  v8 = *(v7 + 64) + 15;
  v2[87] = swift_task_alloc();
  CanRequestDocumentAnalyticsRecorder = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  v2[88] = CanRequestDocumentAnalyticsRecorder;
  v10 = *(*(CanRequestDocumentAnalyticsRecorder - 8) + 64) + 15;
  v2[89] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[90] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v2[91] = v12;
  v13 = *(v12 - 8);
  v2[92] = v13;
  v14 = *(v13 + 64) + 15;
  v2[93] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v2[94] = v15;
  v16 = *(v15 - 8);
  v2[95] = v16;
  v17 = *(v16 + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return _swift_task_switch(sub_100138EDC, v1, 0);
}

uint64_t sub_100138EDC()
{
  v1 = *(v0 + 800);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentFlow canRequestDocument called", v4, 2u);
  }

  v5 = *(v0 + 800);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 720);
  v10 = *(v0 + 648);

  v11 = *(v6 + 8);
  v11(v5, v7);
  v12._countAndFlagsBits = 0xD000000000000026;
  v13._countAndFlagsBits = 0x3236366336646335;
  v12._object = 0x8000000100701130;
  v13._object = 0xE800000000000000;
  logMilestone(tag:description:)(v13, v12);
  static DaemonSignposts.canRequestDocument.getter();
  DIPSignpost.init(_:)();
  sub_100140DB8();
  v112 = v11;
  v14 = *(v0 + 712);
  v15 = *(v0 + 704);
  v16 = *(v0 + 648);
  v115 = *(v0 + 640);
  *v14 = 0;
  v17 = v15[5];
  v18 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(&v14[v17], 1, 1, v18);
  v21 = &v14[v15[6]];
  v21[2] = 0u;
  v21[3] = 0u;
  *v21 = 0u;
  v21[1] = 0u;
  v22 = v15[7];
  *(v0 + 832) = v22;
  v14[v22] = 0;
  v14[v15[8]] = 0;
  v109 = v15[9];
  v14[v109] = 0;
  v23 = v15[10];
  *(v0 + 836) = v23;
  v108 = v23;
  v14[v23] = 0;
  v24 = &v14[v15[11]];
  v24[3] = type metadata accessor for BundleRecordFetcher();
  v24[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v24);
  BundleRecordFetcher.init()();
  v25 = (v16 + 264);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[3];
  *(v0 + 352) = v25[2];
  *(v0 + 368) = v28;
  *(v0 + 320) = v26;
  *(v0 + 336) = v27;
  v29 = *v25;
  v30 = v25[1];
  v31 = v25[3];
  *(v0 + 288) = v25[2];
  *(v0 + 304) = v31;
  *(v0 + 256) = v29;
  *(v0 + 272) = v30;
  v32 = *v21;
  v33 = v21[1];
  v34 = v21[3];
  *(v0 + 224) = v21[2];
  *(v0 + 240) = v34;
  *(v0 + 192) = v32;
  *(v0 + 208) = v33;
  sub_100120558(v0 + 320, v0 + 384);
  sub_10000BE18(v0 + 192, &qword_10083B8D0, &qword_1006D9EE8);
  v35 = *(v0 + 304);
  v37 = *(v0 + 256);
  v36 = *(v0 + 272);
  v21[2] = *(v0 + 288);
  v21[3] = v35;
  *v21 = v37;
  v21[1] = v36;
  sub_10000BE18(&v14[v17], &qword_10083AD38, &unk_1006D9010);
  (*(v19 + 16))(&v14[v17], v115, v18);
  v110 = v14;
  v20(&v14[v17], 0, 1, v18);
  result = IdentityDocumentCompoundDescriptor.descriptors.getter();
  v39 = result;
  v116 = *(result + 16);
  if (v116)
  {
    v40 = 0;
    v41 = *(v0 + 688);
    v111 = *(v0 + 760) + 8;
    v113 = result;
    while (v40 < *(v39 + 16))
    {
      (*(v41 + 16))(*(v0 + 696), v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, *(v0 + 680));
      v45 = *v25;
      v44 = v25[1];
      v46 = v25[3];
      *(v0 + 480) = v25[2];
      *(v0 + 496) = v46;
      *(v0 + 448) = v45;
      *(v0 + 464) = v44;
      v48 = *(v0 + 488);
      v47 = *(v0 + 496);
      v49 = *(v0 + 504);
      v50 = objc_opt_self();
      sub_100120558(v0 + 448, v0 + 512);
      v51 = [v50 standardUserDefaults];
      v52._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableElementsEntitlementChecks.getter();
      v53 = NSUserDefaults.internalBool(forKey:)(v52);

      if (v53)
      {
        v54 = *(v0 + 792);
        defaultLogger()();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "DigitalPresentmentRequest Not checking elements entitlement due to user defaults settings", v57, 2u);
        }

        v42 = *(v0 + 792);
        v43 = *(v0 + 752);

        v112(v42, v43);
      }

      else
      {
        v58 = *(v0 + 696);
        sub_100148358(v48);
        v59 = *(v0 + 696);
        sub_100148D3C(v47);
      }

      ++v40;
      (*(v41 + 8))(*(v0 + 696), *(v0 + 680));

      v39 = v113;
      if (v116 == v40)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v69 = *(v0 + 648);

    v70._countAndFlagsBits = 0xD000000000000035;
    v71._countAndFlagsBits = 0x6637633566383730;
    v70._object = 0x80000001007011E0;
    v71._object = 0xE800000000000000;
    logMilestone(tag:description:)(v71, v70);
    sub_10000BA08((v69 + 336), *(v69 + 360));
    v72 = sub_100134AD0();
    v73 = *(v0 + 648);
    if (v72)
    {
      **(v0 + 712) = 1;
      if (sub_100140A58())
      {
        v88 = *(v0 + 776);
        defaultLogger()();
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "In test mDL Presentment mode, setting canRequestDocument to true", v91, 2u);
        }

        v92 = *(v0 + 776);
        v93 = *(v0 + 760);
        v94 = *(v0 + 752);
        v95 = *(v0 + 712);

        v112(v92, v94);
        v117 = 1;
        v110[v108] = 1;
        v96._countAndFlagsBits = 0xD00000000000002ALL;
        v97._countAndFlagsBits = 0x3562313830613065;
        v96._object = 0x8000000100701310;
        v97._object = 0xE800000000000000;
        logMilestone(tag:description:)(v97, v96);
        sub_10011F40C();
      }

      else
      {
        v98 = *(v0 + 768);
        defaultLogger()();
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "Device must be signed in and have a passcode set to perform test mDL presentment", v101, 2u);
        }

        v102 = *(v0 + 768);
        v103 = *(v0 + 760);
        v104 = *(v0 + 752);
        v105 = *(v0 + 712);

        v112(v102, v104);
        v106._countAndFlagsBits = 0x3463646265353431;
        v107._countAndFlagsBits = 0xD00000000000003ELL;
        v107._object = 0x80000001007012D0;
        v106._object = 0xE800000000000000;
        logMilestone(tag:description:)(v106, v107);
        v110[v109] = 1;
        sub_10011F40C();
        v117 = 0;
      }

      v60 = *(v0 + 800);
      v61 = *(v0 + 792);
      v62 = *(v0 + 784);
      v63 = *(v0 + 776);
      v64 = *(v0 + 768);
      v65 = *(v0 + 720);
      v66 = *(v0 + 712);
      v67 = *(v0 + 696);
      v114 = *(v0 + 672);
      (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
      sub_10014148C(v66, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);

      v68 = *(v0 + 8);

      return v68(v117);
    }

    else
    {
      v74 = v73[7];
      v75 = v73[9];
      *(v0 + 32) = v73[8];
      *(v0 + 48) = v75;
      *(v0 + 16) = v74;
      v76 = v73[10];
      v77 = v73[11];
      v78 = v73[13];
      *(v0 + 96) = v73[12];
      *(v0 + 112) = v78;
      *(v0 + 64) = v76;
      *(v0 + 80) = v77;
      sub_10000BA08((v69 + 336), *(v69 + 360));
      v79 = sub_100134AD0();
      sub_100007224(&qword_100833B78, &unk_1006D9F00);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1006BF520;
      sub_10000BA08((v69 + 336), *(v69 + 360));
      v81 = sub_100134AD0();
      v82 = 0xED0000747365742DLL;
      if ((v81 & 1) == 0)
      {
        v82 = 0xE800000000000000;
      }

      *(v80 + 32) = 0x797469746E656469;
      *(v80 + 40) = v82;
      *(v0 + 808) = sub_10012CD14((v0 + 16), v79 & 1, v80);

      v83 = *v25;
      v84 = v25[1];
      v85 = v25[3];
      *(v0 + 160) = v25[2];
      *(v0 + 176) = v85;
      *(v0 + 128) = v83;
      *(v0 + 144) = v84;
      sub_100120558(v0 + 128, v0 + 576);
      v86 = swift_task_alloc();
      *(v0 + 816) = v86;
      *v86 = v0;
      v86[1] = sub_100139A2C;
      v87 = *(v0 + 640);

      return sub_1001296B0(v0 + 128, v87);
    }
  }

  return result;
}

uint64_t sub_100139A2C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 816);
  v6 = *v2;
  *(v4 + 840) = a1;
  *(v4 + 824) = v1;

  v7 = *(v3 + 648);
  sub_1001205B4(v4 + 128);
  if (v1)
  {
    v8 = sub_100139D78;
  }

  else
  {
    v8 = sub_100139B70;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100139B70()
{
  v1 = *(v0 + 712);
  if (*(v0 + 840) == 1)
  {
    v2 = *(v0 + 648);
    *(v1 + *(v0 + 836)) = 1;
    v3._countAndFlagsBits = 0x3165643733616139;
    v4._object = 0x8000000100701290;
    v3._object = 0xE800000000000000;
    v4._countAndFlagsBits = 0xD000000000000036;
    logMilestone(tag:description:)(v3, v4);
    sub_10000BA08((v2 + 336), *(v2 + 360));
    if ((sub_100134AD0() & 1) == 0)
    {
      v5 = *(v0 + 744);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }
  }

  else
  {
    *(v1 + *(v0 + 832)) = 1;
    v6._countAndFlagsBits = 0x3666656661613465;
    v7._countAndFlagsBits = 0xD00000000000003ALL;
    v7._object = 0x8000000100701250;
    v6._object = 0xE800000000000000;
    logMilestone(tag:description:)(v6, v7);
  }

  v8 = *(v0 + 808);
  v9 = *(v0 + 712);

  sub_10011F40C();
  v21 = *(v0 + 840);
  v10 = *(v0 + 800);
  v11 = *(v0 + 792);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 696);
  v20 = *(v0 + 672);
  (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
  sub_10014148C(v16, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);

  v18 = *(v0 + 8);

  return v18(v21);
}

uint64_t sub_100139D78()
{
  v1 = v0[103];
  v2 = v0[101];
  v21 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[89];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10011F40C();
  (*(v3 + 8))(v21, v4);
  sub_10014148C(v5, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);
  v9 = v0[100];
  v10 = v0[99];
  v11 = v0[98];
  v12 = v0[97];
  v13 = v0[96];
  v14 = v0[93];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[87];
  v18 = v0[84];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100139FD8(uint64_t a1)
{
  v2[176] = v1;
  v2[175] = a1;
  v3 = type metadata accessor for DIPError();
  v2[177] = v3;
  v4 = *(v3 - 8);
  v2[178] = v4;
  v5 = *(v4 + 64) + 15;
  v2[179] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083AE00, &qword_1006D9ED0) - 8) + 64) + 15;
  v2[180] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v2[181] = v7;
  v8 = *(v7 - 8);
  v2[182] = v8;
  v9 = *(v8 + 64) + 15;
  v2[183] = swift_task_alloc();
  v10 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  v2[184] = v10;
  v11 = *(v10 - 8);
  v2[185] = v11;
  v12 = *(v11 + 64) + 15;
  v2[186] = swift_task_alloc();
  v13 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v2[187] = v13;
  v14 = *(v13 - 8);
  v2[188] = v14;
  v15 = *(v14 + 64) + 15;
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_10083B8C8, &unk_1006D9ED8) - 8) + 64) + 15;
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v17 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v2[193] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v2[194] = swift_task_alloc();
  v19 = type metadata accessor for WalletPassPresentmentResponse();
  v2[195] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[196] = swift_task_alloc();
  v21 = type metadata accessor for IdentityDocumentPresentmentConfiguration();
  v2[197] = v21;
  v22 = *(v21 - 8);
  v2[198] = v22;
  v23 = *(v22 + 64) + 15;
  v2[199] = swift_task_alloc();
  v24 = type metadata accessor for CredentialPresentmentRequest();
  v2[200] = v24;
  v25 = *(v24 - 8);
  v2[201] = v25;
  v26 = *(v25 + 64) + 15;
  v2[202] = swift_task_alloc();
  v27 = *(*(type metadata accessor for DigitalPresentmentISOBuilder() - 8) + 64) + 15;
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v28 = type metadata accessor for DigitalPresentmentCredentialRequestBuilder();
  v2[205] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v2[206] = swift_task_alloc();
  v30 = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v2[207] = v30;
  v31 = *(v30 - 8);
  v2[208] = v31;
  v32 = *(v31 + 64) + 15;
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v33 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v2[211] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v2[212] = swift_task_alloc();
  v35 = type metadata accessor for Date();
  v2[213] = v35;
  v36 = *(v35 - 8);
  v2[214] = v36;
  v37 = *(v36 + 64) + 15;
  v2[215] = swift_task_alloc();
  v38 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[216] = swift_task_alloc();
  v39 = type metadata accessor for DIPSignpost();
  v2[217] = v39;
  v40 = *(v39 - 8);
  v2[218] = v40;
  v41 = *(v40 + 64) + 15;
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v42 = type metadata accessor for DigitalPresentmentDocumentType();
  v2[222] = v42;
  v43 = *(v42 - 8);
  v2[223] = v43;
  v44 = *(v43 + 64) + 15;
  v2[224] = swift_task_alloc();
  v45 = type metadata accessor for IdentityDocumentDescriptor();
  v2[225] = v45;
  v46 = *(v45 - 8);
  v2[226] = v46;
  v47 = *(v46 + 64) + 15;
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v48 = *(*(sub_100007224(&qword_10083AD38, &unk_1006D9010) - 8) + 64) + 15;
  v2[230] = swift_task_alloc();
  v49 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v2[231] = v49;
  v50 = *(v49 - 8);
  v2[232] = v50;
  v51 = *(v50 + 64) + 15;
  v2[233] = swift_task_alloc();
  v52 = type metadata accessor for Logger();
  v2[234] = v52;
  v53 = *(v52 - 8);
  v2[235] = v53;
  v54 = *(v53 + 64) + 15;
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();

  return _swift_task_switch(sub_10013A760, v1, 0);
}

uint64_t sub_10013A760()
{
  v312 = v0;
  v1 = v0[243];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentFlow requestDocument called", v4, 2u);
  }

  v5 = v0[243];
  v6 = v0[235];
  v7 = v0[234];
  v8 = v0;
  v9 = v0[232];
  v10 = v0[231];
  v11 = v0[230];
  v12 = v0[175];

  v308 = *(v6 + 8);
  v308(v5, v7);
  v13._countAndFlagsBits = 0x3062646332653061;
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x8000000100700EA0;
  v13._object = 0xE800000000000000;
  logMilestone(tag:description:)(v13, v14);
  DigitalPresentmentRequest.compoundDescriptor.getter();
  v306 = v0;
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_10000BE18(v0[230], &qword_10083AD38, &unk_1006D9010);
    v15 = v0;
  }

  else
  {
    (*(v0[232] + 32))(v0[233], v0[230], v0[231]);
    v16 = *(IdentityDocumentCompoundDescriptor.descriptors.getter() + 16);

    v15 = v8;
    if (v16)
    {
      v17 = IdentityDocumentCompoundDescriptor.descriptors.getter();
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v8[226];
        v20 = *(v19 + 16);
        v19 += 16;
        v298 = v20;
        v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
        v286 = *(v19 + 56);
        v292 = v8[235] + 8;
        v294 = (v19 - 8);
        v275 = (v8[223] + 8);
        do
        {
          v288 = v21;
          v290 = v18;
          v22 = v15[242];
          v23 = v15[229];
          v24 = v15[228];
          v25 = v15[225];
          v298(v23);
          defaultLogger()();
          (v298)(v24, v23, v25);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.debug.getter();
          v28 = os_log_type_enabled(v26, v27);
          v29 = v15[242];
          v30 = v15[234];
          v31 = v15[228];
          v32 = v15[225];
          if (v28)
          {
            v33 = v15[224];
            v282 = v15[234];
            v34 = v15[222];
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v311[0] = v36;
            *v35 = 136315138;
            v279 = v29;
            IdentityDocumentDescriptor.documentType.getter();
            v37 = DigitalPresentmentDocumentType.description.getter();
            v39 = v38;
            (*v275)(v33, v34);
            v40 = *v294;
            (*v294)(v31, v32);
            v41 = sub_100141FE4(v37, v39, v311);

            *(v35 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v26, v27, "DigitalPresentmentFlow requestDocument documentType %s", v35, 0xCu);
            sub_10000BB78(v36);

            v15 = v306;

            v42 = v279;
            v43 = v282;
          }

          else
          {

            v40 = *v294;
            (*v294)(v31, v32);
            v42 = v29;
            v43 = v30;
          }

          v308(v42, v43);
          v44 = v15[241];
          v45 = v15[229];
          v46 = v15[227];
          v47 = v15[225];
          defaultLogger()();
          (v298)(v46, v45, v47);
          v48 = Logger.logObject.getter();
          v49 = v15;
          v50 = static os_log_type_t.debug.getter();
          v51 = os_log_type_enabled(v48, v50);
          v52 = v49[241];
          v53 = v49[234];
          v54 = v49[229];
          v55 = v49[227];
          v56 = v49[225];
          if (v51)
          {
            v283 = v49[241];
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v311[0] = v58;
            *v57 = 136315138;
            IdentityDocumentDescriptor.elementsToIntentToStore.getter();
            type metadata accessor for IdentityElement();
            v280 = v54;
            type metadata accessor for IdentityIntentToStore();
            v277 = v53;
            v59 = v40;
            sub_1001413DC(&qword_1008347A8, &type metadata accessor for IdentityElement);
            v60 = Dictionary.description.getter();
            v62 = v61;

            v59(v55, v56);
            v63 = sub_100141FE4(v60, v62, v311);

            *(v57 + 4) = v63;
            _os_log_impl(&_mh_execute_header, v48, v50, "DigitalPresentmentFlow requestDocument elements %s", v57, 0xCu);
            sub_10000BB78(v58);

            v308(v283, v277);
            v59(v280, v56);
          }

          else
          {

            v40(v55, v56);
            v308(v52, v53);
            v40(v54, v56);
          }

          v21 = v288 + v286;
          v18 = v290 - 1;
          v15 = v306;
        }

        while (v290 != 1);
      }

      (*(v15[232] + 8))(v15[233], v15[231]);
    }

    else
    {
      (*(v8[232] + 8))(v8[233], v8[231]);
    }
  }

  v64 = v15[240];
  v65 = v15[175];
  defaultLogger()();
  v66 = v65;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = v15[175];
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v311[0] = v71;
    *v70 = 136315138;
    v72 = DigitalPresentmentRequest.nonce.getter();
    if (v73 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v81 = v72;
      v82 = v73;
      v83 = Data.base16EncodedString()();
      object = v83._object;
      sub_10000BD94(v81, v82);
      countAndFlagsBits = v83._countAndFlagsBits;
      v15 = v306;
    }

    v84 = v15[240];
    v85 = v15[235];
    v86 = v15[234];
    v87 = sub_100141FE4(countAndFlagsBits, object, v311);

    *(v70 + 4) = v87;
    v15 = v306;
    _os_log_impl(&_mh_execute_header, v67, v68, "DigitalPresentmentFlow requestDocument nonce %s", v70, 0xCu);
    sub_10000BB78(v71);

    v79 = v84;
    v80 = v86;
  }

  else
  {
    v76 = v15[240];
    v77 = v15[235];
    v78 = v15[234];

    v79 = v76;
    v80 = v78;
  }

  v308(v79, v80);
  v88 = v15[239];
  v89 = v15[175];
  defaultLogger()();
  v90 = v89;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();

  v93 = os_log_type_enabled(v91, v92);
  v94 = v15[239];
  v95 = v15[235];
  v96 = v15[234];
  if (v93)
  {
    v97 = v15[175];
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v311[0] = v99;
    *v98 = 136315138;
    v100 = DigitalPresentmentRequest.merchantID.getter();
    if (v101)
    {
      v102 = v101;
    }

    else
    {
      v100 = 0x3E6C696E3CLL;
      v102 = 0xE500000000000000;
    }

    v103 = sub_100141FE4(v100, v102, v311);

    *(v98 + 4) = v103;
    v15 = v306;
    _os_log_impl(&_mh_execute_header, v91, v92, "DigitalPresentmentFlow requestDocument merchantID %s", v98, 0xCu);
    sub_10000BB78(v99);
  }

  v308(v94, v96);
  v104 = v15[238];
  v105 = v15[175];
  defaultLogger()();
  v106 = v105;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();

  v109 = os_log_type_enabled(v107, v108);
  v110 = v15[238];
  v111 = v15[235];
  v112 = v15[234];
  if (v109)
  {
    v113 = v15[175];
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v311[0] = v115;
    *v114 = 136315138;
    v116 = DigitalPresentmentRequest.merchantNameOverride.getter();
    if (v117)
    {
      v118 = v117;
    }

    else
    {
      v116 = 0x3E6C696E3CLL;
      v118 = 0xE500000000000000;
    }

    v119 = sub_100141FE4(v116, v118, v311);

    *(v114 + 4) = v119;
    v15 = v306;
    _os_log_impl(&_mh_execute_header, v107, v108, "DigitalPresentmentFlow requestDocument context %s", v114, 0xCu);
    sub_10000BB78(v115);
  }

  v308(v110, v112);
  v120 = v15[221];
  v121 = v15[220];
  v122 = v15[216];
  v123 = v15[215];
  v124 = v15[214];
  v125 = v15[213];
  v126 = v15[176];
  static DaemonSignposts.requestDocument.getter();
  DIPSignpost.init(_:)();
  static DaemonSignposts.requestDocumentValidateRequest.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v15[244] = v127;
  v128 = *(v124 + 8);
  v15[245] = v128;
  v15[246] = (v124 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v128(v123, v125);
  sub_100140DB8();
  v129 = v15[212];
  v130 = v15[211];
  v131 = v15[208];
  v132 = v15[207];
  v133 = v15;
  v134 = v15[176];
  *(v129 + 64) = 0;
  v129[2] = 0u;
  v129[3] = 0u;
  *v129 = 0u;
  v129[1] = 0u;
  v135 = v130[6];
  v299 = *(v131 + 56);
  v299(v129 + v135, 1, 1, v132);
  v136 = v130[7];
  *(v133 + 27) = v136;
  *(v129 + v136) = 0;
  v137 = v130[8];
  *(v133 + 51) = v137;
  *(v129 + v137) = 0;
  v138 = v130[9];
  *(v133 + 251) = v138;
  v295 = *(type metadata accessor for ISO18013KnownDocTypes() - 8);
  (*(v295 + 56))(v129 + v138, 1, 1);
  v139 = (v129 + v130[10]);
  v140 = type metadata accessor for BundleRecordFetcher();
  v139[3] = v140;
  v139[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v139);
  BundleRecordFetcher.init()();
  v141 = *(v134 + 264);
  v142 = *(v134 + 280);
  v143 = *(v134 + 312);
  *(v133 + 31) = *(v134 + 296);
  *(v133 + 32) = v143;
  *(v133 + 29) = v141;
  *(v133 + 30) = v142;
  v144 = *(v134 + 264);
  v145 = *(v134 + 280);
  v146 = *(v134 + 312);
  *(v133 + 27) = *(v134 + 296);
  *(v133 + 28) = v146;
  *(v133 + 25) = v144;
  *(v133 + 26) = v145;
  v147 = *v129;
  v148 = v129[1];
  v149 = v129[3];
  *(v133 + 23) = v129[2];
  *(v133 + 24) = v149;
  *(v133 + 21) = v147;
  *(v133 + 22) = v148;
  sub_100120558((v133 + 58), (v133 + 66));
  sub_10000BE18((v133 + 42), &qword_10083B8D0, &qword_1006D9EE8);
  v150 = *(v133 + 25);
  v151 = *(v133 + 26);
  v152 = *(v133 + 28);
  v129[2] = *(v133 + 27);
  v129[3] = v152;
  *v129 = v150;
  v129[1] = v151;
  if (*(v134 + 328))
  {
    v153 = v133[236];
    defaultLogger()();
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&_mh_execute_header, v154, v155, "requestDocument: cannot continue because another request is already in progress ", v156, 2u);
    }

    v157 = v133[236];
    v158 = v133[235];
    v159 = v133[234];
    v160 = v133[183];
    v161 = v306[182];
    v162 = v306[181];
    v163 = v306[177];

    v308(v157, v159);
    v164._countAndFlagsBits = 0x3962373531336462;
    v165._countAndFlagsBits = 0xD000000000000038;
    v165._object = 0x80000001007010D0;
    v164._object = 0xE800000000000000;
    logMilestone(tag:description:)(v164, v165);
    (*(v161 + 104))(v160, enum case for DIPError.Code.digitalPresentmentRequestAlreadyInProgress(_:), v162);
    v166 = v306;
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_38;
  }

  v167 = v133[176];
  *(v134 + 328) = 1;
  if (!sub_100140A58())
  {
    v166 = v306;
    v196 = v306[183];
    v197 = v306[182];
    v198 = v306[181];
    v199 = v306[177];
    v200._countAndFlagsBits = 0x3066623236383366;
    v201._countAndFlagsBits = 0xD000000000000035;
    v201._object = 0x8000000100700EF0;
    v200._object = 0xE800000000000000;
    logMilestone(tag:description:)(v200, v201);
    (*(v197 + 104))(v196, enum case for DIPError.Code.digitalPresentmentNotLoggedInWithPasscode(_:), v198);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    *(v134 + 328) = 0;
LABEL_38:
    v309 = v166[221];
    v300 = v166[220];
    v303 = *(v166 + 27);
    v168 = v166[218];
    v296 = v166[217];
    v169 = v166[212];
    v170 = v306[179];
    v171 = v306[178];
    v172 = v306[177];
    (*(v166[182] + 104))(v166[183], enum case for DIPError.Code.internalError(_:), v166[181]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    v173 = swift_allocError();
    v174 = *(v171 + 16);
    v174(v175, v170, v172);
    *(v169 + v303) = v173;
    swift_allocError();
    v174(v176, v170, v172);
    swift_willThrow();

    (*(v171 + 8))(v170, v172);
    sub_100140774(v169);
    v177 = *(v168 + 8);
    v177(v300, v296);
    v177(v309, v296);
    sub_10014148C(v169, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
    v178 = v306[243];
    v179 = v306[242];
    v180 = v306[241];
    v181 = v306[240];
    v182 = v306;
    v183 = v306[239];
    v184 = v306[238];
    v185 = v306[237];
    v186 = v306[236];
    v187 = v306[233];
    v188 = v306[230];
    v261 = v306[229];
    v262 = v306[228];
    v263 = v306[227];
    v264 = v306[224];
    v265 = v306[221];
    v266 = v306[220];
    v267 = v306[219];
    v268 = v306[216];
    v269 = v306[215];
    v270 = v306[212];
    v271 = v306[210];
    v272 = v306[209];
    v273 = v306[206];
    v274 = v306[204];
    v276 = v306[203];
    v278 = v306[202];
    v281 = v306[199];
    v284 = v306[196];
    v285 = v306[194];
    v287 = v306[192];
    v289 = v306[191];
    v291 = v306[190];
    v293 = v306[189];
    v297 = v306[186];
    v301 = v306[183];
    v307 = v306[180];
    v310 = v182[179];

    v189 = v182[1];

    return v189();
  }

  v191 = v306;
  v304 = v306[210];
  v192 = v306[175];
  v193 = *(v134 + 312);
  v195 = *(v134 + 264);
  v194 = *(v134 + 280);
  *(v306 + 47) = *(v134 + 296);
  *(v306 + 48) = v193;
  *(v306 + 45) = v195;
  *(v306 + 46) = v194;
  v306[159] = v140;
  v306[160] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v306 + 156);
  sub_100120558((v191 + 90), (v191 + 82));
  BundleRecordFetcher.init()();
  sub_100143E68(v191 + 90, v191 + 156);
  v202 = v306[220];
  v203 = v306[210];
  v204 = v306[207];
  v205 = v306[176];
  sub_1001205B4((v306 + 90));
  sub_10000BB78(v306 + 156);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v206._countAndFlagsBits = 0x3536326538643062;
  v207._countAndFlagsBits = 0xD000000000000022;
  v207._object = 0x8000000100700F80;
  v206._object = 0xE800000000000000;
  logMilestone(tag:description:)(v206, v207);
  sub_10000BE18(v129 + v135, &qword_10083AD20, &qword_1006D9EF0);
  sub_100141424(v203, v129 + v135, type metadata accessor for ValidatedDigitalPresentmentRequest);
  v208 = 1;
  v299(v129 + v135, 0, 1, v204);
  sub_10000BA08((v205 + 336), *(v205 + 360));
  if ((sub_100134AD0() & 1) == 0)
  {
    v209 = [objc_opt_self() standardUserDefaults];
    v210._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter();
    v208 = NSUserDefaults.internalBool(forKey:)(v210);
  }

  *(v306 + 105) = v208;
  sub_10000BA08((v205 + 336), *(v205 + 360));
  if (sub_100134AD0())
  {
    v211 = v306[237];
    v212 = v306[210];
    v213 = v306[209];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_1006BF520;
    sub_10000BA08((v205 + 336), *(v205 + 360));
    v215 = sub_100134AD0();
    v216 = 0xE800000000000000;
    if (v215)
    {
      v216 = 0xED0000747365742DLL;
    }

    *(v214 + 32) = 0x797469746E656469;
    *(v214 + 40) = v216;
    defaultLogger()();
    sub_100141424(v212, v213, type metadata accessor for ValidatedDigitalPresentmentRequest);
    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.debug.getter();
    v219 = os_log_type_enabled(v217, v218);
    v220 = v306[237];
    v221 = v306[235];
    v222 = v306[234];
    v223 = v306[209];
    if (v219)
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v311[0] = v225;
      *v224 = 136315138;
      v305 = v220;
      v226 = *v223;

      sub_100007224(&qword_10083B240, &qword_1006D9668);
      v302 = v222;
      sub_1001413DC(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
      v227 = Dictionary.Keys.description.getter();
      v229 = v228;

      sub_10014148C(v223, type metadata accessor for ValidatedDigitalPresentmentRequest);
      v230 = sub_100141FE4(v227, v229, v311);

      *(v224 + 4) = v230;
      _os_log_impl(&_mh_execute_header, v217, v218, "Creating developer test document for docTypes %s", v224, 0xCu);
      sub_10000BB78(v225);

      v308(v305, v302);
    }

    else
    {

      v308(v220, v222);
      sub_10014148C(v223, type metadata accessor for ValidatedDigitalPresentmentRequest);
    }

    v240 = v306;
    v241 = v306[210];
    v242 = *v241;
    v243 = *(*v241 + 16);
    if (v243)
    {
      v244 = sub_1003BA12C(*(*v241 + 16), 0);
      v245 = sub_1003BC9B0(v311, &v244[(*(v295 + 80) + 32) & ~*(v295 + 80)], v243, v242);

      result = sub_10001FA6C();
      if (v245 != v243)
      {
        __break(1u);
        return result;
      }

      v240 = v306;
    }

    else
    {
      v244 = _swiftEmptyArrayStorage;
    }

    v240[164] = &type metadata for IDCredCredentialStore;
    v240[165] = &off_100815A88;
    v240[161] = v214;
    type metadata accessor for DeveloperTestMDLManager();
    v253 = swift_allocObject();
    v254 = sub_10001F370((v240 + 161), &type metadata for IDCredCredentialStore);
    v255 = value witness table for Builtin.BridgeObject[8] + 15;
    v256 = swift_task_alloc();
    value witness table for Builtin.BridgeObject[2](v256, v254, &type metadata for IDCredCredentialStore);
    v240[247] = sub_1001602C4(*v256, v244, v253);
    sub_10000BB78(v240 + 161);

    v257 = swift_task_alloc();
    v240[248] = v257;
    *v257 = v240;
    v257[1] = sub_10013C364;

    return sub_100103DF4();
  }

  else
  {
    v231 = v306[210];
    v232 = v306[176];
    v233 = *(v232 + 144);
    v234 = *(v231 + 24);
    v306[250] = v234;
    v235 = *(v231 + 32);
    v306[251] = v235;
    if (v233)
    {
      v236 = *(v232 + 152);

      v233(v237);
      sub_10001FE8C(v233);
      v238 = v306[129];
      v239 = v306[130];
    }

    else
    {
      v238 = type metadata accessor for DigitalPresentmentEncryptionCertificateFetcher();
      swift_allocObject();

      v246 = sub_1001367D0(v234, v235, 0);
      v306[129] = v238;
      v239 = &off_100809C38;
      v306[130] = &off_100809C38;
      v306[126] = v246;
    }

    v247 = v306[210];
    v248 = v306[206];
    v249 = v306[205];
    v250 = v306[204];
    v251 = v306[202];
    v252 = v306[176];
    sub_10000BA08(v306 + 126, v238);
    (v239[1])(v238, v239);
    sub_100141424(v247, v248, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BA08((v252 + 336), *(v252 + 360));
    *(v248 + *(v249 + 20)) = sub_100134AD0() & 1;
    sub_100141424(v247, v250, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10012D294(v251);
    v258 = *sub_10000BA08((v306[176] + 472), *(v306[176] + 496));
    v259 = swift_task_alloc();
    v306[252] = v259;
    *v259 = v306;
    v259[1] = sub_10013CB88;
    v260 = v306[202];

    return sub_100422860(v260);
  }
}

uint64_t sub_10013C364()
{
  v2 = *v1;
  v3 = *(*v1 + 1984);
  v4 = *v1;
  *(*v1 + 1992) = v0;

  v5 = *(v2 + 1408);
  if (v0)
  {
    v6 = sub_1001402E8;
  }

  else
  {
    v6 = sub_10013C490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10013C490()
{
  v1 = *(v0 + 1976);
  *(*(v0 + 1696) + *(v0 + 204)) = 1;
  v2._countAndFlagsBits = 0x3061663537656538;
  v3._countAndFlagsBits = 0xD00000000000002FLL;
  v3._object = 0x80000001007010A0;
  v2._object = 0xE800000000000000;
  logMilestone(tag:description:)(v2, v3);

  v78 = *(v0 + 1992);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1408);
  v6 = *(v5 + 144);
  v7 = *(v4 + 24);
  *(v0 + 2000) = v7;
  v8 = *(v4 + 32);
  *(v0 + 2008) = v8;
  if (v6)
  {
    v9 = *(v5 + 152);

    v6(v10);
    sub_10001FE8C(v6);
    v11 = *(v0 + 1032);
    v12 = *(v0 + 1040);
  }

  else
  {
    v11 = type metadata accessor for DigitalPresentmentEncryptionCertificateFetcher();
    swift_allocObject();

    v13 = sub_1001367D0(v7, v8, 0);
    *(v0 + 1032) = v11;
    v12 = &off_100809C38;
    *(v0 + 1040) = &off_100809C38;
    *(v0 + 1008) = v13;
  }

  v14 = *(v0 + 1680);
  v15 = *(v0 + 1648);
  v16 = *(v0 + 1640);
  v17 = *(v0 + 1632);
  v18 = *(v0 + 1616);
  v19 = *(v0 + 1408);
  sub_10000BA08((v0 + 1008), v11);
  (v12[1])(v11, v12);
  sub_100141424(v14, v15, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BA08((v19 + 336), *(v19 + 360));
  *(v15 + *(v16 + 20)) = sub_100134AD0() & 1;
  sub_100141424(v14, v17, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10012D294(v18);
  if (v78)
  {
    v20 = *(v0 + 1680);
    v21 = *(v0 + 1648);
    v22 = *(v0 + 1408);
    sub_10014148C(*(v0 + 1632), type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v21, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10014148C(v20, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BB78((v0 + 1008));
    *(v22 + 328) = 0;
    v76 = *(v0 + 1768);
    v79 = *(v0 + 108);
    v70 = *(v0 + 1744);
    v72 = *(v0 + 1736);
    v74 = *(v0 + 1760);
    v23 = *(v0 + 1696);
    v24 = *(v0 + 1432);
    v25 = *(v0 + 1424);
    v26 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    v27 = swift_allocError();
    v28 = *(v25 + 16);
    v28(v29, v24, v26);
    *(v23 + v79) = v27;
    swift_allocError();
    v28(v30, v24, v26);
    swift_willThrow();

    (*(v25 + 8))(v24, v26);
    sub_100140774(v23);
    v31 = *(v70 + 8);
    v31(v74, v72);
    v31(v76, v72);
    sub_10014148C(v23, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1936);
    v34 = *(v0 + 1928);
    v35 = *(v0 + 1920);
    v36 = *(v0 + 1912);
    v37 = *(v0 + 1904);
    v38 = *(v0 + 1896);
    v39 = *(v0 + 1888);
    v40 = *(v0 + 1864);
    v41 = *(v0 + 1840);
    v47 = *(v0 + 1832);
    v48 = *(v0 + 1824);
    v49 = *(v0 + 1816);
    v50 = *(v0 + 1792);
    v51 = *(v0 + 1768);
    v52 = *(v0 + 1760);
    v53 = *(v0 + 1752);
    v54 = *(v0 + 1728);
    v55 = *(v0 + 1720);
    v56 = *(v0 + 1696);
    v57 = *(v0 + 1680);
    v58 = *(v0 + 1672);
    v59 = *(v0 + 1648);
    v60 = *(v0 + 1632);
    v61 = *(v0 + 1624);
    v62 = *(v0 + 1616);
    v63 = *(v0 + 1592);
    v64 = *(v0 + 1568);
    v65 = *(v0 + 1552);
    v66 = *(v0 + 1536);
    v67 = *(v0 + 1528);
    v68 = *(v0 + 1520);
    v69 = *(v0 + 1512);
    v71 = *(v0 + 1488);
    v73 = *(v0 + 1464);
    v75 = *(v0 + 1440);
    v77 = *(v0 + 1432);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *sub_10000BA08((*(v0 + 1408) + 472), *(*(v0 + 1408) + 496));
    v45 = swift_task_alloc();
    *(v0 + 2016) = v45;
    *v45 = v0;
    v45[1] = sub_10013CB88;
    v46 = *(v0 + 1616);

    return sub_100422860(v46);
  }
}

uint64_t sub_10013CB88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2016);
  v8 = *v2;
  v3[253] = a1;
  v3[254] = v1;

  v5 = v3[176];
  if (v1)
  {
    v6 = sub_10013D5F0;
  }

  else
  {
    v6 = sub_10013CCA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10013CCA4()
{
  v115 = *(v0 + 2024);
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 1656);
  v118 = *(v0 + 1592);
  v121 = *(v0 + 2032);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1400);
  v7 = (v5 + 264);
  static DaemonSignposts.requestDocumentBuildUIConfiguration.getter();
  DIPSignpost.init(_:)();
  v8 = *(v5 + 456);
  *(v0 + 2040) = v8;
  v9 = *(v5 + 464);
  *(v0 + 2048) = v9;
  v10 = (v3 + *(v4 + 36));
  v11 = *v10;
  *(v0 + 2056) = *v10;
  v12 = v10[1];
  *(v0 + 2064) = v12;

  v13 = DigitalPresentmentRequest.merchantNameOverride.getter();
  v15 = v14;
  v16 = v7[1];
  v18 = v7[2];
  v17 = v7[3];
  *(v0 + 784) = *v7;
  *(v0 + 800) = v16;
  *(v0 + 816) = v18;
  *(v0 + 832) = v17;
  v19 = *(v0 + 824);
  v20 = *(v0 + 816) & 1;
  v21 = *(v0 + 800);
  *(v0 + 272) = *(v0 + 784);
  *(v0 + 288) = v21;
  *(v0 + 304) = v20;
  *(v0 + 312) = v19;
  *(v0 + 320) = *(v0 + 832);
  v22 = *(v9 + 16);
  *(v0 + 1232) = v8;
  *(v0 + 1240) = v9;
  *(v0 + 2072) = sub_100032DBC((v0 + 1208));
  v22(v115, v11, v12, v13, v15, v0 + 272, v8, v9);
  v23 = *(v9 + 24);
  sub_100120558(v0 + 784, v0 + 208);
  v23(v8, v9);
  if (v121)
  {
    v24 = *(v0 + 2024);
    v25 = *(v0 + 1752);
    v26 = *(v0 + 1744);
    v27 = *(v0 + 1736);
    v119 = *(v0 + 1680);
    v28 = *(v0 + 1648);
    v29 = *(v0 + 1632);
    v30 = *(v0 + 1616);
    v31 = *(v0 + 1608);
    v32 = *(v0 + 1600);
    v33 = *(v0 + 1408);

    (*(v26 + 8))(v25, v27);
    (*(v31 + 8))(v30, v32);
    sub_10014148C(v29, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v28, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10014148C(v119, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v33 + 328) = 0;
    v116 = *(v0 + 1768);
    v120 = *(v0 + 108);
    v34 = *(v0 + 1744);
    v111 = *(v0 + 1736);
    v113 = *(v0 + 1760);
    v35 = *(v0 + 1696);
    v36 = *(v0 + 1432);
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    v39 = swift_allocError();
    v40 = *(v37 + 16);
    v40(v41, v36, v38);
    *(v35 + v120) = v39;
    swift_allocError();
    v40(v42, v36, v38);
    swift_willThrow();

    (*(v37 + 8))(v36, v38);
    sub_100140774(v35);
    v43 = *(v34 + 8);
    v43(v113, v111);
    v43(v116, v111);
    sub_10014148C(v35, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
    v44 = *(v0 + 1944);
    v45 = *(v0 + 1936);
    v46 = *(v0 + 1928);
    v47 = *(v0 + 1920);
    v48 = *(v0 + 1912);
    v49 = *(v0 + 1904);
    v50 = *(v0 + 1896);
    v51 = *(v0 + 1888);
    v52 = *(v0 + 1864);
    v53 = *(v0 + 1840);
    v88 = *(v0 + 1832);
    v89 = *(v0 + 1824);
    v90 = *(v0 + 1816);
    v91 = *(v0 + 1792);
    v92 = *(v0 + 1768);
    v93 = *(v0 + 1760);
    v94 = *(v0 + 1752);
    v95 = *(v0 + 1728);
    v96 = *(v0 + 1720);
    v97 = *(v0 + 1696);
    v98 = *(v0 + 1680);
    v99 = *(v0 + 1672);
    v100 = *(v0 + 1648);
    v101 = *(v0 + 1632);
    v102 = *(v0 + 1624);
    v103 = *(v0 + 1616);
    v104 = *(v0 + 1592);
    v105 = *(v0 + 1568);
    v106 = *(v0 + 1552);
    v107 = *(v0 + 1536);
    v108 = *(v0 + 1528);
    v109 = *(v0 + 1520);
    v110 = *(v0 + 1512);
    v112 = *(v0 + 1488);
    v114 = *(v0 + 1464);
    v117 = *(v0 + 1440);
    v122 = *(v0 + 1432);

    v54 = *(v0 + 8);

    return v54();
  }

  else
  {
    v56 = *(v0 + 1752);
    v57 = *(v0 + 1408);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v58 = *(v57 + 176);
    if (v58)
    {
      v59 = *(*(v0 + 1408) + 184);

      v58(v60);
      sub_10001FE8C(v58);
    }

    else
    {
      v61 = *(v0 + 1632);
      v62 = *(v0 + 1624);
      v63 = *(v0 + 1408);
      sub_100020260(v0 + 1008, v0 + 1088);
      sub_100141424(v61, v62, type metadata accessor for DigitalPresentmentISOBuilder);
      sub_100020260(v63 + 224, v0 + 1128);
      v64 = *(v0 + 1152);
      v65 = sub_10001F370(v0 + 1128, v64);
      v66 = *(v64 - 8);
      v67 = *(v66 + 64) + 15;
      v68 = swift_task_alloc();
      (*(v66 + 16))(v68, v65, v64);
      v69 = *v68;
      v70 = type metadata accessor for DigitalPresentmentSessionManager();
      *(v0 + 1192) = v70;
      *(v0 + 1200) = &off_100809E48;
      *(v0 + 1168) = v69;
      v71 = type metadata accessor for DigitalPresentmentResponseBuilder();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      v74 = swift_allocObject();
      v75 = sub_10001F370(v0 + 1168, v70);
      v76 = *(v70 - 8);
      v77 = *(v76 + 64) + 15;
      v78 = swift_task_alloc();
      (*(v76 + 16))(v78, v75, v70);
      v79 = *v78;
      v80 = (v74 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager);
      v80[3] = v70;
      v80[4] = &off_100809E48;
      *v80 = v79;
      sub_10001F358((v0 + 1088), v74 + 16);
      sub_100141210(v62, v74 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_isoBuilder);
      sub_10000BB78((v0 + 1168));

      sub_10000BB78((v0 + 1128));

      *(v0 + 1072) = v71;
      *(v0 + 1080) = &off_100809E30;
      *(v0 + 1048) = v74;
    }

    v81 = *sub_10000BA08((*(v0 + 1408) + 472), *(*(v0 + 1408) + 496));
    v82 = swift_task_alloc();
    *(v0 + 2080) = v82;
    *v82 = v0;
    v82[1] = sub_10013DAD8;
    v83 = *(v0 + 2024);
    v84 = *(v0 + 2008);
    v85 = *(v0 + 2000);
    v86 = *(v0 + 1592);
    v87 = *(v0 + 1568);

    return sub_1004242EC(v87, v86, v0 + 1048, v83, v85, v84, 0, 0xF000000000000000);
  }
}

uint64_t sub_10013D5F0()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1408);
  (*(*(v0 + 1608) + 8))(*(v0 + 1616), *(v0 + 1600));
  sub_10014148C(v3, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v2, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10014148C(v1, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BB78((v0 + 1008));
  *(v4 + 328) = 0;
  v5 = *(v0 + 2032);
  v57 = *(v0 + 1768);
  v59 = *(v0 + 108);
  v6 = *(v0 + 1744);
  v53 = *(v0 + 1736);
  v55 = *(v0 + 1760);
  v7 = *(v0 + 1696);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
  v11 = swift_allocError();
  v12 = *(v9 + 16);
  v12(v13, v8, v10);
  *(v7 + v59) = v11;
  swift_allocError();
  v12(v14, v8, v10);
  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  v15 = v7;
  sub_100140774(v7);
  v16 = *(v6 + 8);
  v16(v55, v53);
  v16(v57, v53);
  sub_10014148C(v15, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
  v17 = *(v0 + 1944);
  v18 = *(v0 + 1936);
  v19 = *(v0 + 1928);
  v20 = *(v0 + 1920);
  v21 = *(v0 + 1912);
  v22 = *(v0 + 1904);
  v23 = *(v0 + 1896);
  v24 = *(v0 + 1888);
  v25 = *(v0 + 1864);
  v26 = *(v0 + 1840);
  v29 = *(v0 + 1832);
  v30 = *(v0 + 1824);
  v31 = *(v0 + 1816);
  v32 = *(v0 + 1792);
  v33 = *(v0 + 1768);
  v34 = *(v0 + 1760);
  v35 = *(v0 + 1752);
  v36 = *(v0 + 1728);
  v37 = *(v0 + 1720);
  v38 = *(v0 + 1696);
  v39 = *(v0 + 1680);
  v40 = *(v0 + 1672);
  v41 = *(v0 + 1648);
  v42 = *(v0 + 1632);
  v43 = *(v0 + 1624);
  v44 = *(v0 + 1616);
  v45 = *(v0 + 1592);
  v46 = *(v0 + 1568);
  v47 = *(v0 + 1552);
  v48 = *(v0 + 1536);
  v49 = *(v0 + 1528);
  v50 = *(v0 + 1520);
  v51 = *(v0 + 1512);
  v52 = *(v0 + 1488);
  v54 = *(v0 + 1464);
  v56 = *(v0 + 1440);
  v58 = *(v0 + 1432);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10013DAD8()
{
  v2 = *v1;
  v3 = *(*v1 + 2080);
  v4 = *v1;
  *(*v1 + 2088) = v0;

  v5 = *(v2 + 2024);
  v6 = *(v2 + 1408);

  if (v0)
  {
    v7 = sub_10013EE78;
  }

  else
  {
    v7 = sub_10013DC20;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10013DC20()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 105);
  v3 = *(v0 + 1592);
  v4 = *(v0 + 1552);
  v5 = *(v0 + 1536);
  sub_100141424(*(v0 + 1568) + *(*(v0 + 1560) + 24), v4, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v6 = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  *(swift_task_alloc() + 16) = v4;
  sub_100161D58(sub_100141274, v6, v5);

  if (v2)
  {
    v7 = *(v0 + 1004);
    v8 = *(v0 + 1696);
    v9 = *(v0 + 1552);
    v10 = *(v0 + 1440);
    v11 = *(v0 + 1408);
    *(v8 + 64) = 1;
    v12 = *(v9 + 64);
    v13 = *(v9 + 72);

    ISO18013KnownDocTypes.init(rawValue:)();
    sub_100141304(v10, v8 + v7);
    sub_10000BA08((v11 + 336), *(v11 + 360));
    if (sub_100134AD0())
    {
      v124 = *(v0 + 1944);
      v125 = *(v0 + 1936);
      v126 = *(v0 + 1928);
      v128 = *(v0 + 1920);
      v130 = *(v0 + 1912);
      v133 = *(v0 + 1904);
      v135 = *(v0 + 1896);
      v137 = *(v0 + 1888);
      v139 = *(v0 + 1864);
      v141 = *(v0 + 1840);
      v143 = *(v0 + 1832);
      v145 = *(v0 + 1824);
      v147 = *(v0 + 1816);
      v150 = *(v0 + 1792);
      v122 = *(v0 + 1760);
      v123 = *(v0 + 1768);
      v14 = *(v0 + 1744);
      v116 = *(v0 + 1736);
      v117 = *(v0 + 1752);
      v153 = *(v0 + 1728);
      v156 = *(v0 + 1720);
      v120 = *(v0 + 1680);
      v121 = *(v0 + 1696);
      v164 = *(v0 + 1672);
      v119 = *(v0 + 1648);
      v176 = *(v0 + 1624);
      v202 = *(v0 + 1632);
      v207 = *(v0 + 1616);
      v15 = *(v0 + 1608);
      v16._countAndFlagsBits = 0xD000000000000018;
      v17 = *(v0 + 1592);
      v18 = *(v0 + 1584);
      v114 = *(v0 + 1576);
      v115 = *(v0 + 1600);
      v19 = *(v0 + 1568);
      v197 = *(v0 + 1552);
      v20 = *(v0 + 1536);
      v168 = *(v0 + 1528);
      v172 = *(v0 + 1520);
      v180 = *(v0 + 1512);
      v184 = *(v0 + 1488);
      v186 = *(v0 + 1464);
      v190 = *(v0 + 1440);
      v192 = *(v0 + 1432);
      v118 = *(v0 + 1408);
      v21._countAndFlagsBits = 0x6161303838616331;
      v16._object = 0x8000000100701040;
      v21._object = 0xE800000000000000;
      logMilestone(tag:description:)(v21, v16);
      v23 = *v19;
      v22 = v19[1];
      v24 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
      sub_10000B8B8(v23, v22);
      v160 = DigitalPresentmentResponse.init(encryptedData:)();
      sub_10000BE18(v20, &qword_10083B8C8, &unk_1006D9ED8);
      sub_10014148C(v19, type metadata accessor for WalletPassPresentmentResponse);
      (*(v18 + 8))(v17, v114);
      v25 = *(v14 + 8);
      v25(v117, v116);
      (*(v15 + 8))(v207, v115);
      sub_10014148C(v202, type metadata accessor for DigitalPresentmentISOBuilder);
      sub_10014148C(v119, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
      sub_10000BB78((v0 + 1048));
      sub_10014148C(v120, type metadata accessor for ValidatedDigitalPresentmentRequest);
      sub_10014148C(v197, type metadata accessor for DigitalPresentmentEligibleProposalData);
      sub_10000BB78((v0 + 1208));
      sub_10000BB78((v0 + 1008));
      *(v118 + 328) = 0;
      sub_100140774(v121);
      v25(v122, v116);
      v25(v123, v116);
      sub_10014148C(v121, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

      v26 = *(v0 + 8);

      return v26(v160);
    }

    else
    {
      v40 = *(v0 + 1968);
      v41 = *(v0 + 1960);
      v42 = *(v0 + 1768);
      v43 = *(v0 + 1720);
      v44 = *(v0 + 1704);
      v45 = *(v0 + 1552);
      v46 = *(v0 + 1544);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      Date.init()();
      Date.timeIntervalSince1970.getter();
      *(v0 + 2120) = v47;
      v41(v43, v44);
      v48 = (v45 + *(v46 + 24));
      v49 = v48[3];
      v50 = v48[4];
      sub_10000BA08(v48, v49);
      v51 = *(v50 + 16);
      v208 = (v51 + *v51);
      v52 = v51[1];
      v53 = swift_task_alloc();
      *(v0 + 2128) = v53;
      *v53 = v0;
      v53[1] = sub_10013FBB0;

      return v208(v49, v50);
    }
  }

  v28 = *(v0 + 1552);
  v29 = *(v28 + *(*(v0 + 1544) + 20));
  *(v0 + 2096) = v29;
  if (!v29)
  {
    v54 = *(v0 + 1744);
    v203 = *(v0 + 1680);
    v209 = *(v0 + 1752);
    v198 = *(v0 + 1648);
    v187 = *(v0 + 1632);
    v178 = *(v0 + 1616);
    v182 = *(v0 + 1736);
    v55 = *(v0 + 1608);
    v170 = *(v0 + 1592);
    v174 = *(v0 + 1600);
    v56 = *(v0 + 1584);
    v162 = *(v0 + 1568);
    v166 = *(v0 + 1576);
    v158 = *(v0 + 1536);
    v57 = *(v0 + 1416);
    v193 = *(v0 + 1408);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 1448));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v34 = v28;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v158, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v162, type metadata accessor for WalletPassPresentmentResponse);
    (*(v56 + 8))(v170, v166);
    (*(v54 + 8))(v209, v182);
    (*(v55 + 8))(v178, v174);
    goto LABEL_13;
  }

  v30 = *(v0 + 1528);
  sub_100141294(*(v0 + 1536), v30);
  v31 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v177 = *(v0 + 1736);
    v181 = *(v0 + 1752);
    v198 = *(v0 + 1648);
    v203 = *(v0 + 1680);
    v187 = *(v0 + 1632);
    v161 = *(v0 + 1608);
    v165 = *(v0 + 1744);
    v169 = *(v0 + 1600);
    v173 = *(v0 + 1616);
    v33 = *(v0 + 1584);
    v154 = *(v0 + 1576);
    v157 = *(v0 + 1592);
    v34 = *(v0 + 1552);
    v148 = *(v0 + 1536);
    v151 = *(v0 + 1568);
    v35 = *(v0 + 1528);
    v36 = *(v0 + 1464);
    v37 = *(v0 + 1456);
    v38 = *(v0 + 1448);
    v39 = *(v0 + 1416);
    v193 = *(v0 + 1408);

    sub_10000BE18(v35, &qword_10083B8C8, &unk_1006D9ED8);
    (*(v37 + 104))(v36, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v148, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v151, type metadata accessor for WalletPassPresentmentResponse);
    (*(v33 + 8))(v157, v154);
    (*(v165 + 8))(v181, v177);
    (*(v161 + 8))(v173, v169);
LABEL_13:
    sub_10014148C(v187, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v198, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10000BB78((v0 + 1048));
    sub_10014148C(v203, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10014148C(v34, type metadata accessor for DigitalPresentmentEligibleProposalData);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v193 + 328) = 0;
    v204 = *(v0 + 1768);
    v210 = *(v0 + 108);
    v188 = *(v0 + 1744);
    v194 = *(v0 + 1736);
    v199 = *(v0 + 1760);
    v58 = *(v0 + 1696);
    v59 = *(v0 + 1432);
    v60 = *(v0 + 1424);
    v61 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    v62 = swift_allocError();
    v63 = *(v60 + 16);
    v63(v64, v59, v61);
    *(v58 + v210) = v62;
    swift_allocError();
    v63(v65, v59, v61);
    swift_willThrow();

    (*(v60 + 8))(v59, v61);
    sub_100140774(v58);
    v66 = *(v188 + 8);
    v66(v199, v194);
    v66(v204, v194);
    sub_10014148C(v58, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
    v67 = *(v0 + 1944);
    v68 = *(v0 + 1936);
    v69 = *(v0 + 1928);
    v70 = *(v0 + 1920);
    v71 = *(v0 + 1912);
    v72 = *(v0 + 1904);
    v73 = *(v0 + 1896);
    v74 = *(v0 + 1888);
    v75 = *(v0 + 1864);
    v76 = *(v0 + 1840);
    v127 = *(v0 + 1832);
    v129 = *(v0 + 1824);
    v131 = *(v0 + 1816);
    v132 = *(v0 + 1792);
    v134 = *(v0 + 1768);
    v136 = *(v0 + 1760);
    v138 = *(v0 + 1752);
    v140 = *(v0 + 1728);
    v142 = *(v0 + 1720);
    v144 = *(v0 + 1696);
    v146 = *(v0 + 1680);
    v149 = *(v0 + 1672);
    v152 = *(v0 + 1648);
    v155 = *(v0 + 1632);
    v159 = *(v0 + 1624);
    v163 = *(v0 + 1616);
    v167 = *(v0 + 1592);
    v171 = *(v0 + 1568);
    v175 = *(v0 + 1552);
    v179 = *(v0 + 1536);
    v183 = *(v0 + 1528);
    v185 = *(v0 + 1520);
    v189 = *(v0 + 1512);
    v191 = *(v0 + 1488);
    v195 = *(v0 + 1464);
    v200 = *(v0 + 1440);
    v205 = *(v0 + 1432);

    v77 = *(v0 + 8);

    return v77();
  }

  v78 = *(v0 + 2048);
  v201 = *(v0 + 2040);
  v206 = *(v0 + 2072);
  v196 = *(v0 + 2008);
  v79 = *(v0 + 1528);
  v80 = *(v0 + 1520);
  v81 = *(v0 + 1512);
  v82 = *(v0 + 1504);
  v83 = *(v0 + 1496);
  v84 = (*(v0 + 1408) + 264);

  IdentityDocumentPresentmentConfiguration.Credential.elementCategoryGroups.getter();
  (*(v32 + 8))(v79, v31);
  (*(v82 + 32))(v80, v81, v83);
  v85 = v84[2];
  v86 = v84[3];
  v87 = v84[1];
  *(v0 + 848) = *v84;
  *(v0 + 864) = v87;
  *(v0 + 880) = v85;
  *(v0 + 896) = v86;
  v88 = *(v78 + 8);

  sub_100120558(v0 + 848, v0 + 592);
  v88(v201, v78);
  v89 = *(v0 + 968);
  if (v89)
  {
    v90 = *(v0 + 992);
    v91 = *(v0 + 1000);
    *(v0 + 1368) = *(v0 + 960);
    *(v0 + 1376) = v89;
    sub_10004D860(v0 + 1368);
    *(v0 + 1384) = *(v0 + 976);
    sub_10004D860(v0 + 1384);
  }

  else
  {
    v90 = 0;
    v91 = 1;
  }

  v92 = *(v0 + 2008);
  v93 = *(v0 + 2000);
  v94 = *(v0 + 1680);
  v95 = *(v0 + 1656);
  v96 = *(v0 + 1592);
  v97 = *(v0 + 1488);
  v98 = *(v0 + 1480);
  v99 = *(v0 + 1472);
  *(v0 + 112) = v93;
  *(v0 + 120) = v92;
  v100 = *(v0 + 864);
  *(v0 + 128) = *(v0 + 848);
  *(v0 + 144) = v100;
  v101 = *(v0 + 896);
  *(v0 + 160) = *(v0 + 880);
  *(v0 + 176) = v101;
  *(v0 + 192) = v90;
  *(v0 + 200) = v91 & 1;
  v102 = *(v0 + 184);
  v103 = *(v0 + 160) & 1;
  *(v0 + 16) = v93;
  *(v0 + 24) = v92;
  v104 = *(v0 + 144);
  *(v0 + 32) = *(v0 + 128);
  *(v0 + 48) = v104;
  *(v0 + 64) = v103;
  *(v0 + 72) = *(v0 + 168);
  *(v0 + 88) = v102;
  *(v0 + 96) = v90;
  *(v0 + 104) = v91 & 1;
  v105 = *(v94 + 40);
  v106 = *(v94 + 48);
  v107 = *(v95 + 32);
  IdentityDocumentPresentmentConfiguration.relyingParty.getter();
  v108 = IdentityDocumentPresentmentConfiguration.RelyingParty.name.getter();
  v110 = v109;
  *(v0 + 2104) = v109;
  (*(v98 + 8))(v97, v99);
  v111 = swift_task_alloc();
  *(v0 + 2112) = v111;
  *v111 = v0;
  v111[1] = sub_10013F3C0;
  v112 = *(v0 + 2056);
  v113 = *(v0 + 1520);
  v212 = *(v0 + 2064);

  return sub_10050E820(v113, v0 + 16, v105, v106, v94 + v107, v108, v110, v112);
}

uint64_t sub_10013EE78()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1744);
  v3 = *(v0 + 1736);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1632);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1608);
  v9 = *(v0 + 1600);
  v64 = *(v0 + 1408);
  (*(*(v0 + 1584) + 8))(*(v0 + 1592), *(v0 + 1576));
  (*(v2 + 8))(v1, v3);
  (*(v8 + 8))(v7, v9);
  sub_10014148C(v6, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v5, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10000BB78((v0 + 1048));
  sub_10014148C(v4, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BB78((v0 + 1208));
  sub_10000BB78((v0 + 1008));
  *(v64 + 328) = 0;
  v10 = *(v0 + 2088);
  v62 = *(v0 + 1768);
  v65 = *(v0 + 108);
  v11 = *(v0 + 1744);
  v58 = *(v0 + 1736);
  v60 = *(v0 + 1760);
  v12 = *(v0 + 1696);
  v13 = *(v0 + 1432);
  v14 = *(v0 + 1424);
  v15 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
  v16 = swift_allocError();
  v17 = *(v14 + 16);
  v17(v18, v13, v15);
  *(v12 + v65) = v16;
  swift_allocError();
  v17(v19, v13, v15);
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  v20 = v12;
  sub_100140774(v12);
  v21 = *(v11 + 8);
  v21(v60, v58);
  v21(v62, v58);
  sub_10014148C(v20, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
  v22 = *(v0 + 1944);
  v23 = *(v0 + 1936);
  v24 = *(v0 + 1928);
  v25 = *(v0 + 1920);
  v26 = *(v0 + 1912);
  v27 = *(v0 + 1904);
  v28 = *(v0 + 1896);
  v29 = *(v0 + 1888);
  v30 = *(v0 + 1864);
  v31 = *(v0 + 1840);
  v34 = *(v0 + 1832);
  v35 = *(v0 + 1824);
  v36 = *(v0 + 1816);
  v37 = *(v0 + 1792);
  v38 = *(v0 + 1768);
  v39 = *(v0 + 1760);
  v40 = *(v0 + 1752);
  v41 = *(v0 + 1728);
  v42 = *(v0 + 1720);
  v43 = *(v0 + 1696);
  v44 = *(v0 + 1680);
  v45 = *(v0 + 1672);
  v46 = *(v0 + 1648);
  v47 = *(v0 + 1632);
  v48 = *(v0 + 1624);
  v49 = *(v0 + 1616);
  v50 = *(v0 + 1592);
  v51 = *(v0 + 1568);
  v52 = *(v0 + 1552);
  v53 = *(v0 + 1536);
  v54 = *(v0 + 1528);
  v55 = *(v0 + 1520);
  v56 = *(v0 + 1512);
  v57 = *(v0 + 1488);
  v59 = *(v0 + 1464);
  v61 = *(v0 + 1440);
  v63 = *(v0 + 1432);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10013F3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 2112);
  v3 = *(*v0 + 2104);
  v4 = *(*v0 + 1408);
  v6 = *v0;

  sub_10000BE18(v1 + 112, &qword_10083B8D8, &qword_1006D9EF8);

  return _swift_task_switch(sub_10013F50C, v4, 0);
}

uint64_t sub_10013F50C()
{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1496);
  v5._countAndFlagsBits = 0x3763306238613031;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100701010;
  v5._object = 0xE800000000000000;
  logMilestone(tag:description:)(v5, v6);

  (*(v3 + 8))(v2, v4);
  v7 = *(v0 + 1004);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1552);
  v10 = *(v0 + 1440);
  v11 = *(v0 + 1408);
  *(v8 + 64) = 1;
  v12 = *(v9 + 64);
  v13 = *(v9 + 72);

  ISO18013KnownDocTypes.init(rawValue:)();
  sub_100141304(v10, v8 + v7);
  sub_10000BA08((v11 + 336), *(v11 + 360));
  if (sub_100134AD0())
  {
    v52 = *(v0 + 1944);
    v53 = *(v0 + 1936);
    v54 = *(v0 + 1928);
    v55 = *(v0 + 1920);
    v56 = *(v0 + 1912);
    v57 = *(v0 + 1904);
    v58 = *(v0 + 1896);
    v59 = *(v0 + 1888);
    v60 = *(v0 + 1864);
    v61 = *(v0 + 1840);
    v62 = *(v0 + 1832);
    v63 = *(v0 + 1824);
    v64 = *(v0 + 1816);
    v65 = *(v0 + 1792);
    v50 = *(v0 + 1760);
    v51 = *(v0 + 1768);
    v14 = *(v0 + 1744);
    v44 = *(v0 + 1736);
    v45 = *(v0 + 1752);
    v66 = *(v0 + 1728);
    v67 = *(v0 + 1720);
    v48 = *(v0 + 1680);
    v49 = *(v0 + 1696);
    v69 = *(v0 + 1672);
    v47 = *(v0 + 1648);
    v71 = *(v0 + 1624);
    v79 = *(v0 + 1632);
    v80 = *(v0 + 1616);
    v15 = *(v0 + 1608);
    v16 = *(v0 + 1592);
    v17 = *(v0 + 1584);
    v42 = *(v0 + 1576);
    v43 = *(v0 + 1600);
    v18 = *(v0 + 1568);
    v78 = *(v0 + 1552);
    v19 = *(v0 + 1536);
    v70 = *(v0 + 1528);
    v72 = *(v0 + 1520);
    v73 = *(v0 + 1512);
    v74 = *(v0 + 1488);
    v75 = *(v0 + 1464);
    v76 = *(v0 + 1440);
    v77 = *(v0 + 1432);
    v46 = *(v0 + 1408);
    v20._countAndFlagsBits = 0x6161303838616331;
    v21._object = 0x8000000100701040;
    v20._object = 0xE800000000000000;
    v21._countAndFlagsBits = 0xD000000000000018;
    logMilestone(tag:description:)(v20, v21);
    v22 = *v18;
    v23 = v18[1];
    v24 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
    sub_10000B8B8(v22, v23);
    v68 = DigitalPresentmentResponse.init(encryptedData:)();
    sub_10000BE18(v19, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v18, type metadata accessor for WalletPassPresentmentResponse);
    (*(v17 + 8))(v16, v42);
    v25 = *(v14 + 8);
    v25(v45, v44);
    (*(v15 + 8))(v80, v43);
    sub_10014148C(v79, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v47, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10000BB78((v0 + 1048));
    sub_10014148C(v48, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10014148C(v78, type metadata accessor for DigitalPresentmentEligibleProposalData);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v46 + 328) = 0;
    sub_100140774(v49);
    v25(v50, v44);
    v25(v51, v44);
    sub_10014148C(v49, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v26 = *(v0 + 8);

    return v26(v68);
  }

  else
  {
    v28 = *(v0 + 1968);
    v29 = *(v0 + 1960);
    v30 = *(v0 + 1768);
    v31 = *(v0 + 1720);
    v32 = *(v0 + 1704);
    v33 = *(v0 + 1552);
    v34 = *(v0 + 1544);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    *(v0 + 2120) = v35;
    v29(v31, v32);
    v36 = (v33 + *(v34 + 24));
    v37 = v36[3];
    v38 = v36[4];
    sub_10000BA08(v36, v37);
    v39 = *(v38 + 16);
    v81 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    *(v0 + 2128) = v41;
    *v41 = v0;
    v41[1] = sub_10013FBB0;

    return v81(v37, v38);
  }
}

uint64_t sub_10013FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[166] = v4;
  v6[167] = a1;
  v6[168] = a2;
  v6[169] = a3;
  v6[170] = a4;
  v7 = v5[266];
  v8 = v5[176];
  v10 = *v4;
  v6[267] = a1;
  v6[268] = a2;

  return _swift_task_switch(sub_10013FCE0, v8, 0);
}

uint64_t sub_10013FCE0()
{
  v1 = *(v0 + 2144);
  if (v1 != 2)
  {
    v2 = v0[169];
    v3 = v0[170];
    v4 = *(v0 + 265);
    v5 = v0[194];
    v6 = v4 - *(v0[196] + 16);
    v7 = v4 - *(v0 + 244);
    if (v5[14])
    {
      v8 = v5[13];
      v9 = v5[14];
    }

    else
    {
      v9 = v5[12];
      if (!v9)
      {
        v9 = 0xE500000000000000;
        v8 = 0x58582D5355;
        goto LABEL_7;
      }

      v8 = v5[11];
      v10 = v5[12];
      swift_bridgeObjectRetain_n();
    }

    swift_bridgeObjectRetain_n();
LABEL_7:
    v11 = v0[267];
    v12 = String._bridgeToObjectiveC()();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v1 & 1;
    *(v13 + 32) = v2;
    *(v13 + 40) = v3;
    *(v13 + 48) = v6;
    *(v13 + 56) = v7;
    *(v13 + 64) = v8;
    *(v13 + 72) = v9;
    v0[118] = sub_1001413AC;
    v0[119] = v13;
    v0[114] = _NSConcreteStackBlock;
    v0[115] = 1107296256;
    v0[116] = sub_10010CF08;
    v0[117] = &unk_100809D38;
    v14 = _Block_copy(v0 + 114);
    v15 = v0[119];

    AnalyticsSendEventLazy();
    _Block_release(v14);
  }

  v40 = v0[243];
  v41 = v0[242];
  v42 = v0[241];
  v43 = v0[240];
  v44 = v0[239];
  v45 = v0[238];
  v46 = v0[237];
  v47 = v0[236];
  v48 = v0[233];
  v49 = v0[230];
  v50 = v0[229];
  v51 = v0[228];
  v52 = v0[227];
  v53 = v0[224];
  v38 = v0[220];
  v39 = v0[221];
  v16 = v0[218];
  v32 = v0[217];
  v33 = v0[219];
  v54 = v0[216];
  v55 = v0[215];
  v36 = v0[210];
  v37 = v0[212];
  v57 = v0[209];
  v35 = v0[206];
  v59 = v0[203];
  v67 = v0[204];
  v68 = v0[202];
  v17 = v0[201];
  v18 = v0[199];
  v19 = v0[198];
  v30 = v0[197];
  v31 = v0[200];
  v20 = v0[196];
  v66 = v0[194];
  v21 = v0[192];
  v58 = v0[191];
  v60 = v0[190];
  v61 = v0[189];
  v62 = v0[186];
  v63 = v0[183];
  v64 = v0[180];
  v65 = v0[179];
  v34 = v0[176];
  v22._countAndFlagsBits = 0x6161303838616331;
  v23._object = 0x8000000100701040;
  v22._object = 0xE800000000000000;
  v23._countAndFlagsBits = 0xD000000000000018;
  logMilestone(tag:description:)(v22, v23);
  v24 = *v20;
  v25 = v20[1];
  v26 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
  sub_10000B8B8(v24, v25);
  v56 = DigitalPresentmentResponse.init(encryptedData:)();
  sub_10000BE18(v21, &qword_10083B8C8, &unk_1006D9ED8);
  sub_10014148C(v20, type metadata accessor for WalletPassPresentmentResponse);
  (*(v19 + 8))(v18, v30);
  v27 = *(v16 + 8);
  v27(v33, v32);
  (*(v17 + 8))(v68, v31);
  sub_10014148C(v67, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v35, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10000BB78(v0 + 131);
  sub_10014148C(v36, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10014148C(v66, type metadata accessor for DigitalPresentmentEligibleProposalData);
  sub_10000BB78(v0 + 151);
  sub_10000BB78(v0 + 126);
  *(v34 + 328) = 0;
  sub_100140774(v37);
  v27(v38, v32);
  v27(v39, v32);
  sub_10014148C(v37, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

  v28 = v0[1];

  return v28(v56);
}

uint64_t sub_1001402E8()
{
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1408);

  sub_10014148C(v2, type metadata accessor for ValidatedDigitalPresentmentRequest);
  *(v3 + 328) = 0;
  v4 = *(v0 + 1992);
  v56 = *(v0 + 1768);
  v58 = *(v0 + 108);
  v5 = *(v0 + 1744);
  v52 = *(v0 + 1736);
  v54 = *(v0 + 1760);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1424);
  v9 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
  v10 = swift_allocError();
  v11 = *(v8 + 16);
  v11(v12, v7, v9);
  *(v6 + v58) = v10;
  swift_allocError();
  v11(v13, v7, v9);
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  v14 = v6;
  sub_100140774(v6);
  v15 = *(v5 + 8);
  v15(v54, v52);
  v15(v56, v52);
  sub_10014148C(v14, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
  v16 = *(v0 + 1944);
  v17 = *(v0 + 1936);
  v18 = *(v0 + 1928);
  v19 = *(v0 + 1920);
  v20 = *(v0 + 1912);
  v21 = *(v0 + 1904);
  v22 = *(v0 + 1896);
  v23 = *(v0 + 1888);
  v24 = *(v0 + 1864);
  v25 = *(v0 + 1840);
  v28 = *(v0 + 1832);
  v29 = *(v0 + 1824);
  v30 = *(v0 + 1816);
  v31 = *(v0 + 1792);
  v32 = *(v0 + 1768);
  v33 = *(v0 + 1760);
  v34 = *(v0 + 1752);
  v35 = *(v0 + 1728);
  v36 = *(v0 + 1720);
  v37 = *(v0 + 1696);
  v38 = *(v0 + 1680);
  v39 = *(v0 + 1672);
  v40 = *(v0 + 1648);
  v41 = *(v0 + 1632);
  v42 = *(v0 + 1624);
  v43 = *(v0 + 1616);
  v44 = *(v0 + 1592);
  v45 = *(v0 + 1568);
  v46 = *(v0 + 1552);
  v47 = *(v0 + 1536);
  v48 = *(v0 + 1528);
  v49 = *(v0 + 1520);
  v50 = *(v0 + 1512);
  v51 = *(v0 + 1488);
  v53 = *(v0 + 1464);
  v55 = *(v0 + 1440);
  v57 = *(v0 + 1432);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100140774(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100141424(a1, v7, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
  sub_10011B80C();
  return sub_10014148C(v7, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
}

uint64_t sub_1001409E8(uint64_t a1, void *a2)
{
  if (IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter() == *a2 && v3 == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

BOOL sub_100140A58()
{
  v2 = v0;
  v29 = type metadata accessor for Logger();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v29);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28[-1] - v9;
  __chkstk_darwin(v8);
  v12 = &v28[-1] - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentAccountPasscodeCheck.getter();
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping logged in with passcode check due to user defaults setting", v18, 2u);
LABEL_15:

      goto LABEL_16;
    }

    v15 = 1;
    goto LABEL_16;
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v28, v28[3]);
  v19 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (!v19)
  {
    sub_10000BB78(v28);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v22, "Device is not logged into iCloud", v23, 2u);
      v12 = v10;
      goto LABEL_15;
    }

    v15 = 0;
    v12 = v10;
LABEL_16:

    (*(v3 + 8))(v12, v29);
    return v15;
  }

  sub_10000BB78(v28);
  v20 = v2[51];
  sub_10000BA08(v2 + 47, v2[50]);
  v21 = dispatch thunk of LocalAuthenticationManaging.isPasscodeSet.getter();
  if (v1)
  {
    return v15;
  }

  if ((v21 & 1) == 0)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v24))
    {
      v15 = 0;
      v12 = v7;
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v16, v24, "Device does not have passcode set", v25, 2u);
    v12 = v7;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100140DB8()
{
  v20 = type metadata accessor for DIPError.Code();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_10000BA08((v0 + 336), *(v0 + 360));
  v13 = v12[4];
  sub_10000BA08(v12, v12[3]);
  dispatch thunk of DeviceInformationProviding.deviceClass.getter();
  (*(v5 + 104))(v9, enum case for DeviceClass.iPhone(_:), v4);
  v14 = static DeviceClass.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  result = (v15)(v11, v4);
  if ((v14 & 1) == 0)
  {
    v17._countAndFlagsBits = 0x3966653033656339;
    v18._countAndFlagsBits = 0xD000000000000044;
    v18._object = 0x8000000100700DD0;
    v17._object = 0xE800000000000000;
    logMilestone(tag:description:)(v17, v18);
    (*(v1 + 104))(v21, enum case for DIPError.Code.digitalPresentmentNotAvailableOnIPad(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001410DC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[24];
  v17 = v0[26];
  v15 = v0[25];
  v16 = v0[27];
  sub_10001FE8C(v0[14]);
  sub_10001FE8C(v2);
  sub_10001FE8C(v4);
  sub_10001FE8C(v6);
  sub_10001FE8C(v8);
  sub_10001FE8C(v10);
  sub_10001FE8C(v17);
  sub_10000BB78(v0 + 28);
  v11 = v0[38];
  v12 = v0[39];
  v13 = v0[40];

  sub_10000BB78(v0 + 42);
  sub_10000BB78(v0 + 47);
  sub_10000BB78(v0 + 52);
  sub_10000BB78(v0 + 59);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100141210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentISOBuilder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B8C8, &unk_1006D9ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141374()
{
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1001413AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  return sub_10010CB74();
}

uint64_t sub_1001413C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001413DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100141424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014148C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100141500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100141580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedDigitalPresentmentRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DigitalPresentmentISOBuilder()
{
  result = qword_10083B938;
  if (!qword_10083B938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014163C()
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001416A8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v81 = a1;
  v82 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  __chkstk_darwin(v8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ISO18013AppleSessionTranscript();
  v75 = *(v83 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v83);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DigitalPresentmentISOBuilder();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  v19 = __chkstk_darwin(v17);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v66 - v21;
  v23 = type metadata accessor for ISO18013PresentmentType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CBOREncoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = CBOREncoder.init()();
  (*(v24 + 104))(v27, enum case for ISO18013PresentmentType.digital(_:), v23);
  v77 = v31;
  CBOREncoder.presentmentType.setter();
  v32 = *(v5 + 8);
  v33 = *(v5 + 16);
  defaultLogger()();
  v73 = v5;
  sub_100141F24(v5, v16);
  sub_10000B8B8(v32, v33);

  v34 = v82;
  sub_10000B8B8(a3, v82);
  v71 = v22;
  v35 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.debug.getter();
  sub_10000B90C(v32, v33);
  v80 = a2;
  v36 = v5;

  v72 = a3;
  sub_10000B90C(a3, v34);
  if (os_log_type_enabled(v35, v5))
  {
    v37 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v84 = v66;
    *v37 = 136315906;
    v38 = Data.base16EncodedString()();
    v39 = sub_100141FE4(v38._countAndFlagsBits, v38._object, &v84);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2080;
    v40 = *(v16 + 3);
    v41 = *(v16 + 4);

    sub_100141F88(v16);
    v42 = sub_100141FE4(v40, v41, &v84);

    *(v37 + 14) = v42;
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_100141FE4(v81, v80, &v84);
    *(v37 + 32) = 2080;
    v43 = v72;
    v44 = v82;
    v45 = Data.base16EncodedString()();
    v46 = sub_100141FE4(v45._countAndFlagsBits, v45._object, &v84);

    *(v37 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Building Apple session transcript with nonce %s, merchantID: %s, teamID: %s, encryption key hash: %s", v37, 0x2Au);
    swift_arrayDestroy();

    v47 = *(v78 + 8);
    v47(v71, v79);
    v48 = v44;
    v49 = v43;
  }

  else
  {

    sub_100141F88(v16);
    v47 = *(v78 + 8);
    v47(v71, v79);
    v48 = v82;
    v49 = v72;
  }

  v50 = *(v73 + 24);
  v51 = *(v73 + 32);
  sub_10000B8B8(v32, v33);

  sub_10000B8B8(v49, v48);

  v52 = v76;
  ISO18013AppleSessionTranscript.init(nonce:merchantID:teamID:encryptionKeyHash:)();
  sub_10014258C(&qword_10083B970, &type metadata accessor for ISO18013AppleSessionTranscript);
  v53 = v74;
  v54 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v56 = v55;
  if (v53)
  {

    (*(v75 + 8))(v52, v83);
    (*(v68 + 104))(v70, enum case for DIPError.Code.internalError(_:), v69);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014258C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v57 = v67;
    defaultLogger()();
    sub_10000B8B8(v54, v56);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    sub_10000B90C(v54, v56);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v82 = v47;
      v62 = v61;
      v84 = v61;
      *v60 = 136315138;
      v63 = Data.base16EncodedString()();
      v64 = sub_100141FE4(v63._countAndFlagsBits, v63._object, &v84);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "DigitalPresentmentISOBuilder built session transcript %s", v60, 0xCu);
      sub_10000BB78(v62);

      v82(v67, v79);
      (*(v75 + 8))(v76, v83);
    }

    else
    {

      v47(v57, v79);
      (*(v75 + 8))(v52, v83);
    }
  }

  return v54;
}

uint64_t sub_100141F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentISOBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141F88(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentISOBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100141FE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001420B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001F2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BB78(v11);
  return v7;
}

unint64_t sub_1001420B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001421BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1001421BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100142208(a1, a2);
  sub_100142338(&off_1007F83F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100142208(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100142424(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100142424(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100142338(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100142498(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100142424(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007224(&qword_10083B978, &unk_1006D9F30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100142498(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007224(&qword_10083B978, &unk_1006D9F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10014258C(unint64_t *a1, void (*a2)(uint64_t))
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