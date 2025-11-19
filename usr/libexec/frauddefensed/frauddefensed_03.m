char *sub_100049F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002074(&qword_1000B6900, &unk_10008F600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004A098(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002074(&qword_1000B79D0, &qword_1000916E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002074(&qword_1000B79D8, &qword_1000916E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10004A1E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002074(&qword_1000B7A38, &qword_100092850);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10000BCB8(0, &qword_1000B7A40, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10005986C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t (*sub_10004A42C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_10004AE30(v8);
  v8[9] = sub_10004A5E0(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10004A4D8;
}

uint64_t (*sub_10004A4DC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10004AE64(v6);
  v6[9] = sub_10004AB14(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10004E164;
}

void sub_10004A580(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10004A5E0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for SignpostsManager.SignpostState(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_100002074(&qword_1000B7A70, &unk_100092860) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100057F68(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_10004D0EC(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for SignpostsManager.SignpostState);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_10004A8BC;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_10005A278();
      goto LABEL_16;
    }

    sub_100059264(v24, a4 & 1);
    v28 = *v5;
    v29 = sub_100057F68(a2, a3);
    if ((v25 & 1) == (v30 & 1))
    {
      v21 = v29;
      v10[11] = v29;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004A8BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_100011DFC(v5, v6, &qword_1000B7A70, &unk_100092860);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_10004D0EC(v9, *(v2 + 6), type metadata accessor for SignpostsManager.SignpostState);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_10004D0EC(v13, v14, type metadata accessor for SignpostsManager.SignpostState);
        sub_10005BB64(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_100011DFC(v5, v17, &qword_1000B7A70, &unk_100092860);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_10004D0EC(v9, *(v2 + 7), type metadata accessor for SignpostsManager.SignpostState);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10004D0EC(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for SignpostsManager.SignpostState);
      goto LABEL_10;
    }
  }

  sub_10000BC10(v9, &qword_1000B7A70, &unk_100092860);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_100026E0C(*(v20 + 48) + 16 * v19);
    sub_10005AE88(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_10000BC10(v23, &qword_1000B7A70, &unk_100092860);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_10004AB14(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x98uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 120) = a2;
  *(v8 + 128) = v3;
  v10 = *v3;
  v11 = sub_100058024(a2);
  *(v9 + 144) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10005A4A8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000595A0(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_100058024(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 136) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 40 * v11;
    v23 = *v22;
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0uLL;
  }

  *(v9 + 80) = v23;
  *(v9 + 96) = v24;
  *(v9 + 104) = v25;
  *(v9 + 112) = v26;
  return sub_10004AC94;
}

void sub_10004AC94(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 144);
  if ((a2 & 1) == 0)
  {
    if (!v3)
    {
      if ((*(*a1 + 144) & 1) == 0)
      {
        goto LABEL_15;
      }

      v18 = *(v2 + 136);
      v19 = **(v2 + 128);
      v20 = *(*a1 + 104);

      sub_10005B074(v18, v19);
      goto LABEL_14;
    }

    v9 = *(v2 + 136);
    v10 = **(v2 + 128);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      *(v2 + 40) = v3;
      *(v2 + 48) = v4;
      *(v2 + 56) = v5;
      *(v2 + 64) = v6 & 1;
      *(v2 + 72) = v7;
      v13 = v2 + 40;
      v12 = v11;
      goto LABEL_13;
    }

LABEL_7:
    v14 = v10[7] + 40 * v9;
    *v14 = v3;
    *(v14 + 8) = v4;
    *(v14 + 16) = v5;
    *(v14 + 24) = v6 & 1;
    *(v14 + 32) = v7;
    goto LABEL_15;
  }

  if (v3)
  {
    v9 = *(v2 + 136);
    v10 = **(v2 + 128);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      *v2 = v3;
      *(v2 + 8) = v4;
      *(v2 + 16) = v5;
      *(v2 + 24) = v6 & 1;
      *(v2 + 32) = v7;
      v12 = v11;
      v13 = v2;
LABEL_13:
      v20 = v6;
      sub_10005BBFC(v9, v12, v13, v10);
      v21 = v11;
LABEL_14:
      v6 = v20;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*a1 + 144))
  {
    v15 = *(v2 + 136);
    v16 = **(v2 + 128);
    v17 = *(*a1 + 104);

    sub_10005B074(v15, v16);
    v6 = v17;
  }

LABEL_15:
  v22 = *(v2 + 80);
  v23 = *(v2 + 88);
  v24 = *(v2 + 96);
  v25 = *(v2 + 104);
  v26 = *(v2 + 112);
  sub_10004CCB0(v3, v4, v5, v6, v7);
  sub_10004CD0C(v22, v23, v24, v25, v26);

  free(v2);
}

uint64_t (*sub_10004AE30(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004AE58;
}

uint64_t (*sub_10004AE64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004E0C0;
}

uint64_t sub_10004AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10004AF2C;

  return sub_100048FA0(a2, a3);
}

uint64_t sub_10004AF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10004B03C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_10004AE8C(a1, v5, v4);
}

uint64_t sub_10004B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_10004E118;

  return sub_100047C0C(a2, a3, a4);
}

uint64_t sub_10004B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return _swift_task_switch(sub_10004B1FC, 0, 0);
}

uint64_t sub_10004B1FC()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[8] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10004B318;

  return v6(v0 + 5);
}

uint64_t sub_10004B318()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10004E0C8;
  }

  else
  {
    v3 = sub_10004E11C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return _swift_task_switch(sub_10004B44C, 0, 0);
}

uint64_t sub_10004B44C()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[8] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10004B568;

  return v6(v0 + 5);
}

uint64_t sub_10004B568()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10004B6EC;
  }

  else
  {
    v3 = sub_10004B67C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004B67C()
{
  v1 = v0[8];
  v2 = v0[6];

  *v2 = v0[5];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10004B6EC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_10004B750(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10004B848;

  return v8(a2);
}

uint64_t sub_10004B848(uint64_t a1)
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
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10004B994, 0, 0);
  }
}

uint64_t sub_10004B9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004BA1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BA54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011E6C;

  return sub_10004B12C(a1, a2, v7, v6);
}

uint64_t sub_10004BB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004B1DC(a1, v4, v5, v6);
}

uint64_t sub_10004BBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004B42C(a1, v4, v5, v6);
}

unint64_t sub_10004BCB0()
{
  result = qword_1000B79F8;
  if (!qword_1000B79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B79F8);
  }

  return result;
}

uint64_t sub_10004BD60(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10004BDB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004BE60;

  return sub_1000446E8(a1, v5, v4);
}

uint64_t sub_10004BE60(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10004BF5C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002A54;

  return sub_10004B750(a1, a2, v7);
}

uint64_t sub_10004C030()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004C068()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v17 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v10);

  v15 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v17 | 7);
}

void sub_10004C214(void *a1, void *a2, char a3)
{
  v7 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = (*(v10 + 64) + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v11);
  v13 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_100045A44(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9));
}

uint64_t sub_10004C35C(void *a1, uint64_t a2, void *a3)
{
  v7 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + ((*(v10 + 64) + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100046644(a1, a2, a3, v11, v12);
}

uint64_t sub_10004C484()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10004C5FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Logger() - 8);
  v13 = v4 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));
  sub_1000469D4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11));
}

uint64_t sub_10004C718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004C730()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10004C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v11 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Logger() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_100046E80(a1, a2, a3, a4, a5 & 0x1FF, *(v5 + 16), *(v5 + 24), v5 + v12, v5 + v15, *(v5 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10004C9E8()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  v15 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v10 | 7);
}

uint64_t sub_10004CB70(uint64_t a1, char a2)
{
  v5 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Logger() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + v10);
  v14 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000472E0(a1, a2 & 1, v11, v12, v2 + v6, v2 + v9, v13, v14);
}

uint64_t sub_10004CC9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A7C(a1, a2);
  }

  return a1;
}

uint64_t sub_10004CCB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = result;
    v6 = a5;
    v7 = v5;
  }

  return result;
}

void sub_10004CD0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

id sub_10004CD6C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10004CD78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_1000494C8(a1, v5, v4);
}

uint64_t sub_10004CE24(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011E6C;

  return sub_100048148(a1, a2, v7, v6);
}

uint64_t sub_10004CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004864C(a1, v4, v5, v6);
}

uint64_t sub_10004CF8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004CFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_100048C88(a1, v4, v5, v6);
}

