void *sub_1000137CC()
{
  v1 = v0;
  sub_1000089AC(&qword_100085808, &qword_100069188);
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
        sub_100009960(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100009B90(v25, (*(v4 + 56) + v22));
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

char *sub_100013998()
{
  v1 = v0;
  v43 = type metadata accessor for RemoteHandler();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&qword_100085800, &qword_100069180);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

void *sub_100013D00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000089AC(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100013EB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = &v38 - v8;
  sub_1000089AC(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t (*sub_100014138(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v8[8] = sub_100014BDC(v8);
  v8[9] = sub_1000144C8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000141E4;
}

uint64_t (*sub_1000141E8(uint64_t *a1, uint64_t a2, uint64_t a3))()
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
  v8[8] = sub_100014BDC(v8);
  v8[9] = sub_10001465C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000157E0;
}

void sub_100014294(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000142F4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for DatastoreKey();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_100014C58(v6);
  v6[12] = sub_10001492C(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_100014430;
}

void sub_100014430(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000144C8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100010DF4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100013D00(&qword_100086090, &qword_100069740);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000127A0(v18, a4 & 1, &qword_100086090, &qword_100069740);
    v22 = *v5;
    v13 = sub_100010DF4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100014644;
}

void (*sub_10001465C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100010DF4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100013D00(&qword_1000857E8, &qword_100069178);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000127A0(v18, a4 & 1, &qword_1000857E8, &qword_100069178);
    v22 = *v5;
    v13 = sub_100010DF4(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100014644;
}

void sub_1000147D8(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  LOBYTE(v5) = *(*a1 + 40);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v3[4];
    v7 = *v3[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v9 = v3[1];
    v8 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = (v7[6] + 16 * v6);
    *v10 = v9;
    v10[1] = v8;
    *(v7[7] + 8 * v6) = v4;
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v20 = v3[2];
      v7[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v13 = v3[4];
      v14 = *v3[3];
      sub_100014C04(*(v14 + 48) + 16 * v13);
      a3(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = v3[4];
  v7 = *v3[3];
  if ((v5 & 1) == 0)
  {
    v17 = v3[1];
    v16 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v18 = (v7[6] + 16 * v6);
    *v18 = v17;
    v18[1] = v16;
    *(v7[7] + 8 * v6) = v4;
    v19 = v7[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v7[7] + 8 * v6) = v4;
LABEL_14:
  v21 = *v3;

  free(v3);
}

void (*sub_10001492C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for DatastoreKey();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100010FDC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10001354C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100011C28(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_100010FDC(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_100014ADC;
}

void sub_100014ADC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_100012EC4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_10004B660(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_100014BDC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000157D4;
}

uint64_t (*sub_100014C58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100014C80;
}

uint64_t sub_100014C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014CFC(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100014D64(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_10001550C(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_1000152D4(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100009A28();
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000152D4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10001550C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_10001550C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100015730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000157E4()
{
  sub_1000089AC(&qword_1000859A8, &qword_100069270);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 448;
  v1 = NSFilePosixPermissions;
  v2 = sub_10004F318(inited);
  swift_setDeallocating();
  result = sub_100009C94(inited + 32, &unk_1000859B0, &qword_100069278);
  qword_100085820 = v2;
  return result;
}

SEL *sub_10001589C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v136 = a3;
  v142 = a1;
  v143 = a2;
  v129 = type metadata accessor for URLResourceValues();
  v128 = *(v129 - 8);
  v4 = *(v128 + 64);
  v5 = __chkstk_darwin(v129);
  v130 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v131 = &v127 - v7;
  v8 = type metadata accessor for URL.DirectoryHint();
  v146 = *(v8 - 8);
  v9 = v146;
  v10 = *(v146 + 8);
  __chkstk_darwin(v8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v127 - v15);
  v144 = type metadata accessor for URL();
  v17 = *(v144 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v144);
  v139 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v127 - v22;
  __chkstk_darwin(v21);
  v25 = &v127 - v24;
  *(v3 + 72) = &_swiftEmptySetSingleton;
  v26 = v17[7];
  v138 = (v17 + 7);
  *&v145 = v26;
  v134 = v16;
  v26(v16, 1, 1);
  v27 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v28 = *(v9 + 13);
  LODWORD(v133) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v28(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  v132 = v28;

  URL.init(filePath:directoryHint:relativeTo:)();
  v148 = 0xD000000000000021;
  v149 = 0x8000000100072D00;
  v28(v12, v27, v8);
  v137 = sub_100027A04();
  URL.appending<A>(path:directoryHint:)();
  v29 = *(v146 + 1);
  v146 += 8;
  v135 = v29;
  v29(v12, v8);
  v30 = v17[1];
  v31 = v144;
  v30(v23, v144);
  v141 = v17 + 1;
  v32 = URL.path(percentEncoded:)(0);
  v30(v25, v31);
  *(v140 + 3) = v32;
  (v145)(v134, 1, 1, v31);
  v33 = v133;
  v34 = v132;
  v132(v12, v133, v8);

  URL.init(filePath:directoryHint:relativeTo:)();
  v148 = 0xD00000000000001FLL;
  v149 = 0x8000000100072D30;
  v34(v12, v33, v8);
  URL.appending<A>(path:directoryHint:)();
  v135(v12, v8);
  v35 = v144;
  v30(v23, v144);
  v36 = URL.path(percentEncoded:)(0);
  v135 = v25;
  v37 = v140;
  v138 = v30;
  v30(v25, v35);
  v38 = v136;
  *(v37 + 5) = v36;
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v37[7] = v39;
  v40 = _swiftEmptyArrayStorage;
  v37[8] = sub_10004F12C(_swiftEmptyArrayStorage);
  v41 = &OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_;
  v42 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v43 = [v42 Ledger];
  swift_unknownObjectRelease();
  v44 = [v43 TaskStatus];
  swift_unknownObjectRelease();
  v37[10] = v44;
  v45 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v46 = [v45 Ledger];
  swift_unknownObjectRelease();
  v47 = [v46 TaskError];
  swift_unknownObjectRelease();
  v37[11] = v47;
  v49 = v38[2];
  v50 = &OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_;
  if (!v49)
  {
    v137 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v51 = 0;
  v52 = v38 + 5;
  v137 = _swiftEmptyArrayStorage;
  v133 = v49 - 1;
  *&v48 = 136315138;
  v145 = v48;
  v146 = v49;
  v134 = v38 + 5;
  do
  {
    v37 = &v52[2 * v51];
    v53 = v51;
    while (1)
    {
      if (v53 >= v38[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v54 = *(v37 - 1);
      v55 = *v37;
      v147 = 1;
      v56 = objc_opt_self();

      v40 = v50;
      v57 = [v56 v50[389]];
      v41 = String._bridgeToObjectiveC()();
      v58 = [v57 fileExistsAtPath:v41 isDirectory:&v147];

      if (!v58)
      {
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000098DC(v59, qword_100087610);

        v60 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v41))
        {
          v61 = swift_slowAlloc();
          v62 = v38;
          v63 = swift_slowAlloc();
          v150 = v63;
          *v61 = v145;
          *(v61 + 4) = sub_100008A0C(v54, v55, &v150);
          _os_log_impl(&_mh_execute_header, v60, v41, "Skipping staticTask folder %s because doesn't exist.", v61, 0xCu);
          sub_100009914(v63);
          v38 = v62;
        }

        goto LABEL_5;
      }

      if (v147)
      {
        break;
      }

LABEL_5:
      v50 = v40;
      ++v53;
      v37 += 2;
      if (v146 == v53)
      {
        v37 = v140;
        goto LABEL_22;
      }
    }

    v64 = v137;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000249C4(0, v64[2] + 1, 1);
      v64 = v148;
    }

    v37 = v140;
    v67 = v64[2];
    v66 = v64[3];
    v41 = (v67 + 1);
    if (v67 >= v66 >> 1)
    {
      sub_1000249C4((v66 > 1), v67 + 1, 1);
      v64 = v148;
    }

    v51 = v53 + 1;
    v64[2] = v41;
    v137 = v64;
    v68 = &v64[2 * v67];
    v68[4] = v54;
    v68[5] = v55;
    v50 = v40;
    v52 = v134;
  }

  while (v133 != v53);
LABEL_22:

  v37[2] = v137;
  v69 = v135;
  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v138(v69, v144);
  v41 = objc_opt_self();
  v38 = v50;
  v50 = [v41 v50[389]];
  URL._bridgeToObjectiveC()(v70);
  v40 = v71;
  if (qword_1000850B0 != -1)
  {
LABEL_51:
    swift_once();
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100027AC8(&qword_1000851F8, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v148 = 0;
  v73 = [(SEL *)v50 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:isa error:&v148];

  v74 = v148;
  if ((v73 & 1) == 0)
  {
    goto LABEL_27;
  }

  v75 = v148;
  v76 = [v41 v38[389]];
  v77 = v37[3];
  v78 = v37[4];

  v79 = String._bridgeToObjectiveC()();

  v80 = Dictionary._bridgeToObjectiveC()().super.isa;
  v148 = 0;
  v81 = [v76 createDirectoryAtPath:v79 withIntermediateDirectories:1 attributes:v80 error:&v148];

  v74 = v148;
  if (v81)
  {
    v82 = v148;
    v83 = [v41 v38[389]];
    v84 = v37[5];
    v85 = v37[6];

    v86 = String._bridgeToObjectiveC()();

    v87 = Dictionary._bridgeToObjectiveC()().super.isa;
    v148 = 0;
    v88 = [v83 createDirectoryAtPath:v86 withIntermediateDirectories:1 attributes:v87 error:&v148];

    if (v88)
    {
      v89 = v148;
      v90 = v139;
      v91 = v131;
      goto LABEL_33;
    }

    v114 = v148;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
LABEL_27:
    v92 = v74;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v90 = v139;
  v91 = v131;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_1000098DC(v93, qword_100087610);
  swift_errorRetain();
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v96 = 138412290;
    swift_errorRetain();
    v98 = _swift_stdlib_bridgeErrorToNSError();
    *(v96 + 4) = v98;
    *v97 = v98;
    _os_log_impl(&_mh_execute_header, v94, v95, "Failed at creating folder: %@", v96, 0xCu);
    sub_100009C94(v97, &qword_100085970, &qword_100068F48);
  }

  else
  {
  }

LABEL_33:
  sub_1000089AC(&qword_100085A48, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v100 = NSURLIsExcludedFromBackupKey;
  sub_10004F440(inited);
  swift_setDeallocating();
  sub_100027C20(inited + 32);
  URL.resourceValues(forKeys:)();

  v101 = URLResourceValues.isExcludedFromBackup.getter();
  if (v101 == 2 || (v101 & 1) == 0)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_1000098DC(v115, qword_100087610);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v116, v117))
    {

      v125 = *(v128 + 8);
      v126 = v129;
      v125(v130, v129);
      v125(v91, v126);
      goto LABEL_40;
    }

    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v150 = v119;
    *v118 = 136315138;
    swift_beginAccess();
    sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
    v107 = v144;
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    v122 = sub_100008A0C(v120, v121, &v150);

    *(v118 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v116, v117, "Folder %s is now excluded from iCloud Backup.", v118, 0xCu);
    sub_100009914(v119);

    v123 = *(v128 + 8);
    v124 = v129;
    v123(v130, v129);
    v123(v91, v124);
LABEL_47:
    v111 = v90;
    v112 = v107;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_1000098DC(v102, qword_100087610);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v150 = v106;
      *v105 = 136315138;
      swift_beginAccess();
      sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
      v107 = v144;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = sub_100008A0C(v108, v109, &v150);

      *(v105 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v103, v104, "Folder %s is already excluded from iCloud Backup.", v105, 0xCu);
      sub_100009914(v106);

      (*(v128 + 8))(v91, v129);
      goto LABEL_47;
    }

    (*(v128 + 8))(v91, v129);
LABEL_40:
    v111 = v90;
    v112 = v144;
  }

  v138(v111, v112);
  return v37;
}

uint64_t sub_100016CA0()
{
  v1 = v0;
  v2 = *v0;
  _StringGuts.grow(_:)(49);
  v3 = _typeName(_:qualified:)();

  v14 = v3;
  v4._countAndFlagsBits = 0x203A736B73617428;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5 = v0[7];
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v1[8] + 16);
  os_unfair_lock_unlock(v5 + 4);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x636974617473202CLL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  v9 = v1[2];
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x696D616E7964202CLL;
  v11._object = 0xEB00000000203A63;
  String.append(_:)(v11);
  String.append(_:)(*(v1 + 3));
  v12._countAndFlagsBits = 0x737465737361202CLL;
  v12._object = 0xEA0000000000203ALL;
  String.append(_:)(v12);
  String.append(_:)(*(v1 + 5));
  return v14;
}

uint64_t sub_100016E50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v6 = type metadata accessor for MLHostTask();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v46 = &v41 - v11;
  result = __chkstk_darwin(v10);
  v51 = a3;
  v52 = &v41 - v14;
  v15 = 0;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v13;
  v50 = v13 + 32;
  v44 = (v13 + 8);
  v45 = v13 + 16;
  v42 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v51 + 56);
    v26 = v49;
    v43 = *(v49 + 72);
    v27 = v46;
    (*(v49 + 16))(v46, v25 + v43 * (__clz(__rbit64(v21)) | (v15 << 6)), v6);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v52;
    v31 = v29;
    v28(v52, v27);
    v32 = v47(v30);
    v4 = v24;
    if (v24)
    {
      (*v44)(v52, v31);
      v40 = v42;

      return v40;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v41, v52, v31);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249E4(0, v33[2] + 1, 1);
        v6 = v31;
        v33 = v53;
      }

      v36 = v33[2];
      v35 = v33[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v42 = v36;
        sub_1000249E4(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v42;
        v6 = v31;
        v33 = v53;
      }

      v33[2] = v37;
      v38 = *(v49 + 80);
      v42 = v33;
      result = (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v43, v41, v6);
    }

    else
    {
      v6 = v31;
      result = (*v44)(v52, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v42;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000171C0()
{
  v1 = type metadata accessor for TaskType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v48 - v6;
  v64 = type metadata accessor for MLHostTask();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v64);
  v61 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v49 = &v48 - v12;
  __chkstk_darwin(v11);
  v58 = &v48 - v13;
  v50 = *(v0 + 56);
  os_unfair_lock_lock(v50 + 4);
  swift_beginAccess();
  v14 = *(v0 + 64);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v55 = enum case for TaskType.dynamicTask(_:);
  v53 = (v2 + 8);
  v54 = (v2 + 104);
  v62 = (v7 + 8);
  v63 = v7 + 16;
  v56 = v7;
  v48 = (v7 + 32);
  v57 = v14;

  v21 = 0;
  v51 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = *(v57 + 56);
    v52 = *(v56 + 72);
    (*(v56 + 16))(v58, v24 + v52 * (v23 | (v21 << 6)), v64);
    MLHostTask.taskType.getter();
    (*v54)(v60, v55, v1);
    sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v67 == v65 && v68 == v66)
    {
      v27 = *v53;
      (*v53)(v60, v1);
      v27(v59, v1);

LABEL_13:
      v28 = *v48;
      (*v48)(v49, v58, v64);
      v29 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249E4(0, v29[2] + 1, 1);
        v29 = v69;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000249E4(v31 > 1, v32 + 1, 1);
        v29 = v69;
      }

      v29[2] = v32 + 1;
      v33 = *(v56 + 80);
      v51 = v29;
      result = (v28)(v29 + ((v33 + 32) & ~v33) + v32 * v52, v49, v64);
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26 = *v53;
      (*v53)(v60, v1);
      v26(v59, v1);

      if (v25)
      {
        goto LABEL_13;
      }

      result = (*v62)(v58, v64);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v22;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v34 = v51;
  v35 = v51[2];
  if (v35)
  {
    v67 = _swiftEmptyArrayStorage;
    sub_1000249C4(0, v35, 0);
    v36 = v67;
    v37 = v34 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v38 = *(v56 + 72);
    v39 = *(v56 + 16);
    do
    {
      v40 = v61;
      v41 = v64;
      v39(v61, v37, v64);
      v42 = MLHostTask.name.getter();
      v44 = v43;
      (*v62)(v40, v41);
      v67 = v36;
      v46 = v36[2];
      v45 = v36[3];
      if (v46 >= v45 >> 1)
      {
        sub_1000249C4((v45 > 1), v46 + 1, 1);
        v36 = v67;
      }

      v36[2] = v46 + 1;
      v47 = &v36[2 * v46];
      v47[4] = v42;
      v47[5] = v44;
      v37 += v38;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  os_unfair_lock_unlock(v50 + 4);
  return v36;
}

void *sub_1000177EC()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = String._bridgeToObjectiveC()();
  v26 = 0;
  v5 = [v1 contentsOfDirectoryAtPath:v4 error:&v26];

  v6 = v26;
  if (v5)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v7 + 40;
      v12 = _swiftEmptyArrayStorage;
      do
      {
        v13 = (v11 + 16 * v10);
        v14 = v10;
        while (1)
        {
          if (v14 >= *(v7 + 16))
          {
            __break(1u);
          }

          v16 = *(v13 - 1);
          v15 = *v13;
          v10 = v14 + 1;

          v17._countAndFlagsBits = 0x7473696C702ELL;
          v17._object = 0xE600000000000000;
          if (String.hasSuffix(_:)(v17))
          {
            break;
          }

          v13 += 2;
          ++v14;
          if (v9 == v10)
          {
            goto LABEL_17;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v12;
        v25 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000249C4(0, v12[2] + 1, 1);
          v12 = v26;
        }

        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000249C4((v19 > 1), v20 + 1, 1);
          v12 = v26;
        }

        v12[2] = v20 + 1;
        v21 = &v12[2 * v20];
        v21[4] = v16;
        v21[5] = v15;
        v11 = v25;
      }

      while (v9 - 1 != v14);
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

LABEL_17:

    v23 = sub_10004F764(v12);
  }

  else
  {
    v22 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return &_swiftEmptySetSingleton;
  }

  return v23;
}

void *sub_100017A40()
{
  v65 = type metadata accessor for URL.DirectoryHint();
  v67 = *(v65 - 8);
  v1 = *(v67 + 64);
  __chkstk_darwin(v65);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v64 = &v46 - v5;
  v68 = type metadata accessor for URL();
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v68);
  v63 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v46 - v10;
  v61 = objc_opt_self();
  v11 = [v61 defaultManager];
  v12 = *(v0 + 40);
  v59 = *(v0 + 48);
  v60 = v12;
  v13 = String._bridgeToObjectiveC()();
  v69[0] = 0;
  v14 = [v11 contentsOfDirectoryAtPath:v13 error:v69];

  v15 = v69[0];
  if (v14)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v15;

    v18 = *(v16 + 16);
    if (!v18)
    {
      v21 = &_swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    v19 = 0;
    v55 = (v6 + 56);
    v54 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v53 = (v67 + 104);
    v52 = (v67 + 8);
    v51 = (v6 + 8);
    v20 = v16 + 40;
    v47 = v18 - 1;
    v21 = &_swiftEmptyArrayStorage;
    v56 = v18;
    v57 = v16;
    v48 = v16 + 40;
    v22 = enum case for URL.DirectoryHint.inferFromPath(_:);
    while (1)
    {
      v49 = v21;
      v23 = (v20 + 16 * v19);
      v24 = v19;
      while (1)
      {
        if (v24 >= *(v16 + 16))
        {
          __break(1u);
        }

        v66 = v23;
        v67 = v24;
        v27 = *(v23 - 1);
        v26 = *v23;
        v70 = 1;
        (*v55)(v64, 1, 1, v68);
        v28 = *v53;
        v29 = v58;
        v30 = v65;
        (*v53)(v58, v22, v65);

        v31 = v63;
        v32 = v26;
        URL.init(filePath:directoryHint:relativeTo:)();
        v50 = v27;
        v69[0] = v27;
        v69[1] = v26;
        v28(v29, v22, v30);
        sub_100027A04();
        v33 = v62;
        URL.appending<A>(path:directoryHint:)();
        (*v52)(v29, v30);
        v34 = *v51;
        v35 = v68;
        (*v51)(v31, v68);
        URL.path(percentEncoded:)(0);
        v34(v33, v35);
        v36 = [v61 defaultManager];
        v37 = String._bridgeToObjectiveC()();

        LODWORD(v30) = [v36 fileExistsAtPath:v37 isDirectory:&v70];

        if (v30)
        {
          break;
        }

        v25 = v56;
LABEL_6:
        v24 = v67 + 1;
        v23 = v66 + 2;
        v16 = v57;
        if (v25 == v67 + 1)
        {
          v21 = v49;
          goto LABEL_20;
        }
      }

      v25 = v56;
      if ((v70 & 1) == 0)
      {
        break;
      }

      v21 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000249C4(0, v21[2] + 1, 1);
        v21 = v71;
      }

      v16 = v57;
      v20 = v48;
      v40 = v21[2];
      v39 = v21[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000249C4((v39 > 1), v40 + 1, 1);
        v21 = v71;
      }

      v41 = v67;
      v19 = v67 + 1;
      v21[2] = v40 + 1;
      v42 = &v21[2 * v40];
      *(v42 + 4) = v50;
      *(v42 + 5) = v32;
      if (v47 == v41)
      {
LABEL_20:

        v44 = sub_10004F764(v21);

        return v44;
      }
    }

    goto LABEL_6;
  }

  v43 = v69[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001802C()
{
  v1 = [*(v0 + 80) pruner];
  v2 = String._bridgeToObjectiveC()();
  v12 = sub_10001824C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100027C8C;
  v11 = &unk_100082A50;
  v3 = _Block_copy(&v8);

  [v1 deleteWithPolicy:v2 eventsPassingTest:v3];

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = [*(v0 + 88) pruner];
  v6 = String._bridgeToObjectiveC()();
  v12 = sub_10001824C;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100027C8C;
  v11 = &unk_100082A78;
  v7 = _Block_copy(&v8);

  [v5 deleteWithPolicy:v6 eventsPassingTest:v7];

  _Block_release(v7);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100018254(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_1000182B0(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_1000089AC(&qword_1000859D0, &qword_100069280);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(a1 + 64) = v4;
  }

  return swift_endAccess();
}

uint64_t sub_100018354(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v117[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v129 = &v117[-v12];
  v13 = type metadata accessor for URL();
  v130 = *(v13 - 8);
  v131 = v13;
  v14 = *(v130 + 64);
  v15 = __chkstk_darwin(v13);
  v124 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v125 = &v117[-v17];
  v127 = type metadata accessor for TaskType();
  v134 = *(v127 - 8);
  v18 = v134[8];
  v19 = __chkstk_darwin(v127);
  v132 = &v117[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v133 = &v117[-v21];
  v22 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v117[-v24];
  v26 = type metadata accessor for MLHostTask();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v117[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100019300(a1, a2, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_100009C94(v25, &qword_100085940, &unk_1000693D0);
LABEL_19:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000098DC(v48, qword_100087610);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v139 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100008A0C(a1, a2, &v139);
      _os_log_impl(&_mh_execute_header, v49, v50, "DynamicTask %s not found in registry.", v51, 0xCu);
      sub_100009914(v52);
    }

    return 0;
  }

  v119 = v9;
  v120 = v6;
  v121 = v5;
  v135 = a1;
  v136 = a2;
  v126 = v27;
  v31 = *(v27 + 32);
  v128 = v30;
  v123 = v26;
  v31(v30, v25, v26);
  v122 = v2;
  v32 = sub_1000177EC();
  v33 = v32;
  v34 = v32 + 56;
  v35 = 1 << v32[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v32 + 7);
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  v40 = &protocol witness table for String;
  if (!v37)
  {
LABEL_7:
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        (v126)[1](v128, v123);
        goto LABEL_18;
      }

      v37 = *&v34[8 * v41];
      ++v39;
      if (v37)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v41 = v39;
LABEL_10:
    v42 = *(v33 + 6) + ((v41 << 10) | (16 * __clz(__rbit64(v37))));
    v43 = *v42;
    v44 = *(v42 + 8);
    v139 = 0x7473696C702ELL;
    v140 = 0xE600000000000000;
    v137 = v135;
    v138 = v136;

    v137 = String.init<A>(_:)();
    v138 = v45;
    String.append<A>(contentsOf:)();
    v2 = v138;
    if (v43 == v137 && v44 == v138)
    {

      goto LABEL_27;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      break;
    }

    v37 &= v37 - 1;

    v39 = v41;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

LABEL_27:

  v54 = v128;
  MLHostTask.taskType.getter();
  v55 = v127;
  (v134[13])(v132, enum case for TaskType.dynamicTask(_:), v127);
  sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = v126;
  v57 = v122;
  if (v139 == v137 && v140 == v138)
  {
    v58 = v134[1];
    v58(v132, v55);
    v58(v133, v55);
  }

  else
  {
    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v59 = v134[1];
    v59(v132, v55);
    v59(v133, v55);

    if ((v118 & 1) == 0)
    {
      (v56)[1](v54, v123);
LABEL_18:

      a1 = v135;
      a2 = v136;
      goto LABEL_19;
    }
  }

  isa = v57[4].isa;
  v134 = v57[3].isa;
  (*(v130 + 56))(v129, 1, 1, v131);
  v61 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v62 = v120;
  v63 = *(v120 + 104);
  v64 = v119;
  v65 = v121;
  v63(v119, enum case for URL.DirectoryHint.inferFromPath(_:), v121);

  v66 = v124;
  URL.init(filePath:directoryHint:relativeTo:)();
  v139 = v43;
  v140 = v44;
  v63(v64, v61, v65);
  sub_100027A04();
  v67 = v125;
  URL.appending<A>(path:directoryHint:)();
  (*(v62 + 8))(v64, v65);
  v68 = v131;
  v69 = *(v130 + 8);
  v69(v66, v131);
  object = URL.path(percentEncoded:)(0)._object;
  v69(v67, v68);
  v71 = objc_opt_self();
  v72 = [v71 defaultManager];
  v73 = String._bridgeToObjectiveC()();
  v139 = 0;
  v74 = [v72 removeItemAtPath:v73 error:&v139];

  if (!v74)
  {
    v96 = v139;
    v97 = v128;
    v40 = v126;
LABEL_43:
    v98 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v139 = v98;
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    sub_100009A48(0, &unk_100085960, NSError_ptr);
    swift_dynamicCast();

    v99 = v137;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_1000098DC(v100, qword_100087610);
    v101 = v99;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      *(v104 + 4) = v101;
      *v105 = v101;
      v106 = v101;
      _os_log_impl(&_mh_execute_header, v102, v103, "Failed removing items: %@", v104, 0xCu);
      sub_100009C94(v105, &qword_100085970, &qword_100068F48);
    }

    else
    {
      v106 = v102;
      v102 = v101;
    }

    (v40)[1](v97, v123);

    return 0;
  }

  v134 = object;
  v75 = qword_1000850B8;
  v76 = v139;
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_1000098DC(v77, qword_100087610);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  v80 = os_log_type_enabled(v78, v79);
  v81 = v128;
  v40 = v126;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v139 = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_100008A0C(v43, v44, &v139);
    _os_log_impl(&_mh_execute_header, v78, v79, "Removed task definition: %s", v82, 0xCu);
    sub_100009914(v83);
    v40 = v126;

    v81 = v128;
  }

  v84 = MLHostTask.taskFolder.getter();
  if (!v85)
  {
    goto LABEL_52;
  }

  v86 = v84;
  v87 = v85;
  v88 = [v71 defaultManager];
  v89 = String._bridgeToObjectiveC()();
  v139 = 0;
  v90 = [v88 removeItemAtPath:v89 error:&v139];

  v91 = v139;
  if (!v90)
  {
    v96 = v91;

    v97 = v128;
    goto LABEL_43;
  }

  v2 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v2, v92))
  {
LABEL_50:

    goto LABEL_51;
  }

  v93 = swift_slowAlloc();
  v94 = swift_slowAlloc();
  v139 = v94;
  *v93 = 136315138;
  v95 = sub_100008A0C(v86, v87, &v139);

  *(v93 + 4) = v95;
  _os_log_impl(&_mh_execute_header, v2, v92, "Removed task folder: %s", v93, 0xCu);
  sub_100009914(v94);
  v40 = v126;

LABEL_51:

  v81 = v128;
LABEL_52:
  v107 = v122[7].isa;
  v108 = __chkstk_darwin(v84);
  v110 = v135;
  v109 = v136;
  *&v117[-32] = v111;
  *&v117[-24] = v110;
  *&v117[-16] = v109;
  __chkstk_darwin(v108);
  *&v117[-16] = sub_100027A8C;
  *&v117[-8] = v112;
  os_unfair_lock_lock(v107 + 4);
  sub_100027CA0();
  os_unfair_lock_unlock(v107 + 4);

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v139 = v116;
    *v115 = 136315138;
    *(v115 + 4) = sub_100008A0C(v110, v109, &v139);
    _os_log_impl(&_mh_execute_header, v113, v114, "Task %s is removed from TaskRegistry.", v115, 0xCu);
    sub_100009914(v116);
  }

  (v40)[1](v81, v123);
  return 1;
}

void sub_100019300(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 56);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v3 + 64);
  if (*(v8 + 16) && (v9 = sub_100010DF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for MLHostTask();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for MLHostTask();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t sub_100019478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = sub_100010DF4(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + 64);
    v23 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000133A4();
      v16 = v23;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    v18 = *(v16 + 56);
    v19 = type metadata accessor for MLHostTask();
    v20 = *(v19 - 8);
    (*(v20 + 32))(v9, v18 + *(v20 + 72) * v13, v19);
    sub_10004B150(v13, v16);
    *(a1 + 64) = v16;
    (*(v20 + 56))(v9, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for MLHostTask();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  }

  swift_endAccess();
  return sub_100009C94(v9, &qword_100085940, &unk_1000693D0);
}

void *sub_10001967C()
{
  v1 = sub_10001982C();
  v2 = v1;
  if (*(v1 + 2))
  {
    v3 = *(v0 + 56);
    v4 = __chkstk_darwin(v1);
    __chkstk_darwin(v4);
    os_unfair_lock_lock(v3 + 4);
    sub_100027CA0();
    os_unfair_lock_unlock(v3 + 4);

    sub_100026030(v0, v2);
  }

  else
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000098DC(v5, qword_100087610);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No task pruned. Skipping cleanup.", v8, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

char *sub_10001982C()
{
  v1 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v146 = &v129[-v3];
  v147 = type metadata accessor for Date();
  v4 = *(v147 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v147 - 8);
  v135 = &v129[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v138 = &v129[-v9];
  __chkstk_darwin(v8);
  v11 = &v129[-v10];
  v12 = sub_1000089AC(&qword_100085978, &qword_100069260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v161 = &v129[-v14];
  v166 = type metadata accessor for TaskDefinition();
  v15 = *(v166 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v166 - 8);
  v134 = &v129[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v164 = &v129[-v19];
  v160 = type metadata accessor for URL.DirectoryHint();
  v20 = *(v160 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v160);
  v159 = &v129[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v158 = &v129[-v25];
  v170 = type metadata accessor for URL();
  v26 = *(v170 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v170);
  v157 = &v129[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v156 = &v129[-v30];
  v171 = v0;
  v31 = sub_1000177EC();
  v33 = 0;
  v142 = 0;
  v35 = (v31 + 7);
  v34 = v31[7];
  v165 = v31;
  v36 = 1 << *(v31 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34;
  v39 = (v36 + 63) >> 6;
  v154 = (v26 + 56);
  v153 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v152 = (v20 + 104);
  v151 = (v20 + 8);
  v150 = (v26 + 8);
  v149 = (v15 + 48);
  v145 = (v15 + 32);
  v144 = (v4 + 48);
  v137 = (v4 + 32);
  v141 = (v4 + 8);
  v133 = (v15 + 16);
  v132 = (v4 + 16);
  v143 = (v15 + 8);
  v140 = _swiftEmptyArrayStorage;
  *&v32 = 136315138;
  v139 = v32;
  *&v32 = 136315394;
  v136 = v32;
  v148 = v11;
  v162 = (v31 + 7);
  v155 = v39;
  while (v38)
  {
LABEL_11:
    v41 = v165[6];
    v167 = v33;
    v42 = v41 + ((v33 << 10) | (16 * __clz(__rbit64(v38))));
    v44 = *v42;
    v43 = *(v42 + 8);
    v45 = *(v171 + 32);
    v168 = *(v171 + 24);
    v169 = (v38 - 1) & v38;
    (*v154)(v158, 1, 1, v170);
    v46 = *v152;
    v48 = v159;
    v47 = v160;
    v49 = v153;
    (*v152)(v159, v153, v160);

    v50 = v157;
    URL.init(filePath:directoryHint:relativeTo:)();
    v163 = v44;
    v174[0] = v44;
    v174[1] = v43;
    v168 = v43;
    v46(v48, v49, v47);
    sub_100027A04();
    v51 = v156;
    URL.appending<A>(path:directoryHint:)();
    (*v151)(v48, v47);
    v52 = *v150;
    v53 = v170;
    (*v150)(v50, v170);
    v54 = URL.path(percentEncoded:)(1);
    v52(v51, v53);
    v55 = v161;
    sub_10001AE50(v54._countAndFlagsBits, v54._object, v161);
    v56 = v166;
    if ((*v149)(v55, 1, v166) == 1)
    {

      sub_100009C94(v55, &qword_100085978, &qword_100069260);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_1000098DC(v57, qword_100087610);
      v58 = v168;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v35 = v162;
      v38 = v169;
      v33 = v167;
      if (v61)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v174[0] = v63;
        *v62 = v139;
        v64 = sub_100008A0C(v163, v58, v174);

        *(v62 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "Found invalid definition file: %s", v62, 0xCu);
        sub_100009914(v63);
      }

      else
      {
      }

      v39 = v155;
    }

    else
    {
      (*v145)(v164, v55, v56);
      v65 = v146;
      TaskDefinition.endDate.getter();
      v66 = v147;
      v67 = (*v144)(v65, 1, v147);
      v68 = v148;
      if (v67 == 1)
      {
        sub_100009C94(v65, &qword_100085ED0, &qword_1000695E0);
        v35 = v162;
        v33 = v167;
        v69 = v168;
LABEL_24:
        v95 = [objc_opt_self() defaultManager];
        v96 = String._bridgeToObjectiveC()();
        v174[0] = 0;
        v97 = [v95 removeItemAtPath:v96 error:v174];

        if (v97)
        {
          v114 = v174[0];

          v38 = v169;
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v115 = type metadata accessor for Logger();
          sub_1000098DC(v115, qword_100087610);

          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v174[0] = v119;
            *v118 = v139;
            v120 = sub_100008A0C(v163, v69, v174);

            *(v118 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v116, v117, "Removed expired task definition: %s", v118, 0xCu);
            sub_100009914(v119);
          }

          else
          {
          }

          v39 = v155;
          v121 = TaskDefinition.name.getter();
          v123 = v122;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1000243B8(0, *(v140 + 2) + 1, 1, v140);
          }

          v125 = *(v140 + 2);
          v124 = *(v140 + 3);
          if (v125 >= v124 >> 1)
          {
            v140 = sub_1000243B8((v124 > 1), v125 + 1, 1, v140);
          }

          (*v143)(v164, v56);
          v126 = v140;
          *(v140 + 2) = v125 + 1;
          v127 = &v126[16 * v125];
          *(v127 + 4) = v121;
          *(v127 + 5) = v123;
        }

        else
        {
          v98 = v174[0];
          v99 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v174[0] = v99;
          sub_1000089AC(&qword_100085958, &unk_1000693F0);
          sub_100009A48(0, &unk_100085960, NSError_ptr);
          swift_dynamicCast();

          v100 = v172;
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_1000098DC(v101, qword_100087610);

          v102 = v100;
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v173 = v107;
            *v105 = v136;
            v108 = sub_100008A0C(v54._countAndFlagsBits, v54._object, &v173);

            *(v105 + 4) = v108;
            *(v105 + 12) = 2112;
            *(v105 + 14) = v102;
            *v106 = v102;
            v109 = v102;
            _os_log_impl(&_mh_execute_header, v103, v104, "Failed at removing task definition: %s %@", v105, 0x16u);
            sub_100009C94(v106, &qword_100085970, &qword_100068F48);

            sub_100009914(v107);

            (*v143)(v164, v166);
          }

          else
          {

            (*v143)(v164, v56);
          }

          v39 = v155;
          v38 = v169;

          v142 = 0;
        }
      }

      else
      {
        (*v137)(v148, v65, v66);
        v70 = v68;
        v71 = v138;
        static Date.now.getter();
        v72 = static Date.> infix(_:_:)();
        v73 = *v141;
        (*v141)(v71, v66);
        v35 = v162;
        v33 = v167;
        v69 = v168;
        if ((v72 & 1) == 0)
        {
          v73(v70, v66);
          v56 = v166;
          goto LABEL_24;
        }

        v163 = v73;

        v74 = v164;
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_1000098DC(v75, qword_100087610);
        v76 = v134;
        (*v133)(v134, v74, v166);
        v77 = v135;
        v78 = v148;
        v79 = v147;
        (*v132)(v135, v148, v147);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = v77;
          v130 = v81;
          v84 = v76;
          v85 = v82;
          v131 = swift_slowAlloc();
          v174[0] = v131;
          *v85 = v136;
          v86 = TaskDefinition.name.getter();
          v88 = v87;
          v168 = *v143;
          v168(v84, v166);
          v89 = sub_100008A0C(v86, v88, v174);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2080;
          sub_100027AC8(&unk_100085980, &type metadata accessor for Date);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          v93 = v163;
          v163(v83, v79);
          v94 = sub_100008A0C(v90, v92, v174);

          *(v85 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v80, v130, "Skipping %s because expiration date is in the future %s", v85, 0x16u);
          swift_arrayDestroy();

          v93(v148, v79);
          v168(v164, v166);
        }

        else
        {

          v110 = v163;
          v163(v77, v79);
          v111 = *v143;
          v112 = v76;
          v113 = v166;
          (*v143)(v112, v166);
          v110(v78, v79);
          v111(v164, v113);
        }

        v39 = v155;
        v38 = v169;
      }
    }
  }

  while (1)
  {
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *&v35[8 * v40];
    ++v33;
    if (v38)
    {
      v33 = v40;
      goto LABEL_11;
    }
  }

  return v140;
}

uint64_t sub_10001A9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v56 = type metadata accessor for MLHostTask();
  v50 = *(v56 - 8);
  v8 = *(v50 + 64);
  v9 = __chkstk_darwin(v56);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v55 = &v44 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v53 = (v50 + 32);
    v54 = (v50 + 56);
    v49 = (v50 + 16);
    v51 = (v50 + 8);
    v52 = (v50 + 48);
    v16 = (a1 + 40);
    *&v13 = 136315138;
    v46 = v13;
    v47 = v7;
    v48 = a2;
    v45 = v11;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      swift_beginAccess();
      v19 = *(a2 + 64);

      v20 = sub_100010DF4(v18, v17);
      if (v21)
      {
        v22 = v20;
        v23 = *(a2 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(a2 + 64);
        v58 = v25;
        *(a2 + 64) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000133A4();
          v25 = v58;
        }

        v26 = *(*(v25 + 48) + 16 * v22 + 8);

        v27 = v56;
        (*(v50 + 32))(v7, *(v25 + 56) + *(v50 + 72) * v22, v56);
        sub_10004B150(v22, v25);
        v28 = *(a2 + 64);
        *(a2 + 64) = v25;

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v27 = v56;
      }

      (*v54)(v7, v29, 1, v27);
      swift_endAccess();

      if ((*v52)(v7, 1, v27) == 1)
      {
        result = sub_100009C94(v7, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v30 = v55;
        (*v53)(v55, v7, v27);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_1000098DC(v31, qword_100087610);
        (*v49)(v11, v30, v27);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v57 = v35;
          *v34 = v46;
          v36 = MLHostTask.name.getter();
          v37 = v27;
          v39 = v38;
          v40 = v11;
          v41 = *v51;
          (*v51)(v40, v37);
          v42 = sub_100008A0C(v36, v39, &v57);

          *(v34 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v32, v33, "Task %s is removed from TaskRegistry", v34, 0xCu);
          sub_100009914(v35);
          v7 = v47;

          a2 = v48;

          result = (v41)(v55, v56);
          v11 = v45;
        }

        else
        {

          v43 = *v51;
          (*v51)(v11, v27);
          result = (v43)(v55, v27);
        }
      }

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_10001AE50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TaskValidationError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v52 - v11;
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v14 = sub_1000089AC(&qword_100085978, &qword_100069260);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v52 - v16;
  v18 = type metadata accessor for TaskDefinition();
  v19 = *(v18 - 8);
  v62 = v18;
  v63 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v61 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22._countAndFlagsBits = 0x7473696C702ELL;
  v22._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v22))
  {
    v58 = v7;
    v59 = v6;
    v60 = a3;
    v23 = [objc_opt_self() defaultManager];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 contentsAtPath:v24];

    if (v25)
    {
      v55 = v12;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = type metadata accessor for PropertyListDecoder();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = PropertyListDecoder.init()();
      sub_100027AC8(&qword_100085470, &type metadata accessor for TaskDefinition);
      v33 = v62;
      v56 = v26;
      v57 = v28;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v52[4] = a1;
      v53 = *(v63 + 56);
      v54 = v32;
      v53(v17, 0, 1, v33);
      v47 = v61;
      v48 = v17;
      v49 = *(v63 + 32);
      v49(v61, v48, v33);
      _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();

      sub_1000099D4(v56, v57);
      v50 = v60;
      v49(v60, v47, v33);
      return (v53)(v50, 0, 1, v33);
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000098DC(v42, qword_100087610);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100008A0C(a1, a2, &v64);
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed reading data from: %s", v45, 0xCu);
      sub_100009914(v46);
    }

    v41 = v60;
    v39 = v62;
    v40 = *(v63 + 56);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000098DC(v34, qword_100087610);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100008A0C(a1, a2, &v64);
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalid task definition file: %s", v37, 0xCu);
      sub_100009914(v38);
    }

    v39 = v62;
    v40 = *(v63 + 56);
    v41 = a3;
  }

  return v40(v41, 1, 1, v39);
}

uint64_t sub_10001B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = 0;
  v10 = *(a1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_9:
    v16 = (*(v10 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v13)))));
    result = *v16;
    if (*v16 != a2 || v16[1] != a3)
    {
      v13 &= v13 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v18 = 1;
LABEL_16:
    *a4 = v18;
    return result;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10001BA90(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for MLHostTask();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 56);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(v2 + 64);
  v35 = a1;
  v36 = a2;

  v10 = sub_100016E50(sub_1000249A4, v34, v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = v8;
    v37 = &_swiftEmptyArrayStorage;
    sub_1000249C4(0, v11, 0);
    v12 = v37;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = *(v13 + 64);
    v28 = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v30 = *(v13 + 56);
    v31 = v14;
    v17 = (v13 - 8);
    do
    {
      v19 = v32;
      v18 = v33;
      v20 = v13;
      v31(v32, v16, v33);
      v21 = MLHostTask.name.getter();
      v23 = v22;
      (*v17)(v19, v18);
      v37 = v12;
      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000249C4((v24 > 1), v25 + 1, 1);
        v12 = v37;
      }

      v12[2] = v25 + 1;
      v26 = &v12[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v16 += v30;
      --v11;
      v13 = v20;
    }

    while (v11);

    v8 = v29;
  }

  else
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  os_unfair_lock_unlock(v8 + 4);
  return v12;
}

uint64_t sub_10001BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - v7;
  v8 = type metadata accessor for TaskCategory();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v36 - v12;
  v13 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for TaskType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  sub_100009C2C(a2, v16, &qword_100085918, &qword_100069250);
  v25 = (*(v18 + 48))(v16, 1, v17);
  v40 = a1;
  if (v25 == 1)
  {
    sub_100009C94(v16, &qword_100085918, &qword_100069250);
    v26 = 1;
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    MLHostTask.taskType.getter();
    sub_100027AC8(&qword_100085928, &type metadata accessor for TaskType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v46 == v44 && v47 == v45)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v27 = *(v18 + 8);
    v27(v22, v17);
    v27(v24, v17);
  }

  v28 = v39;
  sub_100009C2C(v38, v39, &qword_100085910, &unk_1000693B0);
  v30 = v42;
  v29 = v43;
  v31 = (*(v42 + 48))(v28, 1, v43);
  v32 = v41;
  if (v31 == 1)
  {
    sub_100009C94(v28, &qword_100085910, &unk_1000693B0);
  }

  else
  {
    (*(v30 + 32))(v41, v28, v29);
    if (v26)
    {
      v33 = v37;
      MLHostTask.taskCategory.getter();
      sub_100027AC8(&qword_100085920, &type metadata accessor for TaskCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v46 == v44 && v47 == v45)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v34 = *(v30 + 8);
      v34(v33, v29);
      v34(v32, v29);
    }

    else
    {
      (*(v30 + 8))(v32, v29);
      v26 = 0;
    }
  }

  return v26 & 1;
}

uint64_t sub_10001C1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for TaskStatus();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for MLHostTask();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019300(a1, a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_100009C94(v16, &qword_100085940, &unk_1000693D0);
  }

  (*(v18 + 32))(v21, v16, v17);
  (*(v9 + 104))(v12, enum case for TaskStatus.taskNotStarted(_:), v8);
  MLHostTask.status.setter();
  Date.init()();
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  MLHostTask.lastExecutionDate.setter();
  sub_10001C4DC(v21);
  return (*(v18 + 8))(v21, v17);
}

void sub_10001C4DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskStatus();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 56);
  v38 = v1;
  v39 = a1;
  v35 = sub_100024D68;
  v36 = &v37;
  os_unfair_lock_lock(v13 + 4);
  sub_100024D84();
  os_unfair_lock_unlock(v13 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000098DC(v14, qword_100087610);
  (*(v9 + 16))(v12, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a1;
    v20 = v19;
    v40 = v19;
    *v18 = 136315138;
    v21 = MLHostTask.description.getter();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_100008A0C(v21, v23, &v40);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Persisting task: %s", v18, 0xCu);
    sub_100009914(v20);

    v2 = v32;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  MLHostTask.name.getter();
  MLHostTask.status.getter();
  TaskStatus.rawValue.getter();
  (*(v33 + 8))(v7, v34);
  v26 = objc_allocWithZone(BMLighthouseTaskStatus);
  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();

  v29 = [v26 initWithVersion:isa taskName:v27 taskState:v28 taskSource:0 pushMetadata:0 pullMetadata:0];

  v30 = [*(v2 + 80) source];
  [v30 sendEvent:v29];
}

uint64_t sub_10001C8E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = MLHostTask.name.getter();
  v9 = v8;
  v10 = type metadata accessor for MLHostTask();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a2, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100028958(v6, v7, v9);
  return swift_endAccess();
}

void sub_10001CA2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100008A0C(a1, a2, &v20);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100008A0C(a3, a4, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Persisting task error: %s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v15 = objc_allocWithZone(BMLighthouseTaskError);

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 initWithVersion:isa taskName:v16 errorCode:v17];

  v19 = [*(v5 + 88) source];
  [v19 sendEvent:v18];
}

void sub_10001CCB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v83 = a3;
  v84 = a2;
  v82 = a1;
  v9 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v81 = &v77 - v11;
  v12 = type metadata accessor for TaskStatus();
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000089AC(&unk_1000859C0, &qword_1000694A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v77 - v18;
  v20 = sub_1000089AC(&unk_100085D00, &unk_1000694B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v77 - v22;
  v24 = type metadata accessor for PushMetadata();
  v86 = *(v24 - 8);
  v87 = v24;
  v25 = *(v86 + 64);
  __chkstk_darwin(v24);
  v85 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DynamicTaskSource();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v28 + 16);
  v80 = a4;
  v32(v31, a4, v27);
  v33 = (*(v28 + 88))(v31, v27);
  if (v33 == enum case for DynamicTaskSource.push(_:))
  {
    sub_100009C2C(a5, v19, &unk_1000859C0, &qword_1000694A0);
    v34 = type metadata accessor for TaskMetadata();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v19, 1, v34) == 1)
    {
      sub_100009C94(v19, &unk_1000859C0, &qword_1000694A0);
      (*(v86 + 56))(v23, 1, 1, v87);
LABEL_10:
      sub_100009C94(v23, &unk_100085D00, &unk_1000694B0);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000098DC(v43, qword_100087610);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_15;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Incomplete push metadata.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_15:

      return;
    }

    v78 = v6;
    TaskMetadata.pushMetadata.getter();
    (*(v35 + 8))(v19, v34);
    v42 = v86;
    v41 = v87;
    if ((*(v86 + 48))(v23, 1, v87) == 1)
    {
      goto LABEL_10;
    }

    (*(v42 + 32))(v85, v23, v41);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000098DC(v48, qword_100087610);
    v49 = v79;
    (*(v79 + 16))(v15, v83, v12);
    v50 = v84;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v81;
    if (v53)
    {
      v55 = v49;
      v56 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v56 = 136315394;
      *(v56 + 4) = sub_100008A0C(v82, v50, &v88);
      *(v56 + 12) = 2080;
      v57 = TaskStatus.rawValue.getter();
      v59 = v58;
      (*(v55 + 8))(v15, v12);
      v54 = v81;
      v60 = sub_100008A0C(v57, v59, &v88);

      *(v56 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Donating task status for push event: taskName: %s, taskStatus: %s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v49 + 8))(v15, v12);
    }

    PushMetadata.topic.getter();
    PushMetadata.channelID.getter();
    v77 = PushMetadata.pushType.getter();
    v79 = PushMetadata.pushPriority.getter();
    PushMetadata.creationDate.getter();
    v61 = type metadata accessor for Date();
    v62 = *(v61 - 8);
    (*(v62 + 56))(v54, 0, 1, v61);
    v63 = String._bridgeToObjectiveC()();

    v64 = String._bridgeToObjectiveC()();

    v65 = String._bridgeToObjectiveC()();

    v66 = String._bridgeToObjectiveC()();

    isa = 0;
    if ((*(v62 + 48))(v54, 1, v61) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v54, v61);
    }

    v68 = [objc_allocWithZone(BMLighthouseTaskStatusPushMetadata) initWithTopic:v63 channelID:v64 pushType:v65 pushPriority:v66 creationDate:isa];

    sub_100009A48(0, &unk_100085930, NSNumber_ptr);
    v69 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    TaskStatus.rawValue.getter();
    DynamicTaskSource.rawValue.getter();
    v70 = objc_allocWithZone(BMLighthouseTaskStatus);
    v71 = v68;
    v72 = String._bridgeToObjectiveC()();
    v73 = String._bridgeToObjectiveC()();

    v74 = String._bridgeToObjectiveC()();

    v75 = [v70 initWithVersion:v69 taskName:v72 taskState:v73 taskSource:v74 pushMetadata:v71 pullMetadata:0];

    v76 = [*(v78 + 80) source];
    [v76 sendEvent:v75];

    (*(v86 + 8))(v85, v87);
  }

  else
  {
    if (v33 == enum case for DynamicTaskSource.pull(_:))
    {
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000098DC(v36, qword_100087610);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_15;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Donating task status for pull events is not implemented yet.";
      goto LABEL_14;
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000098DC(v44, qword_100087610);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid taskSource, skipping donation.", v47, 2u);
    }

    (*(v28 + 8))(v31, v27);
  }
}

