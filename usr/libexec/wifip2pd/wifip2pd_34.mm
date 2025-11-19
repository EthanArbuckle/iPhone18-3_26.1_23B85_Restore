uint64_t sub_10029D13C(uint64_t *a1, __int128 *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a3;
  v7 = a1;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v50 = *a2;
      v52 = *(a2 + 2);
      v7 = *a3;
      v11 = a3[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v12)
        {
          v24 = BYTE6(v11);
LABEL_42:
          if (v24)
          {
            if (v12)
            {
              if (v12 == 2)
              {
                v32 = *(v7 + 16);
              }

              else
              {
                v32 = v7;
              }
            }

            else
            {
              v32 = 0;
            }

            if (__OFADD__(v32, v24))
            {
              goto LABEL_105;
            }

            if (v32 + v24 < v32)
            {
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            Data._copyBytesHelper(to:from:)();
          }

          return sub_1000124C8(v7, v11);
        }

        if (__OFSUB__(HIDWORD(v7), v7))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v24 = HIDWORD(v7) - v7;
LABEL_41:
        sub_10000AB0C(v7, v11);
        if (v24 < 0)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        goto LABEL_42;
      }

      goto LABEL_24;
    }

    v14 = *a1;

    sub_1000124C8(v9, v8);
    *&v50 = v9;
    *(&v50 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = v9;
    v15 = *(v9 + 16);
    result = __DataStorage._bytes.getter();
    if (result)
    {
      v17 = result;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v18))
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v19 = v17 + v15 - v18;
      __DataStorage._length.getter();
      v20 = *(a2 + 2);
      *v19 = *a2;
      *(v19 + 16) = v20;
      v9 = *v5;
      a4 = v5[1];
      v5 = (a4 >> 62);
      if ((a4 >> 62) <= 1)
      {
        if (!v5)
        {
          v21 = BYTE6(a4);
LABEL_49:
          if (v21)
          {
            if (v5)
            {
              if (v5 == 2)
              {
                v33 = *(v9 + 16);
              }

              else
              {
                v33 = v9;
              }
            }

            else
            {
              v33 = 0;
            }

            if (__OFADD__(v33, v21))
            {
              goto LABEL_108;
            }

            if (v33 + v21 < v33)
            {
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

            Data._copyBytesHelper(to:from:)();
          }

          goto LABEL_88;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
        }

        v21 = HIDWORD(v9) - v9;
LABEL_48:
        sub_10000AB0C(v9, a4);
        if (v21 < 0)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        goto LABEL_49;
      }

LABEL_28:
      if (v5 != 2)
      {
LABEL_88:
        result = sub_1000124C8(v9, a4);
        v49 = v11 | 0x8000000000000000;
        *v7 = v12;
LABEL_95:
        *(v7 + 8) = v49;
        return result;
      }

      v30 = *(v9 + 16);
      v29 = *(v9 + 24);
      v21 = v29 - v30;
      if (__OFSUB__(v29, v30))
      {
        __break(1u);
LABEL_32:
        if (__OFSUB__(HIDWORD(v11), v11))
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v13 = HIDWORD(v11) - v11;
        goto LABEL_34;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {
    if (!v10)
    {
      sub_1000124C8(*a1, v8);
      v50 = *a2;
      v51 = *(a2 + 2);
      v11 = *v5;
      v9 = v5[1];
      v12 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (!v12)
        {
          v13 = BYTE6(v9);
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v12 != 2)
      {
        goto LABEL_77;
      }

      v26 = *(v11 + 16);
      v25 = *(v11 + 24);
      v13 = v25 - v26;
      if (!__OFSUB__(v25, v26))
      {
LABEL_34:
        sub_10000AB0C(v11, v9);
        if ((v13 & 0x8000000000000000) == 0)
        {
LABEL_35:
          if (v13)
          {
            if (v12)
            {
              if (v12 == 2)
              {
                v31 = *(v11 + 16);
              }

              else
              {
                v31 = v11;
              }
            }

            else
            {
              v31 = 0;
            }

            if (!__OFADD__(v31, v13))
            {
              if (v31 + v13 >= v31)
              {
                Data._copyBytesHelper(to:from:)();
                goto LABEL_77;
              }

              goto LABEL_106;
            }

            goto LABEL_104;
          }

LABEL_77:
          result = sub_1000124C8(v11, v9);
          *v7 = v50;
          *(v7 + 8) = DWORD2(v50) | ((WORD6(v50) | (BYTE14(v50) << 16)) << 32);
          return result;
        }

        goto LABEL_97;
      }

      __break(1u);
LABEL_24:
      if (v12 != 2)
      {
        return sub_1000124C8(v7, v11);
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v24 = v27 - v28;
      if (!__OFSUB__(v27, v28))
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_28;
    }

    v22 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000124C8(v9, v8);
    *v7 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    v23 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v23 < v9)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
        goto LABEL_112;
      }

      v34 = type metadata accessor for __DataStorage();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v37 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v22 = v37;
    }

    if (v23 < v9)
    {
      goto LABEL_99;
    }

    result = __DataStorage._bytes.getter();
    if (result)
    {
      v38 = result;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v39))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v40 = v38 + v9 - v39;
      __DataStorage._length.getter();
      v41 = *(a2 + 2);
      *v40 = *a2;
      *(v40 + 16) = v41;
      v42 = *v5;
      v43 = v5[1];
      v44 = v43 >> 62;
      if ((v43 >> 62) > 1)
      {
        if (v44 != 2)
        {
LABEL_94:
          sub_1000124C8(v42, v43);

          v49 = v22 | 0x4000000000000000;
          *v7 = v9;
          goto LABEL_95;
        }

        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        v45 = v46 - v47;
        if (!__OFSUB__(v46, v47))
        {
          goto LABEL_66;
        }

        __break(1u);
      }

      else if (!v44)
      {
        v45 = BYTE6(v43);
LABEL_67:
        if (v45)
        {
          if (v44)
          {
            if (v44 == 2)
            {
              v48 = *(v42 + 16);
            }

            else
            {
              v48 = v42;
            }
          }

          else
          {
            v48 = 0;
          }

          if (__OFADD__(v48, v45))
          {
            goto LABEL_110;
          }

          if (v48 + v45 < v48)
          {
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          Data._copyBytesHelper(to:from:)();
        }

        goto LABEL_94;
      }

      if (__OFSUB__(HIDWORD(v42), v42))
      {
        goto LABEL_116;
      }

      v45 = HIDWORD(v42) - v42;
LABEL_66:
      sub_10000AB0C(v42, v43);
      if (v45 < 0)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      goto LABEL_67;
    }
  }

  __break(1u);
  return result;
}