uint64_t sub_10004D0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D154(uint64_t a1)
{
  v2 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v38 - v20;
  v22 = *(a1 + *(type metadata accessor for SpamDecisioningAsset(0) + 32));
  v23 = *(v22 + 232);
  v42[2] = *(v22 + 216);
  v42[3] = v23;
  v24 = *(v22 + 200);
  v42[0] = *(v22 + 184);
  v42[1] = v24;
  v25 = *(v22 + 296);
  v26 = *(v22 + 264);
  v42[6] = *(v22 + 280);
  v42[7] = v25;
  v27 = *(v22 + 248);
  v43 = *(v22 + 312);
  v42[4] = v27;
  v42[5] = v26;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v12 + 8))(v16, v11);
  v28 = type metadata accessor for Locale.Region();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v21, 1, v28) == 1)
  {
    sub_10000BC10(v21, &qword_1000B6A68, &qword_10008F6F0);
    v30 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
  }

  else
  {
    v31 = Locale.Region.identifier.getter();
    v30 = v32;
    (*(v29 + 8))(v21, v28);
  }

  sub_10004D808(a1, v10, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  sub_10004D808(a1, v7, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v33 = &v10[*(v2 + 20)];
  v34 = *(v33 + 2);
  v35 = *(v33 + 3);
  v40 = v34;
  v41 = v35;
  v38 = 5456722;
  v39 = 0xE300000000000000;
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 && (sub_100040644(5456722, 0xE300000000000000, v31, v30, v42, v7) & 1) != 0 || (v40 = v34, v41 = v35, v38 = 0x6567617373654D69, v39 = 0xE800000000000000, (StringProtocol.contains<A>(_:)()) && (sub_100040644(0x6567617373654D69, 0xE800000000000000, v31, v30, v42, v7))
  {
    v36 = 1;
  }

  else
  {
    v40 = v34;
    v41 = v35;
    v38 = 5459283;
    v39 = 0xE300000000000000;
    if (StringProtocol.contains<A>(_:)())
    {
      v36 = sub_100040644(5459283, 0xE300000000000000, v31, v30, v42, v7);
    }

    else
    {
      v36 = 0;
    }
  }

  sub_10004B9B8(v7, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  sub_10004B9B8(v10, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  return v36 & 1;
}

uint64_t sub_10004D630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_10004D674(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_10004D68C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_10004D68C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_100011CAC(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_10004D698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004D6E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004D768(uint64_t a1, void *a2)
{
  v4 = *(*(type metadata accessor for Logger() - 8) + 80);

  return sub_10004FDB8(a1, a2);
}

uint64_t sub_10004D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10004D8B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004D914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004D928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10004D970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004D9C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10004DA0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004DB38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
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

uint64_t sub_10004DBF0()
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004DC74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10004DCA4(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10004DCB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10004DCE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10004DD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10004DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004DEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004DF64()
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004DFEC()
{
  result = qword_1000B7BC0;
  if (!qword_1000B7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BC0);
  }

  return result;
}

uint64_t sub_10004E1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004E2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ReportingAsset()
{
  result = qword_1000B7C28;
  if (!qword_1000B7C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004E474()
{
  sub_10004E510();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConfigurationsAsset();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004E510()
{
  if (!qword_1000B6D98)
  {
    type metadata accessor for UAFAssetManager.AssetInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B6D98);
    }
  }
}

uint64_t sub_10004E568(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v9 = *(*(sub_100002074(&qword_1000B6CB8, &unk_10008F9F0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = *(*(sub_100002074(&qword_1000B6DE8, &qword_10008FA30) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004E7A4, 0, 0);
}

uint64_t sub_10004E7A4()
{
  v1 = v0[6];
  v97 = type metadata accessor for ReportingAsset();
  v2 = *(v97 + 24);
  v3 = v1;
  if (qword_1000B6670 != -1)
  {
    swift_once();
    v3 = v0[6];
  }

  v4 = v0[19];
  v103 = v0[18];
  v107 = v0[25];
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];
  v9 = type metadata accessor for Logger();
  v10 = sub_100003448(v9, qword_1000B9328);
  v99 = *(v9 - 8);
  v101 = v9;
  v109 = v2;
  v111 = v1;
  (*(v99 + 16))(v1 + v2, v10, v9);
  sub_100011DFC(v8, v3, &qword_1000B6CB8, &unk_10008F9F0);
  v11 = *(v6 + 56);
  v11(v107, 1, 1, v7);
  sub_100011DFC(v8, v5, &qword_1000B6CB8, &unk_10008F9F0);
  if ((*(v4 + 48))(v5, 1, v103) == 1)
  {
    v12 = v11;
    sub_10000BC10(v0[17], &qword_1000B6CB8, &unk_10008F9F0);
  }

  else
  {
    v13 = v0[24];
    v95 = v0[25];
    v14 = v0[20];
    v104 = v11;
    v15 = v0[18];
    v16 = v0[16];
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[9];
    v20 = v0[10];
    v21 = v0[8];
    sub_10001C20C(v0[17], v14);
    v22 = v14 + *(v15 + 20);
    URL.path(percentEncoded:)(1);
    URL.init(fileURLWithPath:)();

    v0[4] = 0xD000000000000014;
    v0[5] = 0x8000000100094D30;
    (*(v19 + 104))(v20, enum case for URL.DirectoryHint.inferFromPath(_:), v21);
    sub_10001C1B8();
    URL.appending<A>(component:directoryHint:)();
    (*(v19 + 8))(v20, v21);
    (*(v17 + 8))(v16, v18);
    sub_10004F284(v14);
    sub_10000BC10(v95, &qword_1000B6DE8, &qword_10008FA30);
    v12 = v104;
    v104(v13, 0, 1, v18);
    sub_10001C148(v13, v95);
  }

  v23 = v0[23];
  v24 = v0[11];
  v25 = v0[12];
  sub_100011DFC(v0[25], v23, &qword_1000B6DE8, &qword_10008FA30);
  v26 = *(v25 + 48);
  v27 = v26(v23, 1, v24);
  v28 = v0[23];
  v29 = v109;
  if (v27 == 1)
  {
    sub_10000BC10(v0[23], &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    v30 = v0 + 15;
    (*(v0[12] + 32))(v0[15], v0[23], v0[11]);
    v31 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 fileExistsAtPath:v32];

    v34 = v0[15];
    if (v33)
    {
      v35 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(47);

      v36 = URL.path(percentEncoded:)(1);
      String.append(_:)(v36);

      v37._countAndFlagsBits = 32032;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      sub_10005E11C(v35, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000053, 0x8000000100096DC0, 23);

      v38 = URL.path.getter();
      v40 = v39;
      v41 = type metadata accessor for ConfigurationsAsset();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      v81 = sub_10001C8A8(v38, v40);
      v82 = v0[12];
      sub_10000BC10(v0[7], &qword_1000B6CB8, &unk_10008F9F0);
      v83 = *(v82 + 8);
      goto LABEL_17;
    }

    (*(v0[12] + 8))(*v30, v0[11]);
  }

  type metadata accessor for ReportManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v46 = [v45 resourceURL];

  if (v46)
  {
    v47 = v0[21];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v50 = v0[21];
  v49 = v0[22];
  v51 = v0[11];
  v12(v50, v48, 1, v51);
  sub_10001C148(v50, v49);
  v52 = v26(v49, 1, v51);
  v53 = v0[22];
  if (v52 == 1)
  {
    v54 = v0[7];
    sub_10000BC10(v0[22], &qword_1000B6DE8, &qword_10008FA30);
    v55 = static os_log_type_t.error.getter();
    sub_10005E11C(v55, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000053, 0x8000000100096DC0, 27);
    sub_10000B6B0();
    swift_allocError();
    *v56 = 0xD000000000000032;
    *(v56 + 8) = 0x8000000100094BD0;
    *(v56 + 16) = 6;
    swift_willThrow();
    sub_10000BC10(v54, &qword_1000B6CB8, &unk_10008F9F0);
    v73 = v0[24];
    v74 = v0[22];
    v75 = v0[23];
    v77 = v0[20];
    v76 = v0[21];
    v78 = v0[17];
    v94 = v0[16];
    v96 = v0[15];
    v98 = v0[14];
    v105 = v0[13];
    v110 = v0[10];
    v79 = v0[6];
    sub_10000BC10(v0[25], &qword_1000B6DE8, &qword_10008FA30);
    sub_10000BC10(v79, &qword_1000B6CB8, &unk_10008F9F0);
    (*(v99 + 8))(v111 + v29, v101);

    v80 = v0[1];
    goto LABEL_18;
  }

  v30 = v0 + 14;
  v57 = v0[14];
  v59 = v0[12];
  v58 = v0[13];
  v61 = v0[10];
  v60 = v0[11];
  v63 = v0[8];
  v62 = v0[9];
  v0[2] = 0xD000000000000026;
  v0[3] = 0x8000000100094C10;
  (*(v62 + 104))(v61, enum case for URL.DirectoryHint.inferFromPath(_:), v63);
  sub_10001C1B8();
  URL.appending<A>(path:directoryHint:)();
  (*(v62 + 8))(v61, v63);
  v64 = *(v59 + 8);
  v64(v53, v60);
  (*(v59 + 32))(v57, v58, v60);
  LOBYTE(v60) = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(49);

  v65 = URL.path(percentEncoded:)(1);
  String.append(_:)(v65);

  v66._countAndFlagsBits = 32032;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  sub_10005E11C(v60, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000053, 0x8000000100096DC0, 31);

  v67 = URL.path.getter();
  v69 = v68;
  v70 = type metadata accessor for ConfigurationsAsset();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v81 = sub_10001C8A8(v67, v69);
  sub_10000BC10(v0[7], &qword_1000B6CB8, &unk_10008F9F0);
  v83 = v64;
LABEL_17:
  v84 = *v30;
  v86 = v0[24];
  v85 = v0[25];
  v88 = v0[22];
  v87 = v0[23];
  v90 = v0[20];
  v89 = v0[21];
  v100 = v0[17];
  v102 = v0[16];
  v106 = v0[15];
  v108 = v0[14];
  v91 = v0[13];
  v112 = v0[10];
  v92 = v0[6];
  v83(v84, v0[11]);
  sub_10000BC10(v85, &qword_1000B6DE8, &qword_10008FA30);
  *(v92 + *(v97 + 20)) = v81;

  v80 = v0[1];
LABEL_18:

  return v80();
}

uint64_t sub_10004F284(uint64_t a1)
{
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004F2E4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x4964696C61766E69;
  switch(a3)
  {
    case 1:
      result = 0x466B726F7774656ELL;
      break;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x74694B64756F6C63;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 12:
      result = 0xD000000000000018;
      break;
    case 9:
    case 17:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x64726F6365526B63;
      break;
    case 11:
      result = 0x61466574696C7173;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x4465727574616566;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 27:
      result = 0xD000000000000021;
      break;
    case 25:
    case 26:
      result = 0xD000000000000020;
      break;
    case 28:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004F688(uint64_t a1)
{
  v2 = sub_10004F838();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004F6C4(uint64_t a1)
{
  v2 = sub_10004F838();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004F704()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_10004F76C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100002074(&qword_1000B7C70, &qword_100092038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F580;
  *(inited + 32) = 0x736544726F727265;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000063;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_10004F88C(v1, v2, v3);
  v5 = sub_100011B7C(inited);
  swift_setDeallocating();
  sub_10004F8A4(inited + 32);
  return v5;
}

unint64_t sub_10004F838()
{
  result = qword_1000B7C68;
  if (!qword_1000B7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7C68);
  }

  return result;
}

uint64_t sub_10004F88C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

uint64_t sub_10004F8A4(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6D18, &qword_10008F9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10004F90C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004F920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE4 && *(a1 + 17))
  {
    return (*a1 + 228);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x1C)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004F968(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE3)
  {
    *(result + 16) = 0;
    *result = a2 - 228;
    *(result + 8) = 0;
    if (a3 >= 0xE4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_10004F9C8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1000B7C78 = v2;
}

char *sub_10004FA38(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v11 = sub_100003448(v6, qword_1000B93E8);
  v39 = v7;
  v12 = *(v7 + 16);
  v12(&v2[v10], v11, v6);
  v13 = [objc_opt_self() defaultManager];
  v14 = String._bridgeToObjectiveC()();
  v43 = a2;
  v15 = v14;
  v16 = [v13 fileExistsAtPath:v14];

  if (v16)
  {
    v17 = v43;
    *(v3 + 2) = a1;
    *(v3 + 3) = v17;
  }

  else
  {
    v36 = v6;
    v37 = v10;
    v18 = v38;
    v12(v38, &v3[v10], v6);
    v19 = static os_log_type_t.error.getter();
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v20._object = 0x8000000100097180;
    v20._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a1;
    v22 = v43;
    v21._object = v43;
    String.append(_:)(v21);
    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10005E11C(v19, v41, v42, 0xD000000000000054, 0x8000000100096BD0, 20);

    v24 = *(v39 + 8);
    v25 = v18;
    v26 = v36;
    v24(v25, v36);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v27._object = 0x8000000100097180;
    v27._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v27);
    v28._countAndFlagsBits = a1;
    v28._object = v22;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32032;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    v30 = v41;
    v31 = v42;
    sub_10000B6B0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 6;
    swift_willThrow();
    v24(&v3[v37], v26);
    v33 = *(*v3 + 48);
    v34 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_10004FDB8(uint64_t a1, void *a2)
{
  v3 = 7104878;
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);

  if (a2 && (v5 = [a2 toString]) != 0)
  {
    v6 = v5;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v9._countAndFlagsBits = v3;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10005E11C(v4, 0xD00000000000002ELL, 0x80000001000971C0, 0xD000000000000054, 0x8000000100096BD0, 50);
}

uint64_t sub_10004FEE0()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JavaScriptAsset()
{
  result = qword_1000B7CB0;
  if (!qword_1000B7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004FFD8()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100050074(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(42);

    _StringGuts.grow(_:)(21);

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x746974627573202CLL;
    v12._object = 0xEB000000003D656CLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a3;
    v13._object = a4;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x3D656C746974;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 2099281184;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    sub_10005E11C(v10, 0xD000000000000024, 0x8000000100097240, 0xD000000000000053, 0x8000000100097270, 26);

    sub_1000503B0();
    sub_10002E304(a1, a2, a3, a4);
  }

  else
  {
LABEL_8:
    v17 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(33);

    _StringGuts.grow(_:)(21);

    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x746974627573202CLL;
    v19._object = 0xEB000000003D656CLL;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a3;
    v20._object = a4;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x3D656C746974;
    v21._object = 0xE600000000000000;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 2099281184;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    sub_10005E11C(v17, 0xD00000000000001BLL, 0x80000001000972D0, 0xD000000000000053, 0x8000000100097270, 22);

    sub_10000B6B0();
    swift_allocError();
    *v23 = xmmword_100092390;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1000503B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for TrustKitUIServerClient();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_10002D554();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100050424()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13frauddefensed14DebugUIManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugUIManager()
{
  result = qword_1000B7D70;
  if (!qword_1000B7D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005051C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000505B8(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for URL();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100050684, 0, 0);
}

uint64_t sub_100050684()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedManager];
  v0[25] = v2;
  v0[26] = *(v1 + 16);
  v0[27] = *(v1 + 24);
  v3 = String._bridgeToObjectiveC()();
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000507F8;
  v4 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F58, &qword_1000924E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000531CC;
  v0[13] = &unk_1000B0AA8;
  v0[14] = v4;
  [v2 retrieveAssetSet:v3 usages:0 queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000507F8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000508D8, 0, 0);
}

uint64_t sub_1000508D8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 224);

  if (!v1)
  {
    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    v34 = *(v0 + 160);
    v143 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(56);
    v35._countAndFlagsBits = 0xD000000000000032;
    v35._object = 0x8000000100097360;
    String.append(_:)(v35);
    v36 = v34[6];
    v37 = v34[7];
    v38 = v34[8];
    v39 = v34[9];
    _StringGuts.grow(_:)(51);
    v40._countAndFlagsBits = 0x7465537465737361;
    v40._object = 0xED00003D656D614ELL;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v33;
    v41._object = v32;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0x726373627573202CLL;
    v42._object = 0xED00003D72656269;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v36;
    v43._object = v37;
    String.append(_:)(v43);
    v44._object = 0x80000001000973A0;
    v44._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v38;
    v45._object = v39;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 2099281184;
    v47._object = 0xE400000000000000;
    String.append(_:)(v47);
    sub_10005E11C(v143, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 89);

    _StringGuts.grow(_:)(56);
    v48._countAndFlagsBits = 0xD000000000000032;
    v48._object = 0x8000000100097360;
    String.append(_:)(v48);
    _StringGuts.grow(_:)(51);
    v49._countAndFlagsBits = 0x7465537465737361;
    v49._object = 0xED00003D656D614ELL;
    String.append(_:)(v49);
    v50._countAndFlagsBits = v33;
    v50._object = v32;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 0x726373627573202CLL;
    v51._object = 0xED00003D72656269;
    String.append(_:)(v51);
    v52._countAndFlagsBits = v36;
    v52._object = v37;
    String.append(_:)(v52);
    v53._object = 0x80000001000973A0;
    v53._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v53);
    v54._countAndFlagsBits = v38;
    v54._object = v39;
    String.append(_:)(v54);
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    String.append(_:)(v55);

    v56._countAndFlagsBits = 2099281184;
    v56._object = 0xE400000000000000;
    String.append(_:)(v56);
    sub_10000B6B0();
    swift_allocError();
    *v57 = 0;
    *(v57 + 8) = 0xE000000000000000;
    *(v57 + 16) = 8;
    swift_willThrow();
    goto LABEL_13;
  }

  v3 = *(v0 + 160);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v1 assetNamed:v6];

  if (!v7)
  {
    v59 = *(v0 + 208);
    v58 = *(v0 + 216);
    v60 = *(v0 + 160);
    v144 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(67);
    v150 = v1;
    v61._countAndFlagsBits = 0xD00000000000003DLL;
    v61._object = 0x8000000100097420;
    String.append(_:)(v61);
    v62 = v60[6];
    v63 = v60[7];
    v64 = v60[8];
    v65 = v60[9];
    _StringGuts.grow(_:)(51);
    v66._countAndFlagsBits = 0x7465537465737361;
    v66._object = 0xED00003D656D614ELL;
    String.append(_:)(v66);
    v67._countAndFlagsBits = v59;
    v67._object = v58;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 0x726373627573202CLL;
    v68._object = 0xED00003D72656269;
    String.append(_:)(v68);
    v69._countAndFlagsBits = v62;
    v69._object = v63;
    String.append(_:)(v69);
    v70._object = 0x80000001000973A0;
    v70._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v70);
    v71._countAndFlagsBits = v64;
    v71._object = v65;
    String.append(_:)(v71);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 2099281184;
    v73._object = 0xE400000000000000;
    String.append(_:)(v73);
    sub_10005E11C(v144, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 94);

    _StringGuts.grow(_:)(67);
    v74._countAndFlagsBits = 0xD00000000000003DLL;
    v74._object = 0x8000000100097420;
    String.append(_:)(v74);
    _StringGuts.grow(_:)(51);
    v75._countAndFlagsBits = 0x7465537465737361;
    v75._object = 0xED00003D656D614ELL;
    String.append(_:)(v75);
    v76._countAndFlagsBits = v59;
    v76._object = v58;
    String.append(_:)(v76);
    v77._countAndFlagsBits = 0x726373627573202CLL;
    v77._object = 0xED00003D72656269;
    String.append(_:)(v77);
    v78._countAndFlagsBits = v62;
    v78._object = v63;
    String.append(_:)(v78);
    v79._object = 0x80000001000973A0;
    v79._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v79);
    v80._countAndFlagsBits = v64;
    v80._object = v65;
    String.append(_:)(v80);
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    String.append(_:)(v81);

    v82._countAndFlagsBits = 2099281184;
    v82._object = 0xE400000000000000;
    String.append(_:)(v82);
    sub_10000B6B0();
    swift_allocError();
    *v83 = 0;
    *(v83 + 8) = 0xE000000000000000;
    *(v83 + 16) = 8;
    swift_willThrow();
LABEL_10:

    goto LABEL_13;
  }

  v8 = [v7 location];
  if (!v8)
  {
    v85 = *(v0 + 208);
    v84 = *(v0 + 216);
    v86 = *(v0 + 160);
    v145 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v150 = v1;
    v87._countAndFlagsBits = 0xD000000000000037;
    v87._object = 0x8000000100097460;
    String.append(_:)(v87);
    v89 = v86[6];
    v88 = v86[7];
    v90 = v86[8];
    v91 = v86[9];
    _StringGuts.grow(_:)(51);
    v92._countAndFlagsBits = 0x7465537465737361;
    v92._object = 0xED00003D656D614ELL;
    String.append(_:)(v92);
    v93._countAndFlagsBits = v85;
    v93._object = v84;
    String.append(_:)(v93);
    v94._countAndFlagsBits = 0x726373627573202CLL;
    v94._object = 0xED00003D72656269;
    String.append(_:)(v94);
    v95._countAndFlagsBits = v89;
    v95._object = v88;
    String.append(_:)(v95);
    v96._object = 0x80000001000973A0;
    v96._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v96);
    v97._countAndFlagsBits = v90;
    v97._object = v91;
    String.append(_:)(v97);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    String.append(_:)(v98);

    v99._countAndFlagsBits = 2099281184;
    v99._object = 0xE400000000000000;
    String.append(_:)(v99);
    sub_10005E11C(v145, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 99);

    _StringGuts.grow(_:)(61);
    v100._countAndFlagsBits = 0xD000000000000037;
    v100._object = 0x8000000100097460;
    String.append(_:)(v100);
    _StringGuts.grow(_:)(51);
    v101._countAndFlagsBits = 0x7465537465737361;
    v101._object = 0xED00003D656D614ELL;
    String.append(_:)(v101);
    v102._countAndFlagsBits = v85;
    v102._object = v84;
    String.append(_:)(v102);
    v103._countAndFlagsBits = 0x726373627573202CLL;
    v103._object = 0xED00003D72656269;
    String.append(_:)(v103);
    v104._countAndFlagsBits = v89;
    v104._object = v88;
    String.append(_:)(v104);
    v105._object = 0x80000001000973A0;
    v105._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v105);
    v106._countAndFlagsBits = v90;
    v106._object = v91;
    String.append(_:)(v106);
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    String.append(_:)(v107);

    v108._countAndFlagsBits = 2099281184;
    v108._object = 0xE400000000000000;
    String.append(_:)(v108);
    sub_10000B6B0();
    swift_allocError();
    *v109 = 0;
    *(v109 + 8) = 0xE000000000000000;
    *(v109 + 16) = 8;
    swift_willThrow();

    goto LABEL_10;
  }

  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = v8;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v12 + 32);
  v14(v9, v10, v11);
  v15 = [v7 metadata];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v16 + 16))
  {
    v19 = sub_100057F68(v17, v18);
    v21 = v20;

    if (v21)
    {
      v140 = *(v0 + 168);
      v142 = *(v0 + 192);
      v22 = *(v0 + 152);
      v23 = (*(v16 + 56) + 16 * v19);
      v24 = v23[1];
      v147 = *v23;
      v149 = *(v0 + 184);

      v25 = [v7 name];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = type metadata accessor for UAFAssetManager.AssetInfo(0);
      v14(v22 + *(v29 + 20), v142, v140);
      *v22 = v26;
      v22[1] = v28;
      v30 = (v22 + *(v29 + 24));
      *v30 = v147;
      v30[1] = v24;

      v31 = *(v0 + 8);
      goto LABEL_14;
    }
  }

  else
  {
  }

  v111 = *(v0 + 208);
  v110 = *(v0 + 216);
  v141 = *(v0 + 176);
  v146 = *(v0 + 168);
  v148 = *(v0 + 192);
  v151 = v1;
  v112 = *(v0 + 160);

  v139 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(60);
  v113._countAndFlagsBits = 0xD000000000000036;
  v113._object = 0x80000001000974A0;
  String.append(_:)(v113);
  v114 = v112[6];
  v115 = v112[7];
  v117 = v112[8];
  v116 = v112[9];
  _StringGuts.grow(_:)(51);
  v118._countAndFlagsBits = 0x7465537465737361;
  v118._object = 0xED00003D656D614ELL;
  String.append(_:)(v118);
  v119._countAndFlagsBits = v111;
  v119._object = v110;
  String.append(_:)(v119);
  v120._countAndFlagsBits = 0x726373627573202CLL;
  v120._object = 0xED00003D72656269;
  String.append(_:)(v120);
  v121._countAndFlagsBits = v114;
  v121._object = v115;
  String.append(_:)(v121);
  v122._object = 0x80000001000973A0;
  v122._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v122);
  v123._countAndFlagsBits = v117;
  v123._object = v116;
  String.append(_:)(v123);
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  String.append(_:)(v124);

  v125._countAndFlagsBits = 2099281184;
  v125._object = 0xE400000000000000;
  String.append(_:)(v125);
  sub_10005E11C(v139, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 104);

  _StringGuts.grow(_:)(60);
  v126._countAndFlagsBits = 0xD000000000000036;
  v126._object = 0x80000001000974A0;
  String.append(_:)(v126);
  _StringGuts.grow(_:)(51);
  v127._countAndFlagsBits = 0x7465537465737361;
  v127._object = 0xED00003D656D614ELL;
  String.append(_:)(v127);
  v128._countAndFlagsBits = v111;
  v128._object = v110;
  String.append(_:)(v128);
  v129._countAndFlagsBits = 0x726373627573202CLL;
  v129._object = 0xED00003D72656269;
  String.append(_:)(v129);
  v130._countAndFlagsBits = v114;
  v130._object = v115;
  String.append(_:)(v130);
  v131._object = 0x80000001000973A0;
  v131._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v131);
  v132._countAndFlagsBits = v117;
  v132._object = v116;
  String.append(_:)(v132);
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  String.append(_:)(v133);

  v134._countAndFlagsBits = 2099281184;
  v134._object = 0xE400000000000000;
  String.append(_:)(v134);
  sub_10000B6B0();
  swift_allocError();
  *v135 = 0;
  *(v135 + 8) = 0xE000000000000000;
  *(v135 + 16) = 8;
  swift_willThrow();

  (*(v141 + 8))(v148, v146);
LABEL_13:
  v137 = *(v0 + 184);
  v136 = *(v0 + 192);

  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

uint64_t sub_10005163C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedManager];
  v4 = v0[6];
  v3 = v0[7];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 subscriptionsForSubscriber:v5];

  if (v6)
  {
    v58 = v1;
    sub_100053904();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v3;
    v57 = v4;
    if (v7 >> 62)
    {
LABEL_24:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = [v10 name];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = v58[8];
      v17 = v58[9];
      if (v13 == v16 && v15 == v17)
      {

        v16 = v13;
LABEL_20:
        v38 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(90);
        v39._countAndFlagsBits = 0xD00000000000003BLL;
        v39._object = 0x8000000100097590;
        String.append(_:)(v39);
        v40 = Array.description.getter();
        v42 = v41;

        v43._countAndFlagsBits = v40;
        v43._object = v42;
        String.append(_:)(v43);

        v44._countAndFlagsBits = 0xD000000000000017;
        v44._object = 0x8000000100097570;
        String.append(_:)(v44);
        v45 = v58[2];
        v46 = v58[3];
        _StringGuts.grow(_:)(51);
        v47._countAndFlagsBits = 0x7465537465737361;
        v47._object = 0xED00003D656D614ELL;
        String.append(_:)(v47);
        v48._countAndFlagsBits = v45;
        v48._object = v46;
        String.append(_:)(v48);
        v49._countAndFlagsBits = 0x726373627573202CLL;
        v49._object = 0xED00003D72656269;
        String.append(_:)(v49);
        v50._object = v56;
        v50._countAndFlagsBits = v57;
        String.append(_:)(v50);
        v51._object = 0x80000001000973A0;
        v51._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v51);
        v52._countAndFlagsBits = v16;
        v52._object = v17;
        String.append(_:)(v52);
        v53._countAndFlagsBits = 0;
        v53._object = 0xE000000000000000;
        String.append(_:)(v53);

        v54._countAndFlagsBits = 2099281184;
        v54._object = 0xE400000000000000;
        String.append(_:)(v54);
        sub_10005E11C(v38, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 64);
        v37 = 1;
        goto LABEL_21;
      }

      v19 = v58[8];
      v20 = v58[9];
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v9;
      if (v21)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(86);
    v23._countAndFlagsBits = 0xD000000000000050;
    v23._object = 0x80000001000975D0;
    String.append(_:)(v23);
    v24 = v1[2];
    v25 = v1[3];
    v26 = v1;
    v27 = v1[8];
    v28 = v26[9];
    _StringGuts.grow(_:)(51);
    v29._countAndFlagsBits = 0x7465537465737361;
    v29._object = 0xED00003D656D614ELL;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v24;
    v30._object = v25;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0x726373627573202CLL;
    v31._object = 0xED00003D72656269;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v4;
    v32._object = v3;
    String.append(_:)(v32);
    v33._object = 0x80000001000973A0;
    v33._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v27;
    v34._object = v28;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 2099281184;
    v36._object = 0xE400000000000000;
    String.append(_:)(v36);
    sub_10005E11C(v22, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 57);
  }

  v37 = 0;
LABEL_21:

  return v37;
}

uint64_t sub_100051B58()
{
  *(v1 + 232) = v0;
  v2 = *(*(sub_100002074(&qword_1000B7820, &unk_1000917B0) - 8) + 64) + 15;
  *(v1 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100051BF4, 0, 0);
}

uint64_t sub_100051BF4()
{
  v1 = v0[29];
  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  v4 = v1[6];
  v0[31] = v4;
  v5 = v1[7];
  v0[32] = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 subscriptionsForSubscriber:v6];

  if (v7)
  {
    sub_100053904();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v9 = v0[29];
      v50 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(90);
      v10._countAndFlagsBits = 0xD00000000000003BLL;
      v10._object = 0x8000000100097590;
      String.append(_:)(v10);
      v11 = Array.description.getter();
      v13 = v12;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0xD000000000000017;
      v15._object = 0x8000000100097570;
      String.append(_:)(v15);
      v16 = v1[2];
      v17 = v9[3];
      v18 = v9[8];
      v19 = v9[9];
      _StringGuts.grow(_:)(51);
      v20._countAndFlagsBits = 0x7465537465737361;
      v20._object = 0xED00003D656D614ELL;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v16;
      v21._object = v17;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0x726373627573202CLL;
      v22._object = 0xED00003D72656269;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v4;
      v23._object = v5;
      String.append(_:)(v23);
      v24._object = 0x80000001000973A0;
      v24._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v18;
      v25._object = v19;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 2099281184;
      v27._object = 0xE400000000000000;
      String.append(_:)(v27);
      sub_10005E11C(v50, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 30);

LABEL_13:
      v47 = v0[30];

      v48 = v0[1];

      return v48();
    }
  }

  v29 = v0[29];
  v28 = v0[30];
  sub_100002074(&qword_1000B7F60, &qword_1000924F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F580;
  v31 = v1[2];
  v0[33] = v31;
  v32 = v29[3];
  v0[34] = v32;
  *(inited + 32) = v31;
  *(inited + 40) = v32;

  *(inited + 48) = sub_1000113D0(&_swiftEmptyArrayStorage);
  sub_1000114E4(inited);
  swift_setDeallocating();
  sub_10005389C(inited + 32);
  v0[35] = v29[8];
  v0[36] = v29[9];
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v28, 1, 1, v33);
  v35 = String._bridgeToObjectiveC()();
  sub_100002074(&qword_1000B7F70, &qword_100092E60);
  v36.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = (*(v34 + 48))(v28, 1, v33);
  isa = 0;
  if (v37 != 1)
  {
    v39 = v0[30];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v34 + 8))(v39, v33);
  }

  v40 = [objc_allocWithZone(UAFAssetSetSubscription) init:v35 assetSets:v36.super.isa usageAliases:0 expires:isa];
  v0[37] = v40;

  if (!v40)
  {
    goto LABEL_13;
  }

  v41 = [v2 sharedManager];
  v0[38] = v41;
  v42 = String._bridgeToObjectiveC()();
  v0[39] = v42;
  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100091290;
  *(v43 + 32) = v40;
  sub_100053904();
  v44 = v40;
  v45 = Array._bridgeToObjectiveC()().super.isa;
  v0[40] = v45;

  v0[2] = v0;
  v0[3] = sub_100052274;
  v46 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F80, &unk_100092508);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000527E8;
  v0[13] = &unk_1000B0AD0;
  v0[14] = v46;
  [v41 subscribe:v42 subscriptions:v45 queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100052274()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_100052408;
  }

  else
  {
    v3 = sub_100052384;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052384()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);

  v4 = *(v0 + 240);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100052408()
{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v38 = v0[37];
  v39 = v0[36];
  v5 = v0[34];
  v4 = v0[35];
  v37 = v0[41];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v36 = v0[29];
  swift_willThrow();

  v9 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(59);
  v10._countAndFlagsBits = 0xD000000000000035;
  v10._object = 0x8000000100097500;
  String.append(_:)(v10);
  _StringGuts.grow(_:)(51);
  v11._countAndFlagsBits = 0x7465537465737361;
  v11._object = 0xED00003D656D614ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v6;
  v12._object = v5;
  String.append(_:)(v12);
  v13._object = 0xED00003D72656269;
  v13._countAndFlagsBits = 0x726373627573202CLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v8;
  v14._object = v7;
  String.append(_:)(v14);
  v15._object = 0x80000001000973A0;
  v15._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v4;
  v16._object = v39;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 2099281184;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 42);

  _StringGuts.grow(_:)(69);
  v19._countAndFlagsBits = 0xD000000000000026;
  v19._object = 0x8000000100097540;
  String.append(_:)(v19);
  swift_getErrorValue();
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[27];
  v23._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000017;
  v24._object = 0x8000000100097570;
  String.append(_:)(v24);
  _StringGuts.grow(_:)(51);
  v25._countAndFlagsBits = 0x7465537465737361;
  v25._object = 0xED00003D656D614ELL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = v6;
  v26._object = v5;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x726373627573202CLL;
  v27._object = 0xED00003D72656269;
  String.append(_:)(v27);
  v28._countAndFlagsBits = v8;
  v28._object = v7;
  String.append(_:)(v28);
  v29._object = 0x80000001000973A0;
  v29._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v4;
  v30._object = v39;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 2099281184;
  v32._object = 0xE400000000000000;
  String.append(_:)(v32);
  sub_10000B6B0();
  swift_allocError();
  *v33 = 0;
  *(v33 + 8) = 0xE000000000000000;
  *(v33 + 16) = 7;
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000527E8(uint64_t a1, void *a2)
{
  v3 = sub_1000111EC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000528B4()
{
  v1 = v0[26];
  v2 = [objc_opt_self() sharedManager];
  v0[27] = v2;
  v0[28] = v1[6];
  v0[29] = v1[7];
  v3 = String._bridgeToObjectiveC()();
  v0[30] = v3;
  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008F580;
  v5 = v1[8];
  v0[31] = v5;
  v6 = v1[9];
  v0[32] = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[33] = isa;

  v0[2] = v0;
  v0[3] = sub_100052A88;
  v8 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F80, &unk_100092508);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000527E8;
  v0[13] = &unk_1000B0AF8;
  v0[14] = v8;
  [v2 unsubscribe:v3 subscriptionNames:isa queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100052A88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_100052DAC;
  }

  else
  {
    v3 = sub_100052B98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052B98()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);

  v21 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(62);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x8000000100097660;
  String.append(_:)(v8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  _StringGuts.grow(_:)(51);
  v11._countAndFlagsBits = 0x7465537465737361;
  v11._object = 0xED00003D656D614ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v9;
  v12._object = v10;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x726373627573202CLL;
  v13._object = 0xED00003D72656269;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v6;
  v14._object = v5;
  String.append(_:)(v14);
  v15._object = 0x80000001000973A0;
  v15._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v4;
  v16._object = v2;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 2099281184;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  sub_10005E11C(v21, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 76);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100052DAC()
{
  v1 = v0[33];
  v2 = v0[32];
  v41 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v42 = v0[34];
  swift_willThrow();

  v43 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(75);
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100097630;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[20];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100097570;
  String.append(_:)(v13);
  v14 = *(v7 + 16);
  v15 = *(v7 + 24);
  _StringGuts.grow(_:)(51);
  v16._countAndFlagsBits = 0x7465537465737361;
  v16._object = 0xED00003D656D614ELL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v14;
  v17._object = v15;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x726373627573202CLL;
  v18._object = 0xED00003D72656269;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v6;
  v19._object = v4;
  String.append(_:)(v19);
  v20._object = 0x80000001000973A0;
  v20._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v41;
  v21._object = v2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 2099281184;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  sub_10005E11C(v43, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 78);

  _StringGuts.grow(_:)(75);
  v24._countAndFlagsBits = 0xD00000000000002CLL;
  v24._object = 0x8000000100097630;
  String.append(_:)(v24);
  swift_getErrorValue();
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[23];
  v28._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000017;
  v29._object = 0x8000000100097570;
  String.append(_:)(v29);
  _StringGuts.grow(_:)(51);
  v30._countAndFlagsBits = 0x7465537465737361;
  v30._object = 0xED00003D656D614ELL;
  String.append(_:)(v30);
  v31._object = v15;
  v31._countAndFlagsBits = v14;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x726373627573202CLL;
  v32._object = 0xED00003D72656269;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v6;
  v33._object = v4;
  String.append(_:)(v33);
  v34._object = 0x80000001000973A0;
  v34._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v34);
  v35._countAndFlagsBits = v41;
  v35._object = v2;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 2099281184;
  v37._object = 0xE400000000000000;
  String.append(_:)(v37);
  sub_10000B6B0();
  swift_allocError();
  *v38 = 0;
  *(v38 + 8) = 0xE000000000000000;
  *(v38 + 16) = 7;
  swift_willThrow();

  v39 = v0[1];

  return v39();
}

uint64_t sub_1000531CC(uint64_t a1, void *a2)
{
  v3 = sub_1000111EC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100053230()
{
  v1 = v0;
  _StringGuts.grow(_:)(40);

  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x447465737361202CLL;
  v2._object = 0xEF3D4C5255617461;
  String.append(_:)(v2);
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v4 = v0 + *(v3 + 20);
  v5._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6F6973726576202CLL;
  v6._object = 0xEA00000000003D6ELL;
  String.append(_:)(v6);
  String.append(_:)(*(v1 + *(v3 + 24)));
  v7._countAndFlagsBits = 32032;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return 0x3D656D616E207BLL;
}

uint64_t sub_100053340()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 0x7465537465737361;
  v1._object = 0xED00003D656D614ELL;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x726373627573202CLL;
  v2._object = 0xED00003D72656269;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  v3._object = 0x80000001000973A0;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  String.append(_:)(v0[3]);
  return 0;
}

uint64_t sub_100053420()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  v3 = *(v0 + 7);
  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100053518()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000535C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100053688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005374C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1000537C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000537DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005389C(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7F68, &qword_100092500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100053904()
{
  result = qword_1000B7F78;
  if (!qword_1000B7F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7F78);
  }

  return result;
}

uint64_t sub_100053960()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = SecKeyCopyPublicKey(v0);
  if (!v7)
  {
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    sub_100003448(v1, qword_1000B9358);
    v22 = static os_log_type_t.error.getter();
    sub_10005E11C(v22, 0xD00000000000001ALL, 0x8000000100097860, 0xD000000000000057, 0x80000001000976E0, 155);
    return 0;
  }

  v8 = v7;
  error = 0;
  v9 = SecKeyCopyExternalRepresentation(v7, &error);
  if (!v9)
  {
LABEL_14:
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    sub_100003448(v1, qword_1000B9358);
    v23 = static os_log_type_t.error.getter();
    sub_10005E11C(v23, 0xD000000000000035, 0x8000000100097880, 0xD000000000000057, 0x80000001000976E0, 167);
    v24 = error;
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    return 0;
  }

  v10 = v9;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_14;
  }

  v30 = xmmword_100092520;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v11 = *(&v30 + 1);
  if (*(&v30 + 1) >> 60 == 15)
  {
    goto LABEL_14;
  }

  v12 = v30;
  if (error)
  {
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    v13 = sub_100003448(v1, qword_1000B9358);
    (*(v2 + 16))(v6, v13, v1);
    v14 = static os_log_type_t.error.getter();
    v15 = 0xE000000000000000;
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v16._countAndFlagsBits = 0xD00000000000003ELL;
    v16._object = 0x80000001000978C0;
    String.append(_:)(v16);
    if (error)
    {
      v17 = error;
      v29[0] = v12;
      v29[1] = v17;
      v18 = v14;
      v19 = v17;
      type metadata accessor for CFError(0);
      sub_1000549A4();
      v20 = Error.localizedDescription.getter();
      v15 = v21;

      v14 = v18;
      v12 = v29[0];
    }

    else
    {
      v20 = 0;
    }

    v27._countAndFlagsBits = v20;
    v27._object = v15;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 32032;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    sub_10005E11C(v14, v30, *(&v30 + 1), 0xD000000000000057, 0x80000001000976E0, 172);
    sub_100005A14(v12, v11);

    (*(v2 + 8))(v6, v1);
    v24 = error;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_100005A14(v12, v11);
  if (error)
  {
  }

  return countAndFlagsBits;
}