uint64_t sub_10001D78C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v32 - v11;
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100050158(&_swiftEmptyArrayStorage);
  v32[1] = (v15 + 16);
  v32[0] = *(a1 + 80);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v14, 1, 1, v16);
  v18(v12, 1, 1, v16);
  v33 = v14;
  sub_100009C2C(v14, v9, &qword_100085ED0, &qword_1000695E0);
  v34 = v12;
  sub_100009C2C(v12, v6, &qword_100085ED0, &qword_1000695E0);
  v19 = *(v17 + 48);
  v20 = v19(v9, 1, v16);

  isa = 0;
  if (v20 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v9, v16);
  }

  if (v19(v6, 1, v16) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v6, v16);
  }

  v23 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v22 maxEvents:0 lastN:0 reversed:0];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v32[0] publisherWithUseCase:v24 options:v23];

  v39 = nullsub_1;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100027C9C;
  v38 = &unk_100082AC8;
  v26 = _Block_copy(&aBlock);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100027B48;
  *(v27 + 24) = v15;
  v39 = sub_100027B88;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100027C9C;
  v38 = &unk_100082B18;
  v28 = _Block_copy(&aBlock);

  v29 = [v25 sinkWithCompletion:v26 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v26);

  sub_100009C94(v34, &qword_100085ED0, &qword_1000695E0);
  sub_100009C94(v33, &qword_100085ED0, &qword_1000695E0);
  swift_beginAccess();
  v30 = *(v15 + 16);

  return v30;
}