void sub_10029D6F4(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1000124C8(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_10029E0A4(a1);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000124C8(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      a1(&v21, &v21 + BYTE6(v4));
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v7;
    v2[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    a1(&v21, &v21);
    return;
  }

  sub_1000124C8(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = __DataStorage._length.getter();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a1(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v9 | 0x8000000000000000;
}

uint64_t sub_10029D9A4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000124C8(v6, v5);
      *&v20 = v6;
      WORD4(v20) = v5;
      BYTE10(v20) = BYTE2(v5);
      BYTE11(v20) = BYTE3(v5);
      BYTE12(v20) = BYTE4(v5);
      BYTE13(v20) = BYTE5(v5);
      BYTE14(v20) = BYTE6(v5);
      result = a1(&v19, &v20, &v20 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = DWORD2(v20) | ((WORD6(v20) | (BYTE14(v20) << 16)) << 32);
      *v3 = v20;
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000124C8(v6, v5);
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_22:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10029E234(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        return v17;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_1000124C8(v6, v5);
    *&v20 = v6;
    *(&v20 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v10 = *(&v20 + 1);
    result = sub_10029E234(*(v20 + 16), *(v20 + 24), a1);
    *v3 = v20;
    v3[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v20 + 7) = 0;
    *&v20 = 0;
    result = a1(&v19, &v20, &v20);
    if (!v2)
    {
      return v19;
    }
  }

  return result;
}

char *sub_10029DD18(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000124C8(v6, v5);
      v19[0] = v6;
      LOWORD(v19[1]) = v5;
      BYTE2(v19[1]) = BYTE2(v5);
      BYTE3(v19[1]) = BYTE3(v5);
      BYTE4(v19[1]) = BYTE4(v5);
      BYTE5(v19[1]) = BYTE5(v5);
      BYTE6(v19[1]) = BYTE6(v5);
      result = a1(&v20, v19, v19 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v3 = v19[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000124C8(v6, v5);
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10029E2E4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000124C8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10029E2E4(*(v20 + 2), *(v20 + 3), a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      return result;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v20, v19, v19);
  if (!v2)
  {
    return v20;
  }

  return result;
}

void sub_10029E0A4(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = a1;
  v5 = *(v1 + 1);

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v3 - v8;
  if (__OFSUB__(v3, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13(v7 + v9, v7 + v9 + v12);
}

char *sub_10029E180(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_10029E234(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_10029E2E4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10029E400(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 == 0x7478655F747665 && a1[1] == 0xE700000000000000;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  swift_beginAccess();
  result = 0;
  *(v2 + 80) |= 1uLL;
  return result;
}

uint64_t sub_10029E4E0(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v4 = v15;
  sub_100031694(v14, v15);
  v5 = UnkeyedDecodingContainer.decodeData(with:)(48, v4);
  v7 = v6;
  sub_1002A59C4(v5, v6, v11);
  sub_1000124C8(v5, v7);
  v8 = v13;
  v9 = v12;
  sub_100002A00(v14);
  sub_100002A00(a1);
  return bswap64(v8 | (v9 << 32));
}

uint64_t sub_10029E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a7;
  v60 = a4;
  v55 = a6;
  v56 = a1;
  v62 = a3;
  v57 = a2;
  v65 = a11;
  v14 = *(a11 + 8);
  v53[2] = *(*(v14 + 24) + 16);
  v15 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v17 = (v53 - v16);
  v18 = *(a8 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v24 = v53 - v23;
  v58 = a5;
  v25 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    v26 = 0;
    if (v25 != 2 || (v28 = *(v60 + 16), v27 = *(v60 + 24), v29 = __OFSUB__(v27, v28), v26 = v27 - v28, !v29))
    {
LABEL_10:
      v61 = v26;
      v54 = a5 >> 62;
      dispatch thunk of static FixedWidthInteger.max.getter();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          v30 = dispatch thunk of BinaryInteger._lowWord.getter();
          for (result = (*(v18 + 8))(v24, a8); ; result = v17(v24, a8))
          {
            v31 = v30 < v61;
LABEL_20:
            v39 = v62;
            if (v31)
            {
              goto LABEL_29;
            }

LABEL_28:
            if (*(*(v59 - 8) + 64) < v39)
            {
              goto LABEL_29;
            }

            if (v54 <= 1)
            {
              break;
            }

            if (v54 != 2)
            {
              v45 = 0;
LABEL_41:
              result = v39 + v45;
              if (__OFADD__(v39, v45))
              {
                goto LABEL_45;
              }

              v63 = sub_10014345C(result);
              v64 = v48;
              __chkstk_darwin();
              v49 = v59;
              v53[-12] = v55;
              v53[-11] = v49;
              v53[-10] = a8;
              v53[-9] = a9;
              v50 = v65;
              v53[-8] = a10;
              v53[-7] = v50;
              v51 = v57;
              v53[-6] = v56;
              v53[-5] = v51;
              v52 = v58;
              v53[-4] = v60;
              v53[-3] = v52;
              v53[-2] = v39;
              sub_10029D6F4(sub_10029F280);
              return v63;
            }

            v47 = *(v60 + 16);
            v46 = *(v60 + 24);
            v29 = __OFSUB__(v46, v47);
            v45 = v46 - v47;
            if (!v29)
            {
              goto LABEL_41;
            }

            __break(1u);
LABEL_37:
            v30 = dispatch thunk of BinaryInteger._lowWord.getter();
          }

          if (v54)
          {
            LODWORD(v45) = HIDWORD(v60) - v60;
            if (__OFSUB__(HIDWORD(v60), v60))
            {
              goto LABEL_46;
            }

            v45 = v45;
          }

          else
          {
            v45 = BYTE6(v58);
          }

          goto LABEL_41;
        }

        v37 = v61;
      }

      else
      {
        v53[1] = v11;
        v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v32)
        {
          if (v33 <= 64)
          {
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v40 = *(*(v14 + 32) + 8);
            v41 = dispatch thunk of static Comparable.< infix(_:_:)();
            v17 = *(v18 + 8);
            v17(v21, a8);
            if ((v41 & 1) == 0)
            {
              goto LABEL_37;
            }

            v17(v24, a8);
LABEL_29:
            sub_10000B02C();
            swift_allocError();
            *v44 = xmmword_100481860;
            *(v44 + 16) = 0;
            return swift_willThrow();
          }

          v63 = v61;
          sub_100086E78();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v34 = *(*(v14 + 32) + 8);
          v35 = dispatch thunk of static Comparable.< infix(_:_:)();
          v36 = *(v18 + 8);
          v36(v21, a8);
          result = (v36)(v24, a8);
LABEL_27:
          v39 = v62;
          if ((v35 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (v33 < 64)
        {
          v38 = dispatch thunk of BinaryInteger._lowWord.getter();
          result = (*(v18 + 8))(v24, a8);
          v31 = v38 < v61;
          goto LABEL_20;
        }

        v37 = v61;
        if (v61 < 1)
        {
          result = (*(v18 + 8))(v24, a8);
          v39 = v62;
          goto LABEL_28;
        }
      }

      v63 = v37;
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v42 = *(*(v14 + 32) + 8);
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      v43 = *(v18 + 8);
      v43(v21, a8);
      result = (v43)(v24, a8);
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(v58);
    goto LABEL_10;
  }

  LODWORD(v26) = HIDWORD(v60) - v60;
  if (!__OFSUB__(HIDWORD(v60), v60))
  {
    v26 = v26;
    goto LABEL_10;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_10029EBEC()
{
  result = qword_100593920;
  if (!qword_100593920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593920);
  }

  return result;
}

uint64_t sub_10029EC40(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 15;
  }

  else
  {
    return byte_1004AC838[a1 - 1];
  }
}

uint64_t sub_10029EC70(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a2;
  result = sub_1002993B0(a2);
  if ((v18 & 1) == 0)
  {
    return sub_10029E5DC(a1, a2, result, a3, a4, a5, *(v16 + class metadata base offset for WritableKeyPath), *(v16 + class metadata base offset for WritableKeyPath + 8), a6, a7, a8);
  }

  __break(1u);
  return result;
}

unint64_t sub_10029ED4C()
{
  result = qword_100593938;
  if (!qword_100593938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593938);
  }

  return result;
}

unint64_t sub_10029EDA4()
{
  result = qword_100593940;
  if (!qword_100593940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593940);
  }

  return result;
}

unint64_t sub_10029EDFC()
{
  result = qword_100593948;
  if (!qword_100593948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593948);
  }

  return result;
}

unint64_t sub_10029EE54()
{
  result = qword_100593950;
  if (!qword_100593950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593950);
  }

  return result;
}

uint64_t sub_10029EEF0(uint64_t a1)
{
  result = sub_10029EFDC(&qword_100593990, type metadata accessor for AppleBroadcomDriver);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AppleBroadcomDriver()
{
  result = qword_100593A28;
  if (!qword_100593A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029EFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10029F080()
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

char *sub_10029F164(char *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = result;
    v4 = v1[4];
    v5 = v1[5];
    v6 = String.count.getter();
    return strncpy(v2, v3, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10029F1DC(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = *(v4 + 16);
  v10[0] = *v4;
  v10[1] = v8;
  v11 = *(v4 + 32);
  return sub_10029AECC(a1, a2, v10, v3, v5, v6);
}

uint64_t sub_10029F21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10029F330(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1002953E8(a1, a2, **(v3 + 16));
  if (!v4)
  {
    *a3 = v6;
    a3[1] = v7;
  }
}

uint64_t sub_10029F364(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10029F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t String.init<A>(cStyleString:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(*(a2 - 8) + 64) >= 2)
  {
    __chkstk_darwin();
    v9[2] = v5;
    v6 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
    sub_10029F448(a1, sub_1002A00E4, v9, a2, &type metadata for Never, v6, &protocol witness table for Never, v7);
    if (v11)
    {
      result = v10;
      v8 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v8 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t String.copy<A, B, C>(to:destinationField:lengthField:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(*(*a3 + class metadata base offset for WritableKeyPath + 8) - 8) + 64);
  v8 = __chkstk_darwin();
  _sSS7CoreP2PE4copy2to16destinationFieldyxz_s15WritableKeyPathCyxq_Gtr0_lF_0(v8, v9, v10, v11);
  v12 = *(a6 + 8);
  sub_100086E78();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  return swift_setAtWritableKeyPath();
}

uint64_t String.hexData.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5._countAndFlagsBits = 30768;
  v5._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v5))
  {

    v6 = String.count.getter();
    sub_1002A0598(v6, a1, a2);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10 = String.hexData.getter(v7, v9);

    return v10;
  }

  sub_10005E2E4();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    result = 0;
    v12 = 0xF000000000000000;
    goto LABEL_11;
  }

  result = String.colonSeparatedHexData.getter();
  if (v12 >> 60 == 15)
  {
LABEL_11:
    v13 = result;
    v14 = v12;
    v15 = String.nonSeparatedHexData.getter();
    sub_100017554(v13, v14);
    return v15;
  }

  return result;
}

uint64_t sub_10029F8F8()
{
  v0 = sub_10008338C(&off_100553068);
  sub_10005DC58(&qword_100593B08, &qword_1004AC858);
  result = swift_arrayDestroy();
  off_100593B00 = v0;
  return result;
}

uint64_t String.colonSeparatedHexData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 40);
    v4 = _swiftEmptyArrayStorage;
    while (v2 < *(v0 + 16))
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      v7 = sub_1002A0218(v6, v5);
      if (v7[2] != 1)
      {

        return 0;
      }

      v8 = *(v4 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v11 = v4, v10 <= v8))
      {
        v11 = sub_100115F68(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v4);
        v10 = *(v11 + 3) >> 1;
      }

      if (!v7[2])
      {
        goto LABEL_18;
      }

      v12 = *(v11 + 2);
      if (v10 <= v12)
      {
        goto LABEL_17;
      }

      ++v2;
      v11[v12 + 32] = *(v7 + 32);

      ++*(v11 + 2);

      v3 += 2;
      v4 = v11;
      if (v1 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_13:

    v13 = sub_10002D874(v11);

    return v13;
  }

  return result;
}

uint64_t String.nonSeparatedHexData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v23 = *(v0 + 16);
  if (v23)
  {
    v2 = 0;
    v3 = (v0 + 40);
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v2 >= *(v0 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v5 = v4;
      v7 = *(v3 - 1);
      v6 = *v3;

      result = sub_1002A0218(v7, v6);
      v8 = result;
      v9 = v0;
      v10 = *(result + 16);
      v11 = *(v5 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && (v13 = *(v5 + 3) >> 1, v4 = v5, v13 >= v12))
      {
        if (*(v8 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        result = sub_100115F68(result, v14, 1, v5);
        v4 = result;
        v13 = *(result + 24) >> 1;
        if (*(v8 + 16))
        {
LABEL_15:
          v15 = *(v4 + 2);
          if (v13 - v15 < v10)
          {
            goto LABEL_35;
          }

          memcpy(&v4[v15 + 32], (v8 + 32), v10);

          if (v10)
          {
            v16 = *(v4 + 2);
            v17 = __OFADD__(v16, v10);
            v18 = v16 + v10;
            if (v17)
            {
              goto LABEL_36;
            }

            *(v4 + 2) = v18;
          }

          goto LABEL_4;
        }
      }

      if (v10)
      {
        goto LABEL_34;
      }

LABEL_4:
      ++v2;

      v3 += 2;
      v0 = v9;
      if (v23 == v2)
      {
        goto LABEL_20;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_20:

  v19 = sub_10002D874(v4);
  v21 = v20;

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      result = v19;
      if (*(v19 + 16) != *(v19 + 24))
      {
        return result;
      }
    }

    else
    {
      result = v19;
    }
  }

  else if (v22)
  {
    result = v19;
    if (v19 != v19 >> 32)
    {
      return result;
    }
  }

  else
  {
    result = v19;
    if ((v21 & 0xFF000000000000) != 0)
    {
      return result;
    }
  }

  sub_1000124C8(result, v21);
  return 0;
}

uint64_t String.interfaceIdentifierData.getter()
{
  String.lowercased()();
  sub_10005E2E4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v19 = *(v0 + 16);
  if (v19)
  {
    v1 = 0;
    v2 = (v0 + 40);
    v3 = _swiftEmptyArrayStorage;
    while (v1 < *(v0 + 16))
    {
      v5 = *(v2 - 1);
      v4 = *v2;

      v6 = sub_1002A0218(v5, v4);
      if (v6[2] != 2)
      {

        return 0;
      }

      v7 = *(v3 + 2);
      v8 = v7 + 2;
      if (__OFADD__(v7, 2))
      {
        goto LABEL_22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v10 = *(v3 + 3) >> 1, v11 = v3, v10 < v8))
      {
        if (v7 <= v8)
        {
          v12 = v7 + 2;
        }

        else
        {
          v12 = v7;
        }

        v11 = sub_100115F68(isUniquelyReferenced_nonNull_native, v12, 1, v3);
        v10 = *(v11 + 3) >> 1;
      }

      if (!v6[2])
      {
        goto LABEL_25;
      }

      v13 = *(v11 + 2);
      if (v10 - v13 < 2)
      {
        goto LABEL_23;
      }

      *&v11[v13 + 32] = *(v6 + 16);

      v14 = *(v11 + 2);
      v15 = __OFADD__(v14, 2);
      v16 = v14 + 2;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v1;
      *(v11 + 2) = v16;

      v2 += 2;
      v3 = v11;
      if (v19 == v1)
      {
        goto LABEL_18;
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

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_18:

    v17 = sub_10002D874(v11);

    return v17;
  }

  return result;
}

void *_sSS7CoreP2PE4copy2to16destinationFieldyxz_s15WritableKeyPathCyxq_Gtr0_lF_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(*a2 + class metadata base offset for WritableKeyPath + 8) - 8) + 64);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  result = sub_1000ED548(sub_1002A0648, v6, a3, a4);
  if (result >= v4)
  {
    result = (v4 - 1);
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002A00E4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v4 = *(v2 + 16);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (!v5)
    {
      *(result + v6) = 0;
      result = String.init(cString:)();
      *a2 = result;
      a2[1] = v7;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A0130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v10[2] = a1;
  v10[3] = a4;
  v5 = v4;
  v6 = swift_modifyAtWritableKeyPath();
  sub_10029F448(v7, sub_1002A0668, v10, *(v5 + class metadata base offset for WritableKeyPath + 8), &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v8);
  return v6(v11, 0);
}

void *sub_1002A0218(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    v5 = 4 * v2;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = String.index(_:offsetBy:limitedBy:)();
      if ((v8 & 1) != 0 || v7 >> 14 == v5)
      {
        break;
      }

      if (qword_10058ABB0 != -1)
      {
        swift_once();
      }

      v9 = off_100593B00;
      v10 = String.subscript.getter();
      if (!v9[2])
      {
        goto LABEL_29;
      }

      v12 = v6;
      v13 = sub_10007D654(v10, v11);
      v6 = v14;

      if ((v6 & 1) == 0)
      {
        goto LABEL_30;
      }

      v15 = v4;
      v16 = *(v9[7] + v13);
      v17 = v15;
      v18 = String.subscript.getter();
      if (!v9[2])
      {
        v6 = v12;
LABEL_29:

LABEL_30:

LABEL_31:
        sub_10000B02C();
        swift_allocError();
        *v34 = xmmword_10047CE70;
        *(v34 + 16) = 2;
        swift_willThrow();
        return v6;
      }

      v20 = sub_10007D654(v18, v19);
      v6 = v21;

      if ((v6 & 1) == 0)
      {
        goto LABEL_30;
      }

      v22 = *(v9[7] + v20);
      v6 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100115F68(0, *(v12 + 16) + 1, 1, v12);
      }

      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_100115F68((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 16) = v24 + 1;
      *(v6 + v24 + 32) = v22 | (16 * v16);
      v4 = v17;
      v3 = a2;
      if (v5 == String.index(_:offsetBy:)() >> 14)
      {
        return v6;
      }
    }

    if (String.count.getter() != 1)
    {
      goto LABEL_30;
    }

    if (qword_10058ABB0 != -1)
    {
      swift_once();
    }

    v25 = off_100593B00;
    result = sub_100170360(v4, v3);
    if (v27)
    {
      v28 = result;
      v29 = v27;

      if (!v25[2])
      {
        goto LABEL_30;
      }

      v30 = sub_10007D654(v28, v29);
      v32 = v31;

      if (v32)
      {
        v33 = *(v25[7] + v30);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_100480F40;
        *(v6 + 32) = v33;
        return v6;
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1002A0598(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

size_t sub_1002A0668@<X0>(char *a1@<X0>, size_t *a2@<X8>)
{
  result = strlcpy(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t Logger.init(subsystem:category:)(uint64_t a1, char a2)
{
  LogCategory.rawValue.getter(a2);

  return Logger.init(subsystem:category:)();
}

uint64_t LogSubsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C7070612E6D6F63;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1002A07B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE006C6477612E65;
  v3 = *a1;
  v4 = 0xED00006E616E2E65;
  if (v3 == 1)
  {
    v4 = 0xEE006C6477612E65;
  }

  if (*a1)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000001004B4EC0;
  }

  if (*a2 != 1)
  {
    v2 = 0xED00006E616E2E65;
  }

  if (*a2)
  {
    v7 = 0x6C7070612E6D6F63;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x80000001004B4EC0;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002A08A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A0950()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002A09E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A0A90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12LogSubsystemO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002A0AC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006C6477612E65;
  if (v2 != 1)
  {
    v3 = 0xED00006E616E2E65;
  }

  v4 = v2 == 0;
  if (*v1)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4)
  {
    v3 = 0x80000001004B4EC0;
  }

  *a1 = v5;
  a1[1] = v3;
}

unint64_t LogCategory.rawValue.getter(char a1)
{
  result = 1953066601;
  switch(a1)
  {
    case 1:
      result = 1886221668;
      break;
    case 2:
      result = 0x65696C4372657375;
      break;
    case 3:
      result = 0x726576697264;
      break;
    case 4:
      result = 0x656369766564;
      break;
    case 5:
      result = 0x7374617473;
      break;
    case 6:
      result = 0x6361667265746E69;
      break;
    case 7:
      result = 1919247728;
      break;
    case 8:
      result = 0x6C6C6F72746E6F63;
      break;
    case 9:
      result = 0x736E617254697073;
      break;
    case 10:
      result = 6516856;
      break;
    case 11:
      result = 0x416B726F7774656ELL;
      break;
    case 12:
      result = 7564900;
      break;
    case 13:
      result = 0x7265766F63736964;
      break;
    case 14:
      result = 0x79786F7250534644;
      break;
    case 15:
      result = 4997968;
      break;
    case 16:
      result = 0x6269726373627573;
      break;
    case 17:
      result = 0x6873696C627570;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x694C656369766564;
      break;
    case 21:
      result = 0x6E6F697463656C65;
      break;
    case 22:
      result = 0x6E614D6172666E69;
      break;
    case 23:
      result = 0x614D656C61636F6CLL;
      break;
    case 24:
      result = 0x7365526F69646172;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x74656E7265746E69;
      break;
    case 27:
      result = 0x4D79617765746167;
      break;
    case 28:
      result = 0x676E6974756F72;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0x6C656E6E616843;
      break;
    case 33:
      result = 0x746E6567414E414ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002A0EE0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = LogCategory.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == LogCategory.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1002A0F68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s7CoreP2P11LogCategoryO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_1002A0F98@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1002A0FD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1038()
{
  LogCategory.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1002A108C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t _s7CoreP2P11LogCategoryO8rawValueACSgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x22)
  {
    return 34;
  }

  else
  {
    return v0;
  }
}

unint64_t _s7CoreP2P12LogSubsystemO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005538C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002A1240()
{
  result = qword_100593B10;
  if (!qword_100593B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593B10);
  }

  return result;
}

unint64_t sub_1002A1298()
{
  result = qword_100593B18;
  if (!qword_100593B18)
  {
    sub_10005DD04(&qword_100593B20, &qword_1004AC960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593B18);
  }

  return result;
}

unint64_t sub_1002A1300()
{
  result = qword_100593B28;
  if (!qword_100593B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593B28);
  }

  return result;
}

unint64_t sub_1002A1374()
{
  result = qword_100593B30;
  if (!qword_100593B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593B30);
  }

  return result;
}

uint64_t LengthValueHelper.inferredLoad<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 32))(a1, a3);
  v8 = v7;
  Data.load<A>(as:)(v6, v7, a2, a4);
  return sub_1000124C8(v6, v8);
}

uint64_t TypeLengthValue.length.getter(uint64_t result)
{
  v2 = (v1 + *(result + 84));
  v3 = *v2;
  v4 = v2[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v7 = v3 + 16;
    v5 = *(v3 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v3 = v6 - v5;
    if (!v8)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_9:
    v9 = *(result + 24);
    v10 = *(*(result + 72) + 8);
    sub_100086E78();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  __break(1u);
  return result;
}

uint64_t TypeLengthValue.valueData()(uint64_t a1)
{
  v1 = sub_1002A2FA0(a1);
  sub_10000AB0C(v1, v2);
  return v1;
}

uint64_t LengthValue.valueData()(uint64_t a1)
{
  v1 = NANBitmap.Channel.operatingClass.getter(a1);
  sub_10000AB0C(v1, v2);
  return v1;
}

uint64_t LengthValue.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v8 = *(a6 + 8);
  v9 = *(*(v8 + 24) + 16);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v16 = &v37 - v15;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v18 = 0;
    if (v17 != 2)
    {
      goto LABEL_10;
    }

    v20 = *(v41 + 16);
    v19 = *(v41 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v41), v41))
  {
    __break(1u);
    goto LABEL_38;
  }

  v18 = HIDWORD(v41) - v41;
LABEL_10:
  v39 = v18;
  v40 = a2;
  dispatch thunk of static FixedWidthInteger.max.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v42 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 > 64)
      {
LABEL_17:
        sub_100086E78();
        v24 = v38;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = *(*(v8 + 32) + 8);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v11 + 8))(v24, a3);
        if ((v26 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_38:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v27 = v38;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v28 = *(*(v8 + 32) + 8);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v11 + 8))(v27, a3);
      if (v29)
      {
        goto LABEL_38;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v23 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (v31 < 65)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_100086E78();
    v32 = v38;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = *(*(v8 + 32) + 8);
    v34 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v11 + 8))(v32, a3);
    if (v34)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v31 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  v35 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v11 + 8))(v16, a3);
  if (v39 < v35)
  {
    return v41;
  }

  sub_10000B02C();
  swift_allocError();
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 2;
  swift_willThrow();
  return sub_1000124C8(v41, v40);
}

uint64_t LengthValueHelper.parse<A>()(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for BinaryDecoder();
  v6 = (*(a3 + 32))(a1, a3);
  v8 = v7;
  static BinaryDecoder.decode<A>(_:data:)(a2, v6, v7, a2);
  return sub_1000124C8(v6, v8);
}

uint64_t LengthValueHelper.parseForOptional<A>()@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 1);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(v11 + 32))(v8, v11);
  v14 = v13;
  v15 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v16 = swift_allocObject();
  v16[5] = &_swiftEmptyDictionarySingleton;
  v16[2] = v12;
  v16[3] = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    v18 = 0;
    if (v17 == 2)
    {
      v18 = *(v12 + 16);
    }
  }

  else
  {
    v18 = v12;
    if (!v17)
    {
      v18 = 0;
    }
  }

  v16[4] = v18;
  v19 = v16;
  swift_beginAccess();
  *(v19 + 40) = v15;
  v22[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v22[4] = sub_1000325F0();
  v22[0] = v19;
  v20 = *sub_100031694(v22, &type metadata for BinaryDecoder.UnkeyedContainer);

  sub_100032670(a1);

  if (!v3)
  {
    (*(v6 + 32))(a2, v10, a1);
    (*(v6 + 56))(a2, 0, 1, a1);
  }

  return sub_100002A00(v22);
}