uint64_t sub_100053DA8()
{
  v0 = type metadata accessor for Logger();
  sub_100026F20(v0, qword_1000B7F88);
  v1 = sub_100003448(v0, qword_1000B7F88);
  if (qword_1000B6680 != -1)
  {
    swift_once();
  }

  v2 = sub_100003448(v0, qword_1000B9358);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000543EC(uint64_t a1, unint64_t a2, __SecKey *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
LABEL_15:
      if (qword_1000B6660 != -1)
      {
        swift_once();
      }

      v21 = 0x2064696C61766E49;
      v22 = type metadata accessor for Logger();
      sub_100003448(v22, qword_1000B7F88);
      v23 = static os_log_type_t.debug.getter();
      sub_10005E11C(v23, 0xD000000000000023, 0x80000001000977B0, 0xD000000000000057, 0x80000001000976E0, 60);
      return v21;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_100053E70(a3) & 1) == 0)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v21 = 0x2064696C61766E49;
    v24 = type metadata accessor for Logger();
    sub_100003448(v24, qword_1000B7F88);
    v25 = static os_log_type_t.debug.getter();
    v26 = 0xD000000000000030;
    v27 = 0x80000001000976A0;
    v28 = 65;
    goto LABEL_24;
  }

  if (!SecKeyIsAlgorithmSupported(a3, kSecKeyOperationTypeSign, kSecKeyAlgorithmECDSASignatureMessageX962SHA256))
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v21 = 0x2064696C61766E49;
    v29 = type metadata accessor for Logger();
    sub_100003448(v29, qword_1000B7F88);
    v25 = static os_log_type_t.debug.getter();
    v26 = 0xD00000000000002ALL;
    v27 = 0x8000000100097780;
    v28 = 70;