void sub_10001DC3C(void *a1, uint64_t a2)
{
  v4 = *(*(sub_1000089AC(&qword_100085A10, &qword_100069690) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TaskStatus();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 taskState];
  if (v15)
  {
    v30 = a2;
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [a1 taskName];
    if (v17)
    {
      v18 = v17;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      TaskStatus.init(rawValue:)();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v14, v9, v10);
        (*(v11 + 16))(v7, v14, v10);
        (*(v11 + 56))(v7, 0, 1, v10);
        swift_beginAccess();
        sub_10002904C(v7, v29, v20);
        swift_endAccess();
        (*(v11 + 8))(v14, v10);
        return;
      }

      sub_100009C94(v9, &qword_100085A10, &qword_100069690);
    }

    else
    {
    }
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000098DC(v21, qword_100087610);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Invalid taskState for message: %@", v25, 0xCu);
    sub_100009C94(v26, &qword_100085970, &qword_100068F48);
  }
}

uint64_t sub_10001DFFC(uint64_t a1, uint64_t a2)
{
  v74 = type metadata accessor for MLHostTask();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v74 - 8);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v63 - v8;
  v82 = type metadata accessor for TaskStatus();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v82);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v63 - v13;
  swift_beginAccess();
  v79 = a1;
  v14 = *(a1 + 64);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v77 = v9 + 16;
  v69 = v4 + 16;
  v67 = (v4 + 32);
  v66 = (v4 + 40);
  v71 = v4;
  v68 = (v4 + 8);
  v75 = (v9 + 8);
  v76 = v9;
  v84 = v14;

  v20 = 0;
  *&v21 = 136315138;
  v78 = v21;
  v83 = v19;
  v80 = a2;
  while (v18)
  {
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = (*(v84 + 48) + ((v20 << 10) | (16 * v23)));
    v26 = *v24;
    v25 = v24[1];
    v27 = *(a2 + 16);

    if (v27 && (v28 = sub_100010DF4(v26, v25), (v29 & 1) != 0))
    {
      v30 = *(v76 + 16);
      v30(v81, *(a2 + 56) + *(v76 + 72) * v28, v82);
      v31 = v79;
      swift_beginAccess();
      v32 = *(v31 + 64);
      if (!*(v32 + 16) || (v33 = sub_100010DF4(v26, v25), (v34 & 1) == 0))
      {
        swift_endAccess();
        (*v75)(v81, v82);
        v19 = v83;
        goto LABEL_20;
      }

      v35 = *(v32 + 56);
      v64 = *(v71 + 72);
      v65 = *(v71 + 16);
      v36 = v72;
      v65(v72, v35 + v64 * v33, v74);
      swift_endAccess();
      v30(v70, v81, v82);
      MLHostTask.status.setter();
      v37 = v79;
      swift_beginAccess();
      v65(v73, v36, v74);
      v38 = *(v37 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v37 + 64);
      v40 = v86;
      *(v37 + 64) = 0x8000000000000000;
      v42 = sub_100010DF4(v26, v25);
      v43 = v40[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_34;
      }

      v46 = v41;
      if (v40[3] >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v41)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1000133A4();
          if (v46)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100011948(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_100010DF4(v26, v25);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_36;
        }

        v42 = v47;
        if (v46)
        {
LABEL_27:

          v55 = v86;
          v56 = v74;
          (*v66)(v86[7] + v42 * v64, v73, v74);
          goto LABEL_31;
        }
      }

      v55 = v86;
      v86[(v42 >> 6) + 8] |= 1 << v42;
      v57 = (v55[6] + 16 * v42);
      *v57 = v26;
      v57[1] = v25;
      v56 = v74;
      (*v67)(v55[7] + v42 * v64, v73, v74);
      v58 = v55[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_35;
      }

      v55[2] = v60;
LABEL_31:
      a2 = v80;
      v61 = *(v79 + 64);
      *(v79 + 64) = v55;

      swift_endAccess();
      (*v68)(v72, v56);
      (*v75)(v81, v82);
      v19 = v83;
    }

    else
    {
LABEL_20:
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1000098DC(v49, qword_100087610);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v85 = v53;
        *v52 = v78;
        v54 = sub_100008A0C(v26, v25, &v85);

        *(v52 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "Task %s not found in taskStatusMap", v52, 0xCu);
        sub_100009914(v53);
        a2 = v80;

        v19 = v83;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10001E6EC(void *a1, void (*a2)(NSObject *))
{
  v4 = [a1 eventBody];
  if (v4)
  {
    oslog = v4;
    [a1 timestamp];
    a2(oslog);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000098DC(v5, qword_100087610);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Invalid event: %@", v8, 0xCu);
      sub_100009C94(v9, &qword_100085970, &qword_100068F48);
    }
  }
}