uint64_t TypeLengthValue.init(type:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v55 = a1;
  v56 = a4;
  v67 = a2;
  v54 = a9;
  v58 = a12;
  v15 = *(a12 + 8);
  v16 = *(*(v15 + 24) + 16);
  v17 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v49 = &v47[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin();
  v23 = &v47[-v22];
  v57 = a3;
  v24 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v25 = 0;
    if (v24 != 2)
    {
      goto LABEL_10;
    }

    v27 = *(v67 + 16);
    v26 = *(v67 + 24);
    v25 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v25 = BYTE6(v57);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v67), v67))
  {
    __break(1u);
    goto LABEL_37;
  }

  v25 = HIDWORD(v67) - v67;
LABEL_10:
  v50 = v12;
  dispatch thunk of static FixedWidthInteger.max.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v59 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v48 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v48)
    {
      if (v28 > 64)
      {
LABEL_17:
        sub_100086E78();
        v29 = v49;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v30 = *(*(v15 + 32) + 8);
        v31 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v18 + 8))(v29, a5);
        if ((v31 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_37:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v32 = v49;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = *(*(v15 + 32) + 8);
      v34 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v18 + 8))(v32, a5);
      if (v34)
      {
        goto LABEL_37;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v28 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v59 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v36 < 65)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_100086E78();
    v37 = v49;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v38 = *(*(v15 + 32) + 8);
    v39 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v37, a5);
    if (v39)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v36 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  v40 = v25;
  v41 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v18 + 8))(v23, a5);
  if (v40 >= v41)
  {
    sub_10000B02C();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 2;
    swift_willThrow();
    sub_1000124C8(v67, v57);
    return (*(*(v56 - 8) + 8))(v55);
  }

  else
  {
    v42 = v56;
    v43 = v54;
    (*(*(v56 - 8) + 32))(v54, v55, v56);
    v59 = v42;
    v60 = a5;
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v64 = a10;
    v65 = a11;
    v66 = v58;
    result = type metadata accessor for TypeLengthValue();
    v44 = (v43 + *(result + 84));
    v45 = v57;
    *v44 = v67;
    v44[1] = v45;
  }

  return result;
}