LABEL_24:
    sub_10005E11C(v25, v26, v27, 0xD000000000000057, 0x80000001000976E0, v28);
    return v21;
  }

  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = SecKeyCreateSignature(a3, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, &error);

  if (!v6)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003448(v30, qword_1000B7F88);
    v31 = static os_log_type_t.error.getter();
    v21 = 0xD000000000000014;
    sub_10005E11C(v31, 0xD000000000000014, 0x8000000100097740, 0xD000000000000057, 0x80000001000976E0, 82);
    goto LABEL_28;
  }

  v7 = error;
  if (error)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003448(v8, qword_1000B7F88);
    v9 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(33);

    v10 = v7;
    type metadata accessor for CFError(0);
    sub_1000549A4();
    v11 = Error.localizedDescription.getter();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    sub_10005E11C(v9, 0xD00000000000001DLL, 0x8000000100097760, 0xD000000000000057, 0x80000001000976E0, 87);

    _StringGuts.grow(_:)(33);

    v34 = v10;
    v16 = Error.localizedDescription.getter();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32032;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);

    v21 = 0xD00000000000001DLL;
LABEL_28:
    if (error)
    {
    }

    return v21;
  }

  v32 = v6;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (error)
  {
  }

  return v21;
}

unint64_t sub_1000549A4()
{
  result = qword_1000B7FA0;
  if (!qword_1000B7FA0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7FA0);
  }

  return result;
}