void sub_10001E880(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10001E8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v153 = type metadata accessor for TaskType();
  v152 = *(v153 - 8);
  v3 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLHostTask();
  v173 = *(v5 - 8);
  v174 = v5;
  v6 = *(v173 + 64);
  __chkstk_darwin(v5);
  v154 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for TaskDefinition();
  v172 = *(v175 - 8);
  v8 = *(v172 + 64);
  v9 = __chkstk_darwin(v175);
  v171 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  countAndFlagsBits = &v146 - v12;
  v13 = __chkstk_darwin(v11);
  v155 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v149 = &v146 - v16;
  v17 = __chkstk_darwin(v15);
  v150 = &v146 - v18;
  __chkstk_darwin(v17);
  v148 = &v146 - v19;
  v161 = type metadata accessor for URL.DirectoryHint();
  v159 = *(v161 - 8);
  v20 = *(v159 + 64);
  __chkstk_darwin(v161);
  v160 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v156 = &v146 - v24;
  v162 = type metadata accessor for URL();
  v168 = *(v162 - 1);
  v25 = *(v168 + 64);
  v26 = __chkstk_darwin(v162);
  v157 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v158 = &v146 - v28;
  v29 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v166 = (&v146 - v31);
  v32 = type metadata accessor for Date();
  v169 = *(v32 - 8);
  v33 = *(v169 + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v146 - v37;
  v39 = type metadata accessor for TaskValidationError();
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39);
  v170 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v44 = __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();
  v45 = countAndFlagsBits;
  v46 = v168;
  v170 = 0;
  v171 = v38;
  v47 = v176;
  v48 = v166;
  TaskDefinition.endDate.getter();
  v49 = v169;
  if ((*(v169 + 48))(v48, 1, v32) == 1)
  {
    sub_100009C94(v48, &qword_100085ED0, &qword_1000695E0);
LABEL_13:
    v97 = v175;
    v98 = v172;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_1000098DC(v99, qword_100087610);
    (*(v98 + 16))(v45, a1, v97);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v179[0] = v103;
      *v102 = 136315138;
      v104 = TaskDefinition.name.getter();
      v106 = v105;
      (*(v98 + 8))(v45, v97);
      v107 = sub_100008A0C(v104, v106, v179);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Task %s must have a valid endDate (> now).", v102, 0xCu);
      sub_100009914(v103);
      v108 = v174;

      return (*(v173 + 56))(v47, 1, 1, v108);
    }

    (*(v98 + 8))(v45, v97);
LABEL_18:
    v108 = v174;
    return (*(v173 + 56))(v47, 1, 1, v108);
  }

  v50 = v171;
  (*(v49 + 32))(v171, v48, v32);
  v51 = v36;
  static Date.now.getter();
  v52 = static Date.> infix(_:_:)();
  v55 = *(v49 + 8);
  v53 = v49 + 8;
  v54 = v55;
  (v55)(v51, v32);
  if ((v52 & 1) == 0)
  {
    (v54)(v50, v32);
    goto LABEL_13;
  }

  sub_10001FFC0(a1);
  v147 = v32;
  v169 = v53;
  v166 = v54;
  if (!v56)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_1000098DC(v110, qword_100087610);
    v111 = v172;
    v112 = v155;
    v113 = v175;
    (*(v172 + 16))(v155, a1, v175);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v47 = v176;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v179[0] = v118;
      *v117 = 136315138;
      v119 = TaskDefinition.name.getter();
      v121 = v120;
      (*(v111 + 8))(v112, v113);
      v122 = sub_100008A0C(v119, v121, v179);

      *(v117 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v114, v115, "Failed at storing taskDefinition: %s", v117, 0xCu);
      sub_100009914(v118);
      v108 = v174;

      v166(v171, v147);
      return (*(v173 + 56))(v47, 1, 1, v108);
    }

    (*(v111 + 8))(v112, v113);
    v166(v171, v147);
    goto LABEL_18;
  }

  v57 = *(v163 + 48);
  countAndFlagsBits = *(v163 + 40);
  (*(v46 + 56))(v156, 1, 1, v162);
  v58 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v59 = v159;
  v60 = a1;
  v61 = *(v159 + 104);
  v62 = v160;
  v63 = v161;
  v61(v160, enum case for URL.DirectoryHint.inferFromPath(_:), v161);

  v64 = v157;
  URL.init(filePath:directoryHint:relativeTo:)();
  v65 = v60;
  v179[0] = TaskDefinition.name.getter();
  v179[1] = v66;
  v61(v62, v58, v63);
  sub_100027A04();
  v67 = v158;
  URL.appending<A>(path:directoryHint:)();
  (*(v59 + 8))(v62, v63);

  v68 = *(v168 + 8);
  v69 = v162;
  v68(v64, v162);
  v70 = URL.path(percentEncoded:)(0);
  v68(v67, v69);
  v71 = [objc_opt_self() defaultManager];
  countAndFlagsBits = v70._countAndFlagsBits;
  v72 = String._bridgeToObjectiveC()();
  v73 = v65;
  if (qword_1000850B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100027AC8(&qword_1000851F8, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v179[0] = 0;
  v75 = [v71 createDirectoryAtPath:v72 withIntermediateDirectories:1 attributes:isa error:v179];

  v76 = v166;
  if (v75)
  {
    v77 = qword_1000850B8;
    v78 = v179[0];
    if (v77 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_1000098DC(v79, qword_100087610);
    v80 = v172;
    v81 = v148;
    v164 = *(v172 + 16);
    v164(v148, v65, v175);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    v84 = os_log_type_enabled(v82, v83);
    object = v70._object;
    if (v84)
    {
      v85 = v81;
      v86 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v86 = 136315394;
      v87 = TaskDefinition.name.getter();
      v168 = v65;
      v89 = v88;
      v162 = *(v80 + 8);
      (v162)(v85, v175);
      v90 = sub_100008A0C(v87, v89, v179);
      v73 = v168;

      *(v86 + 4) = v90;
      *(v86 + 12) = 2080;
      *(v86 + 14) = sub_100008A0C(countAndFlagsBits, object, v179);
      _os_log_impl(&_mh_execute_header, v82, v83, "Created taskFolder for %s: %s", v86, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v162 = *(v80 + 8);
      (v162)(v81, v175);
    }

    v91 = v163;
    v92 = v154;
    v93 = v153;
    v94 = v152;
    v95 = v151;
    v96 = v150;
    sub_1000208E4(v73, v150);
    v138 = v175;
    v164(v149, v96, v175);
    (*(v94 + 104))(v95, enum case for TaskType.dynamicTask(_:), v93);
    v139 = MLHostTask.init(taskDefinition:taskType:taskFolder:)();
    v140 = *(v91 + 56);
    v141 = __chkstk_darwin(v139);
    *(&v146 - 2) = v91;
    *(&v146 - 1) = v92;
    __chkstk_darwin(v141);
    *(&v146 - 2) = sub_100027AAC;
    *(&v146 - 1) = v142;
    os_unfair_lock_lock(v140 + 4);
    sub_100027CA0();
    os_unfair_lock_unlock(v140 + 4);
    (v162)(v96, v138);
    v166(v171, v147);
    v144 = v173;
    v143 = v174;
    v145 = v176;
    (*(v173 + 16))(v176, v92, v174);
    (*(v144 + 56))(v145, 0, 1, v143);
    return (*(v144 + 8))(v92, v143);
  }

  else
  {
    v123 = v176;
    v124 = v179[0];
    v125 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v179[0] = v125;
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    sub_100009A48(0, &unk_100085960, NSError_ptr);
    swift_dynamicCast();
    v126 = v177;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_1000098DC(v127, qword_100087610);

    v128 = v126;
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    v131 = os_log_type_enabled(v129, v130);
    v132 = countAndFlagsBits;
    if (v131)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v178 = v135;
      *v133 = 136315394;
      v136 = sub_100008A0C(v132, v70._object, &v178);

      *(v133 + 4) = v136;
      *(v133 + 12) = 2112;
      *(v133 + 14) = v128;
      *v134 = v128;
      v137 = v128;
      _os_log_impl(&_mh_execute_header, v129, v130, "Failed at creating taskFolder: %s %@", v133, 0x16u);
      sub_100009C94(v134, &qword_100085970, &qword_100068F48);

      sub_100009914(v135);
    }

    else
    {
    }

    v76(v171, v147);
    (*(v173 + 56))(v123, 1, 1, v174);
  }
}

uint64_t sub_10001FFC0(uint64_t *a1)
{
  v61 = a1;
  v62 = type metadata accessor for TaskDefinition();
  v57 = *(v62 - 8);
  v2 = *(v57 + 64);
  __chkstk_darwin(v62);
  v56[1] = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL.DirectoryHint();
  v63 = *(v4 - 8);
  v5 = v63;
  v64 = v4;
  v6 = *(v63 + 8);
  __chkstk_darwin(v4);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v56 - v11;
  v13 = type metadata accessor for URL();
  v59 = *(v13 - 8);
  v14 = v59;
  isa = v59[8].isa;
  v16 = __chkstk_darwin(v13);
  v56[0] = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v56 - v19;
  __chkstk_darwin(v18);
  v65 = v56 - v21;
  v66 = TaskDefinition.name.getter();
  v67 = v22;
  v23._countAndFlagsBits = 0x7473696C702ELL;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v60 = v66;
  v58 = v67;
  v25 = *(v1 + 24);
  v24 = *(v1 + 32);
  (v14[7].isa)(v12, 1, 1, v13);
  v26 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v27 = *(v5 + 13);
  v28 = v64;
  v27(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v64);

  URL.init(filePath:directoryHint:relativeTo:)();
  v66 = v60;
  v67 = v58;
  v29 = v26;
  v30 = v59;
  v27(v8, v29, v28);
  sub_100027A04();
  URL.appending<A>(path:directoryHint:)();
  (*(v63 + 1))(v8, v28);
  v63 = v30[1].isa;
  v64 = v13;
  (v63)(v20, v13);

  v31 = type metadata accessor for PropertyListEncoder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_100027AC8(&qword_100085488, &type metadata accessor for TaskDefinition);
  v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v37 = v36;
  v38 = v56[0];
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000098DC(v39, qword_100087610);
  (v30[2].isa)(v38, v65, v64);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v60 = v42;
    v61 = swift_slowAlloc();
    v66 = v61;
    *v42 = 136315138;
    sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
    v59 = v40;
    LODWORD(v58) = v41;
    v43 = v35;
    v44 = v37;
    v45 = v64;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v34;
    v48 = v47;
    v49 = v45;
    v37 = v44;
    (v63)(v38, v49);
    v35 = v43;
    v50 = sub_100008A0C(v46, v48, &v66);

    v52 = v59;
    v51 = v60;
    *(v60 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v52, v58, "Storing taskDefinition at URL: %s", v51, 0xCu);
    sub_100009914(v61);
  }

  else
  {

    (v63)(v38, v64);
  }

  Data.write(to:options:)();
  v53 = v65;
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  sub_1000099D4(v35, v37);

  (v63)(v53, v64);
  return countAndFlagsBits;
}

uint64_t sub_1000208E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for TaskDefinition();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v48 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v49 = &v46[-v8];
  v9 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v46[-v11];
  v12 = type metadata accessor for TaskRequest();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  __chkstk_darwin(v12);
  v50 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for TaskCategory();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v46[-v21];
  TaskDefinition.taskCategory.getter();
  (*(v16 + 104))(v20, enum case for TaskCategory.backgroundTask(_:), v15);
  sub_100027AC8(&qword_100085920, &type metadata accessor for TaskCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v55[0] == v56[0] && v55[1] == v56[1])
  {
    v23 = *(v16 + 8);
    v23(v20, v15);
    v23(v22, v15);
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = *(v16 + 8);
    v24(v20, v15);
    v24(v22, v15);

    if ((v47 & 1) == 0)
    {
      return (*(v4 + 16))(v52, a1, v3);
    }
  }

  v25 = v51;
  TaskDefinition.taskRequest.getter();
  v27 = v53;
  v26 = v54;
  v28 = *(v53 + 48);
  if (v28(v25, 1, v54) == 1)
  {
    sub_100009C94(v25, &qword_1000859A0, &qword_100069268);
    return (*(v4 + 16))(v52, a1, v3);
  }

  (*(v27 + 32))(v50, v25, v26);
  v30 = *(v4 + 16);
  v31 = v49;
  v30(v49, a1, v3);
  sub_1000089AC(&qword_100085900, &qword_100069240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000691A0;
  v33 = v48;
  v30(v48, v31, v3);
  v34 = TaskDefinition.bundleIdentifier.getter();
  v36 = v35;
  (*(v4 + 8))(v33, v3);
  *(inited + 32) = v34;
  *(inited + 40) = v36;
  v37 = sub_10004F764(inited);
  swift_setDeallocating();
  sub_100014C04(inited + 32);
  v57 = v37;
  v38 = TaskRequest.relatedApplications.getter();
  if (v38)
  {
    sub_1000500E8(v38);
  }

  v39 = TaskDefinition.taskRequest.modify();
  v40 = v54;
  if (!v28(v41, 1, v54))
  {
    v42 = *(v57 + 16);
    if (v42)
    {
      v43 = v57;
      v44 = sub_100024920(*(v57 + 16), 0);
      v45 = sub_100025710(v55, v44 + 4, v42, v43);
      sub_100009A28();
      if (v45 == v42)
      {
LABEL_16:
        TaskRequest.relatedApplications.setter();
        v39(v56, 0);
        v40 = v54;
        goto LABEL_17;
      }

      __break(1u);
    }

    goto LABEL_16;
  }

  v39(v56, 0);
LABEL_17:
  (*(v53 + 8))(v50, v40);
  return (*(v4 + 32))(v52, v31, v3);
}

uint64_t sub_100020F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 64);

  v14 = MLHostTask.name.getter();
  if (*(v13 + 16))
  {
    sub_100010DF4(v14, v15);
    v17 = v16;

    if (v17)
    {
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000098DC(v18, qword_100087610);
      (*(v9 + 16))(v12, a2, v8);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v32 = v21;
        v33 = swift_slowAlloc();
        v34 = v33;
        *v21 = 136315138;
        v31 = MLHostTask.name.getter();
        v23 = v22;
        (*(v9 + 8))(v12, v8);
        v24 = sub_100008A0C(v31, v23, &v34);

        v25 = v32;
        *(v32 + 1) = v24;
        _os_log_impl(&_mh_execute_header, v19, v20, "Task %s already present in TaskRegistry is being replaced.", v25, 0xCu);
        sub_100009914(v33);
      }

      else
      {

        (*(v9 + 8))(v12, v8);
      }
    }
  }

  else
  {
  }

  v26 = MLHostTask.name.getter();
  v28 = v27;
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_100028958(v7, v26, v28);
  return swift_endAccess();
}