uint64_t LengthValueHelper.load<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 32))(a1, a3);
  v8 = v7;
  Data.load<A>(as:)(v6, v7, a2, a4);
  return sub_1000124C8(v6, v8);
}

uint64_t TypeLengthValue.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[4];
  sub_100029B34(v8, v8[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v22, v23);
  v12 = *(a2 + 16);
  v13 = *(a2 + 40);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    TypeLengthValue.length.getter(a2);
    sub_100031694(v22, v23);
    v14 = *(a2 + 64);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    (*(v6 + 8))(v10, v5);
    v15 = (v2 + *(a2 + 84));
    v17 = v15[1];
    v20 = *v15;
    v16 = v20;
    v21 = v17;
    sub_100031694(v22, v23);
    sub_10000AB0C(v16, v17);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v20, v21);
  }

  return sub_100002A00(v22);
}

uint64_t LengthValue.length.getter(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v7 = *(a6 + 8);
    sub_100086E78();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  __break(1u);
  return result;
}

uint64_t LengthValue.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v59 = *(a5 + 8);
  v57[2] = *(*(v59 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v10 = v57 - v9;
  v58 = *(a2 - 8);
  v11 = *(v58 + 64);
  __chkstk_darwin();
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v57 - v14;
  v16 = a1[4];
  v17 = sub_100029B34(a1, a1[3]);
  v18 = v61;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v18)
  {
    goto LABEL_39;
  }

  v57[0] = v10;
  v57[1] = AssociatedTypeWitness;
  v61 = v13;
  v19 = v58;
  v20 = v59;
  sub_100031694(v63, v64);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v60 = 0;
  v21 = v20;
  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v23 = v19;
  v24 = v61;
  if ((v22 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v62[0] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v25)
    {
      if (v26 > 64)
      {
LABEL_9:
        sub_100086E78();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v27 = *(*(v21 + 32) + 8);
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v23 + 8))(v24, a2);
        if ((v28 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v30 = *(*(v21 + 32) + 8);
      v31 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v23 + 8))(v24, a2);
      if (v31)
      {
        goto LABEL_56;
      }

LABEL_14:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_15;
    }

    if (v26 < 64)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v62[0] = 0x7FFFFFFFFFFFFFFFLL;
    v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v32 & 1) == 0)
    {
      break;
    }

    if (v33 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v34 = *(*(v21 + 32) + 8);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v23 + 8))(v24, a2);
    if (v35)
    {
      __break(1u);
LABEL_20:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v33 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_25:
  v36 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v23 + 8))(v15, a2);
  v37 = a1[4];
  sub_100029B34(a1, a1[3]);
  v38 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for CodingUserInfoKey();
  v40 = sub_100037644(v39, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v38 + 16) || (v41 = sub_10007CF6C(v40), (v42 & 1) == 0))
  {

    goto LABEL_37;
  }

  sub_100002B30(*(v38 + 56) + 32 * v41, v62);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v65 != 1)
  {
LABEL_37:
    v48 = v64;
    v17 = sub_100031694(v63, v64);
    v49 = v60;
    v50 = UnkeyedDecodingContainer.decodeData(with:)(v36, v48);
    if (!v49)
    {
      v17 = v50;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (__OFADD__(v36, 3))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v43 = v64;
  v17 = sub_100031694(v63, v64);
  v44 = v60;
  result = UnkeyedDecodingContainer.decodeData(with:)((v36 + 3) & 0xFFFFFFFFFFFFFFFCLL, v43);
  if (v44)
  {
LABEL_38:
    sub_100002A00(v63);
LABEL_39:
    sub_100002A00(a1);
    return v17;
  }

  v46 = 0;
  v47 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v47 == 2)
    {
      v46 = *(result + 16);
    }
  }

  else if (v47)
  {
    v46 = result;
  }

  v51 = __OFADD__(v46, v36);
  v52 = v46 + v36;
  if (v51)
  {
    goto LABEL_58;
  }

  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v53 = *(result + 16);
      v54 = *(result + 24);
    }

    else
    {
      v54 = 0;
      v53 = 0;
    }
  }

  else if (v47)
  {
    v53 = result;
    v54 = result >> 32;
  }

  else
  {
    v53 = 0;
    v54 = BYTE6(v45);
  }

  if (v54 < v53 || v52 < v53)
  {
    goto LABEL_59;
  }

  v55 = v45;
  v56 = result;
  v17 = Data._Representation.subscript.getter();
  sub_1000124C8(v56, v55);