uint64_t sub_1000549FC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100054AB0()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v4, v5);
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054BD8()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v4, v5);
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  sub_100002074(&qword_1000B80D8, &qword_1000925D0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054D28()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v4, v5);
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_100054E54(void *a1)
{
  if (a1)
  {
    v1 = qword_1000B6658;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      goto LABEL_21;
    }

    v3 = qword_1000B7C78;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 valueForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100011DEC(&v22, v23);
    }

    else
    {

      memset(v23, 0, sizeof(v23));
    }

    sub_100002074(&qword_1000B7748, &unk_1000912F8);
    sub_100002074(&qword_1000B80D8, &qword_1000925D0);
    if (!swift_dynamicCast())
    {
      goto LABEL_21;
    }

    v7 = v22;
    if (!v22)
    {
      goto LABEL_21;
    }

    v24 = v22;
    v8 = [v2 zoneName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*(v7 + 16))
    {
      sub_100057F68(v9, v11);
      v13 = v12;

      if (v13)
      {
        v14 = [v2 zoneName];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        sub_10005613C(v15, v17, v23);

        sub_100005A14(*&v23[0], *(&v23[0] + 1));
        *&v23[0] = v24;
        v18 = v3;

        v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v20 = String._bridgeToObjectiveC()();
        [v18 setValue:v19 forKey:v20];

        swift_unknownObjectRelease();
LABEL_21:

        return;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v6 = qword_1000B7C78;
    v21 = String._bridgeToObjectiveC()();
    [v6 setValue:0 forKey:v21];
  }
}