void sub_1000212BC(uint64_t a1)
{
  v2 = v1;
  v181 = type metadata accessor for URL.DirectoryHint();
  v173 = *(v181 - 8);
  v4 = *(v173 + 64);
  __chkstk_darwin(v181);
  v180 = v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v179 = v169 - v8;
  v186 = type metadata accessor for URL();
  v172 = *(v186 - 8);
  v9 = *(v172 + 64);
  v10 = __chkstk_darwin(v186);
  v178 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v177 = v169 - v12;
  v200 = type metadata accessor for TaskType();
  v13 = *(v200 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v200);
  v199 = v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for MLHostTask();
  v201 = *(v207 - 8);
  v16 = *(v201 + 64);
  v17 = __chkstk_darwin(v207);
  v19 = v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v184 = v169 - v21;
  v22 = __chkstk_darwin(v20);
  v204 = v169 - v23;
  __chkstk_darwin(v22);
  v192 = v169 - v24;
  v211 = type metadata accessor for TaskDefinition();
  v195 = *(v211 - 8);
  v25 = *(v195 + 64);
  v26 = __chkstk_darwin(v211);
  v205 = v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v196 = v169 - v29;
  v30 = __chkstk_darwin(v28);
  v203 = v169 - v31;
  v32 = __chkstk_darwin(v30);
  v202 = v169 - v33;
  __chkstk_darwin(v32);
  v210 = v169 - v34;
  v35 = sub_1000089AC(&qword_100085A18, &qword_1000692B0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  object = v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v187 = (v169 - v41);
  v42 = __chkstk_darwin(v40);
  v194 = v169 - v43;
  __chkstk_darwin(v42);
  v193 = (v169 - v44);
  if (qword_1000850B8 != -1)
  {
    goto LABEL_76;
  }

LABEL_2:
  v185 = v19;
  v45 = type metadata accessor for Logger();
  v46 = sub_1000098DC(v45, qword_100087610);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Loading tasks from StaticRegistry.", v49, 2u);
  }

  v50 = sub_100022798(*(v2 + 16), a1);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Loading tasks from DynamicRegistry.", v53, 2u);
  }

  sub_1000089AC(&qword_100085900, &qword_100069240);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1000691A0;
  v55 = *(v2 + 32);
  *(v54 + 32) = *(v2 + 24);
  *(v54 + 40) = v55;

  v19 = sub_100022798(v54, a1);

  v189 = v2;
  v188 = object;
  v169[1] = v46;
  if (a1)
  {
    __chkstk_darwin(v56);
    v169[-2] = a1;
    v57 = sub_100025EB0(v50, sub_100027C88);

    __chkstk_darwin(v58);
    v169[-2] = a1;
    object = v13;
    v59 = sub_100025EB0(v19, sub_100027C00);

    v50 = v57;
    v19 = v59;
    v13 = object;
  }

  v2 = sub_100024EF4(v50);

  v182 = sub_100024EF4(v19);

  v212 = sub_10004F12C(&_swiftEmptyArrayStorage);
  v60 = 0;
  v61 = *(v2 + 64);
  v176 = (v2 + 64);
  v183 = v2;
  v62 = 1 << *(v2 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v61;
  v175 = (v62 + 63) >> 6;
  v208 = (v195 + 32);
  v209 = (v195 + 16);
  LODWORD(v191) = enum case for TaskType.staticTask(_:);
  v198 = (v13 + 104);
  v206 = (v201 + 32);
  v197 = (v195 + 8);
  v190 = v201 + 40;
  while (1)
  {
    if (v64)
    {
      v67 = v60;
LABEL_21:
      v70 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v71 = v70 | (v67 << 6);
      v72 = (*(v183 + 48) + 16 * v71);
      v74 = *v72;
      v73 = v72[1];
      v75 = v195;
      v76 = v210;
      v77 = v211;
      (*(v195 + 16))(v210, *(v183 + 56) + *(v195 + 72) * v71, v211);
      v78 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
      v79 = *(v78 + 48);
      v80 = v194;
      *v194 = v74;
      *(v80 + 1) = v73;
      v13 = v80;
      (*(v75 + 32))(&v80[v79], v76, v77);
      (*(*(v78 - 8) + 56))(v13, 0, 1, v78);

      v69 = v67;
    }

    else
    {
      if (v175 <= v60 + 1)
      {
        v68 = v60 + 1;
      }

      else
      {
        v68 = v175;
      }

      v69 = (v68 - 1);
      while (1)
      {
        v67 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
          goto LABEL_71;
        }

        if (v67 >= v175)
        {
          break;
        }

        v64 = v176[v67];
        ++v60;
        if (v64)
        {
          goto LABEL_21;
        }
      }

      v104 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
      v13 = v194;
      (*(*(v104 - 8) + 56))(v194, 1, 1, v104);
      v64 = 0;
    }

    v81 = v193;
    sub_100027B90(v13, v193);
    v82 = sub_1000089AC(&unk_100085A20, &qword_1000692B8);
    v19 = *(v82 - 8);
    v83 = *(v19 + 6);
    if ((v83)(v81, 1, v82) == 1)
    {
      v193 = v83;
      v202 = v82;

      v106 = 0;
      v107 = *(v182 + 64);
      v171 = v182 + 64;
      v108 = 1 << *(v182 + 32);
      v109 = -1;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      v2 = v109 & v107;
      v170 = (v108 + 63) >> 6;
      v194 = v19 + 56;
      v176 = (v172 + 56);
      LODWORD(v175) = enum case for URL.DirectoryHint.inferFromPath(_:);
      v174 = (v173 + 104);
      v173 += 8;
      v172 += 8;
      LODWORD(v192) = enum case for TaskType.dynamicTask(_:);
      v191 = v19 + 48;
      while (1)
      {
        a1 = v189;
        if (!v2)
        {
          if (v170 <= v106 + 1)
          {
            v112 = v106 + 1;
          }

          else
          {
            v112 = v170;
          }

          v113 = v112 - 1;
          while (1)
          {
            object = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              break;
            }

            if (object >= v170)
            {
              v163 = v188;
              v125 = v202;
              (*v194)(v188, 1, 1, v202);
              v126 = v163;
              v2 = 0;
              goto LABEL_50;
            }

            v2 = *(v171 + 8 * object);
            ++v106;
            if (v2)
            {
              v111 = v189;
              goto LABEL_49;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          swift_once();
          goto LABEL_2;
        }

        v111 = v189;
        object = v106;
LABEL_49:
        v114 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        v115 = v114 | (object << 6);
        v116 = (*(v182 + 48) + 16 * v115);
        v118 = *v116;
        v117 = v116[1];
        v119 = v195;
        v121 = v210;
        v120 = v211;
        (*(v195 + 16))(v210, *(v182 + 56) + *(v195 + 72) * v115, v211);
        v122 = v202;
        v123 = *(v202 + 12);
        v124 = v188;
        *v188 = v118;
        *(v124 + 1) = v117;
        v125 = v122;
        (*(v119 + 32))(&v124[v123], v121, v120);
        (*v194)(v124, 0, 1, v125);

        v113 = object;
        v126 = v124;
        a1 = v111;
LABEL_50:
        v127 = v187;
        sub_100027B90(v126, v187);
        if ((v193)(v127, 1, v125) == 1)
        {

          v164 = *(a1 + 56);
          os_unfair_lock_lock(v164 + 4);

          v165 = Logger.logObject.getter();
          v166 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            *v167 = 134217984;
            *(v167 + 4) = *(v212 + 16);

            _os_log_impl(&_mh_execute_header, v165, v166, "Injecting %ld tasks in TaskRegistry.", v167, 0xCu);
          }

          else
          {
          }

          swift_beginAccess();
          v168 = *(a1 + 64);
          *(a1 + 64) = v212;

          os_unfair_lock_unlock(v164 + 4);
          return;
        }

        v128 = *v127;
        v129 = v127[1];
        v130 = v127 + *(v125 + 12);
        v131 = v196;
        (*v208)(v196, v130, v211);
        sub_1000208E4(v131, v205);
        v132 = sub_100017A40();
        v204 = v128;
        v133 = sub_1000292B0(v128, v129, v132);

        v203 = v113;
        if (v133)
        {
          v134 = *(a1 + 48);
          v183 = *(a1 + 40);
          (*v176)(v179, 1, 1, v186);
          v135 = *v174;
          v136 = v180;
          v137 = v175;
          v138 = v181;
          (*v174)(v180, v175, v181);

          v139 = v178;
          URL.init(filePath:directoryHint:relativeTo:)();
          v213 = v204;
          v214 = v129;
          v135(v136, v137, v138);
          sub_100027A04();
          v140 = v177;
          URL.appending<A>(path:directoryHint:)();
          (*v173)(v136, v138);
          v141 = *v172;
          v142 = v186;
          (*v172)(v139, v186);
          object = URL.path(percentEncoded:)(0)._object;
          v143 = v207;
          v144 = v142;
          v145 = v129;
          v146 = v185;
          v141(v140, v144);
        }

        else
        {
          object = 0;
          v143 = v207;
          v145 = v129;
          v146 = v185;
        }

        (*v209)(v210, v205, v211);
        (*v198)(v199, v192, v200);
        v147 = v184;
        MLHostTask.init(taskDefinition:taskType:taskFolder:)();
        v148 = *v206;
        a1 = v146;
        (*v206)(v146, v147, v143);
        v19 = v212;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v213 = v19;
        v150 = v204;
        v13 = sub_100010DF4(v204, v145);
        v152 = *(v19 + 2);
        v153 = (v151 & 1) == 0;
        v154 = v152 + v153;
        if (__OFADD__(v152, v153))
        {
          goto LABEL_73;
        }

        v155 = v151;
        if (*(v212 + 24) >= v154)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v151)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_1000133A4();
            if (v155)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_100011948(v154, isUniquelyReferenced_nonNull_native);
          v156 = sub_100010DF4(v150, v145);
          if ((v155 & 1) != (v157 & 1))
          {
            goto LABEL_77;
          }

          v13 = v156;
          if (v155)
          {
LABEL_37:

            v212 = v213;
            (*(v201 + 40))(*(v213 + 56) + *(v201 + 72) * v13, a1, v143);
            v19 = *v197;
            v110 = v211;
            (*v197)(v205, v211);
            (v19)(v196, v110);
            goto LABEL_38;
          }
        }

        v158 = v150;
        v159 = v213;
        *(v213 + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v160 = (v159[6] + 16 * v13);
        *v160 = v158;
        v160[1] = v145;
        v148(v159[7] + *(v201 + 72) * v13, a1, v143);
        v19 = *v197;
        object = v211;
        (*v197)(v205, v211);
        (v19)(v196, object);
        v212 = v159;
        v161 = v159[2];
        v95 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v95)
        {
          goto LABEL_75;
        }

        *(v212 + 16) = v162;
LABEL_38:
        v106 = v203;
      }
    }

    object = v69;
    v84 = *v81;
    v13 = v81[1];
    v85 = v81 + *(v82 + 48);
    v86 = v202;
    v87 = v211;
    (*v208)(v202, v85, v211);
    v88 = v203;
    sub_1000208E4(v86, v203);
    v2 = v210;
    (*v209)(v210, v88, v87);
    (*v198)(v199, v191, v200);
    v89 = v192;
    MLHostTask.init(taskDefinition:taskType:taskFolder:)();
    v90 = *v206;
    (*v206)(v204, v89, v207);
    v19 = v212;
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v213 = v19;
    v91 = sub_100010DF4(v84, v13);
    v93 = *(v19 + 2);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_72;
    }

    v97 = v92;
    if (*(v212 + 24) < v96)
    {
      break;
    }

    if (a1)
    {
LABEL_28:
      a1 = v207;
      if ((v97 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_11:
      v65 = v91;

      v212 = v213;
      (*(v201 + 40))(*(v213 + 56) + *(v201 + 72) * v65, v204, a1);
      v2 = v197;
      v19 = *v197;
      v66 = v211;
      (*v197)(v203, v211);
      (v19)(v202, v66);
      v60 = object;
    }

    else
    {
      v105 = v91;
      sub_1000133A4();
      v91 = v105;
      a1 = v207;
      if (v97)
      {
        goto LABEL_11;
      }

LABEL_29:
      v99 = v213;
      *(v213 + 8 * (v91 >> 6) + 64) |= 1 << v91;
      v100 = (v99[6] + 16 * v91);
      *v100 = v84;
      v100[1] = v13;
      v90(v99[7] + *(v201 + 72) * v91, v204, a1);
      v2 = v197;
      v19 = *v197;
      v101 = v211;
      (*v197)(v203, v211);
      (v19)(v202, v101);
      v212 = v99;
      v102 = v99[2];
      v95 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v95)
      {
        goto LABEL_74;
      }

      *(v212 + 16) = v103;
      v60 = object;
    }
  }

  sub_100011948(v96, a1);
  v91 = sub_100010DF4(v84, v13);
  if ((v97 & 1) == (v98 & 1))
  {
    goto LABEL_28;
  }