LABEL_42:
  sub_100002A00(v63);
  sub_100002A00(a1);
  return v17;
}

uint64_t LengthValue.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[4];
  sub_100029B34(v13, v13[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LengthValue.length.getter(a2, a3, a4, v17, v18, a7);
  sub_100031694(v24, v25);
  v19 = v26;
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  (*(v11 + 8))(v15, a4);
  if (!v19)
  {
    v22 = a2;
    v23 = a3;
    sub_100031694(v24, v25);
    sub_10000AB0C(a2, a3);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v22, v23);
  }

  return sub_100002A00(v24);
}

uint64_t sub_1002A2EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = LengthValue.init(from:)(a1, a2[2], a2[3], a3, a2[5]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1002A2F5C(void *a1)
{
  v2 = v1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = NANBitmap.Channel.operatingClass.getter(*v1);
  sub_10000AB0C(v7, v8);
  return v7;
}

uint64_t sub_1002A2FA0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1002A2FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002A3040(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xC)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
    if (((4 * v17) & 0xC) != 0)
    {
      return 16 - ((4 * v17) & 0xC | (v17 >> 2));
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1002A3188(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xC)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0xC)
    {
      *v18 = a2 - 13;
      v18[1] = 0;
    }

    else
    {
      *v18 = 0;
      v18[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1002A334C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RSSI.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v27 - v12;
  (*(v8 + 16))(&v27 - v12, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v28 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v27 = a1;
    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v14)
    {
      a1 = v27;
      if (v15 > 64)
      {
LABEL_8:
        sub_100086E78();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v16 = *(*(a3 + 32) + 8);
        v17 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v8 + 8))(v11, a2);
        if ((v17 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v19 = *(*(a3 + 32) + 8);
      v20 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v8 + 8))(v11, a2);
      if (v20)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    a1 = v27;
    if (v15 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v22 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = *(*(a3 + 32) + 8);
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v11, a2);
    if (v24)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v22 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v25 = dispatch thunk of BinaryInteger._lowWord.getter();
  v26 = *(v8 + 8);
  v26(a1, a2);
  v26(v13, a2);
  return v25;
}

double RSSI.scaled.getter(uint64_t a1)
{
  v1 = a1 + 77.5;
  v2 = v1;
  v3 = fabsf(sqrtf((v2 * v2) + 450.0));
  return v1 / (v3 + v3) + 0.5;
}

uint64_t RSSI.description.getter()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 1833067552;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  return v2;
}

Swift::Int RSSI.hashValue.getter(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1002A3940()
{
  result = qword_100593C88;
  if (!qword_100593C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593C88);
  }

  return result;
}

uint64_t sub_1002A39E4()
{
  v3 = *v0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v1._countAndFlagsBits = 1833067552;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  return v4;
}

void NANBloomFilter.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  Data.hash(into:)();
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIBYTE(a4) & 1);
}

Swift::Int NANBloomFilter.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002A3F70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1002A3FEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  v4 = *(v0 + 16);
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002A4038()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1002A40B0()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return NANBloomFilter.description.getter(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_1002A40D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v3 ^ v5 ^ 1) & (v2 == v4);
}

unint64_t sub_1002A4138()
{
  result = qword_100593C90;
  if (!qword_100593C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593C90);
  }

  return result;
}

unint64_t sub_1002A4190()
{
  result = qword_100593C98;
  if (!qword_100593C98)
  {
    sub_10005DD04(&qword_100593CA0, &qword_1004ACE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593C98);
  }

  return result;
}

unint64_t sub_1002A41F8()
{
  result = qword_100593CA8;
  if (!qword_100593CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593CA8);
  }

  return result;
}

uint64_t sub_1002A424C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002A42A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002A4304()
{
  result = qword_100593CB0;
  if (!qword_100593CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593CB0);
  }

  return result;
}

uint64_t WiFiError.init(ioctlReturn:)(uint64_t result)
{
  if (result == -1)
  {
    LODWORD(result) = errno.getter();
  }

  return result;
}

uint64_t static WiFiError.securityErrorMessage(from:)(OSStatus a1)
{
  v1 = SecCopyErrorMessageString(a1, 0);
  if (!v1)
  {
    return 0x6E776F6E6B6E75;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *static WiFiError.systemErrorMessage.getter()
{
  v0 = errno.getter();
  result = strerror(v0);
  if (result)
  {

    return String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WiFiError.apiError.getter(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    return 7;
  }

  if (!a3)
  {
    if (result > -3902)
    {
      switch(result)
      {
        case 0xFFFFF0C3:
          return 5;
        case 0:
          return 0;
        case 0xFFFFF0C4:
          return 2;
      }
    }

    else
    {
      if ((result + 3924) < 2)
      {
        return 6;
      }

      if (result == -3904)
      {
        return 2;
      }
    }

    return 7;
  }

  return result;
}

uint64_t sub_1002A4A18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return WiFiError.description.getter(*v0);
}

uint64_t Error.apiError.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v6 = v9;
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      sub_1000B2594(v9, v10, 3);
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    if (v9 > -3902)
    {
      switch(v9)
      {
        case 0xFFFFF0C3:
          v6 = 5;
          goto LABEL_10;
        case 0xFFFFF0C4:
          goto LABEL_16;
        case 0:
          v6 = 0;
          goto LABEL_10;
      }
    }

    else
    {
      if ((v9 + 3924) < 2)
      {
        v6 = 6;
        goto LABEL_10;
      }

      if (v9 == -3904)
      {
LABEL_16:
        v6 = 2;
        goto LABEL_10;
      }
    }

LABEL_9:
    v6 = 7;
  }

LABEL_10:
  (*(v2 + 8))(v5, a1);
  return v6;
}