id sub_100055194(void *a1)
{
  if (qword_1000B6658 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (qword_1000B7C78)
  {
    v1 = a1;
    v2 = qword_1000B7C78;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 valueForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100011DEC(&v21, v22);
    }

    else
    {

      memset(v22, 0, sizeof(v22));
    }

    sub_100002074(&qword_1000B7748, &unk_1000912F8);
    sub_100002074(&qword_1000B80D8, &qword_1000925D0);
    if (swift_dynamicCast())
    {
      v5 = v21;
      if (v21)
      {
        v6 = [v1 zoneName];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        if (*(v5 + 16))
        {
          v10 = sub_100057F68(v7, v9);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v5 + 56) + 16 * v10);
            v14 = *v13;
            v15 = v13[1];
            sub_100005A7C(*v13, v15);

            v16 = objc_allocWithZone(CKServerChangeToken);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v18 = [v16 initWithData:isa];

            sub_100005A28(v14, v15);
            return v18;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000553C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE3E8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055414(char a1)
{
  if (a1)
  {
    return 0x636E657265666E69;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_100055454(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_100054BD8())
  {
    v6 = [a1 zoneName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100005A7C(a2, a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B39C(a2, a3, v7, v9, isUniquelyReferenced_nonNull_native);

    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v11 = qword_1000B7C78;

      sub_100002074(&qword_1000B80D8, &qword_1000925D0);
      v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v13 = String._bridgeToObjectiveC()();
      [v11 setValue:v12 forKey:v13];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_100002074(&qword_1000B80E0, &qword_1000925D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F580;
    v16 = [a1 zoneName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(inited + 32) = v17;
    *(inited + 40) = v19;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    sub_100005A7C(a2, a3);
    sub_10001185C(inited);
    swift_setDeallocating();
    sub_1000563E8(inited + 32);
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v20 = qword_1000B7C78;

      sub_100002074(&qword_1000B80D8, &qword_1000925D0);
      v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v22 = String._bridgeToObjectiveC()();
      [v20 setValue:v21 forKey:v22];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100055760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000557D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100055840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000558B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100055920@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000553C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100055950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100055414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100055DDC()
{
  sub_1000564B4(v0 + qword_1000B7FA8);
  v1 = qword_1000B7FC0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100055E54()
{
  sub_100055DDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100055ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100055F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ChangeTokenCache()
{
  result = qword_1000B80A0;
  if (!qword_1000B80A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056014()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100056080@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100057F68(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059AD4();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_10005A7BC(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_10008F650;
  }

  return result;
}

double sub_10005613C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100057F68(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059C88();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_10005A978(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_100092520;
  }

  return result;
}

double sub_1000561EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100057F68(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059F78();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100011DEC((*(v12 + 56) + 32 * v9), a3);
    sub_10005ACD8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100056290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100057F68(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005A278();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for SignpostsManager.SignpostState(0);
    v22 = *(v15 - 8);
    sub_100056450(v14 + *(v22 + 72) * v9, a3);
    sub_10005AE88(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SignpostsManager.SignpostState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000563E8(uint64_t a1)
{
  v2 = sub_100002074(qword_1000B80E8, &qword_1000925E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000564B4(uint64_t a1)
{
  v2 = type metadata accessor for ChangeTokenCache();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056510()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100056558(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005656C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000565B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100056618()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100056654(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100056668(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000566B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_10000BC10(a1, &qword_1000B6A28, &qword_10008F6D8);
    sub_100056080(a2, a3, v11);

    return sub_10000BC10(v11, &qword_1000B6A28, &qword_10008F6D8);
  }

  else
  {
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v12 = *(a1 + 32);
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_10005B20C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_100056828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10005B524(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100057F68(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100059E0C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10005AB28(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100056920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100011DEC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10005B69C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000BC10(a1, &qword_1000B7748, &unk_1000912F8);
    sub_1000561EC(a2, a3, v10);

    return sub_10000BC10(v10, &qword_1000B7748, &unk_1000912F8);
  }

  return result;
}

uint64_t sub_1000569F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SignpostsManager.SignpostState(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_10000BC10(a1, &qword_1000B7A70, &unk_100092860);
    sub_100056290(a2, a3, v11);

    return sub_10000BC10(v11, &qword_1000B7A70, &unk_100092860);
  }

  else
  {
    sub_100056450(a1, v16);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_10005B938(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

unint64_t sub_100056BB0(char a1)
{
  result = 1869768058;
  switch(a1)
  {
    case 1:
      result = 0x6E65546F54656E6FLL;
      break;
    case 2:
      result = 0x6F546E6576656C65;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100056D70(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 1869768058;
    v6 = 0x6F77546F54656E6FLL;
    v7 = 0x7669466F546F7774;
    if (a1 != 3)
    {
      v7 = 0x65546F5465766966;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6E4F6F546F72657ALL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    if (a1 != 9)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v1 = 0xD00000000000001ELL;
    }

    v2 = 0x6968546F546E6574;
    v3 = 0xD000000000000017;
    if (a1 == 6)
    {
      v3 = 0x6F54797472696874;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

Class sub_1000574B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000BCB8(0, &qword_1000B7A28, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_10005794C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  TrustKitTKModelMessages.signatureId.setter();
  v5 = a2[2];
  v6 = a2[3];

  TrustKitTKModelMessages.uafVersion.setter();
  v7 = a2[4];
  v8 = a2[5];

  TrustKitTKModelMessages.recordZone.setter();
  v9 = a2[6];

  TrustKitTKModelMessages.triggeredRules.setter();
  v10 = a2[7];

  TrustKitTKModelMessages.nemesisErrors.setter();
  v11 = a2[8];

  TrustKitTKModelMessages.filteringTriggeredRules.setter();
  v12 = a2[9];

  TrustKitTKModelMessages.filteringNemesisErrors.setter();
  v13 = a2[10];
  v14 = a2[11];

  return TrustKitTKModelMessages.locale.setter();
}

Swift::Int sub_100057A1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100057AD4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100057B78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100057C2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005C330(*a1);
  *a2 = result;
  return result;
}

void sub_100057C5C(unint64_t *a1@<X8>)
{
  v2 = "it.inference.signature_analysis";
  v3 = 0xD000000000000028;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "it.inference.logic_graph";
  }

  v4 = 0xD00000000000002FLL;
  if (*v1)
  {
    v5 = "it.inference.sender_look_up";
  }

  else
  {
    v4 = 0xD00000000000002BLL;
    v5 = "";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_100057CD4()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsManager()
{
  result = qword_1000B82A8;
  if (!qword_1000B82A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057DD4()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100057E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100057F68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100058144(a1, a2, v6);
}

unint64_t sub_100057FE0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000581FC(a1, v4);
}

unint64_t sub_100058024(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000582C4(a1, v4);
}

unint64_t sub_100058068(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100058398(a1, v4);
}

unint64_t sub_1000580B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100058404(a1, v4);
}

unint64_t sub_100058144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000581FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005C1BC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000BA20(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000582C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100058398(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100058404(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100058508(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_10000B704(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000587D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B6CE8, &qword_100092840);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_100005A7C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100058A94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B6CE0, &unk_10008F960);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100058D38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100011DEC(v25, v37);
      }

      else
      {
        sub_100005BBC(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100011DEC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100058FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B8370, &qword_100092870);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100059264(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SignpostsManager.SignpostState(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100002074(&qword_1000B8360, &qword_100092858);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_100056450(v32, v46);
      }

      else
      {
        sub_10005C080(v32, v46);
      }

      v33 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_100056450(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1000595A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B8358, &qword_100092848);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *(v23 + 8);
      v42 = *v23;
      v25 = *(v23 + 16);
      v41 = *(v23 + 24);
      v26 = *(v23 + 32);
      if ((v40 & 1) == 0)
      {
        v27 = v26;
        v28 = v22;
        v29 = v42;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v42;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v41;
      *(v17 + 32) = v26;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005986C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002074(&qword_1000B7A38, &qword_100092850);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_100059AD4()
{
  v1 = v0;
  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_10000B704(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100059C88()
{
  v1 = v0;
  sub_100002074(&qword_1000B6CE8, &qword_100092840);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100005A7C(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100059E0C()
{
  v1 = v0;
  sub_100002074(&qword_1000B6CE0, &unk_10008F960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100059F78()
{
  v1 = v0;
  sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100005BBC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011DEC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10005A11C()
{
  v1 = v0;
  sub_100002074(&qword_1000B8370, &qword_100092870);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005A278()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002074(&qword_1000B8360, &qword_100092858);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_10005C080(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_100056450(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10005A4A8()
{
  sub_100002074(&qword_1000B8358, &qword_100092848);
  v28 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = *(v1 + 56) + 40 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v3 + 48) + 8 * v16) = v17;
        v24 = *(v3 + 56) + 40 * v16;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        v25 = v23;
        v26 = v17;
        v27 = v19;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v3;
  }

  return result;
}

id sub_10005A65C()
{
  v1 = v0;
  sub_100002074(&qword_1000B7A38, &qword_100092850);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005A7BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005A978(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005AB28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005ACD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10005AE88(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10005B074(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_10005B20C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100058508(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100057F68(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100059AD4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_10000B7B4(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100057F68(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000587D8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100057F68(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100059C88();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_100005A28(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t sub_10005B524(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100058A94(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100057F68(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100059E0C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_10005B69C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100059F78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100058D38(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100057F68(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100003558(v23);

    return sub_100011DEC(a1, v23);
  }

  else
  {
    sub_10005BAF8(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_10005B7EC(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100058068(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100058FF0(v14, a3 & 1);
      v18 = *v4;
      result = sub_100058068(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10005A11C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_10005B938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10005A278();
      goto LABEL_7;
    }

    sub_100059264(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_100057F68(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72) * v12;

    return sub_10005C0E4(a1, v20);
  }

LABEL_13:
  sub_10005BB64(v12, a2, a3, a1, v18);
}

unint64_t sub_10005BA9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10005BAF8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011DEC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10005BB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  result = sub_100056450(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10005BBFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10005BC54(uint64_t result)
{
  if (result)
  {
    if ((result - 11) > 0xFFFFFFFFFFFFFFF5)
    {
      return 1;
    }

    else if ((result - 51) > 0xFFFFFFFFFFFFFFD7)
    {
      return 2;
    }

    else if ((result - 101) > 0xFFFFFFFFFFFFFFCDLL)
    {
      return 3;
    }

    else if ((result - 201) > 0xFFFFFFFFFFFFFF9BLL)
    {
      return 4;
    }

    else if ((result - 501) > 0xFFFFFFFFFFFFFED3)
    {
      return 5;
    }

    else if ((result - 1001) > 0xFFFFFFFFFFFFFE0BLL)
    {
      return 6;
    }

    else if ((result - 2001) > 0xFFFFFFFFFFFFFC17)
    {
      return 7;
    }

    else if ((result - 5001) > 0xFFFFFFFFFFFFF447)
    {
      return 8;
    }

    else if ((result - 10001) > 0xFFFFFFFFFFFFEC77)
    {
      return 9;
    }

    else if ((result - 20001) > 0xFFFFFFFFFFFFD8EFLL)
    {
      return 10;
    }

    else if ((result - 50001) >= 0xFFFFFFFFFFFF8AD0)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_10005BD48()
{
  if (static Duration.== infix(_:_:)())
  {
    return 0;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 2;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 3;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 4;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 5;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 6;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 7;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 8;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 9;
  }

  return 10;
}

uint64_t sub_10005BFF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C030()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_10005C068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C148()
{
  result = qword_1000B8368;
  if (!qword_1000B8368)
  {
    type metadata accessor for Library.Streams.TrustKit.Decisioning.TKModelMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8368);
  }

  return result;
}

uint64_t sub_10005C218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005C2DC()
{
  result = qword_1000B8378;
  if (!qword_1000B8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8378);
  }

  return result;
}

unint64_t sub_10005C330(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE438, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005C578()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 4 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v5 + 16);
    if (v6 == v7)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v6 < v7)
    {
      v8 = *(v5 + 4 * v6 + 32);
      *(v0 + 24) = v6 + 1;
      return v4 | (v8 << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005C5F8()
{
  v0 = type metadata accessor for Logger();
  sub_100026F20(v0, qword_1000B8380);
  v1 = sub_100003448(v0, qword_1000B8380);
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003448(v0, qword_1000B93E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10005C6C0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

char *sub_10005C778()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v137 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Date();
  v7 = *(v136 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v136, v9);
  v135 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() fileHandleForReadingAtPath:v11];

  if (!v12)
  {
    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003448(v21, qword_1000B8380);
    v22 = static os_log_type_t.error.getter();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v142 = 0xD00000000000002ALL;
    v143 = 0x8000000100097ED0;
    v23._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 32032;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_10005E11C(v22, v142, v143, 0xD000000000000062, 0x8000000100097DF0, 100);

    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v142 = 0xD00000000000002ALL;
    v143 = 0x8000000100097ED0;
    v25._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 32032;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v27 = v142;
    v28 = v143;
    sub_10000B6B0();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    swift_willThrow();
    return v138;
  }

  v130 = v2;
  v13 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v142 = 0;
  v15 = [v13 attributesOfItemAtPath:v14 error:&v142];

  v16 = v142;
  if (!v15)
  {
    v31 = v142;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003448(v32, qword_1000B8380);
    v33 = static os_log_type_t.error.getter();
    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v142 = 0xD000000000000029;
    v143 = 0x8000000100097F00;
    swift_getErrorValue();
    v34._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 32032;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    sub_10005E11C(v33, v142, v143, 0xD000000000000062, 0x8000000100097DF0, 108);

    v142 = 0;
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v142 = 0xD000000000000029;
    v143 = 0x8000000100097F00;
    swift_getErrorValue();
    v36._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = v142;
    v39 = v143;
    sub_10000B6B0();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 12;
    swift_willThrow();

    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_10005E010();
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v16;

  if (!*(v17 + 16) || (v19 = sub_1000580B0(NSFileSize), (v20 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_100005BBC(*(v17 + 56) + 32 * v19, &v142);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_10000B6B0();
    swift_allocError();
    *v30 = 0xD00000000000001ELL;
    *(v30 + 8) = 0x8000000100097F30;
    *(v30 + 16) = 2;
    swift_willThrow();
LABEL_18:

    return v138;
  }

  if (v141 < -135)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  if ((v141 + 135) < 0x10F)
  {
    v138 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v42 = 0;
  v43 = v141 / 136;
  v127 = 0x8000000100097F50;
  v133 = "nd signature from list. { name=";
  v115 = (v3 + 8);
  v114 = (v7 + 8);
  v117 = "ignature data. { error=";
  v116 = 0xD00000000000001ELL;
  v111 = xmmword_100092990;
  v138 = _swiftEmptyArrayStorage;
  v113 = v12;
  v112 = v141 / 136;
  while (1)
  {
    v48 = NSFileHandle.read(upToCount:)();
    if (v1)
    {
      if (qword_1000B6668 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003448(v44, qword_1000B8380);
      v45 = static os_log_type_t.error.getter();
      v142 = 0;
      v143 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v142 = 0xD000000000000027;
      v143 = v127;
      swift_getErrorValue();
      v46._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 32032;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      sub_10005E11C(v45, v142, v143, 0xD000000000000062, (v133 | 0x8000000000000000), 131);

      v1 = 0;
      goto LABEL_24;
    }

    if (v49 >> 60 != 15)
    {
      break;
    }

    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003448(v50, qword_1000B8380);
    v51 = static os_log_type_t.error.getter();
    sub_10005E11C(v51, v116, v117 | 0x8000000000000000, 0xD000000000000062, (v133 | 0x8000000000000000), 125);
LABEL_24:
    if (v43 == ++v42)
    {
      goto LABEL_18;
    }
  }

  if (v42 > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v52 = v49;
  v53 = v48;
  __src = v42;
  v129 = sub_10005C6C0(&__src, &v140);
  v55 = v54;
  v56 = Data.subdata(in:)();
  v128 = v57;
  v126 = Data.subdata(in:)();
  v132 = v58;
  v125 = v53;
  v118 = v52;
  v134 = Data.subdata(in:)();
  v131 = v59;
  v60 = v135;
  Date.init()();
  v61 = [objc_allocWithZone(NSDateFormatter) init];
  v62 = v137;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v64 = v55;
  (*v115)(v62, v130);
  [v61 setLocale:isa];

  [v61 setDateStyle:4];
  [v61 setTimeStyle:4];
  v65 = Date._bridgeToObjectiveC()().super.isa;
  v66 = [v61 stringFromDate:v65];

  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v67;

  v68 = v129;
  (*v114)(v60, v136);
  sub_100005A7C(v68, v64 & 0xFFFFFFFFFFFFFFLL);
  sub_100005A7C(v56, v128);
  v69 = v132;
  sub_100005A7C(v126, v132);
  sub_100005A7C(v134, v131);
  v70 = v64;
  v71 = Data.base64EncodedString(options:)(0);
  v72 = v56;
  v73 = Data.base64EncodedString(options:)(0);
  v74 = v69 >> 62;
  countAndFlagsBits = v71._countAndFlagsBits;
  object = v71._object;
  v120 = v73._countAndFlagsBits;
  v119 = v73._object;
  if ((v69 >> 62) > 1)
  {
    v75 = 0;
    v76 = v126;
    v77 = v70;
    if (v74 != 2)
    {
      goto LABEL_38;
    }

    v79 = v126[2];
    v78 = v126[3];
    v75 = v78 - v79;
    v80 = v132;
    if (__OFSUB__(v78, v79))
    {
      goto LABEL_74;
    }
  }

  else
  {
    if (!v74)
    {
      v75 = BYTE6(v132);
      v76 = v126;
      v77 = v70;
LABEL_38:
      v81 = v75 >> 2;
      v80 = v132;
      v82 = v72;
      goto LABEL_45;
    }

    v76 = v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
      goto LABEL_75;
    }

    v77 = v70;
    v75 = HIDWORD(v126) - v126;
    v80 = v132;
  }

  v82 = v72;
  v83 = v75 + 3;
  if (v75 >= 0)
  {
    v83 = v75;
  }

  if (v75 < -3)
  {
    goto LABEL_71;
  }

  v81 = v83 >> 2;
LABEL_45:
  sub_100005A7C(v76, v80);
  v84 = _swiftEmptyArrayStorage;
  if (v75 >= 4)
  {
    v84 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v84[2] = v81;
  }

  v126 = v84;
  v141 = 0;
  v142 = v84 + 4;
  v143 = v81;
  v85 = v132;
  sub_10002F8A4(&v142, &v141, v76, v132);
  if (v81 < v141)
  {
    goto LABEL_72;
  }

  v126[2] = v141;
  sub_100005A28(v76, v85);
  v86 = v131;
  v87 = v131 >> 62;
  if ((v131 >> 62) > 1)
  {
    if (v87 != 2)
    {
      v88 = 0;
      goto LABEL_63;
    }

    v110 = v82;
    v89 = v77;
    v90 = *(v134 + 16);
    v91 = __DataStorage._bytes.getter();
    if (!v91)
    {
      goto LABEL_81;
    }

    v92 = v91;
    v93 = __DataStorage._offset.getter();
    if (__OFSUB__(v90, v93))
    {
      goto LABEL_77;
    }

    v94 = (v90 - v93 + v92);
    __DataStorage._length.getter();
    if (!v94)
    {
      goto LABEL_82;
    }

    v88 = *v94;
    v77 = v89;
    v82 = v110;
    v85 = v132;
    goto LABEL_61;
  }

  if (!v87)
  {
    v88 = v134;
LABEL_63:
    sub_100005A28(v134, v86);
    sub_100005A28(v76, v85);
    sub_100005A28(v82, v128);
    sub_100005A28(v129, v77 & 0xFFFFFFFFFFFFFFLL);
    LOBYTE(v141) = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v138;
    }

    else
    {
      v101 = sub_100049A20(0, *(v138 + 2) + 1, 1, v138);
    }

    v103 = *(v101 + 2);
    v102 = *(v101 + 3);
    if (v103 >= v102 >> 1)
    {
      v138 = sub_100049A20((v102 > 1), v103 + 1, 1, v101);
    }

    else
    {
      v138 = v101;
    }

    sub_100005A14(v125, v118);
    sub_100005A28(v134, v131);
    sub_100005A28(v76, v85);
    sub_100005A28(v82, v128);
    sub_100005A28(v129, v77 & 0xFFFFFFFFFFFFFFLL);
    v104 = v138;
    *(v138 + 2) = v103 + 1;
    v105 = &v104[80 * v103];
    v106 = object;
    *(v105 + 4) = countAndFlagsBits;
    *(v105 + 5) = v106;
    v107 = v119;
    *(v105 + 6) = v120;
    *(v105 + 7) = v107;
    *(v105 + 8) = v126;
    *(v105 + 18) = v88;
    v105[76] = 0;
    LOBYTE(v107) = BYTE2(v142);
    *(v105 + 77) = v142;
    v105[79] = v107;
    *(v105 + 5) = v111;
    v108 = v123;
    *(v105 + 12) = v124;
    *(v105 + 13) = v108;
    v12 = v113;
    v43 = v112;
    goto LABEL_24;
  }

  v110 = v82;
  v109 = v77;
  v96 = v134;
  if (v134 > v134 >> 32)
  {
    goto LABEL_76;
  }

  v97 = __DataStorage._bytes.getter();
  if (v97)
  {
    v98 = v97;
    v99 = __DataStorage._offset.getter();
    if (__OFSUB__(v96, v99))
    {
      goto LABEL_78;
    }

    v100 = (v96 - v99 + v98);
    __DataStorage._length.getter();
    if (!v100)
    {
      goto LABEL_80;
    }

    v88 = *v100;
    v77 = v109;
    v82 = v110;
LABEL_61:
    v86 = v131;
    goto LABEL_63;
  }

  __DataStorage._length.getter();
LABEL_80:
  __break(1u);
LABEL_81:
  __DataStorage._length.getter();
LABEL_82:
  __break(1u);
  v126[2] = v95;

  __break(1u);
  return result;
}

uint64_t sub_10005D714(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v2 = sub_10005C578();
    if ((v3 & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      while (2)
      {
        v10 = 32;
        do
        {
          if (((1 << --v10) & (HIDWORD(v2) | v2)) != 0)
          {
            v11 = __OFADD__(v9++, 1);
            if (v11)
            {
              __break(1u);
LABEL_18:
              __break(1u);
              goto LABEL_19;
            }
          }

          if (((1 << v10) & v2 & HIDWORD(v2)) != 0)
          {
            v11 = __OFADD__(v8++, 1);
            if (v11)
            {
              goto LABEL_18;
            }
          }
        }

        while (v10);
        v2 = sub_10005C578();
        if ((v12 & 1) == 0)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (qword_1000B6668 != -1)
    {
LABEL_19:
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003448(v5, qword_1000B8380);
    v6 = static os_log_type_t.error.getter();
    sub_10005E11C(v6, 0xD000000000000025, 0x8000000100097EA0, 0xD000000000000062, 0x8000000100097DF0, 195);
    sub_10000B6B0();
    swift_allocError();
    *v7 = 0xD000000000000025;
    *(v7 + 8) = 0x8000000100097EA0;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10005D8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v51 = a1;
  v44 = a3;
  v50 = type metadata accessor for Logger();
  v5 = *(*(v50 - 8) + 64);
  result = __chkstk_darwin(v50, v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v11 = 0;
    v54 = 0;
    v53 = 0;
    v47 = (v8 + 16);
    v46 = "gnatureThreshold=";
    v48 = "nd signature from list. { name=";
    v45 = (v8 + 8);
    v12 = (a2 + 76);
    while (1)
    {
      v13 = *(v12 - 12);
      if (v13 && (*v12 & 1) == 0)
      {
        v62 = *(v12 - 44);
        v14 = *(v12 - 36);
        v71 = *(v12 - 28);
        v15 = *(v12 - 20);
        v16 = *(v12 - 1);

        sub_10005D714(v51, v13);
        if (v3)
        {
          sub_10004D630(v58, v57, v56, v55, v11);
        }

        v18 = v17;
        v60 = 0;
        v61 = v11;

        if (qword_1000B6668 != -1)
        {
          swift_once();
        }

        v52 = v16;
        v19 = *&v16;
        v20 = v50;
        v21 = sub_100003448(v50, qword_1000B8380);
        v22 = v49;
        (*v47)(v49, v21, v20);
        v23 = static os_log_type_t.debug.getter();
        v64 = 0;
        v65 = 0xE000000000000000;
        _StringGuts.grow(_:)(109);
        v24._countAndFlagsBits = 0xD00000000000004FLL;
        v24._object = (v46 | 0x8000000000000000);
        String.append(_:)(v24);
        v25._countAndFlagsBits = v62;
        v25._object = v14;
        String.append(_:)(v25);
        v26._countAndFlagsBits = 0x74616E676973202CLL;
        v26._object = 0xEE003D6449657275;
        String.append(_:)(v26);
        if (v15)
        {
          v27 = v71;
        }

        else
        {
          v27 = 7104878;
        }

        v28 = v15;
        if (!v15)
        {
          v15 = 0xE300000000000000;
        }

        v59 = v28;

        v29._countAndFlagsBits = v27;
        v29._object = v15;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 0x3D65726F6373202CLL;
        v30._object = 0xE800000000000000;
        String.append(_:)(v30);
        Float.write<A>(to:)();
        v31._countAndFlagsBits = 32032;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);
        sub_10005E11C(v23, v64, v65, 0xD000000000000062, (v48 | 0x8000000000000000), 69);

        result = (*v45)(v22, v20);
        if (v18 > v19)
        {
          sub_10004D630(v58, v57, v56, v55, v61);
          v36 = static os_log_type_t.default.getter();
          v64 = 0;
          v65 = 0xE000000000000000;
          _StringGuts.grow(_:)(72);
          v37._countAndFlagsBits = 0xD000000000000036;
          v37._object = 0x8000000100097E60;
          String.append(_:)(v37);
          Float.write<A>(to:)();
          v38._countAndFlagsBits = 0x687365726874202CLL;
          v38._object = 0xEC0000003D646C6FLL;
          String.append(_:)(v38);
          Float.write<A>(to:)();
          v39._countAndFlagsBits = 32032;
          v39._object = 0xE200000000000000;
          String.append(_:)(v39);
          sub_10005E11C(v36, v64, v65, 0xD000000000000062, (v48 | 0x8000000000000000), 72);

          LOBYTE(v64) = 0;
          v63[0] = 0;
          v58 = (LODWORD(v18) << 32) | 1;
          v57 = v52 << 32;
          v56 = 0;
          v55 = v62;
          v11 = v14;
          v54 = v71;
          v53 = v59;
          goto LABEL_22;
        }

        v11 = v61;
        if (v61)
        {
          v32 = v58;
          v33 = v57;
          v64 = v58;
          v65 = v57;
          v34 = v56;
          v35 = v55;
          v66 = v56;
          v67 = v55;
          v71 = v14;
          v68 = v61;
          v69 = v54;
          v70 = v53;
          sub_10005DFD8(&v64, v63);

          result = sub_10004D630(v32, v33, v34, v35, v11);
        }

        else
        {
          LOBYTE(v64) = 0;
          v63[0] = 0;
          v58 = LODWORD(v18) << 32;
          v57 = v52 << 32;
          v56 = 0;
          v55 = v62;
          v11 = v14;
          v54 = v71;
          v53 = v59;
        }

        v3 = v60;
      }

      v12 += 80;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }
  }

  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v11 = 0;
  v54 = 0;
  v53 = 0;
LABEL_22:
  v40 = v44;
  v41 = v57;
  *v44 = v58;
  v40[1] = v41;
  v42 = v55;
  v40[2] = v56;
  v40[3] = v42;
  v43 = v54;
  v40[4] = v11;
  v40[5] = v43;
  v40[6] = v53;
  return result;
}