LABEL_77:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100022798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085978, &qword_100069260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v144 - v6;
  v8 = type metadata accessor for TaskDefinition();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v160 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v157 = v144 - v14;
  v15 = __chkstk_darwin(v13);
  v151 = v144 - v16;
  v17 = __chkstk_darwin(v15);
  v155 = v144 - v18;
  __chkstk_darwin(v17);
  v20 = v144 - v19;
  v21 = sub_10004FEFC(&_swiftEmptyArrayStorage);
  v150 = *(a1 + 16);
  v144[1] = a1;
  if (v150)
  {
    v149 = objc_opt_self();
    v22 = 0;
    v146 = 0;
    v148 = a1 + 32;
    v167 = (v9 + 48);
    v162 = (v9 + 32);
    v175 = a2 + 56;
    v165 = (v9 + 16);
    v164 = (v9 + 8);
    v156 = v9;
    v152 = v9 + 40;
    *&v23 = 136315138;
    v166 = v23;
    *&v23 = 138412290;
    v145 = v23;
    *&v23 = 136315394;
    v154 = v23;
    v161 = a2;
    v158 = v7;
    v174 = v8;
    v176 = v20;
    do
    {
      v153 = v22;
      v24 = (v148 + 16 * v22);
      v25 = v24[1];
      v173 = *v24;
      v26 = qword_1000850B8;
      v27 = v25;

      if (v26 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v29 = sub_1000098DC(v28, qword_100087610);

      v177 = v29;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      v32 = os_log_type_enabled(v30, v31);
      v172 = v27;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v178 = v34;
        *v33 = v166;
        *(v33 + 4) = sub_100008A0C(v173, v172, &v178);
        _os_log_impl(&_mh_execute_header, v30, v31, "Loading tasks from folder: %s", v33, 0xCu);
        sub_100009914(v34);
        v27 = v172;
      }

      v35 = [v149 defaultManager];
      v36 = String._bridgeToObjectiveC()();
      v178 = 0;
      v37 = [v35 contentsOfDirectoryAtPath:v36 error:&v178];

      v38 = v178;
      if (v37)
      {
        v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v38;

        v171 = *(v39 + 16);
        if (v171)
        {
          v41 = 0;
          v168 = v39;
          v169 = v39 + 32;
          v42 = v27;
          v43 = v173;
          do
          {
            if (v41 >= *(v39 + 16))
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            v47 = (v169 + 16 * v41);
            v49 = *v47;
            v48 = v47[1];
            v178 = v43;
            v179 = v42;

            v50._countAndFlagsBits = 47;
            v50._object = 0xE100000000000000;
            String.append(_:)(v50);

            v51._countAndFlagsBits = v49;
            v51._object = v48;
            String.append(_:)(v51);

            v52 = v178;
            v53 = v179;

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v178 = v57;
              *v56 = v166;
              *(v56 + 4) = sub_100008A0C(v52, v53, &v178);
              _os_log_impl(&_mh_execute_header, v54, v55, "Loading task from: %s", v56, 0xCu);
              sub_100009914(v57);
              v8 = v174;
            }

            sub_10001AE50(v52, v53, v7);
            if ((*v167)(v7, 1, v8) == 1)
            {
              sub_100009C94(v7, &qword_100085978, &qword_100069260);

              v58 = Logger.logObject.getter();
              v59 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v58, v59))
              {
                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                v178 = v45;
                *v44 = v166;
                v46 = sub_100008A0C(v52, v53, &v178);

                *(v44 + 4) = v46;
                _os_log_impl(&_mh_execute_header, v58, v59, "Skipping loading from: %s", v44, 0xCu);
                sub_100009914(v45);

                a2 = v161;
              }

              else
              {
              }

              goto LABEL_14;
            }

            v60 = *v162;
            (*v162)(v176, v7, v8);
            v170 = v21;
            if (a2)
            {
              v61 = TaskDefinition.bundleIdentifier.getter();
              v63 = v62;
              if (!*(a2 + 16))
              {
                goto LABEL_31;
              }

              v64 = v61;
              v159 = v60;
              v65 = *(a2 + 40);
              Hasher.init(_seed:)();
              String.hash(into:)();
              v66 = Hasher._finalize()();
              v67 = -1 << *(a2 + 32);
              v68 = v66 & ~v67;
              if (((*(v175 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
              {
LABEL_31:

                v72 = v155;
                v73 = v176;
                (*v165)(v155, v176, v8);
                v74 = Logger.logObject.getter();
                v75 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  v77 = swift_slowAlloc();
                  v178 = v77;
                  *v76 = v166;
                  v78 = TaskDefinition.name.getter();
                  v80 = v79;
                  v81 = *v164;
                  (*v164)(v72, v174);
                  v82 = sub_100008A0C(v78, v80, &v178);
                  v83 = v176;

                  *(v76 + 4) = v82;
                  _os_log_impl(&_mh_execute_header, v74, v75, "Task %s is discared because its bundleIdentifier is not available in the OS.", v76, 0xCu);
                  sub_100009914(v77);
                  v8 = v174;

                  v81(v83, v8);
                  a2 = v161;
                }

                else
                {

                  v84 = *v164;
                  (*v164)(v72, v8);
                  v84(v73, v8);
                }

                v21 = v170;
                goto LABEL_58;
              }

              v69 = ~v67;
              while (1)
              {
                v70 = (*(a2 + 48) + 16 * v68);
                v71 = *v70 == v64 && v70[1] == v63;
                if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v68 = (v68 + 1) & v69;
                if (((*(v175 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              v21 = v170;
            }

            else
            {
              v159 = v60;
            }

            v85 = TaskDefinition.name.getter();
            v87 = v157;
            if (v21[2])
            {
              sub_100010DF4(v85, v86);
              v89 = v88;

              v90 = *v165;
              if (v89)
              {
                v91 = v151;
                v163 = *v165;
                v90(v151, v176, v8);

                v92 = Logger.logObject.getter();
                v93 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v92, v93))
                {
                  v94 = v91;
                  v95 = swift_slowAlloc();
                  v147 = swift_slowAlloc();
                  v178 = v147;
                  *v95 = v154;
                  v96 = TaskDefinition.name.getter();
                  v98 = v97;
                  (*v164)(v94, v174);
                  v99 = sub_100008A0C(v96, v98, &v178);
                  v8 = v174;

                  *(v95 + 4) = v99;
                  *(v95 + 12) = 2080;
                  *(v95 + 14) = sub_100008A0C(v52, v53, &v178);
                  _os_log_impl(&_mh_execute_header, v92, v93, "Task %s already in registry is overlayed by %s", v95, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  (*v164)(v91, v8);
                }

                v21 = v170;
                a2 = v161;
                v90 = v163;
              }
            }

            else
            {

              v90 = *v165;
            }

            v163 = v90;
            v90(v87, v176, v8);

            v100 = Logger.logObject.getter();
            v101 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              *v102 = v154;
              v103 = TaskDefinition.name.getter();
              v105 = v104;
              v106 = v87;
              v107 = *v164;
              (*v164)(v106, v174);
              v108 = sub_100008A0C(v103, v105, &v178);
              a2 = v161;

              *(v102 + 4) = v108;
              *(v102 + 12) = 2080;
              v109 = sub_100008A0C(v52, v53, &v178);

              *(v102 + 14) = v109;
              _os_log_impl(&_mh_execute_header, v100, v101, "Loaded %s from: %s", v102, 0x16u);
              swift_arrayDestroy();
              v8 = v174;

              v21 = v170;
            }

            else
            {

              v110 = v87;
              v107 = *v164;
              (*v164)(v110, v8);
            }

            v111 = v176;
            v112 = TaskDefinition.name.getter();
            v114 = v113;
            v163(v160, v111, v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v178 = v21;
            v116 = sub_100010DF4(v112, v114);
            v118 = v21[2];
            v119 = (v117 & 1) == 0;
            v120 = __OFADD__(v118, v119);
            v121 = v118 + v119;
            if (v120)
            {
              goto LABEL_68;
            }

            v122 = v117;
            if (v21[3] >= v121)
            {
              v124 = v156;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v128 = v116;
                sub_10001337C();
                v124 = v156;
                v116 = v128;
                a2 = v161;
              }

              v8 = v174;
              v21 = v178;
              if ((v122 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              sub_100011920(v121, isUniquelyReferenced_nonNull_native);
              v116 = sub_100010DF4(v112, v114);
              if ((v122 & 1) != (v123 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v8 = v174;
              v124 = v156;
              v21 = v178;
              if ((v122 & 1) == 0)
              {
LABEL_51:
                v21[(v116 >> 6) + 8] |= 1 << v116;
                v125 = (v21[6] + 16 * v116);
                *v125 = v112;
                v125[1] = v114;
                v159(v21[7] + *(v124 + 72) * v116, v160, v8);
                v126 = v21[2];
                v120 = __OFADD__(v126, 1);
                v127 = v126 + 1;
                if (v120)
                {
                  goto LABEL_69;
                }

                v21[2] = v127;
                goto LABEL_57;
              }
            }

            (*(v124 + 40))(v21[7] + *(v124 + 72) * v116, v160, v8);

LABEL_57:
            v107(v111, v8);
LABEL_58:
            v7 = v158;
LABEL_14:
            v42 = v172;
            v43 = v173;
            v39 = v168;
            ++v41;
          }

          while (v41 != v171);
        }
      }

      else
      {
        v129 = v178;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        v146 = 0;
        swift_errorRetain();
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = v145;
          swift_errorRetain();
          v134 = _swift_stdlib_bridgeErrorToNSError();
          *(v132 + 4) = v134;
          *v133 = v134;
          _os_log_impl(&_mh_execute_header, v130, v131, "Failed at reading tasks from disk: %@", v132, 0xCu);
          sub_100009C94(v133, &qword_100085970, &qword_100068F48);
        }

        else
        {
        }

        a2 = v161;
      }

      v22 = v153 + 1;
    }

    while (v153 + 1 != v150);
  }

  if (qword_1000850B8 != -1)
  {
LABEL_70:
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  sub_1000098DC(v135, qword_100087610);

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v178 = v139;
    *v138 = 134218242;
    *(v138 + 4) = v21[2];
    *(v138 + 12) = 2080;
    v140 = Array.description.getter();
    v142 = sub_100008A0C(v140, v141, &v178);

    *(v138 + 14) = v142;
    _os_log_impl(&_mh_execute_header, v136, v137, "Loaded %ld tasks from: %s.", v138, 0x16u);
    sub_100009914(v139);
  }

  return v21;
}

uint64_t sub_1000239D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = TaskDefinition.bundleIdentifier.getter();
  v9 = sub_1000292B0(v7, v8, a4);

  if ((v9 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000098DC(v10, qword_100087610);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100008A0C(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "Task %s is discarded because its bundleIdentifier is not available in the OS.", v13, 0xCu);
      sub_100009914(v14);
    }
  }

  return v9 & 1;
}

uint64_t sub_100023B54(uint64_t a1, unint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v60 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v60 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v60 - v20;
  __chkstk_darwin(v19);
  v23 = &v60 - v22;
  TaskDefinition.startDate.getter();
  v24 = *(v10 + 48);
  if (v24(v8, 1, v9) == 1)
  {
    sub_100009C94(v8, &qword_100085ED0, &qword_1000695E0);
  }

  else
  {
    v61 = v18;
    (*(v10 + 32))(v23, v8, v9);
    static Date.now.getter();
    v25 = static Date.< infix(_:_:)();
    v62 = v10;
    v26 = v23;
    v27 = *(v10 + 8);
    v27(v21, v9);
    if (v25)
    {
      v66 = v27;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000098DC(v28, qword_100087610);
      v29 = v61;
      (*(v62 + 16))(v61, v26, v9);
      v30 = v65;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v33 = 136315394;
        *(v33 + 4) = sub_100008A0C(v64, v30, &v67);
        *(v33 + 12) = 2080;
        sub_100027AC8(&unk_100085980, &type metadata accessor for Date);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        v37 = v29;
        v38 = v26;
        v39 = v66;
        (v66)(v37, v9);
        v40 = sub_100008A0C(v34, v36, &v67);

        *(v33 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Task %s is discarded due to startDate %s", v33, 0x16u);
        swift_arrayDestroy();

        (v39)(v38, v9);
      }

      else
      {

        v57 = v9;
        v58 = v9;
        v59 = v66;
        (v66)(v29, v57);
        (v59)(v26, v58);
      }

      return 0;
    }

    v27(v26, v9);
    v10 = v62;
  }

  TaskDefinition.endDate.getter();
  if (v24(v6, 1, v9) == 1)
  {
    sub_100009C94(v6, &qword_100085ED0, &qword_1000695E0);
    return 1;
  }

  v41 = v66;
  (*(v10 + 32))(v66, v6, v9);
  static Date.now.getter();
  v42 = static Date.> infix(_:_:)();
  v43 = *(v10 + 8);
  v43(v21, v9);
  if ((v42 & 1) == 0)
  {
    v43(v41, v9);
    return 1;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000098DC(v44, qword_100087610);
  v45 = v63;
  (*(v10 + 16))(v63, v41, v9);
  v46 = v41;
  v47 = v65;

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_100008A0C(v64, v47, &v67);
    *(v50 + 12) = 2080;
    sub_100027AC8(&unk_100085980, &type metadata accessor for Date);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v43(v45, v9);
    v54 = sub_100008A0C(v51, v53, &v67);

    *(v50 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Task %s is discarded due to endDate %s", v50, 0x16u);
    swift_arrayDestroy();

    v55 = v66;
  }

  else
  {

    v43(v45, v9);
    v55 = v46;
  }

  v43(v55, v9);
  return 0;
}

uint64_t sub_1000242BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return v0;
}

uint64_t sub_100024314()
{
  sub_1000242BC();

  return _swift_deallocClassInstance(v0, 96, 7);
}

char *sub_1000243B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085900, &qword_100069240);
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

size_t sub_10002450C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(a5, a6);
  v16 = *(sub_1000089AC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000089AC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_100024744(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100024920(uint64_t a1, uint64_t a2)
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

  sub_1000089AC(&qword_100085900, &qword_100069240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1000249C4(char *a1, int64_t a2, char a3)
{
  result = sub_100024A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000249E4(size_t a1, int64_t a2, char a3)
{
  result = sub_100024B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100024A04(void *a1, int64_t a2, char a3)
{
  result = sub_100024DAC(a1, a2, a3, *v3, &qword_1000859D8, &qword_100069288, &qword_1000859E0, &qword_100069290);
  *v3 = result;
  return result;
}

void *sub_100024A44(void *a1, int64_t a2, char a3)
{
  result = sub_100024DAC(a1, a2, a3, *v3, &qword_1000859E8, &qword_100069298, &qword_1000859F0, &unk_100069630);
  *v3 = result;
  return result;
}

char *sub_100024A84(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085900, &qword_100069240);
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

size_t sub_100024B90(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000089AC(&qword_100085908, &qword_100069248);
  v10 = *(type metadata accessor for MLHostTask() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MLHostTask() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100024D84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_100024DAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000089AC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000089AC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100024EF4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100025054(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100025288(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100025054(unint64_t *a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v29 = a1;
  v35 = type metadata accessor for TaskDefinition();
  v4 = *(*(v35 - 8) + 64);
  result = __chkstk_darwin(v35);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v6;
  v8 = 0;
  v36 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v6 + 16;
  v30 = 0;
  v31 = v6 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v37 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v35;
    v21 = (v36[6] + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = v33;
    v25 = v34;
    v26 = v19;
    (*(v34 + 16))(v33, v36[7] + *(v34 + 72) * v19, v35);

    LOBYTE(v23) = sub_100023B54(v23, v22);
    (*(v25 + 8))(v24, v20);

    v14 = v37;
    if (v23)
    {
      *(v29 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_100025390(v29, v28, v30, v36);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_100025390(v29, v28, v30, v36);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100025288(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100025054(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100025300(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
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

    v8 = sub_100025C64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100025390(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = type metadata accessor for TaskDefinition();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  sub_1000089AC(&qword_100086010, &qword_1000696C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

void *sub_100025710(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100025868(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100025B0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100025C64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v36 = a4;
  v28 = a1;
  v35 = type metadata accessor for TaskDefinition();
  v5 = *(*(v35 - 8) + 64);
  result = __chkstk_darwin(v35);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  v9 = 0;
  v37 = a3;
  v10 = *(a3 + 64);
  v29 = 0;
  v30 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v15 = v33;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v38 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = (v37[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v24 = v34;
    v23 = v35;
    v25 = v19;
    (*(v34 + 16))(v15, v37[7] + *(v34 + 72) * v19, v35);

    LOBYTE(v21) = v36(v21, v22, v15);
    (*(v24 + 8))(v15, v23);

    v13 = v38;
    if (v21)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_100025390(v28, v27, v29, v37);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_100025390(v28, v27, v29, v37);
    }

    v18 = *(v30 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025EB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100025C64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100025300(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

char *sub_100026030(uint64_t a1, uint64_t a2)
{
  v116 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v116 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v116);
  v115 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v114 = &v102 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v106 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v103 = &v102 - v16;
  v17 = __chkstk_darwin(v15);
  v113 = &v102 - v18;
  __chkstk_darwin(v17);
  v122 = &v102 - v19;
  v117 = a1;
  v20 = sub_100017A40();
  v22 = v20;
  v23 = 0;
  v24 = 0;
  v25 = v20 + 56;
  v26 = 1 << v20[32];
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v20 + 7);
  v29 = (v26 + 63) >> 6;
  v111 = (v11 + 56);
  v110 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v109 = (v4 + 104);
  v108 = (v4 + 8);
  v30 = v10;
  v125 = (v11 + 8);
  v107 = (v11 + 16);
  v105 = _swiftEmptyArrayStorage;
  *&v21 = 136315138;
  v118 = v21;
  *&v21 = 136315394;
  v104 = v21;
  v124 = a2;
  v128 = v10;
  v112 = v20;
  v119 = v20 + 56;
  v123 = v29;
  while (v28)
  {
LABEL_11:
    v32 = (*(v22 + 6) + ((v23 << 10) | (16 * __clz(__rbit64(v28)))));
    v34 = *v32;
    v33 = v32[1];
    v28 &= v28 - 1;
    v132 = *v32;
    v133 = v33;
    v35 = __chkstk_darwin(v33);
    *(&v102 - 2) = &v132;
    v129 = v35;

    v36 = sub_100029F60(sub_10000FD78, (&v102 - 4), a2);
    v127 = v24;
    if (v36)
    {
      v126 = v34;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      v38 = sub_1000098DC(v37, qword_100087610);
      v39 = v129;

      v121 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v132 = v43;
        *v42 = v118;
        *(v42 + 4) = sub_100008A0C(v126, v39, &v132);
        _os_log_impl(&_mh_execute_header, v40, v41, "Pruning taskFolder: %s", v42, 0xCu);
        sub_100009914(v43);
      }

      v44 = *(v117 + 48);
      v120 = *(v117 + 40);
      (*v111)(v114, 1, 1, v30);
      v45 = *v109;
      v46 = v115;
      v47 = v110;
      v48 = v116;
      (*v109)(v115, v110, v116);

      v49 = v113;
      URL.init(filePath:directoryHint:relativeTo:)();
      v132 = v126;
      v133 = v129;
      v45(v46, v47, v48);
      sub_100027A04();
      v50 = v122;
      URL.appending<A>(path:directoryHint:)();
      v51 = v46;
      v30 = v128;
      (*v108)(v51, v48);
      v52 = *v125;
      (*v125)(v49, v30);
      v53 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      v132 = 0;
      LODWORD(v45) = [v53 removeItemAtURL:v55 error:&v132];

      v57 = v132;
      if (v45)
      {
        v120 = v52;
        v80 = v103;
        (*v107)(v103, v50, v30);
        v81 = v57;
        v82 = v30;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v132 = v86;
          *v85 = v118;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v80;
          v89 = v87;
          v91 = v90;
          v120(v88, v82);
          v92 = sub_100008A0C(v89, v91, &v132);

          *(v85 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v83, v84, "Removed taskFolder: %s", v85, 0xCu);
          sub_100009914(v86);
        }

        else
        {

          v120(v80, v82);
        }

        a2 = v124;
        v30 = v82;
        v93 = v126;
        v94 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = sub_1000243B8(0, *(v105 + 2) + 1, 1, v105);
        }

        v97 = *(v105 + 2);
        v96 = *(v105 + 3);
        if (v97 >= v96 >> 1)
        {
          v105 = sub_1000243B8((v96 > 1), v97 + 1, 1, v105);
        }

        v120(v50, v30);
        v98 = v105;
        *(v105 + 2) = v97 + 1;
        v99 = &v98[16 * v97];
        v100 = v129;
        *(v99 + 4) = v93;
        *(v99 + 5) = v100;
        v22 = v112;
        v29 = v123;
        v24 = v94;
      }

      else
      {
        v58 = v132;
        v59 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v132 = v59;
        sub_1000089AC(&qword_100085958, &unk_1000693F0);
        sub_100009A48(0, &unk_100085960, NSError_ptr);
        swift_dynamicCast();

        v60 = v130;
        v61 = v106;
        (*v107)(v106, v50, v30);
        v62 = v60;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v131 = v129;
          *v65 = v104;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          v52(v61, v128);
          v69 = sub_100008A0C(v66, v68, &v131);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2112;
          *(v65 + 14) = v62;
          v70 = v127;
          *v127 = v62;
          v71 = v62;
          _os_log_impl(&_mh_execute_header, v63, v64, "Failed at removing taskFolder: %s %@", v65, 0x16u);
          sub_100009C94(v70, &qword_100085970, &qword_100068F48);

          sub_100009914(v129);

          v30 = v128;
        }

        else
        {

          v52(v61, v30);
        }

        v52(v122, v30);
        a2 = v124;
        v25 = v119;

        v24 = 0;
        v22 = v112;
        v29 = v123;
      }
    }

    else
    {
      v72 = v34;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000098DC(v73, qword_100087610);
      v74 = v129;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v132 = v78;
        *v77 = v118;
        v79 = sub_100008A0C(v72, v74, &v132);

        *(v77 + 4) = v79;
        v25 = v119;
        _os_log_impl(&_mh_execute_header, v75, v76, "Skipping taskFolder: %s", v77, 0xCu);
        sub_100009914(v78);
        v30 = v128;
      }

      else
      {
      }

      v29 = v123;
      a2 = v124;
      v24 = v127;
    }
  }

  while (1)
  {
    v31 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *&v25[8 * v31];
    ++v23;
    if (v28)
    {
      v23 = v31;
      goto LABEL_11;
    }
  }

  return v105;
}

char *sub_100026CD4(uint64_t a1, void *a2)
{
  v119 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v119 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v119);
  v118 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v117 = &v105 - v9;
  v130 = type metadata accessor for URL();
  v10 = *(v130 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v130);
  v110 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v105 = &v105 - v15;
  v16 = __chkstk_darwin(v14);
  v116 = &v105 - v17;
  __chkstk_darwin(v16);
  v126 = &v105 - v18;
  v120 = a1;
  v19 = sub_100017A40();
  v21 = v19;
  v22 = 0;
  v109 = 0;
  v23 = v19 + 56;
  v24 = 1 << v19[32];
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 7);
  v27 = (v24 + 63) >> 6;
  v28 = a2 + 7;
  v114 = (v10 + 56);
  v113 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v112 = (v4 + 104);
  v111 = (v4 + 8);
  v125 = (v10 + 8);
  v121 = (v10 + 16);
  v106 = _swiftEmptyArrayStorage;
  *&v20 = 136315138;
  v108 = v20;
  *&v20 = 136315394;
  v107 = v20;
  v133 = a2;
  v124 = v19;
  v115 = v19 + 56;
  v122 = v27;
  v123 = a2 + 7;
  while (v26)
  {
LABEL_10:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = (*(v21 + 6) + ((v22 << 10) | (16 * v30)));
    v33 = *v31;
    v32 = v31[1];
    if (v133[2])
    {
      v34 = v133;
      v35 = v133[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v36 = Hasher._finalize()();
      v37 = -1 << *(v34 + 32);
      v38 = v36 & ~v37;
      if (((*(v28 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_21;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = (v133[6] + 16 * v38);
        v41 = *v40 == v33 && v40[1] == v32;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v28 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_1000098DC(v78, qword_100087610);

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = v33;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v136[0] = v83;
        *v82 = v108;
        v84 = v81;
        v21 = v124;
        v85 = sub_100008A0C(v84, v32, v136);

        *(v82 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v79, v80, "Skipping taskFolder: %s", v82, 0xCu);
        sub_100009914(v83);
        v28 = v123;
      }

      else
      {
      }
    }

    else
    {

LABEL_21:
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v131 = v33;
      v42 = type metadata accessor for Logger();
      v43 = sub_1000098DC(v42, qword_100087610);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      v46 = os_log_type_enabled(v44, v45);
      v128 = v43;
      v129 = v26;
      v132 = v32;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v136[0] = v48;
        *v47 = v108;
        *(v47 + 4) = sub_100008A0C(v131, v32, v136);
        _os_log_impl(&_mh_execute_header, v44, v45, "Pruning taskFolder: %s", v47, 0xCu);
        sub_100009914(v48);
      }

      v49 = *(v120 + 48);
      v127 = *(v120 + 40);
      v50 = v130;
      (*v114)(v117, 1, 1, v130);
      v51 = *v112;
      v52 = v118;
      v53 = v113;
      v54 = v119;
      (*v112)(v118, v113, v119);

      v55 = v116;
      URL.init(filePath:directoryHint:relativeTo:)();
      v136[0] = v131;
      v136[1] = v132;
      v51(v52, v53, v54);
      sub_100027A04();
      v56 = v126;
      URL.appending<A>(path:directoryHint:)();
      (*v111)(v52, v54);
      v57 = *v125;
      (*v125)(v55, v50);
      v58 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v59);
      v61 = v60;
      v136[0] = 0;
      LODWORD(v51) = [v58 removeItemAtURL:v60 error:v136];

      v62 = v136[0];
      if (v51)
      {
        v86 = v105;
        (*v121)(v105, v56, v50);
        v87 = v62;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.info.getter();
        v90 = os_log_type_enabled(v88, v89);
        v127 = v57;
        if (v90)
        {
          v91 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v136[0] = v128;
          *v91 = v108;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v57;
          v95 = v94;
          v93(v86, v50);
          v96 = sub_100008A0C(v92, v95, v136);

          *(v91 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v88, v89, "Removed taskFolder: %s", v91, 0xCu);
          sub_100009914(v128);
        }

        else
        {

          v57(v86, v50);
        }

        v23 = v115;
        v97 = v131;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v124;
        v99 = v132;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v106 = sub_1000243B8(0, *(v106 + 2) + 1, 1, v106);
        }

        v101 = *(v106 + 2);
        v100 = *(v106 + 3);
        if (v101 >= v100 >> 1)
        {
          v106 = sub_1000243B8((v100 > 1), v101 + 1, 1, v106);
        }

        v127(v56, v50);
        v102 = v106;
        *(v106 + 2) = v101 + 1;
        v103 = &v102[16 * v101];
        *(v103 + 4) = v97;
        *(v103 + 5) = v99;
      }

      else
      {
        v63 = v136[0];
        v64 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v136[0] = v64;
        sub_1000089AC(&qword_100085958, &unk_1000693F0);
        sub_100009A48(0, &unk_100085960, NSError_ptr);
        swift_dynamicCast();

        v65 = v134;
        v66 = v110;
        (*v121)(v110, v56, v50);
        v67 = v65;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v57;
          v72 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v135 = v132;
          *v70 = v107;
          sub_100027AC8(&qword_100085D10, &type metadata accessor for URL);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v71(v66, v130);
          v76 = sub_100008A0C(v73, v75, &v135);

          *(v70 + 4) = v76;
          *(v70 + 12) = 2112;
          *(v70 + 14) = v67;
          *v72 = v67;
          v77 = v67;
          _os_log_impl(&_mh_execute_header, v68, v69, "Failed at removing taskFolder: %s %@", v70, 0x16u);
          sub_100009C94(v72, &qword_100085970, &qword_100068F48);

          sub_100009914(v132);

          v71(v126, v130);
        }

        else
        {

          v57(v66, v50);
          v57(v56, v50);
        }

        v21 = v124;
        v23 = v115;

        v109 = 0;
      }

      v27 = v122;
      v28 = v123;
      v26 = v129;
    }
  }

  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *&v23[8 * v29];
    ++v22;
    if (v26)
    {
      v22 = v29;
      goto LABEL_10;
    }
  }

  return v106;
}

unint64_t sub_100027A04()
{
  result = qword_100085950;
  if (!qword_100085950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085950);
  }

  return result;
}

uint64_t sub_100027A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100027AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027B10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027B50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085A18, &qword_1000692B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C20(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027CB8()
{
  v1 = v0;
  v2 = type metadata accessor for XPCListener.InitializationOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v75);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v80 = sub_1000098DC(v17, qword_100087610);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "MLHostDaemon starting", v20, 2u);
  }

  sub_100009A48(0, &unk_100085B90, OS_dispatch_source_ptr);
  sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v86 = sub_10003BDB8;
  v87 = 0;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_1000658D0;
  v85 = &unk_100082B40;
  v23 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10003BE88();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v23);
  v24 = *(v9 + 8);
  v70 = v9 + 8;
  v73 = v24;
  v24(v12, v8);
  v71 = v8;
  v72 = *(v78 + 8);
  v72(v16, v79);
  v78 = v22;
  OS_dispatch_source.resume()();
  sub_1000089AC(&qword_100085BA0, &qword_100069398);
  v25 = *(v5 + 72);
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 1) = xmmword_100069300;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  aBlock = v27;
  sub_100051EE4(&qword_100085BA8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
  sub_1000089AC(&qword_100085BB0, &unk_1000693A0);
  sub_1000656B8(&qword_100085BB8, &qword_100085BB0, &unk_1000693A0);
  v28 = v74;
  v29 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v5 + 8))(v28, v29);
  swift_getObjectType();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v1;
  v86 = sub_10004A65C;
  v87 = v31;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_1000658D0;
  v85 = &unk_100082B90;
  v32 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  sub_10003BE88();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v32);
  v73(v12, v71);
  v72(v16, v79);

  OS_dispatch_source.resume()();
  v33 = objc_opt_self();
  v34 = [v33 sharedScheduler];
  v35 = String._bridgeToObjectiveC()();
  v86 = sub_10003C788;
  v87 = 0;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100065970;
  v85 = &unk_100082BB8;
  v36 = _Block_copy(&aBlock);
  [v34 registerForTaskWithIdentifier:v35 usingQueue:0 launchHandler:v36];
  _Block_release(v36);

  sub_10002BCC4();
  v37 = *(v1 + 40);

  v38 = v37;
  static XPCListener.InitializationOptions.none.getter();
  v39 = type metadata accessor for XPCListener();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v77 = v33;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  v45 = os_log_type_enabled(v43, v44);
  v79 = v42;
  v76 = v30;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315138;
    v48 = XPCListener.debugDescription.getter();
    v50 = sub_100008A0C(v48, v49, &aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "XPC Listener started. %s", v46, 0xCu);
    sub_100009914(v47);
  }

  v51 = *(v1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry);
  sub_1000051D0(0xD000000000000016, 0x8000000100072EC0, 0);
  sub_1000051D0(0xD000000000000016, 0x8000000100072EC0, 1);
  v52 = *(v51 + 16);

  os_unfair_lock_lock(v52 + 4);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_10004A66C;
  *(v53 + 24) = v1;
  swift_beginAccess();

  v54 = *(v51 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(v51 + 72);
  *(v51 + 72) = 0x8000000000000000;
  sub_10004BB74(sub_10004A6CC, v53, 0xD000000000000016, 0x8000000100072EC0, isUniquelyReferenced_nonNull_native);
  *(v51 + 72) = v81;
  swift_endAccess();
  os_unfair_lock_unlock((*(v51 + 16) + 16));

  v56 = v77;
  v57 = [v77 sharedScheduler];
  v58 = String._bridgeToObjectiveC()();
  v86 = sub_10004BCC4;
  v87 = v1;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100065970;
  v85 = &unk_100082C08;
  v59 = _Block_copy(&aBlock);

  [v57 registerForTaskWithIdentifier:v58 usingQueue:0 launchHandler:v59];
  _Block_release(v59);

  v60 = [v56 sharedScheduler];
  v61 = String._bridgeToObjectiveC()();
  v86 = sub_10004BCCC;
  v87 = v1;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100065970;
  v85 = &unk_100082C30;
  v62 = _Block_copy(&aBlock);

  [v60 registerForTaskWithIdentifier:v61 usingQueue:0 launchHandler:v62];
  _Block_release(v62);

  v63 = [v56 sharedScheduler];
  v64 = String._bridgeToObjectiveC()();
  v86 = sub_10004BCD4;
  v87 = v1;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100065970;
  v85 = &unk_100082C58;
  v65 = _Block_copy(&aBlock);

  [v63 registerForTaskWithIdentifier:v64 usingQueue:0 launchHandler:v65];
  _Block_release(v65);

  sub_100050398();
  sub_10002F9F8();
  sub_100030304();
  sub_100033164("enableTriggerTasks", sub_100031790);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "MLHostDaemon started", v68, 2u);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_100028958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MLHostTask();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100009C94(a1, &qword_100085940, &unk_1000693D0);
    sub_10004AFBC(a2, a3, &type metadata accessor for MLHostTask, &type metadata accessor for MLHostTask, sub_1000133A4, v10);

    return sub_100009C94(v10, &qword_100085940, &unk_1000693D0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10004C178(v15, a2, a3, isUniquelyReferenced_nonNull_native, sub_1000133A4, sub_100011948, &type metadata accessor for MLHostTask, sub_100012E5C);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100028BBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RemoteHandler();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100009C94(a1, &qword_100085658, &qword_1000690F0);
    sub_10000B4C0(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100009C94(v8, &qword_100085658, &qword_1000690F0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004BF74(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100028DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000089AC(&qword_100085C58, &qword_100069430);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ContinuousClock.Instant();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100009C94(a1, &qword_100085C58, &qword_100069430);
    sub_10004AFBC(a2, a3, &type metadata accessor for ContinuousClock.Instant, &type metadata accessor for ContinuousClock.Instant, sub_100013E60, v10);

    return sub_100009C94(v10, &qword_100085C58, &qword_100069430);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10004C178(v15, a2, a3, isUniquelyReferenced_nonNull_native, sub_100013E60, sub_100012A40, &type metadata accessor for ContinuousClock.Instant, sub_100013128);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10002904C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(sub_1000089AC(&qword_100085A10, &qword_100069690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = type metadata accessor for TaskStatus();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100009C94(a1, &qword_100085A10, &qword_100069690);
    sub_10004AFBC(a2, a3, &type metadata accessor for TaskStatus, &type metadata accessor for TaskStatus, sub_100013E88, v9);

    return sub_100009C94(v9, &qword_100085A10, &qword_100069690);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10004C178(v14, a2, a3, isUniquelyReferenced_nonNull_native, sub_100013E88, sub_100012A68, &type metadata accessor for TaskStatus, sub_100013140);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_1000292B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000293A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000295C0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10004A918(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000296C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10004A918(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1000297E0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_1000249C4(0, v2 & ~(v2 >> 63), 0);
    v37 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_10004EBC0(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 bundleIdentifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000249C4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1000089AC(&unk_100085CA0, &qword_100069468);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_100009A30(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100009A30(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_100009A30(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_100029B48(uint64_t a1)
{
  v63 = type metadata accessor for UUID();
  v3 = *(v63 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v63);
  v62 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v45 = v1;
    v66 = &_swiftEmptyArrayStorage;
    sub_100024A44(0, v6, 0);
    v7 = v66;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v11 = 0;
    v12 = *(a1 + 36);
    v60 = (v3 + 8);
    v61 = v3 + 16;
    v46 = a1 + 72;
    v47 = a1 + 64;
    v50 = a1;
    v51 = v12;
    v48 = v6;
    v49 = v3;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_32;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v55 = 1 << result;
      v56 = result >> 6;
      v54 = v11;
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + 16 * result);
      v18 = *v16;
      v17 = v16[1];
      v58 = v18;
      v59 = result;
      v19 = *(v15 + 8 * result);
      v20 = *(v19 + 16);
      v57 = v17;
      if (v20)
      {
        v53 = v7;
        v65 = &_swiftEmptyArrayStorage;

        sub_1000249C4(0, v20, 0);
        v21 = v65;
        v22 = *(v3 + 80);
        v52 = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v64 = *(v3 + 72);
        v24 = *(v3 + 16);
        do
        {
          v25 = v62;
          v26 = v63;
          v24(v62, v23, v63);
          v27 = UUID.uuidString.getter();
          v29 = v28;
          (*v60)(v25, v26);
          v65 = v21;
          v31 = v21[2];
          v30 = v21[3];
          if (v31 >= v30 >> 1)
          {
            sub_1000249C4((v30 > 1), v31 + 1, 1);
            v21 = v65;
          }

          v21[2] = v31 + 1;
          v32 = &v21[2 * v31];
          v32[4] = v27;
          v32[5] = v29;
          v23 += v64;
          --v20;
        }

        while (v20);

        v3 = v49;
        a1 = v50;
        v8 = v47;
        v6 = v48;
        v7 = v53;
        v12 = v51;
      }

      else
      {

        v21 = &_swiftEmptyArrayStorage;
      }

      v66 = v7;
      v34 = v7[2];
      v33 = v7[3];
      result = v59;
      if (v34 >= v33 >> 1)
      {
        sub_100024A44((v33 > 1), v34 + 1, 1);
        result = v59;
        v12 = v51;
        v7 = v66;
      }

      v7[2] = v34 + 1;
      v35 = &v7[3 * v34];
      v36 = v57;
      v35[4] = v58;
      v35[5] = v36;
      v35[6] = v21;
      v13 = 1 << *(a1 + 32);
      if (result >= v13)
      {
        goto LABEL_34;
      }

      v37 = *(v8 + 8 * v56);
      if ((v37 & v55) == 0)
      {
        goto LABEL_35;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_36;
      }

      v38 = v37 & (-2 << (result & 0x3F));
      if (v38)
      {
        v13 = __clz(__rbit64(v38)) | result & 0x7FFFFFFFFFFFFFC0;
        v14 = v54;
      }

      else
      {
        v39 = v7;
        v40 = v56 << 6;
        v41 = v56 + 1;
        v42 = (v46 + 8 * v56);
        while (v41 < (v13 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_100009A30(result, v12, 0);
            v12 = v51;
            v13 = __clz(__rbit64(v43)) + v40;
            goto LABEL_27;
          }
        }

        sub_100009A30(result, v12, 0);
        v12 = v51;
LABEL_27:
        v7 = v39;
        v14 = v54;
      }

      v11 = v14 + 1;
      result = v13;
      if (v11 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}