CoreP2P::ParsingError_optional __swiftcall ParsingError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539F8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_ParsingError_incorrectType;
  }

  else
  {
    v4.value = CoreP2P_ParsingError_unknownDefault;
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

uint64_t ParsingError.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636572726F636E69;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1002A4C38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636572726F636E69;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = 0x80000001004B51B0;
  }

  else
  {
    v5 = 0xED00006570795474;
  }

  if (*a2)
  {
    v6 = 0x636572726F636E69;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = 0xED00006570795474;
  }

  else
  {
    v7 = 0x80000001004B51B0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002A4CF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4D84()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002A4E04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4E94@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1005539F8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002A4EF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001004B51B0;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x636572726F636E69;
    v2 = 0xED00006570795474;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *_s7CoreP2P9WiFiErrorO06kernelE7Message4fromSSs5Int32V_tFZ_0(mach_error_t a1)
{
  result = mach_error_string(a1);
  if (result)
  {
    v2 = String.init(cString:)();
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 93;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    v5._countAndFlagsBits = 91;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5014(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result <= 4)
    {
      if (result > 1)
      {
        return 0x2064696C61766E49;
      }

      if (!result)
      {
        return 0x73736563637553;
      }

      if (result == 1)
      {
        return 0x2064696C61766E49;
      }
    }

    else
    {
      if (result <= 7)
      {
        if (result != 5 && result != 6)
        {
          return 0x6874754120746F4ELL;
        }

        return 0x2064696C61766E49;
      }

      switch(result)
      {
        case 8:
          return 0x44206E6F6974704FLL;
        case 9:
          return 0xD000000000000010;
        case 0xA:
          return 0x706E49206C6C754ELL;
      }
    }

    return 0x6E776F6E6B6E55;
  }

  return result;
}

unint64_t sub_1002A51B0()
{
  result = qword_100593CB8;
  if (!qword_100593CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593CB8);
  }

  return result;
}

uint64_t sub_1002A5204(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A521C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A5264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1002A52D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A5324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1002A5380(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t WiFiMACAddress.wifiAddress.getter()
{
  v1 = [v0 data];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      sub_1000124C8(v2, v4);
      goto LABEL_13;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    result = sub_1000124C8(v2, v5);
    if (!__OFSUB__(v7, v8))
    {
      if (v7 - v8 != 6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v6)
    {
      sub_1000124C8(v2, v4);
      if (BYTE6(v4) != 6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v10 = [v0 data];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      LOBYTE(v10) = Data._Representation.subscript.getter();
      sub_1000124C8(v11, v13);
      v14 = [v0 data];
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      LOBYTE(v14) = Data._Representation.subscript.getter();
      sub_1000124C8(v15, v17);
      v18 = [v0 data];
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      LOBYTE(v18) = Data._Representation.subscript.getter();
      sub_1000124C8(v19, v21);
      v22 = [v0 data];
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      LOBYTE(v22) = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v25);
      v26 = [v0 data];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      LOBYTE(v26) = Data._Representation.subscript.getter();
      sub_1000124C8(v27, v29);
      v30 = [v0 data];
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      LOBYTE(v30) = Data._Representation.subscript.getter();
      sub_1000124C8(v31, v33);
      v34 = v30 << 40;
      v35 = v26 << 32;
      v36 = v22 << 24;
      v37 = v18 << 16;
      v38 = v14 << 8;
      v39 = v10;
      return v38 | v39 | v37 | v36 | v35 | v34;
    }

    result = sub_1000124C8(v2, v4);
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 == 6)
      {
        goto LABEL_11;
      }

LABEL_13:
      v39 = 0;
      v38 = 0;
      v37 = 0;
      v36 = 0;
      v35 = 0;
      v34 = 0;
      return v38 | v39 | v37 | v36 | v35 | v34;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall WiFiAddress.init(_:)(CoreP2P::WiFiAddress_optional *__return_ptr retstr, sockaddr_dl *a2)
{
  v6 = v2;
  v7 = v3;
  v4 = sub_1002AAFAC(&v6 + BYTE5(a2), BYTE6(a2));
  sub_1000172CC(v4, v5);
}

uint64_t WiFiAddress.data.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004817D0;
  *(v7 + 32) = v1;
  *(v7 + 33) = v2;
  *(v7 + 34) = v3;
  *(v7 + 35) = v4;
  *(v7 + 36) = v5;
  *(v7 + 37) = v6;
  v8 = sub_10002D874(v7);

  return v8;
}

uint64_t sub_1002A58C4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  if (v2 != 2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 < 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1002AAD98(a1, a2, &v9, 1, 0x10uLL);
  return v9;
}

int64_t sub_1002A59C4@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 48)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 48)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x30uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v24 = *(v15 + 14);
      v31 = v24;
      v32 = *(v15 + 30);
      v33 = *(v15 + 46);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v31;
      *(a3 + 30) = v32;
      *(a3 + 46) = v33;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A5C4C@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.i16[2];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A5EB4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 3)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      swift_willThrow();
      return v8;
    }

    goto LABEL_26;
  }

  if (BYTE6(a2) < 3uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    return (v18 << 8) | (v19 << 16) | a1;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_29;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LOBYTE(a1) = *v13;
      LOBYTE(v18) = v13[1];
      LOBYTE(v19) = v13[2];
      return (v18 << 8) | (v19 << 16) | a1;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_32:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A6088@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 768)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x2F2uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

int64_t sub_1002A6260@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 104)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 104)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x68uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v33 = *(v15 + 46);
      v34 = *(v15 + 62);
      *v35 = *(v15 + 78);
      *&v35[10] = *(v15 + 88);
      v24 = *(v15 + 14);
      v31 = v24;
      v32 = *(v15 + 30);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 46) = v33;
      *(a3 + 62) = v34;
      *(a3 + 78) = *v35;
      *(a3 + 88) = *&v35[10];
      *(a3 + 14) = v31;
      *(a3 + 30) = v32;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A6510@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 24)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 24)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x18uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 22);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 22) = v31;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A6790@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 468)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x1C6uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1002A6968(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 12)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xCuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = v13[1];
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      v24 = v13[2];
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A6B74@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 248)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 248)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xF8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v42 = *(v15 + 206);
      *v43 = *(v15 + 222);
      *&v43[10] = *(v15 + 232);
      v38 = *(v15 + 142);
      v39 = *(v15 + 158);
      v40 = *(v15 + 174);
      v41 = *(v15 + 190);
      v34 = *(v15 + 78);
      v35 = *(v15 + 94);
      v36 = *(v15 + 110);
      v37 = *(v15 + 126);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      v32 = *(v15 + 46);
      v33 = *(v15 + 62);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 190) = v41;
      *(a3 + 206) = v42;
      *(a3 + 222) = *v43;
      *(a3 + 232) = *&v43[10];
      *(a3 + 126) = v37;
      *(a3 + 142) = v38;
      *(a3 + 158) = v39;
      *(a3 + 174) = v40;
      *(a3 + 62) = v33;
      *(a3 + 78) = v34;
      *(a3 + 94) = v35;
      *(a3 + 110) = v36;
      *(a3 + 14) = v30;
      *(a3 + 8) = v3;
      *(a3 + 13) = v23;
      *(a3 + 30) = v31;
      *(a3 + 46) = v32;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A6E98@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 40)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 40)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x28uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      *v30 = *(v15 + 14);
      *&v30[10] = *(v15 + 24);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = *v30;
      *(a3 + 24) = *&v30[10];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A7118@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 264)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      result = __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v34 = *(v15 + 206);
      v35 = *(v15 + 222);
      *v36 = *(v15 + 238);
      *&v36[10] = *(v15 + 248);
      v30 = *(v15 + 142);
      v31 = *(v15 + 158);
      v32 = *(v15 + 174);
      v33 = *(v15 + 190);
      v26 = *(v15 + 78);
      v27 = *(v15 + 94);
      v28 = *(v15 + 110);
      v29 = *(v15 + 126);
      v22 = *(v15 + 14);
      v23 = *(v15 + 30);
      v24 = *(v15 + 46);
      v25 = *(v15 + 62);
      *v10 = *v15;
      v20 = *(v15 + 8);
      *(v10 + 206) = v34;
      *(v10 + 222) = v35;
      *(v10 + 238) = *v36;
      *(v10 + 248) = *&v36[10];
      *(v10 + 142) = v30;
      *(v10 + 158) = v31;
      *(v10 + 174) = v32;
      *(v10 + 190) = v33;
      *(v10 + 78) = v26;
      *(v10 + 94) = v27;
      *(v10 + 110) = v28;
      *(v10 + 126) = v29;
      *(v10 + 14) = v22;
      *(v10 + 30) = v23;
      *(v10 + 46) = v24;
      v21 = *(v15 + 12);
      *(v10 + 8) = v20;
      *(v10 + 12) = v21;
      *(v10 + 62) = v25;
      return result;
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1002A739C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = v9 - v12 + v11;
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = *(v13 + 4);
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      v24 = *(v13 + 8) >> 8;
      v25 = *(v13 + 10);
      v26 = *(v13 + 12);
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A75CC@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 74)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 74)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x4AuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      *v32 = *(v15 + 46);
      *&v32[12] = *(v15 + 58);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 58) = *&v32[12];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A7864@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 208)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 208)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xD0uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v26 = vdupq_n_s64(result);
    v27 = vshlq_u64(v26, xmmword_1004841F0);
    v28 = vmovn_s64(vshlq_u64(v26, xmmword_1004841E0));
    v28.i8[1] = v28.i8[4];
    v29 = vzip1_s16(result, v28);
    *v26.i8 = vmovn_s64(vshlq_u64(v26, xmmword_100484200));
    v30 = vmovn_s64(v27);
    v30.i8[1] = v30.i8[4];
    v30.i8[2] = v26.i8[0];
    v30.i8[3] = v26.i8[4];
    v21 = vzip1_s32(v29, v30);
    v31 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v31, xmmword_1004817A0), vshlq_u64(v31, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v42 = *(v15 + 174);
      v43 = *(v15 + 190);
      v44 = *(v15 + 206);
      v38 = *(v15 + 110);
      v39 = *(v15 + 126);
      v40 = *(v15 + 142);
      v41 = *(v15 + 158);
      v34 = *(v15 + 46);
      v35 = *(v15 + 62);
      v24 = *(v15 + 78);
      v36 = v24;
      v37 = *(v15 + 94);
      v25 = *(v15 + 14);
      v32 = v25;
      v33 = *(v15 + 30);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 158) = v41;
      *(a3 + 174) = v42;
      *(a3 + 190) = v43;
      *(a3 + 94) = v37;
      *(a3 + 110) = v38;
      *(a3 + 126) = v39;
      *(a3 + 142) = v40;
      *(a3 + 30) = v33;
      *(a3 + 46) = v34;
      *(a3 + 62) = v35;
      *(a3 + 8) = v3;
      *(a3 + 13) = v23;
      *(a3 + 206) = v44;
      *(a3 + 78) = v36;
      *(a3 + 14) = v32;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A7B6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 1624)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0x64AuLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0x658uLL);
    memcpy(a3, v17, 0x658uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_1002A7E40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 3872)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0xF12uLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0xF20uLL);
    memcpy(a3, v17, 0xF20uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

int64_t sub_1002A8114@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      *v30 = *(v15 + 14);
      *&v30[6] = *(v15 + 20);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = *v30;
      *(a3 + 20) = *&v30[6];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A8394@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 997)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x3D7uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002A856C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 10)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 10)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xAuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    v20 = a1 >> 24;
    v21 = HIDWORD(a1);
    v22 = BYTE5(a1);
    LOWORD(v23) = HIWORD(a1);
    goto LABEL_23;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = a1 >> 8;
      LODWORD(v19) = *(v13 + 1);
      LODWORD(v20) = v19 >> 8;
      LODWORD(v21) = WORD1(v19);
      v22 = BYTE3(v19);
      v23 = *(v13 + 3);
LABEL_23:
      LOWORD(v24) = a1 | (v18 << 8);
      *(&v24 + 2) = (v21 << 16) | (v22 << 24) | (v20 << 8) | v19;
      HIWORD(v24) = v23;
      return v24;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A8778@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x20uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A89F8@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 20)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 20)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x14uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 18);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 18) = v31;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void *sub_1002A8C78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v4 < 2080)
  {
    goto LABEL_8;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    if (v3 == 2)
    {
      v12 = *(a1 + 16);
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        __DataStorage._length.getter();
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v15))
      {
        v16 = v12 - v15 + v14;
        __DataStorage._length.getter();
        if (!v16)
        {
          goto LABEL_39;
        }

LABEL_24:
        v26 = *(v16 + 12);
        memcpy(__dst, (v16 + 14), sizeof(__dst));
        *a3 = *v16;
        a3[2] = *(v16 + 8);
        *(a3 + 6) = v26;
        return memcpy(a3 + 14, __dst, 0x812uLL);
      }

      goto LABEL_34;
    }

    if (a1 <= a1 >> 32)
    {
      v23 = __DataStorage._bytes.getter();
      if (!v23)
      {
LABEL_42:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_43;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(a1, v25))
      {
        v16 = a1 - v25 + v24;
        result = __DataStorage._length.getter();
        if (!v16)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        goto LABEL_24;
      }

      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v17 = swift_slowAlloc();
  if (v3 == 2)
  {
    v18 = *(a1 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
LABEL_40:
      __DataStorage._length.getter();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_35;
    }

    v22 = (v18 - v21 + v20);
    __DataStorage._length.getter();
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v27 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = __DataStorage._bytes.getter();
  if (!v28)
  {
LABEL_43:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_44;
  }

  v29 = v28;
  v30 = __DataStorage._offset.getter();
  if (__OFSUB__(v27, v30))
  {
LABEL_37:
    __break(1u);
  }

  v22 = (v27 - v30 + v29);
  result = __DataStorage._length.getter();
  if (v22)
  {
LABEL_29:
    memcpy(v17, v22, 0x820uLL);
    memcpy(a3, v17, 0x820uLL);
  }

LABEL_45:
  __break(1u);
  return result;
}

int64_t sub_1002A8F4C@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 22)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 22)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x16uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.u32[1];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

int64_t sub_1002A91B4@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 18)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 18)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x12uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v25 = vdupq_n_s64(result);
    v26 = vshlq_u64(v25, xmmword_1004841F0);
    v27 = vmovn_s64(vshlq_u64(v25, xmmword_1004841E0));
    v27.i8[1] = v27.i8[4];
    v28 = vzip1_s16(result, v27);
    *v25.i8 = vmovn_s64(vshlq_u64(v25, xmmword_100484200));
    v29 = vmovn_s64(v26);
    v24 = v29.i32[1];
    v29.i8[1] = v29.i8[4];
    v29.i8[2] = v25.i8[0];
    v29.i8[3] = v25.i8[4];
    v21 = vzip1_s32(v28, v29);
    v30 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1004817A0), vshlq_u64(v30, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v24 = *(v15 + 14);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v24;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t sub_1002A941C(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 12)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0xCuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = a1 >> 16;
    v18 = HIDWORD(a1);
    v21 = a1 >> 40;
    v22 = HIWORD(a1);
    v23 = HIBYTE(a1);
    return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = v9 - v12 + v11;
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = *(v13 + 4);
      LODWORD(v19) = *v13 >> 8;
      LODWORD(v20) = HIWORD(*v13);
      LODWORD(v21) = v18 >> 8;
      LODWORD(v22) = WORD1(v18);
      LODWORD(v23) = BYTE3(v18);
      v24 = *(v13 + 8);
      return a1 | (v19 << 8) | (v20 << 16) | a1 & 0xFF000000 | (((v22 << 16) | (v23 << 24) | (v21 << 8) | v18) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A9628(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v2)
  {
    return result;
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      __DataStorage._length.getter();
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v12 = v8 - v11 + v10;
      __DataStorage._length.getter();
      if (!v12)
      {
        goto LABEL_29;
      }

      return *v12;
    }

    goto LABEL_26;
  }

  v13 = result;
  if (result > result >> 32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
LABEL_30:
    result = __DataStorage._length.getter();
    goto LABEL_31;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_27:
    __break(1u);
  }

  v12 = v13 - v16 + v15;
  result = __DataStorage._length.getter();
  if (!v12)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return *v12;
}

unint64_t sub_1002A97D0(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    v19 = a1 >> 16;
    v20 = a1 >> 24;
    v21 = HIDWORD(a1);
    v23 = a1 >> 40;
    v24 = HIWORD(a1);
    v25 = HIBYTE(a1);
    return a1 | (v18 << 8) | ((v19 | (v20 << 8)) << 16) | (((v24 << 16) | (v25 << 24) | (v23 << 8) | v21) << 32);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      a1 = *v13;
      v18 = a1 >> 8;
      v19 = v13[1];
      v20 = v19 >> 8;
      LODWORD(v21) = *(v13 + 1);
      v22 = *(v13 + 2);
      LODWORD(v23) = v21 >> 8;
      LODWORD(v24) = WORD1(v21);
      LODWORD(v25) = BYTE3(v21);
      v26 = *(v13 + 3);
      return a1 | (v18 << 8) | ((v19 | (v20 << 8)) << 16) | (((v24 << 16) | (v25 << 24) | (v23 << 8) | v21) << 32);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002A9A10@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v3)
  {
LABEL_22:
    *a3 = result;
    return result;
  }

  if (v3 == 2)
  {
    v9 = a3;
    v10 = *(result + 16);
    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      __DataStorage._length.getter();
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (!__OFSUB__(v10, v13))
    {
      v14 = (v10 - v13 + v12);
      __DataStorage._length.getter();
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v15 = result;
  if (result > result >> 32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = a3;
  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
LABEL_30:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_27:
    __break(1u);
  }

  v14 = (v15 - v18 + v17);
  result = __DataStorage._length.getter();
  if (v14)
  {
LABEL_21:
    result = *v14;
    a3 = v9;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002A9BCC(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 8)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) < 8uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_1002AB184(&v10, a1, a2, 8uLL);
  if (v2)
  {
    result = swift_willThrow();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A9CDC(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_1002AB360(&v10, a1, a2, 4uLL);
  if (v2)
  {
    result = swift_willThrow();
    __break(1u);
  }

  return result;
}

uint64_t WiFiAddress.customMirror.getter(uint64_t a1)
{
  v12 = a1;
  v13 = WORD2(a1);
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002A9FE0()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  LOWORD(v7) = *(v0 + 2);
  v12 = *v0;
  v13 = v7;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL static WiFiAddress.!= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOBYTE(v5) = BYTE4(a1);
  HIBYTE(v5) = BYTE5(a1);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return a1 != a2 || v5 != v4;
}

BOOL static WiFiAddress.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v5) = a1;
  BYTE2(v5) = BYTE2(a1);
  HIBYTE(v5) = BYTE3(a1);
  LOBYTE(v6) = BYTE4(a1);
  HIBYTE(v6) = BYTE5(a1);
  LOWORD(v3) = a2;
  BYTE2(v3) = BYTE2(a2);
  HIBYTE(v3) = BYTE3(a2);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return bswap64(v5 | (v6 << 32)) < bswap64(v3 | (v4 << 32));
}

BOOL static WiFiAddress.> infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v5) = a1;
  BYTE2(v5) = BYTE2(a1);
  HIBYTE(v5) = BYTE3(a1);
  LOBYTE(v6) = BYTE4(a1);
  HIBYTE(v6) = BYTE5(a1);
  LOWORD(v3) = a2;
  BYTE2(v3) = BYTE2(a2);
  HIBYTE(v3) = BYTE3(a2);
  LOBYTE(v4) = BYTE4(a2);
  HIBYTE(v4) = BYTE5(a2);
  return bswap64(v5 | (v6 << 32)) > bswap64(v3 | (v4 << 32));
}

BOOL static WiFiAddress.<= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v10) = a1;
  BYTE2(v10) = BYTE2(a1);
  HIBYTE(v10) = BYTE3(a1);
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOWORD(v8) = a2;
  BYTE2(v8) = BYTE2(a2);
  HIBYTE(v8) = BYTE3(a2);
  LOBYTE(v9) = BYTE4(a2);
  HIBYTE(v9) = BYTE5(a2);
  v2 = bswap64(v10 | (v11 << 32));
  v3 = bswap64(v8 | (v9 << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 < 1;
}

BOOL static WiFiAddress.>= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  LOWORD(v10) = a1;
  BYTE2(v10) = BYTE2(a1);
  HIBYTE(v10) = BYTE3(a1);
  LOBYTE(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOWORD(v8) = a2;
  BYTE2(v8) = BYTE2(a2);
  HIBYTE(v8) = BYTE3(a2);
  LOBYTE(v9) = BYTE4(a2);
  HIBYTE(v9) = BYTE5(a2);
  v2 = bswap64(v10 | (v11 << 32));
  v3 = bswap64(v8 | (v9 << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 >= 0;
}

BOOL sub_1002AA5F8(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 < 1;
}

BOOL sub_1002AA68C(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return v5 - v6 >= 0;
}

uint64_t WiFiAddress.encode(to:)(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 8;
  v4 = a2 >> 16;
  v5 = a2 >> 24;
  v6 = HIDWORD(a2);
  v7 = a1[4];
  v8 = a2 >> 40;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004817D0;
  *(v9 + 32) = v2;
  *(v9 + 33) = v3;
  *(v9 + 34) = v4;
  *(v9 + 35) = v5;
  *(v9 + 36) = v6;
  *(v9 + 37) = v8;
  v10 = sub_10002D874(v9);
  v12 = v11;

  sub_100031694(v14, v14[3]);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v10, v12);
  return sub_100002A00(v14);
}

id WiFiAddress.apiAddress(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_allocWithZone(WiFiMACAddress);
  if (a4 == 1)
  {
    v8 = "initWithAddress:";
    v9 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = "initWithAddress:ipv6Address:";
    v9 = a5 & 0xFFFFFFFFFFFFLL;
  }

  return [v7 v8];
}

id static WiFiMACAddress.randomLinkLocalAddress()()
{
  v0 = sub_1002AB05C();
  v1 = objc_allocWithZone(WiFiMACAddress);

  return [v1 initWithAddress:v0 & 0xFFFFFFFFFFFCLL | 2];
}

uint64_t WiFiMACAddress.ipv6LinkLocalAddressString.getter()
{
  v1 = [v0 ipv6LinkLocalAddress];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_1002A58C4(v2, v4);
  v7 = v6;
  sub_1000124C8(v2, v4);
  v8 = swift_slowAlloc();
  v15 = v5;
  v16 = v7;
  inet_ntop(30, &v15, v8, 0x2Eu);
  v15 = String.init(cString:)();
  v16 = v9;

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  v11 = v15;
  v12 = v16;

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return 0;
}

uint64_t sub_1002AABA8()
{
  v0 = sub_10002D874(&off_100556FF0);
  v2 = v1;
  v3 = sub_10002D874(&off_100557018);
  v5 = v4;
  v11 = v0;
  v12 = v2;
  v10[3] = &type metadata for Data;
  v10[4] = &protocol witness table for Data;
  v10[0] = v3;
  v10[1] = v4;
  v6 = sub_100029B34(v10, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_10000AB0C(v0, v2);
  sub_10000AB0C(v3, v5);
  sub_100178A18(v7, v8);
  sub_1000124C8(v3, v5);
  sub_1000124C8(v0, v2);
  sub_100002A00(v10);
  result = sub_1000172CC(v11, v12);
  if ((result & 0x1000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    static WiFiAddress.defaultClusterID = result;
    byte_10059B80A = BYTE2(result);
    byte_10059B80B = BYTE3(result);
    byte_10059B80C = BYTE4(result);
    byte_10059B80D = BYTE5(result);
  }

  return result;
}

__int16 *WiFiAddress.defaultClusterID.unsafeMutableAddressor()
{
  if (qword_10058ABB8 != -1)
  {
    swift_once();
  }

  return &static WiFiAddress.defaultClusterID;
}

unint64_t static WiFiAddress.defaultClusterID.getter()
{
  if (qword_10058ABB8 != -1)
  {
    swift_once();
  }

  return static WiFiAddress.defaultClusterID | (*&byte_10059B80A << 16);
}

void *sub_1002AAD98(uint64_t a1, unint64_t a2, void *__dst, int a4, size_t __n)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v7)
    {
      v15 = a1;
      if (a1 <= a1 >> 32)
      {
        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v16;
        v18 = __DataStorage._offset.getter();
        v12 = __OFSUB__(v15, v18);
        v19 = v15 - v18;
        if (!v12)
        {
          result = __DataStorage._length.getter();
          if (!__dst)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v14 = (v19 + v17);
          if (!(v19 + v17))
          {
LABEL_30:
            __break(1u);
            return result;
          }

          goto LABEL_16;
        }

LABEL_23:
        __break(1u);
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __src[0] = a1;
    LOWORD(__src[1]) = a2;
    BYTE2(__src[1]) = BYTE2(a2);
    BYTE3(__src[1]) = BYTE3(a2);
    v7 = a2 >> 40;
    BYTE4(__src[1]) = BYTE4(a2);
    BYTE5(__src[1]) = BYTE5(a2);
    if (__dst)
    {
      return memcpy(__dst, __src, __n);
    }

    __break(1u);
  }

  if (v7 != 2)
  {
    memset(__src, 0, 14);
    if (!__dst)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      result = __DataStorage._length.getter();
      if (!__dst)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    return memcpy(__dst, __src, __n);
  }

  v8 = *(a1 + 16);
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
    __DataStorage._length.getter();
    if (__dst)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = __OFSUB__(v8, v11);
  v13 = v8 - v11;
  if (v12)
  {
    goto LABEL_22;
  }

  __DataStorage._length.getter();
  if (!__dst)
  {
    goto LABEL_25;
  }

  v14 = (v13 + v10);
  if (!(v13 + v10))
  {
    goto LABEL_26;
  }

LABEL_16:

  return memcpy(__dst, v14, __n);
}

unint64_t sub_1002AAFAC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10000AD84(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1002AB05C()
{
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  swift_stdlib_random();
  return 0;
}

unint64_t sub_1002AB120()
{
  result = qword_10059A560;
  if (!qword_10059A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A560);
  }

  return result;
}

uint64_t sub_1002AB184(void *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = a2;
      if (a2 <= a2 >> 32)
      {
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v11 = __OFSUB__(v14, v17);
        v18 = v14 - v17;
        if (!v11)
        {
          result = __DataStorage._length.getter();
          if (!a1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v13 = (v18 + v16);
          if (!(v18 + v16))
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_22:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __src[0] = a2;
    LOWORD(__src[1]) = a3;
    BYTE2(__src[1]) = BYTE2(a3);
    BYTE3(__src[1]) = BYTE3(a3);
    v6 = a3 >> 40;
    BYTE4(__src[1]) = BYTE4(a3);
    BYTE5(__src[1]) = BYTE5(a3);
    if (a1)
    {
LABEL_18:
      v13 = __src;
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a2 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      __DataStorage._length.getter();
      if (a1)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (!v11)
    {
      __DataStorage._length.getter();
      if (a1)
      {
        v13 = (v12 + v9);
        if (!(v12 + v9))
        {
          goto LABEL_25;
        }

LABEL_19:
        memcpy(a1, v13, a4);
        return *a1;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  memset(__src, 0, 14);
  if (a1)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = __DataStorage._length.getter();
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}